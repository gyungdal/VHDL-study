LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
ENTITY HB_2MUX IS 
PORT(
	 I0, I1, S : IN STD_LOGIC; 
	Z : OUT STD_LOGIC 
); 
END HB_2MUX; 
ARCHITECTURE HB OF HB_2MUX IS 
BEGIN 
PROCESS(I0, I1, S) 
BEGIN 
     CASE S IS 
	WHEN '0' => Z <= I0; 
	WHEN '1' => Z <= I1; 
	WHEN OTHERS => NULL; 
     END CASE; 
END PROCESS; 
END HB; 