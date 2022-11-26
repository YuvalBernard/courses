<TeXmacs|2.1>

<style|course>

<\body>
  <doc-data|<doc-title| Assignment 1>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date: 10/11/22
  </author-affiliation>>>>

  <\exercise>
    \;

    (a) Prove De Moivre's theorem by induction for all natural numbers
    <math|n>: if <rigid|<math|z=r<around*|(|cos \<theta\>+\<mathi\>*sin
    \<theta\>|)> then z<rsup|n><rsup|>=r<rsup|n> <around*|(|cos
    <around*|(|n\<theta\>|)>+\<mathi\>*sin <around*|(|n\<theta\>|)>|)>.>>
  </exercise>

  (b) Use part (a) to show the following generalization for all natural
  numbers <math|n>:

  If <math|z<rsup|n>=r<around*|(|cos \<theta\>+\<mathi\>*sin \<theta\>|)>>
  then <math|z<rsup|>=r<rsup|1/n> <around*|(|cos
  <frac|\<theta\>+2\<mathpi\>k|n>+\<mathi\>*sin
  <frac|\<theta\>+2\<mathpi\>k|n>|)>> for <math|k> a natural number,
  <rigid|<math|0\<leq\>k\<leq\>n-1>.>

  <\solution*>
    \;

    (a) To prove by induction, we must first prove the statement is true for
    the lowest natural number. Given\ 

    <\equation>
      z=r<around*|(|cos \<theta\>+\<mathi\>*sin \<theta\>|)>
    </equation>

    \ plugging in <math|n=1> into De Moivre's theorem we get the (trivial)
    equality :

    <\equation>
      z<rsup|1>=r<rsup|1><around*|(|cos <around*|(|1\<theta\>|)>+\<mathi\>*sin
      <around*|(|1\<theta\>|)>|)>\<equiv\>z=r<around*|(|cos
      \<theta\>+\<mathi\>*sin \<theta\>|)>
    </equation>

    Now we must show that if the theorem is true for <math|n>, it must also
    hold for <math|n+1>.

    Plugging in <math|n+1> into De Moivre's theorem we get:

    <\eqnarray*>
      <tformat|<table|<row|<cell|z<rsup|n+1>>|<cell|=>|<cell|r<rsup|n+1>*<around*|(|cos
      <around*|(|<around*|[|n+1|]>\<theta\>|)>+\<mathi\>*sin
      <around*|(|<around*|[|n+1|]>\<theta\>|)>|)>>>|<row|<cell|z\<cdot\>z<rsup|n>>|<cell|=>|<cell|r\<cdot\>r<rsup|n><around*|(|cos
      <around*|(|<around*|[|n+1|]>\<theta\>|)>+\<mathi\>*sin
      <around*|(|<around*|[|n+1|]>\<theta\>|)>|)>>>>>
    </eqnarray*>

    We may enter <math|z=r<around*|(|cos \<theta\>+\<mathi\>*sin
    \<theta\>|)>> into the LHS:

    <\eqnarray*>
      <tformat|<table|<row|<cell|<neg|r><around*|(|cos
      \<theta\>+\<mathi\>*sin \<theta\>|)>\<cdot\>z<rsup|n>>|<cell|=>|<cell|
      <neg|r>\<cdot\>r<rsup|n><around*|(|cos
      <around*|(|<around*|[|n+1|]>\<theta\>|)>+\<mathi\>*sin
      <around*|(|<around*|[|n+1|]>\<theta\>|)>|)><eq-number>>>>>
    </eqnarray*>

    By the induction hypothesis,

    <\equation>
      z<rsup|n>=r<rsup|n><around*|(|cos <around*|(|n\<theta\>|)>+\<mathi\>*sin
      <around*|(|n\<theta\>|)>|)>
    </equation>
  </solution*>

  plugging (4) into (3) we get:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|cos \<theta\>+\<mathi\>*sin
    \<theta\>|)>*<neg|r<rsup|n>><around*|(|cos
    <around*|(|n\<theta\>|)>+\<mathi\>*sin
    <around*|(|n\<theta\>|)>|)>>|<cell|=>|<cell|<neg|r<rsup|n>><around*|(|cos
    <around*|(|<around*|[|n+1|]>\<theta\>|)>+\<mathi\>*sin
    <around*|(|<around*|[|n+1|]>\<theta\>|)>|)><eq-number>>>>>
  </eqnarray*>

  Let's focus on the LHS:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|cos \<theta\>+\<mathi\>*sin
    \<theta\>|)>*<around*|(|cos <around*|(|n\<theta\>|)>+\<mathi\>*sin
    <around*|(|n\<theta\>|)>|)>>|<cell|=>|<cell|<with|color|blue|cos
    \<theta\><around*|(|cos <around*|(|n\<theta\>|)>+\<mathi\>*sin
    <around*|(|n\<theta\>|)>|)>><eq-number>>>|<row|<cell|>|<cell|+>|<cell|<with|color|red|\<mathi\>*sin
    \<theta\>*<around*|(|cos <around*|(|n\<theta\>|)>+\<mathi\>*sin
    <around*|(|n\<theta\>|)>|)>>>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<table|<row|<cell|<with|color|blue|cos \<theta\><around*|(|cos
    <around*|(|n\<theta\>|)>+\<mathi\>*sin
    <around*|(|n\<theta\>|)>|)>>>|<cell|=>|<cell|cos \<theta\>*cos
    <around*|(|n\<theta\>|)>+\<mathi\>*cos
    \<theta\>*sin<around*|(|n\<theta\>|)><eq-number>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<with|color|red|\<mathi\>*sin
    \<theta\>*<around*|(|cos <around*|(|n\<theta\>|)>+\<mathi\>*sin
    <around*|(|n\<theta\>|)>|)>>>|<cell|=>|<cell|\<mathi\>*sin \<theta\>*cos
    <around*|(|n\<theta\>|)>-sin \<theta\>*sin
    <around*|(|n\<theta\>|)><eq-number>>>>>
  </eqnarray*>

  Adding (7) and (8) and using trigonometric identities we get:

  <\eqnarray*>
    <tformat|<table|<row|cos \<theta\>*cos <around*|(|n\<theta\>|)>-sin
    \<theta\>*sin <around*|(|n\<theta\>|)>|<cell|=>|<cell|cos
    <around*|(|\<theta\>+n\<theta\>|)>=cos
    <around*|(|<around*|[|n+1|]>\<theta\>|)><eq-number>>>|<row|<cell|\<mathi\>*<around*|[|*cos
    \<theta\>*sin<around*|(|n\<theta\>|)>+sin \<theta\>*cos
    <around*|(|n\<theta\>|)>|]>>|<cell|=>|<cell|\<mathi\>*<around*|[|sin
    <around*|(|\<theta\>+n\<theta\>|]>=*\<mathi\>*sin
    <around*|(|<around*|[|n+1|]>\<theta\>|)>|\<nobracket\>><eq-number>>>>>
  </eqnarray*>

  Adding (9) and (10) matches between the LHS and RHS of eq. (5), thus
  concluding that if <math|z<rsup|n>=r<rsup|n><around*|(|cos
  <around*|(|n\<theta\>|)>+\<mathi\>*sin <around*|(|n\<theta\>|)>|)>> then
  also <math|z<rsup|n+1>=r<rsup|n+1><around*|(|cos
  <around*|(|<around*|[|n+1|]>\<theta\>|)>+\<mathi\>*sin
  <around*|(|<around*|[|n+1|]>\<theta\>|)>|)>>, thus proving De Moivre's
  theorem by induction. <qed>

  (b) We start from the relation:

  <\equation>
    z<rsup|>=r<rsup|1/n> <around*|(|cos <frac|\<theta\>+2\<mathpi\>k|n>+\<mathi\>*sin
    <frac|\<theta\>+2\<mathpi\>k|n>|)>
  </equation>

  We may raise both sides of the equation by <math|n>, where
  <math|n\<in\>\<bbb-N\>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|z<rsup|n>>|<cell|=>|<cell|<around*|[|r<rsup|1/n>|]><rsup|n>*<around*|(|cos
    <frac|\<theta\>+2\<mathpi\>k|n>+\<mathi\>*sin
    <frac|\<theta\>+2\<mathpi\>k|n>|)><rsup|n><eq-number>>>|<row|<cell|z<rsup|n>>|<cell|=>|<cell|r*<around*|(|cos
    <frac|\<theta\>+2\<mathpi\>k|n>+\<mathi\>*sin
    <frac|\<theta\>+2\<mathpi\>k|n>|)><rsup|n>>>>>
  </eqnarray*>

  We may use the relation <math|z<rsup|n><rprime|'>=r<rsup|n<rprime|'>><around*|(|cos
  <around*|(|n<rprime|'>\<theta\>|)>+\<mathi\>*sin
  <around*|(|n<rprime|'>\<theta\>|)>|)>>, which was proved at part (a):

  <\eqnarray*>
    <tformat|<table|<row|<cell|z<rsup|n>>|=|r<around*|[|cos
    <around*|(|n*<frac|\<theta\>+2\<mathpi\>k|n>|)>+\<mathi\>*sin
    <around*|(|n*<frac|\<theta\>+2\<mathpi\>k|n>|)>|]><eq-number>>|<row|<cell|z<rsup|n>>|<cell|=>|<cell|r*<around*|[|cos
    <around*|(|\<theta\>+2\<mathpi\>k|)>+\<mathi\>*sin
    <around*|(|\<theta\>+2\<mathpi\>k|)>|]><eq-number>>>>>
  </eqnarray*>

  Remember that <math|cos <around*|(|\<theta\>+2\<mathpi\>k|)>=cos \<theta\>>
  and that <math|sin <around*|(|\<theta\><rsub|>+2\<mathpi\>k|)>=sin
  \<theta\>> if <math|k\<in\>\<bbb-N\>>. This is because adding
  <math|2\<mathpi\>k> to angle <math|\<theta\>> essentially rotates the unit
  vector by whole multiples of a full circle, bringing it back to the
  starting point determined by <math|\<theta\>>, rendering the vector defined
  by <math|sin \<theta\>> and <math|cos \<theta\>> unchanged.

  Thus, we can rewrite equation (14) and get:

  <\equation>
    z<rsup|n>=r<around*|(|cos \<theta\>+\<mathi\>*sin \<theta\>|)>
  </equation>

  Which we were instructed to assume is right.<qed>

  <\exercise>
    Find the three complex cubed roots of <math|z=3-i<sqrt|27>.>

    <\solution*>
      We may use eq. (11) to calculate the roots of <math|z>, where
      <math|n=3> is the number of roots.

      <\equation*>
        z<rsup|><rsub|k>=r<rsup|1/3> <around*|(|cos
        <frac|\<theta\>+2\<mathpi\>k|3>+\<mathi\>*sin
        <frac|\<theta\>+2\<mathpi\>k|3>|)>,<application-space|1em>k=0,1,2
      </equation*>
    </solution*>
  </exercise>

  First let's calculate <math|\<theta\>> and <math|r>. for a complex number
  <math|z<rprime|'>=a+\<mathi\>*b>, <math|r> and <math|\<theta\>> are
  calculated as follows:

  <\eqnarray*>
    <tformat|<table|<row|<cell|r>|<cell|=>|<cell|<sqrt|a<rsup|2>+b<rsup|2>><eq-number>>>|<row|<cell|\<theta\>>|<cell|=>|<cell|arctan
    <frac|b|a><eq-number>>>>>
  </eqnarray*>

  In our case, <math|r=<sqrt|3<rsup|2>+27>=6> and
  <math|\<theta\>=arctan-<frac|<sqrt|27>|3>=-<frac|\<mathpi\>|3>>. Inputting
  the different values of <math|k> we get the three complex roots of
  <math|z>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|z<rsub|k=0>>|<cell|=>|<cell|6<rsup|1/3>*<around*|[|cos
    <around*|(|<frac|-<frac|\<mathpi\>|3>+0|3>|)>+\<mathi\>*sin
    <around*|(|<frac|-<frac|\<mathpi\>|3>+0|3>|)>|]>=6<rsup|1/3>*<around*|(|cos
    <frac|\<mathpi\>|9>-\<mathi\>*sin <frac|\<mathpi\>|9>|)>>>|<row|<cell|>|<cell|\<approx\>>|<cell|1.707-0.621*\<mathi\>>>|<row|<cell|z<rsub|k=1>>|<cell|=>|<cell|6<rsup|1/3>*<around*|[|cos
    <around*|(|<frac|-<frac|\<mathpi\>|3>+2\<pi\>|3>|)>+\<mathi\>*sin
    <around*|(|<frac|-<frac|\<mathpi\>|3>+2\<mathpi\>|3>|)>|]>=6<rsup|1/3><around*|(|cos
    <frac|5\<mathpi\>|9>+\<mathi\>*sin <frac|5\<mathpi\>|9>|)>>>|<row|<cell|>|<cell|\<approx\>>|<cell|-0.315+1.789*\<mathi\>>>|<row|<cell|z<rsub|k=2>>|<cell|=>|<cell|6<rsup|1/3>*<around*|[|cos
    <around*|(|<frac|-<frac|\<mathpi\>|3>+4\<pi\>|3>|)>+\<mathi\>*sin
    <around*|(|<frac|-<frac|\<mathpi\>|3>+4\<mathpi\>|3>|)>|]>=6<rsup|1/3><around*|(|cos
    <frac|11\<mathpi\>|9>+\<mathi\>*sin <frac|11\<mathpi\>|9>|)>>>|<row|<cell|>|<cell|\<approx\>>|<cell|-1.392-1.168*\<mathi\>>>>>
  </eqnarray*>

  <\exercise>
    Calculate the Taylor series for the following functions
    <math|f<around*|(|x|)>> at the points <math|a> where:

    <\enumerate-numeric>
      <item><math|f<around*|(|x|)>=2x<rsup|5>-7x<rsup|2>+4x-3,<application-space|1em>a=0;<application-space|1em>a=1.>

      <item><math|f<around*|(|x|)>=sin x+2*cos x,<application-space|1em>a=0>.

      <item><math|f<around*|(|x|)>=sin <around*|(|x<rsup|2>|)>,<application-space|1em>a=0.>

      <item><math|f<around*|(|x|)>=<sqrt|x<rsup|2>+1>,<application-space|1em>a=0>
      \V only the first 3 terms.
    </enumerate-numeric>
  </exercise>

  <\solution*>
    To calculate the Taylor series we use Taylor's theorem:

    <\equation>
      f<around*|(|x|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|f<rsup|<around*|(|n|)>><around*|(|a|)>|n!>*<around*|(|x-a|)><rsup|n>
    </equation>
  </solution*>

  1. <math|f<around*|(|x|)>=2x<rsup|5>-7x<rsup|2>+4x-3> has only 5 non-zero
  derivatives:

  <\enumerate-roman>
    <item><math|f<rprime|'><around*|(|x|)>=10x<rsup|4>-14x+4,<application-space|1em>f<rprime|'><around*|(|0|)>=4,<application-space|1em>f<rprime|'><around*|(|1|)>=0.>

    <item><math|f<rprime|''><around*|(|x|)>=40x<rsup|3>-14,<application-space|1em>f<rprime|''><around*|(|0|)>=-14,<application-space|1em>f<rprime|''><around*|(|1|)>=26.>

    <item><math|f<rsup|<around*|(|3|)>><around*|(|x|)>=120x<rsup|2>,<application-space|1em>f<rsup|<around*|(|3|)>><around*|(|0|)>=0,<application-space|1em>f<rsup|<around*|(|3|)>><around*|(|1|)>=120>.

    <item><math|f<rsup|<around*|(|4|)>><around*|(|x|)>=240x,<application-space|1em>f<rsup|<around*|(|4|)>><around*|(|0|)>=0,<application-space|1em>f<rsup|<around*|(|4|)>><around*|(|1|)>=240.>

    <item><math|f<rsup|<around*|(|5|)>><around*|(|x|)>=240<application-space|1em>\<forall\>x>

    \;
  </enumerate-roman>

  inputting these into (18) gives [<math|f<around*|(|0|)>=-3,<application-space|1em>f<around*|(|1|)>=-4>]
  the following Taylor series:

  <\enumerate-roman>
    <item>for <math|a=0>:

    <\framed>
      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|x;a=0|)>>|<cell|=>|<cell|-3+<frac|4|1!>x-<frac|14|3!>x<rsup|3>+<frac|240|5!>x<rsup|5>>>|<row|<cell|>|<cell|=>|<cell|-3+4x-<frac|7|3>x<rsup|3>+2x<rsup|5>>>>>
      </eqnarray*>
    </framed>

    <item>for <math|a=1>:

    <\framed>
      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|x;a=1|)>>|<cell|=>|<cell|-4+<frac|26|2!><around*|(|x-1|)><rsup|2>+<frac|120|3!><around*|(|x-1<rsup|>|)><rsup|3>+<frac|240|4!><around*|(|x-1|)><rsup|4>+<frac|240|5!><around*|(|x-1|)><rsup|5>>>|<row|<cell|>|<cell|=>|<cell|-4+13<around*|(|x-1|)><rsup|2>+20<around*|(|x-1|)><rsup|3>+10<around*|(|x-1|)><rsup|4>+2<around*|(|x-1|)><rsup|5>>>>>
      </eqnarray*>
    </framed>
  </enumerate-roman>

  2. <math|f<around*|(|x|)>=sin x+2*cos x>. Let's calculate the derivatives
  at <math|a=0>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|f<around*|(|0|)>>|<cell|=>|<cell|2>>|<row|<cell|f<rprime|'><around*|(|x|)>>|<cell|=>|<cell|cos
    x-2*sin x;<application-space|1em>f<rprime|'><around*|(|0|)>=1>>|<row|<cell|f<rprime|''><around*|(|x|)>>|<cell|=>|<cell|-sin
    x-2*cos x;<application-space|1em>f<rprime|''><around*|(|0|)>=-2>>|<row|<cell|f<rsup|<around*|(|3|)>><around*|(|x|)>>|<cell|=>|<cell|-cos
    x+2*sin x;<application-space|1em>f<rsup|<around*|(|3|)>><around*|(|0|)>=-1>>|<row|<cell|f<rsup|<around*|(|4|)>><around*|(|x|)>>|<cell|=>|<cell|sin
    x+2*cos x;<application-space|1em>f<rsup|<around*|(|4|)>><around*|(|0|)>=2>>>>
  </eqnarray*>

  We see that every 4 derivations the original function is retrieved.
  Therefore:

  <\equation*>
    f<around*|(|x|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|f<rsup|<around*|(|n|)>><around*|(|a|)>|n!>*<around*|(|x-a|)><rsup|n>
  </equation*>

  <\equation*>
    f<around*|(|x|)>=<with|color|blue|2><with|color|red|+x><with|color|blue|-><with|color|blue|2*<frac|x<rsup|2>|2!>><with|color|red|-<frac|x<rsup|3>|3!>><with|color|blue|+2*<frac|x<rsup|<rsup|4>>|4!>><rsup|><with|color|red|+<frac|x<rsup|5>|5!>>+\<cdots\>
  </equation*>

  This series can actually be written as a sum of two sub-series, one for
  even <math|n> (blue) and one for odd <math|n> (red):

  <\framed>
    <\equation*>
      f<around*|(|x;a=0|)>=<with|color|blue|2*<big|sum><rsup|\<infty\>><rsub|n
      =0><frac|<around*|(|-1|)><rsup|n>*x<rsup|2n>|<around*|(|2n|)>!>>+<with|color|red|<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>*x<rsup|2n+1>|<around*|(|2n<rsub|>+1|)>!>
      <rsub|>>
    </equation*>
  </framed>

  3. <math|f<around*|(|x|)>=sin<rsup|><around*|(|x<rsup|2>|)>>. Let's
  calculate the derivatives at <math|a=0>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|f<around*|(|0|)>>|<cell|=>|<cell|0>>|<row|<cell|f<rprime|'><around*|(|x|)>>|<cell|=>|<cell|2x*cos<around*|(|x<rsup|2>|)>;<application-space|1em>f<rprime|'><around*|(|0|)>=0>>|<row|<cell|f<rprime|''><around*|(|x|)>>|<cell|=>|<cell|2cos<around*|(|x<rsup|2>|)>-4x<rsup|2>*sin<around*|(|x<rsup|2>|)>;<application-space|1em>f<rprime|''><around*|(|0|)>=2>>|<row|<cell|f<rsup|<around*|(|3|)>><around*|(|x|)>>|<cell|=>|<cell|-4x*sin<around*|(|x<rsup|2>|)>-8x*sin<around*|(|x<rsup|2>|)>-8x<rsup|3>*cos<around*|(|x<rsup|2>|)>;<application-space|1em>f<rsup|<around*|(|3|)>><around*|(|0|)>=0>>|<row|<cell|f<rsup|<around*|(|<around*|\<nobracket\>|4|)>|\<nobracket\>>><around*|(|x|)>>|<cell|=>|<cell|-4sin<around*|(|x<rsup|2>|)>-8x<rsup|2>*cos<around*|(|x<rsup|2>|)>-8sin<around*|(|x<rsup|2>|)>-16x<rsup|2>*cos<around*|(|x<rsup|2>|)>-24x<rsup|2>*cos<around*|(|x<rsup|2>|)>+16x<rsup|4>*sin<around*|(|x<rsup|2>|)>;<application-space|1em>f<rsup|<around*|(|4|)>><around*|(|0|)>=0>>|<row|<cell|f<rsup|<around*|(|5|)>><around*|(|x|)>>|<cell|=>|<cell|-8x*cos<around*|(|x<rsup|2>|)>-16x*cos<around*|(|x<rsup|2>|)>+16x<rsup|3>*sin<around*|(|x<rsup|2>|)>-16x*cos<around*|(|x<rsup|2>|)>-32x*cos<around*|(|x<rsup|2>|)>+32x<rsup|3>*sin<around*|(|x<rsup|2>|)>-48x*cos<around*|(|x<rsup|2>|)>+48x<rsup|3>*sin<around*|(|x<rsup|2>|)>+64x<rsup|3>*sin<around*|(|x<rsup|2>|)>+32x<rsup|5>*cos<around*|(|x<rsup|2>|)>;<application-space|1em>f<rsup|<around*|(|5|)>><around*|(|0|)>=0>>|<row|<cell|f<rsup|<around*|(|6|)>><around*|(|x|)>>|<cell|=>|<cell|-120cos<around*|(|x<rsup|2>|)>+\<cdots\>+;<application-space|1em>f<rsup|<around*|(|6|)>><around*|(|0|)>=-120>>>>
  </eqnarray*>

  We see that every <math|4n+2> derivatives a non-zero
  <math|f<rsup|<around*|(|n|)>><around*|(|0|)>> is obtained. Also, if we
  write the Taylor series up to the 7th element we get:

  <\eqnarray*>
    <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|\<approx\>>|<cell|<frac|2x<rsup|2>|2!>-<frac|120x<rsup|6>|6!>+\<cdots\>+>>|<row|<cell|>|<cell|=>|<cell|<frac|x<rsup|2>|1!>-<frac|x<rsup|6>|3!>+\<cdots\>+>>>>
  </eqnarray*>

  This pattern can be generalized to:

  <\framed>
    <\equation*>
      f<around*|(|x;a=0|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|n>*x<rsup|4n+2>|<around*|(|2n+1|)>!>
    </equation*>
  </framed>

  which is actually what we get if we substitute <math|x> for
  <math|x<rsup|2>> in the Taylor series we developed for <math|sin x>.

  4. <math|f<around*|(|x|)>=<sqrt|x<rsup|2>+1>> \V only the first three
  terms.

  <\eqnarray*>
    <tformat|<table|<row|<cell|f<around*|(|0|)>>|<cell|=>|<cell|1>>|<row|<cell|f<rprime|'><around*|(|x|)>>|<cell|=>|<cell|<frac|1|2>*<around*|(|x<rsup|2>+1|)><rsup|-1/2>*\<cdot\>2x=<frac|x|<sqrt|x<rsup|2>+1>>;<application-space|1em>f<rprime|'><around*|(|0|)>=0>>|<row|<cell|f<rprime|''><around*|(|x|)>>|<cell|=>|<cell|<around*|(|x<rsup|2>+1|)><rsup|-1/2>-x<rsup|2><around*|(|x<rsup|2>+1|)><rsup|-3/2>;<application-space|1em>f<rprime|''><around*|(|0|)>=1>>|<row|<cell|f<rprime|'''><around*|(|x|)>>|<cell|=>|<cell|-3x<around*|(|x<rsup|2><rsub|>+1|)><rsup|-3/2>*+3x<rsup|3>\<cdot\><around*|(|x<rsup|2>+1|)><rsup|-5/2>;<application-space|1em>f<rprime|'''><around*|(|0|)>=0>>|<row|<cell|f<rsup|<around*|(|4|)>><around*|(|x|)>>|<cell|=>|<cell|-3<around*|(|x<rsup|2><rsub|>+1|)><rsup|-3/2>+18x<rsup|2><around*|(|x<rsup|2>+1|)><rsup|-5/2>-15x<rsup|4><around*|(|x<rsup|2>+1|)><rsup|-7/2>;<application-space|1em>f<rsup|<around*|(|4|)>><around*|(|0|)>=-3>>>>
  </eqnarray*>

  <\framed>
    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x;a=0|)>>|<cell|=>|<cell|1+<frac|x<rsup|2>|2!>-<frac|3x<rsup|4>|4!>+\<cdots\>+>>|<row|<cell|>|<cell|=>|<cell|1+<frac|x<rsup|2>|2>-<frac|x<rsup|4>|8>+\<cdots\>+>>>>
    </eqnarray*>
  </framed>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>