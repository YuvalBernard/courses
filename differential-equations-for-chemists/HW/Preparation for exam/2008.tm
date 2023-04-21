<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|2008 Exam Solution>>

  Question 1 has already been answered in 2006 exam.

  <section*|Question 2>

  Find the general solution to the following differential equation

  <\equation*>
    2y<rsup|<around*|(|3|)>>-2y<rprime|''>+25y<rprime|'>=sin 2x+x
  </equation*>

  First solve associated homogeneous equation. Characteristic equation:

  <\equation*>
    2\<lambda\><rsup|3>-2y<rsup|2>+25\<lambda\>=0
  </equation*>

  <\equation*>
    \<lambda\><around*|(|2\<lambda\><rsup|2>-2\<lambda\>+25|)>=0
  </equation*>

  Roots are

  <\equation*>
    \<lambda\><rsub|1>=0,\<lambda\><rsub|2,3>=<frac|2\<pm\>14\<mathi\>|4>=<frac|1|2>\<pm\><frac|7|2>\<mathi\>
  </equation*>

  General solution to homogeneous equation is:

  <\equation*>
    c<rsub|1>+c<rsub|2>*\<mathe\><rsup|t/2>*cos
    <around*|(|<frac|7|2>t|)>+c<rsub|3>*\<mathe\><rsup|t/2>*sin
    <around*|(|<frac|7|2>t|)>
  </equation*>

  Find particular solution. Split RHS into to elements: (1) <math|sin 2x> and
  (2) <math|x>.

  <underline|For case (1)>: Guess solution of form <math|y<rsub|p1>=A*cos
  <around*|(|2x|)>+B*sin <around*|(|2x|)>>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p1><rprime|'>>|<cell|=>|<cell|-2A*sin
    2x+2B*cos 2x>>|<row|<cell|y<rsub|p1><rprime|''>>|<cell|=>|<cell|-4A*cos
    2x-4B*sin 2x>>|<row|<cell|y<rsub|p1><rsup|<around*|(|3|)>>>|<cell|=>|<cell|*8A*sin
    2x-8B*cos 2x>>>>
  </eqnarray*>

  \ Substitute in ODE:

  <\equation*>
    16A*sin 2x-16B*cos 2x+8A*cos 2x+8B*sin 2x-50A*sin 2x+50B*cos 2x=sin 2x
  </equation*>

  <\equation*>
    sin 2x*<around*|(|16A+8B-50A|)>+cos 2x*<around*|(|-16B+8A+50B|)>=sin 2x
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|cos
    2x:>|<cell|-8A=34B\<rightarrow\>A=-<frac|17|4>B>>|<row|<cell|sin
    2x:>|<cell|-34A+8B=1\<rightarrow\>B=<frac|2|305>,A=-<frac|17|610>>>>>>
  </equation*>

  <\equation*>
    y<rsub|p1>=-<frac|17|610>*cos 2x+<frac|2|305>*sin 2x
  </equation*>

  <underline|For case (2)>: Guess polynomial of form
  <math|y<rsub|p2>=A*x<rsup|3>+B*x<rsup|2>+C*x>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p2><rprime|'>>|<cell|=>|<cell|3A*x<rsup|2>+2B*x+C>>|<row|<cell|y<rsub|p2><rprime|''>>|<cell|=>|<cell|6A*x+2B>>|<row|<cell|y<rsub|p2><rsup|<around*|(|3|)>>>|<cell|=>|<cell|6A>>>>
  </eqnarray*>

  Substitute in ODE:

  <\equation*>
    12A-12A*x-4B+75A*x<rsup|2>+50B*x+25C=x
  </equation*>

  Equate coefficients on both sides to get:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsup|2>:>|<cell|A=0>>|<row|<cell|x:>|<cell|B=<frac|1|50>>>|<row|<cell|1:>|<cell|C=<frac|4|25>B=<frac|2|625>>>>>>
  </equation*>

  <\equation*>
    y<rsub|p2>=<frac|1|50>x<rsup|2>+<frac|2|625>x
  </equation*>

  In conclusion, general solution to ODE is
  <math|y=y<rsub|h>+y<rsub|p1>+y<rsub|p2>>.

  <\equation*>
    y=c<rsub|1>+c<rsub|2>*\<mathe\><rsup|t/2>*cos
    <around*|(|<frac|7|2>t|)>+c<rsub|3>*\<mathe\><rsup|t/2>*sin
    <around*|(|<frac|7|2>t|)>+-<frac|17|610>*cos 2x+<frac|2|305>*sin
    2x+<frac|1|50>x<rsup|2>+<frac|2|625>x
  </equation*>

  <section*|Question 3>

  Find the solution to the following system of differential equations with
  ICs <math|<wide|x|\<vect\>><around*|(|0|)>=<around*|[|1,-3,5|]><rsup|T>>.

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>
  </equation*>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|6>|<cell|-1>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-1>>>>>
  </equation*>

  We see that the third row is a scalar multiple of the first row, which
  means that <math|rank A<rsup|n\<times\>n>\<less\>n>, so <math|\<lambda\>=0>
  is an eigenvalue. Find all eigenvalues and eigenvectors of <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|2>|<cell|1>>|<row|<cell|6>|<cell|-1-\<lambda\>>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-1-\<lambda\>>>>>>=<around*|[|<text|along
    third column>|]>=\<cdots\>=
  </equation*>

  <\equation*>
    =-12-<around*|(|\<lambda\>+1|)>-<around*|(|\<lambda\>+1|)>*<around*|[|<around*|(|\<lambda\>+1|)>*<around*|(|\<lambda\>-1|)>-12|]>=\<cdots\>=
  </equation*>

  <\equation*>
    =-\<lambda\>-13-<around*|(|\<lambda\>+1|)>*<around*|(|\<lambda\><rsup|2>-13|)>=-<around*|[|\<lambda\><rsup|3>-12\<lambda\>+\<lambda\><rsup|2>|]>=-\<lambda\>*<around*|(|\<lambda\><rsup|2>+\<lambda\>-12|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1>=0,\<lambda\><rsub|2>=3,\<lambda\><rsub|3>=-4
  </equation*>

  Find associated eigenvectors.

  <underline|For <math|\<lambda\>=0>>: Find <math|<wide|v|\<vect\>><rsub|1>>
  s.t. <math|<around*|(|A-\<lambda\><rsub|1>I|)><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>>.

  <\equation*>
    <around*|(|A-\<lambda\><rsub|1>I|)>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|6>|<cell|-1>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-1>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|6>>|<row|<cell|-13>>>>>
  </equation*>

  <underline|For <math|\<lambda\>=3>>:

  <\equation*>
    A-\<lambda\><rsub|2>I=<bmatrix|<tformat|<table|<row|<cell|-2>|<cell|2>|<cell|1>>|<row|<cell|6>|<cell|-4>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|-4>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|3>>|<row|<cell|-2>>>>>
  </equation*>

  <underline|For <math|\<lambda\>=-4>>:

  <\equation*>
    A-\<lambda\><rsub|3>I=<bmatrix|<tformat|<table|<row|<cell|5>|<cell|2>|<cell|1>>|<row|<cell|6>|<cell|3>|<cell|0>>|<row|<cell|-1>|<cell|-2>|<cell|3>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|-1>>>>>
  </equation*>

  General solution is

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|6>>|<row|<cell|-13>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|3>>|<row|<cell|-2>>>>>+c<rsub|3>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|-1>>>>>
  </equation*>

  Find unique solution that satisfies ICs.

  <\equation*>
    <wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-3>>|<row|<cell|5>>>>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|6>>|<row|<cell|-13>>>>>+c<rsub|2>*\<mathe\><rsup|3t>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|3>>|<row|<cell|-2>>>>>+c<rsub|3>*\<mathe\><rsup|-4t>**<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|-1>>>>>
  </equation*>

  Define

  <\equation*>
    <wide|c|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>|<row|<cell|c<rsub|3>>>>>>,<wide|b|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-3>>|<row|<cell|5>>>>>,B=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|6>|<cell|3>|<cell|-2>>|<row|<cell|-13>|<cell|-2>|<cell|-1>>>>>
  </equation*>

  s.t.

  <\equation*>
    B*<wide|c|\<vect\>>=<wide|b|\<vect\>>
  </equation*>

  Therefore,

  <\equation*>
    <wide|c|\<vect\>>=B<rsup|-1>*<wide|b|\<vect\>>
  </equation*>

  Invert <math|B> via Gauss-Seidal algorithm:

  <\equation*>
    <bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|6>|<cell|3>|<cell|-2>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-13>|<cell|-2>|<cell|-1>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-6R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>+13R<rsub|1>>>>>>><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-9>|<cell|-8>|<cell|-6>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|24>|<cell|12>|<cell|13>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>+<frac|8|3>R<rsub|2>>\<ldots\>
  </equation*>

  <\equation*>
    \<ldots\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-9>|<cell|-8>|<cell|-6>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-<frac|28|3>>|<cell|-3>|<cell|<frac|8|3>>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-<frac|6|7>R<rsub|3>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>+<frac|3|28>R<rsub|3>>>>>>><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|<frac|19|28>>|<cell|<frac|2|7>>|<cell|<frac|3|28>>>|<row|<cell|0>|<cell|-9>|<cell|0>|<cell|-<frac|24|7>>|<cell|-<frac|9|7>>|<cell|-<frac|6|7>>>|<row|<cell|0>|0|<cell|-<frac|28|3>>|<cell|-3>|<cell|<frac|8|3>>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<rightarrow\>R<rsub|1>+<frac|2|9>R<rsub|2>>
  </equation*>

  <\equation*>
    B<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|12>>|<cell|0>|<cell|-<frac|1|12>>>|<row|<cell|<frac|8|21>>|<cell|<frac|1|7>>|<cell|<frac|2|21>>>|<row|<cell|<frac|9|28>>|<cell|-<frac|2|7>>|<cell|-<frac|3|28>>>>>>
  </equation*>

  Coefficients are:

  <\equation*>
    <wide|c|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|12>>|<cell|0>|<cell|-<frac|1|12>>>|<row|<cell|<frac|8|21>>|<cell|<frac|1|7>>|<cell|<frac|2|21>>>|<row|<cell|<frac|9|28>>|<cell|-<frac|2|7>>|<cell|-<frac|3|28>>>>>><bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-3>>|<row|<cell|5>>>>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>>>|<row|<cell|<frac|3|7>>>|<row|<cell|<frac|9|14>>>>>>
  </equation*>

  Unique solution to the system of DEs is:

  <\equation*>
    <wide|x|\<vect\>>=-<frac|1|2>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|6>>|<row|<cell|-13>>>>>+<frac|3|7>*\<mathe\><rsup|3t>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|3>>|<row|<cell|-2>>>>>+<frac|9|14>*\<mathe\><rsup|-4t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|-1>>>>>
  </equation*>

  <section*|Question 4>

  (a) Show that the BVP

  <\equation*>
    y<rprime|''>+<around*|(|\<lambda\>+1|)>*y<rprime|'>+\<lambda\>*y=0
  </equation*>

  <math|y<around*|(|1|)>=y<rprime|'><around*|(|0|)>=0> has no real
  eigenvalues.

  Characteristic equation:

  <\equation*>
    u<rsup|2>+<around*|(|\<lambda\>+1|)>u+\<lambda\>=0
  </equation*>

  <\equation*>
    u<rsub|1,2>=<frac|-<around*|(|\<lambda\>+1|)>\<pm\><sqrt|\<lambda\><rsup|2>+2\<lambda\>+1-4\<lambda\>>|2>=<frac|-<around*|(|\<lambda\>+1|)>\<pm\><around*|(|\<lambda\>-1|)>|2>=-1,-\<lambda\>
  </equation*>

  General solution is of the form:

  <\equation*>
    y=c<rsub|1>*\<mathe\><rsup|-t>+c<rsub|2>*\<mathe\><rsup|-\<lambda\>*t>
  </equation*>

  Find <math|c<rsub|1,>c<rsub|2>> that satisfy boundary values.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|1|)>=0>|<cell|=>|<cell|c<rsub|1>\<cdot\>\<mathe\><rsup|-1>+c<rsub|2>\<cdot\>\<mathe\><rsup|-\<lambda\>>\<rightarrow\>c<rsub|1>=-c<rsub|2>\<cdot\>\<mathe\><rsup|<around*|(|1-\<lambda\>|)>>>>|<row|<cell|y<rprime|'><around*|(|0|)>=0>|<cell|=>|<cell|-c<rsub|1>-\<lambda\>*c<rsub|2>\<rightarrow\>c<rsub|1>=-\<lambda\>*c<rsub|2>>>>>
  </eqnarray*>

  These equations demand that

  <\equation*>
    c<rsub|2>=0\<Rightarrow\>y\<equiv\>0<text| <strong|or>
    >\<lambda\>=\<mathe\><rsup|<around*|(|1-\<lambda\>|)>>
  </equation*>

  Only possibility yielding non-trivial solution is <math|\<lambda\>=1>.
  Check if this eigenvalue yields a non-trivial result. Insert
  <math|\<lambda\>=1>:

  <\equation*>
    y<rprime|''>+2y<rprime|'>+y=0
  </equation*>

  Characteristic polynomial is

  <\equation*>
    \<lambda\><rsup|2>+2\<lambda\>+1=<around*|(|\<lambda\><rsup|2>+1|)>
  </equation*>

  So <math|\<lambda\>=-1> is a double root. Solution is then

  <\equation*>
    y=c<rsub|1>*\<mathe\><rsup|-t>+c<rsub|2>*t*\<mathe\><rsup|-t>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|1|)>=0>|<cell|=>|<cell|c<rsub|1>\<cdot\>\<mathe\><rsup|-1>+c<rsub|2>\<cdot\>\<mathe\><rsup|-1>\<rightarrow\>c<rsub|1>=-c<rsub|2>>>|<row|<cell|y<rprime|'><around*|(|0|)>=0>|<cell|=>|<cell|-c<rsub|1>+c<rsub|2>\<rightarrow\>c<rsub|1>=c<rsub|2>>>>>
  </eqnarray*>

  So <math|c<rsub|1>=c<rsub|2>=0>, and there is no non-trivial solution for
  this eigenvalue.

  (b) Find the inplicit solution to the equation:

  <\equation*>
    \<mathe\><rsup|x>+y<rprime|'><around*|(|\<mathe\><rsup|x>*<frac|cos y|sin
    y> +<frac|2y|sin y>|)>=0
  </equation*>

  with IC <math|y<around*|(|0|)>=<frac|\<mathpi\>|2>>. Open brackets.

  <\equation*>
    \<mathe\><rsup|x>+\<mathe\><rsup|x>*y<rprime|'>*<frac|cos y|sin
    y>+2y*<frac|y<rprime|'>|sin y>=0
  </equation*>

  Multiply by <math|sin y\<neq\>0> on some interval: (If <math|sin
  y=0\<Leftrightarrow\>y=\<mathpi\>*n,n\<in\>\<bbb-N\>> there is no
  solution).

  <\equation*>
    \<mathe\><rsup|x>*sin y+\<mathe\><rsup|x>*y<rprime|'>*cos
    y+2y*y<rprime|'>=0
  </equation*>

  Note that

  <\equation*>
    <around*|(|\<mathe\><rsup|x>*sin y+y<rsup|2>|)><rprime|'>=\<mathe\><rsup|x>*sin
    y+\<mathe\><rsup|x>*y<rprime|'>*cos y+2y*y<rprime|'>
  </equation*>

  So, the equation simplifies to

  <\equation*>
    <around*|(|\<mathe\><rsup|x>*sin y+y<rsup|2>|)><rprime|'>=0
  </equation*>

  <\equation*>
    \<mathe\><rsup|x>*sin y+y<rsup|2>=c
  </equation*>

  Find <math|c\<in\>\<bbb-R\>> s.t IC is satisfied. Input
  <math|y<around*|(|0|)>=<frac|\<mathpi\>|2>>:

  <\equation*>
    1+<frac|\<mathpi\><rsup|2>|4>=c
  </equation*>

  <section*|Question 5>

  (a) An elastic string of length <math|L=<SI|30|cm>> is held down taut at
  both ends in a frame, and vibrates according to the wave equation

  <\equation*>
    a<rsup|2>*u<rsub|x\<nocomma\>x><around*|(|x,t|)>=u<rsub|t\<nocomma\>t><around*|(|x,t|)>
  </equation*>

  where <math|a=<SI|5|cm|s<rsup|-1>>>. Assume that the frame is on a truck
  that crashes into a wall at velocity <math|u<rsub|t>=<SI|72|km|hr<rsup|-1>>>
  without damaging either the frame or the driver. Calculate the series
  representation of <math|u<around*|(|x,t|)>> that describes the vibration of
  the string (in centimeters).

  This is basically the zero position case of the wave equation. Assume
  homogeneous BCs, i.e. <math|u<around*|(|0,t|)>=u<around*|(|L,t|)>=0>, and
  ICs: <math|u<around*|(|x,0|)>\<equiv\>0>,
  <math|u<rsub|t><around*|(|x,0|)>\<equiv\>g<around*|(|x|)>=<SI|2000|cm|s<rsup|-1>>>.

  Solution is given by:

  <\equation*>
    u<around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>k<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*sin <frac|n*\<mathpi\>*a*t|L>
  </equation*>

  where

  <\equation*>
    k<rsub|n>=<frac|2|n*\<mathpi\>*a>*<big|int><rsub|0><rsup|L>g<around*|(|x|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|k<rsub|n>>.

  <\equation*>
    k<rsub|n>=<frac|2|5\<mathpi\>*n><big|int><rsub|0><rsup|30>2000\<cdot\>*sin
    <frac|n*\<mathpi\>*x|30> \<mathd\>x=-<frac|800|\<mathpi\>*n>\<cdot\><frac|30|\<mathpi\>*n>*<around*|[|cos
    <frac|n*\<mathpi\>*x|30>|]><rsub|0><rsup|30>=<frac|24000|\<mathpi\><rsup|2>*n<rsup|2>>*<around*|(|1-<around*|(|-1|)><rsup|n>|)>
  </equation*>

  Solution is then:

  <\equation*>
    u<around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|24000|\<mathpi\><rsup|2>*n<rsup|2>>*<around*|(|1-<around*|(|-1|)><rsup|n>|)>*sin
    <frac|n*\<mathpi\>*x|30>\<cdot\>sin <frac|\<mathpi\>*n*t|6>
  </equation*>

  (b) Solve the DE

  <\equation*>
    <around*|(|1+t<rsup|2>|)>*y<rprime|''>+2t*y<rprime|'>+<frac|3|t<rsup|2>>=0,<application-space|1em>t\<gtr\>0
  </equation*>

  with ICs <math|y<around*|(|1|)>=2,y<rprime|'><around*|(|1|)>=-1>. Note:\ 

  <\equation*>
    <frac|1|t*<around*|(|t<rsup|2>+1|)>>=<frac|A|t>+<frac|B*t+C|t<rsup|2>+1>
  </equation*>

  Set <math|y<rprime|'>=v>.

  <\equation*>
    <around*|(|1+t<rsup|2>|)>*v<rprime|'>+2t*v+<frac|3|t<rsup|2>>=0
  </equation*>

  Note that:

  <\equation*>
    <around*|(|<around*|(|t<rsup|2>+1|)>*v|)><rprime|'>=<around*|(|t<rsup|2>+1|)>*v<rprime|'>+2t*v
  </equation*>

  So

  <\equation*>
    <around*|(|<around*|(|t<rsup|2>+1|)>*v|)><rprime|'>=-<frac|3|t<rsup|2>>
  </equation*>

  Integrate both sides:

  <\equation*>
    <around*|(|t<rsup|2>+1|)>*v=<frac|3|t>+c<rsub|1>
  </equation*>

  <\equation*>
    y<rprime|'>=<frac|<frac|3|t>+c<rsub|1>|t<rsup|2>+1>=<frac|3+c<rsub|1>*t|t*<around*|(|t<rsup|2>+1<rsup|>|)>>=<frac|A|t>+<frac|B*t+C|t<rsup|2>+1>
  </equation*>

  Find <math|A,B,C>.

  <\equation*>
    A*<around*|(|t<rsup|2>+1|)>+B*t<rsup|2>+C*t=3+c<rsub|1>*t
  </equation*>

  Equate coefficients on both sides.

  <\equation*>
    <choice|<tformat|<table|<row|<cell|t<rsup|2>:>|<cell|A+B=0>>|<row|<cell|t:>|<cell|C=c<rsub|1>>>|<row|<cell|1:>|<cell|A=3>>>>>\<rightarrow\>B=-3
  </equation*>

  Therefore,

  <\equation*>
    y<rprime|'>=<frac|3|t>-<frac|3|2>*<frac|2t|t<rsup|2>+1>+<frac|c<rsub|1>|t<rsup|2>+1>
  </equation*>

  Integrate both sides to get:

  <\equation*>
    y=3*ln t-<frac|3|2>*ln <around*|(|t<rsup|2>+1|)>+c<rsub|1>*arctan
    t+c<rsub|2>
  </equation*>

  Input ICs.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|1|)>=2>|<cell|=>|<cell|-<frac|3|2>*ln
    2+<frac|1|4>\<mathpi\>*c<rsub|1>+c<rsub|2>\<rightarrow\>c<rsub|2>\<approx\>6.9667>>|<row|<cell|y<rprime|'><around*|(|1|)>=-1>|<cell|=>|<cell|3-<frac|3|2>+<frac|c<rsub|1>|2>\<rightarrow\>c<rsub|1>=-5>>>>
  </eqnarray*>

  Solution to DE is

  <\equation*>
    y=3*ln t-<frac|3|2>*ln <around*|(|t<rsup|2>+1|)>-5*arctan t+6.9667
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
    <associate|auto-3|<tuple|?|4>>
    <associate|auto-4|<tuple|?|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      2> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      3> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      4> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      5> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>