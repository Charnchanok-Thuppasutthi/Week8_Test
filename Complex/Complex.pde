void setup() {
}
void draw() {
}
//Complex c; 
//a = {5,+,4,j}
//b = {2,-,2,j}
//c = new Complex(a,b)



//c.calculate(+)
//b=c*2????



class Complex {
  int[] exp1, exp2 ; // collect integer number , and complex number can calculate 
  int[] exp3 ; //result {int,complex,syms}
  Complex(expression1, expression2) {  // a and b 
    for (int i = 0; i < 5; i++) { 
      if (expression1 == "-") { // if -6j  --> int -6
        exp1[i] = int(-expression1);
      } else if (expression1 =="+") { // if =+ skip
        //print(plus);
      } else {
        exp1[i] = int(expression1.index());
      }
    }


    for (int i = 0; i < 5; i++) { 
      if (expression2 == "-") { // if -6j  --> int -6
        exp2[i] = int(-expression2);
      } else if (expression2 =="+") { // if =+ skip
        //print(plus);
      } else {
        exp2[i] = int(expression2.index());
      }
    }
  }

  void calculate(char sym) { // 
    if (sym == '+') {
      exp3[0] = exp1[0]+ exp2[0] ;
      exp3[2] = exp1[1]+ exp2[1];
    }
    if (sym == '-') {
      exp3[0] = exp1[0]-exp2[0] ;
      exp3[2] =exp1[1] -exp2[1];
    }
    if (sym == '*') {
      exp3[0] = exp1[0]*exp2[0] ;
      exp3[2] =exp1[1] *exp2[1];
    }
    if (sym == '/') {
      exp3[0] = exp1[0]/ exp2[0] ;
      exp3[2] =exp1[1] / exp2[1];
    }
  }
}
