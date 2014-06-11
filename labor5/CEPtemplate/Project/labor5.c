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
    int src_startadresse;
	int dst_startadresse;
    int anzahlBytes;
} eingabe_t; 

#define BUFFER_SIZE BLOCK_4KB

static int i = 0;
static eingabe_t eingabe;
static uint8_t bufferRead[BUFFER_SIZE];

void labor5(void) {
    //Hilfs-Variablen 
    //int write = 1;
    //uint8_t bufferWrite[BUFFER_SIZE];
  
    while(1) {         
        printf("\nBitte entscheiden Sie sich fuer eine Option\n");fflush(stdout);
        printf(" 1: Auslesen \n 2: Loeschen \n 3: Programmieren \n 4: Compare \n 5: Copy\n");fflush(stdout);
        scanf("%d", &eingabe.auswahl);fflush(stdout);
        printf("--> %d \n", eingabe.auswahl);fflush(stdout); 
          
        switch(eingabe.auswahl) {
            
            //Auslesen 
            case 1:  
				i = 0;
			
                do {
                    printf("\nBitte geben Sie den Baustein an");fflush(stdout);
                    printf("\n 1: Original \n 2: Work\n"); fflush(stdout);
                    //Baustein
                    scanf("%d", &eingabe.baustein_src);
                    printf("--> %d \n", eingabe.baustein_src);fflush(stdout);
                } while((!(eingabe.baustein_src > 0) && (eingabe.baustein_src <= 2)));     
                  
                //src_Startadresse
                printf("\nBitte geben Sie die Startadresse an\n"); fflush(stdout);
                scanf("%d", &eingabe.src_startadresse);
                printf("--> %d \n", eingabe.src_startadresse);fflush(stdout);
                  
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Anzahl der Bytes, des auszugebenden Bereiches\n");fflush(stdout);
                scanf("%d", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);fflush(stdout);
                          
                printf("\n");fflush(stdout);
                while(eingabe.anzahlBytes) {
                    if(eingabe.anzahlBytes > BUFFER_SIZE) {
                        spiFlashMemRead(eingabe.baustein_src, eingabe.src_startadresse, bufferRead, BUFFER_SIZE);
                        
                         for(i = 0; i < BUFFER_SIZE; i++) {
                            printf("%X ", bufferRead[i]);fflush(stdout);
                        }
                        
                        eingabe.anzahlBytes -= BUFFER_SIZE;
                        eingabe.src_startadresse += BUFFER_SIZE;
                    } else {
                        spiFlashMemRead(eingabe.baustein_src, eingabe.src_startadresse, bufferRead, eingabe.anzahlBytes);
                        
                        for(i = 0; i < eingabe.anzahlBytes; i++) {
                            printf("%X ", bufferRead[i]);fflush(stdout);
                        }
                        
                        eingabe.anzahlBytes = 0;
                    }
                } 
                printf("\nfertig!\n");fflush(stdout);
 
                break;

            //Loeschen    
            case 2:  
                do {
                    printf("\nBitte geben Sie den Baustein an"); fflush(stdout);
                    printf("\n 1: Original \n 2: Work\n"); fflush(stdout);
                    scanf("%d", &eingabe.baustein_src);
                    printf("--> %d \n", eingabe.baustein_src);fflush(stdout);
                } while((!(eingabe.baustein_src > 0) && (eingabe.baustein_src <= 2)));     
                  
                //Startadresse
                printf("\nBitte geben Sie die Startadresse an\n"); fflush(stdout);
                scanf("%d", &eingabe.src_startadresse);
                printf("--> %d \n", eingabe.src_startadresse);fflush(stdout);
                  
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Groesse des zu loeschenden Bereichs\n"); fflush(stdout);
                scanf("%d", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);fflush(stdout);
          
                printf("\n");fflush(stdout);
                if(spiFlashMemErase(eingabe.baustein_src, eingabe.src_startadresse, eingabe.anzahlBytes) != 0) {
                    printf("\nFehler beim loeschen von Addresse %X, Anzahl Bytes %d\n", eingabe.src_startadresse, eingabe.anzahlBytes); fflush(stdout);
                }
                printf("\nfertig!\n");fflush(stdout);
                
                break;
                
        //Programmieren        
        case 3:  
                do{
                    printf("\nBitte geben Sie den Source-Baustein an \n");  fflush(stdout);
                    printf("\n 1: Original  \n 2: Work\n"); fflush(stdout);
                    //Baustein
                    scanf("%d", &eingabe.baustein_src);
                    printf("--> %d \n", eingabe.baustein_src);fflush(stdout);
                      
                }while((!(eingabe.baustein_src > 0) && (eingabe.baustein_src <= 2)));     
                  
				if(eingabe.baustein_src == 1) {
					eingabe.baustein_dst = 2;
				} else {
					eingabe.baustein_dst = 1;
				}	
				
                //src_Startadresse
                printf("\nBitte geben Sie die Quell-Startadresse an\n"); fflush(stdout);
                scanf("%d", &eingabe.src_startadresse);
                printf("--> %d \n", eingabe.src_startadresse);fflush(stdout);
				
				//dst_Startadresse
                printf("\nBitte geben Sie die Ziel-Startadresse an\n"); fflush(stdout);
                scanf("%d", &eingabe.dst_startadresse);
                printf("--> %d \n", eingabe.dst_startadresse);fflush(stdout);
				     
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Anzahl der Bytes, des auszugebenden Bereiches\n"); fflush(stdout);
                scanf("%d", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);fflush(stdout);
          
				if(spiFlashMemCopy(eingabe.baustein_src, eingabe.baustein_dst, eingabe.src_startadresse, eingabe.dst_startadresse, eingabe.anzahlBytes) != 0) {
					printf("\nProgrammierfehler!!!\n"); fflush(stdout);
				}	
               
                break;
         
        //Compare                
        case 4:            
            if(spiFlashMemChipCompare() == 1){
                printf("Beide Speicher sind gleich!");fflush(stdout);
            }else{
                printf("Die Speicher sind nicht identisch!");fflush(stdout);
            }
                
            break;
            
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


