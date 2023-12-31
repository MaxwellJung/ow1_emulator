#!mainFile "../main.opy"

globalvar debug = createWorkshopSetting(bool, "Dev Tools", "debug mode", false)


rule "[main.opy]: Overwatch 1 Emulator copyright notice":
    @Event global
    @Condition debug == true

    hudSubheader(getAllPlayers(), "Property of \"Overwatch 1 Emulator\" \n
Duplication or modification of the codebase without permission is strictly forbidden. \n
Contact ecksdee4643 on Discord for source code acess", 
                 HudPosition.TOP, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)


rule "[debug.opy]: global debug (Top Left)":
    @Event global
    @Condition debug == true

    hudHeader(getAllPlayers(), "Global", HudPosition.LEFT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubheader(getAllPlayers(), "Server Load: {}%".format(getServerLoad()), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubheader(getAllPlayers(), "Server Load Average: {}%".format(getAverageServerLoad()), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    hudSubheader(getAllPlayers(), "Server Load Peak: {}%".format(getPeakServerLoad()), HudPosition.LEFT, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)


rule "[debug.opy]: player debug (Top Right)":
    @Event eachPlayer
    @Condition debug == true

    hudHeader(eventPlayer, "Event Player", HudPosition.RIGHT, 0, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getAltitude() = {}".format(eventPlayer.getAltitude()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "hasStatusEffect(Status.HACKED) = {}".format(eventPlayer.hasStatusEffect(Status.HACKED)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "hasStatusEffect(Status.STUNNED) = {}".format(eventPlayer.hasStatusEffect(Status.STUNNED)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getStatistic(Stat.HERO_DAMAGE_DEALT) = {}".format(eventPlayer.getStatistic(Stat.HERO_DAMAGE_DEALT)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "len(allowed_heroes) = {}".format(len(eventPlayer.allowed_heroes)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "len(getAllowedHeroes()) = {}".format(len(eventPlayer.getAllowedHeroes())), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isUsingUltimate() = {}".format(eventPlayer.isUsingUltimate()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getUltCharge() = {}".format(eventPlayer.getUltCharge()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getUltCharge() >= 100 = {}".format(eventPlayer.getUltCharge() >= 100), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isFiringPrimaryFire() = {}".format(eventPlayer.isFiringPrimaryFire()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isFiringSecondaryFire() = {}".format(eventPlayer.isFiringSecondaryFire()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isUsingAbility1() = {}".format(eventPlayer.isUsingAbility1()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isUsingAbility2() = {}".format(eventPlayer.isUsingAbility2()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getSpeed() = {}".format(eventPlayer.getSpeed()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "ult_cost[hero_id] = {}".format(ult_cost[eventPlayer.hero_id]), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "ult_percent_compensated = {}".format(eventPlayer.ult_percent_compensated), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "call_reset = {}".format(eventPlayer.call_reset), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "call_init = {}".format(eventPlayer.call_init), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getMaxHealth() = {}".format(eventPlayer.getMaxHealth()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "orisa_ammo = {}".format(eventPlayer.orisa_ammo), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isReloading() = {}".format(eventPlayer.isReloading()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getAmmo(0) = {}".format(eventPlayer.getAmmo(0)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isHoldingButton(Button.PRIMARY_FIRE) = {}".format(eventPlayer.isHoldingButton(Button.PRIMARY_FIRE)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "len(self_healing_source) = {}".format(len(eventPlayer.self_healing_source)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "self_healing_percent = {}".format(eventPlayer.self_healing_percent), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "getPosition() = {}".format(eventPlayer.getPosition()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "role = {}".format(eventPlayer.role), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "isInAlternateForm() = {}".format(eventPlayer.isInAlternateForm()), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "Ability 1 Cooldown = {}".format(eventPlayer.getAbilityCooldown(Button.ABILITY_1)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "is_using_guardian_angel = {}".format(eventPlayer.is_using_guardian_angel), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "is_slingshotting = {}".format(eventPlayer.is_slingshotting), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "Ability 2 Cooldown = {}".format(eventPlayer.getAbilityCooldown(Button.ABILITY_2)), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "slam_damage = {}".format(eventPlayer.slam_damage), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "is_using_slam = {}".format(eventPlayer.is_using_slam), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)
    hudSubheader(eventPlayer, "is_using_self_repair = {}".format(eventPlayer.is_using_self_repair), HudPosition.RIGHT, 1, Color.WHITE, HudReeval.STRING)


rule "[debug.opy]: print to console on interact":
    @Event eachPlayer
    @Condition debug == true
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true

    for i in range(len(eventPlayer.allowed_heroes)):
        printLog("eventPlayer.allowed_heroes[{}] = {}".format(i, eventPlayer.allowed_heroes[i]))


rule "[debug.opy]: Debug damage instance":
    @Event playerDealtDamage
    @Condition debug == true

    printLog("hero={}, ability={}, amount={}".format(eventPlayer.getCurrentHero(), eventAbility, eventDamage))


rule "[debug.opy]: Debug healing instance":
    @Event playerDealtHealing
    @Condition debug == true

    printLog("hero={}, ability={}, amount={}".format(eventPlayer.getCurrentHero(), eventAbility, eventHealing))
