library ieee;
use ieee.std_logic_1164.all;
entity machine is 
	port(
	    clk 			: 	in 	std_logic;
		 data_in		:	in		std_logic;
		 reset		:	in 	std_logic;
		 student_id	:	out 	std_logic_vector(3 downto 0);
		 current_state:out	std_logic_vector(3 downto 0)	 
	);
	end entity;
architecture fsm of machine is 
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7);
	signal yfsm  : state_type;
	signal x : std_logic_vector(0 to 3); -- x is made as a signal vector
													 -- that is equal to current_state 
													 -- so that it can be modified since
													 -- current_state cannot be written 
													 -- to because it is an output.
begin
	process (clk,reset)
	begin
		if reset = '1' then
			yfsm <= s0;
		elsif(clk'EVENT AND clk = '1') then
			case yfsm is 
				when s0=>
					if (data_in <= '0')then
						x  <= "0000";
					else
						yfsm <= s1;
						x  <= "0001";
					end if;
				when s1 =>
					if (data_in <= '0')then
						x  <= "0001";
					else
						yfsm <= s2;
						x  <= "0010";
					end if;
				when s2 =>
					if (data_in <= '0')then	
						x  <= "0010";
					else
						yfsm <= s3;
						x  <= "0011";
					end if;
				when s3 =>
					if (data_in <= '0')then
						x  <= "0011";
					else yfsm <= s4;
						x  <= "0100";
					end if;
				when s4 =>
					if (data_in <= '0')then
						x  <= "0100";
					else yfsm <= s5;
						x  <= "0101";
					end if;
				when s5 =>
					if (data_in <= '0')then
						x  <= "0101";
					else yfsm <= s6;
						x  <= "0110";
					end if;
				when s6 =>
					if (data_in <= '0')then
						x  <= "0110";
					else yfsm <= s7;
						x  <= "0111";
					end if;
				when s7 =>
					if (data_in <= '0')then
						x  <= "0111";
					else yfsm <= s0;
						x  <= "0000";
					end if;
				end case;
			end if;
end process;
current_state <= x;
		process(yfsm,data_in,x)
		begin
			case yfsm is 
			when s0=>
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));
				
			when s1 =>
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));
				
			when s2 =>
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));
				
			when s3 =>	
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));
			
			when s4 =>
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));
			when s5 =>
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));
			when s6 =>
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));			
			when s7 =>
				student_id(3)<= x(1) AND x(2) AND x(3);
				student_id(2)<= ((NOT x(0)) AND (NOT x(1)) AND (NOT x(2))AND (NOT x(3))) OR (x(1) AND (NOT x(2)) AND x(3));
				student_id(1)<= ((NOT x(2)) AND x(3)) OR (x(1) AND x(2) AND (NOT x(3)));
				student_id(0)<= ((NOT x(1)) AND (NOT x(2)) AND (NOT x(3))) OR (x(1) AND x(3)) OR (x(2) AND x(3));
		end case;
		end process;	
	end fsm;