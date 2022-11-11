//Mult R00 (a) with R01 (b)

//Load R00 into @FIRST variable
@0
D = M
@FIRST
M = D

//Load R00 into @ITER variable
@1
D = M
@ITER
M = D

@SUM
M = 0
(LOOP)
//Check if @ITER equals 0
    @ITER
    D = M
//Jump if @ITER equals 0
    @END
    D;JEQ

//Else add @FIRST to SUM
    @FIRST
    D = M
    @SUM
    M = D + M

    @ITER
    D = M
    @1
    D = D - A
    @ITER
    M = D

@LOOP
0;JMP

(END)
@SUM
D = M
@2
M = D

@END
0;JMP