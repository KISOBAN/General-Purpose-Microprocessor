LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
ENTITY ssegneg IS
PORT (bcd :  IN  STD_LOGIC;
		leds:  OUT STD_LOGIC_VECTOR(1 TO 7));
END ssegneg;
ARCHITECTURE Behaviour OF ssegneg IS
BEGIN
	PROCESS (bcd)
	BEGIN 
		if (bcd <= '1')THEN
			leds <= "0000001";
		else
			leds <= "0000000";
		END IF;
	END PROCESS;
END Behaviour;