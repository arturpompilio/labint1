#define MEMO_IMAGEM_1 (int *) 0x40000
#define MEMO_IMAGEM_2 (int *)	0x20000
#define MEDIDOR_LEITURA (int *) 0x11020
#define MEDIDOR_ESCRITA (int *) 0x11014
#define PIXEL1_ESCRITA (int *) 0x1101c
#define PIXEL1_LEITURA (int *) 0x11010
#define PIXEL2_ESCRITA (int *) 0x11018
#define PIXEL2_LEITURA (int *) 0x1100c
#define SUBTRATOR (int *) 0x11008

int i, n, wordlen, sub, * img1 = MEMO_IMAGEM_1, * img2 = MEMO_IMAGEM_2;

int main(){
	wordlen = 8;
    n = 256*320;

	*MEDIDOR_ESCRITA = 0;
	*MEDIDOR_ESCRITA = 1;
	for (int i = 0; i < n; i++) {
		if(img2 > img1) {
			sub = img2[i] - img1[i];
		}
		else {
			sub = img1[i] - img2[i];
		}
	}
	*MEDIDOR_ESCRITA = 2;

	return 0;
}
