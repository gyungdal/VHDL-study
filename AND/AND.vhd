-- AND.VHD

ENTITY TEST IS
PORT(
	A,B : IN BIT;
	X : OUT BIT
);
END TEST;

ARCHITECTURE HB OF TEST IS
BEGIN
	X <= A AND B;
END HB;