Library IEEE;
Use IEEE.std_logic_1164.all;

Entity FF_tipoD is
	Port(	Ent:	In Std_logic;
			En, Reset, Clock:	In Std_logic;
			Q:	Out Std_logic );
End FF_tipoD;

Architecture comportamiento of FF_tipoD is
	Begin
		Process(Reset, Clock)
			Begin
				If Reset='1' then Q <= '0';
				elsif (Clock'event and Clock='1') then
					If En='1' then Q <= Ent; end if;
				end if;
		End process;
End comportamiento;