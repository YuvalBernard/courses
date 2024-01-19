<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  8>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    Define the Fibonacci sequence as follows:

    <\equation*>
      a<rsub|0>=0,<space|1em>a<rsub|1>=1,<space|1em>a<rsub|n>=a<rsub|n-1>+a<rsub|n-2>
      <space|1em>for<space|1em>n\<gtr\>1 .
    </equation*>

    Let\ 

    <\equation*>
      A=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>>>>><space|1em>and<space|1em><wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n>>>|<row|<cell|a<rsub|n+1>>>>>>
      .
    </equation*>

    <\enumerate-alpha>
      <item>On one side,

      <\equation*>
        <wide|v|\<vect\>><rsub|n+1>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n+1>>>|<row|<cell|a<rsub|n+2>>>>>>,
      </equation*>

      and on the other side

      <\equation*>
        A*<wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|a<rsub|n>>>|<row|<cell|a<rsub|n+1>>>>>>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n+1>>>|<row|<cell|a<rsub|n>+a<rsub|n+1>>>>>>
        .
      </equation*>

      The the definition of the Fibonacci sequence,
      <math|a<rsub|n>+a<rsub|n+1>=a<rsub|n+2>>, which verifies that

      <\equation*>
        <wide|v|\<vect\>><rsub|n+1>=A*<wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n+1>>>|<row|<cell|a<rsub|n+2>>>>>>
        .
      </equation*>

      <item>To diagonalize <math|A> we find its eigenvalues and eigenvectors.

      <\equation*>
        <around*|\||A-\<lambda\>*I|\|>=<det|<tformat|<table|<row|<cell|-\<lambda\>>|<cell|1>>|<row|<cell|1>|<cell|1-\<lambda\>>>>>>=0
      </equation*>

      <\equation*>
        \<lambda\><rsup|2>-\<lambda\>-1=0 .
      </equation*>

      <\equation*>
        \<lambda\><rsub|1,2>=<frac|1\<pm\><sqrt|1+4>|2>=<frac|1\<pm\><sqrt|5>|2>
        .
      </equation*>

      <\equation*>
        A-\<lambda\><rsub|1,2>*I=<bmatrix|<tformat|<table|<row|<cell|-<frac|1\<pm\><sqrt|5>|2>>|<cell|1>>|<row|<cell|1>|<cell|1-<frac|1\<pm\><sqrt|5>|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1\<pm\><sqrt|5>|2>>|<cell|1>>|<row|<cell|1>|<cell|<frac|1\<mp\><sqrt|5>|2>>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|-<frac|1\<pm\><sqrt|5>|2>>|<cell|1>>|<row|<cell|0>|<cell|<frac|1\<mp\><sqrt|5>|2>+<frac|2|1\<pm\><sqrt|5>>>>>>>
        .
      </equation*>

      The eigenvectors of <math|A> are

      <\equation*>
        <wide|w|\<vect\>><rsub|1,2>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1\<pm\><sqrt|5>>>>>>
      </equation*>

      Factorize <math|A> as

      <\equation*>
        A=P<rsup|>*D*P<rsup|-1> .
      </equation*>

      such that

      <\equation*>
        P=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|<frac|1-<sqrt|5>|2>>>>>>,<space|1em>D=<bmatrix|<tformat|<table|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1-<sqrt|5>|2>>>>>>
        .
      </equation*>

      Calculate <math|P<rsup|-1>>. For a <math|2\<times\>2> matrix <math|B>,

      <\equation*>
        B<rsup|-1>=<frac|1|b<rsub|11>*b<rsub|22>-b<rsub|12>*b<rsub|21>>*<bmatrix|<tformat|<table|<row|<cell|b<rsub|22>>|<cell|-b<rsub|12>>>|<row|<cell|-b<rsub|21>>|<cell|b<rsub|11>>>>>>
        .
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|P<rsup|-1>=<frac|1|<frac|1|2>\<times\><around*|(|-2*<sqrt|5>|)>>*<bmatrix|<tformat|<table|<row|<cell|<frac|1-<sqrt|5>|2>>|<cell|-1>>|<row|<cell|-<frac|1+<sqrt|5>|2>>|<cell|1>>>>>>|<cell|=>|<cell|-<frac|1|<sqrt|5>>*<bmatrix|<tformat|<table|<row|<cell|<frac|1-<sqrt|5>|2>>|<cell|-1>>|<row|<cell|-<frac|1+<sqrt|5>|2>>|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1-<sqrt|5>|2
        <sqrt|5>>>|<cell|<frac|1|<sqrt|5>>>>|<row|<cell|<frac|1+<sqrt|5>|2<sqrt|5>>>|<cell|-<frac|1|<sqrt|5>>>>>>>>>>>
      </eqnarray*>

      Use the formula

      <\equation*>
        A<rsup|n>=P*D<rsup|n>*P<rsup|-1>
      </equation*>

      to get an expression for <math|A<rsup|n>>:

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsup|n>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|<frac|1-<sqrt|5>|2>>>>>><bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>>|<cell|0>>|<row|<cell|0>|<cell|<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>>>>
        <bmatrix|<tformat|<table|<row|<cell|-<frac|1-<sqrt|5>|2
        <sqrt|5>>>|<cell|<frac|1|<sqrt|5>>>>|<row|<cell|<frac|1+<sqrt|5>|2<sqrt|5>>>|<cell|-<frac|1|<sqrt|5>>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|<frac|1-<sqrt|5>|2>>>>>>*<bmatrix|<tformat|<table|<row|<cell|-<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n><around*|(|<frac|1-<sqrt|5>|2
        >*|)>*<frac|1|<sqrt|5>>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>*<frac|1|<sqrt|5>>>>|<row|<cell|<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>*<around*|(|<frac|1+<sqrt|5>|2>|)>*<frac|1|<sqrt|5>>>|<cell|-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>*<frac|1|<sqrt|5>>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<sqrt|5>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|<frac|1-<sqrt|5>|2>>>>>>**<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n-1>*>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n-1>>|<cell|-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<sqrt|5>>*<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n-1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n-1>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>
        .>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>>|<cell|=>|<cell|<frac|1|<sqrt|5>>*<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n-1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n-1>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>*<bmatrix|<tformat|<table|<row|<cell|a<rsub|0>>>|<row|<cell|a<rsub|1>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<sqrt|5>>*<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n-1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n-1>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<sqrt|5>>*<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>
        .>>>>
      </eqnarray*>

      Using the definition for <math|<wide|v|\<vect\>><rsub|n>>, we conclude
      that

      <\equation*>
        a<rsub|n>=<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>
        .
      </equation*>
    </enumerate-alpha>
  </question>

  <\question>
    Perform eigendecomposition on the following:

    <\enumerate-alpha>
      <item>

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|1>|<cell|-1>|<cell|3>>>>>
        .
      </equation*>

      Find eigenvalues.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||A-\<lambda\>*I|\|>>|<cell|=>|<cell|<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2-\<lambda\>>|<cell|4>>|<row|<cell|1>|<cell|-1>|<cell|3-\<lambda\>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<lambda\>|)>*<around*|[|<around*|(|2-\<lambda\>|)>*<around*|(|3-\<lambda\>|)>+4|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<lambda\>|)>*<around*|(|\<lambda\><rsup|2>-5*\<lambda\>+10|)>=0
        .>>>>
      </eqnarray*>

      <\equation*>
        \<lambda\><rsub|1>=1,<space|1em>\<lambda\><rsub|2,3>=<frac|5\<pm\><sqrt|5<rsup|2>-40>|2>=<frac|5\<pm\><sqrt|15>*\<mathi\>|2>
        .
      </equation*>

      Calculate eigenvectors. For <math|\<lambda\><rsub|1>=1>,

      <\eqnarray*>
        <tformat|<table|<row|<cell|A-\<lambda\><rsub|1>*I>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|4>>|<row|<cell|1>|<cell|-1>|<cell|2>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|4>>|<row|<cell|2>|<cell|0>|<cell|6>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|4>>|<row|<cell|1>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
        .>>>>
      </eqnarray*>

      <\equation*>
        w<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|1>>|<row|<cell|-1>>>>>
        .
      </equation*>

      For <math|\<lambda\><rsub|2>=<frac|5+<sqrt|15>*\<mathi\>|2>>,

      <\eqnarray*>
        <tformat|<table|<row|<cell|A-\<lambda\><rsub|2>*I>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1-<frac|5+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2-<frac|5+<sqrt|15>*\<mathi\>|2>>|<cell|4>>|<row|<cell|1>|<cell|-1>|<cell|3-<frac|5+<sqrt|15>*\<mathi\>|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|-<frac|3+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|-<frac|1+<sqrt|15>*\<mathi\>|2>>|<cell|4>>|<row|<cell|1>|<cell|-1>|<cell|-<frac|-1+<sqrt|15>*\<mathi\>|2>>>>>>
        .>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<table|<row|<cell|-<frac|3+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|-<frac|1+<sqrt|15>*\<mathi\>|2>>|<cell|4>>|<row|<cell|0>|<cell|-1+<frac|1+<sqrt|15>*\<mathi\>|2>>|<cell|-<frac|-1+<sqrt|15>*\<mathi\>|2>-4>>>>>>>>>
      </eqnarray*>

      <\equation*>
        w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|4>>|<row|<cell|<frac|1+<sqrt|15>*\<mathi\>|2>>>>>>,
      </equation*>

      and for <math|\<lambda\><rsub|3>=<wide|<around*|(|<frac|1+<sqrt|15>*\<mathi\>|2>|)>|\<bar\>>>,

      <\equation*>
        w<rsub|3>=<wide|w|\<bar\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|4>>|<row|<cell|<frac|1-<sqrt|15>*\<mathi\>|2>>>>>>
        .
      </equation*>
    </enumerate-alpha>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>