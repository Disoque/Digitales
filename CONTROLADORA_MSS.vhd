Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;
---------------------------------------------------------------------------------------------------------
ENTITY CONTROLADORA_MSS IS
PORT(	START: 					In std_logic;
		INGRESAR: 				In std_logic;
		SALIR: 					In std_logic;
		OCUPADO:					In std_logic;
		IG_3SEG:					In std_logic;
		HAY_LIBRES:				In std_logic;
		UN_MINUTO:				In std_logic;
		RESET: 					In std_logic;
		CLOCK: 					In std_logic;
		ENTRADA: 				Out std_logic;
		SALIDA: 					Out std_logic;
		DENEGADO: 				Out std_logic;
		RESET_M:					Out std_logic;
		APAGAR_1:				Out std_logic;
		APAGAR_2:				Out std_logic;
		EN_CONT_DIRECC:		Out std_logic;
		RESET_CONT_DIRECC:	Out std_logic;
		CARRO_SALIDA: 			Out std_logic;
		UNO_CERO: 				Out std_logic;
		WR: 						Out std_logic;
		EN_TIME:					Out std_logic;
		RESET_TIME:				Out std_logic;
		EN_CONT_LIBRES:		Out std_logic;
		LOAD_CONT_LIBRES:		Out std_logic;
		RESET_CONT_LIBRES:	Out std_logic;
		SUMA_PL: 				Out std_logic;
		RESTA_PL: 				Out std_logic;
		EN_FF: 					Out std_logic;
		RESET_FF:				Out std_logic;
		EN_MATRIZ:				Out std_logic;
		EN_CONT_COLUMN:		Out std_logic;
		RESET_CONT_COLUMN:	Out std_logic);
END CONTROLADORA_MSS; 
---------------------------------------------------------------------------------------------------------
ARCHITECTURE estructural OF CONTROLADORA_MSS IS
-------------------------------------------------------------------------------------------------------------
TYPE ESTADO IS (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16);
SIGNAL Y: ESTADO;
BEGIN
	MSS_TRANSICIONES: PROCESS(RESET, CLOCK)
	BEGIN
		IF RESET='1' THEN Y <= T0;
		ELSIF (CLOCK'EVENT AND CLOCK='1') THEN
			CASE Y IS
				WHEN T0 => IF START='0' THEN Y<=T0; ELSE Y<=T1; END IF;
				WHEN T1 => IF START='1' THEN Y<=T1; ELSE Y<=T2; END IF;
				WHEN T2 => IF (INGRESAR='0' AND SALIR='1') THEN Y<=T3;
							  ELSIF (INGRESAR='1' AND HAY_LIBRES='1') THEN Y<=T10;
							  ELSE Y<=T2; END IF;
				WHEN T3 => IF SALIR='0' THEN Y<=T4; ELSE Y<=T3; END IF;
				WHEN T4 => IF OCUPADO='0' THEN Y<=T2;
							  ELSIF UN_MINUTO='0' THEN Y<=T5;
							  ELSE Y<=T7; END IF;
				WHEN T5 => IF IG_3SEG='1' THEN Y<=T6; ELSE Y<=T5; END IF;
				WHEN T6 => Y<=T2;
				WHEN T7 => Y<=T8;
				WHEN T8 => IF IG_3SEG='1' THEN Y<=T6; ELSE Y<=T9; END IF;
				WHEN T9 => Y<=T8;
				WHEN T10 => IF INGRESAR='0' THEN Y<=T11; ELSE Y<=T10; END IF;
				WHEN T11 => IF OCUPADO='1' THEN Y<=T12; ELSE Y<=T13; END IF;
				WHEN T12 => Y<=T16;
				WHEN T13 => Y<=T14;
				WHEN T14 => IF IG_3SEG='1' THEN Y<=T6; ELSE Y<=T15; END IF;
				WHEN T15 => Y<=T14;
				WHEN T16 => Y<=T11;
			END CASE;
		END IF;
	END PROCESS;
	
	MSS_SALIDAS: PROCESS(Y, START, INGRESAR, SALIR, OCUPADO, IG_3SEG, HAY_LIBRES, UN_MINUTO)
	BEGIN
		APAGAR_1<='0'; APAGAR_2<='0'; ENTRADA<='0'; SALIDA<='0'; DENEGADO<='0'; 
		EN_CONT_DIRECC<='0'; RESET_CONT_DIRECC<='0'; 
		CARRO_SALIDA<='0'; UNO_CERO<='0'; WR<='0'; 
		EN_TIME<='0'; RESET_TIME<='0'; 
		EN_CONT_LIBRES<='0'; RESET_CONT_LIBRES<='0'; LOAD_CONT_LIBRES<='0'; SUMA_PL<='0'; RESTA_PL<='0';
		EN_FF<='0'; RESET_FF<='0'; 
		EN_MATRIZ<='0'; RESET_M<='0'; EN_CONT_COLUMN<='0'; RESET_CONT_COLUMN<='0';
		
		CASE Y IS
			WHEN T0 =>  RESET_CONT_DIRECC<='1'; RESET_TIME<='1'; RESET_CONT_LIBRES<='1'; RESET_M<='1'; RESET_CONT_COLUMN<='1'; APAGAR_1<='1'; APAGAR_2<='1';
			WHEN T1 =>  RESET_CONT_DIRECC<='1'; RESET_TIME<='1'; RESET_M<='1'; RESET_CONT_COLUMN<='1'; APAGAR_1<='1'; APAGAR_2<='1';
							IF START='1' THEN RESET_CONT_LIBRES<='1'; ELSE EN_CONT_LIBRES<='1'; LOAD_CONT_LIBRES<='1'; END IF;
			WHEN T2 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; APAGAR_2<='1';
			WHEN T3 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; APAGAR_2<='1'; CARRO_SALIDA<='1';
			WHEN T4 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; CARRO_SALIDA<='1';
							IF OCUPADO='0' THEN APAGAR_2<='1'; END IF;
			WHEN T5 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; DENEGADO<='1'; EN_TIME<='1'; APAGAR_2<='1';
			WHEN T6 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; RESET_TIME<='1'; APAGAR_2<='1';
			WHEN T7 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; CARRO_SALIDA<='1'; WR<='1'; EN_CONT_LIBRES<='1'; SUMA_PL<='1'; RESET_FF<='1'; 
			WHEN T8 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; EN_TIME<='1'; SALIDA<='1';
			WHEN T9 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; EN_TIME<='1';
			WHEN T10 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; APAGAR_2<='1';
			WHEN T11 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; APAGAR_2<='1';
			WHEN T12 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; APAGAR_2<='1'; EN_CONT_DIRECC<='1';
			WHEN T13 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; UNO_CERO<='1'; WR<='1'; EN_CONT_LIBRES<='1'; RESTA_PL<='1'; EN_FF<='1';
			WHEN T14 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; EN_TIME<='1'; ENTRADA<='1';
							 IF IG_3SEG='1' THEN RESET_CONT_DIRECC<='1'; APAGAR_2<='1'; END IF;
			WHEN T15 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; EN_TIME<='1';
			WHEN T16 =>  EN_MATRIZ<='1'; EN_CONT_COLUMN<='1'; APAGAR_2<='1';
		END CASE;
	END PROCESS;	
END estructural;


	