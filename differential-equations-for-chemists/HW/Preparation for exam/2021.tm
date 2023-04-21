<TeXmacs|2.1.2>

<style|exam>

<\body>
  <doc-data|<doc-title|2021 Exam Solution>>

  <section*|Question 1>

  (a) Find the general solution to the following DE:

  <\equation*>
    y<rprime|''>+2y<rprime|'>-8y=3*sin x-14*\<mathe\><rsup|2x>
  </equation*>

  Solve associated homogeneous equation. Characteristic equation is:

  <\equation*>
    \<lambda\><rsup|2>+2\<lambda\>-8=<around*|(|\<lambda\>+4|)><around*|(|\<lambda\>-2|)>=0
  </equation*>

  Solution to homogeneous equation is:

  <\equation*>
    y<rsub|h>=c<rsub|1>*\<mathe\><rsup|-4x>+c<rsub|2>*\<mathe\><rsup|2x>
  </equation*>

  Find particular solution for each part of the RHS. For the sine, guess
  <math|y<rsub|p1>=A*cos x+B*sin x>. Input in ODE:

  <\equation*>
    -A*cos x-B*sin x-2A*sin x+2B*cos x-8A*cos x-8B*sin x=3*sin x
  </equation*>

  <\equation*>
    cos x*<around*|(|-A+2B-8A|)>+sin x*<around*|(|-B-2A-8A|)>=3*sin x
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|cos
    x:>|<cell|2B=9A\<rightarrow\>B=<frac|9|2>A>>|<row|<cell|sin
    x:>|<cell|-B-10A=3\<rightarrow\>A=-<frac|6|29>,B=-<frac|27|29>>>>>>
  </equation*>

  So:

  <\equation*>
    y<rsub|p1>=-<frac|6|29>*cos x-<frac|27|29>*sin x
  </equation*>

  For the exponent, guess <math|y<rsub|p2>=A*x*\<mathe\><rsup|2x>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p2><rprime|'>>|<cell|=>|<cell|2A*x*\<mathe\><rsup|2x>+A*\<mathe\><rsup|2x>>>|<row|<cell|y<rsub|p2><rprime|''>>|<cell|=>|<cell|4A*x*\<mathe\><rsup|2x>+4A*\<mathe\><rsup|2x>>>>>
  </eqnarray*>

  Input in the ODE:

  <\equation*>
    \<mathe\><rsup|2x>*<around*|[|4A*x+4A+4A*x+2A-8A*x|]>=-14*\<mathe\><rsup|2x>
  </equation*>

  Divide by <math|\<mathe\><rsup|2x>\<nequiv\>0>

  <\equation*>
    x*<around*|(|4A+4A-8A|)>+<around*|(|4A+2A|)>=-14
  </equation*>

  Therefore:

  <\equation*>
    y<rsub|p2>=-<frac|7|3>x*\<mathe\><rsup|2x>
  </equation*>

  The general solution to the ODE is:

  <\equation*>
    y=y<rsub|h>+y<rsub|p1>+y<rsub|p2>=c<rsub|1>*\<mathe\><rsup|-4x>+c<rsub|2>*\<mathe\><rsup|2x>-<frac|6|29>*cos
    x-<frac|27|29>*sin x-<frac|7|3>x*\<mathe\><rsup|2x>
  </equation*>

  (b) Find all solutions to the differential equation:

  <\equation*>
    y\<cdot\>y<rprime|''>-<around*|(|y<rprime|'>|)><rsup|3>=0
  </equation*>

  where <math|y> is assumed to be a function of <math|t>.

  Set <math|y<rprime|'>=v>, <math|y<rprime|''>=<frac|\<mathd\>v|\<mathd\>t>=<tfrac|\<mathd\>v|\<mathd\>y>\<cdot\><frac|\<mathd\>y|\<mathd\>t>=<frac|\<mathd\>v|\<mathd\>y>\<cdot\>v>.\ 

  <\equation*>
    y\<cdot\>v\<cdot\><frac|\<mathd\>v|\<mathd\>y>=v<rsup|3>
  </equation*>

  Note that <math|v\<equiv\>0>, i.e. <math|y=c\<in\>\<bbb-R\>>, solves the
  DE. Divide by <math|v> on some interval where <math|v\<neq\>0> to obtain a
  separable DE:

  <\equation*>
    <big|int><frac|\<mathd\>v|v<rsup|2>>=<big|int><frac|\<mathd\>y|y>
  </equation*>

  <\equation*>
    -<frac|1|v>=ln <around*|\||y|\|>+c<rsub|1>
  </equation*>

  <\equation*>
    y<rprime|'>=-<frac|1|ln <around*|\||y|\|>+c<rsub|1>>,<application-space|1em>c<rsub|1>\<neq\>-ln
    <around*|\||y|\|>
  </equation*>

  If <math|c<rsub|1>=ln <around*|\||y|\|>> then there is no solution. This is
  another separable equation:

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>t>=-<frac|1|ln <around*|\||y|\|>+c<rsub|1>>
  </equation*>

  <\equation*>
    <big|int><around*|(|ln <around*|\||y|\|>+c<rsub|1>|)>
    \<mathd\>t=-<big|int>\<mathd\>t
  </equation*>

  <\equation*>
    y\<cdot\><around*|(|ln <around*|\||y|\|>+c<rsub|1>-1|)>=-t+c<rsub|2>
  </equation*>

  The solution is given in implicit form.

  <section*|Question 2>

  In a mass-and-spring system, assume that <math|m<rsub|1>=1>,
  <math|m<rsub|2>=2>, <math|k<rsub|0>=2>, <math|k<rsub|1>=k<rsub|2>=4>.

  Let <math|x<rsub|1>> be the horizontal displacement of the first mass and
  let <math|x<rsub|2>> be the horizontal displacement of the second mass.

  <\padded-center>
    <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|0.5>|gr-grid-old|<tuple|cartesian|<point|0|0>|0.5>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|2|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|0.5>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|0.5>|gr-grid-aspect|<tuple|<tuple|axes|#e0e0ff>|<tuple|1|#e0e0ff>|<tuple|2|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#e0e0ff>|<tuple|1|#e0e0ff>|<tuple|2|#e0e0ff>>|gr-auto-crop|true|<graphics||<line|<point|-5|1.5>|<point|-5.0|-0.5>>|<line|<point|-5|0.5>|<point|-4.5|0.5>|<point|-4.25|0.75>|<point|-4.0|0.25>|<point|-3.75|0.75>|<point|-3.5|0.25>|<point|-3.25|0.75>|<point|-3.0|0.5>|<point|-2.5|0.5>|<point|-2.5|1.0>|<point|-1.75|1.0>|<point|-1.75|0.0>|<point|-2.5|0.0>|<point|-2.5|0.5>>|<line|<point|-1.75|0.5>|<point|-1.25|0.5>|<point|-1.0|0.75>|<point|-0.75|0.25>|<point|-0.5|0.75>|<point|-0.25|0.25>|<point|0.0|0.5>|<point|0.75|0.5>|<point|0.75|1.0>|<point|1.5|1.0>|<point|1.5|0.0>|<point|0.75|0.0>|<point|0.75|0.5>>|<line|<point|1.5|0.5>|<point|2.0|0.5>|<point|2.25|0.75>|<point|2.5|0.324878819141235>|<point|2.75|0.75>|<point|3.0|0.5>|<point|4.0|0.5>|<point|4.0|1.5>|<point|4.0|-0.5>>|<math-at|m<rsub|1>|<point|-2.25|0.5>>|<math-at|m<rsub|2>|<point|1|0.5>>|<math-at|k<rsub|2>|<point|2.39543|1.25>>|<math-at|k<rsub|0>|<point|-0.617559|1.2694>>|<math-at|k<rsub|1>|<point|-3.75|1.25>>>>
  </padded-center>

  (a) Construct a system of DEs whose solution gives <math|x<rsub|1>> and
  <math|x<rsub|2>>.

  Equation of motion for each mass:

  <\eqnarray*>
    <tformat|<table|<row|<cell|m<rsub|1>*x<rsub|1><rprime|''>>|<cell|=>|<cell|k<rsub|0>*<around*|(|x<rsub|2>-x<rsub|1>|)>-k<rsub|1>*x<rsub|1>>>|<row|<cell|m<rsub|2>*x<rsub|2><rprime|''>>|<cell|=>|<cell|k<rsub|0>*<around*|(|x<rsub|2>-x<rsub|1>|)>-k<rsub|2>*x<rsub|2>>>>>
  </eqnarray*>

  Insert coefficients:

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rsub|1><rprime|''>>|<cell|=>|<cell|x<rsub|1>*\<cdot\><around*|(|-2-4|)>+x<rsub|2>\<cdot\>2>>|<row|<cell|2*x<rsub|2><rprime|''>>|<cell|=>|<cell|x<rsub|1>\<cdot\><around*|(|-2|)>+x<rsub|2>\<cdot\><around*|(|2-4|)>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rsub|1><rprime|''>>|<cell|=>|<cell|-6x<rsub|1>+2x<rsub|2>>>|<row|<cell|x<rsub|2><rprime|''>>|<cell|=>|<cell|-x<rsub|1>-x<rsub|2>>>>>
  </eqnarray*>

  In matrix form:

  <\equation*>
    <wide|x|\<vect\>><rprime|''>=A*<wide|x|\<vect\>>
  </equation*>

  where:

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|-6>|<cell|2>>|<row|<cell|-1>|<cell|-1>>>>>,<wide|x|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>>>>
  </equation*>

  (b) Derive from it a differential equation of order 4, and find the general
  solution.

  From the second equation:

  <\equation*>
    x<rsub|1>=-x<rsub|2><rprime|''>-x<rsub|2>
  </equation*>

  Input this expression in the first equation:

  <\equation*>
    -x<rsub|2><rsup|<around*|(|4|)>>-x<rsub|2><rprime|''>=6x<rsub|2><rprime|''>+6x<rsub|2>+2x<rsub|2>
  </equation*>

  <\equation*>
    x<rsub|2><rsup|<around*|(|4|)>>+7x<rsub|2><rprime|''>+8x<rsub|2>=0
  </equation*>

  Solve the system of equations using the matrix form. Find the eigenvalues
  and eigenvectors of <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=<det|<tformat|<table|<row|<cell|-6-\<lambda\>>|<cell|2>>|<row|<cell|-1>|<cell|-1-\<lambda\>>>>>>=<around*|(|\<lambda\>+6|)><around*|(|\<lambda\>+1|)>+2=\<lambda\><rsup|2>+7\<lambda\>+8
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|-7\<pm\><sqrt|17>|2>=-<frac|7|2>\<pm\><frac|<sqrt|17>|2>
  </equation*>

  Find eigenvectors. For <math|\<lambda\><rsub|1>=-<frac|7|2>+<frac|<sqrt|17>|2>>,
  find <math|<wide|v|\<vect\>><rsub|1>> such that

  <\equation*>
    <around*|(|A-\<lambda\><rsub|1>I|)><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    A-\<lambda\><rsub|1>I=<bmatrix|<tformat|<table|<row|<cell|-<frac|5|2>-<frac|<sqrt|17>|2>>|<cell|2>>|<row|<cell|-1>|<cell|-<frac|9|2>-<frac|<sqrt|17>|2>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|-<frac|9|2>-<frac|<sqrt|17>|2>>>|<row|<cell|1>>>>>
  </equation*>

  For <math|\<lambda\><rsub|2>=-<frac|7|2>-<frac|<sqrt|17>|2>>, find
  <math|<wide|v|\<vect\>><rsub|2>> such that

  <\equation*>
    <around*|(|A-\<lambda\><rsub|2>I|)><wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    A-\<lambda\><rsub|2>I=<bmatrix|<tformat|<table|<row|<cell|-<frac|5|2>+<frac|<sqrt|17>|2>>|<cell|2>>|<row|<cell|-1>|<cell|-<frac|9|2>+<frac|<sqrt|17>|2>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|-<frac|9|2>+<frac|<sqrt|17>|2>>>|<row|<cell|1>>>>>
  </equation*>

  General solution to the DE is therefore:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|<around*|(|-<frac|7|2>+<frac|<sqrt|17>|2>|)>t>\<cdot\><bmatrix|<tformat|<table|<row|<cell|-<frac|9|2>-<frac|<sqrt|17>|2>>>|<row|<cell|1>>>>>+c<rsub|2>*\<mathe\><rsup|<around*|(|-<frac|7|2>+<frac|<sqrt|17>|2>|)>t>\<cdot\><bmatrix|<tformat|<table|<row|<cell|-<frac|9|2>+<frac|<sqrt|17>|2>>>|<row|<cell|1>>>>>
  </equation*>

  where <math|c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>>, <math|t\<gtr\>0>.

  <section*|Question 3>

  The diagram shows a 3-tank system, with salt-water in each tank. Fresh
  water is flowing into the top tank at the rate of 10 L/min, and slat-water
  is flowing out of tank 1 into tank 2, and also out of tanks 2 and 3, at the
  rate of 10 L/min.

  At time <math|t=0>, tank 1 contains 20L of water and 5kg of salt, tank 2
  contains 40L of water and 3kg of salt, and tank 3 contains 50L of water and
  no salt.

  Find the amount of salt in each tank at time <math|t>.

  Because each tanks receives 10L/min and also drops 10L/min, the volume of
  each tank remains constant. Write DEs representing the change in salt
  amount in each tank.

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rsub|1><rprime|'>>|<cell|=>|<cell|-r\<cdot\><frac|x<rsub|1>|V<rsub|1>>>>|<row|<cell|x<rsub|2><rprime|'>>|<cell|=>|<cell|r\<cdot\><frac|x<rsub|1>|V<rsub|1>>-r\<cdot\><frac|x<rsub|2>|V<rsub|2>>>>|<row|<cell|x<rsub|3><rprime|'>>|<cell|=>|<cell|r\<cdot\><frac|x<rsub|2>|V<rsub|2>>-r\<cdot\><frac|x<rsub|3>|V<rsub|3>>>>>>
  </eqnarray*>

  In matrix form (after inputting coefficients):

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>,<application-space|1em><wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|5>>|<row|<cell|3>>|<row|<cell|0>>>>>
  </equation*>

  where

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|2>>|<cell|-<frac|1|4>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|4>>|<cell|-<frac|1|5>>>>>>
  </equation*>

  Find eigenvalues and eigenvectors of <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=<det|<tformat|<table|<row|<cell|-<frac|1|2>-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|2>>|<cell|-<frac|1|4>-\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|4>>|<cell|-<frac|1|5>-\<lambda\>>>>>>=-<around*|(|\<lambda\>+<frac|1|2>|)>*<around*|[|-<around*|(|\<lambda\>+<frac|1|4>|)>\<cdot\><around*|(|-<around*|(|\<lambda\>+<frac|1|5>|)>|)>-0|]>=0
  </equation*>

  Roots are:

  <\equation*>
    \<lambda\><rsub|1>=-<frac|1|2>,\<lambda\><rsub|2>=-<frac|1|4>,\<lambda\><rsub|3>=-<frac|1|5>
  </equation*>

  Find corresponding eigenvectors. For <math|\<lambda\><rsub|1>=-<frac|1|2>>:

  <\equation*>
    A-\<lambda\><rsub|1>I=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|2>>|<cell|<frac|1|4>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|4>>|<cell|<frac|3|10>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|-6>>|<row|<cell|5>>>>>
  </equation*>

  s.t. <math|<around*|(|A-\<lambda\><rsub|1>I|)><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>>.

  For <math|\<lambda\><rsub|2>=-<frac|1|4>>:

  <\equation*>
    A-\<lambda\><rsub|2>I=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|4>>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|2>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|4>>|<cell|<frac|1|20>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|5>>>>>
  </equation*>

  s.t. <math|<around*|(|A-\<lambda\><rsub|2>I|)><wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>>.

  For <math|\<lambda\><rsub|3>=-<frac|1|5>>:

  <\equation*>
    A-\<lambda\><rsub|3>I=<bmatrix|<tformat|<table|<row|<cell|-<frac|3|10>>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|2>>|<cell|-<frac|1|20>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|4>>|<cell|0>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>
  </equation*>

  s.t. <math|<around*|(|A-\<lambda\><rsub|3>I|)><wide|v|\<vect\>><rsub|3>=<wide|0|\<vect\>>>.

  General solution to the system of DEs is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|-<frac|1|2>t>*<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|-6>>|<row|<cell|5>>>>>+c<rsub|2>*\<mathe\><rsup|-<frac|1|4>t>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|5>>>>>+c<rsub|3>\<cdot\>\<mathe\><rsup|-<frac|1|5>t>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>
  </equation*>

  Find <math|c<rsub|1>,c<rsub|2>,c<rsub|3>> that satisfy the ICs.

  <\equation*>
    <wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|5>>|<row|<cell|3>>|<row|<cell|0>>>>>=<bmatrix|<tformat|<table|<row|<cell|3c<rsub|1>>>|<row|<cell|-6c<rsub|1>-c<rsub|2>>>|<row|<cell|5c<rsub|1>+5c<rsub|2>+c<rsub|3>>>>>>\<rightarrow\>c<rsub|1>=<frac|5|3>,c<rsub|2>=-13,c<rsub|3>=<frac|170|3>
  </equation*>

  The amount of salt in each tank at time <math|t> is given by:

  <\equation*>
    <wide|x|\<vect\>>=<frac|5|3>*\<mathe\><rsup|-<frac|1|2>t>*<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|-6>>|<row|<cell|5>>>>>-13*\<mathe\><rsup|-<frac|1|4>t>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|5>>>>>+<frac|170|3>\<cdot\>\<mathe\><rsup|-<frac|1|5>t>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>
  </equation*>

  <section*|Question 4>

  A pandemic is spreading through the population and is passed from those who
  have been infected with the virus and those who have not. We assume here
  that anyone who has been infected continues to be infectious indefinitely.
  Assume the proportion of those who have not had the disease is <math|x>,
  and those who are infected as <math|y>. So <math|x+y=1>. The virus spreads
  by contacs and the rate of spread <math|\<mathd\>y/\<mathd\>t> is
  proportionate to <math|x*y>.

  (a) Construct a DE in <math|y> that models this situation.

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>t>=r*x*y=r*<around*|(|1-y|)>y,<application-space|1em>r\<in\>\<bbb-R\>
  </equation*>

  (b) Find the equilibrium points for the ODE you found in part (a) and
  determine for each if it is stable or unstable.

  There are two equilibrium points, for which
  <math|<frac|\<mathd\>y|\<mathd\>t>=0>: <math|y=1> and <math|y=0>. Using
  logic, both equilibrium points are stable, because:

  <\enumerate>
    <item>If <math|y=0>, i.e. the population is fully infected, then there is
    no one to infect anymore. Since no one can become uninfected, the
    infected population becomes stable.

    <item>If <math|y=1>. i.e. no one is infected, then the virus can't spread
    to anyone.
  </enumerate>

  (c) Solve the DE for <math|y<around*|(|0|)>=y<rsub|0>\<gtr\>0>. Verify that
  as <math|t\<rightarrow\>\<infty\>>, <math|y> tends to the stable
  equilibrium that you found in part (b).

  This is a separable equation:

  <\equation*>
    <big|int><frac|\<mathd\>y|y<around*|(|1-y|)>>=r<big|int>\<mathd\>t
  </equation*>

  Simplify:

  <\equation*>
    <frac|1|y<around*|(|1-y|)>>=<frac|A|y>+<frac|B|1-y>
  </equation*>

  <\equation*>
    A-A*y+B*y=1
  </equation*>

  <\equation*>
    A=B=1
  </equation*>

  Therefore,

  <\equation*>
    <big|int><around*|(|<frac|1|y>+<frac|1|1-y>|)> \<mathd\>y=r*t+c
  </equation*>

  <\equation*>
    ln <around*|\||y|\|>-ln <around*|\||1-y|\|>=r*t+c
  </equation*>

  <\equation*>
    ln <around*|\||<frac|y|1-y>|\|>=r*t+c
  </equation*>

  <\equation*>
    <frac|y|1-y>=c<rsup|\<star\>>*\<mathe\><rsup|r*t>
  </equation*>

  <\equation*>
    y=c<rsup|\<star\>>*\<mathe\><rsup|r*t>-y\<cdot\>c<rsup|\<star\>>*\<mathe\><rsup|r*t>
  </equation*>

  <\equation*>
    y<around*|(|1+c<rsup|\<star\>>*\<mathe\><rsup|r*t>|)>=c<rsup|\<star\>>*\<mathe\><rsup|r*t>
  </equation*>

  <\equation*>
    y=<frac|c<rsup|\<star\>>*\<mathe\><rsup|r*t>|1+c<rsup|\<star\>>*\<mathe\><rsup|r*t>>=<frac|c<rsup|\<star\>>|*\<mathe\><rsup|-r*t>+c<rsup|\<star\>>>
  </equation*>

  Given <math|y<around*|(|0|)>=y<rsub|0>>,

  <\equation*>
    <frac|y<rsub|0>|1-y<rsub|0>>=c<rsup|\<star\>>
  </equation*>

  Therefore,

  <\equation*>
    y=<frac|<frac|y<rsub|0>|1-y<rsub|0>>|\<mathe\><rsup|-r*t>+<frac|y<rsub|0>|1-y<rsub|0>>>=<frac|y<rsub|0>|<around*|(|1-y<rsub|0>|)>\<mathe\><rsup|-r*t>+y<rsub|0>>
  </equation*>

  Indeed, as <math|t\<rightarrow\>\<infty\>> <math|y\<rightarrow\>1>.

  <section*|Question 5>

  For the following BVP:

  <\equation*>
    y<rprime|''>+\<lambda\>*y=0,<application-space|1em>y<around*|(|\<mathpi\>|)>=y<around*|(|-\<mathpi\>|)>,<application-space|1em>y<rprime|'><around*|(|\<mathpi\>|)>=y<rprime|'><around*|(|-\<mathpi\>|)>
  </equation*>

  (a) Show that the BVP has no negative eigenvalues. Characeteristic equation
  is:

  <\equation*>
    u<rsup|2>+\<lambda\>=0
  </equation*>

  If <math|\<lambda\>> were negative then if
  <math|\<mu\>\<equiv\>-\<lambda\>> then\ 

  <\equation*>
    u=\<pm\><sqrt|\<mu\>>,<application-space|1em><sqrt|\<mu\>>\<in\>\<bbb-R\>
  </equation*>

  and the solution is:

  <\equation*>
    y=c<rsub|1>*\<mathe\><rsup|-<sqrt|\<mu\>>t>+c<rsub|2>*\<mathe\><rsup|<sqrt|\<mu\>>t>
  </equation*>

  Check if boundary values are satisfied.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|\<mathpi\>|)>>|<cell|=>|<cell|c<rsub|1>*\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>+c<rsub|2>*\<mathe\><rsup|\<mathpi\><sqrt|\<mu\>>>>>|<row|<cell|y<around*|(|-\<mathpi\>|)>>|<cell|=>|<cell|c<rsub|1>*\<mathe\><rsup|\<mathpi\><sqrt|\<mu\>>>+c<rsub|2>*\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>>>>>
  </eqnarray*>

  i.e.\ 

  <\equation*>
    c<rsub|1>*<around*|(|\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>-\<mathe\><rsup|\<mathpi\>*<sqrt|\<mu\>>>|)>=c<rsub|2>*<around*|(|\<mathe\><rsup|\<mathpi\><sqrt|\<mu\>>>-\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>|)>
  </equation*>

  i.e. <math|c<rsub|1>=-c<rsub|2>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>>|<cell|=>|<cell|-<sqrt|\<mu\>>*c<rsub|1>\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>+<sqrt|\<mu\>>*c<rsub|2>*\<mathe\><rsup|\<mathpi\><sqrt|\<mu\>>>>>|<row|<cell|y<rprime|'><around*|(|-\<mathpi\>|)>>|<cell|=>|<cell|-<sqrt|\<mu\>>*c<rsub|1>\<mathe\><rsup|\<mathpi\><sqrt|\<mu\>>>+<sqrt|\<mu\>>*c<rsub|2>*\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>>>>>
  </eqnarray*>

  i.e.

  <\equation*>
    -c<rsub|1>*<around*|(|<sqrt|\<mu\>>*c<rsub|1>\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>-<sqrt|\<mu\>>*c<rsub|1>\<mathe\><rsup|\<mathpi\><sqrt|\<mu\>>>|)>=c<rsub|2>*<around*|(|<sqrt|\<mu\>>*c<rsub|2>*\<mathe\><rsup|\<mathpi\><sqrt|\<mu\>>>-<sqrt|\<mu\>>*c<rsub|2>*\<mathe\><rsup|-\<mathpi\><sqrt|\<mu\>>>|)>
  </equation*>

  i.e. <math|c<rsub|1>=c<rsub|2>>. These two conditions hold iff
  <math|c<rsub|1>=c<rsub|2>=0>, which means there is no eigenvalue in this
  case.

  (b) Show that <math|\<lambda\>=0> is an eigenvalue and find an
  eigenfunction for this eigenvalue.

  If <math|\<lambda\>=0> then the DE becomes

  <\equation*>
    y<rprime|''>=0
  </equation*>

  The solution is then:

  <\equation*>
    y=c<rsub|1>*x+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  Check if boundary values are satisfied.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|\<mathpi\>|)>>|<cell|=>|<cell|\<mathpi\>*c<rsub|1>+c<rsub|2>>>|<row|<cell|y<around*|(|-\<mathpi\>|)>>|<cell|=>|<cell|-\<mathpi\>*c<rsub|1>+c<rsub|2>>>>>
  </eqnarray*>

  This holds if <math|c<rsub|1>=0>,

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>>|<cell|=>|<cell|c<rsub|1>>>|<row|<cell|y<rprime|'><around*|(|-\<mathpi\>|)>>|<cell|=>|<cell|c<rsub|1>>>>>
  </eqnarray*>

  This two conditions leave <math|c<rsub|2>> to be arbitrary, such that
  <math|y=c<rsub|2>>. The eigenfunction in this case is
  <math|f<around*|(|t|)>=1>.

  (c) Find all the real positive eigenvalues for the BVP and show that each
  has two linearly independent eigenfunctions.

  Assuming <math|\<lambda\>\<gtr\>0>, the solution to the ODE is:

  <\equation*>
    y=c<rsub|1>*cos <around*|(|<sqrt|\<lambda\>>t|)>+c<rsub|2>*sin
    <around*|(|<sqrt|\<lambda\>>t|)>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  Check if boundary values are satisfied.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|\<mathpi\>|)>>|<cell|=>|<cell|c<rsub|1>*cos
    <around*|(|<sqrt|\<lambda\>>\<mathpi\>|)>+c<rsub|2>*sin
    <around*|(|<sqrt|\<lambda\>>*\<mathpi\>|)>>>|<row|<cell|y<around*|(|-\<mathpi\>|)>>|<cell|=>|<cell|c<rsub|1>*cos
    <around*|(|-<sqrt|\<lambda\>>*\<mathpi\>|)>+c<rsub|2>*sin
    <around*|(|-<sqrt|\<lambda\>>*\<mathpi\>|)>=c<rsub|1>*cos
    <around*|(|<sqrt|\<lambda\>>\<mathpi\>|)>-c<rsub|2>*sin
    <around*|(|<sqrt|\<lambda\>>*\<mathpi\>|)>>>>>
  </eqnarray*>

  This implies that <math|c<rsub|2>=0> <strong|or>\ 

  <\equation*>
    sin <around*|(|<sqrt|\<lambda\>>*\<mathpi\>|)>=0
  </equation*>

  which means that\ 

  <\equation*>
    \<lambda\><rsub|n>=n<rsup|2>,<application-space|1em>n\<in\>\<bbb-N\>
  </equation*>

  is an eigenvalue.

  Regarding the second boundray value:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>>|<cell|=>|<cell|-<sqrt|\<lambda\>>*c<rsub|1>*sin
    <around*|(|<sqrt|\<lambda\>*\<mathpi\>>|)>+<sqrt|\<lambda\>>*c<rsub|2>*cos
    <around*|(|<sqrt|\<lambda\>>\<mathpi\>|)>>>|<row|<cell|y<rprime|'><around*|(|-\<mathpi\>|)>>|<cell|=>|<cell|<sqrt|\<lambda\>>*c<rsub|1>*sin
    <around*|(|<sqrt|\<lambda\>*\<mathpi\>>|)>+<sqrt|\<lambda\>>*c<rsub|2>*cos
    <around*|(|<sqrt|\<lambda\>>\<mathpi\>|)>>>>>
  </eqnarray*>

  This implies that <math|c<rsub|1>=0> <strong|or>

  <\equation*>
    <sqrt|\<lambda\>>*sin <around*|(|<sqrt|\<lambda\>*\<mathpi\>>|)>=0
  </equation*>

  which yields the same eigenvalue.

  In conclusion, two linearly independent eigenfunctions satisfy the BVP:
  <math|f<around*|(|t|)>=cos <around*|(|n*t|)>> and
  <rigid|<math|g<around*|(|t|)>=sin <around*|(|t|)>>>.

  <section*|Question 6>

  An elastic string of length <math|L=30> cm is held down taut at both ends
  in a frame, and vibrates according to the wave equation:

  <\equation*>
    u<rsub|x\<nocomma\>x><around*|(|x,t|)>=u<rsub|t\<nocomma\>t><around*|(|x,t|)>
  </equation*>

  where <math|a=1> cm/s. Assume that the string is plucked in the middle of
  the string, to a height of 5 cm and then released. Find a series
  representation of the function <math|u<around*|(|x,t|)>> that describes the
  vibration of the string.

  Well, I wanted to use D'Alembert solution but you insist\<ldots\>

  <\padded-center>
    <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|2|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-grid-aspect|<tuple|<tuple|axes|#e0e0ff>|<tuple|1|#e0e0ff>|<tuple|2|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#e0e0ff>|<tuple|1|#e0e0ff>|<tuple|2|#e0e0ff>>|gr-arrow-end|\<gtr\>|gr-arrow-begin|\<less\>|gr-auto-crop|true|gr-dash-style|10|<graphics||<line|<point|-4.5|2>|<point|-4.5|0.0>>|<line|<point|2|2>|<point|2.0|0.0>>|<with|arrow-end|\<gtr\>|arrow-begin|\<less\>|<line|<point|-5.5|2>|<point|-5.5|1.0>>>|<math-at|5
    cm|<point|-6.21439|1.5>>|<with|arrow-end|\<gtr\>|arrow-begin|\<less\>|<line|<point|-4.5|-0.5>|<point|2.0|-0.5>>>|<math-at|30
    cm|<point|-1.5|-1>>|<line|<point|-4.5|1>|<point|-1.5|2.0>|<point|2.0|1.0>>|<point|-1.5|2.0>|<with|arrow-end|\<gtr\>|dash-style|10|arrow-begin|\<less\>|<line|<point|-4.5|0.5>|<point|-1.5|0.5>>>|<math-at|15
    cm|<point|-3|0.833938>>>>
  </padded-center>

  This is a zero velocity case of the homogeneous BCs wave equation with IC:

  <\equation*>
    u<around*|(|x,0|)>\<equiv\>f<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<frac|x|3>>|<cell|x\<in\><around*|(|0,15|)>>>|<row|<cell|10-<frac|x|3>>|<cell|x\<in\><around*|(|15,30|)>>>>>>
  </equation*>

  Solution in this case is:

  <\equation*>
    u<around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>c<rsub|n>*sin
    <frac|n*\<mathpi\>*x|L>*cos <frac|n*\<mathpi\>*a*t|L>
  </equation*>

  where

  <\equation*>
    c<rsub|n>=<frac|2|L><big|int><rsub|0><rsup|L>f<around*|(|x|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|c<rsub|n>>.

  <\equation*>
    c<rsub|n>=<frac|1|15><big|int><rsub|0><rsup|15><frac|x|3>*sin
    <frac|n*\<mathpi\>*x|30> \<mathd\>x+<frac|1|15><big|int><rsub|15><rsup|30><around*|(|10-<frac|x|3>|)>*sin
    <frac|n*\<mathpi\>*x|30> \<mathd\>x
  </equation*>

  <math|c<rsub|n>> is:

  <\equation*>
    <frac|1|45>\<cdot\><frac|30|n*\<mathpi\>>*<around*|[|-x*cos
    <frac|n*\<mathpi\>*x|30>+<frac|30|n*\<mathpi\>>*sin
    <frac|n*\<mathpi\>*x|30>|]><rsub|0><rsup|15>-<frac|2|3>\<cdot\><frac|30|n*\<mathpi\>>*<around*|[|cos
    <frac|n*\<mathpi\>*x|30>|]><rsub|15><rsup|30>-<frac|1|45>\<cdot\><frac|30|n*\<mathpi\>>*<around*|[|-x*cos
    <frac|n*\<mathpi\>*x|30>+<frac|30|n*\<mathpi\>>*sin
    <frac|n*\<mathpi\>*x|30>|]><rsub|15><rsup|30>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|c<rsub|n>>|<cell|=>|<cell|<frac|2|3n\<mathpi\>>*<around*|[|-15*cos
    <around*|(|<frac|n\<mathpi\>|2>|)>+<frac|30|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>|]>-<frac|20|n\<mathpi\>>*<around*|[|cos
    <around*|(|n\<mathpi\>|)>-cos <around*|(|<frac|n\<mathpi\>|2>|)>|]>>>|<row|<cell|>|<cell|>|<cell|-<frac|2|3n\<mathpi\>>*<around*|[|-30*cos
    <around*|(|n\<mathpi\>|)>+15*cos <around*|(|<frac|n\<mathpi\>|2>|)>-<frac|30|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>|]>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|c<rsub|n>>|<cell|=>|<cell|<frac|2|3n\<mathpi\>>*<around*|[|-30*cos
    <around*|(|<frac|n\<mathpi\>|2>|)>+<frac|60|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>+30*cos
    <around*|(|n\<mathpi\>|)>-30*cos <around*|(|n\<mathpi\>|)>+30*cos
    <around*|(|<frac|n\<mathpi\>|2>|)>|]>>>>>
  </eqnarray*>

  <\equation*>
    c<rsub|n>=<frac|2|3n\<mathpi\>>\<cdot\><frac|60|n\<mathpi\>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>=<frac|40|n<rsup|2>\<mathpi\><rsup|2>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>
  </equation*>

  Therefore,

  <\equation*>
    u<around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|40|n<rsup|2>\<mathpi\><rsup|2>>*sin
    <around*|(|<frac|n\<mathpi\>|2>|)>*sin <frac|n*\<mathpi\>*x|30>*cos
    <frac|n*\<mathpi\>*t|30>
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-2|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-3|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-4|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-5|<tuple|2|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-6|<tuple|2|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
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