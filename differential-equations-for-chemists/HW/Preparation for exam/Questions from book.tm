<TeXmacs|2.1.2>

<style|generic>

<\body>
  <section|Equations with dependent variable missing>

  <subsection|137\U28>

  <\equation*>
    t<rsup|2>*y<rprime|''>+2t*y<rprime|'>-1=0,<application-space|2em>t\<gtr\>0
  </equation*>

  Set <math|y<rprime|'>=v>.

  <\equation*>
    t<rsup|2>*v<rprime|'>+2t*v-1=0
  </equation*>

  <\equation*>
    <around*|(|t<rsup|2>*v|)><rprime|'>=1
  </equation*>

  <\equation*>
    v=<frac|1|t>+<frac|c<rsub|1>|t<rsup|2>>
  </equation*>

  <\equation*>
    y=<big|int>v \<mathd\>t=ln <around*|\||t|\|>-<frac|c<rsub|1>|t>+c<rsub|2>
  </equation*>

  <subsection|137\U30>

  <\equation*>
    y<rprime|''>+t*<around*|(|y<rprime|'>|)><rsup|2>=0
  </equation*>

  Set <math|y<rprime|'>=v>.

  <\equation*>
    v<rprime|'>+t*v<rsup|2>=0
  </equation*>

  <\equation*>
    -<frac|\<mathd\>v|v<rsup|2>>=t*\<mathd\>t
  </equation*>

  <\equation*>
    -<frac|1|v>=<frac|1|2>t<rsup|2>+c<rsub|1>
  </equation*>

  <\equation*>
    <frac|\<mathd\>t|<frac|1|2>t<rsup|2>+c<rsub|1>>=-\<mathd\>y
  </equation*>

  <\equation*>
    2\<cdot\><frac|\<mathd\>t|t<rsup|2>+2c<rsub|1>>=-*\<mathd\>y
  </equation*>

  Different results depending on the sign of <math|c<rsub|1>>.

  <underline|If <math|c<rsub|1>=0>>:

  <\equation*>
    2<big|int><frac|\<mathd\>t|t<rsup|2>>=-y+c<rsub|2>
  </equation*>

  <\equation*>
    -<frac|2|t>=-y+c<rsub|2>
  </equation*>

  <\equation*>
    y=<frac|2|t>+c<rsub|2>,<application-space|1em>t\<gtr\>0
  </equation*>

  <underline|If <math|c<rsub|1>\<gtr\>0>>: Define
  <math|2c<rsub|1>=k<rsup|2>>.

  <\equation*>
    2<big|int><frac|\<mathd\>t|t<rsup|2>+k<rsup|2>>=-y+c<rsub|2>
  </equation*>

  <\equation*>
    <big|int><frac|\<mathd\>t|t<rsup|2>+k<rsup|2>>=<frac|1|k<rsup|2>>*<big|int><frac|\<mathd\>t|<around*|(|<frac|t|k>|)><rsup|2>+1>
    \<mathd\>t=<frac|arctan <around*|(|<frac|t|k>|)>|<frac|1|k>\<cdot\>k<rsup|2>>
  </equation*>

  <\equation*>
    \<Rightarrow\>y=-2\<cdot\><frac|arctan
    <around*|(|<frac|t|<sqrt|2c<rsub|1>>>|)>|<sqrt|2c<rsub|1>>>+c<rsub|2>
  </equation*>

  <underline|If <math|c<rsub|1>\<less\>0>>: Define
  <math|2c<rsub|1>=-k<rsup|2>>.

  <\equation*>
    2<big|int><frac|\<mathd\>t|t<rsup|2>-k<rsup|2>>=-y+c<rsub|2>
  </equation*>

  <\equation*>
    <big|int><frac|\<mathd\>t|t<rsup|2>-k<rsup|2>>=<big|int><frac|\<mathd\>t|<around*|(|t-k|)><around*|(|t+k|)>>=<frac|1|2k><big|int><frac|<around*|(|t+k|)>-<around*|(|t-k|)>|<around*|(|t-k|)><around*|(|t+k|)>>
    \<mathd\>t=\<cdots\>=
  </equation*>

  <\equation*>
    =<frac|1|2k><big|int><around*|(|<frac|1|t-k>-<frac|1|t+k>|)>
    \<mathd\>t=<frac|1|2k>*<around*|[|ln <around*|\||t-k|\|>-ln
    <around*|\||t+k|\|>|]>
  </equation*>

  <\equation*>
    \<Rightarrow\><frac|1|k>*<around*|[|ln <around*|\||t-k|\|>-ln
    <around*|\||t+k|\|>|]>=-y+c<rsub|2>
  </equation*>

  <\equation*>
    y=-<frac|1|k>*<around*|[|ln <around*|\||t-k|\|>-ln
    <around*|\||t+k|\|>|]>+c<rsub|2>
  </equation*>

  \;

  <subsection|137\U31>

  <\equation*>
    2t<rsup|2>*y<rprime|''>+<around*|(|y<rprime|'>|)><rsup|3>=2t*y<rprime|'>,<application-space|2em>t\<gtr\>0
  </equation*>

  Set <math|y<rprime|'>=v>\ 

  <\equation*>
    2t<rsup|2>*v<rprime|'>+v<rsup|3>=2t*v
  </equation*>

  First note that <math|v\<equiv\>0> (<math|y\<equiv\>k\<in\>\<bbb-R\>>)
  solves the equation. Multiply both sides by <math|v<rsup|-3>>:

  <\equation*>
    <frac|2t<rsup|2>|v<rsup|3>>*v<rprime|'>-<frac|2t|v<rsup|2>>=-1
  </equation*>

  Note that:

  <\equation*>
    <around*|(|t<rsup|2>*v<rsup|-2>|)><rprime|'>=2t*v<rsup|-2>+-2t<rsup|2>*v<rsup|-3>
  </equation*>

  The equations simplifies to:

  <\equation*>
    <around*|(|t<rsup|2>*v<rsup|-2>|)><rprime|'>=1
  </equation*>

  Integrate both sides:

  <\equation*>
    t<rsup|2>*v<rsup|-2>=t+c<rsub|1>
  </equation*>

  <\equation*>
    v<rsup|2>=<around*|(|<frac|t<rsup|2>|t+c<rsub|1>>|)>
  </equation*>

  \;

  <\equation*>
    v=\<pm\><sqrt|<frac|t<rsup|2>|t+c<rsub|1>>>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|\<pm\><big|int><sqrt|<frac|t<rsup|2>|t+c<rsub|1>>>
    \<mathd\>t>>|<row|<cell|>|<cell|=>|<cell|\<pm\><big|int><frac|t|<sqrt|t+c<rsub|1>>>>>>>
  </eqnarray*>

  Select <math|u=t+c<rsub|1>,\<mathd\>u=\<mathd\>t>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|\<pm\><big|int><frac|u-c<rsub|1>|<sqrt|u>>
    \<mathd\>u=\<pm\><big|int><around*|(|<sqrt|u>-c<rsub|1>*<frac|1|<sqrt|u>>|)>
    \<mathd\>u>>|<row|<cell|>|<cell|=>|<cell|\<pm\>*<around*|[|<frac|2|3>u<rsup|3/2>-2c<rsub|1><sqrt|u>+c<rsub|2>|]>>>|<row|<cell|>|<cell|=>|<cell|\<pm\><around*|[|<frac|2|3>*<around*|(|t+c<rsub|1>|)><rsup|3/2>-2c<rsub|1>*<sqrt|<around*|(|t+c<rsub|1>|)>>+c<rsub|2>|]>>>|<row|<cell|>|<cell|=>|<cell|\<pm\><around*|[|<frac|2|3><sqrt|t+c<rsub|1>>*<around*|(|t-2c<rsub|1>|)>+c<rsub|2>*|]>>>>>
  </eqnarray*>

  <subsection|137\U33>

  <\equation*>
    t<rsup|2>*y<rprime|''>=<around*|(|y<rprime|'>|)><rsup|2>
  </equation*>

  Set <math|v=y<rprime|'>>.

  <\equation*>
    t<rsup|2>*v<rprime|'>=v<rsup|2>
  </equation*>

  <\equation*>
    <frac|\<mathd\>v|v<rsup|2>>=<frac|\<mathd\>t|t<rsup|2>>
  </equation*>

  <\equation*>
    -<frac|1|v>=-<frac|1|t>-c<rsub|1>
  </equation*>

  <\equation*>
    v=<frac|1|c<rsub|1>+<frac|1|t>>=<frac|t|c<rsub|1>*t+1>
  </equation*>

  <\equation*>
    y=<big|int>v \<mathd\>t=<big|int><frac|t|c<rsub|1>*t+1> \<mathd\>t
  </equation*>

  Set <math|u=c<rsub|1>*t+1,\<mathd\>u=c<rsub|1>*\<mathd\>t>

  <\equation*>
    y=<big|int><frac|<frac|u-1|c<rsub|1>>|u>\<cdot\><frac|1|c<rsub|1>>
    \<mathd\>u=<frac|1|c<rsub|1><rsup|2>>*<big|int><around*|(|1-<frac|1|u>|)>
    \<mathd\>u=<frac|u-ln <around*|\||u|\|>+c<rsub|2>|c<rsub|1><rsup|2>>
  </equation*>

  <\equation*>
    y=<frac|c<rsub|1>*t-ln <around*|\||c<rsub|1>*t+1|\|>+c<rsub|2>|c<rsub|1><rsup|2>>,<application-space|1em>c<rsub|1>\<neq\>0
  </equation*>

  If <math|c<rsub|1>=0> then

  <\equation*>
    v=t\<rightarrow\>y=<frac|1|2>t<rsup|2>+c<rsub|2>
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|1|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-3|<tuple|1.2|1|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-4|<tuple|1.3|1|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-5|<tuple|1.4|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Equations
      with dependent variable missing> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>153\U28
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>153\U30
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>153\U31
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>