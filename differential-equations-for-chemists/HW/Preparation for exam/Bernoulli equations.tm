<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|A neat trick>>

  <section|Bernoulli equations>

  Sometimes it's possible to solve a nonlinear equation by making a change of
  variables that converts it into a linear equation. For example, take

  <\equation*>
    y<rprime|'>+p<around*|(|t|)>*y=q<around*|(|t|)>*y<rsup|n>
  </equation*>

  If <math|n\<neq\>0,1>, then the substitution <math|v=y<rsup|1-n>> reduces
  it into a linear equation.

  Take Page 137 Question 39 for reference.

  <\equation*>
    y<rprime|''>+<around*|(|y<rprime|'>|)><rsup|2>=2*\<mathe\><rsup|-y>
  </equation*>

  Set <math|v=y<rprime|'>,<frac|\<mathd\>v|\<mathd\>t>=<frac|\<mathd\>v|\<mathd\>y>*v>.

  <\equation*>
    <frac|\<mathd\>v|\<mathd\>y>*v+v<rsup|2>=2*\<mathe\><rsup|-y>
  </equation*>

  Divide by <math|v\<neq\>0> on some interval.

  <\equation*>
    <frac|\<mathd\>v|\<mathd\>y>+v=2*\<mathe\><rsup|-y>\<cdot\>v<rsup|-1>
  </equation*>

  Set <math|w=v<rsup|2>,<frac|\<mathd\>w|\<mathd\>y>=2v*<frac|\<mathd\>v|\<mathd\>y>>.
  Multiply both sides by <math|v>.

  <\equation*>
    <frac|\<mathd\>v|\<mathd\>y>*v+v<rsup|2>=2*\<mathe\><rsup|-y>
  </equation*>

  and substitute <math|w>.

  <\equation*>
    <frac|\<mathd\>w|\<mathd\>y>+2w=4*\<mathe\><rsup|-y>
  </equation*>

  This is a linear equation in <math|w>! Its solution is

  <\equation*>
    w=\<mathe\><rsup|<big|int>-2 \<mathd\>y>*<around*|[|<big|int>4*\<mathe\><rsup|-y>*\<mathe\><rsup|<big|int>2
    \<mathd\>y> \<mathd\>y+c<rsub|1>|]>
  </equation*>

  <\equation*>
    w=\<mathe\><rsup|-2y>*<around*|[|<big|int>4*\<mathe\><rsup|y>
    \<mathd\>y+c<rsub|1>|]>
  </equation*>

  <\equation*>
    w=4*\<mathe\><rsup|-y>+c<rsub|1>*\<mathe\><rsup|-2y>
  </equation*>

  Therefore,

  <\equation*>
    v=\<pm\><sqrt|w>=\<pm\><sqrt|4*\<mathe\><rsup|-y>+c<rsub|1>*\<mathe\><rsup|-2y>>
  </equation*>

  <\equation*>
    <big|int><frac|\<mathd\>y|\<pm\><sqrt|4*\<mathe\><rsup|-y>+c<rsub|1>*\<mathe\><rsup|-2y>>>=<big|int>\<mathd\>t
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int><frac|\<mathd\>y|<sqrt|4*\<mathe\><rsup|-y>+c<rsub|1>*\<mathe\><rsup|-2y>>>>|<cell|=>|<cell|<big|int><frac|\<mathe\><rsup|<frac|y|2>>*\<mathd\>y|<sqrt|4+c<rsub|1>*\<mathe\><rsup|-y>>>>>>>
  </eqnarray*>

  Substitute <math|x=-<frac|y|2>,\<mathd\>x=-<frac|1|2>*\<mathd\>y>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<big|int><frac|\<mathe\><rsup|<frac|y|2>>*\<mathd\>y|<sqrt|4+c<rsub|1>*\<mathe\><rsup|-y>>>>|<cell|=>|<cell|-2<big|int><frac|\<mathe\><rsup|-x>*\<mathd\>x|<sqrt|4+c<rsub|1>*\<mathe\><rsup|2x>>>>>>>
  </eqnarray*>

  Substitute <math|u=\<mathe\><rsup|x>\<rightarrow\>\<mathd\>u=\<mathe\><rsup|x>
  \<mathd\>x>

  <\equation*>
    -2<big|int><frac|\<mathe\><rsup|-x>*\<mathd\>x|<sqrt|4+c<rsub|1>*\<mathe\><rsup|2x>>>=-2<big|int><frac|<frac|1|u>\<cdot\><frac|1|u>
    \<mathd\>u|<sqrt|4+c<rsub|1>*u<rsup|2>>>=-2<big|int><frac|\<mathd\>u|u<rsup|2>*<sqrt|4+c<rsub|1>*u<rsup|2>>>=-2<big|int><frac|\<mathd\>u|u<rsup|2>*<sqrt|c<rsub|1>><sqrt|<frac|4|c<rsub|1>>+u<rsup|2>>>
  </equation*>

  Substitute <math|u=<frac|2|<sqrt|c<rsub|1>>>*tan
  \<theta\>,\<mathd\>u=<frac|2|<sqrt|c<rsub|1>>>*sec<rsup|2> \<theta\>
  \<mathd\>\<theta\>>

  <\equation*>
    -2<big|int><frac|\<mathd\>u|u<rsup|2>*<sqrt|c<rsub|1>><sqrt|<frac|4|c<rsub|1>>+u<rsup|2>>>=-2<big|int><frac|<frac|2|<sqrt|c<rsub|1>>>*sec<rsup|2>
    \<theta\> \<mathd\>\<theta\>|<frac|4|c<rsub|1>>**tan<rsup|2>
    \<theta\><sqrt|c<rsub|1>>*<sqrt|<frac|4|c<rsub|1>>+<frac|4|c<rsub|1>>*tan<rsup|2>
    \<theta\>>>=-<big|int><frac|sec<rsup|2> \<theta\>
    \<mathd\>\<theta\>|tan<rsup|2> \<theta\>*<sqrt|<frac|4|c<rsub|1>>*>*sec
    \<theta\>>
  </equation*>

  <\equation*>
    -<big|int><frac|sec<rsup|2> \<theta\> \<mathd\>\<theta\>|tan<rsup|2>
    \<theta\>*<sqrt|<frac|4|c<rsub|1>>*>*sec
    \<theta\>>=-<frac|<sqrt|c<rsub|1>>|2><big|int><frac|sec
    \<theta\>|tan<rsup|2> \<theta\>> \<mathd\>\<theta\>=-<frac|<sqrt|c<rsub|1>>|2>*<big|int><frac|cos
    \<theta\>|sin<rsup|2> \<theta\>> \<mathd\>\<theta\>
  </equation*>

  Substitute <math|z=sin \<theta\>,\<mathd\>z=cos \<theta\>
  \<mathd\>\<theta\>>

  <\equation*>
    -<frac|<sqrt|c<rsub|1>>|2>*<big|int><frac|cos \<theta\>|sin<rsup|2>
    \<theta\>> \<mathd\>\<theta\>=-<frac|<sqrt|c<rsub|1>>|2><big|int><frac|\<mathd\>z|z<rsup|2>>=<frac|<sqrt|c<rsub|1>>|2>\<cdot\><frac|1|z>=<frac|<sqrt|c<rsub|1>>|2>\<cdot\><frac|1|sin
    \<theta\>>=\<cdots\>=<frac|<sqrt|4\<mathe\><rsup|y>+c<rsub|1>>|2>
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>