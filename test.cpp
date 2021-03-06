#include <stdio.h>
#include <stdlib.h>

typedef unsigned int uint32_t;
void xor_salsa8(uint32_t B[16], const uint32_t Bx[16])
{
	uint32_t x00,x01,x02,x03,x04,x05,x06,x07,x08,x09,x10,x11,x12,x13,x14,x15;
	int i;

	x00 = (B[ 0] ^= Bx[ 0]);
	x01 = (B[ 1] ^= Bx[ 1]);
	x02 = (B[ 2] ^= Bx[ 2]);
	x03 = (B[ 3] ^= Bx[ 3]);
	x04 = (B[ 4] ^= Bx[ 4]);
	x05 = (B[ 5] ^= Bx[ 5]);
	x06 = (B[ 6] ^= Bx[ 6]);
	x07 = (B[ 7] ^= Bx[ 7]);
	x08 = (B[ 8] ^= Bx[ 8]);
	x09 = (B[ 9] ^= Bx[ 9]);
	x10 = (B[10] ^= Bx[10]);
	x11 = (B[11] ^= Bx[11]);
	x12 = (B[12] ^= Bx[12]);
	x13 = (B[13] ^= Bx[13]);
	x14 = (B[14] ^= Bx[14]);
	x15 = (B[15] ^= Bx[15]);
	for (i = 0; i < 8; i += 2)
	{
		#define R(a, b) (((a) << (b)) | ((a) >> (32 - (b))))
		// Operate on columns.
		x04 ^= R(x00+x12, 7);  //u3=R(u0, u1, 7)
		x09 ^= R(x05+x01, 7);
		x14 ^= R(x10+x06, 7);
		x03 ^= R(x15+x11, 7);

		x08 ^= R(x04+x00, 9); //u2=R(u3, u0, 9)
		x13 ^= R(x09+x05, 9);
		x02 ^= R(x14+x10, 9);
		x07 ^= R(x03+x15, 9);

		x12 ^= R(x08+x04,13); //u1=R(u2, u3, 13)
		x01 ^= R(x13+x09,13);
		x06 ^= R(x02+x14,13);
		x11 ^= R(x07+x03,13);

		x00 ^= R(x12+x08,18); //u0=R(u1, u2, 18)
		x05 ^= R(x01+x13,18);
		x10 ^= R(x06+x02,18);
		x15 ^= R(x11+x07,18);

		// Operate on rows.
		x01 ^= R(x00+x03, 7); //v1=R(v0, v3, 7)
		x06 ^= R(x05+x04, 7);
		x11 ^= R(x10+x09, 7);
		x12 ^= R(x15+x14, 7);

		x02 ^= R(x01+x00, 9); //v2=R(v1, v0, 9)
		x07 ^= R(x06+x05, 9);
		x08 ^= R(x11+x10, 9);
		x13 ^= R(x12+x15, 9);

		x03 ^= R(x02+x01,13); //v3=R(v2, v1, 13)
		x04 ^= R(x07+x06,13);
		x09 ^= R(x08+x11,13);
		x14 ^= R(x13+x12,13);

		x00 ^= R(x03+x02,18); //v0=R(v3, v2, 18)
		x05 ^= R(x04+x07,18);
		x10 ^= R(x09+x08,18);
		x15 ^= R(x14+x13,18);

		#undef R
	}
	B[ 0] += x00;
	B[ 1] += x01;
	B[ 2] += x02;
	B[ 3] += x03;
	B[ 4] += x04;
	B[ 5] += x05;
	B[ 6] += x06;
	B[ 7] += x07;
	B[ 8] += x08;
	B[ 9] += x09;
	B[10] += x10;
	B[11] += x11;
	B[12] += x12;
	B[13] += x13;
	B[14] += x14;
	B[15] += x15;
}



void makeTest()
{
	FILE *tst=fopen("test.txt", "wt");
	FILE *ver=fopen("ver.txt", "wt");
	uint32_t b[16], bx[16];
	for(int i=0; i<16; i++) bx[i]=(uint32_t)random();
	for(int i=0; i<16; i++) fprintf(tst, "%08x\n", bx[i]);
	for(int i=0; i<16; i++)
	{
		for(int j=0; j<16; j++) b[j]=(uint32_t)random();
		for(int j=0; j<16; j++) fprintf(tst, "%08x\n", b[j]);
		xor_salsa8(b, bx);
		for(int j=0; j<16; j++) fprintf(ver, "%08x\n", b[j]);
	}
	fclose(tst);
	fclose(ver);
}

int main()
{
	makeTest();
	return 0;
}
