<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Sample Exam Solution>>

  <\question>
    \;

    <with|color|blue|Prove that the union of two subspaces is a subspace if
    and only if one contains the other as a subset.>

    Let <math|V> be a vector space above <math|\<bbb-F\>> and let <math|U,W>
    be subspaces of <math|V>, then <math|U\<cup\>W> is a subspace of <math|V>
    iff <math|U\<subseteq\>W> or <math|W\<subseteq\>U>.

    <underline|First direction>: Given <math|U\<cup\>W> is a subspace and
    prove that <math|U\<subseteq\>W> or <math|W\<subseteq\>U>.

    Given <math|u\<in\>U,w\<in\>W>, we have <math|u+w\<in\>U\<cup\>W> as it
    is closed under addition. By definition of the union of sets,
    <math|u+w\<in\>U> or <math|u+w\<in\>W>. Additionally, as <math|U,W> are
    subspaces, each contains its respective additive inverse <math|-u> and
    <math|-w> and is closed under addition.

    If <math|u+w\<in\>U> and <math|-u\<in\>U> then
    <math|<around*|(|u+w|)>+<around*|(|-u|)>=w\<in\>U>. Any <math|w\<in\>W>
    is in <math|U> so <math|W\<subseteq\>U>.

    If <math|u+w\<in\>W> and <math|-w\<in\>W> then
    <math|<around*|(|u+w|)>+<around*|(|-w|)>=u\<in\>W>. Any <math|u\<in\>U>
    is in <math|W> so <math|U\<subseteq\>W>.

    <underline|Second direction>: Given <math|><math|U\<subseteq\>W> or
    <math|W\<subseteq\>U> prove that <math|U\<cup\>W> is a subspace.

    If <math|U\<subseteq\>W> then <math|U\<cup\>W=W>, and <math|W> is a
    subspace.

    If <math|W\<subseteq\>U> then <math|U\<cup\>W=U>, and <math|U> is a
    subspace.\ 
  </question>

  <\question>
    \;

    <\with|color|blue>
      Suppose <math|T:\<bbb-R\><rsup|4>\<rightarrow\>\<bbb-R\><rsup|3>> is a
      linear transformation such that:

      <\equation*>
        T <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|-1>>>>>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>|<row|<cell|1>>>>>=T
        <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>><infix-and>T
        <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>>>>=T
        <bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>
        .
      </equation*>

      <\enumerate>
        <item>Find bases for the kernel and image of <math|T>.

        <item>Calculate <math|T <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
        .>
      </enumerate>
    </with>

    <\enumerate>
      <item>Find <math|\<cal-M\><around*|(|T|)>>, the matrix representation
      of <math|T> with respect to some basis. According to the fundumental
      theorem of linear maps, given <math|T:V\<rightarrow\>W>, <math|dim
      V=dim null T+dim range T>.

      Linear maps are additive, so

      <\equation*>
        T <around*|(|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|-1>>>>>-<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>|)>=T
        <wide|<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-2>>>>>|\<wide-overbrace\>><rsup|u<rsub|1>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
      </equation*>

      <\equation*>
        T <around*|(|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>-<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|)>=T
        <wide|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>|\<wide-overbrace\>><rsup|u<rsub|2>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
      </equation*>

      <math|u<rsub|1>,u<rsub|2>> are not proportional and therefore linearly
      independent, and also belong to <math|null T>, so <math|dim null
      T\<geq\>2>.

      Similarly, <math|v<rsub|1>=<around*|[|3,2,1|]><rsup|T>> and
      <math|v<rsub|2>=<around*|[|1,0,1|]><rsup|T>> are linearly independent
      and also belong to <math|range T>, so <math|dim range T\<geq\>2>.

      By the theorem above, <math|dim range T=2> and <math|dim null T=2>, so
      <math|<around*|{|u<rsub|1>,u<rsub|2>|}>> is a basis for <math|null T>
      and <math|<around*|{|v<rsub|1>,v<rsub|2>|}>> is a basis for <math|range
      T>.

      <item>Because <math|T<around*|(|v+u|)>=T v+T u> and <math|T
      <around*|(|\<alpha\>*v|)>=\<alpha\>*T v>, we need to find scalars
      <math|a,b,c,d> such that

      <\equation>
        <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>=a*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+b*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>+c*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-2>>>>>+d*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>,
      </equation>

      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|T <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>|<cell|=>|<cell|a*T
        *<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+b*T
        <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>+c*T
        <bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-2>>>>>+d*T
        <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|=>|<cell|a*<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>|<row|<cell|1>>>>>+b*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>>>>+0+0
        .>>>>
      </eqnarray*>

      Eq. (1) is equivalent to solving the system

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|1>|<cell|-2>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|-2>|<cell|0>>>>>*<bmatrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>|<row|<cell|d>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
        .
      </equation*>

      Solve the augmented system

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|1>|<cell|-2>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|-2>|<cell|0>|<cell|0>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<leftrightarrow\>R<rsub|1>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|-1>|<cell|1>|<cell|-2>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|-2>|<cell|0>|<cell|0>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|1>>>|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>-R<rsub|1><rsub|>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|-3>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-2>|<cell|-1>|<cell|0>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>+R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-2>|<cell|-1>|<cell|0>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|4>\<rightarrow\>R<rsub|4>+2R<rsub|2>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-7>|<cell|2>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|4>\<rightarrow\>R<rsub|4>*<around*|(|-<frac|1|7>|)>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|2|7>>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+3R<rsub|4>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>-R<rsub|4>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|-<frac|2|7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|1|7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|2|7>>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<leftrightarrow\>R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|-<frac|2|7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|1|7>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|2|7>>>>>>>>>>
      </eqnarray*>
    </enumerate>

    We can conclude that

    <\equation*>
      T <bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>=-<frac|2|7>\<cdot\>**<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>|<row|<cell|1>>>>>+1\<cdot\><bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|1|7>>>|<row|<cell|-<frac|4|7>>>|<row|<cell|<frac|5|7>>>>>>
      .
    </equation*>
  </question>

  <\question>
    \;

    <\with|color|blue>
      Let <math|V> be the vector space of complex polynomials of degree less
      or equal to 3. Define two subspaces of <math|V>:

      <\equation*>
        U=<around*|{|p<around*|(|x|)>\<in\>V\|p<around*|(|-1|)>=p<around*|(|1|)>=0|}>,<infix-and>W=<around*|{|p<around*|(|x|)>\<in\>V\|p<around*|(|\<mathi\>|)>=0|}>
        .
      </equation*>

      <\enumerate>
        <item>Find the dimensions of each of the subspaces
        <math|U,W,U\<cap\>W,U+W>.

        <item>Find a basis for each of the subspaces above and determine
        whether the sum <math|U+W> is direct.
      </enumerate>
    </with>

    <\enumerate-alpha>
      <item><math|p<rsub|u><around*|(|x|)>\<in\>U> is a polynomial of the
      form

      <\equation*>
        p<rsub|u><around*|(|x|)>=<around*|(|x-1|)>*<around*|(|x+1|)>*<around*|(|a*x+b|)>,<space|1em>a,b\<in\>\<bbb-C\>
        .
      </equation*>

      Rewrite <math|p<rsub|u><around*|(|x|)>> as

      <\eqnarray*>
        <tformat|<table|<row|<cell|p<rsub|u><around*|(|x|)>>|<cell|=>|<cell|<around*|(|x<rsup|2>-1|)>*<around*|(|a*x+b|)>>>|<row|<cell|>|<cell|=>|<cell|a*x<rsup|3>+b*x<rsup|2>-a*x-b>>|<row|<cell|>|<cell|=>|<cell|a*<around*|(|x<rsup|3>-x|)>+b*<around*|(|x<rsup|2>-1|)>
        .>>>>
      </eqnarray*>

      The set <math|<around*|{|x<rsup|3>-x,x<rsup|2>-1|}>> is a linearly
      independent spanning set of <math|U>, and therefore a basis for
      <math|U>. Thus, <math|dim U=2>.

      <item><math|p<rsub|w><around*|(|x|)>\<in\>W> is a polynomial of the
      form

      <\equation*>
        p<rsub|w><around*|(|x|)>=<around*|(|x-\<mathi\>|)>*<around*|(|a*x<rsup|2>+b*x+c|)>,<space|1em>a,b,c\<in\>\<bbb-C\>
        .
      </equation*>

      Rewrite <math|p<rsub|w><around*|(|x|)>> as

      <\eqnarray*>
        <tformat|<table|<row|<cell|p<rsub|w><around*|(|x|)>>|<cell|=>|<cell|a*x<rsup|3>+b*x<rsup|2>+c*x-a*\<mathi\>*x<rsup|2>-b*\<mathi\>*x-\<mathi\>*c>>|<row|<cell|>|<cell|=>|<cell|a*<around*|(|x<rsup|3>-\<mathi\>*x<rsup|2>|)>+b*<around*|(|x<rsup|2>-\<mathi\>*x|)>+c*<around*|(|x-\<mathi\>|)>
        .>>>>
      </eqnarray*>

      The set <math|<around*|{|x<rsup|3>-\<mathi\>*x<rsup|2>,x<rsup|2>-\<mathi\>*x,x-\<mathi\>|}>>
      is a linearly independent spanning set of <math|W>, and therefore a
      basis for <math|W>. Thus, <math|dim W=3>.

      <item>

      <\equation*>
        U\<cap\>W=<around*|{|p<around*|(|x|)>\<in\>V\|p<around*|(|-1|)>=p<around*|(|1|)>=p<around*|(|\<mathi\>|)>=0|}>
        .
      </equation*>

      A polynomial <math|p<around*|(|x|)>\<in\>U\<cap\>W> is of the form

      <\equation*>
        p<rsub|><around*|(|x|)>=<around*|(|x-1|)>*<around*|(|x+1|)>*<around*|(|x-\<mathi\>|)>*a,<space|1em>a\<in\>\<bbb-C\>
        .
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|p<around*|(|x|)>>|<cell|=>|<cell|a*<around*|(|x<rsup|2>-1|)>*<around*|(|x-\<mathi\>|)>>>|<row|<cell|>|<cell|=>|<cell|a*<around*|(|x<rsup|3>-\<mathi\>*x<rsup|2>-x+\<mathi\>|)>>>>>
      </eqnarray*>

      The set <math|<around*|{|x<rsup|3>-\<mathi\>*x<rsup|2>-x+\<mathi\>|}>>
      is a linearly independent spanning set of <math|U\<cap\>W>, and
      therefore a basis. Thus, <math|dim U\<cap\>W=1>. Since
      <math|U\<cap\>W\<neq\><around*|{|0|}>>, <math|U+W> is <strong|not> a
      direct sum.

      <item>There is the theorem that given subspaces <math|U,W>: <math|dim
      U+W=dim U+dim W-dim U\<cap\>W>.

      In our case, <math|dim U+W=2+3-1=4>. Since <math|dim V=4>, we can
      conclude that <math|U+W=V>, so we can just chose the standard basis
      <math|<around*|{|1,x,x<rsup|2>,x<rsup|3>|}>>.\ 
    </enumerate-alpha>
  </question>

  <\question>
    \;

    <\with|color|blue>
      Given the following system of equations:

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|1+k>|<cell|1>>|<row|<cell|1+k>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1+k>>>>>*<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|k>>|<row|<cell|2*k>>>>>,
      </equation*>

      <\enumerate>
        <item>Determine for which values of <math|k>, if any, does the system
        have no solution.

        <item>Determine for which values of <math|k>, if any, does the system
        have a unique solution, and solve it.

        <item>Determine for which values of <math|k>, if any, does the system
        have infinitely many solutions, and solve it.
      </enumerate>
    </with>

    Row reduce the augemented system <math|A\|b>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1+k>|<cell|1>|<cell|0>>|<row|<cell|1+k>|<cell|1>|<cell|1>|<cell|k>>|<row|<cell|1>|<cell|1>|<cell|1+k>|<cell|2*k>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-*<around*|(|1+k|)>*R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|1>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1+k>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-k*<around*|(|k+2|)>>|<cell|-k>|<cell|k>>|<row|<cell|0>|<cell|-k>|<cell|k>|<cell|2*k>>>>><eq-number>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>-<around*|(|k+2|)>*R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1+k>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-k*<around*|(|k+3|)>>|<cell|-k*<around*|(|2*k+3|)>>>|<row|<cell|0>|<cell|-k>|<cell|k>|<cell|2*k>>>>><eq-number>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<leftrightarrow\>R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1+k>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-k>|<cell|k>|<cell|2*k>>|<row|<cell|0>|<cell|0>|<cell|-k*<around*|(|k+3|)>>|<cell|-k*<around*|(|2*k+3|)>>>>>><eq-number>>>>>
    </eqnarray*>

    The system is in echelon form. Check special cases for <math|k>:

    <\enumerate-alpha>
      <item><math|k=0>. We get

      <\equation*>
        A\|b=<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      This corresponds to the equation <math|x+y+z=0,<space|1em>x,y,z\<in\>\<bbb-F\>>.
      There are more free variables than equations, so there are infinitely
      many solutions of the form <math|<around*|(|x,y,z|)>=<around*|(|x,-x,-x|)>.>

      <item><math|k=-3>. We get

      <\equation*>
        A\|b=<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|3>|<cell|-3>|<cell|-6>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-9>>>>>
        .
      </equation*>

      <math|rank A\<less\>rank A\|b> so there is no solution.

      <item><math|k=-<frac|3|2>>. We get

      <\equation*>
        A\|b=<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-<frac|1|2>>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|<frac|3|2>>|<cell|-<frac|3|2>>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|<frac|9|4>>|<cell|0>>>>>
        .
      </equation*>

      <math|rank A=rank A\|b> so there is a solution. From the third row
      <math|z=0>, so from the second row <math|y=-2>, and from the first row
      <math|x=-1>. <math|<around*|(|x,y,z|)>=<around*|(|-1,-2,0|)>>.

      <item>Continue solving the augmented system. For <math|k\<neq\>0,-3> we
      have <math|rank A=rank A\|b> so there is a solution. Copy the
      augemented system here:

      <\equation*>
        <bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1+k>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-k>|<cell|k>|<cell|2*k>>|<row|<cell|0>|<cell|0>|<cell|-k*<around*|(|k+3|)>>|<cell|-k*<around*|(|2*k+3|)>>>>>>
        .
      </equation*>

      From the third row,\ 

      <\equation*>
        z=<frac|2*k+3|k+3>,
      </equation*>

      and from the second row <math|y=<around*|(|z-2|)>=*<around*|(|<frac|2*k+3-2*k-6|k+3>|)>=-<frac|3|k+3>>.
      From the first row, then,

      <\equation*>
        x-<around*|(|1+k|)>*<frac|3|k+3>+<frac|2*k+3|k+3>=0
      </equation*>

      <\equation*>
        x+<frac|2*k+3-3-3*k|k+3>=0
      </equation*>

      <\equation*>
        x=<frac|k|k+3>
      </equation*>

      so the solution is <math|<around*|(|x,y,z|)>=<around*|(|<frac|k|k+3>,-<frac|3|k+3>,<frac|2*k+3|k+3>|)>>
      for <math|k\<neq\>0,-3>
    </enumerate-alpha>
  </question>

  <\question>
    \;

    <\enumerate>
      <\with|color|blue>
        <item>Find eigenvectors and eigenvalues for the matrix
        <math|A=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-3>>|<row|<cell|1>|<cell|-2>>>>>>

        <item>Find a matrix <math|P> such that <math|P<rsup|-1>*A*P> is a
        diagonal matrix.

        <item>Use the above to calculate <math|A<rsup|99>>.
      </with>
    </enumerate>

    <\enumerate>
      <item>Find when <math|det <around*|(|A-\<lambda\>*I|)>=0>.

      <\equation*>
        det <around*|(|A-\<lambda\>*I|)>=<det|<tformat|<table|<row|<cell|2-\<lambda\>>|<cell|-3>>|<row|<cell|1>|<cell|-<around*|(|2+\<lambda\>|)>>>>>>=-<around*|(|2-\<lambda\>|)>*<around*|(|2+\<lambda\>|)>+3=\<lambda\><rsup|2>-1
        <space|1em>\<Longrightarrow\><space|1em>\<lambda\><rsub|1,2>=\<pm\>1.
      </equation*>

      find <math|null <around*|(|A-\<lambda\>*<rsub|1,2>I|)>>. For
      <math|\<lambda\><rsub|1>=1> we have

      <\equation*>
        A-\<lambda\><rsub|1>*I=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-3>>|<row|<cell|1>|<cell|-3>>>>><space|1em>\<Rightarrow\><space|1em>v<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|1>>>>>
        .
      </equation*>

      For <math|\<lambda\><rsub|2>=-1> we have

      <\equation*>
        A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-3>>|<row|<cell|1>|<cell|-1>>>>><space|1em>\<Rightarrow\><space|1em>v<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>
        .
      </equation*>

      <item>The matrix <math|P> is composed of the eigenvectors of <math|A>
      and the diagonal matrix has the corresponding eigenvalues on the
      diagonal.

      <\equation*>
        P=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>,<space|1em>P<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|<frac|1|2>>|<cell|-<frac|1|2>>>|<row|<cell|-<frac|1|2>>|<cell|<frac|3|2>>>>>>,<space|1em>D=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>>>>>
        .
      </equation*>

      <item>We saw in class that

      <\equation*>
        A=P*D*P<rsup|-1>,<space|1em>A<rsup|k>=P*D<rsup|k>*P<rsup|-1>=P*<bmatrix|<tformat|<table|<row|<cell|d<rsub|11><rsup|k>>|<cell|>|<cell|0>>|<row|<cell|>|<cell|\<ddots\>>|<cell|>>|<row|<cell|0>|<cell|>|<cell|d<rsub|22><rsup|k>>>>>>*P<rsup|-1>.
      </equation*>

      Therefore,

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsup|99>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|3>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|1<rsup|*99>>|<cell|0>>|<row|<cell|0>|<cell|<around*|(|-1|)><rsup|99>>>>>><bmatrix|<tformat|<table|<row|<cell|<frac|1|2>>|<cell|-<frac|1|2>>>|<row|<cell|-<frac|1|2>>|<cell|<frac|3|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>*<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-1>>|<row|<cell|1>|<cell|-1>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|-1>|<cell|3>>>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>*<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-6>>|<row|<cell|2>|<cell|-4>>>>>=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-3>>|<row|<cell|1>|<cell|-2>>>>>
        .>>>>
      </eqnarray*>
    </enumerate>
  </question>

  <\question>
    \;

    <\enumerate>
      <\with|color|blue>
        <item>Show there is no solution to the system

        <\equation*>
          A*v=b:<space|1em><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|0>>|<row|<cell|-1>|<cell|3>>>>>*<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>
          .
        </equation*>

        <item>Find a least squares solution to the above system.
      </with>
    </enumerate>

    <\enumerate>
      <item>From the second row <math|x=0> and so from the third row
      <math|y=0>, but that contradicts the first row, which leaves us with
      <math|1\<cdot\>0+1\<cdot\>0=0=1>. There is no solution.

      <item>Given the subspace <math|U=C<around*|(|A|)>> (column space of
      <math|A>) and the point <math|b>, find the point <math|u\<in\>U> such
      that <math|<around*|\<\|\|\>|b-u|\<\|\|\>>> is minimal. We've seen in
      class that the solution is <math|u=P<rsub|U>*b>, where <math|P<rsub|U>>
      is the orthogonal projection operator. Given an orthonormal basis
      <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|m>|}>> for <math|U>,

      <\equation*>
        P<rsub|U>*b=<around*|\<langle\>|b,e<rsub|1>|\<rangle\>>*e<rsub|1>+\<cdots\>+<around*|\<langle\>|b,e<rsub|m>|\<rangle\>>*e<rsub|m>.
      </equation*>

      Use Gram-Schmidt process to find an orthogonal basis for
      <math|C<around*|(|A|)>> given the basis

      <\equation*>
        C<around*|(|A|)>=span <around*|{|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>,<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>|}>\<equiv\>span
        <around*|{|v<rsub|1>,v<rsub|2>|}>.
      </equation*>

      <\equation*>
        e<rsub|1>=<frac|v<rsub|1>|<around*|\<\|\|\>|v<rsub|1>|\<\|\|\>>>=<frac|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>|<sqrt|1+4+1>>=<frac|1|<sqrt|6>><bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>
      </equation*>

      <\equation*>
        e<rsub|2>=<frac|v<rsub|2>-<around*|\<langle\>|v<rsub|2>,e<rsub|1>|\<rangle\>>*e<rsub|1>|<around*|\<\|\|\>|v<rsub|2>-<around*|\<langle\>|v<rsub|2>,e<rsub|1>|\<rangle\>>*e<rsub|1>|\<\|\|\>>>
        .
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsub|2>-<around*|\<langle\>|v<rsub|2>,e<rsub|1>|\<rangle\>>*e<rsub|1>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>-<frac|1|6><around*|\<langle\>|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>,<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>|\<rangle\>>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>-<frac|1-3|6>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>+<bmatrix|<tformat|<table|<row|<cell|<frac|1|3>>>|<row|<cell|<frac|2|3>>>|<row|<cell|-<frac|1|3>>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|4|3>>>|<row|<cell|<frac|2|3>>>|<row|<cell|<frac|8|3>>>>>>>>|<row|<cell|<around*|\<\|\|\>|v<rsub|2>-<around*|\<langle\>|v<rsub|2>,e<rsub|1>|\<rangle\>>*e<rsub|1>|\<\|\|\>>>|<cell|=>|<cell|<sqrt|<frac|16|9>+<frac|4|9>+<frac|64|9>>=<sqrt|<frac|84|9>>>>>>
      </eqnarray*>

      <\equation*>
        e<rsub|2>=<frac|1|<sqrt|84>>*<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|2>>|<row|<cell|8>>>>>
        .
      </equation*>

      Therefore,

      <\eqnarray*>
        <tformat|<table|<row|<cell|P<rsub|U>*b>|<cell|=>|<cell|<around*|\<langle\>|b,e<rsub|1>|\<rangle\>>*e<rsub|1>+<around*|\<langle\>|b,e<rsub|2>|\<rangle\>>*e<rsub|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|6>*<around*|\<langle\>|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>,<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>|\<rangle\>>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+<frac|1|84>*<around*|\<langle\>|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>,<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|2>>|<row|<cell|8>>>>>|\<rangle\>>*<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|2>>|<row|<cell|8>>>>>>>|<row|<cell|>|<cell|=>|<cell|-<frac|1|3>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+<frac|1|3>*<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|2>>|<row|<cell|8>>>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|3>*<bmatrix|<tformat|<table|<row|<cell|4-1>>|<row|<cell|2-2>>|<row|<cell|8+1>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>
        .>>>>
      </eqnarray*>

      We found <math|u=P<rsub|U>*b> <math|<around*|\<\|\|\>|u-b|\<\|\|\>>> is
      minimal, but the question was to find <math|v> such that
      <math|A*v=u><text-dots>

      <math|v> is actually the solution of

      <\equation*>
        A<rsup|T>*A*v=A<rsup|T>*b .
      </equation*>

      <\equation*>
        A<rsup|T>*A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-1>>|<row|<cell|1>|<cell|0>|<cell|3>>>>>*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|0>>|<row|<cell|-1>|<cell|3>>>>>=<bmatrix|<tformat|<table|<row|<cell|6>|<cell|-2>>|<row|<cell|-2>|<cell|10>>>>>
        .
      </equation*>

      <\equation*>
        <around*|(|A<rsup|T>*A|)><rsup|-1>=<frac|1|56>*<bmatrix|<tformat|<table|<row|<cell|10>|<cell|2>>|<row|<cell|2>|<cell|6>>>>>
      </equation*>

      <\equation*>
        A<rsup|T>*b=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|-1>>|<row|<cell|1>|<cell|0>|<cell|3>>>>>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>=<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|10>>>>>
        .
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|v>|<cell|=>|<cell|<around*|(|A<rsup|T>*A|)><rsup|-1>*A<rsup|T>*b
        >>|<row|<cell|>|<cell|=>|<cell|<frac|1|56>*<bmatrix|<tformat|<table|<row|<cell|10>|<cell|2>>|<row|<cell|2>|<cell|6>>>>>*<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|10>>>>>=<frac|1|56>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|56>>>>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>
        .>>>>
      </eqnarray*>

      We can actually verify that

      <\equation*>
        A*v=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|0>>|<row|<cell|-1>|<cell|3>>>>>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>=P<rsub|U>*b
        .
      </equation*>
    </enumerate>
  </question>
</body>

<initial|<\collection>
</collection>>