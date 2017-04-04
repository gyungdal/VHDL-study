ENTITY HB_FA IS 
PORT( 
       A, B, CIN : IN BIT; 
       S, COUT : OUT BIT 
); 
END HB_FA; 
ARCHITECTURE HB OF HB_FA IS 
       COMPONENT HB_HA IS 
       PORT( 
              A, B : IN BIT; 
              S, C : OUT BIT 
); 
END COMPONENT; 
SIGNAL REG_C1, REG_C2 : BIT; 
SIGNAL REG_SUM : BIT; 
BEGIN 
     U1_HA : HB_HA 
     PORT MAP( 
           A => A, 
           B => B, 
           S => REG_SUM,  
           C => REG_C1 
); 
U2_HA : HB_HA 
PORT MAP( 
       A => CIN, 
       B => REG_SUM, 
       S => S, 
       C => REG_C2 
);
 COUT <= REG_C1 OR REG_C2; 
END HB; 	
