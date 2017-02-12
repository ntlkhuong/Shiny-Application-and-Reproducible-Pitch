ADD   = 1;
SUB = 2;
MUL = 3;
DIV = 4;

calc <- function(op1, op2, oper) {
    
    if (oper == ADD) {
        calc = op1 + op2
    }
    else if (oper == SUB) {
        calc = op1 - op2
    }
    else if (oper == MUL) {
        calc = op1 * op2
    }
    else if (oper == DIV) {
        if (op2 == 0)
            op1=0
        calc = op1 / op2
    }
    return (calc)
}