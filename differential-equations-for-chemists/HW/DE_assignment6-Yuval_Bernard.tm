<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Assignment 6>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date: 19/12/22
  </author-affiliation>>>>

  <section*|Page 178>

  <\underline>
    Question 1
  </underline>

  <\equation*>
    y<rprime|''>-2y<rprime|'>-3y=3\<mathe\><rsup|2t>
  </equation*>

  First solve the homogeneous equation. The characteristic polynomial
  equation is

  <\equation*>
    \<lambda\><rsup|2>-2\<lambda\>-3=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|2\<pm\>4|2>=3,-1
  </equation*>

  Which gives the solutions <math|\<mathe\><rsup|3t>,\<mathe\><rsup|-t>>. Now
  find a particular solution. Guess one of the form
  <math|y<rsub|1>=A\<mathe\><rsup|2t>,A\<in\>\<bbb-R\>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|1><rprime|'>>|<cell|=>|<cell|2A\<mathe\><rsup|2t>>>|<row|<cell|y<rprime|''><rsub|1>>|<cell|=>|<cell|4A\<mathe\><rsup|2t>>>>>
  </eqnarray*>

  Input in the DE.

  <\equation*>
    4A\<mathe\><rsup|2t>-4A\<mathe\><rsup|2t>-3A\<mathe\><rsup|2t>=3\<mathe\><rsup|2t>\<rightarrow\>A=-1
  </equation*>

  The general solution is <math|y=-\<mathe\><rsup|2t>+c<rsub|1>\<mathe\><rsup|3t>+c<rsub|2>\<mathe\><rsup|-t>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t>.

  <underline|Question 6>

  <\equation*>
    y<rprime|''>+2y<rprime|'>+y=2\<mathe\><rsup|-t>
  </equation*>

  First solve the homogeneous equation. The characteristic polynomial
  equation is

  <\equation*>
    \<lambda\><rsup|2>+2\<lambda\>+1=<around*|(|\<lambda\>+1|)><rsup|2>=0
  </equation*>

  <math|\<lambda\>=-1> is of multiplicity 2. The solutions are
  <math|\<mathe\><rsup|-t>,t*\<mathe\><rsup|-t>>. Guess a particular solution
  of the form <math|y<rsub|1>=A*t<rsup|2>*\<mathe\><rsup|-t>,<application-space|1em>A\<in\>\<bbb-R\>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|1><rprime|'>>|<cell|=>|<cell|2A*t*\<mathe\><rsup|-t>-A*t<rsup|2>*\<mathe\><rsup|-t>>>|<row|<cell|y<rsub|1><rprime|''>>|<cell|=>|<cell|2A*\<mathe\><rsup|-t>-4A*t*\<mathe\><rsup|-t>+A*t<rsup|2>*\<mathe\><rsup|-t>>>>>
  </eqnarray*>

  Input back in the DE.

  <\equation*>
    2A*\<mathe\><rsup|-t><with|color|blue|-4A*t*\<mathe\><rsup|-t>>+<with|color|red|A*t<rsup|2>*\<mathe\><rsup|-t>>+<with|color|blue|4A*t*\<mathe\><rsup|-t>><with|color|red|-2A*t<rsup|2>*\<mathe\><rsup|-t>>+<with|color|red|A*t<rsup|2>*\<mathe\><rsup|-t>>=2\<mathe\><rsup|-t>
  </equation*>

  <\equation*>
    A=1
  </equation*>

  The general solution is <math|y=t<rsup|2>*\<mathe\><rsup|-t>+c<rsub|1>\<mathe\><rsup|-t>+c<rsub|2>*t*\<mathe\><rsup|-t>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t>.

  <underline|Question 14>

  <\equation*>
    y<rprime|''>+4y=t<rsup|2>+3\<mathe\><rsup|t>,<application-space|1em><choice|<tformat|<table|<row|<cell|y<around*|(|0|)>=0>>|<row|<cell|y<rprime|'><around*|(|0|)>=2>>>>>
  </equation*>

  Solve homogeneous counterpart. Characteristic polynomial equation:

  <\equation*>
    \<lambda\><rsup|2>+4=0\<rightarrow\>\<lambda\><rsub|1,2>=\<pm\>2\<mathi\>
  </equation*>

  Break the RHS into parts. To find the solution that suits the polynomial
  part, pick a particular solution of the form
  <math|y<rsub|1>=A*t<rsup|2>+B*t+C,<application-space|1em>A,B,C\<in\>\<bbb-R\>>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|1><rprime|'>>|<cell|=>|<cell|2A*t+B>>|<row|<cell|y<rsub|1><rprime|''>>|<cell|=>|<cell|2A>>>>
  </eqnarray*>

  <\equation*>
    2A+4A*t<rsup|2>+4B*t+4C=t<rsup|2>
  </equation*>

  Equate coefficients on both sides. Get <math|A=<frac|1|4>,B=0,C=-<frac|1|8>>.
  <math|y<rsub|1>=<frac|1|4>t<rsup|2>-<frac|1|8>>.

  Now find a particular solution of the form
  <math|y<rsub|2>=\<alpha\>\<mathe\><rsup|t>> that fits the exponential part
  of the RHS.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|2><rprime|'>>|<cell|=>|<cell|\<alpha\>\<mathe\><rsup|t>>>|<row|<cell|y<rsub|2><rprime|''>>|<cell|=>|<cell|\<alpha\><rsup|>\<mathe\><rsup|t>>>>>
  </eqnarray*>

  <\equation*>
    \<alpha\><rsup|>\<mathe\><rsup|t>+4\<alpha\>\<mathe\><rsup|t>=3\<mathe\><rsup|t>\<rightarrow\>\<alpha\>=<frac|3|5>
  </equation*>

  The general solution is therefore <math|y=c<rsub|1>*sin 2t+c<rsub|2>*cos
  2t+<frac|3|5>\<mathe\><rsup|t>+<frac|1|4>t<rsup|2>-<frac|1|8>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t>.

  Find <math|c<rsub|1>,c<rsub|2>> via ICs:

  <\equation*>
    y<around*|(|0|)>=c<rsub|2>+<frac|3|5>-<frac|1|8>=0\<rightarrow\>c<rsub|2>=-<frac|19|40>
  </equation*>

  <\equation*>
    y<rprime|'><around*|(|t|)>=2c<rsub|1>*cos 2t-2c<rsub|2>*sin
    2t+<frac|3|5>\<mathe\><rsup|t>+<frac|1|2>t
  </equation*>

  <\equation*>
    y<rprime|'><around*|(|0|)>=2c<rsub|1>+<frac|3|5>=2\<rightarrow\>c<rsub|1>=<frac|7|10>
  </equation*>

  The unique solution is

  <\equation*>
    y=<frac|7|10>*sin 2t-<frac|19|40>*cos
    2t+<frac|3|5>\<mathe\><rsup|t>+<frac|1|4>t<rsup|2>-<frac|1|8>,<application-space|1em>\<forall\>t
  </equation*>

  <section*|Page 197>

  <underline|Question 6>

  Write equation of motion for the mass:

  <\equation*>
    m*u<rprime|''>=m*g-k*<around*|(|L+u|)>
  </equation*>

  Prior to stretching, the mass was at equilibrium and <math|u> was equal to
  zero. At equilibrium,

  <\equation>
    m*u<rprime|''>=0=m*g-k*L
  </equation>

  That simplifies the previous equation:

  <\equation*>
    m*u<rprime|''>+k*u=0
  </equation*>

  As <math|m\<neq\>0>, we can divide by <math|m> to obtain the general form
  of a linear 2nd order homogeneous ODE.

  <\equation*>
    u<rprime|''>+<frac|k|m>*u=0
  </equation*>

  Before we solve, calculate <math|k>. According to eq. (1),
  \ <math|k=<frac|m*g|L>>. Set <math|g=9.8 <frac|m|s<rsup|2>>>, and get
  <math|k=19.6 <frac|N|m>>. Input in the ODE:

  <\equation*>
    u<rprime|''>+196u=0
  </equation*>

  To solve, write the characteristic equation of the ODE:

  <\equation*>
    \<lambda\><rsup|2>+196=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=14\<mathi\>
  </equation*>

  The general solution is therefore

  <\equation*>
    u<around*|(|t|)>=c<rsub|1>*cos <around*|(|14*t|)>+c<rsub|2>*sin
    <around*|(|14*t|)><application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>t\<gtr\>0
  </equation*>

  Use the ICs to find <math|c<rsub|1>,c<rsub|2>>. We are given
  <math|u<rprime|'><around*|(|0|)>=0.1 <frac|m|sec>> and
  <math|u<around*|(|0|)>=0>.

  Inserting in <math|u<around*|(|t|)>> <math|t=0> gives:

  <\equation*>
    u<around*|(|0|)>=c<rsub|1>=0
  </equation*>

  Differentiate <math|u<around*|(|t|)>> to utilize the second IC.

  <\equation*>
    u<rprime|'><around*|(|t|)>=14c<rsub|2>*cos <around*|(|14*t|)>
  </equation*>

  <\equation*>
    u<rprime|'><around*|(|0|)>=14c<rsub|2>=0.1
    m\<rightarrow\>c<rsub|2>=<frac|1|140>
  </equation*>

  The general solution (in SI units) is

  <\equation*>
    u<around*|(|t|)>=<frac|1|140>*sin <around*|(|14*t|)><application-space|1em>t\<gtr\>0
  </equation*>

  The mass returns to its equilibrium position when
  <math|u<around*|(|t|)>=0>.

  <\equation*>
    <frac|1|140>*sin <around*|(|14*t|)>=0
  </equation*>

  <\equation*>
    14t=\<mathpi\>k,k=1,2,3,\<ldots\>
  </equation*>

  The smallest <math|k> that satisfies <math|t\<gtr\>0> is <math|k=1>. Thus,
  the mass first returns to equilibrium position after
  <math|<frac|\<mathpi\>|14>> seconds.

  <underline|Question 8>

  <math|C=0.25\<mu\>F,L=1H,Q<around*|(|0|)>=1\<mu\>C,I<around*|(|0|)>=0>.
  According to Kirchhoff's's law, The differential equation describing the
  system is:

  <\equation*>
    L*<frac|\<mathd\>I|\<mathd\>t>+<frac|1|C>*Q=0
  </equation*>

  Or:

  <\equation*>
    Q<rprime|''>+<frac|1|L*C>*Q=0
  </equation*>

  Solve the characteristic polynomial equation:

  <\equation*>
    \<lambda\><rsup|2>+<frac|1|L*C>=0
  </equation*>

  <\equation*>
    \<lambda\>=\<pm\>\<mathi\>*<sqrt|<frac|1|L*C>>=\<pm\>2000*\<mathi\>*
  </equation*>

  The general solution is

  <\equation*>
    Q<around*|(|t|)>=A*cos 2000t+B*sin 2000t,<application-space|1em>A,B\<in\>\<bbb-R\>
  </equation*>

  Use the ICs <math|Q<around*|(|0|)>=1\<mu\>C> and
  <math|Q<rprime|'><around*|(|0|)>=0> to get <math|A=10<rsup|-6>,B=0>. The
  final expression of the charge at time t is

  <\equation*>
    Q<around*|(|t|)>=10<rsup|-6>*cos 2000*t,<application-space|1em>t\<gtr\>0
  </equation*>

  <underline|Question 11>

  First find <math|k>. We are given <math|F<rsub|s>=k*L=3N>

  <\equation*>
    k=<frac|3N|0.1m>=30N/m
  </equation*>

  <math|m=2kg>. Second, find <math|\<gamma\>>. We are given
  <math|<around*|\||F<rsub|\<gamma\>>|\|>=\<gamma\>*v>.

  <\equation*>
    \<gamma\>=<frac|F<rsub|\<gamma\>>|v>=<frac|3N|5 <frac|m|s>>=0.6N*s/m
  </equation*>

  Given ICs: <math|u<around*|(|0|)>=0.05> and <math|v<around*|(|0|)>=0.1>,
  find <math|u<around*|(|t|)>>. The differential equation of motion (in
  absence of external force) is:

  <\equation*>
    u<rprime|''>+<frac|\<gamma\>|m>*u<rprime|'>+<frac|k|m>*u=0
  </equation*>

  <\equation*>
    u<rprime|''>+0.3u<rprime|'>+15u=0
  </equation*>

  Solve the characteristic equation:

  <\equation*>
    \<lambda\><rsup|2>+0.3\<lambda\>+15=0
  </equation*>

  <\equation*>
    \<lambda\>=<frac|-0.3\<pm\><sqrt|0.09-60>|2>=-0.15\<pm\>3.87*\<mathi\>
  </equation*>

  The general solution is

  <\equation*>
    u<around*|(|t|)>=A*\<mathe\><rsup|-0.15t>*cos
    3.87t+B\<mathe\><rsup|-0.15t>*sin 3.87t,<application-space|1em>A,B\<in\>\<bbb-R\>
  </equation*>

  Input ICs:

  <\equation*>
    u<around*|(|0|)>=A=0.05
  </equation*>

  <\equation*>
    u<rprime|'><around*|(|t|)>=-0.15A\<mathe\><rsup|-0.15t>*cos
    3.87t-3.87A\<mathe\><rsup|-0.15t>*sin
    3.87t-0.15B\<mathe\><rsup|-0.15t>*sin
    3.87t+3.87B\<mathe\><rsup|-0.15t>*cos 3.87t
  </equation*>

  <\equation*>
    u<rprime|'><around*|(|0|)>=-0.15A+3.87B=0.1\<rightarrow\>B=<frac|1|36>
  </equation*>

  The unique solution is:

  <\equation*>
    u<around*|(|t|)>=0.05*\<mathe\><rsup|-0.15t>*cos
    3.87t+<frac|1|36>*\<mathe\><rsup|-0.15t>*sin
    3.87t,<application-space|1em>t\<gtr\>0
  </equation*>

  Move to polar coordinates:

  <\equation*>
    R=<sqrt|A<rsup|2>+B<rsup|2>>\<approx\>0.05719
  </equation*>

  <\equation*>
    \<delta\>=arctan <frac|B|A>=0.5071
  </equation*>

  Therefore,

  <\equation*>
    u<around*|(|t|)>=0.05719*\<mathe\><rsup|-0.15t>*cos
    <around*|(|3.87t-0.5071|)>,<application-space|1em>t\<gtr\>0
  </equation*>

  The quasi frequency <math|\<mu\>> is the frequency of the sinusoidal
  component of the displacement: <math|\<mu\>\<approx\>3.87 rad/sec>. The
  ratio between <math|\<mu\>> and the natural frequency is:

  <\equation*>
    ratio=<frac|\<mu\>|<sqrt|<frac|k|m>>>\<approx\><frac|3.87|<sqrt|<frac|30|2>>>\<approx\>0.9992
  </equation*>

  \;

  <underline|Question 18>

  Critical damping is obtained when the discriminant of the characteristic
  (quadratic) equation equals zero. The differential equation representing
  the system is:

  <\equation*>
    Q<rprime|''>+<frac|R|L>*Q<rprime|'>+<frac|1|L*C>*Q=0
  </equation*>

  where <math|L=0.2H> and <math|C=0.8\<mu\>F>. The characteristic equation
  is:

  <\equation*>
    \<lambda\><rsup|2>+5R*\<lambda\>+6.25\<cdot\>10<rsup|6>*=0
  </equation*>

  Discriminant is:

  <\equation*>
    25R<rsup|2>-4\<cdot\>6.25\<cdot\>10<rsup|6> <above|=|!> 0
  </equation*>

  <\equation*>
    R=1000 \<Omega\>
  </equation*>

  <underline|Question 24>

  Equation of motion is

  <\equation*>
    u<rprime|''>+<frac|2|3>k*u=0
  </equation*>

  With ICs: <math|u<around*|(|0|)>=2,u<rprime|'><around*|(|0|)>=v>. We are
  also given <math|T=\<pi\> sec>, <math|R=3 m>.

  We want to find the polar representation of <math|u<around*|(|t|)>>. Solve
  the characteristic equation:

  <\equation*>
    \<lambda\><rsup|2>+<frac|2k|3>=0
  </equation*>

  <\equation*>
    \<lambda\>=\<pm\><sqrt|<frac|2|3>k>*\<mathi\>
  </equation*>

  Solution is of the form:

  <\equation*>
    u<around*|(|t|)>=A*cos <sqrt|<frac|2|3>k>*t+B*sin <sqrt|<frac|2|3>k>*t
  </equation*>

  Input ICs:

  <\equation*>
    u<around*|(|0|)>=2=A
  </equation*>

  <\equation*>
    u<rprime|'><around*|(|t|)>=-<sqrt|<frac|2|3>k>A*sin
    <around*|(|<sqrt|<frac|2|3>k>t|)>+<sqrt|<frac|2|3>k>B*cos
    <around*|(|<sqrt|<frac|2|3>k>t|)>
  </equation*>

  <\equation*>
    u<rprime|'><around*|(|0|)>=v=<sqrt|<frac|2|3>k>*B\<rightarrow\>B=<frac|v|<sqrt|<frac|2|3>k>>
  </equation*>

  Amplitude of <math|u<around*|(|t|)>> in polar coordinates:

  <\equation*>
    R=<sqrt|A<rsup|2>+B<rsup|2>>=<sqrt|4+<frac|3v<rsup|2>|2k>>
  </equation*>

  Use information given:

  <\equation*>
    Amplitude=R=3=<sqrt|4+<frac|3v<rsup|2>|2k>>
  </equation*>

  <\equation*>
    5=<frac|3v<rsup|2>|2k>\<rightarrow\>v=<sqrt|<frac|10k|3>>
  </equation*>

  <\equation*>
    Period=T=<frac|2\<mathpi\>|<sqrt|<frac|2|3>k>>=\<mathpi\>\<rightarrow\>k=6
  </equation*>

  <\equation*>
    v=<sqrt|<frac|10\<ast\>6|3>>=\<pm\>2<sqrt|5>
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
    <associate|auto-2|<tuple|?|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      178> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      197> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>