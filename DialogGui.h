#ifndef DIALOGGUI_H
#define DIALOGGUI_H

#include <unordered_map>
#include <unordered_set>
#include <QObject>

#include "Gui.h"

class Response;
class Label;
class ScrollWindow;
class Label;
class QGraphicsItem;

/// Represents a choice that can be presented in a DialogGui when a certain
/// response is presented.
/// @see Response, DialogGui
class Choice {
public:
    Choice(const std::string& text);
    std::string text();
private:
    std::string text_;
};

/// Represents a response that can be presented in a DialogGui when a certain
/// choice is selected (or when no choice is selected - the default displayed
/// Response).
/// @see Choice, DialogGui
class Response{
public:
    Response(const std::string& text);
    std::string text();
private:
    std::string text_;
};

/// Represents a Gui that can be used to present an interactive dialog.
///
/// Initially a "response" is displayed with all the "choices" for that response.
/// When a certain choice is clicked, the response of that choice will be displayed,
/// along with all of the choices for that new response.
///
/// So each response has a bunch of choices that are displayed when that response is
/// displayed and each choice has a response that it will display when its clicked.
///
/// You can add a response via addResponse(Response* response).
/// You can add a choices for a response via addChoice(Response* forResponse, Choice* choice).
/// Please note that you must add a Response via addResponse() first before adding a choice for the response.
/// You can set the associated response that will be shown when a certain
/// choice is clicked by calling setResponseForChoice(Response* response, Choice* forChoice).
/// Please note that you must add a Choice via addChoice() before setting the response for the Choice.
/// You can set the currently displayed response via setResponse(Response* response).
/// You should only call setResponse(Response*) to set the initially displayed
/// Response. After that, the responses will change depending on the choices clicked.
/// DialogGui will emit a signal whenever a certain choice is clicked.
///
/// The way to use DialogGui would be:
/// - create a few Responses
/// - add the responses via addResponse()
/// - create Choices for the Responses
/// - add the choices for their respective response via addChoice()
/// - set the initial Response to be displayed via setResponse()
///
/// That's it! The initial response and all of its choices will be displayed.
/// When the user clicks on a choice, the response for that choice (along with the Response's
/// choices) will be displayed. By clicking the various Choices, the user can "talk" wit the dialog.
/// @author Abdullah Aghazadah
/// @date 11/2/16
class DialogGui : public QObject, public Gui
{
    Q_OBJECT
public:
    DialogGui();

    // main functions
    void setResponse(Response* response);
    void addResponse(Response* response);
    void addChoice(Response* forResponse, Choice* choice);
    void setResponseForChoice(Response* response, Choice* forChoice);

    QGraphicsItem* getGraphicsItem();

public slots:
    void choiceLabelClicked_(Label* label);

signals:
    /// Emitted whenever a choice is clicked.
    void choiceClicked(DialogGui* dialog, Choice* choice);

private:
    // what are the choices for each resposne?
    std::unordered_map<Response*,std::unordered_set<Choice*>> responseToChoices_;

    // what is the response for each choice?
    std::unordered_map<Choice*, Response*> choiceToResponse_;

    // remember the Label for each choice
    std::unordered_map<Label*, Choice*> labelToChoice_;

    // what is the currently displayed response?
    Response* currentResponse_;

    // guis
    ScrollWindow* topScrollWindow_;
    ScrollWindow* bottomScrollWindow_;
    Label* responseLabel_;

    // draw method
    void draw_();
};

#endif // DIALOGGUI_H
