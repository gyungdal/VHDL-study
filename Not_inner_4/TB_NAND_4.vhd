LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY TB_NAND_4 IS 
END TB_NAND_4; 
ARCHITECTURE TB OF TB_NAND_4 IS 
COMPONENT NAND_4 
PORT (
        A, B : IN BIT; 
        Y : OUT BIT 
);
END COMPONENT; 
SIGNAL A : BIT; 
SIGNAL B : BIT; 
SIGNAL Y : BIT; 
BEGIN 
A <= '0', '1' AFTER 100NS, '0' AFTER 300NS, '1' AFTER 400NS, '0' AFTER 500NS; 
B <= '0', '1' AFTER 100NS, '0' AFTER 200NS, '1' AFTER 400NS, '1' AFTER 500NS;
TEST_NAND : NAND_4 
PORT MAP ( 
       A => A, 	
		 B => B,
       Y => Y
);
END TB;