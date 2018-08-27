Library IEEE;
Use IEEE.std_logic_1164.all;

Entity POSICION_COLUM_FIL is
	Port(	Puesto: 			In Std_logic_vector(3 downto 0);
			En:				In Std_logic;
			Columna, Fila: Out Std_logic_vector(3 downto 0));
End POSICION_COLUM_FIL;

Architecture comportamiento of POSICION_COLUM_FIL is
	Begin
		Process(En, Puesto)
		Begin
			if En='1' then
				Case Puesto is
					when "0000" => Columna<="0001"; Fila<="0001";
					when "0001" => Columna<="0010"; Fila<="0001";
					when "0010" => Columna<="0011"; Fila<="0001";
					when "0011" => Columna<="0100"; Fila<="0001";
					when "0100" => Columna<="0001"; Fila<="0010";
					when "0101" => Columna<="0010"; Fila<="0010";
					when "0110" => Columna<="0011"; Fila<="0010";
					when "0111" => Columna<="0100"; Fila<="0010";
					when "1000" => Columna<="0001"; Fila<="0011";
					when "1001" => Columna<="0010"; Fila<="0011";
					when "1010" => Columna<="0011"; Fila<="0011";
					when "1011" => Columna<="0100"; Fila<="0011";
					when "1100" => Columna<="0001"; Fila<="0100";
					when "1101" => Columna<="0010"; Fila<="0100";
					when "1110" => Columna<="0011"; Fila<="0100";
					when "1111" => Columna<="0100"; Fila<="0100";
				End case;
			else Columna<="0000"; Fila<="0000"; end if;
		End process;
End comportamiento;