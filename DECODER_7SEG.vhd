library ieee;
use ieee.std_logic_1164.all;

Entity DECODER_7SEG is
	Port (	bcd	: in std_logic_vector(3 downto 0);
				apaga: in std_logic;
				seg7	: out std_logic_vector(6 downto 0));
End DECODER_7SEG;

architecture comportamiento of DECODER_7SEG is
begin
	process(apaga,bcd)
	begin
	if apaga='0'then
		case bcd is
			when "0000" => seg7 <= "1111110";
			when "0001" => seg7 <= "0110000";
			when "0010" => seg7 <= "1101101";
			when "0011" => seg7 <= "1111001";
			when "0100" => seg7 <= "0110011";
			when "0101" => seg7 <= "1011011";
			when "0110" => seg7 <= "1011111";
			when "0111" => seg7 <= "1110000";
			when "1000" => seg7 <= "1111111";
			when "1001" => seg7 <= "1111011";
			when others => seg7 <= "0000000";
		end case;
	else seg7 <= "0000000"; end if;
	end process;
end comportamiento;
