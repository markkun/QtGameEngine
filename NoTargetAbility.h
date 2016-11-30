#ifndef NOTARGETABILITY_H
#define NOTARGETABILITY_H

#include "Ability.h"

class NoTargetAbility : public Ability {
public:
    NoTargetAbility(Entity* owner, Sprite* icon = nullptr);

    virtual void use() = 0;
};

#endif // NOTARGETABILITY_H
