<TeXmacs|2.1>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment 4>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date:
  </author-affiliation>>>>

  <underline|Question 29>

  <\equation*>
    t*y<rprime|''>+y<rprime|'>=1,<application-space|1em>t\<gtr\>0
  </equation*>

  Substitute <math|y<rprime|'>> for <math|v> and divide by <math|t\<neq\>0>.

  <\equation*>
    <around*|(|t*v|)><rprime|'>=1
  </equation*>

  Integrate and get

  <\equation*>
    v=1+<frac|c<rsub|1>|t>
  </equation*>

  Integrate to find <math|y>.

  <\equation*>
    y=<big|int>v<around*|(|t|)> \<mathd\>t=t+c<rsub|1>*ln
    t+c<rsub|2>,<application-space|1em>t\<gtr\>0
  </equation*>

  <underline|Question 30>

  <\equation*>
    y<rprime|''>+t*<around*|(|y<rprime|'>|)><rsup|2>=0
  </equation*>

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
    v=<frac|2|t<rsup|2>-2c<rsub|1>>
  </equation*>

  There are 3 different kinds of possible solutions, depending whether
  <math|c<rsub|1>\<less\>0,c<rsub|1>=0>, or <math|c<rsub|1>\<gtr\>0>.

  <\enumerate>
    <item>If <math|c<rsub|1>=0>:

    <\equation*>
      v=<frac|2|t<rsup|2>>
    </equation*>

    <\equation*>
      y=<big|int>v \<mathd\>t=-<frac|2|t>+c<rsub|2>,<application-space|1em>t\<neq\>0
    </equation*>

    <item>If <math|c<rsub|1>\<less\>0>, substitute
    2<math|c<rsub|1>=-C<rsup|2>>, <math|C\<gtr\>0>.

    <\equation*>
      v=<frac|2|t<rsup|2>+C<rsup|2>>=<frac|2|C<rsup|2>>\<cdot\><frac|1|<around*|(|<frac|t|C>|)><rsup|2>+1>
    </equation*>

    <\equation*>
      y=<big|int>v \<mathd\>t=<frac|2|C<rsup|2>>\<cdot\><frac|ln
      <around*|(|<frac|t|C>|)>|1/C>+c<rsub|2>
    </equation*>

    <\equation*>
      y=<frac|2|C>ln <around*|(|<frac|t|C>|)>+c<rsub|2>
    </equation*>

    <item>If <math|c<rsub|1>\<gtr\>0>, substitute
    <math|2c<rsub|1>=C<rsup|2>,C\<gtr\>0>.

    <\equation*>
      v==<frac|2|t<rsup|2>-C<rsup|2>>=2*<frac|1|t-C>*<frac|1|t+C>
    </equation*>

    <\equation*>
      y=<big|int>v \<mathd\>t
    </equation*>
  </enumerate>

  <\equation*>
    \;
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>