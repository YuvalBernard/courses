<TeXmacs|2.1.4>

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
        <tformat|<table|<row|<cell|A-\<lambda\><rsub|2>*I>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1-<frac|5+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|2-<frac|5+<sqrt|15>*\<mathi\>|2>>|<cell|4>>|<row|<cell|1>|<cell|-1>|<cell|3-<frac|5+<sqrt|15>*\<mathi\>|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|-<frac|3+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|-<frac|1+<sqrt|15>*\<mathi\>|2>>|<cell|4>>|<row|<cell|1>|<cell|-1>|<cell|<frac|1-<sqrt|15>*\<mathi\>|2>>>>>>
        .>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<table|<row|<cell|-<frac|3+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|-<frac|2|1+<sqrt|15>*\<mathi\>>>|<cell|1>|<cell|-4\<times\><frac|2|1+<sqrt|15>*\<mathi\>>>>|<row|<cell|1>|<cell|-1>|<cell|<frac|1-<sqrt|15>*\<mathi\>|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|-<frac|3+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|-<frac|2|1+<sqrt|15>*\<mathi\>>>|<cell|1>|<cell|<frac|-1+<sqrt|15>*\<mathi\>|2>>>|<row|<cell|1>|<cell|-1>|<cell|<frac|1-<sqrt|15>*\<mathi\>|2>>>>>>>>>>
      </eqnarray*>

      <\equation*>
        w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|<frac|1-<sqrt|15>*\<mathi\>|2>>>|<row|<cell|1>>>>>
      </equation*>

      and for <math|\<lambda\><rsub|3>=<wide|<around*|(|<frac|1+<sqrt|15>*\<mathi\>|2>|)>|\<bar\>>>,

      <\equation*>
        w<rsub|3>=<wide|w|\<bar\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|<frac|1+<sqrt|15>*\<mathi\>|2>>>|<row|<cell|1>>>>>
        .
      </equation*>

      In conclusion, <math|P,D> are

      <\equation*>
        P=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|3>>|<row|<cell|<frac|1-<sqrt|15>*\<mathi\>|2>>|<cell|<frac|1+<sqrt|15>*\<mathi\>|2>>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|-1>>>>>
        ,<space|1em>D=<bmatrix|<tformat|<table|<row|<cell|<frac|5+<sqrt|15>*\<mathi\>|2>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|5-<sqrt|15>*\<mathi\>|2>>|<cell|0>>|<row|<cell|0>|0|<cell|1>>>>>
      </equation*>

      <item>

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|2>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>
        .
      </equation*>

      The eigenvalues of a triangular matrix are on the diagonal:
      <math|\<lambda\><rsub|1,2,3>=3,2,1>. Find associated eigenvectors.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|[|A-\<lambda\><rsub|1>*I|]>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-2>>>>>
        .>>>>
      </eqnarray*>

      <\equation*>
        w<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>
        .
      </equation*>

      <\equation*>
        <around*|[|A-\<lambda\><rsub|2>*I|]>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>.
      </equation*>

      <\equation*>
        w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>
        .
      </equation*>

      <\equation*>
        <around*|[|A-\<lambda\><rsub|3>*I|]>=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      <\equation*>
        w<rsub|3>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>
        .
      </equation*>

      <math|P,D> are

      <\equation*>
        P=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>,<space|1em>D=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>
        .
      </equation*>

      <item>

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>>|<row|<cell|4>|<cell|1>>>>>
        .
      </equation*>

      <\equation*>
        <around*|\||A-\<lambda\>*I|\|>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|4>>|<row|<cell|4>|<cell|1-\<lambda\>>>>>>=\<lambda\><rsup|2>-2\<lambda\>-15=0
      </equation*>

      <\equation*>
        \<lambda\><rsub|1,2>=<frac|2\<pm\><sqrt|4+60>|2>=5,-3 .
      </equation*>

      Find associated eigenvectors. For <math|\<lambda\><rsub|1>=5>,

      <\equation*>
        <around*|[|A-\<lambda\><rsub|1>*I|]>=<bmatrix|<tformat|<table|<row|<cell|-4>|<cell|4>>|<row|<cell|4>|<cell|-4>>>>>
        .
      </equation*>

      <\equation*>
        w<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>> .
      </equation*>

      For <math|\<lambda\><rsub|2>=-3>,

      <\equation*>
        <around*|[|A-\<lambda\><rsub|2>*I|]>=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|4>>|<row|<cell|4>|<cell|4>>>>>
        .
      </equation*>

      <\equation*>
        w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>
        .
      </equation*>

      <math|P,D> are

      <\equation*>
        P=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>>>>>,<space|1em>D=<bmatrix|<tformat|<table|<row|<cell|5>|<cell|0>>|<row|<cell|0>|<cell|-3>>>>>
        .
      </equation*>

      <item>

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
        .
      </equation*>

      The eigenvalues of a triangular matrix are on the diagonal.
      <math|\<lambda\><rsub|1,2,3,4>\<equiv\>\<lambda\>=1>. Find
      eigenvectors.

      <\equation*>
        <around*|[|A-\<lambda\>*I|]>=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      The geometric multiplicity of the eigenvalue <math|\<lambda\>>, that
      is, the dimension of the nullspace of <math|A-\<lambda\>*I>, is smaller
      than its algebraic multiplicity. <math|A> is therefore not
      diagonalizable.

      <item>

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|2>>|<row|<cell|0>|<cell|5>>>>>
        .
      </equation*>

      The matrix is triangular. <math|\<lambda\><rsub|1,2>=3,5>. Find
      associated eigenvectors.

      <\equation*>
        <around*|[|A-\<lambda\><rsub|1>*I|]>=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|2>>>>>
        .
      </equation*>

      <\equation*>
        w<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>> .
      </equation*>

      <\equation*>
        <around*|[|A-\<lambda\><rsub|2>*I|]>=<bmatrix|<tformat|<table|<row|<cell|-2>|<cell|2>>|<row|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      <\equation*>
        w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>> .
      </equation*>

      <math|P,D> are

      <\equation*>
        P=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>,<space|1em>D=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|0>>|<row|<cell|0>|<cell|5>>>>>
        .
      </equation*>
    </enumerate-alpha>
  </question>

  <\question>
    .

    <\enumerate-alpha>
      <item>Show that if <math|P<rsup|-1>*A*P=D> then
      <math|A<rsup|n>=P*D<rsup|n>*P<rsup|-1>>.

      We shall use induction. For <math|n=0>,

      <\equation*>
        A<rsup|0>=I=P*D<rsup|0>*P<rsup|-1>=P**I*P<rsup|-1>=I .
      </equation*>

      For <math|n=1>, start from

      <\equation*>
        P<rsup|-1>*A*P=D .
      </equation*>

      Multipliy by <math|P> on the left and by <math|P<rsup|-1 >> on the
      right to get

      <\equation*>
        P*P<rsup|-1>*A*P*P<rsup|-1>=P*D*P<rsup|-1>
      </equation*>

      <\equation*>
        A=P*D*P<rsup|-1> .
      </equation*>

      Now assume that for <math|n=k>

      <\equation*>
        A<rsup|k>=P*D<rsup|k>*P<rsup|-1> .
      </equation*>

      For <math|n=k+1>,

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsup|k+1>=A<rsup|k>*A>|<cell|=>|<cell|<around*|(|P*D<rsup|k>*P<rsup|-1>
        |)>*P*D*P<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|P*D<rsup|k>*P<rsup|-1>*P*D*P<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|P*D<rsup|k>*I*D*P<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|P*D<rsup|k+1>*P<rsup|-1>
        .>>>>
      </eqnarray*>

      QED.

      <item>Given <math|A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|2>|<cell|3>>>>>>,
      calculate <math|A<rsup|8>>. Diagonalize <math|A>.

      <math|A> is triangular. The eigenvalues are
      <math|\<lambda\><rsub|1,2>=1,3>. Find associated eigenvectors.

      <\equation*>
        <around*|[|A-\<lambda\><rsub|1>*I|]>=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|2>>>>>
        .
      </equation*>

      <\equation*>
        w<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|*-1>>>>>
        .
      </equation*>

      <\equation*>
        <around*|[|A-\<lambda\><rsub|2>*I|]>=<bmatrix|<tformat|<table|<row|<cell|-2>|<cell|0>>|<row|<cell|2>|<cell|0>>>>>
        .
      </equation*>

      <\equation*>
        w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>> .
      </equation*>

      <math|P,D> are

      <\equation*>
        P=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>,<space|1em>D=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|3>>>>>
        .
      </equation*>

      Calculate <math|P<rsup|-1>>. Use Gauss-Seidel method

      <\equation*>
        <around*|[|P\|I|]>=<bmatrix|<tformat|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|2|2|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>|<cell|0>|<cell|1>>>>>\<sim\><bmatrix|<tformat|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|2|2|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>>>>>
        .
      </equation*>

      <\equation*>
        P<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>>>>>
        .
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsup|8>=P*D<rsup|8>*P<rsup|-1>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|1<rsup|8>>|<cell|0>>|<row|<cell|0>|<cell|3<rsup|8>>>>>>*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|1>>>>>**<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|3<rsup|8>>|<cell|3<rsup|8>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|3<rsup|8>-1>|<cell|3<rsup|8>>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|6560>|<cell|6561>>>>>
        .>>>>
      </eqnarray*>
    </enumerate-alpha>
  </question>

  <\question>
    Prove:

    <\enumerate-alpha>
      <item>If <math|\<lambda\>> is an eigenvalue for <math|A> then
      <math|\<lambda\><rsup|k>> is an eigenvalue for <math|A<rsup|k>>.

      <\proof>
        We shall prove the statements via induction. For <math|k=1> we get
        the trivial case. Now assume that If <math|\<lambda\>> is an
        eigenvalue for <math|A> then <math|\<lambda\><rsup|m>> is an
        eigenvalue for <math|A<rsup|m>>, i.e.

        <\equation*>
          A<rsup|m>*x=\<lambda\><rsup|m>*x
        </equation*>

        \ For <math|k=m+1>,

        <\eqnarray*>
          <tformat|<table|<row|<cell|A<rsup|m+1>*x>|<cell|=>|<cell|A<rsup|m>*A*x>>|<row|<cell|>|<cell|=>|<cell|A<rsup|m>*\<lambda\>*x>>|<row|<cell|>|<cell|=>|<cell|\<lambda\>*A<rsup|m>*x>>|<row|<cell|>|<cell|=>|<cell|\<lambda\>*\<lambda\><rsup|m>*x>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|m+1>*x
          .>>>>
        </eqnarray*>
      </proof>

      <item>If <math|A<rsup|2>=A> and if <math|\<lambda\>> is an eigenvalue
      for <math|A> then <math|\<lambda\>=0> or <math|\<lambda\>=1>.

      <\proof>
        If <math|\<lambda\>> is an eigenvalue for <math|A>, then

        <\equation*>
          A*x=\<lambda\>*x .
        </equation*>

        Similarly, based on the previous section, for <math|A<rsup|2>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|A<rsup|2>*x>|<cell|=>|<cell|\<lambda\><rsup|2>*x
          .>>>>
        </eqnarray*>

        But since <math|A<rsup|2>=A>, we must have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|A<rsup|2>-A|)>*x>|<cell|=>|<cell|0>>|<row|<cell|\<lambda\><rsup|2>*x-\<lambda\>*x>|<cell|=>|<cell|0>>|<row|<cell|<around*|(|\<lambda\><rsup|2>-\<lambda\>|)>*x>|<cell|=>|<cell|0>>>>
        </eqnarray*>

        which is only generally true for <math|\<lambda\>=1> or
        <math|\<lambda\>=0>, assuming <math|x\<neq\><wide|0|\<vect\>>> (which
        holds by the definition of an eigenvector).
      </proof>
    </enumerate-alpha>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>