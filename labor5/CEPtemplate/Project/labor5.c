#include <stm32f4xx.h>
#include <stm32f4xx_rcc.h>
#include "CE_Lib.h"
#include "global.h"
#include "labor5.h"
#include "spi_mem.h"

typedef struct{
    int auswahl;
    int baustein_src;
    int baustein_dst;
    int startadresse;
    int anzahlBytes;
} eingabe_t; 

#define BUFFER_SIZE BLOCK_4KB

void labor5(void) {
	eingabe_t eingabe; 
    
    //Hilfs-Variablen 
    int i;
    int write = 1;
    uint8_t bufferRead[BUFFER_SIZE];
    uint8_t bufferWrite[BUFFER_SIZE];
  
    while(1) {         
        printf("\n");
        printf("Bitte entscheiden Sie sich fuer eine Option \n");
        printf(" 1: Auslesen \n 2: Loeschen \n 3: Programmieren \n 4: Compare \n 5: Copy \n");
        scanf("%d", &eingabe.auswahl);
        printf("--> %d \n", eingabe.auswahl);fflush(stdout); 
          
        switch(eingabe.auswahl) {
            
            //Auslesen 
            case 1:                      
                do {
                    printf("\nBitte geben Sie den Baustein an");fflush(stdout);
                    printf("\n 1: Original \n 2: Work\n"); fflush(stdout);
                    //Baustein
                    scanf("%d", &eingabe.baustein_src);
                    printf("--> %d \n", eingabe.baustein_src);fflush(stdout);
                } while((!(eingabe.baustein_src > 0) && (eingabe.baustein_src <= 2)));     
                  
                //Startadresse
                printf("\nBitte geben Sie die Startadresse an\n"); fflush(stdout);
                scanf("%X", &eingabe.startadresse);
                printf("--> %d \n", eingabe.startadresse);fflush(stdout);
                  
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Anzahl der Bytes, des auszugebenden Bereiches\n"); fflush(stdout);
                scanf("%X", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);fflush(stdout);
                          
                printf("\n");
                while(eingabe.anzahlBytes) {
                    if(eingabe.anzahlBytes > BUFFER_SIZE) {
                        spiFlashMemRead(eingabe.baustein_src, eingabe.startadresse, bufferRead, BUFFER_SIZE);
                        eingabe.anzahlBytes -= BUFFER_SIZE;
                        eingabe.startadresse += BUFFER_SIZE;
                    } else {
                        spiFlashMemRead(eingabe.baustein_src, eingabe.startadresse, bufferRead, eingabe.anzahlBytes);
                    }

                    for(i = 0; i < eingabe.anzahlBytes; i++) {
                        printf("%X", bufferRead[i]);fflush(stdout);
                    }
                } 
                printf("\nfertig!\n");fflush(stdout);
  
                break;

//            //Loeschen    
//            case 2:  
//                do{
//                    printf("Bitte geben Sie den Baustein an \n"); fflush(stdout);
//                    printf("1: Original \n2: Work \n"); fflush(stdout);
//                    scanf("%d", &eingabe.baustein);
//                    printf("--> %d \n", eingabe.baustein);fflush(stdout);
//                }while((!(eingabe.baustein > 0) && (eingabe.baustein <= 2)));     
//                  
//                //Startadresse
//                printf("Bitte geben Sie die Startadresse an \n"); fflush(stdout);
//                scanf("%d", &eingabe.startadresse);
//                printf("--> %d \n", eingabe.startadresse);fflush(stdout);
//                  
//                //Anzahl Bytes 
//                printf("Bitte geben Sie die Groesse des zu loeschenden Bereichs \n"); fflush(stdout);
//                scanf("%d", &eingabe.anzahlBytes);
//                printf("--> %d \n", eingabe.anzahlBytes);fflush(stdout);
//          
//                spiFlashMemErase(eingabe.baustein, eingabe.startadresse, eingabe.anzahlBytes);
//                
//                break;
                
//        //Programmieren        
//        case 3:  
//                do{
//                    printf("Bitte geben Sie den Baustein an \n ");  fflush(stdout);
//                    printf(" 1: Work  \n 2: Original \n"); fflush(stdout);
//                    //Baustein
//                    scanf("%d", &eingabe.baustein);
//                    printf("--> %d \n", eingabe.baustein);fflush(stdout);
//                      
//                }while((!(eingabe.baustein > 0) && (eingabe.baustein <= 2)));     
//                  
//                //Startadresse
//                printf("Bitte geben Sie die Startadresse an \n"); fflush(stdout);
//                scanf("%d", &eingabe.startadresse);
//                printf("--> %d \n", eingabe.startadresse);fflush(stdout);
//                  
//                //Anzahl Bytes 
//                printf("Bitte geben Sie die Anzahl der Bytes, des auszugebenden Bereiches \n"); fflush(stdout);
//                scanf("%d", &eingabe.anzahlBytes);
//                printf("--> %d \n", eingabe.anzahlBytes);fflush(stdout);
//          
//          
//                for(i = 0; i < bufferSize; i++){
//                    bufferWrite[i] = write;
//                    write = write + 1;
//                }
//              
//                spiFlashMemWrite(eingabe.baustein, eingabe.startadresse, bufferWrite, eingabe.anzahlBytes);
//                break;
         
//        //Compare                
//        case 4:            
//            if(spiFlashMemChipCompare() == 1){
//                printf("Beide Speicher sind gleich!");fflush(stdout);
//            }else{
//                printf("Die Speicher sind nicht identisch!");fflush(stdout);
//            }
//                
//            break;
            
//        //Copy    
//        case 5: 
//            printf("Bitte geben Sie den Baustein an VON dem Sie Kopieren moechten \n ");    fflush(stdout);
//            printf("1: Original \n 2: Work \n"); fflush(stdout);
//            scanf("%d", &eingabe.baustein);
//            printf("--> %d \n", eingabe.baustein);fflush(stdout);
//          
//            printf("Bitte geben Sie den Baustein an IN den Sie Kopieren moechten \n "); fflush(stdout);
//            scanf("%d", &eingabe.baustein2);
//            printf("--> %d \n", eingabe.baustein2);fflush(stdout);
//          
//            spiFlashMemChipCopy(eingabe.baustein, eingabe.baustein2);
//          
//            break;
            
        default:
            printf("das war wohl nix! \n"); fflush(stdout);
            break;
              
        };//end case
        
    }//end while
}


