<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Assignment 6>|<doc-author|<author-data|<author-name|Your's
  truly. Lehuh>|<\author-affiliation>
    <verbatim|https://www.youtube.com/watch?v=2EHcLMwDogc>
  </author-affiliation>|<\author-affiliation>
    Date:
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
  <math|y<rsub|1>=A\<mathe\><rsup|2t>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|1><rprime|'>>|<cell|=>|<cell|2A\<mathe\><rsup|2t>>>|<row|<cell|y<rprime|''><rsub|1>>|<cell|=>|<cell|4A\<mathe\><rsup|2t>>>>>
  </eqnarray*>

  Input in the DE.

  <\equation*>
    4A\<mathe\><rsup|2t>-4A\<mathe\><rsup|2t>-3A\<mathe\><rsup|2t>=3\<mathe\><rsup|2t>\<rightarrow\>A=-1
  </equation*>

  The general solution is <math|y=-\<mathe\><rsup|2t>+c<rsub|1>\<mathe\><rsup|3t>+c<rsub|2>\<mathe\><rsup|-t>>.

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
  of the form <math|y<rsub|1>=A*t<rsup|2>*\<mathe\><rsup|-t>>.

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

  The general solution is <math|y=t<rsup|2>*\<mathe\><rsup|-t>+c<rsub|1>\<mathe\><rsup|-t>+c<rsub|2>*t*\<mathe\><rsup|-t>>.

  <underline|Question 14>

  <\equation*>
    y<rprime|''>+4y=t<rsup|2>+3\<mathe\><rsup|t>,<application-space|1em><choice|<tformat|<table|<row|<cell|y<around*|(|0|)>=0>>|<row|<cell|y<rprime|'><around*|(|0|)>=2>>>>>
  </equation*>

  Solve homogeneous counterpart. Characteristic polynomial equation:

  <\equation*>
    \<lambda\><rsup|2>+4\<lambda\>=0\<rightarrow\>\<lambda\><rsub|1,2>=0,-4
  </equation*>

  Break the RHS into parts. To find the solution that suits the polynomial
  part, pick a particular solution of the form
  <math|y<rsub|1>=A*t<rsup|2>+B*t+C>

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

  The general solution is therefore <math|y=c<rsub|1>+c<rsub|2>\<mathe\><rsup|-4t>+<frac|3|5>\<mathe\><rsup|t>+<frac|1|4>t<rsup|2>-<frac|1|8>>.

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
  \ <math|k=<frac|m*g|L>>. As chemists, we are obliged to condescend on
  physicists and set <math|g=<SI|10|m|s<rsup|-2>>>, and thus get
  <math|k=<SI|20|N|m<rsup|-1>>>. Input in the ODE:

  <\equation*>
    u<rprime|''>+200u=0
  </equation*>

  To solve, write the characteristic equation of the ODE:

  <\equation*>
    \<lambda\><rsup|2>+200=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=10<sqrt|2>\<mathi\>
  </equation*>

  The general solution is therefore

  <\equation*>
    u<around*|(|t|)>=c<rsub|1>*cos <around*|(|10<sqrt|2>*t|)>+c<rsub|2>*sin
    <around*|(|10<sqrt|2>*t|)><application-space|1em>t\<gtr\>0
  </equation*>

  Use the ICs to find <math|c<rsub|1>,c<rsub|2>>. We are given
  <math|u<rprime|'><around*|(|0|)>=<SI|0.1|m|s<rsup|-1>>> and
  <math|u<around*|(|0|)>=<SI|0.05|m>>.

  Inserting in <math|u<around*|(|t|)>> <math|t=0> gives:

  <\equation*>
    u<around*|(|0|)>=c<rsub|1>=0.05
  </equation*>

  Differentiate <math|u<around*|(|t|)>> to utilize the second IC.

  <\equation*>
    u<rprime|'><around*|(|t|)>=-10<sqrt|2>c<rsub|1>*sin
    <around*|(|10<sqrt|2>*t|)>+10<sqrt|2>c<rsub|2>*cos
    <around*|(|10<sqrt|2>*t|)>
  </equation*>

  <\equation*>
    u<rprime|'><around*|(|0|)>=10<sqrt|2>c<rsub|2>=0.1\<rightarrow\>c<rsub|2>=<frac|1|100<sqrt|2>>
  </equation*>

  The general solution (in SI units) is

  <\equation*>
    u<around*|(|t|)>=0.05*cos <around*|(|10<sqrt|2>*t|)>+<frac|1|100<sqrt|2>>*sin
    <around*|(|10<sqrt|2>*t|)><application-space|1em>t\<gtr\>0
  </equation*>

  It should be worth to transfer to polar coordinates.

  <\equation*>
    R=<sqrt|c<rsub|1><rsup|2>+c<rsub|2><rsup|2>>\<approx\>0.0505
  </equation*>

  <\equation*>
    \<delta\>=arctan <frac|c<rsub|2>|c<rsub|1>>\<approx\>0.1405
  </equation*>

  <\equation*>
    u<around*|(|t|)>=R*cos <around*|(|10<sqrt|2>*t-\<delta\>|)>\<approx\>0.0505*cos
    <around*|(|10<sqrt|2>*t-0.1405|)>
  </equation*>

  The mass returns to its equilibrium position when
  <math|u<around*|(|t|)>=0.05>.

  <\equation*>
    0.05=0.0505*cos <around*|(|10<sqrt|2>*t-0.1405|)>
  </equation*>

  <\equation*>
    cos <around*|(|10<sqrt|2>*t-0.1405|)>=0.9901
  </equation*>

  <\equation*>
    10<sqrt|2>*t-0.1405=arccos 0.9901=0.1405+2\<mathpi\>*n,<application-space|1em>n\<in\>\<bbb-Z\>
  </equation*>

  <\equation*>
    t\<approx\><frac|2\<cdot\>0.1405+2\<mathpi\>*n|10<sqrt|2>>=<SI|0.0198|s>+0.1<sqrt|2>\<mathpi\>*n
  </equation*>

  The smallest <math|n> that satisfies <math|t\<gtr\>0> is <math|n=0>. Thus,
  the mass first returns to equilibrium position after <math|<SI|0.0198|s>>.

  <hrule>

  <\equation*>
    m*u<rprime|''>+k*u=0
  </equation*>

  As <math|m\<neq\>0>, we can divide by <math|m> to obtain the general form
  of a linear 2nd order homogeneous ODE.

  <\equation*>
    u<rprime|''>+<frac|k|m>*u=0
  </equation*>

  Before we solve, calculate <math|k>. According to eq. (1),
  \ <math|k=<frac|m*g|L>>. As chemists, we are obliged to condescend on
  physicists and set <math|g=<SI|10|m|s<rsup|-2>>>, and thus get

  <\equation*>
    <frac|k|m>=<frac|g|L>=<frac|1000 <SI|cm|s<rsup|-2>>|<SI|5|cm>>=<SI|200|s<rsup|-2>>
  </equation*>

  Input in the ODE:

  <\equation*>
    u<rprime|''>+200u=0
  </equation*>

  To solve, write the characteristic equation of the ODE:

  <\equation*>
    \<lambda\><rsup|2>+200=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=10<sqrt|2>\<mathi\>
  </equation*>

  The general solution is therefore

  <\equation*>
    u<around*|(|t|)>=A*cos <around*|(|10<sqrt|2>*t|)>+B*sin
    <around*|(|10<sqrt|2>*t|)><application-space|1em>t\<geq\>0
  </equation*>

  Setting the reference equilibrium point at <math|u=0>, we have the ICs

  <rigid|<math|u<around*|(|0|)>=0 cm,u<rprime|'><around*|(|0|)>=<SI|10|cm|s<rsup|-1>>>>.
  Find <math|A> and <math|B>:

  <\equation*>
    u<around*|(|0|)>=A=0
  </equation*>

  Calculate <math|u<rprime|'><around*|(|t|)>> (after applying <math|A=0>.)

  <\equation*>
    u<rprime|'><around*|(|t|)>=10<sqrt|2>B*cos
    <around*|(|10<sqrt|2>*t|)><application-space|1em>t\<geq\>0
  </equation*>

  <\equation*>
    u<rprime|'><around*|(|0|)>=10<sqrt|2>B=10\<rightarrow\>B=<frac|1|<sqrt|2>>
  </equation*>

  The general solution is\ 

  <\equation*>
    u<around*|(|t|)>=<frac|1|<sqrt|2>>*sin
    <around*|(|10<sqrt|2>*t|)><application-space|1em>t\<geq\>0
  </equation*>

  We are then asked when the mass returns to equilibrium, i.e. the smallest
  <math|t> for which <math|u<around*|(|t|)>=0>.

  <\equation*>
    u<around*|(|t|)>=0=<frac|1|<sqrt|2>>*sin <around*|(|10<sqrt|2>*t|)>
  </equation*>

  <\equation*>
    10<sqrt|2>t<rsub|n>=\<mathpi\>*n,<application-space|2em>n\<in\>\<bbb-N\>
  </equation*>

  The smallest <math|n> is <math|n=1>.

  <\equation*>
    t<rsub|n=1>=<frac|\<mathpi\>|10<sqrt|2>>\<approx\><SI|0.222|s>
  </equation*>

  \;

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