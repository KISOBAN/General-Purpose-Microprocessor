LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
ENTITY ssegyn IS
PORT (bcd :  IN  STD_LOGIC;
		leds:  OUT STD_LOGIC_VECTOR(1 TO 7));
END ssegyn;
ARCHITECTURE Behaviour OF ssegyn IS
BEGIN
	PROCESS (bcd)
	BEGIN 
		if (bcd <= '1')THEN
			leds <= "0111011";		-- y(lowercase) in seven segment display
		elsif(bcd <='0')then
			leds <= "0010101";		-- n(lowercase) in seven segment display
		else
			leds <= "-------";
		END IF;
	END PROCESS;
END Behaviour;