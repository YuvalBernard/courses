<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  11>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    Let <math|v=<around*|(|x<rsub|1>,x<rsub|2>|)>,w=<around*|(|y<rsub|1>,y<rsub|2><rsub|>|)>>
    and define <math|<around*|\<langle\>|v,w|\<rangle\>>\<equiv\>x<rsub|1>*y<rsub|1>+3*x<rsub|2>*y<rsub|2>>.
    Show that the following 5 properties hold:

    <\enumerate-numeric>
      <item> <math|<around*|\<langle\>|u+v,w|\<rangle\>>=<around*|\<langle\>|u,w|\<rangle\>>+<around*|\<langle\>|v,w|\<rangle\>>>
      for all <math|u,v,w\<in\>\<bbb-R\><rsup|2>>. (Denote
      <math|u=<around*|(|z<rsub|1>,z<rsub|2>|)>>).

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|u+v,w|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|<around*|(|x<rsub|1>+z<rsub|1>,x<rsub|2>+z<rsub|2>|)>,<around*|(|y<rsub|1>,y<rsub|2>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsub|1>+z<rsub|1>|)>*y<rsub|1>+3*<around*|(|x<rsub|2>+z<rsub|2>|)>*y<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|<with|color|blue|x<rsub|1>*y<rsub|1>+3*x<rsub|2>*y<rsub|2>>+<with|color|red|z<rsub|1>*y<rsub|1>+3*z<rsub|2>*y<rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<with|color|blue|<around*|\<langle\>|v,w|\<rangle\>>>+<with|color|red|<around*|\<langle\>|u,w|\<rangle\>>>
        .>>>>
      </eqnarray*>

      <item><math|<around*|\<langle\>|\<alpha\>*v,w|\<rangle\>>=\<alpha\>*<around*|\<langle\>|v,w|\<rangle\>>>
      for all <math|v,w\<in\>\<bbb-R\><rsup|2>> and
      <math|\<alpha\>\<in\>\<bbb-R\>>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|\<alpha\>*v,w|\<rangle\>>>|<cell|=>|<cell|<around*|\<langle\>|<around*|(|\<alpha\>*x<rsub|1>,\<alpha\>*x<rsub|2>|)>,<around*|(|y<rsub|1>,y<rsub|2>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*x<rsub|1>*y<rsub|1>+3*\<alpha\>*x<rsub|2>*y<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|(|x<rsub|1>*y<rsub|1>+3*x<rsub|2>*y<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|\<langle\>|v,w|\<rangle\>>
        .>>>>
      </eqnarray*>

      <item> <math|<around*|\<langle\>|w,v|\<rangle\>>=<wide|<around*|\<langle\>|v,w|\<rangle\>>|\<bar\>>>
      for <math|v,w\<in\>\<bbb-R\><rsup|2>>.

      For all <math|\<alpha\>\<in\>\<bbb-R\>>,
      <math|\<alpha\>=<wide|\<alpha\>|\<bar\>>>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<wide|<around*|\<langle\>|v,w|\<rangle\>>|\<bar\>>>|<cell|=>|<cell|<wide|x<rsub|1>*y<rsub|1>+3*x<rsub|2>*y<rsub|2>|\<bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|x<rsub|1>*y<rsub|1>|\<bar\>>+3*<wide|x<rsub|2>*y<rsub|2>|\<bar\>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|1>*y<rsub|1>+3*x<rsub|2>*y<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|v,w|\<rangle\>>
        .>>>>
      </eqnarray*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|w,v|\<rangle\>>>|<cell|=>|<cell|y<rsub|1>*x<rsub|1>+3*y<rsub|2>*x<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|1>*y<rsub|1>+3*x*<rsub|2>*y<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|v,w|\<rangle\>>
        .>>>>
      </eqnarray*>

      By transitivity, <math|<around*|\<langle\>|w,v|\<rangle\>>=<wide|<around*|\<langle\>|v,w|\<rangle\>>|\<bar\>>>.
      <math|>

      <item> <math|<around*|\<langle\>|v,v|\<rangle\>>\<geq\>0> for all
      <math|v\<in\>\<bbb-R\><rsup|2>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|v,v|\<rangle\>>>|<cell|=>|<cell|x<rsub|1>*x<rsub|1>+3*x<rsub|2>*x<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|1><rsup|2>+3*x<rsub|2><rsup|2>
        .>>>>
      </eqnarray*>

      For any <math|\<alpha\>\<in\>\<bbb-R\>>,
      <math|\<alpha\><rsup|2>\<in\>\<bbb-R\>> is non-negative, and the sum of
      two non-negative (real) numbers is non-negative. Therefore
      <math|<around*|\<langle\>|v,v|\<rangle\>>\<geq\>0>.

      <item><math|<around*|\<langle\>|v,v|\<rangle\>>=0> iff
      <math|v=<around*|(|0,0|)>>.

      The sum of two non-negative numbers is zero iff they are both zero, so
      <math|x<rsub|1>,x<rsub|2>> must be zero.
    </enumerate-numeric>
  </question>

  <\question>
    Given <math|f<around*|(|x|)>,g<around*|(|x|)>> two real integrable
    functions defined on <math|<around*|[|0,1|]>>,

    <\equation*>
      <around*|\<langle\>|f,g|\<rangle\>>=<big|int><rsub|0><rsup|1>f<around*|(|x|)>*g<around*|(|x|)>
      \<mathd\>x .
    </equation*>

    Show that the 5 properties hold.

    <\enumerate-numeric>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|f+h,g|\<rangle\>>>|<cell|=>|<cell|<big|int><rsub|0><rsup|1><around*|(|f<around*|(|x|)>+h<around*|(|x|)>|)>*g<around*|(|x|)>
        \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|0><rsup|1><around*|(|f<around*|(|x|)>*g<around*|(|x|)>+h<around*|(|x|)>*g<around*|(|x|)>|)>
        \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|0><rsup|1>f<around*|(|x|)>*g<around*|(|x|)>
        \<mathd\>x+<big|int><rsub|0><rsup|1>h<around*|(|x|)>*g<around*|(|x|)>
        \<mathd\>x >>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|f,g|\<rangle\>>+<around*|\<langle\>|h,g|\<rangle\>><space|1em>.>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<langle\>|\<alpha\>*f,g|\<rangle\>>>|<cell|=>|<cell|<big|int><rsub|0><rsup|1>\<alpha\>*f<around*|(|x|)>*g<around*|(|x|)>
        \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<big|int><rsub|0><rsup|1>f<around*|(|x|)>*g<around*|(|x|)>
        \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|\<langle\>|f,g|\<rangle\>>
        .>>>>
      </eqnarray*>

      <item>Note that for real functions <math|<wide|f|\<bar\>><around*|(|x|)>=f<around*|(|x|)>>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<wide|<around*|\<langle\>|f,g|\<rangle\>>|\<bar\>>>|<cell|=>|<cell|<big|int><rsub|0><rsup|1><wide|f|\<bar\>><around*|(|x|)>*<wide|g|\<bar\>><around*|(|x|)>
        \<mathd\>x=<big|int><rsub|0><rsup|1>f<around*|(|x|)>*g<around*|(|x|)>
        \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|0><rsup|1>g<around*|(|x|)>*f<around*|(|x|)>
        \<mathd\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|g,f|\<rangle\>>
        .>>>>
      </eqnarray*>

      <item><math|<around*|\<langle\>|f,f|\<rangle\>>=<big|int><rsub|0><rsup|1>f<around*|(|x|)>*f<around*|(|x|)>
      \<mathd\>x=<big|int><rsub|0><rsup|1>f<rsup|2><around*|(|x|)>
      \<mathd\>x>. The area between the <math|x>-axis and a squared function
      is always non-negative.

      <item>For the integral to be zero, the area between the <math|x>-axis
      and the function must also be zero. This is possible iff the function
      completely lies on the <math|x>-axis, that is,
      <math|f<around*|(|x|)>=0>.
    </enumerate-numeric>
  </question>

  <\question>
    Given an inner product space <math|V> over <math|\<bbb-R\>> and
    <math|v<rsub|1>,\<ldots\>,v<rsub|n>> a basis for <math|V>, then an
    orthonormal basis <math|u<rsub|1>,\<ldots\>,u<rsub|n>> for <math|V>
    exists, such that <math|span <around*|{|u<rsub|1>,\<ldots\>,u<rsub|k>|}>=span
    <around*|{|v<rsub|1>,\<ldots\>,v<rsub|k>|}>> for all
    <math|k=1,\<ldots\>,n>, where <math|u<rsub|1>,\<ldots\>,u<rsub|k>> are
    given as follows:

    <\eqnarray*>
      <tformat|<table|<row|<cell|Define \ \<psi\><rsub|1>=v<rsub|1>,>|<cell|>|<cell|then<space|1em>u<rsub|1>=<frac|\<psi\><rsub|1>|<around*|\<\|\|\>|\<psi\><rsub|1>|\<\|\|\>>>
      .>>|<row|<cell|\<psi\><rsub|k>=v<rsub|k>-<big|sum><rsub|j=1><rsup|k-1><around*|\<langle\>|v<rsub|k>,u<rsub|j>|\<rangle\>>*u<rsub|j>,>|<cell|>|<cell|then<space|1em>u<rsub|k>=<frac|\<psi\><rsub|k>|<around*|\<\|\|\>|\<psi\><rsub|k>|\<\|\|\>>>
      .>>>>
    </eqnarray*>

    For <math|V=\<bbb-R\><rsub|2><around*|[|x|]>> with the inner product
    space defined on <math|<around*|[|0,1|]>>, a basis for <math|V> is
    <math|<around*|{|v<rsub|1>=1,v<rsub|2>=x,v<rsub|3>=x<rsup|2>|}>>. Perform
    the Gram-Schmidt process to get an orthonormal basis for <math|V>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|1>>|<cell|=>|<cell|v<rsub|1>=1>>|<row|<cell|<around*|\<\|\|\>|\<psi\><rsub|1>|\<\|\|\>>>|<cell|=>|<cell|<sqrt|<big|int><rsub|0><rsup|1>1<rsup|2>
      \<mathd\>x>=<sqrt|<around*|[|x|]><rsub|0><rsup|1>>=1>>|<row|<cell|u<rsub|1>>|<cell|=>|<cell|<frac|\<psi\><rsub|1>|<around*|\<\|\|\>|\<psi\><rsub|1>|\<\|\|\>>>=1
      .>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|2>>|<cell|=>|<cell|v<rsub|2>-<around*|\<langle\>|v<rsub|2>,u<rsub|1>|\<rangle\>>*u<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|x-<around*|(|<big|int><rsub|0><rsup|1>x\<cdot\>1
      \<mathd\>x|)>\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|x-<around*|[|<frac|1|2>x<rsup|2>|]><rsub|0><rsup|1>>>|<row|<cell|>|<cell|=>|<cell|x-<frac|1|2>>>|<row|<cell|<around*|\<\|\|\>|\<psi\><rsub|2>|\<\|\|\>>>|<cell|=>|<cell|<sqrt|<big|int><rsub|0><rsup|1><around*|(|x-<frac|1|2>|)><rsup|2>
      \<mathd\>x>=<sqrt|<big|int><rsub|0><rsup|1><around*|(|x<rsup|2>-x+<frac|1|4>|)>
      \<mathd\>x>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<around*|[|<frac|1|3>*x<rsup|3>-<frac|1|2>*x<rsup|2>+<frac|1|4>*x|]><rsub|0><rsup|1>>=<sqrt|<frac|1|3>-<frac|1|2>+<frac|1|4>>=<frac|1|<sqrt|12>>>>|<row|<cell|u<rsub|2>>|<cell|=>|<cell|<frac|\<psi\><rsub|2>|<around*|\<\|\|\>|\<psi\><rsub|2>|\<\|\|\>>>=<sqrt|12>*<around*|(|x-<frac|1|2>|)>
      .>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|3>>|<cell|=>|<cell|v<rsub|3>-<around*|\<langle\>|v<rsub|3>,u<rsub|1>|\<rangle\>>*u<rsub|1>-<around*|\<langle\>|v<rsub|3>,u<rsub|2>|\<rangle\>>*u<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|2>-<big|int><rsub|0><rsup|1>x<rsup|2>
      \<mathd\>x-<around*|[|<sqrt|12><big|int><rsub|0><rsup|1>x<rsup|2>*<around*|(|x-<frac|1|2>|)>
      \<mathd\>x|]><sqrt|12><around*|(|x-<frac|1|2>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|2>-<around*|[|<frac|1|3>*x<rsup|3>|]><rsub|0><rsup|1>-12*<around*|[|<frac|1|4>*x<rsup|4>-<frac|1|6>*x<rsup|3>|]><rsub|0><rsup|1>*<around*|(|x-<frac|1|2>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|2>-<frac|1|3>-12<around*|(|*<frac|1|4>-<frac|1|6>|)>*<around*|(|x-<frac|1|2>|)>=x<rsup|2>-x+<frac|1|6>
      .>>|<row|<cell|<around*|\<\|\|\>|\<psi\><rsub|3>|\<\|\|\>>>|<cell|=>|<cell|<sqrt|<big|int><rsub|0><rsup|1><around*|(|x<rsup|2>-x+<frac|1|6>|)><around*|(|x<rsup|2>-x+<frac|1|6>|)>
      \<mathd\>x>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|int><rsub|0><rsup|1><around*|(|x<rsup|4>-x<rsup|3>+<frac|1|6>*x<rsup|2>-x<rsup|3>+x<rsup|2>-<frac|1|6>*x+<frac|1|6>*x<rsup|2>-<frac|1|6>*x+<frac|1|36>|)>
      \<mathd\>x>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|int><rsub|0><rsup|1><around*|(|x<rsup|4>-2*x<rsup|3>+<frac|4|3>*x<rsup|2>-<frac|1|3>*x+<frac|1|36>|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<around*|[|<frac|1|5>*x<rsup|5>-<frac|1|2>*x<rsup|4>+<frac|4|9>*x<rsup|3>-<frac|1|6>*x<rsup|2>+<frac|1|36>*x|]><rsub|0><rsup|1>>=<sqrt|<frac|1|180>>
      .>>|<row|<cell|u<rsub|3>>|<cell|=>|<cell|<frac|\<psi\><rsub|3>|<around*|\<\|\|\>|\<psi\><rsub|3>|\<\|\|\>>>=<sqrt|180>*<around*|(|x<rsup|2>-x+<frac|1|6>
      |)> .>>>>
    </eqnarray*>

    An orthonormal basis for <math|V> is\ 

    <\equation*>
      <around*|{|1,<sqrt|12>*<around*|(|x-<frac|1|2>|)>,<sqrt|180>*<around*|(|x<rsup|2>-x+<frac|1|6>
      |)>|}> .
    </equation*>
  </question>

  <\question>
    \;

    <\enumerate-alpha>
      <item>Find an orthogonal complement in <math|\<bbb-R\><rsup|3>> for the
      subspace

      <\equation*>
        U=span <around*|{|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>|}>
        .
      </equation*>

      Well,

      <\equation*>
        U<rsup|\<perp\>>=<around*|{|v\<in\>\<bbb-R\><rsup|3>\|<around*|\<langle\>|v,u|\<rangle\>>=0,\<forall\>u\<in\>U|}>
        .
      </equation*>

      Given a general vector <math|v=<around*|[|x,y,z|]><rsup|T>> in
      <math|\<bbb-R\><rsup|3>>, we demand

      <\equation*>
        <around*|\<langle\>|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>*,<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>|\<rangle\>>=0,
      </equation*>

      that is,

      <\equation*>
        x+2*y+3*z=0<space|1em>\<Longrightarrow\><space|1em>x=-2*y-3*z .
      </equation*>

      A general vector in <math|U<rsup|\<perp\>>> has the form
      <math|<around*|[|-2*y-3*z,y,z|]><rsup|T>> for
      <math|y,z\<in\>\<bbb-R\>>. A basis for <math|U<rsup|\<perp\>>> is

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|0>>|<row|<cell|1>>>>>|}>.
      </equation*>

      <item>Write a decomposition of the vector
      <math|<around*|[|-1,3,0|]><rsup|T>> as a sum of a vector in <math|U>
      and a vector in <math|U<rsup|\<perp\>>>.

      We need to find the coefficients <math|a,b,c\<in\>\<bbb-R\>> such that

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|3>>|<row|<cell|0>>>>>=a*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>+b*<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>+c*<bmatrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|0>>|<row|<cell|1>>>>>,
      </equation*>

      which translates to solving the system

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|-2>|<cell|-3>>|<row|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|3>|<cell|0>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>>>>=<bmatrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|3>>|<row|<cell|0>>>>>
        .
      </equation*>

      Solve the augmented system.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|-1|4|4|cell-hyphen|n>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|-1>>|<row|<cell|2>|<cell|1>|<cell|0>|<cell|3>>|<row|<cell|3>|<cell|0>|<cell|1>|<cell|0>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-2*R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-3*R<rsub|1>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|-1|4|4|cell-hyphen|n>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|-1>>|<row|<cell|0>|<cell|5>|<cell|6>|<cell|5>>|<row|<cell|0>|<cell|6>|<cell|10>|<cell|3>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>/5><bmatrix|<tformat|<cwith|1|-1|4|4|cell-hyphen|n>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|<frac|6|5>>|<cell|1>>|<row|<cell|0>|<cell|6>|<cell|10>|<cell|3>>>>>>>|<row|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>+2R<rsub|2>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-6*R<rsub|2>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|-1|4|4|cell-hyphen|n>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|-<frac|3|5>>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|<frac|6|5>>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|<frac|14|5>>|<cell|-3>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>\<cdot\><frac|5|14>><bmatrix|<tformat|<cwith|1|-1|4|4|cell-hyphen|n>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|-<frac|3|5>>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|<frac|6|5>>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|15|14>>>>>>>>|<row|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-<frac|6|5>*R<rsub|3>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>+<frac|3|5>*R<rsub|3>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|-1|4|4|cell-hyphen|n>|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|5|14>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|16|7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|15|14>>>>>>>|<cell|\<Longrightarrow\><space|1em>a,b,c=<frac|5|14>,<frac|16|7>,-<frac|15|14>
        .>>>>
      </eqnarray*>
    </enumerate-alpha>
  </question>

  The vector in <math|U> is <math|a*<around*|[|1,2,3|]><rsup|T>> and the
  vector in <math|U<rsup|\<perp\>>> is <math|b*<around*|[|-2,1,0|]><rsup|T>+c*<around*|[|-3,0,1|]><rsup|T>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|3>>|<row|<cell|0>>>>>>|<cell|=>|<cell|<around*|(|<frac|5|14>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>|)>+<around*|(|<frac|16|7>*<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>-<frac|15|14>*<bmatrix|<tformat|<table|<row|<cell|-3>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>>>|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|3>>|<row|<cell|0>>>>>>|<cell|=>|<cell|<wide*|<bmatrix|<tformat|<table|<row|<cell|<frac|5|14>>>|<row|<cell|<frac|5|7>>>|<row|<cell|<frac|15|14>>>>>>|\<wide-underbrace\>><rsub|\<in\>U>+<wide*|<bmatrix|<tformat|<table|<row|<cell|-<frac|19|14>>>|<row|<cell|<frac|16|7>>>|<row|<cell|-<frac|15|14>>>>>>|\<wide-underbrace\>><rsub|\<in\>U<rsup|\<perp\>>>>>>>
  </eqnarray*>
</body>

<initial|<\collection>
</collection>>