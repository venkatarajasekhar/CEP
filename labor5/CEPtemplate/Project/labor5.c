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
        printf("\nBitte entscheiden Sie sich fuer eine Option\n");
        printf(" 1: Auslesen \n 2: Loeschen \n 3: Programmieren \n 4: Compare \n");
        scanf("%d", &eingabe.auswahl);
        printf("--> %d \n", eingabe.auswahl);
          
        switch(eingabe.auswahl) {
            
            //Auslesen 
            case 1:  
				i = 0;
			
                do {
                    printf("\nBitte geben Sie den Baustein an");
                    printf("\n 1: Original \n 2: Work\n");
                    //Baustein
                    scanf("%d", &eingabe.baustein_src);
                    printf("--> %d \n", eingabe.baustein_src);
                } while((!(eingabe.baustein_src > 0) && (eingabe.baustein_src <= 2)));     
                  
                //src_Startadresse
                printf("\nBitte geben Sie die Startadresse an\n"); 
                scanf("%d", &eingabe.src_startadresse);
                printf("--> %d \n", eingabe.src_startadresse);
                  
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Anzahl der Bytes, des auszugebenden Bereiches\n");
                scanf("%d", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);
                          
                printf("\n");
                while(eingabe.anzahlBytes) {
                    if(eingabe.anzahlBytes > BUFFER_SIZE) {
                        spiFlashMemRead(eingabe.baustein_src, eingabe.src_startadresse, bufferRead, BUFFER_SIZE);
                        
                         for(i = 0; i < BUFFER_SIZE; i++) {
                            printf("%X ", bufferRead[i]);
                        }
                        
                        eingabe.anzahlBytes -= BUFFER_SIZE;
                        eingabe.src_startadresse += BUFFER_SIZE;
                    } else {
                        spiFlashMemRead(eingabe.baustein_src, eingabe.src_startadresse, bufferRead, eingabe.anzahlBytes);
                        
                        for(i = 0; i < eingabe.anzahlBytes; i++) {
                            printf("%X ", bufferRead[i]);
                        }
                        
                        eingabe.anzahlBytes = 0;
                    }
                } 
                printf("\nfertig!\n");
 
                break;

            //Loeschen    
            case 2:  
                do {
                    printf("\nBitte geben Sie den Baustein an");
                    printf("\n 1: Original \n 2: Work\n");
                    scanf("%d", &eingabe.baustein_src);
                    printf("--> %d \n", eingabe.baustein_src);
                } while((!(eingabe.baustein_src > 0) && (eingabe.baustein_src <= 2)));     
                  
                //Startadresse
                printf("\nBitte geben Sie die Startadresse an\n");
                scanf("%d", &eingabe.src_startadresse);
                printf("--> %d \n", eingabe.src_startadresse);
                  
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Groesse des zu loeschenden Bereichs\n");
                scanf("%d", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);
          
                printf("\n");
                if(spiFlashMemErase(eingabe.baustein_src, eingabe.src_startadresse, eingabe.anzahlBytes) != 0) {
                    printf("\nFehler beim loeschen von Addresse %X, Anzahl Bytes %d\n", eingabe.src_startadresse, eingabe.anzahlBytes);
                }
                printf("\nfertig!\n");
                
                break;
                
        //Programmieren        
        case 3:  
                do{
                    printf("\nBitte geben Sie den Source-Baustein an \n");
                    printf("\n 1: Original  \n 2: Work\n");
                    //Baustein
                    scanf("%d", &eingabe.baustein_src);
                    printf("--> %d \n", eingabe.baustein_src);
                      
                }while((!(eingabe.baustein_src > 0) && (eingabe.baustein_src <= 2)));     
                  
				if(eingabe.baustein_src == 1) {
					eingabe.baustein_dst = 2;
				} else {
					eingabe.baustein_dst = 1;
				}	
				
                //src_Startadresse
                printf("\nBitte geben Sie die Quell-Startadresse an\n");
                scanf("%d", &eingabe.src_startadresse);
                printf("--> %d \n", eingabe.src_startadresse);
				
				//dst_Startadresse
                printf("\nBitte geben Sie die Ziel-Startadresse an\n");
                scanf("%d", &eingabe.dst_startadresse);
                printf("--> %d \n", eingabe.dst_startadresse);
				     
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Anzahl der Bytes, des auszugebenden Bereiches\n");
                scanf("%d", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);
          
				spiFlashMemErase(eingabe.baustein_dst, eingabe.dst_startadresse, eingabe.anzahlBytes);
				
				if(spiFlashMemCopy(eingabe.baustein_src, eingabe.baustein_dst, eingabe.src_startadresse, eingabe.dst_startadresse, eingabe.anzahlBytes) != 0) {
					printf("\nProgrammierfehler!!!\n");
				}	
               
                break;
         
        //Compare                
        case 4:   
			
				//src_Startadresse
                printf("\nBitte geben Sie die Work-Startadresse an\n");
                scanf("%d", &eingabe.src_startadresse);
                printf("--> %d \n", eingabe.src_startadresse);
			
				//dst_Startadresse
                printf("\nBitte geben Sie die Original-Startadresse an\n");
                scanf("%d", &eingabe.dst_startadresse);
                printf("--> %d \n", eingabe.dst_startadresse);
				     
                //Anzahl Bytes 
                printf("\nBitte geben Sie die Anzahl der Bytes, des auszugebenden Bereiches\n");
                scanf("%d", &eingabe.anzahlBytes);
                printf("--> %d \n", eingabe.anzahlBytes);

				if(spiFlashMemCompare(eingabe.src_startadresse, eingabe.dst_startadresse,  eingabe.anzahlBytes) == 0){
					printf("\nBeide Speicher sind gleich\n");
				}else{
					printf("\nDie Speicher sind nicht identisch, oder speicherbereich wurde verlassen!!\n");
				}
					
				break;
            
        default:
            printf("das war wohl nix! \n");
            break;
              
        };//end case
        
    }//end while
}


