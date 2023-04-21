<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|2006 Exam Solution>>

  <section*|Question 1>

  In a 2-degree of freedom mass system, mass of <math|m<rsub|1>=<SI|2|kg>>
  was suspended from a spring with spring constant <math|k<rsub|1>> and a
  second mass of <math|m<rsub|2>=<SI|1|kg>> was attached by a spring with
  spring constant <math|k<rsub|2>=2> to the first one. Let <math|u<rsub|1>>
  be the displacement of the first mass and let <math|u<rsub|2>> be the
  verticle displacement of the second mass.

  (a) Construct a system of differential equations whose solution gives
  <math|u<rsub|1>,u<rsub|2>>.

  Write force-balance equations for each mass (after removing
  <math|m*<rsub|i>g=k<rsub|i>*\<ell\><rsub|i>> from both equations):

  <\equation*>
    m<rsub|2>*u<rsub|2><rprime|''>=-k<rsub|2>*<around*|(|u<rsub|2>-u<rsub|1>|)>
  </equation*>

  <\equation*>
    m<rsub|1>*u<rprime|''><rsub|1>=-k<rsub|1>*u<rsub|1>+k<rsub|2>*<around*|(|u<rsub|2>-u<rsub|1>|)>
  </equation*>

  Normalize:

  <\eqnarray*>
    <tformat|<table|<row|<cell|u<rsub|1><rprime|''>>|<cell|=>|<cell|-<frac|<around*|(|k<rsub|1>+k<rsub|2>|)>|m<rsub|1>>*u<rsub|1>+<frac|k<rsub|2>|m<rsub|1>>*u<rsub|2>>>|<row|<cell|u<rsub|2><rprime|''>>|<cell|=>|<cell|<frac|k<rsub|2>|m<rsub|2>>*u<rsub|1>-<frac|k<rsub|2>|m<rsub|2>>*u<rsub|2>>>>>
  </eqnarray*>

  (b) Derive from it a differential equation of ordr 4, and solve for some
  initial conditions (not solved here).

  Write <math|u<rsub|1>> as <math|f<around*|(|u<rsub|2>,u<rsub|2><rprime|''>|)>>:

  <\equation*>
    u<rsub|1>=<around*|(|u<rsub|2><rprime|''>+<frac|k<rsub|2>|m<rsub|2>>*u<rsub|2>|)>\<cdot\><frac|m<rsub|2>|k<rsub|2>>
  </equation*>

  and insert in the first equation:

  <\equation*>
    <frac|m<rsub|2>|k<rsub|2>>*u<rsub|2><rsup|<around*|(|4|)>>+u<rsub|2><rprime|''>=-<frac|k<rsub|1>+k<rsub|2>|m<rsub|1>>\<cdot\><around*|(|u<rsub|2><rprime|''>+<frac|k<rsub|2>|m<rsub|2>>*u<rsub|2>|)>\<cdot\><frac|m<rsub|2>|k<rsub|2>>+<frac|k<rsub|2>|m<rsub|1>>*u<rsub|2>
  </equation*>

  This can be transformed into a nice 4th order ODE with constant
  coefficients, which is solved by finding the roots of the characteristic
  polynomial.

  <section*|Question 2>

  Find the general solution to:

  <\equation*>
    y<rsup|<around*|(|3|)>>-y<rprime|''>+y<rprime|'>-y=2*cos
    x-\<mathe\><rsup|3x>
  </equation*>

  First solve the associated homogeneous equation. Characteristic equation
  is:

  <\equation*>
    \<lambda\><rsup|3>-\<lambda\><rsup|2>+\<lambda\>-1=0
  </equation*>

  Note that <math|\<lambda\>=1> solves the equation. Factor out
  <math|<around*|(|\<lambda\>-1|)>>:

  <\equation*>
    <around*|(|\<lambda\>-1|)><around*|(|\<lambda\><rsup|2>+1|)>=<around*|(|\<lambda\>-1|)>*<around*|(|\<lambda\>+\<mathi\>|)>*<around*|(|\<lambda\>-\<mathi\>|)>=0
  </equation*>

  \ Roots are <math|\<lambda\><rsub|1>=1,\<lambda\><rsub|2,3>=\<pm\>\<mathi\>>.
  Solution to homogeneous equation is:

  <\equation*>
    y<rsub|h>=c<rsub|1>+c<rsub|2>*cos x+c<rsub|3>*sin
    x,<application-space|2em>c<rsub|1,2,3>\<in\>\<bbb-R\>
  </equation*>

  Find two particular solutions, each corresponding to a different element in
  the RHS. For <math|2*cos x>, guess a solution of form:
  <math|y<rsub|p1>\<equiv\>A*cos x+B*sin x>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p1><rprime|'>>|<cell|=>|<cell|-A*sin
    x+B*cos x>>|<row|<cell|y<rsub|p1><rprime|''>>|<cell|=>|<cell|-A*cos
    x-B*sin x>>|<row|<cell|y<rsub|p1><rsup|<around*|(|3|)>>>|<cell|=>|<cell|A*sin
    x-B*cos x>>>>
  </eqnarray*>

  Substitute <math|y<rsub|p1>> in the ODE:

  <\equation*>
    A*sin x-B*cos x+<around*|(|A*cos x+B*sin x|)>-A*sin x+B*cos x-A*cos
    x-B*sin x=2*cos x
  </equation*>

  <\equation*>
    sin x*<around*|(|A+B-A-B|)>+cos x*<around*|(|-B+A+B-A|)>\<equiv\>0
  </equation*>

  Solution doesn't work. Have to guess solution of form:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p1>>|<cell|\<equiv\>>|<cell|x*<around*|(|A*cos
    x+B*sin x|)>>>|<row|<cell|y<rsub|p1><rprime|'>>|<cell|=>|<cell|<around*|(|A*cos
    x+B*sin x|)>+x*<around*|(|-A*sin x+B*cos
    x|)>>>|<row|<cell|y<rsub|p1><rprime|''>>|<cell|=>|<cell|2<around*|(|-A*sin
    x+B*cos x|)>+x*<around*|(|-A*cos x-B*sin
    x|)>>>|<row|<cell|y<rsub|p1><rprime|'''>>|<cell|=>|<cell|3<around*|(|-A*cos
    x-B*sin x|)>+x*<around*|(|A*sin x-B*cos x|)>>>>>
  </eqnarray*>

  Substitute <math|y<rsub|p1>> in the ODE:

  <\eqnarray*>
    <tformat|<table|<row|<cell|2*cos x>|<cell|=>|<cell|3<around*|(|-A*cos
    x-B*sin x|)>+x*<around*|(|A*sin x-B*cos x|)>-2<around*|(|-A*sin x+B*cos
    x|)>>>|<row|<cell|>|<cell|>|<cell|-x*<around*|(|-A*cos x-B*sin
    x|)>+<around*|(|A*cos x+B*sin x|)>+x*<around*|(|-A*sin x+B*cos
    x|)>-x*<around*|(|A*cos x+B*sin x|)>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|2*cos x>|<cell|=>|<cell|cos
    x*<around*|(|-3A-B*x-2B+A*x+A+B*x-A*x|)>>>|<row|<cell|>|<cell|>|<cell|+sin
    x*<around*|(|-3B+A*x+2A+B*x+B-A*x-B*x|)>>>>>
  </eqnarray*>

  <\equation*>
    2*cos x=cos x*<around*|(|-2A-2B|)>+sin x*<around*|(|-2B+2A|)>
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|sin
    x:>|<cell|-2B+2A=0\<rightarrow\>A=B>>|<row|<cell|cos
    x:>|<cell|-2A-2B=2\<rightarrow\>A=-<frac|1|2>>>>>>
  </equation*>

  Therefore:

  <\equation*>
    y<rsub|p1>=-<frac|1|2>*x<around*|(|cos x+sin x|)>
  </equation*>

  For the second part of the RHS, guess a solution of form
  <math|y<rsub|p2>\<equiv\>A*\<mathe\><rsup|3x>> and input in ODE:

  <\equation*>
    \<mathe\><rsup|3x>*<around*|(|27A-9A+3A-A|)>=-\<mathe\><rsup|3x>
  </equation*>

  <\equation*>
    A=-<frac|1|20>
  </equation*>

  To summarize, general solution to the ODE is
  <math|y=y<rsub|h>+y<rsub|p1>+y<rsub|p2>>.

  <\equation*>
    y=c<rsub|1>+c<rsub|2>*cos x+c<rsub|3>*sin x-<frac|1|2>*x<around*|(|cos
    x+sin x|)>-<frac|1|20>*\<mathe\><rsup|3x>
  </equation*>

  <section*|Question 3>

  Find general solution to the system:

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>
  </equation*>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|5>|<cell|5>|<cell|2>>|<row|<cell|-6>|<cell|-6>|<cell|-5>>|<row|<cell|6>|<cell|6>|<cell|5>>>>>
  </equation*>

  Find eigenvalues and eigenvectors for <math|A>. It is clear already that
  <math|\<lambda\>=0> is an eigenvalue, as the third row is linearly
  dependent on the second one (<math|rank A<rsup|n*\<times\>n>\<less\>n>).

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=<det|<tformat|<table|<row|<cell|5-\<lambda\>>|<cell|5>|<cell|2>>|<row|<cell|-6>|<cell|-6-\<lambda\>>|<cell|-5>>|<row|<cell|6>|<cell|6>|<cell|5-\<lambda\>>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>+R<rsub|3>><det|<tformat|<table|<row|<cell|5-\<lambda\>>|<cell|5>|<cell|2>>|<row|<cell|0>|<cell|-\<lambda\>>|<cell|-\<lambda\>>>|<row|<cell|6>|<cell|6>|<cell|5-\<lambda\>>>>>>=\<cdots\>=
  </equation*>

  <\equation*>
    =<around*|(|5-\<lambda\>|)>*<around*|(|\<lambda\><rsup|2>-5\<lambda\>+6\<lambda\>|)>+6*<around*|(|-5\<lambda\>+2\<lambda\>|)>=-<around*|(|\<lambda\>-5|)>*\<lambda\>*<around*|(|\<lambda\>+1|)>-18\<lambda\>=-\<lambda\>*<around*|(|\<lambda\><rsup|2>-4\<lambda\>+13|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1>=0,\<lambda\><rsub|2,3>=<frac|4\<pm\>6\<mathi\>|2>=2\<pm\>3\<mathi\>
  </equation*>

  Find eigenvectors. For <math|\<lambda\><rsub|1>=0>: find
  <math|<wide|v|\<vect\>><rsub|1>> such that

  <\equation*>
    <around*|(|A-\<lambda\><rsub|1>*I|)>*<wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    A-\<lambda\><rsub|1>*I=<bmatrix|<tformat|<table|<row|<cell|5>|<cell|5>|<cell|2>>|<row|<cell|-6>|<cell|-6>|<cell|-5>>|<row|<cell|6>|<cell|6>|<cell|5>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>
  </equation*>

  From <math|\<lambda\><rsub|2>=2-3\<mathi\>> construct two real solutions.
  Find eigenvector <math|<wide|v|\<vect\>><rsub|2>> such that:

  <\equation*>
    <around*|(|A-\<lambda\><rsub|2>*I|)>*<wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|3+3\<mathi\>>|<cell|5>|<cell|2>>|<row|<cell|-6>|<cell|-8+3\<mathi\>>|<cell|-5>>|<row|<cell|6>|<cell|6>|<cell|3+3\<mathi\>>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>+R<rsub|3>><bmatrix|<tformat|<table|<row|<cell|3+3\<mathi\>>|<cell|5>|<cell|2>>|<row|<cell|0>|<cell|-2+3\<mathi\>>|<cell|-2+3\<mathi\>>>|<row|<cell|6>|<cell|6>|<cell|3+3\<mathi\>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v<rsub|2>|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|<frac|3|3+3\<mathi\>>>>|<row|<cell|-1>>|<row|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|3\<cdot\><around*|(|3-3\<mathi\>|)>|18>>>|<row|<cell|-1>>|<row|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|1|2>-<frac|1|2>\<mathi\>>>|<row|<cell|-1>>|<row|<cell|1>>>>>
  </equation*>

  Two real solutions are:

  <\equation*>
    <wide|v|\<vect\>><rsub|2>*\<mathe\><rsup|2x>*<around*|(|cos
    <around*|(|3x|)>+\<mathi\>*sin <around*|(|3x|)>|)>=\<mathe\><rsup|2x>*<around*|(|<bmatrix|<tformat|<table|<row|<cell|<frac|1|2>*cos
    3x+<frac|1|2>*sin 3x>>|<row|<cell|-cos 3x>>|<row|<cell|cos
    3x>>>>>+\<mathi\>*<bmatrix|<tformat|<table|<row|<cell|<frac|1|2>*sin
    3x-<frac|1|2>*cos 3x>>|<row|<cell|-sin 3x>>|<row|<cell|sin 3x>>>>>|)>
  </equation*>

  <\equation*>
    \;
  </equation*>

  General solution to system is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>+c<rsub|2>*\<mathe\><rsup|2x>*<bmatrix|<tformat|<table|<row|<cell|<frac|1|2>*cos
    3x+<frac|1|2>*sin 3x>>|<row|<cell|-cos 3x>>|<row|<cell|cos
    3x>>>>>+c<rsub|3>*\<mathe\><rsup|2x>*<bmatrix|<tformat|<table|<row|<cell|<frac|1|2>*sin
    3x-<frac|1|2>*cos 3x>>|<row|<cell|-sin 3x>>|<row|<cell|sin 3x>>>>>*
  </equation*>

  <section*|Question 4>

  (a) Solve the equation

  <\equation*>
    y<rprime|'>**y<rprime|''>-t=0
  </equation*>

  with ICs <math|y<around*|(|1|)>=2,y<rprime|'><around*|(|1|)>=1>.

  Set <math|v=y<rprime|'>>.

  <\equation*>
    <frac|\<mathd\>v|\<mathd\>t>\<cdot\>v=t
  </equation*>

  This is a separable equation. It reads

  <\equation*>
    <big|int>v \<mathd\>v=<big|int>t \<mathd\>t
  </equation*>

  <\equation*>
    <frac|1|2>*v<rsup|2>=<frac|1|2>*t<rsup|2>+c<rsub|1>
  </equation*>

  <\equation*>
    y<rprime|'>=v=\<pm\><sqrt|t<rsup|2>+2c<rsub|1>>,<application-space|2em>2c<rsub|1>\<geq\>-t<rsup|2>
  </equation*>

  Integrate again to get

  <\equation*>
    y=\<pm\><big|int><sqrt|t<rsup|2>+2c<rsub|1>> \<mathd\>t
  </equation*>

  This integral is hard to calculate<text-dots> We're asked to find a unique
  solution. Find <math|c<rsub|1>> using the IC that
  <math|y<rprime|'><around*|(|1|)>=1>.

  <\equation*>
    <frac|1|2>\<cdot\>y<rprime|'><around*|(|1|)>=<frac|1|2>\<cdot\>1<rsup|2>+c<rsub|1>\<rightarrow\>c<rsub|1>=0
  </equation*>

  This simplifies the solution a bunch, as now we are left with

  <\equation*>
    y<rprime|'>=\<pm\><sqrt|t<rsup|2>>=\<pm\>t
  </equation*>

  which means

  <\equation*>
    y=<big|int>y<rprime|'> \<mathd\>t=\<pm\><frac|1|2>*t<rsup|2>+c<rsub|2>
  </equation*>

  Insert second IC that <math|y<around*|(|1|)>=2>:

  <\equation*>
    y<around*|(|1|)>=2=\<pm\><frac|1|2>\<cdot\>1<rsup|2>+c<rsub|2>
  </equation*>

  There are two possibilities: either <math|c<rsub|2><rsup|>=<frac|3|2>> or
  <math|c<rsub|2><rsup|>=<frac|5|2>>. Note though that only the solution

  <\equation*>
    y<rsub|>=<frac|1|2>t<rsup|2>+<frac|3|2>
  </equation*>

  satisfies the IC <math|y<rprime|'><around*|(|1|)>=1>. (The second one gives
  <math|y<rprime|'><around*|(|1|)>=-1>.)

  (b) Solve the equation

  <\equation*>
    y<rprime|'>=x*y<rsup|3>*<around*|(|1+x<rsup|2>|)><rsup|-1/2>
  </equation*>

  Note that <math|y\<equiv\>0> solves the equation but doesn't satisfy the
  IC.

  with IC <math|y<around*|(|0|)>=1>. This is a separable equation. Integrate
  both sides:

  <\equation*>
    -<frac|1|2y<rsup|2>>=<big|int><frac|\<mathd\>y|y<rsup|3>>=<big|int><frac|x|<sqrt|x<rsup|2>+1>>
    \<mathd\>x=<sqrt|x<rsup|2>+1>+c
  </equation*>

  <\equation*>
    y=\<pm\><sqrt|-<frac|1|2<sqrt|x<rsup|2>+1>+c>>,<application-space|1em>c\<neq\>-<sqrt|x<rsup|2>+1>
  </equation*>

  Find solution that satisfies the IC, which constraints solution to only
  positive values.

  <\equation*>
    y<around*|(|0|)>=1=-<frac|1|c+2>\<rightarrow\>c=-3
  </equation*>

  Unique solution is

  <\equation*>
    y=<sqrt|<frac|1|3-2<sqrt|x<rsup|2>+1>>>
  </equation*>

  <section*|Question 5>

  Solve the following boundary value problem:

  <\equation*>
    25y<rsub|x\<nocomma\>x>=y<rsub|t\<nocomma\>t>,<application-space|1em>x\<in\><around*|(|0,3|)>,t\<gtr\>0
  </equation*>

  With homogeneous BCs: <math|y<around*|(|0,t|)>=y<around*|(|3,t|)>=0> and
  ICs: <math|y<around*|(|x,0|)>=<frac|1|4>*sin <around*|(|\<mathpi\>*x|)>>,
  <math|y<rsub|t><around*|(|x,0|)>=10*sin <around*|(|2\<mathpi\>*x|)>>.

  This is the wave equation, and it can be solved via D'Alembert method, as
  the ICs in both cases there is a trivial odd extension of the IC function
  (in zero initial position and velocity, respectively\Vwe shall treat each
  case separately) to a <math|2L>-periodic function on <math|\<bbb-R\>>.

  <underline|Zero initial velocity case>: ICs are
  <math|<choice|<tformat|<table|<row|<cell|y<around*|(|x,0|)>\<equiv\>f<around*|(|x|)>=<frac|1|4>*sin
  <around*|(|\<mathpi\>*x|)>>>|<row|<cell|y<rsub|t><around*|(|x,0|)>\<equiv\>0>>>>>>

  In this case, the solution is

  <\equation*>
    u<around*|(|x,t|)>=<frac|1|2><around*|(|F<around*|(|x+a*t|)>+F<around*|(|x-a*t|)>|)>
  </equation*>

  where <math|F<around*|(|x|)>=f<around*|(|x|)>> on <math|x\<in\>\<bbb-R\>>,
  with <math|a=5>.

  <\equation*>
    u<rsub|1><around*|(|x,t|)>=<frac|1|2>*\<cdot\><frac|1|4><around*|[|sin
    <around*|(|\<mathpi\>*x+5\<mathpi\>t|)>+sin
    <around*|(|\<mathpi\>*x-5\<mathpi\>t|)>|]>=<frac|1|4>*sin
    <around*|(|\<mathpi\>*x|)>*cos <around*|(|5\<mathpi\>t|)>
  </equation*>

  <underline|Zero initial position case>: ICs are
  <math|<choice|<tformat|<table|<row|<cell|y<around*|(|x,0|)>\<equiv\>0>>|<row|<cell|y<rsub|t><around*|(|x,0|)>\<equiv\>g<around*|(|x|)>=10*sin
  <around*|(|2\<mathpi\>*x|)>>>>>>>

  Define <math|H<around*|(|x|)>> as the primitive function of
  <math|g<around*|(|x|)>>, i.e. <math|H<around*|(|x|)>=<big|int>g<around*|(|\<xi\>|)>
  \<mathd\>\<xi\>>. Then,

  <\equation*>
    u<around*|(|x,t|)>=<frac|1|2a>*<around*|[|H<around*|(|x+a*t|)>-H<around*|(|x-a*t|)>|]>
  </equation*>

  Calculate <math|H<around*|(|x|)>>:

  <\equation*>
    H<around*|(|x|)>=10<big|int>sin <around*|(|2\<mathpi\>*\<xi\>|)>
    \<mathd\>\<xi\>=-<frac|10|2\<mathpi\>>*cos
    <around*|(|2\<mathpi\>*x|)>=-<frac|5|\<mathpi\>>*cos
    <around*|(|2\<mathpi\>*x|)>
  </equation*>

  Therefore,

  <\equation*>
    u<rsub|2><around*|(|x,t|)>=<frac|1|2\<cdot\>5>*\<cdot\><around*|(|-<frac|5|\<mathpi\>>|)><around*|[|cos
    <around*|(|2\<mathpi\>*x+10\<mathpi\>t|)>-cos
    <around*|(|2\<mathpi\>*x-5t|)>|]>=-<frac|1|\<mathpi\>>*cos
    <around*|(|2\<mathpi\>*x|)>*cos <around*|(|10\<mathpi\>t|)>*
  </equation*>

  Solution to the boundary values problem is the sum of
  <math|u<rsub|1><around*|(|x,t|)>> and <math|u<rsub|2><around*|(|x,t|)>>:

  <\equation*>
    u<around*|(|x,t|)>=<frac|1|4>*sin <around*|(|\<mathpi\>*x|)>*cos
    <around*|(|5\<mathpi\>t|)>-<frac|1|\<mathpi\>>*cos
    <around*|(|2\<mathpi\>*x|)>*cos <around*|(|10\<mathpi\>t|)>
  </equation*>

  <section*|Question 6>

  Given a rod of length <math|\<mathpi\>> with thermal diffusivity constant
  <math|\<alpha\><rsup|2>=3>, find the temperature <math|u<around*|(|x,t|)>>
  at point <math|x> and time <math|t> along the rod if the temperature at
  time <math|t=0> is

  <\equation*>
    u<around*|(|x,0|)>=4*sin 2x+<frac|10|\<mathpi\>>*x+15,<application-space|1em>x\<in\><around*|(|0,\<mathpi\>|)>
  </equation*>

  and the temperature are the endpoints is held constant so that
  <math|u<around*|(|0,t|)>=15> and <math|u<around*|(|\<mathpi\>,t|)>=25>
  <math|\<forall\>t>.

  Define <math|w<around*|(|x,t|)>> and <math|v<around*|(|x|)>> such that:

  <\equation*>
    w<around*|(|x,t|)>=u<around*|(|x,t|)>-v<around*|(|x|)>
  </equation*>

  <\equation*>
    v<around*|(|x|)>=<frac|10|\<mathpi\>>*x+15
  </equation*>

  Basically, <math|w<around*|(|x,t|)>> satisfies the heat equation with
  homogeneous BCs.

  The solution to such equation is:

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
    c<rsub|n>=<frac|2|\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>>4*sin
    2x\<cdot\>sin <around*|(|n*x|)> \<mathd\>x
  </equation*>

  Sines of different frequencies form an orthogonal family, so:

  <\equation*>
    c<rsub|n>=<frac|8|\<mathpi\>>*<around*|(|<big|int><rsub|0><rsup|\<mathpi\>>sin
    2x\<cdot\>sin <around*|(|n*x|)> \<mathd\>x|)>\<cdot\>\<delta\><around*|(|n-2|)>
  </equation*>

  which is equivalent to

  <\equation*>
    c<rsub|2>=<frac|8|\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>>sin<rsup|2>
    2x \<mathd\>x=<frac|4|\<mathpi\>>*<around*|[|x-<frac|sin
    4x|4>|]><rsub|0><rsup|\<mathpi\>>=4
  </equation*>

  So:

  <\equation*>
    w<around*|(|x,t|)>=4*sin 2x\<cdot\>\<mathe\><rsup|-12t>
  </equation*>

  and:

  <\equation*>
    u<around*|(|x,t|)>=w<around*|(|x,t|)>+v<around*|(|x|)>=4*sin
    2x\<cdot\>\<mathe\><rsup|-12t>+<frac|10|\<mathpi\>>*x+15
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
    <associate|auto-5|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-6|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
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