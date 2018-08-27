Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity CONTADOR_UP_DOWN is
	Port(	Data:							In std_logic_vector(4 downto 0);
			En, Ld, Suma, Resta:		In std_logic;
			Reset, Clock: 				In std_logic;
			Q:								Buffer std_logic_vector(4 downto 0)	);
End CONTADOR_UP_DOWN;

Architecture comportamiento of CONTADOR_UP_DOWN is
	Begin
		Process(Reset, Clock)
			Begin
				If Reset='1' then Q <= "00000";
				elsif (Clock'event and Clock='1') then
					if En='1' then
						if Ld='1' then Q <= Data;
						elsif Suma='1' then Q <= Q+1;
						elsif Resta='1' then Q <= Q-1;end if;
					end if;
				end if;
		End process;
End comportamiento;
