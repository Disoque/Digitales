Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity COMPARADOR_0to3 is
	Port(	Ent:						In std_logic_vector(1 downto 0);
			En:						In std_logic;
			IG0, IG1, IG2, IG3:	Out std_logic);
End COMPARADOR_0to3;

Architecture desarrollo of COMPARADOR_0to3 is
	Begin
		Process(En, Ent)
			begin
				if En='1' then
					case Ent is
						when "00" => IG0<='1'; IG1<='0'; IG2<='0'; IG3<='0';
						when "01" => IG0<='0'; IG1<='1'; IG2<='0'; IG3<='0';
						when "10" => IG0<='0'; IG1<='0'; IG2<='1'; IG3<='0';
						when "11" => IG0<='0'; IG1<='0'; IG2<='0'; IG3<='1';
						when OTHERS => IG0<='0'; IG1<='0'; IG2<='0'; IG3<='0';
					end case;
				else IG0<='0'; IG1<='0'; IG2<='0'; IG3<='0'; end if;
		end process;
end desarrollo;