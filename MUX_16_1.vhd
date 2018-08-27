Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

entity MUX_16_1 is 
	port( entrada0, entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, entrada8, entrada9, entrada10, entrada11, entrada12, entrada13, entrada14, entrada15: in std_logic_vector(5 downto 0);
			sel: in std_logic_vector(3 downto 0);
			salida: out std_logic_vector(5 downto 0)); 
end MUX_16_1;
 
architecture DESARROLLO of MUX_16_1 is 
begin 
Process(sel)
	begin
		case sel is
			when "0000" => salida <= entrada0;
			when "0001" => salida <= entrada1;
			when "0010" => salida <= entrada2;
			when "0011" => salida <= entrada3;
			when "0100" => salida <= entrada4;
			when "0101" => salida <= entrada5;
			when "0110" => salida <= entrada6;
			when "0111" => salida <= entrada7;
			when "1000" => salida <= entrada8;
			when "1001" => salida <= entrada9;
			when "1010" => salida <= entrada10;
			when "1011" => salida <= entrada11;
			when "1100" => salida <= entrada12;
			when "1101" => salida <= entrada13;
			when "1110" => salida <= entrada14;
			when "1111" => salida <= entrada15;
			when others => salida <= "000000";
		end case;
end process;
end DESARROLLO;