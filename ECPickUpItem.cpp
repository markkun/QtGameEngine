#include "ECPickUpItem.h"
#include "Inventory.h"
#include "Item.h"

#include <cassert>

ECPickUpItem::ECPickUpItem(Entity *entity):
    entity_(entity)
{
    // make sure passed in entity is not nullptr
    assert(entity != nullptr);

    // listen to when entity collides
    connect(entity,&Entity::collided,this,&ECPickUpItem::onCollide);
}

/// Executed whenever the controlled entity collides with anything.
void ECPickUpItem::onCollide(Entity *controlledEntity, Entity *collidedWith)
{
    // do nothing if it didnt colide with an item
    Item* asItem = dynamic_cast<Item*>(collidedWith);
    if (asItem == nullptr)
        return;

    // do nothing if the entity does not have an inventory
    Inventory* inv = controlledEntity->inventory();
    if (inv == nullptr)
        return;

    inv->addItem(asItem);
}
