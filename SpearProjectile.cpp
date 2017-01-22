#include "SpearProjectile.h"
#include "ProjectileMoveBehaviorStraight.h"
#include "CBDamage.h"
#include <QPixmap>
#include "Sprite.h"

SpearProjectile::SpearProjectile(QPointF start, QPointF target, double range, double damage, std::unordered_set<Entity *> noDamageList, Map *map):
    Projectile(start,
               new ProjectileMoveBehaviorStraight(range,target),
               new CBDamage(0,damage),
               noDamageList,
               map)
{
    setSprite(new Sprite(QPixmap(":resources/graphics/weapons/spear.png")));
    setHeight(10);
    // make sure the projectile's rotation point is its center
    double rx = 0;
    double ry = sprite()->boundingRect().height()/2;
    setRotationPoint(QPointF(rx,ry));

    // make projectile face target initially
    setFacingAngle(QLineF(start,target).angle() * -1);

    setStepFrequency(15);
}
