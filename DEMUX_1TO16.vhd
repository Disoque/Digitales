Library IEEE;
Use IEEE.std_logic_1164.all;

Entity DEMUX_1TO16 is
	Port(	Ent:	In Std_logic;
			Sel:	In Std_logic_vector(3 downto 0);
			Sal0, Sal1, Sal2, Sal3, Sal4, Sal5, Sal6, Sal7, Sal8, Sal9, Sal10, Sal11, Sal12, Sal13, Sal14, Sal15:		Out Std_logic);
End DEMUX_1TO16;

Architecture comportamiento of DEMUX_1TO16 is
	Begin
		Process(Sel)
		Begin
			Case Sel is
				when "0000" => Sal0<='1'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "0001" => Sal0<='0'; Sal1<='1'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "0010" => Sal0<='0'; Sal1<='0'; Sal2<='1'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "0011" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='1'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "0100" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='1'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "0101" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='1'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "0110" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='1'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "0111" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='1'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "1000" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='1'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "1001" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='1'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "1010" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='1'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "1011" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='1'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "1100" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='1'; Sal13<='0'; Sal14<='0'; Sal15<='0';
				when "1101" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='1'; Sal14<='0'; Sal15<='0';
				when "1110" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='1'; Sal15<='0';
				when "1111" => Sal0<='0'; Sal1<='0'; Sal2<='0'; Sal3<='0'; Sal4<='0'; Sal5<='0'; Sal6<='0'; Sal7<='0'; Sal8<='0'; Sal9<='0'; Sal10<='0'; Sal11<='0'; Sal12<='0'; Sal13<='0'; Sal14<='0'; Sal15<='1';
			End case;
		End process;
End comportamiento;