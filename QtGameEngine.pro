#-------------------------------------------------
#
# Project created by QtCreator 2015-05-12T22:11:25
#
#-------------------------------------------------

QT       += core gui multimedia # we want to use these qt modules

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # we require at least qt version 4

TARGET = qge # this is what our executable is called
TEMPLATE = app # make an executable (not static or dynamic lib)

CONFIG += c++11 # we require a C++11 compatible compiler

INCLUDEPATH += "C:/Program Files (x86)/Windows Kits/10/Include/10.0.10240.0/ucrt" # search this directory for headers
INCLUDEPATH += "qge" # search this one too
LIBS += -L"C:/Program Files (x86)/Windows Kits/10/Lib/10.0.10240.0/ucrt/x64" # search this directory for .lib files (static libraries)

# these are the sources we need
SOURCES += \ # this is just so we can line up all our sources nicely
    qge/main.cpp \
    qge/Map.cpp \
    qge/Game.cpp \
    qge/Grid.cpp \
    qge/Node.cpp \
    qge/Sprite.cpp \
    qge/Edge.cpp \
    qge/Graph.cpp \
    qge/PathGrid.cpp \
    qge/PathingMap.cpp \
    qge/Tree.cpp \
    qge/CountExpiringTimer.cpp \
    qge/MeleeWeapon.cpp \
    qge/Spear.cpp \
    qge/Entity.cpp \
    qge/Axe.cpp \
    qge/Sound.cpp \
    qge/Item.cpp \
    qge/Inventory.cpp \
    qge/EquipableItem.cpp \
    qge/EntityTargetItem.cpp \
    qge/NoTargetItem.cpp \
    qge/PointTargetItem.cpp \
    qge/Slot.cpp \
    qge/MeleeWeaponSlot.cpp \
    qge/Projectile.cpp \
    qge/RangedWeapon.cpp \
    qge/Bow.cpp \
    qge/RangedWeaponSlot.cpp \
    qge/Weapon.cpp \
    qge/WeaponSlot.cpp \
    qge/AsyncShortestPathFinder.cpp \
    qge/SpearProjectile.cpp \
    qge/InventoryViewer.cpp \
    qge/ItemRainOfSpears.cpp \
    qge/ItemTeleport.cpp \
    qge/ItemPushback.cpp \
    qge/RainWeather.cpp \
    qge/MapGrid.cpp \
    qge/SnowWeather.cpp \
    qge/WeatherEffect.cpp \
    qge/Gui.cpp \
    qge/Panel.cpp \
    qge/Button.cpp \
    qge/Bar.cpp \
    qge/TerrainLayer.cpp \
    qge/RandomImageEntity.cpp \
    qge/Utilities.cpp \
    qge/FogWeather.cpp \
    qge/Quest.cpp \
    qge/Quests.cpp \
    qge/QuestViewer.cpp \
    qge/Label.cpp \
    qge/ScrollWindow.cpp \
    qge/ScrollBar.cpp \
    qge/QtUtilities.cpp \
    qge/DialogGui.cpp \
    qge/ItemCell.cpp \
    qge/InventoryUser.cpp \
    qge/QuestAcceptor.cpp \
    qge/ShopGui.cpp \
    qge/ItemGold.cpp \
    qge/BodyThrust.cpp \
    qge/Ability.cpp \
    qge/NoTargetAbility.cpp \
    qge/PointTargetAbility.cpp \
    qge/EntityTargetAbility.cpp \
    qge/ECRotater.cpp \
    qge/ECFieldOfViewEmitter.cpp \
    qge/ECBodyThruster.cpp \
    qge/AbilityCell.cpp \
    qge/ShopGuiBehavior.cpp \
    qge/ShopBehaviorNoCost.cpp \
    qge/CollisionBehavior.cpp \
    qge/CBDamage.cpp \
    qge/DestReachedBehavior.cpp \
    qge/DRBDestroyProjectile.cpp \
    qge/PositionalSound.cpp \
    qge/PointerGrid.cpp \
    qge/SpriteSheet.cpp \
    qge/Animation.cpp \
    qge/EntitySprite.cpp \
    qge/TopDownSprite.cpp \
    qge/AngledSprite.cpp \
    qge/EntityController.cpp \
    qge/ECMover.cpp \
    qge/ECEnemyAttacker.cpp \
    qge/ECCurrentMapGrabber.cpp \
    qge/ECKeyboardMover8Directional.cpp \
    qge/ECKeyboardMover4Directional.cpp \
    qge/ECKeyboardMoverPerspective.cpp \
    qge/ECMapMover.cpp \
    qge/ECCameraFollower.cpp \
    qge/ECItemPickerUpper.cpp \
    qge/ECMouseFacer.cpp \
    qge/ECPathMover.cpp \
    qge/ECSineMover.cpp \
    qge/ECStraightMover.cpp \
    qge/FireballLauncher.cpp \
    qge/AnimationAttack.cpp \
    qge/ECChaser.cpp \
    qge/PlayingAnimationInfo.cpp \
    qge/MCSpawner.cpp \
    qge/RandomGenerator.cpp \
    qge/CItemDropper.cpp \
    qge/ItemHealthPotion.cpp \
    qge/CHealthShower.cpp \
    qge/ECGuiShower.cpp \
    qge/ECMerchant.cpp

