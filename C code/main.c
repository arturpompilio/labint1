#include <stdio.h>
#include <stdlib.h>

int main(){
    char line[20];
    char line2[20];
    int linha;
    int linha2;
    FILE *initalImage;
    FILE *secondImage;
    FILE *finalImage;

    finalImage = fopen("finalImage.mif", "w");
    initalImage = fopen("image.mif","r");
    secondImage = fopen("image2.mif","r");

   if(initalImage == NULL)
   {
      printf("Error Initial Image!");           
   }
   if(secondImage == NULL)
   {
      printf("Error Second Image!");           
   }
    int lineCounter = 0;
   while (lineCounter < 213867 )
   {
    fgets(line, 20, initalImage);
    fgets(line2, 20, secondImage);
    if(lineCounter >5){
        linha = atoi(line);
        linha2 = atoi(line2);
        int sub = 0;
        sub = abs(linha - linha2);
        fprintf(finalImage,"%d\n", sub );
    }
        lineCounter++;
   }
   
    fprintf(finalImage,"END;");
    
    getchar(); // wait for a key
    fclose(initalImage);
    fclose(secondImage);
    return 0;
}