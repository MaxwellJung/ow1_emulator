#!mainFile "../../main.opy"

rule "[kiriko.opy]: Initialize Kiriko":
    @Event eachPlayer
    @Hero kiriko
    @Condition eventPlayer.call_init == true # without this flag, the reset code in generic.opy executes after initialization


rule "[kiriko.opy]: Allow self healing during Suzu":
    @Event eachPlayer
    @Hero kiriko
    @Condition eventPlayer.isUsingAbility2()

    pushSelfHealing(Button.ABILITY_2)
    waitUntil(eventPlayer.isUsingAbility2() == false, Math.INFINITY)
    popSelfHealing(Button.ABILITY_2)