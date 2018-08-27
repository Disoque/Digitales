Library IEEE;
Use IEEE.std_logic_1164.all;

Entity DECODER_BINARIO_BCD is
	Port(	Dat_binario: In Std_logic_vector(4 downto 0);
			Decenas, Unidades: Out Std_logic_vector(3 downto 0));
End DECODER_BINARIO_BCD;

Architecture comportamiento of DECODER_BINARIO_BCD is
	Begin
		Process(Dat_binario)
		Begin
			Case Dat_binario is
				when "00000" => Decenas<="0000"; Unidades<="0000";
				when "00001" => Decenas<="0000"; Unidades<="0001";
				when "00010" => Decenas<="0000"; Unidades<="0010";
				when "00011" => Decenas<="0000"; Unidades<="0011";
				when "00100" => Decenas<="0000"; Unidades<="0100";
				when "00101" => Decenas<="0000"; Unidades<="0101";
				when "00110" => Decenas<="0000"; Unidades<="0110";
				when "00111" => Decenas<="0000"; Unidades<="0111";
				when "01000" => Decenas<="0000"; Unidades<="1000";
				when "01001" => Decenas<="0000"; Unidades<="1001";
				when "01010" => Decenas<="0001"; Unidades<="0000";
				when "01011" => Decenas<="0001"; Unidades<="0001";
				when "01100" => Decenas<="0001"; Unidades<="0010";
				when "01101" => Decenas<="0001"; Unidades<="0011";
				when "01110" => Decenas<="0001"; Unidades<="0100";
				when "01111" => Decenas<="0001"; Unidades<="0101";
				when "10000" => Decenas<="0001"; Unidades<="0110";
				when others => Decenas<="0000"; Unidades<="0000";
			End case;
		End process;
End comportamiento;