<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Assignment 12>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date: TBE
  </author-affiliation>>>>

  <underline|Question 1>

  Find the Fourier series for <math|f<around*|(|x|)>=sin x+cos x> on
  <math|<around*|[|-\<mathpi\>,\<mathpi\>|]>>.

  Fourier series is defined as

  <\equation*>
    f<around*|(|x|)>=<frac|a<rsub|0>|2>+<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|a<rsub|n>*cos
    <frac|n*\<mathpi\>*x|L>+b<rsub|n>*sin <frac|n*\<mathpi\>*x|L>|)>
  </equation*>

  where

  <\equation*>
    a<rsub|0>=<frac|1|L>*<big|int><rsub|-L><rsup|L>f<around*|(|x|)>
    \<mathd\>x
  </equation*>

  <\equation*>
    a<rsub|n>=<frac|1|L>*<big|int><rsub|-L><rsup|L>f<around*|(|x|)>*cos
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  <\equation*>
    b<rsub|n>=<frac|1|L>*<big|int><rsub|-L><rsup|L>f<around*|(|x|)>*sin
    <frac|n*\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate Fourier coefficients:

  <\equation*>
    a<rsub|0>=<frac|1|\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>><around*|(|sin
    x+cos x|)> \<mathd\>x=<around*|[|-cos x+sin
    x|]><rsub|-\<mathpi\>><rsup|\<mathpi\>>=0
  </equation*>

  \;

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rsub|n>>|<cell|=>|<cell|<frac|1|\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>>sin
    x**cos <around*|(|n*x|)> \<mathd\>x+<frac|1|\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>>cos
    x*cos <around*|(|n*x|)> \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>><around*|[|sin
    <around*|(|x+n*x|)>+sin <around*|(|x-n*x|)>|]>
    \<mathd\>x+<frac|1|2\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>><around*|[|cos
    <around*|(|x+n*x|)>+cos <around*|(|x-n*x|)>|]> \<mathd\>x>>>>
  </eqnarray*>

  The integral over the sines is equal to zero because it is an integral of
  an odd function over a symmetric interval. Calculate the integral of the
  cosines.

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rsub|n>>|<cell|=>|<cell|<frac|1|\<mathpi\>>*<around*|[|<frac|sin
    <around*|(|x+n*x|)>|1+n>+<frac|sin <around*|(|x-n*x|)>|1-n>|]><rsub|0><rsup|\<mathpi\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|\<mathpi\>>*<around*|[|<frac|sin
    <around*|(|\<mathpi\>+n*\<mathpi\>|)>-sin 0|1+n>+<frac|sin
    <around*|(|\<mathpi\>-n*\<mathpi\>|)>-sin 0|1-n>|]>=0>>>>
  </eqnarray*>

  Here we assumed <math|n\<neq\>1>. If <math|n=1>:

  <\equation*>
    a<rsub|1>=<frac|1|2\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>><around*|[|cos
    <around*|(|2*x|)>+cos <around*|(|0|)>|]> \<mathd\>x=1
  </equation*>

  Calculate the other coefficient.

  <\eqnarray*>
    <tformat|<table|<row|<cell|b<rsub|n>>|<cell|=>|<cell|<frac|1|\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>>sin
    x**sin <around*|(|n*x|)> \<mathd\>x+<frac|1|\<mathpi\>>*<big|int><rsub|-\<mathpi\>><rsup|\<mathpi\>>cos
    x*sin <around*|(|n*x|)> \<mathd\>x>>>>
  </eqnarray*>

  The second integral is equal to zero because it's an integral of an odd
  function over a symmetric interval. First integral is:

  <\eqnarray*>
    <tformat|<table|<row|<cell|b<rsub|n>>|<cell|=>|<cell|<frac|1|\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>><around*|[|cos
    <around*|(|x-n*x|)>-cos <around*|(|x+n*x|)>|]>
    \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<frac|1|\<mathpi\>>*<around*|[|<frac|sin
    <around*|(|x-n*x|)>|1-n>-<frac|sin <around*|(|x+n*x|)>|1+n>|]><rsub|0><rsup|\<mathpi\>>=0>>>>
  </eqnarray*>

  Here we also assumed <math|n\<neq\>1>. If we set <math|n=1>:

  <\equation*>
    b<rsub|1>=<frac|1|\<mathpi\>>*<big|int><rsub|0><rsup|\<mathpi\>><around*|[|cos
    <around*|(|0|)>-cos <around*|(|2*x|)>|]> \<mathd\>x=1
  </equation*>

  In conclusion, <math|a<rsub|n>,b<rsub|n>> are zero for all <math|n> except
  <math|n=1>, for which <math|a<rsub|1>,b<rsub|1>=1>. If we plug the
  coefficients in the formula for the series we get:

  <\equation*>
    f<around*|(|x|)>=a<rsub|1>*cos <frac|1*\<mathpi\>*x|\<mathpi\>>+b<rsub|1>*sin<frac|1*\<mathpi\>*x|\<mathpi\>>=cos
    x+sin x
  </equation*>

  As expected, <math|sin x+cos x> is its own Fourier sreies.

  <underline|Question 2>

  Fourier series for

  <\equation*>
    f<around*|(|x|)>=-x,<application-space|1em><around*|[|-L,L|]>
  </equation*>

  Calculate Fourier coefficients.

  <\equation*>
    a<rsub|0>=<big|int><rsub|-L><rsup|L><around*|(|-x|)>
    \<mathd\>x=<around*|[|f<around*|(|x|)><text| odd>|]>=0
  </equation*>

  <\equation*>
    a<rsub|n>=-<big|int><rsub|-L><rsup|L>x*cos <frac|n*\<mathpi\>*x|L>
    \<mathd\>x
  </equation*>

  Integrate by parts:

  <\equation*>
    <big|int>x*cos <frac|n*\<mathpi\>*x|L>
    \<mathd\>x=<frac|L*x|n*\<mathpi\>>*sin
    <around*|(|<frac|n*\<mathpi\>*x|L>|)>-<frac|L<rsup|2>|n<rsup|2>*\<pi\><rsup|2>>*cos
    <around*|(|<frac|n*\<mathpi\>*x|L> |)>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rsub|n>>|<cell|=>|<cell|-<frac|L|n*\<mathpi\>><around*|[|x*sin
    <around*|(|<frac|n*\<mathpi\>*x|L> |)>-<frac|L|n*\<mathpi\>>*cos
    <around*|(|<frac|n*\<mathpi\>*x|L> |)>|]><rsub|-L><rsup|L>>>|<row|<cell|>|<cell|=>|<cell|-<frac|L|n*\<mathpi\>>*<around*|[|<around*|(|L*sin<around*|(|n*\<mathpi\>|)>+L*sin
    <around*|(|-n*\<mathpi\>|)>|)>-<frac|L|n*\<mathpi\>>*<around*|(|cos
    <around*|(|n*\<mathpi\>|)>-cos <around*|(|-n*\<mathpi\>|)>|)>|]>=0>>>>
  </eqnarray*>

  <\equation*>
    b<rsub|n>=-<big|int><rsub|-L><rsup|L>x*sin <frac|n*\<mathpi\>*x|L>
    \<mathd\>x
  </equation*>

  Integrate by parts:

  <\equation*>
    <big|int>x*sin <frac|n*\<mathpi\>*x|L>
    \<mathd\>x=-<frac|L*x|n*\<mathpi\>>*cos
    <around*|(|<frac|n*\<mathpi\>*x|L>|)>-<frac|L<rsup|2>|n<rsup|2>*\<mathpi\><rsup|2>>*sin
    <around*|(|<frac|n*\<mathpi\>*x|L>|)>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|b<rsub|n>>|<cell|=>|<cell|-<frac|L|n*\<mathpi\>>*<around*|[|x*cos
    <around*|(|<frac|n*\<mathpi\>*x|L>|)>+<frac|L|n*\<mathpi\>>*sin
    <around*|(|<frac|n*\<mathpi\>*x|L>|)>|]><rsub|-L><rsup|L>>>|<row|<cell|>|<cell|=>|<cell|-<frac|L|n*\<mathpi\>>*<around*|[|<around*|(|L*cos
    <around*|(|n*\<mathpi\>|)>+L*cos <around*|(|-n*\<mathpi\>|)>|)>+<frac|L|n*\<mathpi\>>*<around*|(|sin
    <around*|(|n*\<mathpi\>|)>+sin <around*|(|-n*\<mathpi\>|)>|)>|]>=-<frac|2L<rsup|2>*cos
    <around*|(|n*\<mathpi\>|)>|n*\<mathpi\>>>>>>
  </eqnarray*>

  <\equation*>
    b<rsub|n>=-<frac|2L<rsup|2>|n*\<mathpi\>>*<around*|(|-1|)><rsup|n>
  </equation*>

  Fourier series for <math|f<around*|(|x|)>> on given interval is

  <\equation*>
    f<around*|(|x|)>=-<big|sum><rsub|n=1><rsup|\<infty\>><frac|2L<rsup|2>|n*\<mathpi\>>*<around*|(|-1|)><rsup|n>*sin
    <frac|n*\<mathpi\>*x|L>
  </equation*>

  <underline|Question 3>

  Fourier series for

  <\equation*>
    f<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|x>|<cell|-\<mathpi\>\<leq\>x\<leq\>0>>|<row|<cell|0>|<cell|0\<leq\>x\<less\>\<mathpi\>>>>>>
  </equation*>

  on <math|<around*|[|-\<mathpi\>,\<mathpi\>|]>>. Calculate Fourier
  coefficients.

  <\equation*>
    a<rsub|0>=<big|int><rsub|-\<mathpi\>><rsup|0>x
    \<mathd\>x+0=-<frac|\<mathpi\><rsup|2>|2>
  </equation*>

  <\equation*>
    a<rsub|n>=<big|int><rsub|-\<mathpi\>><rsup|0>x*cos <around*|(|n*x|)>
    \<mathd\>x+0=-<frac|1|n><around*|[|x*sin <around*|(|n*x|)>-<frac|1|n>*cos
    <around*|(|n*x |)>|]><rsub|-\<mathpi\>><rsup|0>=<frac|1-cos
    <around*|(|n*\<mathpi\>|)>|n<rsup|2>>=<frac|1-<around*|(|-1|)><rsup|n>|n<rsup|2>>
  </equation*>

  <\equation*>
    b<rsub|n>=<big|int><rsub|-\<mathpi\>><rsup|0>x*sin <around*|(|n*x|)>
    \<mathd\>x+0=-<frac|1|n>*<around*|[|x*cos
    <around*|(|n*x|)>+<frac|1|n>*sin <around*|(|n*x|)>|]><rsub|-\<mathpi\>><rsup|0>=-<frac|\<mathpi\>|n>*cos
    <around*|(|\<mathpi\>*n|)>=-<frac|\<mathpi\>|n>*<around*|(|-1|)><rsup|n>
  </equation*>

  Fourier series in given interval is

  <\equation*>
    f<around*|(|x|)>=-<frac|\<mathpi\><rsup|2>|4>+<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|<frac|1-<around*|(|-1|)><rsup|n>|n<rsup|2>>*cos
    <around*|(|n*x|)>-<frac|\<mathpi\>|n>*<around*|(|-1|)><rsup|n>*sin
    <around*|(|n*x|)>|)>
  </equation*>

  <underline|Question 4>

  Fourier series for

  <\equation*>
    f<around*|(|t|)>=<choice|<tformat|<table|<row|<cell|1-t>|<cell|0\<leq\>t\<leq\>1>>|<row|<cell|-<around*|(|1-t|)>>|<cell|1\<leq\>t\<less\>2>>>>>
  </equation*>

  on <math|<around*|[|0,2|]>>. Calculate Fourier coefficients.

  <\equation*>
    a<rsub|0>=<big|int><rsub|0><rsup|1><around*|(|1-t|)>
    \<mathd\>t-<big|int><rsub|1><rsup|2><around*|(|1-t|)>
    \<mathd\>t=<around*|[|t-<frac|1|2>*t<rsup|2>|]><rsup|1><rsub|0>-<around*|[|t-<frac|1|2>*t<rsup|2>|]><rsup|2><rsub|1>=1
  </equation*>

  <\equation*>
    a<rsub|n>=<big|int><rsub|0><rsup|1><around*|(|1-t|)>*cos
    <around*|(|n*\<mathpi\>*t|)>-<big|int><rsub|1><rsup|2><around*|(|1-t|)>*cos
    <around*|(|n*\<mathpi\>*t|)>
  </equation*>

  <\equation*>
    <big|int><around*|(|1-t|)>*cos <around*|(|n*\<mathpi\>*t|)>=<frac|sin
    <around*|(|n*\<mathpi\>*t|)>|n*\<mathpi\>>*<around*|(|1-t|)>-<frac|cos
    <around*|(|n*\<mathpi\>*t|)>|n<rsup|2>*\<mathpi\><rsup|2>>*
  </equation*>

  <\equation*>
    a<rsub|n>=-<frac|1|n*\<mathpi\>><around*|[|<around*|(|1-t|)>*sin
    <around*|(|n*\<mathpi\>*t|)>+<frac|1|n*\<mathpi\>>*cos
    <around*|(|n*\<mathpi\>*t|)>|]><rsup|1><rsub|0>+<frac|1|n*\<mathpi\>><around*|[|<around*|(|1-t|)>*sin
    <around*|(|n*\<mathpi\>*t|)>+<frac|1|n*\<mathpi\>>*cos
    <around*|(|n*\<mathpi\>*t|)>|]><rsup|2><rsub|1>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rsub|n>>|<cell|=>|<cell|-<frac|1|n*\<mathpi\>>*<around*|[|<frac|<around*|(|-1|)><rsup|n>|n*\<mathpi\>>-<frac|1|n*\<mathpi\>>|]>+<frac|1|n*\<mathpi\>>*<around*|[|<frac|1|n*\<mathpi\>>-<frac|<around*|(|-1|)><rsup|n>|n*\<mathpi\>>|]>=<frac|2|n<rsup|2>*\<mathpi\><rsup|2>>*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>>>>>
  </eqnarray*>

  <\equation*>
    b<rsub|n>=<big|int><rsub|0><rsup|1><around*|(|1-t|)>*sin
    <around*|(|n*\<mathpi\>*t|)>-<big|int><rsub|1><rsup|2><around*|(|1-t|)>*sin
    <around*|(|n*\<mathpi\>*t|)>
  </equation*>

  <\equation*>
    <big|int><around*|(|1-t|)>*sin <around*|(|n*\<mathpi\>*t|)>=-<frac|cos
    <around*|(|n*\<mathpi\>*t|)>|n*\<mathpi\>>*<around*|(|1-t|)>-<frac|sin<around*|(|n*\<mathpi\>*t|)>|n<rsup|2>*\<mathpi\><rsup|2>>
  </equation*>

  <\equation*>
    b<rsub|n>=-<frac|1|n*\<mathpi\>>*<around*|[|<around*|(|1-t|)>*cos
    <around*|(|n*\<mathpi\>*t|)>+<frac|sin
    <around*|(|n*\<mathpi\>*t|)>|n*\<mathpi\>>|]><rsup|1><rsub|0>+<frac|1|n*\<mathpi\>>*<around*|[|<around*|(|1-t|)>*cos
    <around*|(|n*\<mathpi\>*t|)>+<frac|sin
    <around*|(|n*\<mathpi\>*t|)>|n*\<mathpi\>>|]><rsup|2><rsub|1>
  </equation*>

  <\equation*>
    b<rsub|n>=<frac|1|n*\<mathpi\>>-<frac|1|n*\<mathpi\>>*=0*
  </equation*>

  Fourier series for <math|f<around*|(|t|)>> on given interval is

  <\equation*>
    f<around*|(|t|)>=<frac|1|2>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|2|n<rsup|2>*\<mathpi\><rsup|2>>*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*cos
    <around*|(|n*\<mathpi\>*t|)>
  </equation*>

  Another formula for <math|f<around*|(|t|)>>:

  <\equation*>
    f<around*|(|t|)>=<frac|1|2>+<big|sum><rsub|n<text|
    odd>><frac|4|n<rsup|2>*\<mathpi\><rsup|2>>*cos
    <around*|(|n*\<mathpi\>*t|)>
  </equation*>

  <underline|Question 5>

  Given the initial value problem:

  <\equation*>
    y<rprime|''>+4*y=f<around*|(|t|)>,<application-space|1em><choice|<tformat|<table|<row|<cell|y<around*|(|0|)>=1>>|<row|<cell|y<rprime|'><around*|(|0|)>=0>>>>>
  </equation*>

  where <math|f<around*|(|t|)>> is as in Question 4.

  (i) Find a particular solution <math|y<rsub|p>> of the form

  <\equation*>
    y<rsub|p>=<frac|a<rsub|0>|2>+<big|sum><rsub|n=1><rsup|\<infty\>><around*|[|a<rsub|n>*cos
    <around*|(|n*\<mathpi\>*t|)>+b<rsub|n>*sin
    <around*|(|n*\<mathpi\>*t|)>|]>
  </equation*>

  Now we plug in <math|y<rsub|p>> in the ODE and equate coefficients. By
  observation of <math|f<around*|(|t|)>> and the ODE it is clear that

  <\equation*>
    4\<cdot\><frac|a<rsub|0>|2>=<frac|1|2>\<rightarrow\>a<rsub|0>=<frac|1|4>
  </equation*>

  Additionaly, as there is only a second derivative of <math|y<rsub|p>>, we
  can infer that <math|b<rsub|n>=0>. (Second derivative of sine and cosine
  returns scalar multiples of sine and cosine, respectively).

  <\equation*>
    y<rsub|p><rprime|''>=<big|sum><rsub|n=1><rsup|\<infty\>><around*|(|-n<rsup|2>*\<mathpi\><rsup|2>*a<rsub|n>|)>*cos
    <around*|(|n*\<mathpi\>*t|)>
  </equation*>

  Plug in the ODE:

  <\equation*>
    <big|sum><rsub|n=1><rsup|\<infty\>><around*|(|-n<rsup|2>*\<mathpi\><rsup|2>*a<rsub|n>|)>*cos
    <around*|(|n*\<mathpi\>*t|)>+4*<around*|(|<frac|1|8>+<big|sum><rsub|n=1><rsup|\<infty\>>a<rsub|n>*cos
    <around*|(|n*\<mathpi\>*t|)>|)>=<frac|1|2>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|2|n<rsup|2>*\<mathpi\><rsup|2>>*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*cos
    <around*|(|n*\<mathpi\>*t|)>
  </equation*>

  <\equation*>
    <big|sum><rsub|n=1><rsup|\<infty\>><around*|[|-n<rsup|2>*\<mathpi\><rsup|2>+4|]>*a<rsub|n>*cos
    <around*|(|n*\<mathpi\>*t|)>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|2|n<rsup|2>*\<mathpi\><rsup|2>>*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*cos
    <around*|(|n*\<mathpi\>*t|)>
  </equation*>

  <\equation*>
    a<rsub|n>=<frac|2*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*|n<rsup|2>*\<mathpi\><rsup|2>*<around*|(|4-n<rsup|2>*\<mathpi\><rsup|2>|)>>
  </equation*>

  The particular solution <math|y<rsub|p>> is:

  <\equation*>
    y<rsub|p>=<frac|1|8>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|2*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*|n<rsup|2>*\<mathpi\><rsup|2>*<around*|(|4-n<rsup|2>*\<mathpi\><rsup|2>|)>>*cos
    <around*|(|n*\<mathpi\>*t|)><application-space|1em>\<forall\>t
  </equation*>

  (ii) Find general solution to associated homogeneous equation.
  Characteristic equation is:

  <\equation*>
    \<lambda\><rsup|2>+4=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=\<pm\>2\<mathi\>
  </equation*>

  General, real solution to the homogeneous equation, <math|y<rsub|h>>, is:

  <\equation*>
    y<rsub|h>=c<rsub|1>*cos <around*|(|2*t|)>+c<rsub|2>*sin
    <around*|(|2*t|)><application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,\<forall\>t
  </equation*>

  (iii) General solution to ODE is

  <\equation*>
    y=y<rsub|h>+y<rsub|p>=c<rsub|1>*cos <around*|(|2*t|)>+c<rsub|2>*sin
    <around*|(|2*t|)>+<frac|1|8>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|2*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*|n<rsup|2>*\<mathpi\><rsup|2>*<around*|(|4-n<rsup|2>*\<mathpi\><rsup|2>|)>>*cos
    <around*|(|n*\<mathpi\>*t|)>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,\<forall\>t
  </equation*>

  Substitute initial conditions: <math|y<around*|(|0|)>=1,y<rprime|'><around*|(|0|)>=0>.

  <\equation*>
    y<around*|(|0|)>=c<rsub|1>+<frac|1|8>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|2*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*|n<rsup|2>*\<mathpi\><rsup|2>*<around*|(|4-n<rsup|2>*\<mathpi\><rsup|2>|)>>=1
  </equation*>

  <\equation*>
    c<rsub|1>=<frac|7|8>-<big|sum><rsub|n=1><rsup|\<infty\>><frac|2*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*|n<rsup|2>*\<mathpi\><rsup|2>*<around*|(|4-n<rsup|2>*\<mathpi\><rsup|2>|)>>
  </equation*>

  <\equation*>
    y<rprime|'><around*|(|0|)>=2*c<rsub|2>\<rightarrow\>c<rsub|2>=0
  </equation*>

  Unique solution satisfying ICs is:

  <\equation*>
    y=<frac|1|8>+<around*|(|<frac|7|8>-<big|sum><rsub|n=1><rsup|\<infty\>><frac|2*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*|n<rsup|2>*\<mathpi\><rsup|2>*<around*|(|4-n<rsup|2>*\<mathpi\><rsup|2>|)>>|)>*cos
    <around*|(|2*t|)>+<big|sum><rsub|n=1><rsup|\<infty\>><frac|2*<around*|[|1-*<around*|(|-1|)><rsup|n>|]>*|n<rsup|2>*\<mathpi\><rsup|2>*<around*|(|4-n<rsup|2>*\<mathpi\><rsup|2>|)>>*cos
    <around*|(|n*\<mathpi\>*t|)>,<application-space|1em>\<forall\>t
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>