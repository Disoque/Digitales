library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;
----------------------------------------
PACKAGE Mis_componentes IS
----------------------------------------

Component CONTADOR_UP is
Port(	Data:				In std_logic_vector(3 downto 0);
		En, Ld:			In std_logic;
		Reset, clock: 	In std_logic;
		Q:					Buffer std_logic_vector(3 downto 0)	);
End Component; 

----------------------------------------

Component MUX_2TO1 is 
Port( Ent_0:	In std_logic_vector(3 downto 0);
		Ent_1:	In std_logic_vector(3 downto 0);
		Sel:		In std_logic;
		Salida:	Out std_logic_vector(3 downto 0)); 
End Component;

----------------------------------------

Component RAM_PUESTOS IS
PORT(	address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (1 DOWNTO 0));
END Component;

----------------------------------------

Component CONTADOR_UP_DOWN is
Port(	Data:							In std_logic_vector(4 downto 0);
		En, Ld, Suma, Resta:		In std_logic;
		Reset, Clock: 				In std_logic;
		Q:								Buffer std_logic_vector(4 downto 0)	);
End Component;

----------------------------------------

Component DEMUX_1TO16 is
	Port(	Ent:	In Std_logic;
			Sel:	In Std_logic_vector(3 downto 0);
			Sal0, Sal1, Sal2, Sal3, Sal4, Sal5, Sal6, Sal7, Sal8, Sal9, Sal10, Sal11, Sal12, Sal13, Sal14, Sal15:		Out Std_logic);
End Component;

----------------------------------------

Component FF_tipoD is
Port(	Ent:					In Std_logic;
		En, Reset, Clock:	In Std_logic;
		Q:						Out Std_logic );
End Component;

----------------------------------------

Component CONTADOR_UP_60LIM is
Port(	Data:				In std_logic_vector(5 downto 0);
		En, Ld:			In std_logic;
		Reset, clock: 	In std_logic;
		Q:					Buffer std_logic_vector(5 downto 0)	);
End Component;

----------------------------------------

Component MUX_16_1 is 
Port( entrada0, entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, entrada8, entrada9, entrada10, entrada11, entrada12, entrada13, entrada14, entrada15: in std_logic_vector(5 downto 0);
		sel: in std_logic_vector(3 downto 0);
		salida: out std_logic_vector(5 downto 0)); 
end Component;

----------------------------------------

Component CONTADOR_UP_3bits is
Port(	Data:				In std_logic_vector(1 downto 0);
		En, Ld:			In std_logic;
		Reset, clock: 	In std_logic;
		Q:					Buffer std_logic_vector(1 downto 0)	);
End Component;

----------------------------------------

Component COMPARADOR_0to3 is
Port(	Ent:						In std_logic_vector(1 downto 0);
		En:						In std_logic;
		IG0, IG1, IG2, IG3:	Out std_logic);
End Component;

----------------------------------------

Component MUX_4_1 is
Port(	Ent0, Ent1, Ent2, Ent3:	In std_logic_vector(3 downto 0);
		En:							In std_logic;
		Sel:							In std_logic_vector(1 downto 0);
		Salida:						Out std_logic_vector(3 downto 0));
End Component;

----------------------------------------

Component DECODER_BINARIO_BCD is
Port(	Dat_binario: 			In Std_logic_vector(4 downto 0);
		Decenas, Unidades: 	Out Std_logic_vector(3 downto 0));
End Component; 

----------------------------------------

Component COMPARADOR is
Port(	A, B: 							In std_logic_vector(5 downto 0);
		AmayorB, AigualB, AmenorB: Out std_logic);
End Component;

----------------------------------------

Component DECODER_7SEG is
Port (	bcd	: 	in std_logic_vector(3 downto 0);
			apaga: 	in std_logic;
			seg7	: 	out std_logic_vector(6 downto 0));
End Component;

-----------------------------------------

Component POSICION_COLUM_FIL is
Port(	Puesto: 			In Std_logic_vector(3 downto 0);
		En:				In Std_logic;
		Columna, Fila: Out Std_logic_vector(3 downto 0));
End Component;

-----------------------------------------

Component MUX_16_1_bit is 
Port( entrada0, entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, entrada8, entrada9, entrada10, entrada11, entrada12, entrada13, entrada14, entrada15: in std_logic;
		sel: in std_logic_vector(3 downto 0);
		salida: out std_logic); 
end Component;

-----------------------------------------

End Mis_componentes;