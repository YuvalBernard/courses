<TeXmacs|2.1>

<style|generic>

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
    <associate|auto-1|<tuple|?|1|../../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      178> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>