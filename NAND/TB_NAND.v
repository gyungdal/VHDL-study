LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY TB_HB_NAND2 IS 
END TB_HB_NAND; 
ARCHITECTURE HB OF TB_HB_NAND IS 
COMPONENT HB_NAND
PORT (
        A, B : IN BIT; 
        X : OUT BIT 
);
END COMPONENT; 
SIGNAL A : BIT := '0'; 
SIGNAL B : BIT := '0'; 
SIGNAL X : BIT := '0'; 
BEGIN 
A <= '0', '1' AFTER 100NS, '0' AFTER 300NS, '1' AFTER 400NS, '0' AFTER 500NS; 
B <= '0', '1' AFTER 100NS, '0' AFTER 200NS, '1' AFTER 400NS;
U_HB_NAND : HB_NAND
PORT MAP ( 
       A => A, 	
       B => B,
       X => X 
);
END HB; 	