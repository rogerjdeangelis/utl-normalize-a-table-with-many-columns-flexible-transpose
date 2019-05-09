Normalize a table with many columns flexible transpose                                                     
                                                                                                           
Toolbox should have thes macros                                                                            
                                                                                                           
  utl_ gather                                                                                              
     Alea Iacta gather macro                                                                               
     https://github.com/clindocu                                                                           
                                                                                                           
  utl_transpose                                                                                            
  utl_untranspose                                                                                          
                                                                                                           
                                                                                                           
github                                                                                                     
https://tinyurl.com/y6hmxrer                                                                               
https://github.com/rogerjdeangelis/utl-normalize-a-table-with-many-columns-flexible-transpose              
                                                                                                           
SAS Forum                                                                                                  
https://communities.sas.com/t5/SAS-Programming/Melting-a-dataset/m-p/557410                                
                                                                                                           
macros                                                                                                     
https://tinyurl.com/y9nfugth                                                                               
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                 
                                                                                                           
*_                   _                                                                                     
(_)_ __  _ __  _   _| |_                                                                                   
| | '_ \| '_ \| | | | __|                                                                                  
| | | | | |_) | |_| | |_                                                                                   
|_|_| |_| .__/ \__,_|\__|                                                                                  
        |_|                                                                                                
;                                                                                                          
                                                                                                           
DATA have;                                                                                                 
 INPUT A B C;                                                                                              
cards4;                                                                                                    
0 0 0                                                                                                      
0 2 0                                                                                                      
0 0 0                                                                                                      
0 1 0                                                                                                      
1 0 2                                                                                                      
1 2 1                                                                                                      
1 1 1                                                                                                      
1 1 1                                                                                                      
;;;;                                                                                                       
run;quit;                                                                                                  
                                                                                                           
Up to 40 obs WORK.HAVE total obs=8                                                                         
                                                                                                           
Obs    A    B    C                                                                                         
                                                                                                           
 1     0    0    0                                                                                         
 2     0    2    0                                                                                         
 3     0    0    0                                                                                         
 4     0    1    0                                                                                         
 5     1    0    2                                                                                         
 6     1    2    1                                                                                         
 7     1    1    1                                                                                         
 8     1    1    1                                                                                         
                                                                                                           
*            _               _                                                                             
  ___  _   _| |_ _ __  _   _| |_                                                                           
 / _ \| | | | __| '_ \| | | | __|                                                                          
| (_) | |_| | |_| |_) | |_| | |_                                                                           
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                          
                |_|                                                                                        
;                                                                                                          
                                                                                                           
Up to 40 obs WORK.DATA2 total obs=24                                                                       
                                                                                                           
Obs    VAR    VAL                                                                                          
                                                                                                           
  1     A      0                                                                                           
  2     B      0                                                                                           
  3     C      0                                                                                           
  4     A      0                                                                                           
  5     B      2                                                                                           
  6     C      0                                                                                           
  7     A      0                                                                                           
  8     B      0                                                                                           
  9     C      0                                                                                           
 10     A      0                                                                                           
 11     B      1                                                                                           
 12     C      0                                                                                           
 13     A      1                                                                                           
 14     B      0                                                                                           
 15     C      2                                                                                           
 16     A      1                                                                                           
 17     B      2                                                                                           
 18     C      1                                                                                           
 19     A      1                                                                                           
 20     B      1                                                                                           
 21     C      1                                                                                           
 22     A      1                                                                                           
 23     B      1                                                                                           
 24     C      1                                                                                           
                                                                                                           
*                                                                                                          
 _ __  _ __ ___   ___ ___  ___ ___                                                                         
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                        
| |_) | | | (_) | (_|  __/\__ \__ \                                                                        
| .__/|_|  \___/ \___\___||___/___/                                                                        
|_|                                                                                                        
;                                                                                                          
                                                                                                           
%utl_gather(have,var,val,xpo);                                                                             
                                                                                                           
