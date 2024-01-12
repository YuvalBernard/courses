<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment 6>>

  <\question>
    Find bases where <math|A> is

    <\equation*>
      A=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|2>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|-0>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|1>>>>>
    </equation*>

    <\enumerate-alpha>
      <item>The column space of <math|A>. Reduce <math|A> to row echelon form
      to find independent vectors which span the vector space.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|2>|<cell|2>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|1>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>-2R<rsub|2>>>|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>+R<rsub|2>>>>>>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>-R<rsub|3>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>-2R<rsub|3>>>>>>><bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
        .>>>>
      </eqnarray*>

      A basis for the column space of <math|A> is

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|}>
        .
      </equation*>

      <item>The row space of <math|A>. We've already reduced <math|A>. It is
      clear from the reduced form that a basis for the row space is

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|1>>>>>|}>
        .
      </equation*>

      Note that the dimension of the row space is <math|r=2>. As the spanning
      set contains two vectors, the set is a basis.

      <item>The nullspace of <math|A>. Let
      <math|x=<around*|(|x<rsub|1>,x<rsub|2>,x<rsub|3>|)>> be a vector such
      that <math|A*x=0>. From the reduced form of <math|A>, we see that

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsub|2>>|<cell|=>|<cell|0>>|<row|<cell|x<rsub|3>>|<cell|=>|<cell|-x<rsub|1>
        .>>>>
      </eqnarray*>

      The solution to <math|A*x=0> is a vector of the form
      <math|x=<around*|(|x<rsub|1>,0,-x<rsub|1>|)>=x<rsub|1>*<around*|(|1,0,-1|)>>,
      <math|x<rsub|1>\<in\>\<bbb-F\>>.

      A basis for the nullspace of <math|A> is

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>>>>|}>
        .
      </equation*>

      <item>The nullspace of <math|A<rsup|T>>.

      <\equation*>
        A<rsup|T>=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|2>|<cell|0>|<cell|1>|<cell|1>>>>>
        .
      </equation*>

      Row reduce <math|A<rsup|T>>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|2>|<cell|0>|<cell|1>|<cell|1>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|1>>>|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-R<rsub|1>>>>>>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
        .>>>>
      </eqnarray*>

      Let <math|x=<around*|(|x<rsub|1>,x<rsub|2>,x<rsub|3>,x<rsub|4>|)>> such
      that <math|A<rsup|T>*x=0>. We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|2x<rsub|1>+x<rsub|3>+x<rsub|4>>|<cell|=>|<cell|0>>|<row|<cell|x<rsub|2>-x<rsub|3>-2x<rsub|4>>|<cell|=>|<cell|0,>>>>
      </eqnarray*>

      where <math|x<rsub|3>,x<rsub|4>\<in\>\<bbb-F\>>. A general solution to
      <math|A<rsup|T>*x=0> is <math|x=<around*|(|-<frac|x<rsub|3>+x<rsub|4>|2>,x<rsub|3>+2x<rsub|4>,x<rsub|3>,x<rsub|4>|)>,>
      <math|x<rsub|3>,x<rsub|4>\<in\>\<bbb-F\>>.

      A basis for the nullspace of <math|A<rsup|T>> is therefore

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>>>|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|-<frac|1|2>>>|<row|<cell|2>>|<row|<cell|0>>|<row|<cell|1>>>>>|}>
        .
      </equation*>

      Note that the dimension of the nullspace of <math|A<rsup|T>> is
      <math|m-r=2>. As we found a spannig set containing two vectors, the set
      is a basis.
    </enumerate-alpha>
  </question>

  <\question>
    Given the set of vectors

    <\equation*>
      <around*|{|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|3>>>>>,<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>|}>
    </equation*>

    <\enumerate-alpha>
      <item>A matrix whose row space equals the span of the vectors.
    </enumerate-alpha>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>