# these are the headers we use
HEADERS  += \ # this is just so we can line up all our headers nicely
    qge/Map.h \
    qge/Game.h \
    qge/Grid.h \
    qge/Node.h \
    qge/Sprite.h \
    qge/Edge.h \
    qge/Graph.h \
    qge/PathGrid.h \
    qge/PathingMap.h \
    qge/Tree.h \
    qge/CountExpiringTimer.h \
    qge/MeleeWeapon.h \
    qge/Spear.h \
    qge/Entity.h \
    qge/Axe.h \
    qge/Sound.h \
    qge/Item.h \
    qge/Inventory.h \
    qge/EquipableItem.h \
    qge/EntityTargetItem.h \
    qge/NoTargetItem.h \
    qge/PointTargetItem.h \
    qge/Slot.h \
    qge/MeleeWeaponSlot.h \
    qge/Projectile.h \
    qge/RangedWeapon.h \
    qge/Bow.h \
    qge/RangedWeaponSlot.h \
    qge/Weapon.h \
    qge/WeaponSlot.h \
    qge/AsyncShortestPathFinder.h \
    qge/SpearProjectile.h \
    qge/InventoryViewer.h \
    qge/ItemRainOfSpears.h \
    qge/ItemTeleport.h \
    qge/ItemPushback.h \
    qge/RainWeather.h \
    qge/MapGrid.h \
    qge/SnowWeather.h \
    qge/WeatherEffect.h \
    qge/Gui.h \
    qge/Panel.h \
    qge/Button.h \
    qge/Bar.h \
    qge/TerrainLayer.h \
    qge/RandomImageEntity.h \
    qge/Utilities.h \
    qge/FogWeather.h \
    qge/Quest.h \
    qge/Quests.h \
    qge/QuestViewer.h \
    qge/Label.h \
    qge/ScrollWindow.h \
    qge/ScrollBar.h \
    qge/QtUtilities.h \
    qge/DialogGui.h \
    qge/ItemCell.h \
    qge/InventoryUser.h \
    qge/QuestAcceptor.h \
    qge/ShopGui.h \
    qge/ItemGold.h \
    qge/BodyThrust.h \
    qge/Ability.h \
    qge/NoTargetAbility.h \
    qge/PointTargetAbility.h \
    qge/EntityTargetAbility.h \
    qge/ECRotater.h \
    qge/ECFieldOfViewEmitter.h \
    qge/ECBodyThruster.h \
    qge/AbilityCell.h \
    qge/ShopGuiBehavior.h \
    qge/ShopBehaviorNoCost.h \
    qge/CollisionBehavior.h \
    qge/CBDamage.h \
    qge/DestReachedBehavior.h \
    qge/DRBDestroyProjectile.h \
    qge/PositionalSound.h \
    qge/PointerGrid.h \
    qge/SpriteSheet.h \
    qge/Animation.h \
    qge/EntitySprite.h \
    qge/TopDownSprite.h \
    qge/AngledSprite.h \
    qge/EntityController.h \
    qge/ECMover.h \
    qge/ECEnemyAttacker.h \
    qge/ECCurrentMapGrabber.h \
    qge/ECKeyboardMover8Directional.h \
    qge/ECKeyboardMover4Directional.h \
    qge/ECKeyboardMoverPerspective.h \
    qge/ECMapMover.h \
    qge/ECCameraFollower.h \
    qge/ECItemPickerUpper.h \
    qge/ECMouseFacer.h \
    qge/ECPathMover.h \
    qge/ECSineMover.h \
    qge/ECStraightMover.h \
    qge/FireballLauncher.h \
    qge/AnimationAttack.h \
    qge/ECChaser.h \
    qge/PlayingAnimationInfo.h \
    qge/MCSpawner.h \
    qge/RandomGenerator.h \
    qge/CItemDropper.h \
    qge/STLWrappers.h \
    qge/ItemHealthPotion.h \
    qge/CHealthShower.h \
    qge/ECGuiShower.h \
    qge/ECMerchant.h

RESOURCES += \
    res.qrc
