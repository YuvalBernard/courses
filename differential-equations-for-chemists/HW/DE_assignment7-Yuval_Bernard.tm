<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Assignment 7>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date:
  </author-affiliation>>>>

  <section*|Page 205>

  <\underline>
    Question 1
  </underline>

  <\equation*>
    cos 9t-cos 7t
  </equation*>

  We can use the trigonometric identities

  <\equation*>
    sin <around*|(|\<alpha\>+\<beta\>|)>=sin \<alpha\>*cos \<beta\>+cos
    \<alpha\>*sin \<beta\>
  </equation*>

  <\equation*>
    sin <around*|(|\<alpha\>-\<beta\>|)>=sin \<alpha\>*cos \<beta\>-cos
    \<alpha\>*sin \<beta\>
  </equation*>

  Note that\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|sin <around*|(|\<alpha\>+\<beta\>|)>\<cdot\>sin
    <around*|(|\<alpha\>-\<beta\>|)>>|<cell|=>|<cell|<around*|(|sin
    \<alpha\>*cos \<beta\>+cos \<alpha\>*sin \<beta\>|)><around*|(|sin
    \<alpha\>*cos \<beta\>-cos \<alpha\>*sin
    \<beta\>|)>>>|<row|<cell|>|<cell|=>|<cell|sin<rsup|2>
    \<alpha\>*cos<rsup|2> \<beta\>-sin \<alpha\>*cos \<alpha\>*sin
    \<beta\>*cos \<beta\>+sin \<alpha\>*cos \<alpha\>*sin \<beta\>*cos
    \<beta\>>>|<row|<cell|>|<cell|->|<cell|cos<rsup|2> \<alpha\>*sin<rsup|2>
    \<beta\>>>|<row|<cell|>|<cell|=>|<cell|sin<rsup|2> \<alpha\>*cos<rsup|2>
    \<beta\>-cos<rsup|2> \<alpha\>*sin<rsup|2>
    \<beta\>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4><around*|(|1-cos
    2\<alpha\>|)><around*|(|1+cos 2\<beta\>|)>-<frac|1|4><around*|(|1+cos
    2\<alpha\>|)><around*|(|1-cos 2\<beta\>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>*<around*|(|1*+cos
    2\<beta\>-cos 2\<alpha\>-cos 2\<alpha\>*cos
    2\<beta\>|)>>>|<row|<cell|>|<cell|->|<cell|<frac|1|4><around*|(|1-cos
    2\<beta\>+cos 2\<alpha\>-cos 2\<alpha\>*cos
    2\<beta\>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2><around*|(|cos
    2\<beta\>-cos 2\<alpha\>|)>>>>>
  </eqnarray*>

  If we substitute <math|\<alpha\>=<frac|a|2>,\<beta\>=<frac|b|2>> then we
  get

  <\equation*>
    cos a-cos b=-2*sin <around*|(|<frac|a+b|2>|)>\<cdot\>sin
    <around*|(|<frac|a-b|2>|)>
  </equation*>

  In our case, <math|a=9,b=7>.

  <\equation*>
    cos 9t-cos 7t=-2*sin <around*|(|<frac|9+7|2>t|)>*sin
    <around*|(|<frac|9-7|2>t|)>=-2*sin 8t*sin t
  </equation*>

  <underline|Question 6>

  <\itemize>
    <item>If a mass of 5 kg stretches a spring 10 cm, then

    <\equation*>
      k=<frac|m*g|L>=<frac|5 kg\<ast\><SI|9.8|m|s<rsup|-2>>|<SI|0.1|m>>=<SI|490|N|m<rsup|-1>>
    </equation*>

    <item>If the viscous medium exerts 2N on the mass when its velocity is 4
    cm/s, then

    <\equation*>
      \<gamma\>=<frac|F|v>=<frac|<SI|2|N>|<SI|0.04|m|s<rsup|-1>>>=<SI|50|N|m<rsup|-1>|s<rsup|-1>>
    </equation*>
  </itemize>

  The equation of motion according to Newton's 2nd law is:

  <\equation*>
    m*u<rprime|''>=m*g-k*<around*|(|L+u|)>-\<gamma\>*u<rprime|'>+F<around*|(|t|)>
  </equation*>

  As <math|m*g=k*L>, the equation can be simplifies and arranged to the form:

  <\equation*>
    u<rprime|''>+<frac|\<gamma\>|m>*u<rprime|'>+<frac|k|m>*u=<frac|F|m><around*|(|t|)>
  </equation*>

  Plug in data:

  <\equation*>
    u<rprime|''>+<frac|50|5>*u<rprime|'>+<frac|490|5>*u=2*sin <frac|t|2>
  </equation*>

  <\equation*>
    u<rprime|''>+10u<rprime|'>+98u=2*sin <frac|t|2>
  </equation*>

  The given ICs are:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|u<around*|(|0|)>=0>>|<row|<cell|u<rprime|'><around*|(|0|)>=<SI|0.03|m|s<rsup|-1>>>>>>>
  </equation*>

  This is the initial value problem.

  <underline|Question 8>

  (a) First solve the associated homogeneous equation. Its characteristic
  equation is

  <\equation*>
    \<lambda\><rsup|2>+10\<lambda\>+98=0
  </equation*>

  The roots are

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|-10\<pm\>2*<sqrt|73>*\<mathi\>|2>=-5\<pm\><sqrt|73>\<mathi\>
  </equation*>

  The solution of the homogeneous equation is

  <\equation*>
    y<rsub|h>=c<rsub|1>*\<mathe\><rsup|-5t>*cos
    <sqrt|73>t+c<rsub|2>*\<mathe\><rsup|-5t>*sin
    <sqrt|73>t,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>t\<gtr\>0
  </equation*>

  Now search for a particular solution of the form

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p>>|<cell|=>|<cell|A*cos
    <frac|t|2>+B*sin <frac|t|2>>>|<row|<cell|y<rprime|'><rsub|p>>|<cell|=>|<cell|-<frac|A|2>*sin
    <frac|t|2>+<frac|B|2>*cos <frac|t|2>>>|<row|<cell|y<rsub|p><rprime|''>>|<cell|=>|<cell|-<frac|A|4>*cos
    <frac|t|2>-<frac|B|4>*sin <frac|t|2>>>>>
  </eqnarray*>

  Input in the ODE:

  <\equation*>
    y<rprime|''>+10y<rprime|'>+98y=2*sin <frac|t|2>
  </equation*>

  <\equation*>
    -<frac|1|4><around*|(|A*cos <frac|t|2>+B*sin
    <frac|t|2>|)>+5<around*|(|-A*sin <frac|t|2>+B*cos
    <frac|t|2>|)>+98<around*|(|A*cos <frac|t|2>+B*sin <frac|t|2>|)>=2*sin
    <frac|t|2>
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|cos
    <frac|t|2>:<application-space|1em>-<frac|A|4>+5B+98A=0\<rightarrow\>B=-<frac|391|20>A>>|<row|<cell|sin
    <frac|t|2>:<application-space|1em>-<frac|B|4>-5A+98B=2\<rightarrow\>5A=97.75B-2>>>>>
  </equation*>

  <\equation*>
    5A=97.75\<ast\><around*|(|-<frac|391|20>|)>A-2\<rightarrow\>A=-<frac|160|153281>,B=<frac|3128|153281>
  </equation*>

  The general solution of the ODE is given by <math|y<rsub|h>+y<rsub|p>>:

  <\equation*>
    y=c<rsub|1>*\<mathe\><rsup|-5t>*cos <sqrt|73>t+c<rsub|2>*\<mathe\><rsup|-5t>*sin
    <sqrt|73>t-<frac|160|153281>*cos <frac|t|2>+<frac|3128|153281>*sin
    <frac|t|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  Plug in ICs to find <math|c<rsub|1,2>>.

  <\equation*>
    y<around*|(|0|)>=c<rsub|1>-<frac|160|153281>=0\<rightarrow\>c<rsub|1>=<frac|160|153281>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'>>|<cell|=>|<cell|-5c<rsub|1>\<mathe\><rsup|-5t>*cos
    <sqrt|73>t-<sqrt|73>c<rsub|1>*\<mathe\><rsup|-5t>*sin
    <sqrt|73>t>>|<row|<cell|>|<cell|>|<cell|-5c<rsub|2>*\<mathe\><rsup|-5t>*sin
    <sqrt|73>t+<sqrt|73>c<rsub|2>*\<mathe\><rsup|-5t>*cos
    <sqrt|73>t>>|<row|<cell|>|<cell|>|<cell|+<frac|80|153281>sin
    <frac|t|2>+<frac|1564|153281>*cos <frac|t|2>>>>>
  </eqnarray*>

  <\equation*>
    y<rprime|'><around*|(|0|)>=-5c<rsub|1>+<sqrt|73>c<rsub|2>+<frac|1564|153281>=0.03
  </equation*>

  <\equation*>
    c<rsub|2>=2.927\<times\>10<rsup|-3>
  </equation*>

  The unique solution to the ODE is:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|<frac|160|153281>\<mathe\><rsup|-5t>*cos
    <sqrt|73>t+2.927\<times\>10<rsup|-3>*\<mathe\><rsup|-5t>*sin
    <sqrt|73>t>>|<row|<cell|>|<cell|>|<cell|-<frac|160|153281>*cos
    <frac|t|2>+<frac|3128|153281>*sin <frac|t|2>>>>>
  </eqnarray*>

  (b) The elements comprising the solution are 2 decaying cosine and sine
  functions and 2 perpetually oscillating cosine and sine functions. It is
  clear then that the solution can't approach a steady state, thus concluding
  that all parts of the solution are transient.

  <section*|Page 344>

  <underline|Question 1>

  <\equation*>
    u<rprime|''>+0.5u<rprime|'>+2u=0
  </equation*>

  Denote new variables <math|x<rsub|1>,x<rsub|2>> such that

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1>=u<rprime|'>>>|<row|<cell|x<rsub|2>=u>>>>>
  </equation*>

  Their derivatives:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>=u<rprime|''>>>|<row|<cell|x<rsub|2><rprime|'>=u<rprime|'>=x<rsub|1>>>>>>
  </equation*>

  Using these substitutions, we can transform the single 2nd order ODE into
  the following system of 1st order ODEs:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>=-0.5x<rsub|1>+2x<rsub|2>>>|<row|<cell|x<rsub|2><rprime|'>=x<rsub|1>>>>>>
  </equation*>

  <underline|Question 4>

  <\equation*>
    u<rsup|<around*|(|4|)>>-u=0
  </equation*>

  Denote new variables <math|x<rsub|1>,x<rsub|2>,x<rsub|3>,x<rsub|4>> such
  that

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1>=u<rsup|<around*|(|3|)>>>>|<row|<cell|x<rsub|2>=u<rsup|><rprime|''>>>|<row|<cell|x<rsub|3>=u<rprime|'>>>|<row|<cell|x<rsub|4>=u>>>>>
  </equation*>

  Their derivatives:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>=u<rsup|<around*|(|4|)>>>>|<row|<cell|x<rsub|2><rprime|'>=u<rprime|'''>=x<rsub|1>>>|<row|<cell|x<rsub|3><rprime|'>=u<rprime|''>=x<rsub|2>>>|<row|<cell|x<rsub|4><rprime|'>=u<rprime|'>=x<rsub|3>>>>>>
  </equation*>

  Thus, we can transform the original ODE to the following system of 1st
  order equations:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>=x<rsub|4>>>|<row|<cell|x<rsub|2><rprime|'>=x<rsub|1>>>|<row|<cell|x<rsub|3><rprime|'>=x<rsub|2>>>|<row|<cell|x<rsub|4><rprime|'>=x<rsub|3>>>>>>
  </equation*>

  <underline|Question 7>

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>=-2x<rsub|1>+x<rsub|2>>>|<row|<cell|x<rsub|2><rprime|'>=x<rsub|1>-2x<rsub|2>>>>>>
  </equation*>

  (a) Solve the equation where <math|x<rsub|1>> is a function of
  <math|x<rsub|2>>

  <\equation*>
    x<rsub|1><rprime|'>+2x<rsub|1>=x<rsub|2>
  </equation*>

  Via integration factor method:

  <\equation*>
    x<rsub|1>=\<mathe\><rsup|-2x<rsub|2>><around*|[|<big|int>x<rsub|2>*\<mathe\><rsup|2x<rsub|2>>
    \<mathd\>x<rsub|2>+A|]>
  </equation*>

  Solve the integral via integration by parts:

  <\equation*>
    <big|int>x<rsub|2>*\<mathe\><rsup|2x<rsub|2>>
    \<mathd\>x<rsub|2>=<frac|1|2>x<rsub|2>*\<mathe\><rsup|2x<rsub|2>>-<frac|1|2>\<mathe\><rsup|2x<rsub|2>>=<frac|1|2>\<mathe\><rsup|2x<rsub|2>><around*|(|x<rsub|2>-1|)>
  </equation*>

  <\equation*>
    x<rsub|1>=<frac|1|2><around*|(|x<rsub|2>-1|)>+A*\<mathe\><rsup|-2x<rsub|2>>,<application-space|1em>A\<in\>\<bbb-R\>
  </equation*>

  Substitute solution into the 2nd equation:

  <\equation*>
    x<rsub|2><rprime|'>=<frac|1|2><around*|(|x<rsub|2>-1|)>+A*\<mathe\><rsup|-2x<rsub|2>>-2x<rsub|2>
  </equation*>

  <\equation*>
    x<rsub|2><rprime|'>+<frac|3|2>x<rsub|2>=-<frac|1|2>+A*\<mathe\><rsup|-2x<rsub|2>>
  </equation*>

  First solve the associated homogeneous equation.

  <\equation*>
    \<lambda\>+<frac|3|2>=0\<rightarrow\>\<lambda\>=-<frac|3|2>
  </equation*>

  The solution to the homogeneous equation is
  <math|x<rsub|2,h>=c<rsub|1>*\<mathe\><rsup|-<frac|3|2>t>> where
  <math|c<rsub|1>\<in\>\<bbb-R\>>.

  Now find a particular solution that fits the polynomial part of the RHS:

  <\equation*>
    x<rsub|2,p1>=\<alpha\>*t+\<beta\>
  </equation*>

  <\equation*>
    x<rprime|'><rsub|2,p1>=\<alpha\>
  </equation*>

  Plug in the (polynomial part of the) ODE:

  <\equation*>
    \<alpha\>+<frac|3|2><around*|(|\<alpha\>t+\<beta\>|)>=-<frac|1|2>
  </equation*>

  Equate coefficients on both sides and get
  <math|\<alpha\>=0,\<beta\>=-<frac|1|3>>.
  <math|\<Rightarrow\>x<rsub|2,p1>=-<frac|1|3>>.

  Now find a particular solution that fits the exponent part of the RHS:

  <\equation*>
    x<rsub|2,p2>=\<gamma\>*\<mathe\><rsup|-2x<rsub|2>>
  </equation*>

  <\equation*>
    x<rprime|'><rsub|2,p2>=-2\<gamma\>*\<mathe\><rsup|-2x<rsub|2>>
  </equation*>

  <fill-dots>

  <underline|Question 14>

  Given the system of equations:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>=a<rsub|11>*x<rsub|1>+a<rsub|12>*x<rsub|2>+g<rsub|1><around*|(|t|)>>>|<row|<cell|x<rsub|2><rprime|'>=a<rsub|21>*x<rsub|1>+a<rsub|22>*x<rsub|2>+g<rsub|2><around*|(|t|)>>>>>>,<application-space|2em>x<rsub|1,2><around*|(|0|)>=x<rsub|1,2><rsup|0>
  </equation*>

  where <math|a<rsub|11>,a<rsub|12>,a<rsub|21>,a<rsub|22>> are constants and
  <math|a<rsub|12>,a<rsub|21>> are not both zero, and
  <math|g<rsub|1>,g<rsub|2>> are differentiable.

  Differentiate the first (<with|color|blue|second>) equation.

  <\equation*>
    x<rsub|1><rprime|''>=a<rsub|11>*x<rsub|1><rprime|'>+a<rsub|12>*x<rprime|'><rsub|2>+g<rsub|1><rprime|'><around*|(|t|)>
  </equation*>

  <\equation*>
    <with|color|blue|x<rsub|2><rprime|''>=a<rsub|21>*x<rsub|1><rprime|'>+a<rsub|22>*x<rsub|2><rprime|'>+g<rsub|2><rprime|'><around*|(|t|)>>
  </equation*>

  <\equation*>
    \;
  </equation*>

  Insert expression for <math|x<rsub|2><rprime|'>>.
  (<with|color|blue|<math|x<rsub|1><rprime|'>>>)

  <\equation*>
    x<rsub|1><rprime|''>=a<rsub|11>*x<rsub|1><rprime|'>+a<rsub|12>*<around*|(|a<rsub|21>*x<rsub|1>+a<rsub|22>*x<rsub|2>+g<rsub|2><around*|(|t|)>|)>+g<rsub|1><rprime|'><around*|(|t|)>
  </equation*>

  <\equation*>
    <with|color|blue|x<rsub|2><rprime|''>=a<rsub|21>*<around*|(|a<rsub|11>*x<rsub|1>+a<rsub|12>*x<rsub|2>+g<rsub|1><around*|(|t|)>|)>+a<rsub|22>*x<rsub|2><rprime|'>+g<rsub|2><rprime|'><around*|(|t|)>>
  </equation*>

  Note that from the first (<with|color|blue|second>) equation,
  <math|x<rsub|2>> (<math|<with|color|blue|x<rsub|1>>>) can be expressed as:

  <\equation*>
    x<rsub|2>=<frac|x<rsub|1><rprime|'>-a<rsub|11>*x<rsub|1>-g<rsub|1><around*|(|t|)>|a<rsub|12>>*
  </equation*>

  <\equation*>
    <with|color|blue|x<rsub|1>=<frac|x<rsub|2><rprime|'>-a<rsub|22>*x<rsub|2>-g<rsub|2><around*|(|t|)>|a<rsub|21>>>
  </equation*>

  Input back in the above equation:

  <\equation*>
    x<rsub|1><rprime|''>=a<rsub|11>*x<rsub|1><rprime|'>+a<rsub|12><around*|[|a<rsub|21>*x<rsub|1>+<frac|a<rsub|22>|a<rsub|12>>*<around*|(|x<rsub|1><rprime|'>-a<rsub|11>*x<rsub|1>-g<rsub|1><around*|(|t|)>|)>+g<rsub|2><around*|(|t|)>|]>+g<rsub|1><rprime|'><around*|(|t|)>
  </equation*>

  <\equation*>
    <with|color|blue|x<rsub|2><rprime|''>=a<rsub|21><around*|[|<frac|a<rsub|11>|a<rsub|21>>*<around*|(|x<rsub|2><rprime|'>-a<rsub|22>*x<rsub|2>-g<rsub|2><around*|(|t|)>|)>+a<rsub|12>*x<rsub|2>+g<rsub|1><around*|(|t|)>|]>+a<rsub|22>*x<rsub|2><rprime|'>+g<rsub|2><rprime|'><around*|(|t|)>>
  </equation*>

  Further simplification can be made to write the equation as a second order
  ODE of the form <math|x<rprime|''>+p<around*|(|t|)>*x<rprime|'>+q<around*|(|t|)>=0>,
  however it is sufficiently clear at this point that we've got a second
  order linear ODE.

  Note two things:

  <\enumerate>
    <item>Two crucial assumptions were made:

    <\enumerate>
      <item><math|a<rsub|12>\<neq\>0>

      <item><math|g<rsub|1><around*|(|t|)>> is differentiable.
    </enumerate>

    Both assumptions are valid given the information we've received at the
    beginning.

    <item>We chose rather arbitrarily to differentiate the first equation to
    obtain a second order ODE in <math|x<rsub|1>>. We could have equally
    chosen to differentiate the second equation and obtain a similar equation
    in <math|x<rsub|2>>.

    If we would have done so, the expression would have contained
    <math|<frac|a<rsub|11>|a<rsub|21>>> and
    <math|g<rsub|2><rprime|'><around*|(|t|)>>. In order for the would-so
    obtained equation to hold, <math|a<rsub|22>> must be non-zero and
    <math|g<rsub|2><around*|(|t|)>> must be differentiable. Again, both
    conditions are satisfied.
  </enumerate>

  Additionally, given the ICs <math|x<rsub|1><around*|(|0|)>,x<rsub|2><around*|(|0|)>>,
  we officially have an initial value problem for a single second order
  equation.

  If <math|a<rsub|11>,\<ldots\>,a<rsub|22>> were functions of <math|t>, the
  same procedure could be carried out, with the caveat that
  <math|a<rsub|22><around*|(|t|)>/a<rsub|12><around*|(|t|)>> and
  <math|a<rsub|11><around*|(|t|)>/a<rsub|21><around*|(|t|)>> must be
  continuous (and also differentiable in the interval relevant to the ICs).

  <underline|Question 16>

  We're informed that <math|<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>>>>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|y<rsub|1>>>>>>>
  and <math|<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>>>>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|2>>>|<row|<cell|y<rsub|2>>>>>>>
  solve the following equations:

  <\eqnarray*>
    <tformat|<table|<row|<cell|x<rprime|'>>|<cell|=>|<cell|p<rsub|11><around*|(|t|)>*x+p<rsub|12><around*|(|t|)>*y+g<rsub|1><around*|(|t|)>>>|<row|<cell|y<rprime|'>>|<cell|=>|<cell|p<rsub|21>*<around*|(|t|)>x+p<rsub|22><around*|(|t|)>*y+g<rsub|2><around*|(|t|)>>>>>
  </eqnarray*>

  These can also be written in matrix form:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>>>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|p<rsub|11>>|<cell|p<rsub|12>>>|<row|<cell|p<rsub|21>>|<cell|p<rsub|22>>>>>><bmatrix|<tformat|<table|<row|<cell|x<rsub|>>>|<row|<cell|y>>>>>+<bmatrix|<tformat|<table|<row|<cell|g<rsub|1>>>|<row|<cell|g<rsub|2>>>>>>
  </equation*>

  Plug in the two solutions:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|y<rsub|1>>>>>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|p<rsub|11>>|<cell|p<rsub|12>>>|<row|<cell|p<rsub|21>>|<cell|p<rsub|22>>>>>><bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|y<rsub|1>>>>>>+<bmatrix|<tformat|<table|<row|<cell|g<rsub|1>>>|<row|<cell|g<rsub|2>>>>>>
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x<rsub|2>>>|<row|<cell|y<rsub|2>>>>>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|p<rsub|11>>|<cell|p<rsub|12>>>|<row|<cell|p<rsub|21>>|<cell|p<rsub|22>>>>>><bmatrix|<tformat|<table|<row|<cell|x<rsub|2>>>|<row|<cell|y<rsub|2>>>>>>+<bmatrix|<tformat|<table|<row|<cell|g<rsub|1>>>|<row|<cell|g<rsub|2>>>>>>
  </equation*>

  Subtract the two equations (operations are valid as matrices in
  <math|\<bbb-R\>> are a vector subspace).

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x<rsub|1>-x<rsub|2>>>|<row|<cell|y<rsub|1>-y<rsub|2>>>>>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|p<rsub|11>>|<cell|p<rsub|12>>>|<row|<cell|p<rsub|21>>|<cell|p<rsub|22>>>>>><bmatrix|<tformat|<table|<row|<cell|x<rsub|1>-x<rsub|2>>>|<row|<cell|y<rsub|1>-y<rsub|2>>>>>>
  </equation*>

  Return to equation form and rearrange:

  <\equation*>
    <around*|(|x<rsub|1>-x<rsub|2>|)><rprime|'>-p<rsub|11>*<around*|(|x<rsub|1>-x<rsub|2>|)>-p<rsub|12>*<around*|(|y<rsub|1>-y<rsub|2>|)>=0
  </equation*>

  <\equation*>
    <around*|(|y<rsub|1>-y<rsub|2>|)><rprime|'>-p<rsub|21>*<around*|(|x<rsub|1>-x<rsub|2>|)>-p<rsub|22>*<around*|(|y<rsub|1>-y<rsub|2>|)>=0
  </equation*>

  We thus proved that <math|x=x<rsub|1>-x<rsub|2>,y=y<rsub|1>-y<rsub|2>>
  solve the corresponding homogeneous equation.

  <section*|Page 346>

  <underline|Question 21>

  (a) Initial conditions are <math|Q<rsub|1><around*|(|0|)>=<SI|25|oz>>,
  <math|Q<rsub|2><around*|(|0|)>=<SI|15|oz>>. The differential equation for
  the amount of salt in each tank is given by the amount of salt flowing in
  minus the amount of salt flowing out. The amount flowing in and out depends
  on the transient concentraion in each tank.

  For tank 1:

  <\equation*>
    Q<rprime|'><rsub|1><around*|(|t|)>=1 <frac|oz|gal>\<ast\><frac|3|2>
    <frac|gal|min>-3*<frac|Q<rsub|1>|V<rsub|1>>+<frac|3|2>*<frac|Q<rsub|2>|V<rsub|2>>
  </equation*>

  <\equation*>
    Q<rsub|1><rprime|'>=-<frac|3|V<rsub|1>>*Q<rsub|1>+<frac|3|2V<rsub|2>>*Q<rsub|2>+<frac|3|2>
  </equation*>

  For tank 2:

  <\equation*>
    Q<rsub|2><rprime|'><around*|(|t|)>=3 <frac|oz|gal>\<ast\>1
    <frac|gal|min>+3*<frac|Q<rsub|1>|V<rsub|1>>-4*<frac|Q<rsub|2>|V<rsub|2>>
  </equation*>

  <\equation*>
    Q<rsub|2><rprime|'>=<frac|3|V<rsub|1>>*Q<rsub|1>-<frac|4|V<rsub|2>>*Q<rsub|2>+3
  </equation*>

  Obtain expressions for <math|V<rsub|1>,V<rsub|2>> (in gals):

  <\equation*>
    V<rsub|1><around*|(|t|)>=V<rsub|1><around*|(|0|)>+1.5 <frac|gal|min>t-3
    <frac|gal|min>*t+1.5 <frac|gal|min>*t=V<rsub|1><around*|(|0|)>=<SI|30|gal>
  </equation*>

  <\equation*>
    V<rsub|2><around*|(|t|)>=V<rsub|2><around*|(|0|)>+1 <frac|gal|min>*t+3
    <frac|gal|min>*t-4 <frac|gal|min>*t=V<rsub|2><around*|(|0|)>=<SI|20|gal>
  </equation*>

  Luckily they remain constant. Plug in the differential equations:

  <\eqnarray*>
    <tformat|<table|<row|<cell|Q<rsub|1><rprime|'>>|<cell|=>|<cell|-<frac|1|10>*Q<rsub|1>+<frac|3|40>*Q<rsub|2>+<frac|3|2>>>|<row|<cell|Q<rsub|2><rprime|'>>|<cell|=>|<cell|<frac|1|10>Q<rsub|1>-<frac|1|5>Q<rsub|2>+3>>>>
  </eqnarray*>

  and in matrix form:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|Q<rsub|1>>>|<row|<cell|Q<rsub|2>>>>>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|10>>|<cell|<frac|3|40>>>|<row|<cell|<frac|1|10>>|<cell|-<frac|1|5>>>>>><bmatrix|<tformat|<table|<row|<cell|Q<rsub|1>>>|<row|<cell|Q<rsub|2>>>>>>+<bmatrix|<tformat|<table|<row|<cell|<frac|3|2>>>|<row|<cell|3>>>>>
  </equation*>

  (b) In equilibrium <math|<bmatrix|<tformat|<table|<row|<cell|Q<rsub|1>>>|<row|<cell|Q<rsub|2>>>>>><rprime|'>=0>.
  We need to solve:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|<frac|1|10>>|<cell|-<frac|3|40>>>|<row|<cell|-<frac|1|10>>|<cell|<frac|1|5>>>>>><bmatrix|<tformat|<table|<row|<cell|Q<rsub|1><rsup|E>>>|<row|<cell|Q<rsub|2><rsup|E>>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|3|2>>>|<row|<cell|3>>>>>
  </equation*>

  Denote

  <\equation*>
    A=
  </equation*>

  The solution is given by:

  <\equation*>
    \;
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|4>>
    <associate|auto-3|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      205> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      344> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>