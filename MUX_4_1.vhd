Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity MUX_4_1 is
	Port(	Ent0, Ent1, Ent2, Ent3:	In std_logic_vector(3 downto 0);
			En:							In std_logic;
			Sel:							In std_logic_vector(1 downto 0);
			Salida:						Out std_logic_vector(3 downto 0));
End MUX_4_1;

Architecture desarrollo of MUX_4_1 is
	Begin
		Process(En, Sel)
			begin
				if En='1' then
					case Sel is
						when "00" => Salida <= Ent0;
						when "01" => Salida <= Ent1;
						when "10" => Salida <= Ent2;
						when "11" => Salida <= Ent3;
						when OTHERS => Salida <="0000";
					end case;
				else Salida <="0000"; end if;
		end process;
end desarrollo;