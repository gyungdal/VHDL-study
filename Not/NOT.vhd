ENTITY HB_NOT IS
PORT(
	A : IN BIT;
	X : OUT BIT
);
END HB_NOT;

ARCHITECTURE HB OF HB_NOT IS
BEGIN 

X <= NOT A;

END HB;