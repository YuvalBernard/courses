<TeXmacs|2.1>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Assignment 3>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date:
  </author-affiliation>>>>

  <part*|Page 38>

  <underline|Question 1>

  (a) <math|y<rprime|'>+3y=t+\<mathe\><rsup|-2t>>. Rewrite the equation:

  <\equation*>
    y<rprime|'>=t+\<mathe\><rsup|-2t>-3y
  </equation*>

  Inspect the expression for <math|y<rprime|'>> from different \Pangles\Q:

  <\itemize>
    <item>While <math|t> is constant, <math|y<rprime|'>> becomes increasingly
    negative for positive <math|y> and increasingly positive for negative
    <math|y>.

    <item>While <math|y> is constant, <math|y<rprime|'>> is decreases a bit
    in the region <math|0\<less\>t\<less\><frac|ln 2|2>>, where
    <math|\<partial\>y<rprime|'>/\<partial\>t\<less\>0>. after which,
    <math|y<rprime|'>> grows almost linearly as the term
    <math|\<mathe\><rsup|-2t>> effectively diminishes.

    <item><math|y<rprime|'>=0> on the curve
    <math|y=<frac|1|3><around*|(|t+\<mathe\><rsup|-2t>|)>>.
  </itemize>

  \;

  <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0gw|0gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|cartesian|<point|0|0>|2>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-color|red|gr-auto-crop|true|<graphics||<math-at|t|<point|14|3.5>>|<math-at|y|<point|1.0|8.4>>|<math-at|4|<point|0.6|8>>|<with|arrow-end|\<gtr\>|<line|<point|1|0>|<point|1.0|8.0>>>|<with|arrow-end|\<gtr\>|<line|<point|1|4>|<point|14.0|4.0>>>|<with|color|blue|<line|<point|2|8>|<point|2.2|7.4>>>|<with|color|blue|<line|<point|2|6.6>|<point|2.6|6.0>>>|<with|color|blue|<line|<point|2|5.2>|<point|2.8|4.8>>>|<with|color|blue|<line|<point|2|4.2>|<point|2.8|4.2>>>|<with|color|blue|<line|<point|2|3.4>|<point|2.8|3.8>>>|<with|color|blue|<line|<point|2|2.6>|<point|2.6|3.2>>>|<with|color|blue|<line|<point|2|1.4>|<point|2.31974726353648|2.2>>>|<with|color|blue|<line|<point|4|8>|<point|4.6|7.2>>>|<with|color|blue|<line|<point|4|6.6>|<point|4.8|6.2>>>|<with|color|blue|<line|<point|4|5.2>|<point|5.0|5.0>>>|<with|color|blue|<line|<point|4|3.4>|<point|5.2|3.6>>>|<with|color|blue|<line|<point|4|2.4>|<point|5.2|3.0>>>|<with|color|blue|<line|<point|4|1.2>|<point|4.8|2.0>>>|<with|color|blue|<line|<point|6|8>|<point|6.8|7.6>>>|<with|color|blue|<line|<point|6|7>|<point|6.8|6.8>>>|<with|color|blue|<line|<point|6|5.4>|<point|7.0|5.4>>>|<with|color|blue|<line|<point|6|4.4>|<point|7.2|4.8>>>|<with|color|blue|<line|<point|6|3>|<point|6.6|3.6>>>|<with|color|blue|<line|<point|6|1.6>|<point|6.4|2.6>>>|<with|color|blue|<line|<point|8.2|6.8>|<point|9.2|6.4>>>|<with|color|blue|<line|<point|8.2|8>|<point|8.8|7.2>>>|<with|color|blue|<line|<point|8.2|1.72433>|<point|8.4|2.6>>>|<with|color|blue|<line|<point|8|3>|<point|8.8|3.6>>>|<with|color|blue|<line|<point|8.2|4>|<point|9.4|4.4>>>|<with|color|red|dash-style|10|<smooth|<point|1|4.6>|<point|2.0|4.2>|<point|3.2|4.2>|<point|4.4|4.6>|<point|7.0|5.4>>>|<with|color|red|dash-style|10|<smooth|<point|7|5.4>|<point|9.6|6.2>>>|<with|color|blue|<smooth|<point|9.8|6.2>|<point|10.8|6.2>>>|<with|color|blue|<smooth|<point|8.6|5>|<point|9.6|5.2>>>|<with|color|red|<math-at|y=<frac|1|3><around*|(|t+\<mathe\><rsup|-2t>|)>|<point|9.6|6.6>>>>>

  (b) Inspecting the direction field suggests that
  <math|y\<rightarrow\>\<infty\>> as <math|t\<rightarrow\>\<infty\>>, and
  grows in a linear fashion.

  (c) Solve using integration factor method. For an equation of the form

  <\equation*>
    y<rprime|'>+a<around*|(|t|)>*y=b<around*|(|t|)>
  </equation*>

  the solution is\ 

  <\equation>
    y=\<mathe\><rsup|-<big|int>a<around*|(|t|)>
    \<mathd\>t>*<around*|[|<big|int>b<around*|(|t|)>*\<mathe\><rsup|<big|int>a<around*|(|t|)>
    \<mathd\>t> \<mathd\>t+c|]>
  </equation>

  In our case, <math|a=3,b=t+\<mathe\><rsup|-2t>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|\<mathe\><rsup|-3t>*<around*|[|<big|int><around*|(|t+\<mathe\><rsup|-2t>|)>*\<mathe\><rsup|3t>
    \<mathd\>t+c|]>>>|<row|<cell|>|<cell|=>|<cell|\<mathe\><rsup|-3t>*<around*|[|<big|int>t*\<mathe\><rsup|3t>
    \<mathd\>t+<big|int>\<mathe\><rsup|t>
    \<mathd\>t+c|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|\<mathe\><rsup|-3t>**<big|int>t*\<mathe\><rsup|3t>
    \<mathd\>t|]>+\<mathe\><rsup|-2t>+c*\<mathe\><rsup|-3t>>>>>
  </eqnarray*>

  The integral <math|*<big|int>t*\<mathe\><rsup|3t> \<mathd\>t> is solvable
  by parts, using the formula:

  <\equation>
    <big|int>u<rprime|'>*v \<mathd\>t=u*v-<big|int>u*v<rprime|'> \<mathd\>t
  </equation>

  \ pick <math|v=t,u<rprime|'>=\<mathe\><rsup|3t>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int>t*\<mathe\><rsup|3t>
    \<mathd\>t>|<cell|=>|<cell|<frac|1|3>t*\<mathe\><rsup|3t>-<frac|1|3><big|int>\<mathe\><rsup|3t>
    \<mathd\>t>>|<row|<cell|>|<cell|=>|<cell|<frac|1|3>\<mathe\><rsup|3t><around*|(|t-<frac|1|3>|)>>>>>
  </eqnarray*>

  Therefore,

  <\equation*>
    y=<frac|1|3>t-<frac|1|9>+\<mathe\><rsup|-2t>+c*\<mathe\><rsup|-3t>
  </equation*>

  Because the exponents approach zero quickly, for large <math|t> the
  solution behaves according to <math|<frac|t|3>-<frac|1|9>>, or in other
  words, linearly with <math|t>.

  <underline|Question 13>

  <\equation*>
    y<rprime|'>-y=2t*\<mathe\><rsup|2t>,<application-space|1em>y<around*|(|0|)>=1
  </equation*>

  According to eq. (1), (<math|a=-1,b=2t*\<mathe\><rsup|2t>>)

  <\equation*>
    y=\<mathe\><rsup|t>*<around*|[|<big|int>2t*\<mathe\><rsup|t>
    \<mathd\>t+c|]>
  </equation*>

  Solve the integral by parts. Pick <math|u<rprime|'>=\<mathe\><rsup|t>,v=t.>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int>t*\<mathe\><rsup|t>
    \<mathd\>t>|<cell|=>|<cell|t*\<mathe\><rsup|t>-<big|int>\<mathe\><rsup|t>
    \<mathd\>t=\<mathe\><rsup|t><around*|(|t-1|)>>>>>
  </eqnarray*>

  Therefore,

  <\equation*>
    y=2\<mathe\><rsup|2t><around*|(|t-1|)>+c*\<mathe\><rsup|t>
  </equation*>

  Input the IC to find <math|c>:

  <\equation*>
    y<around*|(|0|)>=1=2<around*|(|0-1|)>+c*\<rightarrow\>c=3
  </equation*>

  The unique solution is <math|y=2\<mathe\><rsup|2t><around*|(|t-1|)>+3*\<mathe\><rsup|t>>.

  <\underline>
    Question 15
  </underline>

  <\equation*>
    t*y<rprime|'>+2y=t<rsup|2>-t+1,<application-space|1em>y<around*|(|1|)>=<frac|1|2>,<application-space|1em>t\<gtr\>0
  </equation*>

  Given <math|t\<neq\>0> in the requested interval, we can divide by <math|t>
  to get

  <\equation*>
    y<rprime|'>+<frac|2|t>*y=t-1+<frac|1|t>
  </equation*>

  According to eq. (1), <math|a=<frac|2|t>,b=t-1+<frac|1|t>>.

  <\equation*>
    \<mathe\><rsup|<big|int>a<around*|(|t|)>
    \<mathd\>t>=\<mathe\><rsup|2<big|int><frac|\<mathd\>t|t>>=2*ln
    <around*|\||t|\|>=t<rsup|2>
  </equation*>

  <\equation*>
    \<mathe\><rsup|-<big|int>a<around*|(|t|)>
    \<mathd\>t>=\<mathe\><rsup|-2<big|int><frac|\<mathd\>t|t>>=-2*ln
    <around*|\||t|\|>=<frac|1|t<rsup|2>>
  </equation*>

  <\equation*>
    y=<frac|1|t<rsup|2>>*<around*|[|<big|int><around*|(|t-1+<frac|1|t>|)>*t<rsup|2>
    \<mathd\>t+c|]>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int><around*|(|t-1+<frac|1|t>|)>*t<rsup|2>
    \<mathd\>t>|<cell|=>|<cell|<big|int><around*|(|t<rsup|3>-t<rsup|2>+t|)>
    \<mathd\>t>>|<row|<cell|>|<cell|=>|<cell|<frac|t<rsup|4>|4>-<frac|t<rsup|3>|3>+<frac|t<rsup|2>|2>>>>>
  </eqnarray*>

  Therefore,

  <\equation*>
    y=<frac|1|t<rsup|2>><around*|[|<frac|t<rsup|4>|4>-<frac|t<rsup|3>|3>+<frac|t<rsup|2>|2>+c|]>=<frac|t<rsup|2>|4>-<frac|t|3>+<frac|1|2>+<frac|c|t<rsup|2>>,<application-space|1em>t\<gtr\>0
  </equation*>

  Input IC:

  <\equation*>
    y<around*|(|1|)>=<frac|1|2>=<frac|1|4>-<frac|1|3>+<frac|1|2>+c\<rightarrow\>c=<frac|1|12>
  </equation*>

  The unique solution is <math|y=<frac|t<rsup|2>|4>-<frac|t|3>+<frac|1|2>+<frac|1|12t<rsup|2>>>,
  <math|t\<gtr\>0>.

  <underline|Question 18>

  <\equation*>
    t*y<rprime|'>+2y=sin t,<application-space|1em>y<around*|(|\<mathpi\>/2|)>=1
  </equation*>

  In the given IC, <math|t\<gtr\>0>. Divide by <math|t> assuming
  <math|t\<neq\>0>.

  <\equation*>
    y<rprime|'>+<frac|2|t>*y=<frac|sin t|t>
  </equation*>

  Using eq. (1), (<math|a=<frac|2|t>,b=<frac|sin t|t>>)

  <\equation*>
    \<mathe\><rsup|<big|int>a*\<mathd\>t>=\<mathe\><rsup|<big|int><frac|2|t>
    \<mathd\>t>=t<rsup|2 >,<application-space|1em>\<mathe\><rsup|-<big|int>a*\<space\>\<mathd\>t>=<frac|1|t<rsup|2>>
  </equation*>

  <\equation*>
    y=<frac|1|t<rsup|2>><around*|[|<big|int><frac|sin t|t>\<cdot\>t<rsup|2>
    \<mathd\>t+c|]>
  </equation*>

  Solve the integral using eq. (2). Pick <math|u<rprime|'>=sin t,v=t>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int>sin t\<cdot\>t
    \<mathd\>t>|<cell|=>|<cell|-t*cos t+<big|int>cos t
    \<mathd\>t>>|<row|<cell|>|<cell|=>|<cell|-t*cos t+sin t>>>>
  </eqnarray*>

  The general solution is

  <\equation*>
    y=-<frac|cos t|t>+<frac|sin t|t<rsup|2>>+<frac|c|t<rsup|2>>,<application-space|1em>t\<gtr\>0
  </equation*>

  Input the IC:

  <\equation*>
    y<around*|(|\<mathpi\>/2|)>=1=0+<frac|1|\<mathpi\><rsup|2>/4>+c*<frac|1|\<mathpi\><rsup|2>/4>\<rightarrow\>c=<frac|\<mathpi\><rsup|2>|4>-1
  </equation*>

  The unique solution is <math|y=-<frac|cos t|t>+<frac|sin
  t|t<rsup|2>>+<around*|(|<frac|\<mathpi\><rsup|2>|4>-1|)><frac|1|t<rsup|2>>>,
  <math|t\<gtr\>0>.

  <underline|Question 19>

  <\equation*>
    t<rsup|3>*y<rprime|'>+4t<rsup|2>*y=\<mathe\><rsup|-t>,<application-space|1em>y<around*|(|-1|)>=0
  </equation*>

  For the given IC, <math|t\<less\>0>. To find the specific solution we
  divide by <math|t<rsup|3>>, assuming <math|t\<neq\>0>.

  <\equation*>
    y<rprime|'>+<frac|4|t>*y=<frac|1|t<rsup|3>>*\<mathe\><rsup|-t>
  </equation*>

  Using eq. (1), <math|<around*|(|a=<frac|4|t>,b=<frac|1|t<rsup|3>>*\<mathe\><rsup|-t>|)>>

  <\equation*>
    \<mathe\><rsup|<big|int><frac|4|t> \<mathd\>t>=t<rsup|4>,<application-space|1em>e<rsup|-<big|int><frac|4|t>
    \<mathd\>t>=<frac|1|t<rsup|4>>
  </equation*>

  <\equation*>
    y=<frac|1|t<rsup|4>><around*|[|<big|int><frac|1|t<rsup|3>>*\<mathe\><rsup|-t>\<cdot\>t<rsup|4>
    \<mathd\>t+c|]>
  </equation*>

  Solve the integral. Pick <math|u<rprime|'>=\<mathe\><rsup|-t>,v=t>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int>t*\<mathe\><rsup|-t>
    \<mathd\>t>|<cell|=>|<cell|-t*\<mathe\><rsup|-t>+<big|int>\<mathe\><rsup|-t>
    \<mathd\>t>>|<row|<cell|>|<cell|=>|<cell|-\<mathe\><rsup|-t><around*|(|t+1|)>>>>>
  </eqnarray*>

  Therefore,\ 

  <\equation*>
    y=<frac|1|t<rsup|4>><around*|[|c-\<mathe\><rsup|-t><around*|(|t+1|)>|]>,<application-space|1em>t\<neq\>0
  </equation*>

  Input the IC:

  <\equation*>
    y<around*|(|-1|)>=0=c
  </equation*>

  The unique solution is <math|y=-<frac|1|t<rsup|4>>*\<mathe\><rsup|-t><around*|(|t+1|)>>
  in the domain <math|t\<less\>0>.

  <part*|Page 45>

  <underline|Question 1>

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>x>=<frac|x<rsup|2>|y>,<application-space|1em>y\<neq\>0
  </equation*>

  Integrate:

  <\equation*>
    <big|int>y \<mathd\>y=<big|int>x<rsup|2> \<mathd\>x
  </equation*>

  <\equation*>
    <frac|y<rsup|2>|2>=<frac|x<rsup|3>|3>+c
  </equation*>

  <\equation*>
    y=\<pm\><sqrt|<frac|2|3>x<rsup|3>+2c>,<application-space|1em>y\<neq\>0,<application-space|1em><around*|(|<frac|x<rsup|3>|3>+c|)>\<gtr\>0
  </equation*>

  \;

  <underline|Question 5>

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>x>=<around*|(|cos<rsup|2>
    x|)><around*|(|cos<rsup|2> 2y|)>
  </equation*>

  Rewrite and integrate:

  <\equation*>
    <big|int><frac|\<mathd\>y|cos<rsup|2> 2y>=<big|int>cos<rsup|2> x
    \<mathd\>x,<application-space|1em>cos<rsup|2> 2y\<neq\>0
  </equation*>

  Let's focus on the RHS:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int>cos<rsup|2> x
    \<mathd\>x>|<cell|=>|<cell|<frac|1|2><big|int><around*|(|1+cos 2x
    |)>\<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2><around*|(|x+<frac|1|2>*sin
    2x+c|)>>>>>
  </eqnarray*>

  Back to the original equation:

  <\equation*>
    <big|int><frac|\<mathd\>y|cos<rsup|2> 2y>=<frac|1|2>*tan
    2x=<frac|1|2><around*|(|x+<frac|1|2>*sin 2x+c|)>
  </equation*>

  <\equation*>
    tan 2y=x+<frac|1|2>*sin 2x+c,<application-space|1em>cos 2y\<neq\>0
  </equation*>

  The solution is given implicitly.

  What if <math|cos<rsup|2> 2y\<equiv\>0>?

  <\equation*>
    cos 2y=0\<Longleftrightarrow\>2y=arccos<around*|(|0|)>=<frac|\<mathpi\>|2>+\<mathpi\>\<cdot\>n,<application-space|1em>n\<in\>\<bbb-Z\>
  </equation*>

  <\equation*>
    y=<frac|\<mathpi\>|4>+<frac|\<mathpi\>|2>\<cdot\>n,<application-space|1em>n\<in\>\<bbb-Z\>,<application-space|1em>\<forall\>x
  </equation*>

  This is also a solution.

  <underline|Question 8>

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>x>=<frac|x<rsup|2>|1+y<rsup|2>>
  </equation*>

  Integrate.

  <\equation*>
    <big|int><around*|(|1+y<rsup|2>|)> \<mathd\>y=<big|int>x<rsup|2>\<mathd\>x
  </equation*>

  <\equation*>
    y+<frac|y<rsup|3>|3>=<frac|x<rsup|3>|3>+c
  </equation*>

  The solution is given implicitly for all <math|x> and <math|y>.

  <underline|Question 23>

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>x>=2y<rsup|2>+x*y<rsup|2>,<application-space|1em>y<around*|(|0|)>=1
  </equation*>

  Rewrite the equation:

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>x>=y<rsup|2><around*|(|2+x|)>
  </equation*>

  Integrate.

  <\equation*>
    <big|int><frac|\<mathd\>y|y<rsup|2>>=<big|int><around*|(|2+x|)>
    \<mathd\>x
  </equation*>

  <\equation*>
    -<frac|1|y>=2x+<frac|x<rsup|2>|2>+c,<application-space|1em>y\<neq\>0
  </equation*>

  <\equation*>
    y=-<frac|1|2x+<frac|x<rsup|2>|2>+c>,<application-space|1em><around*|(|2x+<frac|x<rsup|2>|2>+c|)>\<neq\>0
  </equation*>

  Input the IC:

  <\equation*>
    y<around*|(|0|)>=1=-<frac|1|c>\<rightarrow\>c=-1
  </equation*>

  The specific solution is\ 

  <\equation*>
    y=-<frac|1|2x+<frac|x<rsup|2>|2>-1>,<application-space|1em><around*|(|2x+<frac|x<rsup|2>|2>-1|)>\<neq\>0
  </equation*>

  <math|y> attains its minimum value when <math|2x+<frac|x<rsup|2>|2>-1>
  reaches its maximum value.

  <\equation*>
    <frac|\<mathd\>|\<mathd\>x><around*|(|2x+<frac|x<rsup|2>|2>-1|)>=2+x
  </equation*>

  The expression equals zero when <math|x=-2>, for which

  <\equation*>
    y<rsub|min>=-<frac|1|-4+2-1>=<frac|1|3>
  </equation*>

  <part*|Page 57>

  <underline|Question 1>

  Denote <math|y<around*|(|t|)>> the dye concentration in the tank. The
  equation for <math|y<rprime|'><around*|(|t|)>> is as follows:

  <\equation*>
    y<rprime|'><around*|(|t|)>=-<SI|2|L/min>\<cdot\><frac|<SI|1|g|L<rsup|-1>>|<SI|200|L>>\<cdot\>y<around*|(|t|)>=-0.01y<around*|(|t|)>,<application-space|1em>y<around*|(|0|)>=<SI|1|g|L<rsup|-1>>
  </equation*>

  The solution to the DE is a decaying exponent:

  <\equation*>
    y<around*|(|t|)>=y<around*|(|0|)>*\<mathe\><rsup|-0.01*t>=\<mathe\><rsup|-0.01t>
  </equation*>

  We are asked to calculate the time it takes for the dye concentration to
  reach 1% of its initial value. In other words, find <math|t> such that:

  <\equation*>
    y<around*|(|t|)>=0.01=\<mathe\><rsup|-0.01t>
  </equation*>

  <\equation*>
    t=-<frac|ln 0.01|0.01>\<approx\><SI|460.5|min>
  </equation*>

  <underline|Question 4>

  Write the DE for the amount of salt in the tank (<math|y<around*|(|t|)>>):

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><around*|(|t|)>>|<cell|=>|<cell|<SI|1|lb/gal>\<cdot\><SI|3|gal/min>-<SI|2|gal/min>\<cdot\><frac|y<around*|(|t|)>|<SI|200|gal>+<SI|1|gal/min>\<cdot\>t>>>|<row|<cell|y<rprime|'><around*|(|t|)>>|<cell|=>|<cell|3-<frac|2y<around*|(|t|)>|200+t>>>>>
  </eqnarray*>

  Note: the quotient <math|<frac|2y<around*|(|t|)>|200+t>> represents the
  transient concentration at time <math|t>. The denominator represents the
  total volume of liquid in the tank at time <math|t.>

  Solve the DE:

  <\equation*>
    y<rprime|'>+<frac|2|200+t>*y<around*|(|t|)>=3
  </equation*>

  Solve according to eq. (1) <math|<around*|(|a=<frac|2|200+t>,b=3|)>>

  <\equation*>
    \<mathe\><rsup|<big|int>a<around*|(|t|)>
    \<mathd\>t>=\<mathe\><rsup|2<big|int><frac|\<mathd\>t|200+t><frac||>>=<around*|(|200+t|)><rsup|2>
  </equation*>

  <\equation*>
    \<mathe\><rsup|-<big|int>a<around*|(|t|)>
    \<mathd\>t>=<frac|1|<around*|(|200+t|)><rsup|2>>
  </equation*>

  <\equation*>
    y=<frac|1|<around*|(|200+t|)><rsup|2>>*<around*|[|<big|int>3*<around*|(|200+t|)><rsup|2>
    \<mathd\>t+c|]>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int><around*|(|200+t|)><rsup|2>
    \<mathd\>t>|<cell|=>|<cell|<big|int><around*|(|t<rsup|2>+400t+40\<comma\>000|)>
    \<mathd\>t>>|<row|<cell|>|<cell|=>|<cell|<frac|t<rsup|3>|3>+200t<rsup|2>+40\<comma\>000t>>>>
  </eqnarray*>

  Therefore,

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|t|)>=<frac|1|<around*|(|200+t|)><rsup|2>>*<around*|[|<big|int>3*<around*|(|200+t|)><rsup|2>
    \<mathd\>t+c|]>>|<cell|=>|<cell|<frac|t<rsup|3>+600t<rsup|2>+120\<comma\>000t+c|<around*|(|200+t|)><rsup|2>>>>>>
  </eqnarray*>

  To find <math|c> we use the IC:

  <\equation*>
    y<around*|(|0|)>=100=<frac|c|200<rsup|2>>\<rightarrow\>c=4\<cdot\>10<rsup|6>
  </equation*>

  <\equation*>
    y<around*|(|t|)>=<frac|t<rsup|3>+600t<rsup|2>+120\<comma\>000t+4\<cdot\>10<rsup|6>|<around*|(|200+t|)><rsup|2>>
  </equation*>

  When does the solution begin to overflow? \V When the volume reaches
  <SI|500|gal>.

  <\equation*>
    V<around*|(|t|)>=500=200+t\<rightarrow\>t=<SI|300|min>
  </equation*>

  Now let's calculate <math|y<around*|(|300|)>>:

  <\equation*>
    y<around*|(|300|)>=<frac|300<rsup|3>+600\<cdot\>300<rsup|2>+120\<comma\>000\<cdot\>300+4\<cdot\>10<rsup|6>|<around*|(|200+300|)><rsup|2>>=<SI|484|lb>
  </equation*>

  The salt concentration at time of overflowing is
  <math|C=<frac|<SI|484|lb>|<SI|500|gal>>=<SI|0.968|lb|gal<rsup|-1>>>.

  If the tank would have had infinite capacity, the limit concentration is
  achieved at <math|t\<rightarrow\>\<infty\>>.

  <\equation*>
    lim<rsub|t\<rightarrow\>\<infty\>>C=lim<rsub|t\<rightarrow\>\<infty\>><frac|y<around*|(|t|)>|V<around*|(|t|)>>=lim<rsub|t\<rightarrow\>\<infty\>><around*|(|<frac|t<rsup|3>+600t<rsup|2>+120\<comma\>000t+4\<cdot\>10<rsup|6>|<around*|(|200+t|)><rsup|2>\<cdot\><around*|(|200+t|)>>|)>=<SI|1|lb|gal<rsup|-1>>
  </equation*>

  The limit approaches the value <math|C=1> because the highest order element
  of both the numerator and denominator is <math|t<rsup|3>> and in both its
  coefficient is 1.

  <underline|Question 9>

  Given <math|r=0.1>, the DE for the amount of debt left at time <math|t> is:

  <\equation*>
    S<rprime|'><around*|(|t|)>=r*S<around*|(|t|)>-k
  </equation*>

  Let's solve.

  <\equation*>
    S<rprime|'><around*|(|t|)>-0.1S<around*|(|t|)>=-k
  </equation*>

  According to eq. (1), <math|<around*|(|a=-0.1,b=-k|)>>

  <\equation*>
    \<mathe\><rsup|<big|int>a<around*|(|t|)>
    \<mathd\>t>=\<mathe\><rsup|<big|int>-0.1
    \<mathd\>t>=\<mathe\><rsup|-0.1t>
  </equation*>

  <\equation*>
    \<mathe\><rsup|-<big|int>a<around*|(|t|)>
    \<mathd\>t>=\<mathe\><rsup|0.1t>
  </equation*>

  <\equation*>
    S<around*|(|t|)>=\<mathe\><rsup|0.1t>*<around*|[|<big|int>-k*\<mathe\><rsup|-0.1t>
    \<mathd\>t+c|]>
  </equation*>

  <\equation*>
    S<around*|(|t|)>=10k+c*\<mathe\><rsup|0.1t>
  </equation*>

  To find <math|c>, use IC:

  <\equation*>
    S<around*|(|0|)>=8000=10k+c*
  </equation*>

  <\equation*>
    c=8000-10k
  </equation*>

  <\equation*>
    \<Rightarrow\>S<around*|(|t|)>=10k+<around*|(|8000-10k|)>\<mathe\><rsup|0.1t>
  </equation*>

  <\equation*>
    S<around*|(|t<rsub|>|)>=8000\<cdot\>\<mathe\><rsup|0.1t>+10k<around*|(|1-\<mathe\><rsup|0.1t>|)>
  </equation*>

  If the debt is to be re-payed in 3 years, then:

  <\equation*>
    S<around*|(|3|)>=0=8000\<cdot\>\<mathe\><rsup|0.3>+10k<around*|(|1-\<mathe\><rsup|0.3>|)>
  </equation*>

  <\equation*>
    <around*|\||k|\|>=<frac|8000\<cdot\>\<mathe\><rsup|0.3>|<around*|(|1-\<mathe\><rsup|0.3>|)>\<cdot\>10>=<SI|$3086.64|yr<rsup|-1>>
  </equation*>

  The interest paid in 3 years is the amount returned minus the initial loan.
  In other words, the interest equals <math|3086.64\<times\>3=>$9259.92 minus
  the initial loan of $8000, for a total of $1259.92.

  <underline|Question 14>

  (a) We are given two points: <math|Q<around*|(|t<rsub|1/2>|)>=<frac|1|2>Q<around*|(|0|)>=<SI|5730|yrs>>
  and <math|Q<around*|(|50\<comma\>000|)>=0.00236Q<around*|(|0|)>>.

  For a DE of the form <math|Q<rprime|'><around*|(|t|)>=-r*Q<around*|(|t|)>>
  the solution is <math|Q<around*|(|t|)>=Q<around*|(|0|)>*\<mathe\><rsup|-r*t>>.

  We can determine <math|r> using each of the points. For example, using the
  information of the half-life:

  <\equation*>
    <frac|1|2>=\<mathe\><rsup|-r\<cdot\>5730>\<rightarrow\>r=<frac|ln
    2|5730>=<SI|1.21\<times\>10<rsup|-4>|yrs<rsup|-1>>
  </equation*>

  (b) The solution is a simple decaying exponent. It may be found via
  integration factor method: <math|Q<rprime|'><around*|(|t|)>+r*Q<around*|(|t|)>=0>.
  Select <math|\<mu\><around*|(|t|)>=\<mathe\><rsup|r*t>> and get
  <math|<around*|(|Q*\<mathe\><rsup|r*t>|)><rprime|'>=0>. Integrate to get
  <math|Q<around*|(|t|)>=c*\<mathe\><rsup|-r*t>>, then input <math|t=0> to
  get <math|c=Q<around*|(|0|)>\<equiv\>Q<rsub|0>>.

  <\equation*>
    Q<around*|(|t|)>=Q<rsub|0>*\<mathe\><rsup|-1.21\<times\>10<rsup|-4
    >\<cdot\>*t>
  </equation*>

  (c) We need to find <math|t> for which <math|Q<around*|(|t|)>=0.2*Q<rsub|0>>.

  <\equation*>
    0.2=\<mathe\><rsup|-r*t>
  </equation*>

  <\equation*>
    t=<frac|ln 5|r>=<SI|13\<comma\>304.65|yrs>
  </equation*>

  <\equation*>
    \;
  </equation*>

  \;
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
    <associate|auto-2|<tuple|2|5>>
    <associate|auto-3|<tuple|2|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Page
      38> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Page
      45> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Page
      57> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|1fn>
    </associate>
  </collection>
</auxiliary>