//CORE:PART:GETMODULE("kOSProcessor"):DOEVENT("Open Terminal").

CLEARSCREEN.
WAIT 0.5.

IF ADDONS:RT:AVAILABLE AND ADDONS:RT:HASKSCCONNECTION(SHIP) {

	SWITCH TO ARCHIVE.
	CD("probelib").

	LIST files IN scripts.
	FOR file IN scripts {
		IF file:NAME:ENDSWITH(".ks") COPYPATH(file,CORE:VOLUME).
	}
	IF EXISTS("0:/boot/boot.ks") COPYPATH("0:/boot/boot.ks","1:/boot/boot.ks").
	
	SWITCH TO CORE:VOLUME.
}

PRINT "Version 2.0 Boot file.  Ready.".


IF SHIP:STATUS = "PRELAUNCH" {
	
	RUN ONCE CircOnSpace.
}

IF HASNODE Run BurnNextNode.







	







	