library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity ALU is
port (Clock			: in std_logic;				 		-- input clock signal
		A, B			: in signed(7 downto 0);
		studentid	: in signed (3 downto 0);  		-- 4 bit student id from FSM		 
		OP				: in unsigned (15 downto 0); 
		R1				: out signed (0 to 3);   			-- lower 4 bits of 8 bit Result Output
      R2				: out signed (3 downto 0);  		-- higher 4 bits of 8 bit Result Output
		checkbit		: out std_logic
	);
end ALU;
architecture calculation of ALU is -- temporary signal declaration
signal Reg1, Reg2,	Result : signed (7 downto 0):= (others =>'0');
	begin
		Reg1 <= A; -- temporarily store A in Reg1 local variable
		Reg2 <= B; -- temporarily store B in Reg2 local variable
		process (Clock, OP, studentid, Reg1)
		begin
		if (Clock'EVENT AND Clock = '1') THEN		
		case OP is 
		WHEN "0000000000000001" => 
				Result<= Reg1 + Reg2;																			-- inverting the bit significance order
		WHEN "0000000000000010" =>
				Result<= Reg1 - Reg2;																			-- shifting A by 4 bits to the left	
		WHEN "0000000000000100" =>
				Result <= NOT(Reg1);																			-- inverting upper 4 bits of B
		WHEN "0000000000001000" =>
				Result <= Reg1 NAND Reg2;																							
		WHEN "0000000000010000" =>
			Result <= Reg1 NOR Reg2; 														-- Adding A and B and adding 4
		WHEN "0000000000100000" =>
			Result <= Reg1 AND Reg2;																			-- Replacing Even bits of A with even bits of B	
		
		WHEN "0000000001000000" =>
			Result <= Reg1 XOR Reg2;															 	-- Increment A by 3	
		WHEN "0000000010000000" =>		
			Result <= (Reg1 OR Reg2);																		-- boolean XNOR
		WHEN "0000000100000000" =>
			Result <= (Reg1 XNOR Reg2);
		WHEN OTHERS =>
			Result <= "--------";
	end case;
end if;
		if((Reg1(7 downto 4) <= studentid) OR (Reg1(3 downto 0) <= studentid))then
				checkbit <= '1';
			else 
				checkbit <= '0';
			end if;
end process;
			
				
R1 <= Result(3 downto 0);	-- Since the output seven segments can
R2 <= Result(7 downto 4);	-- only 4 bits, splits the 8 bits int0 two 4 - bits
end calculation;