Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity CONTADOR_UP_3bits is
	Port(	Data:				In std_logic_vector(1 downto 0);
			En, Ld:			In std_logic;
			Reset, clock: 	In std_logic;
			Q:					Buffer std_logic_vector(1 downto 0)	);
End CONTADOR_UP_3bits;

Architecture comportamiento of CONTADOR_UP_3bits is
	Begin
		Process(Reset, clock)
			Begin
				If Reset='1' then Q <= "00";
				elsif (clock'event and clock='1') then
					if En='1' then
						if Ld='1' then Q <= Data;
						else Q <= Q+1; end if;
					end if;
				end if;
		End process;
End comportamiento;