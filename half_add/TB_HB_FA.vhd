--TB_HB_FA.VHD 
LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY TB_HB_FA IS 
END TB_HB_FA; 
ARCHITECTURE HB OF TB_HB_FA IS 
COMPONENT HB_FA 
PORT (
       A, B, CIN : IN BIT; 
       S, COUT : OUT BIT 
);
 END COMPONENT; 
SIGNAL A, B : BIT := '0'; 
SIGNAL CIN : BIT := '0'; 
SIGNAL S, COUT : BIT := '0'; 
BEGIN 
     A <= '0', '1' AFTER 200NS, '0' AFTER 400NS, '1' AFTER 600NS, '0' AFTER 800NS, '1' AFTER 1000NS, 
                    '0' AFTER 1200NS, '1' AFTER 1400NS; 
     B <= '0', '1' AFTER 400NS, '0' AFTER 800NS, '1' AFTER 1200NS; 
     CIN <= '0', '1' AFTER 800NS;
     U_HB_FA : HB_FA PORT MAP ( 
          A => A, 
          B => B, 
          CIN => CIN, 
          S => S, 
       COUT => COUT 
);
 END HB;	