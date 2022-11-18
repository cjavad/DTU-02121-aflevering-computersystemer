@PREV1
M = 0
@PREV2
M = 1
@2
D = A
@INC
M = D

(CHECK_01)
@0
D = M
@1
M = D
D = D - 1
@PROGRAM_END
D;JLE

(LOOPSTART)
    @0
    D = M
    @INC
    D = D - M
    D = D + 1
    @PROGRAM_END
    D;JEQ
    
    @PREV2
    D = M
    D = D + M
    @ADDRES
    M = D
    @PREV2
    D = M
    @DIV
    M = D
    @DIV_PROTO
    0;JMP
    (DIV_RETURN)
    @DIV_RES
    D = M
    @ADDRES
    D = D + M
    @PREV1
    D = D - M
    @NEWVAL
    M = D
    @PREV2
    D = M
    @PREV1
    M = D
    @NEWVAL
    D = M
    @PREV2
    M = D
    @1
    M = D
    @INC
    M = M + 1
    @LOOPSTART
    0;JMP

@DIV
@DIV_RES
(DIV_PROTO)
    @DIV_RES
    M = 0
    (DIV_LOOP)
        //Load div-5 ind i D.
        //Og test om det er mindre end 0
        @DIV
        D = M
        @5
        D = D - A
        //Hvis det er mindre end 0
        //Gå til slutningen
        @DIV_END
        D;JLT
        //Hvis det ikke er minder end0
        //Så inc RES og sub 5
        @DIV_RES
        M = M + 1
        @DIV
        D = M
        @5
        D = D - A
        @DIV
        M = D
        @DIV_LOOP
        0;JMP

    (DIV_END)
    @DIV_RETURN
    0;JMP
(PROGRAM_END)
@PROGRAM_END
0;JMP