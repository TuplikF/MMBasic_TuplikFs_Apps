REM Space Invaders - Simple BASIC Version

CLS
DIM x AS INTEGER
DIM missileX AS INTEGER, missileY AS INTEGER
DIM alienX AS INTEGER, alienY AS INTEGER
x = 40
missileY = 0
alienX = 10
alienY = 5

DO
    CLS

    LOCATE alienY, alienX
    PRINT "A"

    LOCATE 24, x
    PRINT "^"

    IF missileY > 0 THEN
        LOCATE missileY, missileX
        PRINT "|"
        missileY = missileY - 1
    END IF

    IF missileY = alienY AND missileX = alienX THEN
        PRINT "Hit!"
        EXIT DO
    END IF

    a$ = INKEY$
    IF a$ = "a" AND x > 1 THEN x = x - 1
    IF a$ = "d" AND x < 78 THEN x = x + 1
    IF a$ = " " AND missileY = 0 THEN
        missileX = x
        missileY = 23
    END IF

    SLEEP 50
LOOP

PRINT "Game Over!"
END
