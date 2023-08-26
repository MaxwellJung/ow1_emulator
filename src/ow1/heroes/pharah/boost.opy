#!mainFile "../../../main.opy"


rule "[pharah/boost.opy]: Remove directional input during jump jet":
    @Disabled
    @Event eachPlayer
    @Hero pharah
    @Condition eventPlayer.isUsingAbility1()

    eventPlayer.startForcingThrottle(0, 0, 0, 0, 0, 0)
    waitUntil(not eventPlayer.isUsingAbility1(), Math.INFINITY)
    eventPlayer.stopForcingThrottle()
