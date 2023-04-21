<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|2009 Exam Solution>>

  <section*|Question 1>

  A closed system of 3 tanks, each with volume <math|V=<SI|50|L>>, contains a
  salt solution with pumps maintatning constant flows as follows:

  <\itemize>
    <item>A flow of <SI|20|L|<math|hr<rsup|-1>>> from tank 1 to tank 2.

    <item>A flow of <SI|10|L|<math|hr<rsup|-1>>> from tank 2 to tank 1, and a
    flow of <SI|20|L|<math|hr<rsup|-1>>> from tank 2 to tank 3.

    <item>A flow of <SI|10|L|<math|hr<rsup|-1>>> from tank 3 to tank 1, and a
    flow of <SI|10|L|<math|hr<rsup|-1>>> from tank 3 to tank 2.
  </itemize>

  Find the amount of salt in each tank at time <math|t> if the initial amount
  of salt in tank 1 is <math|<SI|100|g>>, in tank 2 <SI|200|g>, and in tank 3
  <SI|0|g>.

  System of equations is:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|\<mathd\>x<rsub|1>|\<mathd\>t>>|<cell|=>|<cell|-<frac|2|5>x<rsub|1>+<frac|1|5>x<rsub|2>+<frac|1|5>x<rsub|3>>>|<row|<cell|<frac|\<mathd\>x<rsub|2>|\<mathd\>t>>|<cell|=>|<cell|<frac|2|5>x<rsub|1>-<frac|1|5>x<rsub|2>-<frac|2|5>x<rsub|2>+<frac|1|5>x<rsub|3>>>|<row|<cell|<frac|\<mathd\>x<rsub|3>|\<mathd\>t>>|<cell|=>|<cell|<frac|2|5>x<rsub|2>-<frac|1|5>x<rsub|3>-<frac|1|5>x<rsub|3>>>>>
  </eqnarray*>

  And in matrix form:

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>
  </equation*>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|-<frac|2|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|-<frac|3|5>>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|-<frac|2|5>>>>>>
  </equation*>

  To solve system of equations, find eigenvalues and eigenvectors of
  <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=<det|<tformat|<table|<row|<cell|-<frac|2|5>-\<lambda\>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|-<frac|3|5>-\<lambda\>>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|-<frac|2|5>-\<lambda\>>>>>>=\<cdots\>=
  </equation*>

  <\equation*>
    =-<around*|(|\<lambda\>+<frac|2|5>|)><around*|[|-<around*|(|\<lambda\>+<frac|3|5>|)>\<cdot\><around*|(|-<around*|(|\<lambda\>+<frac|2|5>|)>|)>-<frac|2|25>|]>-<frac|2|5><around*|[|-<frac|1|5><around*|(|\<lambda\>+<frac|2|5>|)>-<frac|2|25>|]>=\<cdots\>=
  </equation*>

  <\equation*>
    =-<around*|(|\<lambda\>+<frac|2|5>|)>*<around*|(|\<lambda\><rsup|2>+\<lambda\>+<frac|4|25>|)>+<frac|2|5>*<around*|(|<frac|1|5>\<lambda\>+<frac|4|25>|)>=-<around*|(|\<lambda\><rsup|3>+\<lambda\><rsup|2>+<frac|4|25>\<lambda\>+<frac|2|5>\<lambda\><rsup|2>+<frac|2|5>\<lambda\>+<frac|8|125>|)>+<frac|2|25>\<lambda\>+<frac|8|125>
  </equation*>

  <\equation*>
    =-<around*|(|\<lambda\><rsup|3>+<frac|7|5>\<lambda\><rsup|2>+<frac|12|25>\<lambda\>|)>=-\<lambda\><around*|(|\<lambda\><rsup|2>+<frac|7|5>\<lambda\>+<frac|12|25>|)>
  </equation*>

  Roots are:

  <\equation*>
    \<lambda\><rsub|1>=0,\<lambda\><rsub|2>=-<frac|4|5>,\<lambda\><rsub|3>=-<frac|3|5>
  </equation*>

  Find eigenvectors. For <math|\<lambda\><rsub|1>>, find
  <math|<wide|v|\<vect\>><rsub|1>> s.t. <math|<around*|(|A-\<lambda\><rsub|1>*I|)><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>>.

  <\equation*>
    A-\<lambda\><rsub|1>I=<bmatrix|<tformat|<table|<row|<cell|-<frac|2|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|-<frac|3|5>>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|-<frac|2|5>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>
  </equation*>

  For <math|\<lambda\><rsub|2>>:

  <\equation*>
    A-\<lambda\><rsub|2>I=<bmatrix|<tformat|<table|<row|<cell|<frac|2|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|<frac|2|5>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  For <math|\<lambda\><rsub|3>>:

  <\equation*>
    A-\<lambda\><rsub|3>I=<bmatrix|<tformat|<table|<row|<cell|<frac|1|5>>|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|2|5>>|<cell|0>|<cell|<frac|1|5>>>|<row|<cell|0>|<cell|<frac|2|5>>|<cell|<frac|1|5>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|-2>>>>>
  </equation*>

  General solution is

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>*\<mathe\><rsup|-<frac|4|5>t>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>+c<rsub|3>*\<mathe\><rsup|-<frac|3|5>t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|-2>>>>>
  </equation*>

  Find <math|c<rsub|1>,c<rsub|2>,c<rsub|3>> that satisfy ICs. Define

  <\equation*>
    <wide|c|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>|<row|<cell|c<rsub|3>>>>>>,<wide|b|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|100>>|<row|<cell|200>>|<row|<cell|0>>>>>,B=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|-2>>>>>
  </equation*>

  such that

  <\equation*>
    <wide|c|\<vect\>>=B<rsup|-1>*<wide|b|\<vect\>>
  </equation*>

  Find <math|B<rsup|-1>> via Gauss-Seidal algorithm.

  <\equation*>
    <bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|0|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|-1>|<cell|-2>|<cell|0>|0|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|1>>>>>>><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|-1|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|-3>|<cell|-1>|0|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>+R<rsub|2>><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|-1|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-3>|<cell|-2>|1|<cell|1>>>>>
  </equation*>

  <\equation*>
    <long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>+<frac|1|3>R<rsub|3>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>/<around*|(|-3|)>>>>>>><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|1|3>>|<cell|<frac|1|3>>|<cell|<frac|1|3>>>|<row|<cell|0>|<cell|1>|<cell|0>|-1|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|<frac|2|3>>|-<frac|1|3>|<cell|-<frac|1|3>>>>>>
  </equation*>

  Therefore,

  <\equation*>
    <wide|c|\<vect\>>=B<rsup|-1>*<wide|b|\<vect\>>=<bmatrix|<tformat|<cwith|1|3|2|2|cell-lborder|0ln>|<table|<row|<cell|<frac|1|3>>|<cell|<frac|1|3>>|<cell|<frac|1|3>>>|<row|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|<frac|2|3>>|<cell|-<frac|1|3>>|<cell|-<frac|1|3>>>>>><bmatrix|<tformat|<table|<row|<cell|100>>|<row|<cell|200>>|<row|<cell|0>>>>>=<bmatrix|<tformat|<table|<row|<cell|100>>|<row|<cell|100>>|<row|<cell|0>>>>>
  </equation*>

  In conclusion, the amount of salt in each tank at time <math|t> is:

  <\equation*>
    <wide|x|\<vect\>>=100*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+100*\<mathe\><rsup|-<frac|4|5>t>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  <section*|Question 2>

  Find the general solution to the following DE:

  <\equation*>
    y<rprime|''>-2y<rprime|'>-15y=sin t+3*\<mathe\><rsup|5t>
  </equation*>

  with ICs: <math|y<around*|(|0|)>=<frac|33|65>,y<rprime|'><around*|(|1|)>=0>.
  First solve associated homogeneous equation.

  <\equation*>
    \<lambda\><rsup|2>-2\<lambda\>-15=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|2\<pm\>8|2>=5,-3
  </equation*>

  <\equation*>
    y<rsub|h>=c<rsub|1>*\<mathe\><rsup|5t>+c<rsub|2>*\<mathe\><rsup|-3t>
  </equation*>

  Find particular solution of form <math|y<rsub|p1>=A*cos t+B*sin t>.

  <\equation*>
    -A*cos t-B*sin t+2A*sin t-2B*cos t-15A*cos t-15B*sin t=sin t
  </equation*>

  <\equation*>
    sin t*<around*|(|-B+2A-15B|)>+cos t*<around*|(|-A-2B-15A|)>=sin t
  </equation*>

  Equate coefficients on both sides.

  <\equation*>
    <choice|<tformat|<table|<row|<cell|cos
    t:>|<cell|-16A=2B\<rightarrow\>B=-8A>>|<row|<cell|sin
    t:>|<cell|-16B+2A=1\<rightarrow\>A=<frac|1|130>,B=-<frac|4|65>>>>>>
  </equation*>

  <\equation*>
    y<rsub|p1>=<frac|1|130>*cos t-<frac|4|65>*sin t
  </equation*>

  Find another particular solution of form
  <math|y<rsub|p2>=A*t**\<mathe\><rsup|5t>>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p2><rprime|'>>|<cell|=>|<cell|A*\<mathe\><rsup|5t>+5A*t*\<mathe\><rsup|5t>>>|<row|<cell|y<rsub|p2><rprime|''>>|<cell|=>|<cell|10A*\<mathe\><rsup|5t>+25A*t*\<mathe\><rsup|5t>>>>>
  </eqnarray*>

  <\equation*>
    \<mathe\><rsup|5t>*<around*|[|10A+25A*t-2A-10A*t-15A*t|]>=3*\<mathe\><rsup|5t>
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|t:>|<cell|25A-10A-25A=0>>|<row|<cell|1:>|<cell|10A-2A=3\<rightarrow\>A=<frac|3|8>>>>>>
  </equation*>

  General solution to ODE is:

  <\equation*>
    y=c<rsub|1>*\<mathe\><rsup|5t>+c<rsub|2>*\<mathe\><rsup|-3t>+<frac|1|130>*cos
    t-<frac|4|65>*sin t+<frac|3|8>*t*\<mathe\><rsup|5t>
  </equation*>

  Find <math|c<rsub|1>,c<rsub|2>> that satisfy ICs.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><around*|(|1|)>=0>|<cell|=>|<cell|5c<rsub|1>*\<mathe\><rsup|5>-3c<rsub|2>*\<mathe\><rsup|-3>+<frac|1|130>*cos
    <around*|(|1|)>-<frac|4|65>*sin <around*|(|1|)>+<frac|3|8>*\<mathe\><rsup|5>+<frac|15|8>*\<mathe\><rsup|5>>>|<row|<cell|>|<cell|=>|<cell|\<mathe\><rsup|5>*<around*|(|5c<rsub|1>+<frac|18|8>|)>-3c<rsub|2>*\<mathe\><rsup|-3><frac|1|130>*cos
    <around*|(|1|)>-<frac|4|65>*sin <around*|(|1|)>>>|<row|<cell|y<around*|(|0|)>=<frac|33|65>>|<cell|=>|<cell|c<rsub|1>+c<rsub|2>+<frac|1|130>\<rightarrow\>c<rsub|1>=<frac|1|2>-c<rsub|2>>>>>
  </eqnarray*>

  <\equation*>
    \<mathe\><rsup|5>*<around*|(|<frac|5|2>-5c<rsub|2>+<frac|18|8>|)>-3c<rsub|2>*\<mathe\><rsup|-3><frac|1|130>*cos
    <around*|(|1|)>-<frac|4|65>*sin <around*|(|1|)>=0
  </equation*>

  <math|c<rsub|2>> and <math|c<rsub|1>> are indeed numbers<text-dots>

  <section*|Question 3>

  (a) Solve the following BVP:

  <\equation*>
    25*y<rsub|x\<nocomma\>x>=y<rsub|t\<nocomma\>t>,<application-space|1em>x\<in\><around*|(|0,3|)>,t\<gtr\>0
  </equation*>

  with homogeneous BCs and ICs: <math|y<around*|(|x,0|)>=<frac|1|4>sin
  <around*|(|\<mathpi\>*x*|)>>, <math|y<rsub|t><around*|(|x,0|)>=10*sin
  <around*|(|2\<mathpi\>*x|)>>.

  Solve separately in case of zero initial position and zero initial
  velocity. Note that in both cases, <math|y<around*|(|x,0|)>,y<rsub|t><around*|(|x,0|)>>
  are odd functions over the real line.

  <underline|Zero initial velocity>, i.e.
  <math|y<around*|(|x,0|)>\<equiv\>f<around*|(|x|)>=<frac|1|4>sin
  <around*|(|\<mathpi\>*x*|)>>, <math|y<rsub|t><around*|(|x,0|)>\<equiv\>0>.

  Solution is ofform

  <\equation*>
    y<rsub|1><around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>c<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*cos <frac|n*\<mathpi\>*a*t|L>
  </equation*>

  where

  <\equation*>
    c<rsub|n>=<frac|2|L>*<big|int><rsub|0><rsup|L>f<around*|(|x|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|c<rsub|n>>.

  <\equation*>
    c<rsub|n>=<frac|2|3>*\<cdot\><frac|1|4><big|int><rsub|0><rsup|3>sin
    <around*|(|\<mathpi\>*x|)>\<cdot\>sin <frac|n*\<mathpi\>*x|3> \<mathd\>x
  </equation*>

  As sines of different frequencies are orthogonal, the integral isn't zero
  only for <math|n=3>.

  <\equation*>
    c<rsub|3>=<frac|1|6>*<big|int><rsub|0><rsup|3>sin<rsup|2>
    <around*|(|\<mathpi\>*x|)> \<mathd\>x=<frac|1|6\<mathpi\>>*<around*|[|<frac|\<mathpi\>x|2>-<frac|sin
    <around*|(|2\<mathpi\>*x|)>|4>|]><rsub|0><rsup|3>=<frac|1|4>
  </equation*>

  Therefore,

  <\equation*>
    y<rsub|1><around*|(|x,t|)>=<frac|1|4>*sin <around*|(|\<mathpi\>*x|)>*cos
    <around*|(|5\<mathpi\>*x|)>
  </equation*>

  <underline|Zero initial position>, i.e.
  <math|y<around*|(|x,0|)>\<equiv\>0,y<rsub|t><around*|(|x,0|)>\<equiv\>g<around*|(|x|)>=10*sin
  <around*|(|2\<mathpi\>*x|)>>

  Solve via D'alembert method. Let <math|G<around*|(|x|)>=g<around*|(|x|)>>
  be the odd extension of <math|g<around*|(|x|)>> over <math|\<bbb-R\>>. Let
  <math|H<around*|(|x|)>> be the promitive function of
  <math|g<around*|(|x|)>>:

  <\equation*>
    H<around*|(|x|)>=<big|int>g<around*|(|\<xi\>|)>
    \<mathd\>\<xi\>=-<frac|5|\<mathpi\>>*cos <around*|(|2\<mathpi\>*x|)>
  </equation*>

  The solution to the wave equation in this case is:

  <\equation*>
    y<rsub|2><around*|(|x,t|)>=<frac|1|10>*<around*|[|H<around*|(|x+5t|)>-H<around*|(|x-5t|)>|]>
  </equation*>

  <\equation*>
    y<rsub|2><around*|(|x,t|)>=<frac|1|10>\<cdot\><around*|(|-<frac|5|\<mathpi\>>|)>*<around*|[|cos
    <around*|(|2\<mathpi\>*x+10\<mathpi\>*t|)>-cos
    <around*|(|2\<mathpi\>*x-10\<mathpi\>t|)>|]>=-<frac|1|\<mathpi\>>*cos
    <around*|(|2\<mathpi\>*x|)>*cos <around*|(|10\<mathpi\>*t|)>
  </equation*>

  General solution to the wave equation is thus:

  <\equation*>
    y<around*|(|x,t|)>=y<rsub|1>+y<rsub|2>=<frac|1|4>*sin
    <around*|(|\<mathpi\>*x|)>*cos <around*|(|5\<mathpi\>*x|)>-<frac|1|\<mathpi\>>*cos
    <around*|(|2\<mathpi\>*x|)>*cos <around*|(|10\<mathpi\>*t|)>
  </equation*>

  (b) Find the general real solution to the following system of differential
  equations:

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>,<application-space|2em>A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-1>>|<row|<cell|7>|<cell|1>>>>>
  </equation*>

  Find eigenvalues and eigenvectors of <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=<around*|\||<tabular|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|-1>>|<row|<cell|7>|<cell|1-\<lambda\>>>>>>|\|>=<around*|(|\<lambda\>-3|)><around*|(|\<lambda\>-1|)>+7=\<lambda\><rsup|2>-4\<lambda\>+10
  </equation*>

  Roots are

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|4\<pm\>2<sqrt|6>\<mathi\>|2>=2\<pm\><sqrt|6>\<mathi\>
  </equation*>

  Construct two real solutions from the eigenvector of
  <math|\<lambda\><rsub|1>=2-<sqrt|6>\<mathi\>>. Find
  <math|<wide|v|\<vect\>>> such that <math|<around*|(|A-\<lambda\><rsub|1>I|)><wide|v|\<vect\>>=<wide|0|\<vect\>>>.

  <\equation*>
    A-\<lambda\><rsub|1>I=<bmatrix|<tformat|<table|<row|<cell|1+<sqrt|6>\<mathi\>>|<cell|-1>>|<row|<cell|7>|<cell|-1+<sqrt|6>\<mathi\>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1+<sqrt|6>\<mathi\>>>>>>
  </equation*>

  <\equation*>
    \<mathe\><rsup|\<lambda\><rsub|1>t>*<wide|v|\<vect\>>=\<mathe\><rsup|2t>*<around*|(|cos
    <around*|(|<sqrt|6>t|)>+\<mathi\>*sin
    <around*|(|<sqrt|6>t|)>|)><bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1+<sqrt|6>\<mathi\>>>>>>=\<cdots\>=
  </equation*>

  <\equation*>
    =\<mathe\><rsup|2t>*<around*|(|<bmatrix|<tformat|<table|<row|<cell|cos
    <sqrt|6>t>>|<row|<cell|cos <sqrt|6>t-<sqrt|6>*sin
    <sqrt|6>t>>>>>+\<mathi\>*<bmatrix|<tformat|<table|<row|<cell|sin
    <sqrt|6>t>>|<row|<cell|sin <sqrt|6>t+<sqrt|6>*cos <sqrt|6>t>>>>>|)>
  </equation*>

  General solution to the DE is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|2t>*<bmatrix|<tformat|<table|<row|<cell|cos
    <sqrt|6>t>>|<row|<cell|cos <sqrt|6>t-<sqrt|6>*sin
    <sqrt|6>t>>>>>+c<rsub|2>*\<mathe\><rsup|2t>*<bmatrix|<tformat|<table|<row|<cell|sin
    <sqrt|6>t>>|<row|<cell|sin <sqrt|6>t+<sqrt|6>*cos <sqrt|6>t>>>>>
  </equation*>

  <section*|Question 4>

  (a) Solve the equation

  <\equation*>
    y<rprime|'>\<cdot\>y<rprime|''>-t=0
  </equation*>

  with ICs <math|y<around*|(|1|)>=1,y<rprime|'><around*|(|1|)>=2>. Set
  <math|v=y<rprime|'>>.

  <\equation*>
    v<rprime|'>\<cdot\>v=t
  </equation*>

  This is a separable DE.

  <\equation*>
    <big|int>v \<mathd\>v=<big|int>t \<mathd\>t
  </equation*>

  <\equation*>
    v<rsup|2>=t<rsup|2>+c<rsub|1>
  </equation*>

  <\equation*>
    v=\<pm\><sqrt|t<rsup|2>+c<rsub|1>>
  </equation*>

  Find <math|c<rsub|1>> using IC.

  <\equation*>
    y<rprime|'><around*|(|1|)>=2\<rightarrow\>4=1+c<rsub|1>\<rightarrow\>c<rsub|1>=3
  </equation*>

  As a side note, the IC implies that

  <\equation*>
    y<rprime|'>=+<sqrt|t<rsup|2>+3>
  </equation*>

  Integrate again:

  <\equation*>
    y=<big|int><sqrt|t<rsup|2>+3> \<mathd\>t=\<cdots\>
  </equation*>

  (b) Solve the equation

  <\equation*>
    y<rprime|'>=x*y<rsup|3>*<around*|(|1+x<rsup|2>|)><rsup|1/2>
  </equation*>

  with IC <math|y<around*|(|0|)>=2>. This is a separable equation.

  <\equation*>
    <big|int><frac|\<mathd\>y|y<rsup|3>>=<big|int><frac|x|<sqrt|1+x<rsup|2>>>
    \<mathd\>x
  </equation*>

  <\equation*>
    -<frac|1|2><frac|1|y<rsup|2>>=<sqrt|1+x<rsup|2>>+c
  </equation*>

  Insert IC.

  <\equation*>
    y<around*|(|0|)>=2\<rightarrow\>-<frac|1|2>\<cdot\><frac|1|4>=1+c\<rightarrow\>c=-<frac|9|8>
  </equation*>

  <\equation*>
    y=<sqrt|-<frac|1|2<sqrt|x<rsup|2>+1>-<frac|9|4>>>
  </equation*>

  <section*|Question 5>

  Given a rod of length <math|L=\<mathpi\>> with <math|\<alpha\><rsup|2>=25>,
  find the temperature <math|u<around*|(|x,t|)>> along the rod if
  <math|u<around*|(|x,0|)>=25> and <math|u<around*|(|0,t|)>=10,u<around*|(|\<mathpi\>,t|)>=30>
  for all <math|t>.

  Define

  <\equation*>
    w<around*|(|x,t|)>=u<around*|(|x,t|)>-v<around*|(|x|)>
  </equation*>

  such that

  <\equation*>
    v<around*|(|x|)>=10+<frac|20|\<mathpi\>>*x
  </equation*>

  <\equation*>
    w<around*|(|x,0|)>=15-<frac|20|\<mathpi\>>*x
  </equation*>

  <math|w<around*|(|x,t|)>> solves the heat equation with homogeneous BCs.
  The solution in this case is given by:

  <\equation*>
    w<around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>c<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*exp<around*|(|<frac|-n<rsup|2>\<mathpi\><rsup|2>\<alpha\><rsup|2>*t<rsup|2>|L<rsup|2>>|)>
  </equation*>

  where

  <\equation*>
    c<rsub|n>=<frac|2|L><big|int><rsub|0><rsup|L>w<around*|(|x,0|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|c<rsub|n>>.

  <\equation*>
    c<rsub|n>=<frac|2|\<mathpi\>><big|int><rsub|0><rsup|\<mathpi\>><around*|(|15-<frac|20|\<mathpi\>>*x|)>*sin
    <around*|(|n*x|)> \<mathd\>x=<frac|2|\<mathpi\>>*<around*|[|<frac|15|n>*cos
    <around*|(|n*x|)>|]><rsub|0><rsup|\<mathpi\>>-<frac|40|\<mathpi\><rsup|2>><big|int>x*sin
    <around*|(|n*x|)> \<mathd\>x
  </equation*>

  <\equation*>
    <big|int>x*sin <around*|(|n*x|)> \<mathd\>x=-x*<frac|1|n>*cos
    <around*|(|n*x|)>+<frac|1|n<rsup|2>>*sin <around*|(|n*x|)>
  </equation*>

  <\equation*>
    \<Rightarrow\>c<rsub|n>=<frac|2|\<mathpi\>>*<around*|[|<frac|15|n>*cos
    <around*|(|n*x|)>|]><rsub|0><rsup|\<mathpi\>>-<frac|40|\<mathpi\><rsup|2>>*<frac|1|n>*<around*|[|-cos
    <around*|(|n*x|)>+<frac|sin <around*|(|n*x|)>|n>|]><rsub|0><rsup|\<mathpi\>>
  </equation*>

  <\equation*>
    c<rsub|n>=<frac|30|\<mathpi\>*n>*<around*|[|<around*|(|-1|)><rsup|n>-1|]>-<frac|40|\<mathpi\><rsup|2>*n>*<around*|[|1-<around*|(|-1|)><rsup|n>|]>*
  </equation*>

  Therefore:

  <\equation*>
    u<around*|(|x,t|)>=15-<frac|20|\<mathpi\>>*x+<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|<frac|30|\<mathpi\>*n>*<around*|[|<around*|(|-1|)><rsup|n>-1|]>-<frac|40|\<mathpi\><rsup|2>*n>*<around*|[|1-<around*|(|-1|)><rsup|n>|]>*|)>*sin
    <around*|(|n*x|)>*\<mathe\><rsup|-25n<rsup|2>*t<rsup|2>>
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
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|4>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
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
    </associate>
  </collection>
</auxiliary>