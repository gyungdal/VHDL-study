-- HB_4FA.VHD 
LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY HB_4FA IS 
PORT( 
       CI : IN STD_LOGIC; 
       A, B : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
       S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); 
       CO : OUT STD_LOGIC 
); 
END HB_4FA; 
ARCHITECTURE HB OF HB_4FA IS 
     SIGNAL REG : STD_LOGIC_VECTOR(4 DOWNTO 0); 
BEGIN 
REG <= (('0' & A) + ('0' & B)) + ("0000" & CI);
S <= REG(3 DOWNTO 0); 
CO <= REG(4); 
END HB; 	
