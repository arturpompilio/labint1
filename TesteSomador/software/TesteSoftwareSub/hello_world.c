#include <stdio.h>

#define MEMO_IMAGEM_1 	(int *) 0x60000
#define MEMO_IMAGEM_2 	(int *)	0x40000
#define MEDIDOR_LEITURA (int *) 0x81008
#define MEDIDOR_ESCRITA (int *) 0x8100c
int i, n, wordlen, sub, * img1 = MEMO_IMAGEM_1, * img2 = MEMO_IMAGEM_2, contador = 0;
FILE *finalImage;

int main(){
	wordlen = 8;
    n = 256*320;

    finalImage = fopen("finalImage.mif", "w");

    fprintf(finalImage, "DEPTH=%d;\n", n);
	fprintf(finalImage, "WIDTH=%d;\n", wordlen);
	fprintf(finalImage, "ADDRESS_RADIX = UNS;\n");
	fprintf(finalImage, "DATA_RADIX = UNS;\n");
	fprintf(finalImage, "CONTENT\t");
	fprintf(finalImage, "BEGIN\n");

	*MEDIDOR_ESCRITA = 0;
	*MEDIDOR_ESCRITA = 1;
    for (i = 0; i < n; i++) {
    	if(img2 > img1) {
    		sub = img2[i] - img1[i];
    	}
    	else {
    		sub = img1[i] - img2[i];
    	}
    	fprintf(finalImage, "\t%d\t:\t%d;\n", i, sub);
    }
    *MEDIDOR_ESCRITA = 2;
    fprintf(finalImage,"END;");
    return 0;
}