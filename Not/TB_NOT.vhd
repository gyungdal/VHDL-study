LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY TB_HB_NOT IS 
END TB_HB_NOT; 
ARCHITECTURE HB OF TB_HB_NOT IS 
COMPONENT HB_NOT 
PORT ( 
        A : IN BIT; 
        X : OUT BIT 
);
END COMPONENT; 
SIGNAL A : BIT := '0'; SIGNAL X : BIT := '0'; 
BEGIN 
A <= '0', '1' AFTER 100NS, '0' AFTER 333NS, '1' AFTER 400NS, '0' AFTER 500NS; U_HB_NOT : HB_NOT 
PORT MAP ( 
         A => A, 
         X => X 
);
END HB; 