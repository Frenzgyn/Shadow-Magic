ADD_TRANS_TRIGGER BDWYNAN 15 ~!Specifics(Player1,12)~ DO 0

EXTEND_TOP BDWYNAN 15
+ ~Specifics(Player1,12)~ + ~I believe I can.~ EXTERN BDWYNAN bdwynan1
END

CHAIN BDWYNAN bdwynan1
~Do it, then. We've suffered enough.~
DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("bd_sdd200_player","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("c0cutgl2",FALSE)~ EXIT

EXTEND_BOTTOM BDWYNAN 21
IF ~Global("bd_sdd200_player","bd2100",1) Specifics(Player1,12)~ DO ~SetGlobal("BD_SDD200","GLOBAL",4)~ EXTERN BDWYNAN bdwynan2
END

CHAIN BDWYNAN bdwynan2
~Looks like we've all recovered from the effects as well.~
COPY_TRANS BDWYNAN 23