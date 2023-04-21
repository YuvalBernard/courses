<TeXmacs|2.1.2>

<style|<tuple|exam|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Sample Exam Solution>>

  <section*|Question 1>

  (a) A mass of <SI|5|kg> is hung on a spring in a viscous medium, and is
  stretched <SI|1|cm> and then released while an external force of
  <math|F<around*|(|t|)>=2*cos t> is applied. When a force of <SI|10|N> is
  applied to the spring, it's stretched by <SI|8|cm>. When the velocity of a
  body in the medium is <SI|1|cm/s> it results in a viscous force of
  <SI|3|N>.

  Find the position at time <math|t>.

  Equation of motion is:

  <\equation*>
    m*x<rprime|''>=F<around*|(|t|)>+m*g-k*<around*|(|L+x|)>-\<gamma\>*x<rprime|'>
  </equation*>

  Use the fact that <math|m*g=k*L>:

  <\equation*>
    x<rprime|''>+<frac|\<gamma\>|m>*x<rprime|'>+<frac|k|m>*x=<frac|F<around*|(|t|)>|m>
  </equation*>

  Calculate <math|k> and <math|\<gamma\>>.

  <\equation*>
    k=<frac|<SI|10|N>|<SI|8|cm>>=1.25
  </equation*>

  <\equation*>
    \<gamma\>=<frac|<SI|3|N>|<SI|1|cm|s<rsup|-1>>>=3
  </equation*>

  ODE describing the system is:

  <\equation*>
    x<rprime|''>+0.6x<rprime|'>+0.25x=0.4*cos t
  </equation*>

  First solve the associated homogeneous system. Characteristic equation is:

  <\equation*>
    \<lambda\><rsup|2>+0.6\<lambda\>+0.25=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|-0.6\<pm\>0.8\<mathi\>|2>=-0.3\<pm\>0.4\<mathi\>
  </equation*>

  Solution to homogeneous system is

  <\equation*>
    x<rsub|h>=c<rsub|1>*\<mathe\><rsup|-0.3t>*cos
    0.4t+c<rsub|2>*\<mathe\><rsup|-0.3t>*sin 0.4t
  </equation*>

  Now find a particular solution. Guess <math|x<rsub|p>> of the form
  <math|A*cos t+B*sin t>. Input in ODE:

  <\equation*>
    -A*cos t-B*sin t-0.6A*sin t+0.6B*cos t+0.25A*cos t+0.25B*sin t=0.4*cos t
  </equation*>

  <\equation*>
    cos t*<around*|(|-0.75A+0.6B|)>+sin t*<around*|(|-0.75B-0.6A|)>=0.4*cos t
  </equation*>

  Equate coefficients on both sides.

  <\equation*>
    <choice|<tformat|<table|<row|<cell|sin
    t:>|<cell|-<frac|3|4>B=<frac|6|10>A\<rightarrow\>A=-<frac|5|4>B>>|<row|<cell|cos
    t:>|<cell|-<frac|3|4>A+<frac|6|10>B=<frac|4|10>\<rightarrow\>B=<frac|32|123>,A=-<frac|40|123>>>>>>
  </equation*>

  General solution to the ODE (i.e. position of the mass at time <math|t>)
  is:

  <\equation*>
    x=x<rsub|h>+x<rsub|p>=c<rsub|1>*\<mathe\><rsup|-0.3t>*cos
    0.4t+c<rsub|2>*\<mathe\><rsup|-0.3t>*sin 0.4t-<frac|40|123>*cos
    t+<frac|32|123>*sin t
  </equation*>

  Input ICs: <math|x<around*|(|0|)>=<SI|1|cm>>,
  <math|x<rprime|'><around*|(|0|)>=0>.

  <\equation*>
    x<around*|(|0|)>=c<rsub|1>-<frac|40|123>=1\<rightarrow\>c<rsub|1>=<frac|163|123>
  </equation*>

  <\equation*>
    x<rprime|'><around*|(|0|)>=0.4c<rsub|2>+<frac|32|123>=0\<rightarrow\>c<rsub|2>=<frac|80|123>
  </equation*>

  <\equation*>
    x=<frac|163|123>*\<mathe\><rsup|-0.3t>*cos
    0.4t+<frac|80|123>*\<mathe\><rsup|-0.3t>*sin 0.4t-<frac|40|123>*cos
    t+<frac|32|123>*sin t
  </equation*>

  (b) Find the general (implicit) solution to the following equation:

  <\equation*>
    y*y<rprime|''>-<around*|(|y<rprime|'>|)><rsup|3>=0
  </equation*>

  Set <math|v<around*|(|x,y|)>=y<rprime|'><around*|(|x|)>>.

  <\equation*>
    y*v<rprime|'>-v<rsup|3>=0
  </equation*>

  Note that

  <\equation*>
    v<rprime|'>=<frac|\<mathd\>v|\<mathd\>x>=<frac|\<mathd\>v|\<mathd\>y>*<frac|\<mathd\>y|\<mathd\>x>=<frac|\<mathd\>v|\<mathd\>y>*v
  </equation*>

  So we get a separable ODE in <math|u,y>:

  <\equation*>
    y*<frac|\<mathd\>v|\<mathd\>y>*v=v<rsup|3>
  </equation*>

  A possible solution is <math|v=0>, equivalent to <math|y=C\<in\>\<bbb-R\>>.

  Assuming <math|v\<neq\>0> on some interval, divide by <math|v<rsup|3>> to
  get

  <\equation*>
    <frac|\<mathd\>v|v<rsup|2>>=<frac|\<mathd\>y|y>
  </equation*>

  Integrate:

  <\equation*>
    -<frac|1|v>=ln <around*|\||y|\|>+c<rsub|1>
  </equation*>

  Recall that <math|v=<frac|\<mathd\>y|\<mathd\>x>>, so we can separate
  variables again:

  <\equation*>
    -\<mathd\>x=<around*|(|ln <around*|\||y|\|>+c<rsub|1>|)> \<mathd\>y
  </equation*>

  Integrate:

  <\equation*>
    -x+c<rsub|2><rsup|>=<big|int>ln <around*|\||y|\|> \<mathd\>y+c<rsub|1>*y
  </equation*>

  Calculate integral via integration by parts. <math|u<rprime|'>=1,v=ln
  <around*|\||y|\|>>. (Poor choice of variables)

  <\equation*>
    <big|int>ln <around*|\||y|\|> \<mathd\>y=y*ln
    <around*|\||y|\|>-<big|int>y\<cdot\><frac|1|y> \<mathd\>y=y*<around*|(|ln
    <around*|\||y|\|>-1|)>
  </equation*>

  Solution to the ODE (in implicit form) is: (the term \P1\Q is omitted, as
  it's not necessary)

  <\equation*>
    -x+c<rsub|2>=y*<around*|(|ln <around*|\||y|\|>+c<rsub|1>|)>
  </equation*>

  <section*|Question 2>

  Solve the equation

  <\equation*>
    y<rprime|''>-4y<rprime|'>+4y=t*\<mathe\><rsup|2t>+3*sin t
  </equation*>

  with ICs: <math|y<around*|(|0|)>=2,y<rprime|'><around*|(|0|)>=1>. First
  solve associated homogeneous equation. Characteristic equation is:

  <\equation*>
    \<lambda\><rsup|2>-4\<lambda\>+4=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=2
  </equation*>

  Homogeneous solution is:

  <\equation*>
    y<rsub|h>=c<rsub|1>*\<mathe\><rsup|2t>+c<rsub|2>*t*\<mathe\><rsup|2t><application-space|2em>c<rsub|1,2>\<in\>\<bbb-R\>*
  </equation*>

  Now find particular solutions corresponding to each element in the RHS. For
  the sine, guess a solution of the form <math|y<rsub|p1>=A*cos t+B*sin t>.
  Input in ODE:

  <\equation*>
    -A*cos t-B*sin t-4<around*|(|-A*sin t+B*cos t|)>+4<around*|(|A*cos
    t+B*sin t|)>=3*sin t
  </equation*>

  <\equation*>
    cos t*<around*|(|-A-4B+4A|)>+sin t*<around*|(|-B+4A+4B|)>=3*sin t
  </equation*>

  Equate coefficients on both sides.

  <\equation*>
    <choice|<tformat|<table|<row|<cell|cos
    t:>|<cell|3A-4B=0\<rightarrow\>A=<frac|4|3>B>>|<row|<cell|sin
    t:>|<cell|3B+4A=3\<rightarrow\>B=<frac|9|25>,A=<frac|12|25>>>>>>
  </equation*>

  So <math|y<rsub|p1>=<frac|12|73>*cos t+<frac|9|73>*sin t>.

  For the second element in RHS, note that scalar multiples of
  <math|\<mathe\><rsup|2t>> and <math|t *\<mathe\><rsup|2t>> solve the
  homogeneous equation. Try <math|y<rsub|p2>=A*t<rsup|2>*\<mathe\><rsup|2t>>.\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><rsub|p2>>|<cell|=>|<cell|2A*t*\<mathe\><rsup|2t>+2A*t<rsup|2>*\<mathe\><rsup|2t>>>|<row|<cell|y<rprime|''><rsub|p2>>|<cell|=>|<cell|2A*\<mathe\><rsup|2t>+8A*t*\<mathe\><rsup|2t>+4A*t<rsup|2>*\<mathe\><rsup|2t>>>>>
  </eqnarray*>

  Input in ODE: (and divide by <math|\<mathe\><rsup|2t>\<neq\>0>
  <math|\<forall\>t>)

  <\equation*>
    <around*|(|2A+8A*t+4A*t<rsup|2>|)>-4*<around*|(|2A*t+2A*t<rsup|2>|)>+4A*t<rsup|2>=t
  </equation*>

  coefficient of <math|t> on LHS vanishes! Guess alternative
  <math|y<rsub|p2>=<around*|(|A*t<rsup|3>+B*t<rsup|2>|)>\<mathe\><rsup|2t>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p2><rprime|'>>|<cell|=>|<cell|\<mathe\><rsup|2t>*<around*|[|3A*t<rsup|2>+2A*t<rsup|3>+2B*t+2B*t<rsup|2>|]>=\<mathe\><rsup|2t>*<around*|[|2A*t<rsup|3>+<around*|(|6A+2B|)>*t<rsup|2>+2B*t|]>>>|<row|<cell|y<rprime|''><rsub|p2>>|<cell|=>|<cell|\<mathe\><rsup|2t>*<around*|[|6A*t+12A*t<rsup|2>+4A*t<rsup|3>+2B+8B*t+4B*t<rsup|2>|]>>>|<row|<cell|>|<cell|=>|<cell|\<mathe\><rsup|2t>*<around*|[|4A*t<rsup|3>+<around*|(|12A+4B|)>t<rsup|2>+<around*|(|6A+8B|)>t+2B|]>>>>>
  </eqnarray*>

  Input in ODE: (and divide by <math|\<mathe\><rsup|2t>\<neq\>0>
  <math|\<forall\>t>)

  <\eqnarray*>
    <tformat|<table|<row|<cell|t>|<cell|=>|<cell|<around*|[|4A*t<rsup|3>+<around*|(|12A+4B|)>t<rsup|2>+<around*|(|6A+8B|)>t+2B|]>-4<around*|[|2A*t<rsup|3>+<around*|(|6A+2B|)>*t<rsup|2>+2B*t|]>>>|<row|<cell|>|<cell|>|<cell|+4<around*|[|A*t<rsup|3>+B*t<rsup|2>|]>>>>>
  </eqnarray*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    t=t<rsup|2>*<around*|(|12A+4B-24A-8B+4 B|)>+t*<around*|(|6A+8B-8B|)>+2B
  </equation*>

  Equate coefficients on both sides to get <math|A=<frac|1|6>,B=0>.

  General solution to ODE is:

  <\equation*>
    y=y<rsub|h>+y<rsub|p1>+y<rsub|p2>=c<rsub|1>*\<mathe\><rsup|2t>+c<rsub|2>*t*\<mathe\><rsup|2t>+<frac|12|25>*cos
    t+<frac|9|25>*sin t+<frac|1|6>A*t<rsup|3>*\<mathe\><rsup|2t>
  </equation*>

  Input ICs:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|0|)>>|<cell|=>|<cell|c<rsub|1>+<frac|12|25>=2\<rightarrow\>c<rsub|1>=<frac|38|25>>>|<row|<cell|y<rprime|'><around*|(|0|)>>|<cell|=>|<cell|2c<rsub|1>+c<rsub|2>+<frac|9|25>=1\<rightarrow\>c<rsub|2>=-<frac|12|5>>>>>
  </eqnarray*>

  Unique solution is:

  <\equation*>
    <frac|38|25>*\<mathe\><rsup|2t>-<frac|12|5>*t*\<mathe\><rsup|2t>+<frac|12|25>*cos
    t+<frac|9|25>*sin t+<frac|1|6>A*t<rsup|3>*\<mathe\><rsup|2t>
  </equation*>

  <section*|Question 3>

  Given a closed system of 3 tanks containing a brine solution with constant
  flow of <math|r=<SI|10|L|min<rsup|-1>>>, find the amount of salt in each
  tank at time <math|t> if the volume of the first tank is
  <math|V<rsub|1>=<SI|20|L>>, the second is <math|V<rsub|2>=<SI|50|L>> and
  the third is <math|V<rsub|3>=<SI|20|L>>.

  Write equations for salt concentration in each tank:

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rprime|'><rsub|1>>|<cell|=>|<cell|-r*<frac|x<rsub|1>|V<rsub|1>>+r*<frac|x<rsub|3>|V<rsub|3>>>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|=>|<cell|r*<frac|x<rsub|1>|V<rsub|1>>-r*<frac|x<rsub|2>|V<rsub|2>>>>|<row|<cell|x<rsub|3<rprime|'>>>|<cell|=>|<cell|r*<frac|x<rsub|2>|V<rsub|2>>-r*<frac|x<rsub|3>|V<rsub|3>>>>>>
  </eqnarray*>

  Convert to matrix form:

  <\equation*>
    <wide|x|\<vect\>>=A*<wide|x|\<vect\>>
  </equation*>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>>|<cell|0>|<cell|<frac|1|2>>>|<row|<cell|<frac|1|2>>|<cell|-<frac|1|5>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|5>>|<cell|-<frac|1|2>>>>>>
  </equation*>

  Find eigenvalues and eigenvectors of <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=<det|<tformat|<table|<row|<cell|-<frac|1|2>-\<lambda\>>|<cell|0>|<cell|<frac|1|2>>>|<row|<cell|<frac|1|2>>|<cell|-<frac|1|5>-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|5>>|<cell|-<frac|1|2>-\<lambda\>>>>>>=0
  </equation*>

  <\equation*>
    -<around*|(|<frac|1|2>+\<lambda\>|)>*<around*|(|<frac|1|5>+\<lambda\>|)>*<around*|(|<frac|1|2>+\<lambda\>|)>-<frac|1|2>*<around*|[|-<frac|1|10>|]>=0
  </equation*>

  <\equation*>
    <around*|(|<frac|1|2>+\<lambda\>|)>*<around*|[|\<lambda\><rsup|2>+<frac|7|10>\<lambda\>+<frac|1|10>|]>-<frac|1|20>=0
  </equation*>

  <\equation*>
    \<lambda\><rsup|3>+<frac|12|10>\<lambda\><rsup|2>+<frac|9|20>\<lambda\>=0
  </equation*>

  <\equation*>
    \<lambda\>*<around*|(|\<lambda\><rsup|2>+<frac|12|10>\<lambda\>+<frac|9|20>|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1>=0,\<lambda\><rsub|1,2>=<frac|-<frac|6|5>\<pm\><frac|3|5>\<mathi\>|2>=-<frac|3|5>\<pm\><frac|3|10>\<mathi\>
  </equation*>

  For <math|\<lambda\><rsub|1>=0>:

  <\equation*>
    <around*|(|A-\<lambda\><rsub|1>*I|)><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>>|<cell|0>|<cell|<frac|1|2>>>|<row|<cell|<frac|1|2>>|<cell|-<frac|1|5>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|5>>|<cell|-<frac|1|2>>>>>><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  Choose

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|5>>|<row|<cell|2>>>>>
  </equation*>

  For <math|\<lambda\><rsub|2>=-<frac|3|5>-<frac|3|10>\<mathi\>>:

  <\equation*>
    <around*|(|A-\<lambda\><rsub|2>*I|)><wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|<frac|1|10>+<frac|3|10>\<mathi\>>|<cell|0>|<cell|<frac|1|2>>>|<row|<cell|<frac|1|2>>|<cell|<frac|2|5>+<frac|3|10>\<mathi\>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|5>>|<cell|<frac|1|10>+<frac|3|10>\<mathi\>>>>>><wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  Choose

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|-<frac|<frac|1|2>|<frac|1|10>+<frac|3|10>\<mathi\>>>>|<row|<cell|<frac|1|2>-<frac|3|2>\<mathi\>>>|<row|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|10|2>\<cdot\><around*|(|<frac|1|10>-<frac|3|10>\<mathi\>|)>>>|<row|<cell|1-<frac|3|2>\<mathi\>>>|<row|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>+<frac|3|2>\<mathi\>>>|<row|<cell|1-<frac|3|2>\<mathi\>>>|<row|<cell|1>>>>>
  </equation*>

  From <math|<wide|v|\<vect\>><rsub|2>> construct two real solutions:

  <\equation*>
    \<mathe\><rsup|-<frac|3|5>t>*<around*|(|cos
    <around*|(|<frac|3t|10>|)>+\<mathi\>*sin
    <around*|(|<frac|3t|10>|)>|)><bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>+<frac|3|2>\<mathi\>>>|<row|<cell|1-<frac|3|2>\<mathi\>>>|<row|<cell|1>>>>>=\<cdots\>=
  </equation*>

  <\equation*>
    =\<mathe\><rsup|-<frac|3|5>t>*<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>*cos
    <around*|(|<frac|3t|10>|)>-<frac|3|2>*sin
    <around*|(|<frac|3t|10>|)>>>|<row|<cell|cos
    <around*|(|<frac|3t|10>|)>+<frac|3|2>*sin
    <around*|(|<frac|3t|10>|)>>>|<row|<cell|cos
    <around*|(|<frac|3t|10>|)>>>>>>+\<mathi\>*\<mathe\><rsup|-<frac|3|5>t>*<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>*sin
    <around*|(|<frac|3t|10>|)>+<frac|3|2>*cos
    <around*|(|<frac|3t|10>|)>>>|<row|<cell|sin
    <around*|(|<frac|3t|10>|)>-<frac|3|2>*<around*|(|<frac|3t|10>|)>>>|<row|<cell|sin
    <around*|(|<frac|3t|10>|)>>>>>>
  </equation*>

  \;

  General solution (i.e amount of salt in each tank) is:

  \;

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1><bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|5>>|<row|<cell|2>>>>>+c<rsub|2>*\<mathe\><rsup|-<frac|3|5>t>*<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>*cos
    <around*|(|<frac|3t|10>|)>-<frac|3|2>*sin
    <around*|(|<frac|3t|10>|)>>>|<row|<cell|cos
    <around*|(|<frac|3t|10>|)>+<frac|3|2>*sin
    <around*|(|<frac|3t|10>|)>>>|<row|<cell|cos
    <around*|(|<frac|3t|10>|)>>>>>>+c<rsub|3>*\<mathe\><rsup|-<frac|3|5>t>*<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>*sin
    <around*|(|<frac|3t|10>|)>+<frac|3|2>*cos
    <around*|(|<frac|3t|10>|)>>>|<row|<cell|sin
    <around*|(|<frac|3t|10>|)>-<frac|3|2>*<around*|(|<frac|3t|10>|)>>>|<row|<cell|sin
    <around*|(|<frac|3t|10>|)>>>>>>*
  </equation*>

  <section*|Question 4>

  (a) Solve the equation

  <\equation*>
    y<rprime|'>+<frac|2|x>*y=<frac|cos x|x<rsup|2>>
  </equation*>

  with IC <math|y<around*|(|\<mathpi\>|)>=0>. Solve via integration factors
  method. For an ODE of the form

  <\equation*>
    y<rprime|'>+a*y=b
  </equation*>

  the solution is

  <\equation*>
    y=\<mathe\><rsup|-<big|int>a<around*|(|x|)>
    \<mathd\>x>*<around*|[|<big|int>b*\<mathe\><rsup|<big|int>a<around*|(|x|)>
    \<mathd\>x> \<mathd\>x+c|]>
  </equation*>

  In our case <math|a=<frac|2|x>> and <math|b=<frac|cos x|x<rsup|2>>>.

  <\equation*>
    \<mathe\><rsup|-<big|int>a \<mathd\>x>=\<mathe\><rsup|-<big|int><frac|2|x>
    \<mathd\>x>=<frac|1|x<rsup|2>>
  </equation*>

  <\equation*>
    y=<frac|1|x<rsup|2>>*<around*|[|<big|int><frac|cos
    x|x<rsup|2>>\<cdot\>x<rsup|2> \<mathd\>x+c|]>=<frac|1|x<rsup|2>>*<around*|[|sin
    x+c|]>=<frac|sin x|x<rsup|2>>+<frac|c|x<rsup|2>>
  </equation*>

  Find <math|c> using IC:

  <\equation*>
    y<around*|(|\<mathpi\>|)>=0+<frac|c|\<mathpi\><rsup|2>>=0\<rightarrow\>c=0
  </equation*>

  Unique solution is

  <\equation*>
    y=<frac|sin x|x<rsup|2>>
  </equation*>

  (b) Solve the equation

  <\equation*>
    y<rprime|'>=<frac|2x|y<around*|(|x<rsup|2>+1|)>>
  </equation*>

  with IC <math|y<around*|(|0|)>=-2>. Solve via separation of variables:

  <\equation*>
    <frac|1|2>y<rsup|2>=<big|int>y \<mathd\>y=<big|int><frac|2x|x<rsup|2>+1>
    \<mathd\>x=ln <around*|(|x<rsup|2>+1|)>+c
  </equation*>

  <\equation*>
    y=\<pm\><sqrt|2*ln <around*|(|x<rsup|2>+1|)>+2c>
  </equation*>

  Input IC:

  <\equation*>
    y<around*|(|0|)>=\<pm\><sqrt|2\<cdot\>0+2c>=-2\<rightarrow\>c=2
  </equation*>

  Because the initial condition contains a negative <math|y> value, the
  unique solution must be:

  <\equation*>
    y=-<sqrt|2*ln <around*|(|x<rsup|2>+1|)>+4>
  </equation*>

  <section*|Question 5>

  Solve the folowing boundary value problem:

  <\equation*>
    4y<rsub|x\<nocomma\>x>=y<rsub|t\<nocomma\>t>,<application-space|2em>x\<in\><around*|(|0,\<mathpi\>|)>,t\<gtr\>0
  </equation*>

  BCs: <math|y<around*|(|0,t|)>=y<around*|(|\<mathpi\>,t|)>=0> and ICs:
  <math|y<around*|(|x,0|)>=y<rsub|t><around*|(|x,0|)>=<frac|1|10>*sin 2x>,
  <math|x\<in\><around*|(|0,\<mathpi\>|)>>.

  This is the wave equation with <math|a=2> and <math|L=\<mathpi\>>, with
  homogeneous BCs. Solve the BVP as if once the initial position is zero and
  once as if the initial velocity is zero.

  <underline|Zero initial velocity>: ICs:
  <math|<choice|<tformat|<table|<row|<cell|y<rsub|><rsup|<around*|(|1|)>><around*|(|x,0|)>\<equiv\>f<around*|(|x|)>=<frac|1|10>*sin
  2x>>|<row|<cell|y<rsub|t><rsup|<around*|(|1|)>><around*|(|x,0|)>\<equiv\>0>>>>>>

  \ Solution is given by the Fourier series:

  <\equation*>
    y<rsub|><rsup|<around*|(|1|)>><around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>c<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*cos <frac|n*\<mathpi\>*a*t|L>
  </equation*>

  where <math|c<rsub|n>> is given by:

  <\equation*>
    c<rsub|n>=<frac|2|L><big|int><rsub|0><rsup|L>f<around*|(|x|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|c<rsub|n>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|c<rsub|n>>|<cell|=>|<cell|<frac|2|\<mathpi\>>\<cdot\><frac|1|10>*<big|int><rsub|0><rsup|\<mathpi\>>sin
    2x\<cdot\>sin <around*|(|n*x|)> \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<frac|1|10\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>><around*|[|cos
    <around*|[|<around*|(|2-n|)>x|]>-cos <around*|[|<around*|(|2+n|)>x|]>|]>
    \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<frac|1|10\<mathpi\>>*<around*|[|<frac|sin
    <around*|[|<around*|(|2-n|)>x|]>|2-n>-<frac|sin
    <around*|(|2+n|)>x|2+n>|]><rsub|0><rsup|\<mathpi\>>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
  </eqnarray*>

  Here we assumed <math|n\<neq\>2>. If <math|n=2> then

  <\equation*>
    c<rsub|2>=<frac|1|5\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>>*sin<rsup|2>
    2x \<mathd\>x=-<frac|1|10\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>><around*|(|2*cos<rsup|2>
    2x-2|)> \<mathd\>x=-<frac|1|10\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>><around*|(|cos
    4x-1|)> \<mathd\>x
  </equation*>

  <\equation*>
    c<rsub|2>=-<frac|1|10\<mathpi\>>*<around*|[|<frac|sin
    4x|4>-x|]><rsub|0><rsup|\<mathpi\>>=<frac|1|10>
  </equation*>

  Therefore, solution is

  <\equation*>
    y<rsup|<around*|(|1|)>><around*|(|x,t|)>=<frac|1|10>*sin 2x*cos 4t
  </equation*>

  <underline|Zero initial position>: ICs:
  <math|<choice|<tformat|<table|<row|<cell|y<rsub|><rsup|<around*|(|2|)>><around*|(|x,0|)>\<equiv\>0>>|<row|<cell|y<rsub|t><rsup|<around*|(|2|)>><around*|(|x,0|)>\<equiv\>g<around*|(|x|)>=<frac|1|10>*sin
  2x>>>>>>

  Solution is given as a Fourier series:

  <\equation*>
    y<rsup|<around*|(|2|)>><around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>k<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*sin <frac|n*\<mathpi\>*a*t|L>
  </equation*>

  where

  <\equation*>
    k<rsub|n>=<frac|2|n*\<mathpi\>*a>*<big|int><rsub|0><rsup|L>g<around*|(|x|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  We've already calculated the integral <math|<big|int><rsub|0><rsup|\<mathpi\>><frac|1|10>*sin
  2x**sin <frac|n*\<mathpi\>*x|L> \<mathd\>x=<frac|1|10>*\<delta\><around*|(|n-2|)>>.

  <\equation*>
    \<Rightarrow\>k<rsub|2>=<frac|1|2\<mathpi\>>\<cdot\><frac|1|10>=<frac|1|20\<mathpi\>>
  </equation*>

  Therefore,

  <\equation*>
    y<rsup|<around*|(|2|)>><around*|(|x,t|)>=<frac|1|20\<mathpi\>>*sin 2x*sin
    4t
  </equation*>

  General solution is <math|y=y<rsup|<around*|(|1|)>>+y<rsup|<around*|(|2|)>>>:

  <\equation*>
    y<around*|(|x,t|)>=<frac|1|10>*sin 2x*cos 4t+<frac|1|20\<mathpi\>>*sin
    2x*sin 4t
  </equation*>

  <section*|Question 6>

  Given a rod of length <math|L=\<mathpi\>> with thermal diffusivity constant
  <math|\<alpha\><rsup|2>=9>, find the temperature <math|u<around*|(|x,t|)>>
  at point <math|x> and time <math|t >along the rod if the temperature at
  time <math|t=0> is <math|30> for all <math|x\<in\><around*|[|0,\<mathpi\>|]>>,
  and the temperature at the endpoints is held constant so that:
  <math|u<around*|(|0,t|)>=20> and <math|u<around*|(|\<mathpi\>,t|)>=40> for
  all <math|t>.

  Transform the BVP into a homogeneous one by defining

  <\equation*>
    w<around*|(|x,t|)>=u<around*|(|x,t|)>-v<around*|(|x|)>
  </equation*>

  such that <math|<around*|(|0,20|)>,<around*|(|\<mathpi\>,40|)>>

  <\equation*>
    v<around*|(|x|)>=<frac|20|\<mathpi\>>*x+20
  </equation*>

  and

  <\equation*>
    w<around*|(|x,0|)>=u<around*|(|x,0|)>-v<around*|(|x|)>=30-v<around*|(|x|)>=10-<frac|20|\<mathpi\>>*x
  </equation*>

  Solution is given as a Fourier series:

  <\equation*>
    w<around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>c<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*\<mathe\><rsup|-<frac|n<rsup|2>*\<mathpi\><rsup|2>*\<alpha\><rsup|2>*t|L<rsup|2>>>
  </equation*>

  where

  <\equation*>
    c<rsub|n>=<frac|2|L><big|int><rsub|0><rsup|L>w<around*|(|x,0|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|c<rsub|n>>.

  <\equation*>
    c<rsub|n>=<frac|2|\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>><around*|[|10*sin
    <around*|(|n*x|)> \<mathd\>x-<frac|20|\<mathpi\>>*x*sin
    <around*|(|n*x|)>|]> \<mathd\>x
  </equation*>

  Calculate via integration by parts:

  <\equation*>
    <big|int>x*sin <around*|(|n*x|)>=-<frac|cos
    <around*|(|n*x|)>|n>*x+<frac|sin <around*|(|n*x|)>|n<rsup|2>>
  </equation*>

  Therefore:

  <\equation*>
    c<rsub|n>=-<frac|20|n*\<mathpi\>>*<around*|[|cos
    <around*|(|n*x|)>*|]><rsub|0><rsup|\<mathpi\>>-<frac|40|\<mathpi\><rsup|2>>*<around*|[|-<frac|cos
    <around*|(|n*x|)>|n>*x+<frac|sin <around*|(|n*x|)>|n<rsup|2>>|]><rsub|0><rsup|\<mathpi\>>
  </equation*>

  <\equation*>
    c<rsub|n>=<frac|20|n*\<mathpi\>>*<around*|[|1-<around*|(|-1|)><rsup|n>|]>+<frac|40|n*\<mathpi\><rsup|2>>*<around*|[|<around*|(|-1|)><rsup|n>*\<mathpi\>|]>=<frac|20|n*\<mathpi\>>*<around*|[|1+<around*|(|-1|)><rsup|n>|]>
  </equation*>

  So:

  <\equation*>
    u<around*|(|x,t|)>=w<around*|(|x,t|)>+v<around*|(|x|)>
  </equation*>

  <\equation*>
    u<around*|(|x,t|)>=<frac|20|\<mathpi\>>*x+20+<big|sum><rsub|n=1><rsup|\<infty\>><frac|20|n*\<mathpi\>>*<around*|[|1+<around*|(|-1|)><rsup|n>|]>*sin
    <around*|(|n*x|)>*\<mathe\><rsup|-9n<rsup|2>*t>
  </equation*>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|font-family|rm>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|?|?>>
    <associate|auto-3|<tuple|?|?>>
    <associate|auto-4|<tuple|?|?>>
    <associate|auto-5|<tuple|?|?>>
    <associate|auto-6|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Question
      1> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>