## Oznaczenia
- REJ - rejestr
- NAT - wartość natychmiastowa
- PAM - pamięć


## Operacje jednoargumentowe:
- push REJ
- pop REJ

- jmp [NAT]
- jmp [REJ]

- jg [NAT]
- jg [REJ]

- je [NAT]
- je [REJ]

- jl [NAT]
- jl [REJ]

- loop [NAT] // używa rejestru - C2 jako licznika, przeskakuje - jeżeli C2 != 0 i dekrementuje - C2
- call [NAT]


## Operacje dwuargumentowe:
- add REJ, NAT
- add REJ, REJ
- sub REJ, NAT
- sub REJ, REJ

- cmp REJ, NAT
- cmp REJ, REJ

- and REJ, REJ
- and REJ, NAT

- or REJ, REJ
- or REJ, NAT

- xor REJ, REJ
- xor REJ, NAT


## Operacje przesyłania danych:
- mov REJ, NAT
- mov REJ, REJ
- mov REJ, [PAM]

