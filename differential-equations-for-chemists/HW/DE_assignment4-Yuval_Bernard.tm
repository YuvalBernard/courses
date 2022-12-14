<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment 4>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date: 05-12-2022
  </author-affiliation>>>>

  <underline|Question 29>

  <\equation*>
    t*y<rprime|''>+y<rprime|'>=1,<application-space|1em>t\<gtr\>0
  </equation*>

  Substitute <math|y<rprime|'>> for <math|v>.

  <\equation*>
    <around*|(|t*v|)><rprime|'>=1
  </equation*>

  Integrate and divide by <math|t\<neq\>0> to get:

  <\equation*>
    v=1+<frac|c<rsub|1>|t>
  </equation*>

  Integrate to find <math|y>.

  <\equation*>
    y=<big|int>v<around*|(|t|)> \<mathd\>t=t+c<rsub|1>*ln
    t+c<rsub|2>,<application-space|1em>t\<gtr\>0;<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  Note: the integral contains <math|ln <around*|\||t|\|>> but taking the
  absolute value is redundant since the given domain is <math|t\<gtr\>0>.

  <underline|Question 30>

  <\equation*>
    y<rprime|''>+t*<around*|(|y<rprime|'>|)><rsup|2>=0
  </equation*>

  First, notice that <math|y\<equiv\>k>, <math|k\<in\>\<bbb-R\>> is a
  solution for all <math|t>.

  Substitute <math|y<rprime|'>> for <math|v>.

  <\equation*>
    v<rprime|'>+t*v<rsup|2>=0
  </equation*>

  This is a separable equation, which can be rewritten as:

  <\equation*>
    <frac|\<mathd\>v|v<rsup|2>>=-t \<mathd\>t,<application-space|1em>v\<neq\>0
  </equation*>

  Integrate both sides.

  <\equation*>
    <frac|1|v>=<frac|1|2>t<rsup|2>-c<rsub|1>
  </equation*>

  Isolate <math|v>.

  <\equation*>
    v=<frac|2|t<rsup|2>-2c<rsub|1>>,<application-space|1em>t\<neq\><sqrt|2c<rsub|1>>;<application-space|1em>c<rsub|1>\<in\>\<bbb-R\>
  </equation*>

  There are 3 different kinds of possible solutions, depending whether
  <math|c<rsub|1>\<less\>0,c<rsub|1>=0>, or <math|c<rsub|1>\<gtr\>0>.

  <\enumerate>
    <item>If <math|c<rsub|1>=0>:

    <\equation*>
      v=<frac|2|t<rsup|2>>
    </equation*>

    <\equation*>
      y=<big|int>v \<mathd\>t=-<frac|2|t>+c<rsub|2>,<application-space|1em>t\<neq\>0;<application-space|1em>c<rsub|2>\<in\>\<bbb-R\>
    </equation*>

    <item>If <math|c<rsub|1>\<less\>0>, substitute
    2<math|c<rsub|1>=-C<rsup|2>>, <math|C\<gtr\>0>.

    <\equation*>
      v=<frac|2|t<rsup|2>+C<rsup|2>>=<frac|2|C<rsup|2>>\<cdot\><frac|1|<around*|(|<frac|t|C>|)><rsup|2>+1>
    </equation*>

    <\equation*>
      y=<big|int>v \<mathd\>t=<frac|2|C<rsup|2>>\<cdot\><frac|arctan
      <around*|(|<frac|t|C>|)>|1/C>+c<rsub|2>
    </equation*>

    <\equation*>
      y=<frac|2|C>*arctan <around*|(|<frac|t|C>|)>+c<rsub|2>,<application-space|1em>\<forall\>t;<application-space|1em>c<rsub|2>\<in\>\<bbb-R\>
    </equation*>

    <item>If <math|c<rsub|1>\<gtr\>0>, substitute
    <math|2c<rsub|1>=C<rsup|2>,C\<gtr\>0>.

    <\equation*>
      v=<frac|2|t<rsup|2>-C<rsup|2>>=2*<frac|1|<around*|(|t-C|)>>*<frac|1|<around*|(|t+C|)>>
    </equation*>

    <\equation*>
      y=<big|int>v \<mathd\>t=2*<frac|1|2C>*<big|int><frac|<around*|(|t+C|)>*-<around*|(|t-C|)>|<around*|(|t+C|)>*<around*|(|t-C|)>>
      \<mathd\>t=<frac|1|C>*<big|int><around*|[|<frac|1|t-C>-<frac|1|t+C>|]>\<mathd\>t
    </equation*>

    <\equation*>
      y=<frac|1|C>*<around*|[|ln <around*|\||<frac|1|t-C>|\|>-ln
      <around*|\||<frac|1|t+C>|\|>|]>+c<rsub|2>
    </equation*>

    <\equation*>
      y=<frac|1|C>*ln <around*|\||<frac|t+C|t-C>|\|>+c<rsub|2>,<application-space|1em>t\<neq\>C;<application-space|1em>c<rsub|2>\<in\>\<bbb-R\>
    </equation*>
  </enumerate>

  <\equation*>
    \;
  </equation*>

  <\underline>
    Question 32
  </underline>

  <\equation*>
    y<rprime|''>+y<rprime|'>=\<mathe\><rsup|-t>
  </equation*>

  Set <math|v=y<rprime|'>> and solve using integration factor method.

  <\equation*>
    v<rprime|'>+v=\<mathe\><rsup|-t>
  </equation*>

  <\equation*>
    v=\<mathe\><rsup|-t>*<around*|(|<big|int>\<mathe\><rsup|-t>\<cdot\>\<mathe\><rsup|t>
    \<mathd\>t+c<rsub|1>|)>=\<mathe\><rsup|-t><around*|(|t+c<rsub|1>|)>
  </equation*>

  Now integrate <math|v> to find <math|y>:

  <\equation*>
    y=<big|int>v \<mathd\>t=<big|int><around*|(|t*\<mathe\><rsup|-t>+c<rsub|1>\<mathe\><rsup|-t>|)>
    \<mathd\>t
  </equation*>

  Via integration by parts,

  <\equation*>
    <big|int>t*\<mathe\><rsup|-t>=-t*\<mathe\><rsup|-t>-\<mathe\><rsup|-t>=-\<mathe\><rsup|-t>*<around*|(|t+1|)>
  </equation*>

  <\equation*>
    \<Rightarrow\>y=-\<mathe\><rsup|-t>*<around*|(|t+1|)>-c<rsub|1>*\<mathe\><rsup|-t>+c<rsub|2>
  </equation*>

  <\equation*>
    y=-t*\<mathe\><rsup|-t>-<around*|(|c<rsub|1>+1|)>*\<mathe\><rsup|-t>+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  <underline|Question 36>

  <\equation*>
    y<rprime|''>+y*<around*|(|y<rprime|'>|)><rsup|3>=0
  </equation*>

  First observe that <math|y\<equiv\>k>, <math|k\<in\>\<bbb-R\>> is a
  solution.

  Set <math|y<rprime|'>=v>.

  <\equation*>
    v<rprime|'>+y*v<rsup|3>=0
  </equation*>

  Write <math|v<rprime|'>> as <math|<frac|\<mathd\>v|\<mathd\>t>=<frac|\<mathd\>v|\<mathd\>y>\<cdot\><frac|\<mathd\>y|\<mathd\>t>=<frac|\<mathd\>v|\<mathd\>y>*\<cdot\>v>

  <\equation*>
    <frac|\<mathd\>v|\<mathd\>y>\<cdot\>v+y\<cdot\>v<rsup|3>=0
  </equation*>

  This is a separable equation. Divide by <math|v> assuming <math|v\<neq\>0>.
  (If <math|v=0> then <math|y\<equiv\>k> is a solution we've already found.)
  Rewrite as:

  <\equation*>
    <frac|\<mathd\>v|v<rsup|2>>=-y \<mathd\>y
  </equation*>

  Integrate both sides to get

  <\equation*>
    -<frac|1|v>=-<frac|1|2>y<rsup|2>+c<rsub|1>
  </equation*>

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>t>=v=<frac|2|y<rsub|><rsup|2>-2c<rsub|1>>
  </equation*>

  We're left with another separable DE. Rewrite as:

  <\equation*>
    <around*|(|y<rsup|2>-2c<rsub|1>|)> \<mathd\>y=2\<mathd\>t
  </equation*>

  and integrate.

  <\equation*>
    <frac|y<rsup|3>|3>-2c<rsub|1>*y=2t+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  <math|y> is given implicitly.

  <underline|Question 37>

  <\equation*>
    2y<rsup|2>*y<rprime|''>+2y*<around*|(|y<rprime|'>|)><rsup|2>=1
  </equation*>

  Set <math|y<rprime|'>=v>.

  <\equation*>
    2y<rsup|2>*v<rprime|'>+2y*v<rsup|2>=1
  </equation*>

  Divide by <math|2y<rsup|2>> assuming <math|y\<neq\>0>.

  <\equation*>
    v<rprime|'>+<frac|1|y>*v<rsup|2>=<frac|1|2y<rsup|2>>
  </equation*>

  Input <math|v<rprime|'>=<frac|\<mathd\>v|\<mathd\>y>*\<cdot\>v>

  <\equation*>
    <frac|\<mathd\>v|\<mathd\>y>*v+<frac|1|y>*v<rsup|2>=<frac|1|2y<rsup|2>>
  </equation*>

  Set <math|f<around*|(|y|)>=<frac|1|2>v<rsup|2>>.
  <math|f<rprime|'>=<frac|\<mathd\>f|\<mathd\>y>=v*<frac|\<mathd\>v|\<mathd\>y>>.
  Therefore,

  <\equation*>
    <frac|\<mathd\>f|\<mathd\>y>+<frac|2|y>*f=<frac|1|2y<rsup|2>>
  </equation*>

  Solve using integration factor method. <math|<around*|(|a=<frac|2|y>,b=<frac|1|2y<rsup|2>>;f=\<mathe\><rsup|-<big|int>a<around*|(|y|)>
  \<mathd\>y>*<around*|[|<big|int>b<around*|(|y|)>*\<mathe\><rsup|<big|int>a<around*|(|y|)>
  \<mathd\>y>+c<rsub|1>|]>|)>>

  <\equation*>
    f=<frac|1|y<rsup|2>>*<around*|(|<big|int><frac|1|2y<rsup|2>>\<cdot\>y<rsup|2>
    \<mathd\>y+c<rsub|1>|)>=<frac|1|y<rsup|2>>*<around*|(|<frac|1|2>y+c<rsub|1>|)>
  </equation*>

  <\equation*>
    f=<frac|1|2y>+<frac|c<rsub|1>|y<rsup|2>>
  </equation*>

  Input back <math|f=<frac|v<rsup|2>|2>> and get

  <\equation*>
    v<rsup|2>=<frac|1|y>+<frac|2c<rsub|1>|y<rsup|2>>
  </equation*>

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>t>=\<pm\><around*|(|<frac|1|y>+<frac|2c<rsub|1>|y<rsup|2>>|)><rsup|1/2>=\<pm\><sqrt|<frac|y+2c<rsub|1>|y<rsup|2>>>=\<pm\><frac|<sqrt|y+2c<rsub|1>>|<around*|\||y|\|>>
  </equation*>

  This is a separable equation

  <\equation*>
    \<pm\><big|int><frac|<around*|\||y|\|>|<sqrt|y+2c<rsub|1>>>
    \<mathd\>y=<big|int>\<mathd\>t=t+c<rsub|2>
  </equation*>

  Because we already have <math|\<pm\>> as a prefix, we don't have to take
  the absolute value of <math|y>.

  Let's focus on the LHS: substitute <math|u=y+2c<rsub|1>>.
  <math|\<mathd\>u=\<mathd\>y>.

  <\equation*>
    \<pm\><big|int><frac|u-2c<rsub|1>|<sqrt|u>>
    \<mathd\>u=\<pm\><big|int><around*|(|u<rsup|1/2>-2c<rsub|1>*u<rsup|-1/2>|)>\<mathd\>u=\<pm\><around*|(|<frac|2|3>*u<rsup|3/2>-2c<rsub|1>\<cdot\>2<sqrt|u>|)>
  </equation*>

  Substitute back <math|u> and simplify:

  <\equation*>
    \<pm\><around*|[|<frac|2|3><around*|(|y+2c<rsub|1>|)><rsup|3/2>-4c<rsub|1>*<around*|(|y+2c<rsub|1>|)><rsup|1/2>|]>=\<pm\><around*|[|<frac|2|3><sqrt|y+2c<rsub|1>>*<around*|(|y+2c<rsub|1>-6c<rsub|1>|)>|]>=\<pm\><around*|[|<frac|2|3><sqrt|y+2c<rsub|1>>*<around*|(|y-4c<rsub|1>|)>|]>
  </equation*>

  To summarize:

  \;

  <\equation*>
    \<pm\><around*|[|<frac|2|3><sqrt|y+2c<rsub|1>>*<around*|(|y-4c<rsub|1>|)>|]>=t+c<rsub|2>,<application-space|1em>y\<geq\>-2c<rsub|1>;<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  <math|y> is given implicitly.

  <\underline>
    Question 40
  </underline>

  <\equation*>
    y<rprime|'>*y<rprime|''>=2,<application-space|1em>y<around*|(|0|)>=1,y<rprime|'><around*|(|0|)>=2
  </equation*>

  Set <math|v=y<rprime|'>> and divide by <math|v\<neq\>0>.

  <\equation*>
    <frac|\<mathd\>v|\<mathd\>t>*=<frac|2|v>,<application-space|1em>v\<neq\>0
  </equation*>

  Solve separable equation:

  <\equation*>
    <big|int>v \<mathd\>v=<big|int>2 \<mathd\>t
  </equation*>

  <\equation*>
    <frac|1|2>v<rsup|2>=2t+c<rsub|1>
  </equation*>

  <\equation*>
    v=\<pm\><sqrt|4t+2c<rsub|1>>
  </equation*>

  The ICs dictate <math|v<around*|(|0|)>=y<rprime|'><around*|(|0|)>=2\<gtr\>0>.
  This can simplify the solution. Assume only possitive <math|v>.

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>t>=v=<sqrt|4t+2c<rsub|1>>
  </equation*>

  Integrate to find <math|y>.

  <\equation*>
    y=<frac|1|6>*<around*|(|4t+2c<rsub|1>|)><rsup|3/2>+c<rsub|2>
  </equation*>

  Find specific solution that satisfies ICs. We have
  <math|y<rprime|'><around*|(|0|)>=v<around*|(|0|)>=2>. Input in
  <math|<frac|1|2>v<rsup|2>=2t+c<rsub|1>> and get:

  <\equation*>
    <frac|1|2>\<cdot\>2<rsup|2>=2\<cdot\>0+c<rsub|1>\<rightarrow\>c<rsub|1>=2
  </equation*>

  Also:

  <\equation*>
    y<around*|(|0|)>=1=<frac|1|6>*<around*|(|4\<cdot\>0+2\<cdot\>2|)><rsup|3/2>+c<rsub|2>\<rightarrow\>c<rsub|2>=-<frac|1|3>
  </equation*>

  The specific solution is\ 

  <\equation*>
    y=<frac|1|6>*<around*|(|4t+4|)><rsup|3/2>-<frac|1|3>
  </equation*>

  <\equation*>
    y=<frac|4|3>*<around*|(|t+1|)><rsup|3/2>-<frac|1|3>
  </equation*>

  <underline|Question 41>

  <\equation*>
    y<rprime|''>-3y<rsup|2>=0,<application-space|1em>y<around*|(|0|)>=2,y<rprime|'><around*|(|0|)>=4
  </equation*>

  Set <math|v=y<rprime|'>>

  <\equation*>
    v<rprime|'>-3y<rsup|2>=0
  </equation*>

  Write <math|v<rprime|'>> as <math|v*<frac|\<mathd\>v|\<mathd\>y>>

  <\equation*>
    v*<frac|\<mathd\>v|\<mathd\>y>=3y<rsup|2>
  </equation*>

  <\equation*>
    <big|int>v \<mathd\>v=<big|int>3y<rsup|2> \<mathd\>y
  </equation*>

  <\equation*>
    <frac|v<rsup|2>|2>=y<rsup|3>+c<rsub|1>
  </equation*>

  <\equation*>
    <frac|\<mathd\>y|\<mathd\>t>=v=\<pm\><sqrt|2>*<sqrt|y<rsup|3>+c<rsub|1>>
  </equation*>

  Solve separable DE:

  <\equation*>
    \<pm\><big|int><around*|(|y<rsup|3>+c<rsub|1>|)><rsup|-1/2>
    \<mathd\>y=<sqrt|2><big|int>\<mathd\>t
  </equation*>

  The LHS integral is unsolvable. We can try to find <math|c<rsub|1>> and may
  solve the integral if we found that, perhaps, <math|c<rsub|1>=0>. We know
  that <math|y<around*|(|0|)>=2> and that
  <math|y<rprime|'><around*|(|0|)>=v<around*|(|0|)>=4>. If we input these in
  the equation

  <\equation*>
    <frac|v<rsup|2>|2>=y<rsup|3>+c<rsub|1>
  </equation*>

  from above, we get:

  <\equation*>
    <frac|4<rsup|2>|2>=2<rsup|3>+c<rsub|1>\<rightarrow\>c<rsub|1>=0
  </equation*>

  Fortunately, now the integral is solvable! Input <math|c<rsub|1>=0> and get

  <\equation*>
    <big|int><around*|(|y<rsup|3>+0|)><rsup|-1/2>
    \<mathd\>y=<big|int>y<rsup|-3/2> \<mathd\>y=-2y<rsup|-1/2>
  </equation*>

  Therefore,

  <\equation*>
    \<pm\><around*|(|-2y<rsup|-1/2>|)>=<sqrt|2>*<around*|(|t+c<rsub|2>|)>
  </equation*>

  Raise both sides by <math|-2>:

  <\equation*>
    y=2<around*|(|t+c<rsub|2>|)><rsup|-2>
  </equation*>

  Input the ICs:

  <\equation*>
    y<around*|(|0|)>=2=2*<around*|(|0+c<rsub|2>|)><rsup|-2>\<rightarrow\>c<rsub|2>=1<infix-or>c<rsub|2>=-1
  </equation*>

  To find <math|c<rsub|2>> we use the IC <math|y<rprime|'><around*|(|0|)>=4>.
  If <math|c<rsub|2>=1>,

  <\equation*>
    y<rprime|'>=-4*<around*|(|x+1|)><rsup|-3>
  </equation*>

  <\equation*>
    y<rprime|'><around*|(|0|)>=-4*<around*|(|0+1|)><rsup|-3>\<neq\>4
  </equation*>

  And if <math|c<rsub|2>=-1>,

  <\equation*>
    y<rprime|'>=-4*<around*|(|x-1|)><rsup|-3>
  </equation*>

  <\equation*>
    y<rprime|'><around*|(|0|)>=-4*<around*|(|0-1|)><rsup|-3>=-4<space|1em>\<checkmark\>
  </equation*>

  The initial conditions hold only for <math|c<rsub|2>=-1>. To summarize, the
  unique solution is

  <\equation*>
    y=2<around*|(|t-1|)><rsup|-2>,<application-space|1em>t\<neq\>1
  </equation*>

  <\equation*>
    \;
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>