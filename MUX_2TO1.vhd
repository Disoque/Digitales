Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity MUX_2TO1 is 
	port( Ent_0: in std_logic_vector(3 downto 0);
			Ent_1: in std_logic_vector(3 downto 0);
			Sel: in std_logic;
			Salida: out std_logic_vector(3 downto 0)); 
End MUX_2TO1;
 
Architecture DESARROLLO of MUX_2TO1 is 
Begin 
	Process (Sel) 
	Begin
		
		If (Sel = '0') then Salida <= Ent_0; 
		else Salida <= Ent_1; end if;

	End process; 
End DESARROLLO;