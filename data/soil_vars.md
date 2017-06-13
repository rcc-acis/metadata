network_portion : 0x02
soil depth  5cm : 0x02
           10cm : 0x03
           15cm : 0x04
           20cm : 0x05
           50cm : 0x09

cover bare      : 0x03
      sod       : 0x05
      corn res  : 0x09
      wheat res : 0x0a
      bean res  : 0x0b


   Ground cover codes include the following:            
   0 = unknown                                          
   1 = grass                                            
   2 = fallow                                                   
   3 = bare ground                          
   4 = brome grass                          
   5 = sod                                  
   6 = straw multch                      
   7 = grass muck                                          
   8 = bare muck                                                

   Depth codes include the following:
   1 = 5 cm                             
   2 = 10 cm                         
   3 = 20 cm                         
   4 = 50 cm                         
   5 = 100 cm                        
   6 = 150 cm                                                  
   7 = 180 cm                                                  


0x02 + (0x05<<5) + (0x05<<10)