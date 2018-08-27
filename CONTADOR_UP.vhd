Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity CONTADOR_UP is
	Port(	Data:			In std_logic_vector(3 downto 0);
			En, Ld:			In std_logic;
			Reset, clock: 	In std_logic;
			Q:				Buffer std_logic_vector(3 downto 0)	);
End CONTADOR_UP;

Architecture comportamiento of CONTADOR_UP is
	Begin
		Process(Reset, clock)
			Begin
				If Reset='1' then Q <= "0000";
				elsif clock'event and clock='1' then
					if En='1' then
						if Ld='1' then Q <= Data;
						else Q <= Q+1; end if;
					end if;
				end if;
		End process;
End comportamiento;