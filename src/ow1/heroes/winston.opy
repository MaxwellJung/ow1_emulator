#!mainFile "../../main.opy"

def initWinston():
    @Name "[winston.opy]: initWinston"

    do:
        clearCustomHealth()
        setCustomHealth(OW1_WINSTON_HEALTH, OW1_WINSTON_ARMOR, 0)
        wait(1)
    while (eventPlayer.getMaxHealth() != OW1_WINSTON_HEALTH + OW1_WINSTON_ARMOR)

    eventPlayer.setSecondaryFireEnabled(false)

rule "[winston.opy]: Initialize Winston":
    @Event eachPlayer
    @Hero winston
    @Condition eventPlayer.reset_flag == true # without this flag, the reset code in generic.opy executes after initialization

    initWinston()

rule "[winston.opy]: Set default leap cooldown":
    @Event eachPlayer
    @Hero winston
    @Condition eventPlayer.isUsingAbility1()
    
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, OW1_WINSTON_LEAP_COOLDOWN)