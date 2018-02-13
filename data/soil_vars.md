network_portion : 0x02
soil depth  5cm : 0x02
           10cm : 0x03
           15cm : 0x04
           20cm : 0x05
           25cm : 0x06
           30cm : 0x07
           50cm : 0x09

cover grass       : 0x01
      fallow      : 0x02
      bare        : 0x03
      brome grass : 0x04
      sod         : 0x05
      straw mulch : 0x06
      grass muck  : 0x07
      bare muck   : 0x08
      corn res    : 0x09
      wheat res   : 0x0a
      bean res    : 0x0b


0x02 + (0x05<<5) + (0x05<<10)


Soil Temperature
Daily:
  inst: 16                 td3200: 1
  min:  14                 td3200: 1, awdn: 2
  max:  15                 td3200: 1, awdn: 2
  ave:  69                 awdn: 1, mowx: 2


Hourly:
  inst: 120                newa: 1
  min:  122                culog: 1
  max:  121                culog: 1
  ave:  123                culog: 1


15min:
  inst: 59                 culog: 1, newa: 2
  min:  59                 


5min:
  inst: 172                deos: 1



Soil Moisture (percent)
5min:
  inst: 173                deos: 1

Soil Moisture (impedance %)
Daily:
  ave:  103                awdn: 1

Soil Moisture (capacitance %)
Hourly:
  ave:  104                awdn: 1


Soil Tension (kPa):
Hourly: 
  ave: 91                  newa: 1

Soil Tension (kPa):
15min:
  ave: 64                  newa: 1
  