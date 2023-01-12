<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment 11>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date: TBE
  </author-affiliation>>>>

  <section*|Page 547>

  <underline|Question 2>

  <\equation*>
    y<rprime|''>+2*y=0,<application-space|1em><choice|<tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=1>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>>>>>
  </equation*>

  Solve characteristic equation.

  <\equation*>
    x<rsup|2>+2=0
  </equation*>

  <\equation*>
    x=\<pm\><sqrt|2>*\<mathi\>
  </equation*>

  General solution is:

  <\equation*>
    y=c<rsub|1>*cos <around*|(|<sqrt|2>*x|)>+c<rsub|2>*sin
    <around*|(|<sqrt|2>*x|)>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>x
  </equation*>

  Find <math|c<rsub|1,2>> that satisfy the boundary values.

  <\equation*>
    y<rprime|'>=-<sqrt|2>*c<rsub|1>*sin <around*|(|<sqrt|2>*x|)>+<sqrt|2>*c<rsub|2>*cos
    <around*|(|<sqrt|2>*x|)>
  </equation*>

  Insert BVs.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=1>|<cell|\<rightarrow\>>|<cell|c<rsub|2>=<frac|<sqrt|2>|2>>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|-<sqrt|2>*c<rsub|1>*sin
    <around*|(|<sqrt|2>*\<mathpi\>|)>+cos
    <around*|(|<sqrt|2>*\<mathpi\>|)>\<rightarrow\>c<rsub|1>=<frac|<sqrt|2>|2>*cot
    <around*|(|<sqrt|2>*\<mathpi\>|)>>>>>
  </eqnarray*>

  Unique solution to the BVP is

  <\equation*>
    y=<frac|<sqrt|2>|2>*cot <around*|(|<sqrt|2>*\<mathpi\>|)>*cos
    <around*|(|<sqrt|2>*x|)>+<frac|<sqrt|2>|2>*sin
    <around*|(|<sqrt|2>*x|)>,<application-space|1em>x\<in\><around*|[|0,\<mathpi\>|]>
  </equation*>

  <underline|Question 5>

  <\equation*>
    y<rprime|''>+y=x,<application-space|1em><choice|<tformat|<table|<row|<cell|y<around*|(|0|)>=0>>|<row|<cell|y<around*|(|\<mathpi\>|)>=0>>>>>
  </equation*>

  First solve associated homogeneous equation, then find a particular
  solution. Characteristic equation:

  <\equation*>
    x<rsup|2>+1=0\<rightarrow\>x=\<pm\>\<mathi\>
  </equation*>

  General solution of homogeneous equation is

  <\equation*>
    y<rsub|h>=c<rsub|1>*cos x+c<rsub|2>*sin
    x,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>x
  </equation*>

  Guess a particular solution of the form <math|y<rsub|p>=A*x<rsup|2>+B*x+C>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p><rprime|'>>|<cell|=>|<cell|2*A*x+B>>|<row|<cell|y<rsub|p><rprime|''>>|<cell|=>|<cell|2*A>>>>
  </eqnarray*>

  Subsitute back in BVP

  <\equation*>
    2*A+A*x<rsup|2>+B*x+C=x
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsup|2>:<application-space|1em>A=0>>|<row|<cell|x:<application-space|1em>B=1>>|<row|<cell|1:<application-space|1em>2*A+C=0\<rightarrow\>C=0>>>>>
  </equation*>

  Unique solution is:

  <\equation*>
    y=c<rsub|1>*cos x+c<rsub|2>*sin x+x
  </equation*>

  Find <math|c<rsub|1,2>> that satisfies the BVs.

  \ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>=0>>|<row|<cell|y<around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|-c<rsub|1>+\<mathpi\>=0\<rightarrow\>c<rsub|1>=\<mathpi\>>>>>
  </eqnarray*>

  \ Contradiction! The boundary value problem has no solution.

  <underline|Question 9>

  <\equation*>
    y<rprime|''>+4*y=cos x,<application-space|1em><choice|<tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>>>>>
  </equation*>

  Find solution to associated homogeneous equation. Characterisitc equation
  is:

  <\equation*>
    x<rsup|2>+4=0\<rightarrow\>x=\<pm\>2*\<mathi\>
  </equation*>

  <\equation*>
    y<rsub|h>=c<rsub|1>*cos <around*|(|2*x|)>+c<rsub|2>*sin
    <around*|(|2*x|)>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>x
  </equation*>

  Guess particular solution of the form <math|y<rsub|p>=A*cos x+B*sin x>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|''><rsub|p>>|<cell|=>|<cell|-A*cos
    x-B*sin x>>>>
  </eqnarray*>

  Substitute back and get:

  <\equation*>
    -A*cos x-B*sin x+4*<around*|(|A*cos x+B*sin x|)>=cos x
  </equation*>

  <\equation*>
    A=<frac|1|3>,B=0
  </equation*>

  Unique solution is

  <\equation*>
    y=y<rsub|h>+y<rsub|p>=c<rsub|1>*cos <around*|(|2*x|)>+c<rsub|2>*sin
    <around*|(|2*x|)>+<frac|1|3>*cos x,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  Find <math|c<rsub|1,2>> that satisfy BVs.

  <\equation*>
    y<rprime|'>=-2*c<rsub|1>*sin <around*|(|2*x|)>+2*c<rsub|2>*cos
    <around*|(|2*x|)>-<frac|1|3>*sin x
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|2>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|2>=0>>>>
  </eqnarray*>

  We've don't have sufficient information to find a specific
  <math|c<rsub|1>>, meaning that it can be arbitrary. The BVP has infinitely
  many solutions:

  <\equation*>
    y=c<rsub|1>*cos <around*|(|2*x|)>+<frac|1|3>*cos
    x,<application-space|1em>c<rsub|1>\<in\>\<bbb-R\>,<application-space|1em>x\<in\><around*|[|0,\<mathpi\>|]>
  </equation*>

  <underline|Question 11>

  <\equation*>
    y<rprime|''>+\<lambda\>*y=0,<application-space|1em><choice|<tformat|<table|<row|<cell|y<around*|(|0|)>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>>>>>
  </equation*>

  Characteristic polynomial is:

  <\equation*>
    u<rsup|2>+\<lambda\>=0
  </equation*>

  There are different cases for when <math|\<lambda\>=0,\<lambda\>\<less\>0>
  or <math|\<lambda\>\<gtr\>0>. We shall treat each one separately.

  <\enumerate>
    <item><math|\<lambda\>=0>. <math|u=0> is a double root and the solution
    to the ODE is:

    <\equation*>
      y=c<rsub|1>*x+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
    </equation*>

    Find <math|c<rsub|1,2>> that satisfy the boundary conditions.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|2>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>=0>>>>
    </eqnarray*>

    Only solution is trivian solution, therefore there are no eigenvalues
    associated with it.

    <item><math|\<lambda\>\<less\>0>. Denote <math|\<mu\>=<sqrt|\<lambda\>>>.
    General solution is

    <\equation*>
      y=c<rsub|1>*\<mathe\><rsup|\<mu\>*x>+c<rsub|2>*\<mathe\><rsup|-\<mu\>*x>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
    </equation*>

    Find <math|c<rsub|1,2>> that satisfy the BCs.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>=-c<rsub|2>>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>*\<mu\>*\<mathe\><rsup|\<mu\>*\<mathpi\>>+c<rsub|1>*\<mu\>*\<mathe\><rsup|-\<mu\>*\<mathpi\>>=0>>>>
    </eqnarray*>

    Once again <math|c<rsub|1>,c<rsub|2>=0>. No non-trivial solution.

    <item><math|\<lambda\>\<gtr\>0>. Denote <math|\<mu\>=<sqrt|\<lambda\>>>.
    General solution is:

    <\equation*>
      y=c<rsub|1>*cos <around*|(|\<mu\>*x|)>+c<rsub|2>*sin
      <around*|(|\<mu\>*x|)>
    </equation*>

    Find <math|c<rsub|1,2>> that satisfy the BCs.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|\<mu\>*c<rsub|2>*cos
      <around*|(|\<mu\>*\<mathpi\>|)>=0>>>>
    </eqnarray*>

    Non-trivial solution is obtained only when <math|cos
    <around*|(|\<mu\>*\<mathpi\>|)>=0>

    <\equation*>
      \<mu\>*\<mathpi\>=\<mathpi\>*n-<frac|\<mathpi\>|2>,<application-space|1em>n\<in\>\<bbb-N\>
    </equation*>

    <\equation*>
      <sqrt|\<lambda\>>=\<mu\>=<frac|2*n-1|2>,<application-space|1em>n\<in\>\<bbb-N\>
    </equation*>

    <\equation*>
      \<lambda\><rsub|n>=<frac|4*n<rsup|2>-4*n+1|4>,<application-space|1em>n\<in\>\<bbb-N\>
    </equation*>

    <math|<around*|{|\<lambda\><rsub|n>|}>> are the eigenvalues of the BVP
    and the eigenfunctions <math|<around*|{|f<rsub|n>|}>> are all the scalar
    multiples of:

    <\equation*>
      y<rsub|n>=sin <around*|(|<frac|2*n-1|2>*x|)>
    </equation*>

    \ 
  </enumerate>

  <underline|Question 13>

  Same question as before, with different BCs:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>>>>>
  </equation*>

  Re-examine the three cases:

  <\enumerate>
    <item><math|\<lambda\>=0>. General solution is:

    <\equation*>
      y=c<rsub|1>*x+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
    </equation*>

    Find <math|c<rsub|1,2>> that satisfy the boundary conditions.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>=0>>>>
    </eqnarray*>

    There is not enough information to determine <math|c<rsub|2>>, so it's
    arbitrary. There are infinitely many solutions for the eigenvalue
    <math|\<lambda\>=0>, which is all <math|y=c<rsub|2>\<in\>\<bbb-R\>>.
    Eigenfunctions for this eigenvalue are all real scalars.

    <item> <math|\<lambda\>\<less\>0>. Denote
    <math|\<mu\>=<sqrt|\<lambda\>>>. General solution is

    <\equation*>
      y=c<rsub|1>*\<mathe\><rsup|\<mu\>*x>+c<rsub|2>*\<mathe\><rsup|-\<mu\>*x>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
    </equation*>

    Find <math|c<rsub|1,2>> that satisfy the BCs.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|\<mu\>*c<rsub|1>-\<mu\>*c<rsub|2>=0\<rightarrow\>c<rsub|1>=c<rsub|2>>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|1>*\<mu\>*\<mathe\><rsup|\<mu\>*\<mathpi\>>-c<rsub|1>*\<mu\>*\<mathe\><rsup|-\<mu\>*\<mathpi\>>=0>>>>
    </eqnarray*>

    <math|c<rsub|1>,c<rsub|2>=0>. No non-trivial solution and no eigenvalues
    associated with this condition.

    <item><math|\<lambda\>\<gtr\>0>. Denote <math|\<mu\>=<sqrt|\<lambda\>>>.
    General solution is:

    <\equation*>
      y=c<rsub|1>*cos <around*|(|\<mu\>*x|)>+c<rsub|2>*sin
      <around*|(|\<mu\>*x|)>
    </equation*>

    Find <math|c<rsub|1,2>> that satisfy the BCs.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rprime|'><around*|(|0|)>=0>|<cell|\<rightarrow\>>|<cell|c<rsub|2>=0>>|<row|<cell|y<rprime|'><around*|(|\<mathpi\>|)>=0>|<cell|\<rightarrow\>>|<cell|-\<mu\>*c<rsub|1>*sin
      <around*|(|\<mu\>*\<mathpi\>|)>=0>>>>
    </eqnarray*>

    Only non-trivial solution is when <math|sin
    <around*|(|\<mu\>*\<mathpi\>|)>=0>.

    <\equation*>
      \<mu\>*\<mathpi\>=\<mathpi\>*n,<application-space|1em>n\<in\>\<bbb-N\>
    </equation*>

    <\equation*>
      <sqrt|\<lambda\>>=\<mu\>=n,<application-space|1em>n\<in\>\<bbb-N\>
    </equation*>

    Eigenvalues are <math|\<lambda\><rsub|n>=n<rsup|2>>, and their associated
    eigenfunctions are all scalar multiples of

    <\equation*>
      y<rsub|n>=cos <around*|(|n*x|)>,<application-space|1em>n\<in\>\<bbb-N\>
    </equation*>
  </enumerate>
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
      547> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>