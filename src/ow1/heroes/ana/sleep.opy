#!mainFile "../../../main.opy"

rule "[ana/sleep.opy]: Set default sleep dart cooldown":
    @Event eachPlayer
    @Hero ana
    @Condition eventPlayer.isUsingAbility1()
    
    waitUntil(not eventPlayer.isUsingAbility1(), Math.INFINITY)
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, OW1_ANA_SLEEP_DART_COOLDOWN_TIME)


rule "[ana/sleep.opy]: Sleep tanks for longer duration":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() in getTankHeroes()
    @Condition eventPlayer.hasStatusEffect(Status.ASLEEP)
    
    eventPlayer.setStatusEffect(null, Status.ASLEEP, 5/3.25*OW1_ANA_SLEEP_DART_SLEEP_DURATION) # 5/3.5 is the ratio of regular sleep time to tank sleep time
