#### Pobranie rozkazu
0: PC => A (Sa = 1) => MAR (Smar = 1) => AD; RD = 1 (Srd = 1); D => MBR => DI => BB (Sbb = 0) => ALU (Y = BB, SALU = 0) => BA => IR (Sba = 0); PC++(Sid = 1); RA++ (X[3] = 0, X[2..0] = 5);
1: ALU => BA => TMP (Sba = 1); goto RA[7..0] * 4 (X[3] = 1);

#### MOV [REJ], [REJ]

#### MOV [PAM], [REJ]
#### ADD [REJ], [REJ]
#### ADD [REJ], [NAT]