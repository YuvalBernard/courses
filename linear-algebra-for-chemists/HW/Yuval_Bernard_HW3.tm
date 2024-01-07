<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  3>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    <math|<wide|w|\<vect\>>=<around*|(|-3,4,7,1,2,-9|)>>.

    <\enumerate>
      <item><math|<wide|x|\<vect\>>=<around*|(|9,21,3,6,-4,15|)>.>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<wide|w|\<vect\>>\<cdot\><wide|x|\<vect\>>>|<cell|=>|<cell|<around*|(|-3,4,7,1,2,-9|)>\<cdot\><around*|(|9,21,3,6,-4,15|)>>>|<row|<cell|>|<cell|=>|<cell|-27+84+21+6-8-135>>|<row|<cell|>|<cell|=>|<cell|-59
        .>>>>
      </eqnarray*>

      <item><math|<wide|x|\<vect\>>=<around*|(|2,0,0,-13,-18,6|)>.>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<wide|w|\<vect\>>\<cdot\><wide|x|\<vect\>>>|<cell|=>|<cell|<around*|(|-3,4,7,1,2,-9|)>\<cdot\><around*|(|2,0,0,-13,-18,6|)>>>|<row|<cell|>|<cell|=>|<cell|-6-13-36-54>>|<row|<cell|>|<cell|=>|<cell|-109
        .>>>>
      </eqnarray*>
    </enumerate>
  </question>

  <\question>
    \;

    \;

    <\enumerate>
      <item>

      <\equation*>
        A*v=<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|9>|<cell|-2>|<cell|6>>>>>*<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|-3>>|<row|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|-4+2>>|<row|<cell|-9+4>>|<row|<cell|36+6+12>>>>>=<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|-5>>|<row|<cell|54>>>>>
      </equation*>

      <item>

      <\equation*>
        v<rsup|T>*v=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|-3>>|<row|<cell|2>>>>>=16+9+4=29
      </equation*>

      <item>

      <\equation*>
        v*v<rsup|T>=<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|-3>>|<row|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|4\<cdot\>4>|<cell|4\<cdot\><around*|(|-3|)>>|<cell|4\<cdot\>
        2>>|<row|<cell|-3\<cdot\>4>|<cell|<around*|(|-3|)>\<cdot\><around*|(|-3|)>>|<cell|<around*|(|-3|)>\<cdot\>2>>|<row|<cell|2\<cdot\>4>|<cell|2\<cdot\><around*|(|-3|)>>|<cell|2\<cdot\>2>>>>>=<bmatrix|<tformat|<table|<row|<cell|16>|<cell|-12>|<cell|8>>|<row|<cell|-12>|<cell|9>|<cell|-6>>|<row|<cell|8>|<cell|-6>|<cell|4>>>>>
      </equation*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|T>*A*v=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|9>|<cell|-2>|<cell|6>>>>>*<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|-3>>|<row|<cell|2>>>>>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>><bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|-5>>|<row|<cell|54>>>>>>>|<row|<cell|>|<cell|=>|<cell|-8+15+108=115>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsup|T>*A>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|9>>|<row|<cell|0>|<cell|3>|<cell|-2>>|<row|<cell|1>|<cell|2>|<cell|6>>>>>*<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|9>|<cell|-2>|<cell|6>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1+81>|<cell|-18>|<cell|-1+54>>|<row|<cell|-18>|<cell|9+4>|<cell|6-12>>|<row|<cell|-1+54>|<cell|6-12>|<cell|1+4+36>>>>>=<bmatrix|<tformat|<table|<row|<cell|82>|<cell|-18>|<cell|53>>|<row|<cell|-18>|<cell|13>|<cell|-6>>|<row|<cell|53>|<cell|-6>|<cell|41>>>>>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|2*A*B*>|<cell|=>|<cell|2*<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|9>|<cell|-2>|<cell|6>>>>>*<bmatrix|<tformat|<table|<row|<cell|2>|<cell|7>|<cell|-1>|<cell|4>>|<row|<cell|0>|<cell|3>|<cell|2>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>|<row|<cell|>|<cell|=>|<cell|2*<bmatrix|<tformat|<table|<row|<cell|-2>|<cell|-7>|<cell|1>|<cell|-4+1>>|<row|<cell|0>|<cell|9>|<cell|6>|<cell|12+2>>|<row|<cell|18>|<cell|63-6>|<cell|-9-4>|<cell|36-8+6>>>>>=<bmatrix|<tformat|<table|<row|<cell|-4>|<cell|-14>|<cell|2>|<cell|-6>>|<row|<cell|0>|<cell|18>|<cell|12>|<cell|28>>|<row|<cell|36>|<cell|114>|<cell|-26>|<cell|68>>>>>>>>>
      </eqnarray*>

      <item>

      <\equation*>
        A*D=<tabular*|<tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|9>|<cell|-2>|<cell|6>>>>><bmatrix|<tformat|<table|<row|<cell|4>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|<around*|(|-1|)>\<cdot\>4>|<cell|0>|<cell|1\<cdot\>2>>|<row|<cell|0>|<cell|3\<cdot\><around*|(|-3|)>>|<cell|2\<cdot\>2>>|<row|<cell|9\<cdot\>4>|<cell|<around*|(|-2|)>\<cdot\><around*|(|-3|)>>|<cell|6\<cdot\>2>>>>>=<bmatrix|<tformat|<table|<row|<cell|-4>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|-9>|<cell|4>>|<row|<cell|36>|<cell|6>|<cell|12>>>>>*>>>>>
      </equation*>

      <item>

      <\equation*>
        D*A=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>>>>><bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|9>|<cell|-2>|<cell|6>>>>>=<bmatrix|<tformat|<table|<row|<cell|4\<cdot\><around*|(|-1|)>>|<cell|0>|<cell|4\<cdot\>1>>|<row|<cell|0>|<cell|<around*|(|-3|)>\<cdot\><around*|(|-3|)>>|<cell|<around*|(|-3|)>\<cdot\>2>>|<row|<cell|2\<cdot\>9>|<cell|2\<cdot\><around*|(|-2|)>>|<cell|2\<cdot\>6>>>>>=<bmatrix|<tformat|<table|<row|<cell|-4>|<cell|0>|<cell|4>>|<row|<cell|0>|<cell|-9>|<cell|-6>>|<row|<cell|18>|<cell|-4>|<cell|12>>>>>*
      </equation*>

      <item>

      <\equation*>
        B<rsup|T>*A=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|7>|<cell|3>|<cell|0>>|<row|<cell|-1>|<cell|2>|<cell|0>>|<row|<cell|4>|<cell|4>|<cell|1>>>>><bmatrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|3>|<cell|2>>|<row|<cell|9>|<cell|-2>|<cell|6>>>>>=<bmatrix|<tformat|<table|<row|<cell|-2>|<cell|0>|<cell|2>>|<row|<cell|-7>|<cell|9>|<cell|7+6>>|<row|<cell|1>|<cell|6>|<cell|-1+4>>|<row|<cell|-4+9>|<cell|12-2>|<cell|4+8+6>>>>>=<bmatrix|<tformat|<table|<row|<cell|-2>|<cell|0>|<cell|2>>|<row|<cell|-7>|<cell|9>|<cell|13>>|<row|<cell|5>|<cell|10>|<cell|18>>>>>
      </equation*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|T>*B*u>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>><bmatrix|<tformat|<table|<row|<cell|2>|<cell|7>|<cell|-1>|<cell|4>>|<row|<cell|0>|<cell|3>|<cell|2>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|9>>|<row|<cell|3>>|<row|<cell|-4>>|<row|<cell|-2>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|18+21+4-8>>|<row|<cell|9-8-8>>|<row|<cell|-2>>>>>=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|35>>|<row|<cell|-7>>|<row|<cell|-2>>>>>>>|<row|<cell|>|<cell|=>|<cell|140+21-4=157>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|T>*D*v>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|4>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|-3>>|<row|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|16>>|<row|<cell|9>>|<row|<cell|4>>>>>=64-27+8=45>>>>
      </eqnarray*>

      <item>Calculate via Gaussian elimination.

      <\equation*>
        <around*|[|D\<divides\>I|]>=<bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|4>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|0>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|1>\<rightarrow\><frac|1|4>R<rsub|1>>>|<row|<cell|R<rsub|2>\<rightarrow\>-<frac|1|3>R<rsub|2>>>|<row|<cell|R<rsub|3>\<rightarrow\><frac|1|2>R<rsub|3>>>>>>><bmatrix|<tformat|<cwith|1|1|4|4|cell-tborder|0ln>|<cwith|3|3|4|4|cell-bborder|0ln>|<cwith|1|-1|4|4|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|-1|4|4|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|1|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|-<frac|1|3>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<frac|1|2>>>>>>=<around*|[|I\<divides\>D<rsup|-1>|]>
        .
      </equation*>

      \;

      <\equation*>
        D<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|<frac|1|4>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|1|3>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|1|2>>>>>>
      </equation*>
    </enumerate>
  </question>

  <\question>
    \;

    <\enumerate-alpha>
      <item>By definition, for square <math|n\<times\>n> matrices <math|A,B>,
      we have

      <\equation*>
        <around*|(|A*B|)><rsub|j\<nocomma\>i><rsup|T>=<around*|(|A*B|)><rsub|i\<nocomma\>j>=<big|sum><rsub|k=1><rsup|n>A<rsub|i\<nocomma\>k>*B<rsub|k\<nocomma\>j><rsub|>
        .
      </equation*>

      On the other hand,

      <\equation*>
        <around*|(|B<rsup|T>*A<rsup|T>|)><rsub|j\<nocomma\>i>=<big|sum><rsub|k=1><rsup|n>B<rsub|j\<nocomma\>k><rsup|T>*A<rsup|T><rsub|k\<nocomma\>i>
        .
      </equation*>

      Using <math|B<rsup|T><rsub|j\<nocomma\>k>=B<rsub|k\<nocomma\>j>> and
      <math|A<rsup|T><rsub|k\<nocomma\>i>=A<rsub|i\<nocomma\>k>>,

      <\equation*>
        <big|sum><rsub|k=1><rsup|n>B<rsub|j\<nocomma\>k><rsup|T>*A<rsup|T><rsub|k\<nocomma\>i>,=<big|sum><rsub|k=1><rsup|n>B<rsub|k\<nocomma\>j>*A<rsub|i\<nocomma\>k>=<big|sum><rsub|k=1><rsup|n>A<rsub|i\<nocomma\>k>*B<rsub|k\<nocomma\>j>=<around*|(|A*B|)><rsub|i\<nocomma\>j>
        .
      </equation*>

      By transitivity, we get that each element in
      <math|<around*|(|A*B|)><rsup|T>> equals each element in
      <math|B<rsup|T>*A<rsup|T>>. We can conclude then that
      \ <math|<around*|(|A*B|)><rsup|T>=B<rsup|T>*A<rsup|T>>.

      <item>Matrix <math|A> is symmetric if <math|A=A<rsup|T>>. Let
      <math|B\<equiv\>A*A<rsup|T>>.

      <\equation*>
        B<rsup|T>=<around*|(|A*A<rsup|T>|)><rsup|T>=<around*|(|A<rsup|T>*A|)>
        .
      </equation*>

      Since <math|A=A<rsup|T>>, we can write

      <\equation*>
        B<rsup|T>=<around*|(|A*A<rsup|T>|)>\<equiv\>B .
      </equation*>

      <math|B> is symmetric. Let <math|C\<equiv\><around*|(|A+A<rsup|T>|)>>.

      <\equation*>
        C<rsup|T>=<around*|(|A+A<rsup|T>|)><rsup|T>=<around*|(|A<rsup|T>+A|)>
        .
      </equation*>

      Because matrix addition is commutative, we have

      <\equation*>
        C<rsup|T>=<around*|(|A+A<rsup|T>|)>\<equiv\>C .
      </equation*>

      <math|C> is symmetric.

      <item><math|A> is invertible. Therefore, there exists <math|A<rsup|-1>>
      such that

      <\equation*>
        A*A<rsup|-1>=I,<space|2em>A<rsup|-1>*A=I .
      </equation*>

      Transpose both sides of the expression:

      <\equation*>
        <around*|(|A*A<rsup|-1>|)><rsup|T>=I<rsup|T>=I=<around*|(|A<rsup|-1>|)><rsup|T>*A<rsup|T>
        .
      </equation*>

      Since <math|A> is symmetric,

      <\equation*>
        <around*|(|A<rsup|-1>|)><rsup|T>*A<rsup|T>=<around*|(|A<rsup|-1>|)><rsup|T>*A=I
        .
      </equation*>

      Multiply on the right by <math|A<rsup|-1>>,

      <\equation*>
        <around*|(|A<rsup|-1>|)><rsup|T>*A*A<rsup|-1>=<around*|(|A<rsup|-1>|)><rsup|T>=A<rsup|-1>
        .
      </equation*>

      We thus proved that if <math|A> is invertible and symmetric then also
      its inverse is symmetric.

      <item>Let <math|A,B> be symmetric matrices, i.e. <math|A<rsup|T>=A>,
      <math|B<rsup|T>=B>. The matrix <math|A*B> is symmetric if and only if

      <\equation*>
        <around*|(|A*B|)><rsup|T>=A*B .
      </equation*>

      By definition,

      <\equation*>
        <around*|(|A*B|)><rsup|T>=B<rsup|T>*A<rsup|T> .
      </equation*>

      Applying symmetry, we get

      <\equation*>
        B<rsup|T>*A<rsup|T>=B*A .
      </equation*>

      Comining the above equations, we get

      <\equation*>
        <around*|(|A*B|)><rsup|T>=A*B=B*A,
      </equation*>

      so <math|A*B=B*A>. Conversely, if <math|A*B=B*A>, then

      <\equation*>
        <around*|(|A*B|)><rsup|T>=<around*|(|B*A|)><rsup|T>=A<rsup|T>*B<rsup|T>=A*B,
      </equation*>

      so <math|A*B> is symmetric.
    </enumerate-alpha>
  </question>

  <\question>
    Let there be two matrices <math|A,B> such that\ 

    <\equation*>
      A*A<rsup|-1>=I,<space|1em>A<rsup|-1>*A=I,<space|1em>
      B*B<rsup|-1>=I,<space|1em>B<rsup|-1>*B=I
    </equation*>

    The product <math|A*B> is invertible if and only if there is a matrix
    <math|C> such that

    <\equation*>
      <around*|(|A*B|)>*C=C*<around*|(|A*B|)>=I .
    </equation*>

    We show that <math|C=B<rsup|-1>*A<rsup|-1>>.

    <\equation*>
      A*B*B<rsup|-1>*A<rsup|-1>=A*I*A<rsup|-1>=A*A<rsup|-1>=I,
    </equation*>

    and

    <\equation*>
      B<rsup|-1>*A<rsup|-1>*A*B=B<rsup|-1>*I*B=B<rsup|-1>*B=I .
    </equation*>

    We thus proved that <math|A*B> is invertible, and the matrix <math|C>
    satisfies: <math|C=<around*|(|A*B|)><rsup|-1>=B<rsup|-1>*A<rsup|-1>>.
  </question>

  <\question>
    \;

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|-3>|<cell|4>|<cell|6>>|<row|<cell|4>|<cell|-5>|<cell|-6>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+3R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-4R<rsub|1>>>>>>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|0>|<cell|-1>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>+R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|6>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>>>
      </eqnarray*>

      <math|rank<around*|(|A|)>=2>, as it's row-echelon form has 2 non-zero
      rows.

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|5>>|<row|<cell|-1>|<cell|6>|<cell|6>>|<row|<cell|4>|<cell|-5>|<cell|-6>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-4R<rsub|1>>>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|5>>|<row|<cell|0>|<cell|8>|<cell|11>>|<row|<cell|0>|<cell|-13>|<cell|-26>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>+<frac|13|8>*R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|5>>|<row|<cell|0>|<cell|8>|<cell|11>>|<row|<cell|0>|<cell|0>|<cell|-<frac|65|8>>>>>>>>>>
      </eqnarray*>

      <math|rank<around*|(|A|)>=3>, as it's row-echelon form has 3 non-zero
      rows.

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|-3>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|-1>|<cell|0>>|<row|<cell|-1>|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|5>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+R<rsub|3>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>+R<rsub|1>>>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|-3>|<cell|2>>|<row|<cell|0>|<cell|3>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|5>|<cell|-3>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|5>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>+R<rsub|3>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-5R<rsub|4>>>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|-3>|<cell|2>>|<row|<cell|0>|<cell|8>|<cell|-4>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-18>|<cell|-24>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|5>>>>>>>|<row|<cell|>|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|<frac|1|4>R<rsub|2>\<leftrightarrow\>-<frac|1|18>R<rsub|3>>>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|-3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|3>|<cell|4>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|3>|<cell|5>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|4>\<rightarrow\>R<rsub|4>-R<rsub|3>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|-3>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|3>|<cell|4>>|<row|<cell|0>|<cell|2>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-2R<rsub|2>>>|<row|<cell|R<rsub|2>\<leftrightarrow\>R<rsub|4>>>>>>>>>|<row|<cell|>|<cell|>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|-3>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|3>|<cell|4>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>+3R<rsub|3>>>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>|<cell|-3>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-2>>>>>>>>>
      </eqnarray*>

      <math|rank<around*|(|A|)>=4>, as it's row-echelon form has 4 non-zero
      rows.
    </enumerate>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>