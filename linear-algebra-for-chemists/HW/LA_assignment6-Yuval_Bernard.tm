<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  6>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    Find bases where <math|A> is

    <\equation*>
      A=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|2>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|1>>>>>
    </equation*>

    <\enumerate-alpha>
      <item>The column space of <math|A>. Notice that the first two columns
      are independent and that the 3rd one is identical to the first. A basis
      for the column space is therefore

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|1>>>>>,<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>>>>|}>
      </equation*>

      <item>The row space of <math|A>. Reduce <math|A> to echelon form

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|2>|<cell|2>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>-3R<rsub|3>+R<rsub|2>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>-2R<rsub|3>-2R<rsub|2>>>>>>><bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|><bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      The rowspace of <math|A> is spanned by the following independent
      vectors:

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
      S=span<around*|{|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|3>>>>>,<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|3>>>>>|}>
    </equation*>

    <\enumerate-alpha>
      <item>A matrix whose row space equals the span of the vectors.

      The row space of a matrix is the space which is spanned by its rows.
      Therefore, the matrix whose rows are the vectors in <math|S> has its
      row space spanned by <math|S>.

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|2>|<cell|1>|<cell|3>>|<row|<cell|1>|<cell|0>|<cell|3>>>>>
        .
      </equation*>

      <item>A matirx whose nullspace equals the span of the vectors.

      First find a basis for <math|S>. Row reduce the spanning set of
      <math|S>

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|2>|<cell|1>|<cell|3>>|<row|<cell|1>|<cell|0>|<cell|3>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      <\equation*>
        S=span <around*|{|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|3>>>>>|}>
        .
      </equation*>

      Finding a homogeneous system of equations that <math|S> its is solution
      space corresponds to finding the conditions to lie in <math|S>. Write a
      general in <math|\<bbb-F\><rsup|3>> and write it as the last row of a
      matrix with the basis vectors of <math|S> and perform elimination.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|3>>|<row|<cell|x>|<cell|y>|<cell|z>>>>>>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|3>>|<row|<cell|0>|<cell|y-x>|<cell|z>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|z+3y-3x>>>>>
        .>>>>
      </eqnarray*>

      The last row becomes full of zeros if and only if

      <\equation*>
        -3x+3y+z=0 .
      </equation*>

      An example of a matrix whose nullspace equals the span of the vectors
      is

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|-3>|<cell|3>|<cell|1>>|<row|<cell|1>|<cell|-1>|<cell|-<frac|1|3>>>|<row|<cell|-6>|6|2>>>>
        .
      </equation*>
    </enumerate-alpha>
  </question>

  <\question>
    Find a basis for the solution space of

    <\enumerate-alpha>
      <item>

      <\equation*>
        <choice|<tformat|<table|<row|<cell|x-3y+z=0>>|<row|<cell|-2x+2y-3z=0>>|<row|<cell|4x-8y+5z=0>>>>>
      </equation*>

      Row reduce the coefficient matrix.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-3>|<cell|1>>|<row|<cell|-2>|<cell|2>|<cell|-3>>|<row|<cell|4>|<cell|-8>|<cell|5>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+2R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-4R<rsub|1>>>>>>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-3>|<cell|1>>|<row|<cell|0>|<cell|-4>|<cell|-1>>|<row|<cell|0>|<cell|4>|<cell|1>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>+R<rsub|2>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>+R<rsub|2>>>>>>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-7>|<cell|0>>|<row|<cell|0>|<cell|-4>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>-R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|-7>|<cell|0>>|<row|<cell|0>|<cell|4>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
        .>>>>
      </eqnarray*>

      The solution space is given by <math|<around*|(|7a,a,-4a|)>>,
      <math|a\<in\>\<bbb-F\>>. A basis for the solution space is

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|7>>|<row|<cell|1>>|<row|<cell|-4>>>>>|}>
        .
      </equation*>

      <item>

      <\equation*>
        <choice|<tformat|<table|<row|<cell|x-y-z=0>>|<row|<cell|2x-y+z=0>>>>>
      </equation*>

      Row reduce the coefficient matrix.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|-1>>|<row|<cell|2>|<cell|-1>|<cell|1>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>-2R<rsub|1>><rsup|>>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|3>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<rightarrow\>R<rsub|1>+R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|3>>>>>
        .>>>>
      </eqnarray*>

      The solution space is given by <math|<around*|(|-2a,-3a,a|)>>,
      <math|a\<in\>\<bbb-F\>>. A basis for the solution space is

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|-3>>|<row|<cell|1>>>>>|}>
        .
      </equation*>
    </enumerate-alpha>
  </question>

  <\question>
    Find a basis for the nullspace of the matrix of coefficients of the
    following, and find a particular solution.

    <\enumerate-alpha>
      <item>Solving

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|-1>|<cell|1>>|<row|<cell|2>|<cell|0>|<cell|2>|<cell|-3>>|<row|<cell|-1>|<cell|4>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|-2>|<cell|0>|<cell|4>>>>><bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|u>>|<row|<cell|y>>|<row|<cell|z>>>>>=<bmatrix|<tformat|<table|<row|<cell|7>>|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|2>>>>>
      </equation*>

      Row reduce the augmented matrix.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|1>|<cell|-1>|<cell|1>|<cell|7>>|<row|<cell|2>|<cell|0>|<cell|2>|<cell|-3>|<cell|-1>>|<row|<cell|-1>|<cell|4>|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|-2>|<cell|0>|<cell|4>|<cell|2>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>+R<rsub|3>>>|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+2R<rsub|3>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|1>|<cell|-1>|<cell|1>|<cell|7>>|<row|<cell|0>|<cell|8>|<cell|0>|<cell|-3>|<cell|-1>>|<row|<cell|-1>|<cell|4>|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|4>|<cell|2>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<leftrightarrow\>-R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-4>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|8>|<cell|0>|<cell|-3>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|-1>|<cell|1>|<cell|7>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|4>|<cell|2>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|4>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-4>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|8>|<cell|0>|<cell|-3>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|-3>|<cell|5>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|4>|<cell|2>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>-R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-4>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|9>|<cell|0>|<cell|0>|<cell|-6>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|-3>|<cell|5>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|4>|<cell|2>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>/9>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|-4>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|2|3>>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|-3>|<cell|5>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|4>|<cell|2>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>+R<rsub|2>>>|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>-2R<rsub|2>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>+4R<rsub|2>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|8|3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|2|3>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-3>|<cell|<frac|13|3>>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|4>|<cell|<frac|10|3>>>>>>
        >>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>-<frac|1|3>R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|8|3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|2|3>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|13|9>>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|4>|<cell|<frac|10|3>>>>>>
        >>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|4>\<rightarrow\>R<rsub|4>-4R<rsub|3>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|8|3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|2|3>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|13|9>>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|0>|<cell|<frac|82|9>>>>>>
        >>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<rightarrow\>R<rsub|1>+R<rsub|4>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|58|9>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|2|3>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|13|9>>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|0>|<cell|<frac|82|9>>>>>>
        >>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<leftrightarrow\>-R<rsub|4>>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|4|5|5|cell-lborder|1ln>|<cwith|1|4|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|58|9>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|2|3>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|82|9>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|13|9>>>>>>
        >>>>
      </eqnarray*>

      The nullspace of the coefficient matrix is empty, and a particular
      solution to the system is <math|<around*|(|x,u,y,z|)>=<around*|(|<frac|58|9>,-<frac|2|3>,-<frac|82|9>,-<frac|13|9>|)>>.

      <item>Solving

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|2>|<cell|3>|<cell|-1>>|<row|<cell|-1>|<cell|2>|<cell|3>>|<row|<cell|4>|<cell|-1>|<cell|1>>>>><bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>=<bmatrix|<tformat|<table|<row|<cell|5>>|<row|<cell|0>>|<row|<cell|-1>>>>>
        .
      </equation*>

      Row reduce the augmented matrix.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|2>|<cell|3>|<cell|-1>|<cell|5>>|<row|<cell|-1>|<cell|2>|<cell|3>|<cell|0>>|<row|<cell|4>|<cell|-1>|<cell|1>|<cell|-1>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>+2R<rsub|2>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>+4*R<rsub|2>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|7>|<cell|5>|<cell|5>>|<row|<cell|-1>|<cell|2>|<cell|3>|<cell|0>>|<row|<cell|0>|<cell|7>|<cell|13>|<cell|-1>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|1>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|7>|<cell|5>|<cell|5>>|<row|<cell|-1>|<cell|2>|<cell|3>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|8>|<cell|-6>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>/8>>|<row|<cell|R<rsub|2>\<rightarrow\>-R<rsub|2>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|7>|<cell|5>|<cell|5>>|<row|<cell|1>|<cell|-2>|<cell|-3>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|3|4>>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+3R<rsub|3>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>-5R<rsub|3>>>>>>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|7>|<cell|0>|<cell|<frac|35|4>>>|<row|<cell|1>|<cell|-2>|<cell|0>|<cell|-<frac|9|4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|3|4>>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<rightarrow\>R<rsub|1>/7>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|5|4>>>|<row|<cell|1>|<cell|-2>|<cell|0>|<cell|-<frac|9|4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|3|4>>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>+2R<rsub|1>>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|5|4>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|1|4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|3|4>>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<leftrightarrow\>R<rsub|3>><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|1|4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|5|4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|3|4>>>>>>
        .>>>>
      </eqnarray*>

      Again, the nullspace of the coefficient matrix is empty. A particular
      solution to the system of equations is
      <math|<around*|(|x,y,z|)>=<around*|(|<frac|1|4>,<frac|5|4>,-<frac|3|4>|)>>
    </enumerate-alpha>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
  </collection>
</initial>