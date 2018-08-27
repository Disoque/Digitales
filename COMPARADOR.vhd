Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity COMPARADOR is
	Port(	A, B: In std_logic_vector(5 downto 0);
			AmayorB, AigualB, AmenorB: Out std_logic);
End COMPARADOR;

Architecture comportamiento of COMPARADOR is
Begin
	Process(A, B)
	Begin
		If A>B then AmayorB <= '1'; AigualB <= '0'; AmenorB <= '0';
		elsif A<B then AmayorB <= '0'; AigualB <= '0'; AmenorB <= '1';
		else AmayorB <= '0'; AigualB <= '1'; AmenorB <= '0'; end if;
	end process;
End comportamiento;