# Oznaczenia
- G - Kod grupy
- M - Kod podgrupy
- C - kod operacji

# Kod grupy: 00
### Skoki
M = 0

| **GG M CCC [NAT lub REJ]** |                       | **Opis rozkazu**           |
| -------------------------- | --------------------- | -------------------------- |
| 00 0 000 -- [NAT8]         | CCCCCC --    LLLLLLLL | jmp - skok bezwarunkowy    |
| 00 0 001 -- [NAT8]         | CCCCCC --    LLLLLLLL | jg - skok warunkowy, gdy > |
| 00 0 010 -- [NAT8]         | CCCCCC --    LLLLLLLL | jl - skok warunkowy, gdy < |
| 00 0 011 -- [NAT8]         | CCCCCC --    LLLLLLLL | je - skok warunkowy, gdy = |
| 00 0 100 [REJ2]            | CCCCCC RR             | jmp - skok bezwarunkowy    |
| 00 0 101 [REJ2]            | CCCCCC RR             | jg - skok warunkowy, gdy > |
| 00 0 110 [REJ2]            | CCCCCC RR             | jl - skok warunkowy, gdy < |
| 00 0 111 [REJ2]            | CCCCCC RR             | je - skok warunkowy, gdy = |
### Instrukcje wywołania i pętli
M = 1

| **GG M CC [NAT]**     |                       | **Opis rozkazu**             |
| --------------------- | --------------------- | ---------------------------- |
| 00 1 00 [REJ3] [NAT8] | CCCCC RRR    LLLLLLLL | loop - instrukcja pętli      |
| 00 1 01 --- [NAT8]    | CCCCC ---    LLLLLLLL | call - wywołanie podprogramu |
# Kod grupy: 01

### Operacje logiczne

| GG CCC [REJ] [NAT lub REJ]  |                         | **Opis rozkazu**               |
| --------------------------- | ----------------------- | ------------------------------ |
| 01 000 [REJ3] [NAT8]        | CCCCC RRR    LLLLLLLL   | and - koniunkcja               |
| 01 001 --- [REJ3] [REJ3] -- | CCCCC ---    RRR RRR -- | and - koniunkcja               |
| 01 010 [REJ3] [NAT8]        | CCCCC RRR    LLLLLLLL   | or - alternatywa               |
| 01 011 --- [REJ3] [REJ3] -- | CCCCC ---    RRR RRR -- | or - alternatywa               |
| 01 100 [REJ3] [NAT8]        | CCCCC RRR    LLLLLLLL   | xor - alternatywa wykluczająca |
| 01 101 --- [REJ3] [REJ3] -- | CCCCC ---    RRR RRR -- | xor - alternatywa wykluczająca |

# Kod grupy: 10

### Operacje arytmetyczne i operacje na stosie

| **GG CCC [REJ]**            |                         | **Opis rozkazu**                       |
| --------------------------- | ----------------------- | -------------------------------------- |
| 10 000 [REJ3]               | CCCCC RRR               | push - umieszczenie wartości na stosie |
| 10 001 [REJ3]               | CCCCC RRR               | pop - zdjęcie wartości ze stosu        |
| 10 010 [REJ3] [NAT8]        | CCCCC RRR    LLLLLLLL   | add - dodawanie                        |
| 10 011 --- [REJ3] [REJ3] -- | CCCCC ---    RRR RRR -- | add - dodawanie                        |
| 10 100 [REJ3] [NAT8]        | CCCCC RRR    LLLLLLLL   | sub - odejmowanie                      |
| 10 101 --- [REJ3] [REJ3] -- | CCCCC ---    RRR RRR -- | sub - odejmowanie                      |
| 10 110 [REJ3] [NAT8]        | CCCCC RRR    LLLLLLLL   | cmp - porównywanie                     |
| 10 111 --- [REJ3] [REJ3] -- | CCCCC ---    RRR RRR -- | cmp - porównywanie                     |

# Kod grupy: 11
### Operacje przesyłania danych

| **GG CC [REJ] [NAT lub DI]** |                         | **Opis rozkazu**                                         |
| ---------------------------- | ----------------------- | -------------------------------------------------------- |
| 11 00 [REJ3] - [NAT8]        | CCCC RRR -    LLLLLLLL  | mov - przeniesienie wartości natychmiastowej do rejestru |
| 11 01 [REJ3] - [REJ4]        | CCCC RRR -    RRRR ---- | mov - przeniesienie wartości z rejestru do rejestru      |
| 11 11 [REJ3] - [DI]          | CCCC RRR -              | mov - przeniesienie wartości z pamięci do rejestru       |
