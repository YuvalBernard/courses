<TeXmacs|2.1.2>

<style|<tuple|generic|framed-theorems>>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  4>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    Convert the system of equations to matrix form,

    <\equation*>
      <bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|3>|<cell|3>>|<row|<cell|1>|<cell|3>|<cell|5>>>>>*<bmatrix|<tformat|<table|<row|<cell|u>>|<row|<cell|v>>|<row|<cell|w>>>>>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|0>>|<row|<cell|2>>>>>
      .
    </equation*>

    Denote <math|A> as the coefficient matrix. The solution to the set of
    equations is given by <math|A<rsup|-1>*b>. Find <math|A<rsup|-1>> via
    Guass-Seidel method.

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|2|2|cell-hyphen|n>|<cwith|1|1|2|2|cell-tborder|0ln>|<cwith|1|1|2|2|cell-bborder|0ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<table|<row|<cell|A>|<cell|I>>>>>>|<cell|=>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|3>|<cell|3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|3>|<cell|5>|<cell|0>|<cell|0>|<cell|1>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|2>|<cell|-1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|0>|<cell|-1>|<cell|1>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|0>|<cell|-1>|<cell|2>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|0>|<cell|-1>|<cell|1>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|1|2>>|<cell|1>|<cell|-<frac|1|2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|1|2>>|<cell|<frac|1|2>>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|3|2>>|<cell|-<frac|1|2>>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|1|2>>|<cell|1>|<cell|-<frac|1|2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|1|2>>|<cell|<frac|1|2>>>>>>=<bmatrix|<tformat|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-bborder|0ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<table|<row|<cell|I>|<cell|A<rsup|1>>>>>>.>>>>
    </eqnarray*>

    The solution to the system of equations is

    <\equation*>
      A<rsup|-1>*b=<bmatrix|<tformat|<cwith|1|3|2|2|cell-lborder|0ln>|<table|<row|<cell|<frac|3|2>>|<cell|-<frac|1|2>>|<cell|0>>|<row|<cell|-<frac|1|2>>|<cell|1>|<cell|-<frac|1|2>>>|<row|<cell|0>|<cell|-<frac|1|2>>|<cell|<frac|1|2>>>>>>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|0>>|<row|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|-2>>|<row|<cell|1>>>>>
      .
    </equation*>
  </question>

  <\question>
    Write the augmented matrix and perform Guassian elimination.

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|2|2|cell-hyphen|n>|<cwith|1|1|2|2|cell-tborder|0ln>|<cwith|1|1|2|2|cell-bborder|0ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<table|<row|<cell|A>|<cell|I>>>>>>|<cell|=>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|2>|<cell|0>|<cell|0>|<cell|1>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|-3>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|-1>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|3|2>>|<cell|1>|<cell|<frac|3|2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|1|2>>|<cell|0>|<cell|<frac|1|2>>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|4>|<cell|-2>|<cell|-3>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-<frac|3|2>>|<cell|1>|<cell|<frac|3|2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|1|2>>|<cell|0>|<cell|<frac|1|2>>>>>>=<bmatrix|<tformat|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|1|1|1|1|cell-bborder|0ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<table|<row|<cell|I>|<cell|A<rsup|1>>>>>>
      .>>>>
    </eqnarray*>

    <\equation*>
      A<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-2>|<cell|-3>>|<row|<cell|-<frac|3|2>>|<cell|1>|<cell|<frac|3|2>>>|<row|<cell|-<frac|1|2>>|<cell|0>|<cell|<frac|1|2>>>>>>
      .
    </equation*>
  </question>

  <\question>
    Convert to matrix form.

    <\equation*>
      A*x=b<space|1em> is<space|2em><bmatrix|<tformat|<table|<row|<cell|1>|<cell|3>|<cell|-2>|<cell|0>|<cell|2>|<cell|0>>|<row|<cell|2>|<cell|6>|<cell|-5>|<cell|-2>|<cell|4>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|5>|<cell|10>|<cell|0>|<cell|15>>|<row|<cell|2>|<cell|6>|<cell|0>|<cell|8>|<cell|4>|<cell|18>>>>>*<bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>|<row|<cell|x<rsub|4>>>|<row|<cell|x<rsub|5>>>|<row|<cell|x<rsub|6>>>>>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|5>>|<row|<cell|6>>>>>
      .
    </equation*>

    Row-reduce the augmented matrix <math|<bmatrix|<tformat|<cwith|1|1|2|2|cell-tborder|0ln>|<cwith|1|1|2|2|cell-bborder|0ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<table|<row|<cell|A>|<cell|b>>>>>>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|7|7|cell-tborder|0ln>|<cwith|4|4|7|7|cell-bborder|0ln>|<cwith|1|-1|7|7|cell-lborder|1ln>|<cwith|1|-1|6|6|cell-rborder|1ln>|<cwith|1|-1|7|7|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|3>|<cell|-2>|<cell|0>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|6>|<cell|-5>|<cell|-2>|<cell|4>|<cell|-3>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|5>|<cell|10>|<cell|0>|<cell|15>|<cell|5>>|<row|<cell|2>|<cell|6>|<cell|0>|<cell|8>|<cell|4>|<cell|18>|<cell|6>>>>>>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|7|7|cell-tborder|0ln>|<cwith|4|4|7|7|cell-bborder|0ln>|<cwith|1|-1|7|7|cell-lborder|1ln>|<cwith|1|-1|6|6|cell-rborder|1ln>|<cwith|1|-1|7|7|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|3>|<cell|-2>|<cell|0>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|-2>|<cell|0>|<cell|-3>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|5>|<cell|10>|<cell|0>|<cell|15>|<cell|5>>|<row|<cell|0>|<cell|0>|<cell|4>|<cell|8>|<cell|0>|<cell|18>|<cell|6>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|7|7|cell-tborder|0ln>|<cwith|4|4|7|7|cell-bborder|0ln>|<cwith|1|-1|7|7|cell-lborder|1ln>|<cwith|1|-1|6|6|cell-rborder|1ln>|<cwith|1|-1|7|7|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|3>|<cell|-2>|<cell|0>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>|<cell|<frac|9|2>>|<cell|<frac|3|2>>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|7|7|cell-tborder|0ln>|<cwith|1|-1|7|7|cell-lborder|1ln>|<cwith|1|-1|6|6|cell-rborder|1ln>|<cwith|1|-1|7|7|cell-rborder|0ln>|<cwith|3|3|7|7|cell-bborder|0ln>|<cwith|3|3|7|7|cell-lborder|1ln>|<cwith|3|3|6|6|cell-rborder|1ln>|<cwith|3|3|7|7|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|3>|<cell|-2>|<cell|0>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>|<cell|<frac|9|2>>|<cell|<frac|3|2>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|7|7|cell-tborder|0ln>|<cwith|1|-1|7|7|cell-lborder|1ln>|<cwith|1|-1|6|6|cell-rborder|1ln>|<cwith|1|-1|7|7|cell-rborder|0ln>|<cwith|3|3|7|7|cell-bborder|0ln>|<cwith|3|3|7|7|cell-lborder|1ln>|<cwith|3|3|6|6|cell-rborder|1ln>|<cwith|3|3|7|7|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|3>|<cell|-2>|<cell|0>|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|0>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|3>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
      .>>>>
    </eqnarray*>

    Thus

    <\eqnarray*>
      <tformat|<table|<row|<cell|x<rsub|6>>|<cell|=>|<cell|<frac|1|3>>>|<row|<cell|x<rsub|3>+2x<rsub|4>>|<cell|=>|<cell|0>>|<row|<cell|x<rsub|1>+3x<rsub|2>-2x<rsub|3>+2x<rsub|5>>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    The general solution is given by <math|<around*|(|-3x<rsub|2>+4x<rsub|4>+2x<rsub|5>,x<rsub|2>,-2x<rsub|4>,x<rsub|5>,<frac|1|3>|)>>
    for arbitrary <math|x<rsub|2>,x<rsub|4>,x<rsub|5>\<in\>F>.
  </question>

  <\question>
    \;

    <\enumerate-alpha>
      <item>The augmented coefficient matrix is

      <\equation*>
        <bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|4>|<cell|2>|<cell|1>|<cell|b<rsub|1>>>|<row|<cell|1>|<cell|5>|<cell|2>|<cell|0>|<cell|b<rsub|2>>>|<row|<cell|2>|<cell|9>|<cell|5>|<cell|3>|<cell|b<rsub|3>>>|<row|<cell|2>|<cell|7>|<cell|4>|<cell|3>|<cell|b<rsub|4>>>>>>
        .
      </equation*>

      Row reduce the augemented matrix.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|4>|<cell|2>|<cell|1>|<cell|b<rsub|1>>>|<row|<cell|1>|<cell|5>|<cell|2>|<cell|0>|<cell|b<rsub|2>>>|<row|<cell|2>|<cell|9>|<cell|5>|<cell|3>|<cell|b<rsub|3>>>|<row|<cell|2>|<cell|7>|<cell|4>|<cell|3>|<cell|b<rsub|4>>>>>>>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|4>|<cell|2>|<cell|1>|<cell|b<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|b<rsub|2>-b<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|b<rsub|3>-2b<rsub|1>>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|b<rsub|4>-2b<rsub|1>>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|4>|<cell|2>|<cell|1>|<cell|b<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|b<rsub|2>-b<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|b<rsub|3>-2b<rsub|1>>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|b<rsub|4>-2b<rsub|1>>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|4|4|5|5|cell-bborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|5>|<cell|-7b<rsub|1>+4b<rsub|4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|b<rsub|2>-3b<rsub|1>+b<rsub|4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|b<rsub|3>-4b<rsub|1>+b<rsub|4>>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|1>|<cell|b<rsub|4>-2b<rsub|1>>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<cwith|4|4|4|4|cell-rborder|1ln>|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|5>|<cell|-7b<rsub|1>+4b<rsub|4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|2b<rsub|1>-b<rsub|4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|b<rsub|3>-4b<rsub|1>+b<rsub|4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|b<rsub|2>-3b<rsub|1>+b<rsub|4>>>>>>
        .>>>>
      </eqnarray*>

      The system has a solution if the rank of the augmented matrix is no
      greater than the rank of the coefficient matrix.
      <math|<around*|(|b<rsub|1>,b<rsub|2>,b<rsub|3>,b<rsub|4>|)>> must
      satisfy

      <\equation*>
        b<rsub|2>-3b<rsub|1>+b<rsub|4>=0,
      </equation*>

      of which the general solution is <math|<around*|(|b<rsub|1>,3b<rsub|1>-b<rsub|4>,b<rsub|3>,b<rsub|4>|)>>
      for arbitrary <math|b<rsub|1>,b<rsub|3>,b<rsub|4>\<in\>F>.

      <item>Given <math|<around*|(|b<rsub|1>,b<rsub|2>,b<rsub|3>,b<rsub|4>|)>=<around*|(|-1,-4,-1,1|)>>,
      the row echelon form of the augmented matrix is

      <\equation*>
        <bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<cwith|4|4|4|4|cell-rborder|1ln>|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|5>|<cell|11>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|5|5|cell-tborder|0ln>|<cwith|1|-1|5|5|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|-1|5|5|cell-rborder|0ln>|<cwith|4|4|4|4|cell-rborder|1ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>|<cell|-3>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>,
      </equation*>

      from which we obtain <math|<around*|(|x<rsub|1>,x<rsub|2>,x<rsub|3>,x<rsub|4>|)>=*<around*|(|3-x<rsub|4>,x<rsub|4>-3,4-2x<rsub|4>,x<rsub|4>|)>>
      for <math|x<rsub|4>\<in\>F>.
    </enumerate-alpha>
  </question>

  <\question>
    \;

    <\equation*>
      A*x=b<space|1em> is<space|2em><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|2>|<cell|\<lambda\>+1>|<cell|2>>|<row|<cell|\<lambda\>>|<cell|1>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|4>>|<row|<cell|2\<lambda\>>>>>>
      .
    </equation*>

    Row-reduce the augmented matrix <math|A\|b>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|2|2|cell-tborder|0ln>|<cwith|1|1|2|2|cell-bborder|0ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<table|<row|<cell|A>|<cell|b>>>>>>|<cell|=>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|\<lambda\>+1>|<cell|2>|<cell|4>>|<row|<cell|\<lambda\>>|<cell|1>|<cell|1>|<cell|2\<lambda\>>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|\<lambda\>-1>|<cell|-2>|<cell|2>>|<row|<cell|0>|<cell|1-\<lambda\>>|<cell|1-2\<lambda\>>|<cell|\<lambda\>>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|\<lambda\>-1>|<cell|-2>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|-<around*|(|2\<lambda\>+1|)>>|<cell|\<lambda\>+2>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|\<lambda\>-1>|<cell|-2>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|\<lambda\>+2|2\<lambda\>+1>>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|<frac|4\<lambda\>+5|2\<lambda\>+1>>>|<row|<cell|0>|<cell|\<lambda\>-1>|<cell|0>|<cell|<frac|2|2\<lambda\>+1>*<around*|(|\<lambda\>-1|)>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|\<lambda\>+2|2\<lambda\>+1>>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|<frac|4\<lambda\>+5|2\<lambda\>+1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|2|2\<lambda\>+1>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|\<lambda\>+2|2\<lambda\>+1>>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|4\<lambda\>+3|2\<lambda\>+1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|2|2\<lambda\>+1>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|\<lambda\>+2|2\<lambda\>+1>>>>>>>>>>
    </eqnarray*>

    The system has

    <\itemize>
      <item>a unique solution for <math|\<lambda\>\<neq\>-<frac|1|2>>, as
      <math|rank<around*|(|A|)>=rank<around*|(|A<around*|\||b|)>|\<nobracket\>>=>number
      of rows of <math|A>.

      <item>no solution solution for <math|\<lambda\>=-<frac|1|2>>, as the
      augmented matrix is (after some reduction)

      <\equation*>
        <bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|-<frac|3|2>>|<cell|-2>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|3|2>>>>>>
      </equation*>

      and is inconsistent: <math|rank<around*|(|A|)>\<less\>rank<around*|(|A<around*|\||b|)>|\<nobracket\>>>

      <item>an infinite number of solutions for <math|\<lambda\>=1>, as the
      augmented matrix is (after some reduction)

      <\equation*>
        <bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|<frac|4\<lambda\>+5|2\<lambda\>+1>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|-<frac|\<lambda\>+2|2\<lambda\>+1>>>>>>
      </equation*>

      and <math|rank<around*|(|A|)>\<less\>>number of rows of <math|A>.
    </itemize>
  </question>

  <\question>
    \;

    <\equation*>
      A*x=b<space|1em> is<space|2em><bmatrix|<tformat|<table|<row|<cell|a>|<cell|0>|<cell|b>>|<row|<cell|a>|<cell|a>|<cell|4>>|<row|<cell|0>|<cell|a>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|x<rsub|3>>>>>>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|4>>|<row|<cell|b>>>>>
      .
    </equation*>

    Row-reduce the augmented matrix <math|A\|b>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<cwith|1|1|2|2|cell-tborder|0ln>|<cwith|1|1|2|2|cell-bborder|0ln>|<cwith|1|1|2|2|cell-lborder|1ln>|<cwith|1|1|1|1|cell-rborder|1ln>|<cwith|1|1|2|2|cell-rborder|0ln>|<table|<row|<cell|A>|<cell|b>>>>>>|<cell|=>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|a>|<cell|0>|<cell|b>|<cell|2>>|<row|<cell|a>|<cell|a>|<cell|4>|<cell|4>>|<row|<cell|0>|<cell|a>|<cell|2>|<cell|b>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|a>|<cell|0>|<cell|b>|<cell|2>>|<row|<cell|0>|<cell|a>|<cell|4-b>|<cell|2>>|<row|<cell|0>|<cell|a>|<cell|2>|<cell|b>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|a>|<cell|0>|<cell|b>|<cell|2>>|<row|<cell|0>|<cell|a>|<cell|4-b>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|b-2>|<cell|b-2>>>>>
      .>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|a>|<cell|0>|<cell|0>|<cell|2-b>>|<row|<cell|0>|<cell|a>|<cell|0>|<cell|b-2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|b-2|a>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|<frac|b-2|a>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>>>>>>>>
    </eqnarray*>

    The system has\ 

    <\itemize>
      <item>a unique solution for <math|a,b> such that
      <math|a\<neq\>0\<cup\>b\<neq\>2>, as
      <math|rank<around*|(|A|)>=rank<around*|(|A<around*|\||b|)>|\<nobracket\>>=>number
      of rows of <math|A>.

      <item>no solution for <math|a=0\<cup\>b\<neq\>2>, as the augmented
      matrix is (after some reduction)

      <\equation*>
        <bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|2-b>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|b-2>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>>>>,
      </equation*>

      which is inconsistent. <math|rank<around*|(|A|)>\<less\>rank<around*|(|A<around*|\||b|)>|\<nobracket\>>>.

      <item>an infinite number of solutions for <math|b=2> (and arbitrary
      <math|a>), as the augmented matrix is (after some reduction)

      <\equation*>
        <bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<table|<row|<cell|a>|<cell|0>|<cell|b>|<cell|2>>|<row|<cell|0>|<cell|a>|<cell|4-b>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
      </equation*>

      and <math|rank<around*|(|A|)>\<less\>>number of rows of <math|A>.
    </itemize>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>