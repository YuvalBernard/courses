<TeXmacs|2.1.2>

<style|exam>

<\body>
  <doc-data|<doc-title|2022 Exam Solution>>

  <section*|Question 1>

  (a) Solve the equation

  <\equation*>
    y<rprime|'>=<around*|(|5x<rsup|3>-4|)>*cos<rsup|2> y
  </equation*>

  with IC <math|y<around*|(|0|)>=<frac|\<mathpi\>|4>>. This is a separable
  equation.

  <\equation*>
    <big|int><frac|\<mathd\>y|cos<rsup|2>
    y>=<big|int><around*|(|5x<rsup|3>-4|)> \<mathd\>x
  </equation*>

  <\equation*>
    tan y=<frac|5|4>x<rsup|4>-4x+c<rsub|>
  </equation*>

  Input IC.

  <\equation*>
    1=c
  </equation*>

  Unique solution is:

  <\equation*>
    y=arctan <around*|(|<frac|5|4>x<rsup|4>-4x+1|)>
  </equation*>

  (b) Find the solution to the DE:

  <\equation*>
    x<rsup|3>*y<rprime|'>+4x<rsup|2>*y=\<mathe\><rsup|-x>
  </equation*>

  with IC <math|y<around*|(|-1|)>=0>.

  Assuming <math|x\<neq\>0> on some interval (if <math|x=0> there is no
  solution), divide by <math|x<rsup|3>>:

  <\equation*>
    y<rprime|'>+<frac|4|x>*y=<frac|\<mathe\><rsup|-x>|x<rsup|3>>
  </equation*>

  Solve using integration factors method. For a DE of form
  <math|y<rprime|'>+a*y=b>, the solution is given by:

  <\equation*>
    y=\<mathe\><rsup|-<big|int>a \<mathd\>x>*<around*|[|<big|int>b*\<mathe\><rsup|<big|int>a
    \<mathd\>x> \<mathd\>x+c|]>
  </equation*>

  In our case, <math|a=<frac|4|x>> and <math|b=<frac|\<mathe\><rsup|-x>|x<rsup|3>>>

  <\equation*>
    \<mathe\><rsup|<big|int>a<around*|(|x|)>
    \<mathd\>x>=\<mathe\><rsup|4<big|int><frac|1|x>
    \<mathd\>x>=\<mathe\><rsup|4*ln x>=x<rsup|4>
  </equation*>

  So:

  <\equation*>
    y=<frac|1|x<rsup|4>>*<around*|[|<big|int><frac|\<mathe\><rsup|-x>|x<rsup|3>>\<cdot\>x<rsup|4>
    \<mathd\>x+c|]>
  </equation*>

  Calculate the integral by parts:

  <\equation*>
    <big|int>x*\<mathe\><rsup|-x >\<mathd\>x=-x*\<mathe\><rsup|-x>-<big|int><around*|(|-1|)>\<cdot\>\<mathe\><rsup|-x>
    \<mathd\>x=-\<mathe\><rsup|-x>*<around*|(|x+1|)>
  </equation*>

  Therefore,

  <\equation*>
    y=-<frac|\<mathe\><rsup|-x>*<around*|(|x+1|)>|x<rsup|4>>+<frac|c|x<rsup|4>>
  </equation*>

  Input IC:

  <\equation*>
    y<around*|(|-1|)>=0=c
  </equation*>

  Unique solution is:

  <\equation*>
    y=-<frac|\<mathe\><rsup|-x>*<around*|(|x+1|)>|x<rsup|4>>
  </equation*>

  <section*|Question 2>

  Find the solution to the equation

  <\equation*>
    y<rprime|''>+9y=<big|sum><rsub|n=1><rsup|\<infty\>><frac|sin
    <around*|(|n*x|)>|n<rsup|2>>
  </equation*>

  with ICs <math|y<around*|(|0|)>=y<rprime|'><around*|(|0|)>=0>.

  First solve associated homogeneous equation. Characteristic equation is:

  <\equation*>
    \<lambda\><rsup|2>+9=0
  </equation*>

  <\equation*>
    \<lambda\>=\<pm\>3\<mathi\>
  </equation*>

  Therefore, general solution to homogeneous equation is:

  <\equation*>
    y<rsub|h>=c<rsub|1>*cos <around*|(|3x|)>+c<rsub|2>*sin <around*|(|3x|)>
  </equation*>

  where <math|c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>>. Now search for a
  particular solution in a form of a Fourier series:

  <\equation*>
    f<around*|(|x|)>=<frac|a<rsub|0>|2>+<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|a<rsub|n>*cos
    <frac|n*\<mathpi\>*x|L>+b<rsub|n>*sin <frac|n*\<mathpi\>*x|L>|)>
  </equation*>

  where <math|L=\<mathpi\>>. As the summand in the RHS consists of odd
  functions only, and because there is only a second derivative in the ODE
  (which returns sine and cosine given sine and cosine respectively),
  <math|a<rsub|0>> and <math|a<rsub|n>> are assumed to be zero. The
  particular solution is simplified into:

  <\equation*>
    f<around*|(|x|)>=<big|sum><rsub|n=1><rsup|\<infty\>>b<rsub|n>*sin
    <around*|(|n*x|)>
  </equation*>

  Second derivative of <math|f<around*|(|x|)>> is:

  <\equation*>
    f<rprime|''><around*|(|x|)>=<big|sum><rsub|n=1><rsup|\<infty\>>-n<rsup|2>\<cdot\>b<rsub|n>*sin
    <around*|(|n*x|)>
  </equation*>

  Input in ODE:

  <\equation*>
    <big|sum><rsub|n=1><rsup|\<infty\>>-n<rsup|2>\<cdot\>b<rsub|n>*sin
    <around*|(|n*x|)>+9<big|sum><rsub|n=1><rsup|\<infty\>>b<rsub|n>*sin
    <around*|(|n**x|)>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|sin
    <around*|(|n*x|)>|n<rsup|2>>
  </equation*>

  <\equation*>
    <big|sum><rsub|n=1><rsup|\<infty\>>sin
    <around*|(|n*x|)>*<around*|[|<around*|(|9-n<rsup|2>|)>b<rsub|n>|]>=<big|sum><rsub|n=1><rsup|\<infty\>>sin
    <around*|(|n*x|)>*<around*|[|<frac|1|n<rsup|2>>|]>
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <around*|(|9-n<rsup|2>|)>b<rsub|n>=<frac|1|n<rsup|2>>
  </equation*>

  <\equation*>
    b<rsub|n>=<frac|1|n<rsup|2>*<around*|(|9-n<rsup|2>|)>>
  </equation*>

  Therefore, the general solution to the ODE is:

  <\equation*>
    y=c<rsub|1>*cos <around*|(|3x|)>+c<rsub|2>*sin
    <around*|(|3x|)>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|1|n<rsup|2>*<around*|(|9-n<rsup|2>|)>>*sin
    <around*|(|n*x|)>
  </equation*>

  Input ICs:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|=>|<cell|c<rsub|1>>>|<row|<cell|y<rprime|'><around*|(|0|)>=0>|<cell|=>|<cell|3c<rsub|2>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|1|n*<around*|(|9-n<rsup|2>|)>>\<rightarrow\>c<rsub|2>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|1|3n*<around*|(|n<rsup|2>-9|)>>>>>>
  </eqnarray*>

  Unique solution is:

  <\equation*>
    y=<big|sum><rsub|n=1><rsup|\<infty\>><frac|1|3n*<around*|(|n<rsup|2>-9|)>>*sin
    <around*|(|3x|)>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|1|n<rsup|2>*<around*|(|9-n<rsup|2>|)>>*sin
    <around*|(|n*x|)>
  </equation*>

  <section*|Question 3>

  A 2-degree of freedom mass system was constructed as follows:

  A mass of <math|m<rsub|1>=2 kg> was suspended from a spring with
  <math|k<rsub|1>=4>, and a second mass <math|m<rsub|2>=1 kg> was attached by
  a spring with <math|k<rsub|2>=2> to the first one. Let
  <math|u<rsub|1>,u<rsub|2>> be the vertical displacement of masses
  <math|m<rsub|1>,m<rsub|2>>.

  (a) Construct a system of DEs whose solution gives
  <math|u<rsub|1>,u<rsub|2>>. Equations of motion for both masses:

  <\eqnarray*>
    <tformat|<table|<row|<cell|m<rsub|1>*u<rsub|1><rprime|''>>|<cell|=>|<cell|-k<rsub|1>*u<rsub|1>+k<rsub|2>*<around*|(|u<rsub|2>-u<rsub|1>|)>>>|<row|<cell|m<rsub|2>*u<rsub|2><rprime|''>>|<cell|=>|<cell|-k<rsub|2>*<around*|(|u<rsub|2>-u<rsub|1>|)>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|2u<rsub|1><rprime|''>>|<cell|=>|<cell|-4u<rsub|1>+2*<around*|(|u<rsub|2>-u<rsub|1>|)>>>|<row|<cell|u<rsub|2><rprime|''>>|<cell|=>|<cell|-2*<around*|(|u<rsub|2>-u<rsub|1>|)>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|u<rsub|1><rprime|''>>|<cell|=>|<cell|-3u<rsub|1>+u<rsub|2>>>|<row|<cell|u<rsub|2><rprime|''>>|<cell|=>|<cell|2u<rsub|1>-2u<rsub|2>>>>>
  </eqnarray*>

  (b) Derive from it a differential equation of order 4, and solve it for the
  ICs:

  <\equation*>
    u<rsub|1><around*|(|0|)>=-1,u<rsub|1><rprime|'><around*|(|0|)>=0,u<rsub|2><around*|(|0|)>=1,u<rsub|2><rprime|'><around*|(|0|)>=-1.
  </equation*>

  From the first equation:

  <\equation*>
    u<rsub|2>=u<rsub|1><rprime|''>+3u<rsub|1>
  </equation*>

  Input in the second equation:

  <\equation*>
    u<rsub|1><rsup|<around*|(|4|)>>+3u<rsub|1><rprime|''>=2u<rsub|1>-2*<around*|(|u<rsub|1><rprime|''>+3u<rsub|1>|)>
  </equation*>

  <\equation*>
    u<rsub|1><rsup|<around*|(|4|)>>+5u<rsub|1><rprime|''>+4u<rsub|1>=0
  </equation*>

  Characteristic equation is:

  <\equation*>
    \<lambda\><rsup|4>+5\<lambda\><rsup|2>+4=0
  </equation*>

  <\equation*>
    \<lambda\><rsup|2>=-4,-1
  </equation*>

  <\equation*>
    \<Rightarrow\>\<lambda\>=\<pm\>2\<mathi\>,\<pm\>\<mathi\>
  </equation*>

  Solution is:

  <\equation*>
    u<rsub|1>=c<rsub|1>*cos <around*|(|2t|)>+c<rsub|2>*sin
    <around*|(|2t|)>+c<rsub|3>*cos t+c<rsub|4>*sin t
  </equation*>

  <\equation*>
    u<rsub|2>=-c<rsub|1>*cos <around*|(|2t|)>-c<rsub|2>*sin
    <around*|(|2t|)>+2c<rsub|3>*cos t+2c<rsub|4>*sin t
  </equation*>

  Input ICs:

  <\equation*>
    u<rsub|1><around*|(|0|)>=-1=c<rsub|1>+c<rsub|3>
  </equation*>

  <\equation*>
    u<rsub|2><around*|(|0|)>=1=-c<rsub|1>+2c<rsub|3>
  </equation*>

  Therefore,

  <\equation*>
    c<rsub|3>=0,c<rsub|1>=-1
  </equation*>

  <\equation*>
    u<rsub|1>=-cos <around*|(|2t|)>+c<rsub|2>*sin
    <around*|(|2t|)>+c<rsub|4>*sin t
  </equation*>

  <\equation*>
    u<rsub|2>=cos <around*|(|2t|)>-c<rsub|2>*sin
    <around*|(|2t|)>+2c<rsub|4>*sin t
  </equation*>

  <\equation*>
    u<rsub|1><rprime|'><around*|(|0|)>=0=2c<rsub|2>+c<rsub|4>
  </equation*>

  <\equation*>
    u<rsub|2><rprime|'><around*|(|0|)>=-1=-2c<rsub|2>+2c<rsub|4>
  </equation*>

  <\equation*>
    -1=3c<rsub|4>\<rightarrow\>c<rsub|4>=-<frac|1|3>
  </equation*>

  <\equation*>
    c<rsub|2>=<frac|1|6>
  </equation*>

  In conclusion, the solution satisfying ICs is:

  <\equation*>
    u<rsub|1>=-cos <around*|(|2t|)>+<frac|1|6>*sin
    <around*|(|2t|)>-<frac|1|3>*sin t
  </equation*>

  <\equation*>
    u<rsub|2>=cos <around*|(|2t|)>-<frac|1|6>*sin
    <around*|(|2t|)>-<frac|2|3>*sin t
  </equation*>

  <section*|Question 4>

  A closed system of 3 tanks, each with volume 50L, contains a salt solution
  with pumps maintaining constant flows as follows:

  <\itemize>
    <item>A flow of 20L/h from tank 1 to tank 2

    <item>A flow of 10L/h from tank 2 to tank 1, and 20L/h from 2 to 3

    <item>A flow of 10L/h from 3 to 1, and 10L/h from 3 to 2
  </itemize>

  Find the amount of salt in each tank at time <math|t> if the initial amount
  of salt in tank 1 is 100g, in tak 2 200g, and in tank 3 0g.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rprime|'><rsub|1>>|<cell|=>|<cell|-<frac|2|5>x<rsub|1>+<frac|1|5>x<rsub|2>+<frac|1|5>x<rsub|3>>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|=>|<cell|<frac|2|5>x<rsub|1>-<around*|(|<frac|1|5>+<frac|2|5>|)>x<rsub|2>+<frac|1|5>x<rsub|3>>>|<row|<cell|x<rsub|3><rprime|'>>|<cell|=>|<cell|<frac|2|5>x<rsub|2>-<around*|(|<frac|1|5>+<frac|1|5>|)>x<rsub|3>>>>>
  </eqnarray*>

  In matrix form:

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>
  </equation*>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|-<frac|2|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|-<frac|3|5>>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|-<frac|2|5>>>>>>
  </equation*>

  Note that the sum along each column is zero, so <math|\<lambda\>=0> is an
  eigenvalue with eigenvector <math|<around*|[|1,1,1|]><rsup|T>>.

  Find the other eigenvalues and eigenvectors.

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=<det|<tformat|<table|<row|<cell|-<frac|2|5>-\<lambda\>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|-<frac|3|5>-\<lambda\>>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|-<frac|2|5>-\<lambda\>>>>>>
  </equation*>

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=-<around*|(|\<lambda\>+<frac|2|5>|)><around*|[|<around*|(|\<lambda\>+<frac|3|5>|)><around*|(|\<lambda\>+<frac|2|5>|)>-<frac|2|25>|]>-<frac|2|5><around*|[|-<frac|1|5><around*|(|\<lambda\>+<frac|2|5>|)>-<frac|2|25>|]>
  </equation*>

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=-<around*|(|\<lambda\>+<frac|2|5>|)><around*|[|\<lambda\><rsup|2>+\<lambda\>+<frac|4|25>|]>+<frac|2|25>\<lambda\>+<frac|8|125>=\<cdots\>=
  </equation*>

  <\equation*>
    =-<around*|[|\<lambda\><rsup|3>+\<lambda\><rsup|2>+<frac|4|25>\<lambda\>+<frac|2|5>\<lambda\><rsup|2>+<frac|2|5>\<lambda\>+<frac|8|125>|]>+<frac|2|25>\<lambda\>+<frac|8|125>=-\<lambda\><around*|(|\<lambda\><rsup|2>+<frac|7|5>\<lambda\><rsup|>+<frac|12|25>|)>
  </equation*>

  Roots are:

  <\equation*>
    \<lambda\><rsub|1>=0,\<lambda\><rsub|2,3>=<frac|-<frac|7|5>\<pm\><frac|1|5>|2>=-<frac|3|5>,-<frac|4|5>
  </equation*>

  Find eigenvectors. For <math|\<lambda\><rsub|2>=-<frac|3|5>>:

  <\equation*>
    <around*|(|A-\<lambda\><rsub|2>I|)>=<bmatrix|<tformat|<table|<row|<cell|<frac|1|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|0>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|<frac|1|5>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|-2>>>>>
  </equation*>

  s.t. <math|<around*|(|A-\<lambda\><rsub|2>I|)><wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>>.
  For <math|\<lambda\><rsub|3>=-<frac|4|5>>:

  <\equation*>
    A-\<lambda\><rsub|3>I=<bmatrix|<tformat|<table|<row|<cell|<frac|2|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|<frac|2|5>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  s.t. <math|<around*|(|A-\<lambda\><rsub|3>I|)><wide|v|\<vect\>><rsub|3>=<wide|0|\<vect\>>>.
  General solution is:

  <\equation*>
    <wide|x|\<vect\>><rsub|3>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>*\<mathe\><rsup|-<frac|3|5>t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|-2>>>>>+c<rsub|3>*\<mathe\><rsup|-<frac|4|5>t>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  Find <math|<wide|c|\<vect\>>=<around*|[|c<rsub|1>,c<rsub|2>,c<rsub|3>|]><rsup|T>>
  that satisfies ICs. Define

  <\equation*>
    B=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-2>|<cell|-1>>>>>,<wide|b|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|100>>|<row|<cell|200>>|<row|<cell|0>>>>>
  </equation*>

  such that <math|B<rsup|-1>*<wide|b|\<vect\>>=<wide|c|\<vect\>>>. Find
  <math|B<rsup|-1>>.

  <\equation*>
    det B=<around*|[|-1+2|]>-<around*|[|-1-1|]>=3
  </equation*>

  <\equation*>
    B<rsup|-1>=<frac|1|3>*<bmatrix|<tformat|<table|<row|<cell|<around*|(|-1+2|)>>|<cell|-<around*|(|-1-1|)>>|<cell|<around*|(|-2-1|)>>>|<row|<cell|-<around*|(|-1|)>>|<cell|<around*|(|-1|)>>|<cell|-<around*|(|-2-1|)>>>|<row|<cell|<around*|(|1|)>>|<cell|-<around*|(|1|)>>|<cell|<around*|(|1-1|)>>>>>><rsup|T>=<frac|1|3>*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-3>>|<row|<cell|1>|<cell|-1>|<cell|3>>|<row|<cell|1>|<cell|-1>|<cell|0>>>>><rsup|T>=<frac|1|3>*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|-3>|<cell|3>|<cell|0>>>>>
  </equation*>

  Therefore:

  <\equation*>
    <wide|c|\<vect\>>=<frac|1|3>*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|-3>|<cell|3>|<cell|0>>>>>*<bmatrix|<tformat|<table|<row|<cell|100>>|<row|<cell|200>>|<row|<cell|0>>>>>=<bmatrix|<tformat|<table|<row|<cell|100>>|<row|<cell|0>>|<row|<cell|100>>>>>
  </equation*>

  <section*|Question 5>

  An elastic string of length <math|L=40 cm> is held down taut at both ends
  in a frame, and vibrates according to the wave equation:

  <\equation*>
    u<rsub|x\<nocomma\>x><around*|(|x,t|)>=u<rsub|t\<nocomma\>t><around*|(|x,t|)>
  </equation*>

  where <math|a=1 cm/s>. Assume that the initial position of the string is
  its equilibrium position, and that it is set in motion with an initial
  velocity:

  <\equation*>
    u<rsub|t><around*|(|x,0|)>\<equiv\>g<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<frac|x|10>>|<cell|x\<in\><around*|[|0,10|]>>>|<row|<cell|1>|<cell|x\<in\><around*|(|10,30|)>>>|<row|<cell|<frac|40-x|10>>|<cell|x\<in\><around*|[|30,40|]>>>>>>
  </equation*>

  Calculate the series representation of <math|u<around*|(|x,t|)>> that
  describes the vibration of the string.

  <\equation*>
    u<around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>k<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*sin <frac|n*\<mathpi\>*a*t|L>
  </equation*>

  where

  <\equation*>
    k<rsub|n>=<frac|2|n*\<mathpi\>*a><big|int><rsub|0><rsup|L>g<around*|(|x|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|k<rsub|n>>.

  <\equation*>
    k<rsub|n>=<frac|2|n\<mathpi\>>*<around*|[|<frac|1|10><big|int><rsub|0><rsup|10>x*sin
    <frac|n*\<mathpi\>*x|40> \<mathd\>x+<big|int><rsub|10><rsup|30>sin
    <frac|n*\<mathpi\>*x|40> \<mathd\>x+4<big|int><rsub|30><rsup|40>sin
    <frac|n*\<mathpi\>*x|40> \<mathd\>x-<frac|1|10><big|int><rsub|30><rsup|40>x*sin
    <frac|n*\<mathpi\>*x|40> \<mathd\>x|]>
  </equation*>

  <\equation*>
    <big|int>x*sin <frac|n*\<mathpi\>*x|40>
    \<mathd\>x=<frac|40|n\<mathpi\>>*<around*|[|-x*cos
    <frac|n\<mathpi\>*x|40>+<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]>
  </equation*>

  <\equation*>
    <big|int>sin <frac|n\<mathpi\>*x|40> \<mathd\>x=-<frac|40|n\<mathpi\>><around*|[|*cos
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]>
  </equation*>

  Therefore:

  <\eqnarray*>
    <tformat|<table|<row|<cell|k<rsub|n>>|<cell|=>|<cell|<frac|2|n\<mathpi\>><around*|[|<frac|1|10>\<cdot\><frac|40|n\<mathpi\>>*<around*|[|-x*cos
    <frac|n\<mathpi\>*x|40>+<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]><rsub|0><rsup|10>-<frac|1|10>\<cdot\><frac|40|n\<mathpi\>>*<around*|[|-x*cos
    <frac|n\<mathpi\>*x|40>+<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]><rsub|30><rsup|40>|]>>>|<row|<cell|>|<cell|>|<cell|+<frac|2|n\<mathpi\>><around*|[|-<frac|40|n\<mathpi\>><around*|[|*cos
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]><rsub|10><rsup|30>-<frac|160|n\<mathpi\>><around*|[|*cos
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]><rsub|30><rsup|40>|]>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|k<rsub|n>>|<cell|=>|<cell|<frac|2|n\<mathpi\>><around*|[|<frac|4|n\<mathpi\>><around*|[|-10*cos
    <around*|(|<frac|n\<mathpi\>|4>|)>+<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|4>|)>|]>-<frac|4|n\<mathpi\>><around*|[|-40*cos
    <around*|(|n\<mathpi\>|)>+30*cos <around*|(|<frac|3n\<mathpi\>|4>|)>-<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|3n\<mathpi\>|4>|)>|]>|]>>>|<row|<cell|>|<cell|>|<cell|+<frac|2|n\<mathpi\>><around*|[|-<frac|40|n\<mathpi\>><around*|[|cos
    <around*|(|<frac|3n\<mathpi\>|4>|)>-cos
    <around*|(|<frac|n\<mathpi\>|4>|)>|]>-<frac|160|n\<mathpi\>><around*|[|cos
    <around*|(|n\<mathpi\>|)>-cos <around*|(|<frac|3n\<mathpi\>|4>|)>|]>|]>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|k<rsub|n>>|<cell|=>|<cell|<frac|2|n\<mathpi\>>\<cdot\><frac|4|n\<mathpi\>><around*|[|-10*cos
    <around*|(|<frac|n\<mathpi\>|4>|)>+<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|4>|)>+40*cos
    <around*|(|n\<mathpi\>|)>-30*cos <around*|(|<frac|3n\<mathpi\>|4>|)>+<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|3n\<mathpi\>|4>|)>|]>>>|<row|<cell|>|<cell|>|<cell|-<frac|2|n\<mathpi\>>\<cdot\><frac|40|n\<mathpi\>><around*|[|cos
    <around*|(|<frac|3n\<mathpi\>|4>|)>-cos
    <around*|(|<frac|n\<mathpi\>|4>|)>+4*cos <around*|(|n\<mathpi\>|)>-4*cos
    <around*|(|<frac|3n\<mathpi\>|4>|)>|]>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|k<rsub|n>>|<cell|=>|<cell|<frac|2|n<rsup|2>\<mathpi\><rsup|2>>*<around*|[|<frac|160|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|4>|)>-120*cos
    <around*|(|<frac|3n\<mathpi\>|4>|)>+<frac|160|n\<mathpi\>>*sin
    <around*|(|<frac|3n\<mathpi\>|4>|)>|]>>>|<row|<cell|>|<cell|>|<cell|-<frac|2|n<rsup|2>\<mathpi\><rsup|2>>*<around*|[|40*cos
    <around*|(|<frac|3n\<mathpi\>|4>|)>-160*cos
    <around*|(|<frac|3n\<mathpi\>|4>|)>|]>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|k<rsub|n>>|<cell|=>|<cell|<frac|2|n<rsup|2>\<mathpi\><rsup|2>>*<around*|[|<frac|160|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|4>|)>+<frac|160|n\<mathpi\>>*sin
    <around*|(|<frac|3n\<mathpi\>|4>|)>|]>=-<frac|640|n<rsup|3>\<mathpi\><rsup|3>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>**sin
    <around*|(|<frac|n\<mathpi\>|4>|)>>>>>
  </eqnarray*>

  In conclusion,

  <\equation*>
    u<around*|(|x,t|)>=-<big|sum><rsub|n=1><rsup|\<infty\>><frac|640|n<rsup|3>\<mathpi\><rsup|3>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>**sin
    <around*|(|<frac|n\<mathpi\>|4>|)>*sin <frac|n*\<mathpi\>*x|40>*sin
    <frac|n*\<mathpi\>*t|40>
  </equation*>

  <section*|Question 6>

  Given a rod of length <math|L=40 cm> with <math|\<alpha\><rsup|2>=0.25>,
  find <math|u<around*|(|x,t|)>> if

  <\equation*>
    u<around*|(|x,0|)>\<equiv\>f<around*|(|x|)>=<frac|x<around*|(|60-x|)>|30>,<application-space|1em>x\<in\><around*|(|0,40|)>
  </equation*>

  and both ends of the rod are insulated.

  Solution is given by:

  <\equation*>
    u<around*|(|x,t|)>=<frac|c<rsub|0>|2>+<big|sum><rsub|n=1><rsup|\<infty\>>c<rsub|n>*cos
    <frac|n\<mathpi\>*x|L>*\<mathe\><rsup|-<frac|n<rsup|2>\<mathpi\><rsup|2>\<alpha\><rsup|2>*t|L<rsup|2>>>
  </equation*>

  where

  <\equation*>
    c<rsub|n>=<frac|2|L><big|int><rsub|0><rsup|L>f<around*|(|x|)>*cos
    <frac|n\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|c<rsub|n>>.

  <\equation*>
    c<rsub|n>=<frac|1|20><big|int><rsub|0><rsup|40><around*|(|2x-<frac|x<rsup|2>|30>|)>*cos
    <frac|n\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  <\equation*>
    <big|int>x*cos <frac|n\<mathpi\>*x|L>
    \<mathd\>x=<frac|L|n\<mathpi\>><around*|[|x*sin
    <around*|(|<frac|n\<mathpi\>*x|L>|)>+<frac|L|n\<mathpi\>>*cos
    <around*|(|<frac|n\<mathpi\>*x|L>|)>|]>
  </equation*>

  <\equation*>
    <big|int>x<rsup|2>*cos <frac|n\<mathpi\>*x|L>
    \<mathd\>x=<frac|L|n\<mathpi\>><around*|(|x<rsup|2>*sin
    <around*|(|<frac|n\<mathpi\>*x|L>|)>-<frac|2L|n\<mathpi\>><around*|[|-x*cos
    <around*|(|<frac|n\<mathpi\>*x|L>|)>+<frac|L|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>*x|L>|)>|]>|)>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|c<rsub|n>>|<cell|=>|<cell|<frac|1|20>\<cdot\>2\<cdot\><frac|40|n\<mathpi\>><around*|[|x*sin
    <around*|(|<frac|n\<mathpi\>*x|40>|)>+<frac|40|n\<mathpi\>>*cos
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]><rsub|0><rsup|40>>>|<row|<cell|>|<cell|>|<cell|+<frac|1|20>\<cdot\><around*|(|-<frac|1|30>|)>\<cdot\><frac|40|n\<mathpi\>><around*|(|x<rsup|2>*sin
    <around*|(|<frac|n\<mathpi\>*x|40>|)>-<frac|40|n\<mathpi\>><around*|[|-x*cos
    <around*|(|<frac|n\<mathpi\>*x|40>|)>+<frac|40|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>*x|40>|)>|]>|)><rsub|0><rsup|40>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|c<rsub|n>>|<cell|=>|<cell|<frac|4|n\<mathpi\>><around*|[|<frac|40|n\<mathpi\>>*cos
    <around*|(|n\<mathpi\>|)>-<frac|40|n\<mathpi\>>|]>-<frac|1|15n\<mathpi\>><around*|(|-<frac|40|n\<mathpi\>><around*|[|-40*cos
    <around*|(|n\<mathpi\>|)>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|160|n<rsup|2>\<mathpi\><rsup|2>><around*|[|cos
    <around*|(|n\<mathpi\>|)>-1|]>-<frac|320|3n<rsup|2>\<mathpi\><rsup|2>>\<cdot\>cos
    <around*|(|n\<mathpi\>|)>=<frac|160|3n<rsup|2>\<mathpi\><rsup|2>>*<around*|(|-1|)><rsup|n>-<frac|160|n<rsup|2>\<mathpi\><rsup|2>>>>>>
  </eqnarray*>

  Calculate <math|c<rsub|0>>.

  <\equation*>
    c<rsub|0>=<frac|1|20><big|int><rsub|0><rsup|40><around*|(|2x-<frac|x<rsup|2>|30>|)>*\<mathd\>x=<frac|1|20><around*|[|x<rsup|2>-<frac|x<rsup|3>|90>|]><rsub|0><rsup|40>=<frac|400|9>
  </equation*>

  Therefore,

  <\equation*>
    c<rsub|n>=<frac|400|9>+<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|<frac|160|3n<rsup|2>\<mathpi\><rsup|2>>*<around*|(|-1|)><rsup|n>-<frac|160|n<rsup|2>\<mathpi\><rsup|2>>|)>*cos
    <frac|n\<mathpi\>*x|40>*\<mathe\><rsup|-<frac|n<rsup|2>\<mathpi\><rsup|2>*t|1600>>
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|?|2>>
    <associate|auto-3|<tuple|?|3>>
    <associate|auto-4|<tuple|?|4>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|6>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      1> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      2> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      3> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      4> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      5> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>