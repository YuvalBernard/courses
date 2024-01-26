<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  9>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    At the end of year <math|n>, #rabbits is <math|x<rsub|n>> and #wolves is
    <math|y<rsub|n>>.

    <\equation*>
      <choice|<tformat|<table|<row|<cell|x<rsub|n+1>=3*x<rsub|n>-y<rsub|n>>>|<row|<cell|y<rsub|n+1>=2*x<rsub|n>>>>>>
      .
    </equation*>

    <\enumerate-alpha>
      <item>Denote <math|<wide|v|\<vect\>><rsub|n>=<around*|[|x<rsub|n>,y<rsub|n>|]><rsup|T>>.
      Consider the matrix <math|A>

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-1>>|<row|<cell|2>|<cell|0>>>>>
        .
      </equation*>

      As we can see,

      <\equation*>
        A*<wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-1>>|<row|<cell|2>|<cell|0>>>>>*<bmatrix|<tformat|<table|<row|<cell|x<rsub|n>>>|<row|<cell|y<rsub|n
        >>>>>>=<bmatrix|<tformat|<table|<row|<cell|3*x<rsub|n>-y<rsub|n>>>|<row|<cell|2*x<rsub|n>>>>>>=<wide|v|\<vect\>><rsub|n+1>
        .
      </equation*>

      <item>Denote <math|<wide|v|\<vect\>><rsub|0>=<around*|[|x<rsub|0>,y<rsub|0>|]><rsup|T>>.
      Prove by induction that <math|<wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>>.

      <\proof>
        For <math|n=0> (base case),\ 

        <\equation*>
          <wide|v|\<vect\>><rsub|0>=A<rsup|0>*<wide|v|\<vect\>><rsub|0>=I*<wide|v|\<vect\>><rsub|0>=<wide|v|\<vect\>><rsub|0>
          .
        </equation*>

        Assume that <math|<wide|v|\<vect\>><rsub|k>=A<rsup|k>*<wide|v|\<vect\>><rsub|0>>.
        For <math|n=k+1> (inductive step),

        <\equation*>
          <wide|v|\<vect\>><rsub|k+1>=A<rsup|k+1>*<wide|v|\<vect\>><rsub|0>=A*A<rsup|k>*<wide|v|\<vect\>><rsub|0>=A*<wide|v|\<vect\>><rsub|k>,
        </equation*>

        which is true by the definition of <math|A>.
      </proof>

      <item> Find eigenvalues for <math|A>:

      <\equation*>
        <around*|\||A-\<lambda\>*I|\|>=<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|-1>>|<row|<cell|2>|<cell|-\<lambda\>>>>>>=\<lambda\><rsup|>-3\<lambda\>+2=<around*|(|\<lambda\>-2|)>*<around*|(|\<lambda\>-1|)>=0
        .
      </equation*>

      Find associated eigenvectors: for <math|\<lambda\><rsub|1>=2>:

      <\equation*>
        <around*|[|A-2*I|]>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|2>|<cell|-2>>>>>\<rightarrow\>w<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>
        .
      </equation*>

      For <math|\<lambda\><rsub|2>=1>:

      <\equation*>
        <around*|[|A-I|]>=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|2>|<cell|-1>>>>>\<rightarrow\>w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>
        .
      </equation*>

      <item>Find an expression for <math|A<rsup|n>>, and express
      <math|<wide|v|\<vect\>><rsub|n>> as
      <math|A<rsup|n>*<wide|v|\<vect\>><rsub|0>>. The matrix of eigenvectors
      is

      <\equation*>
        T=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>,
      </equation*>

      whose inverse is

      <\equation*>
        T<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>
        .
      </equation*>

      Therefore,

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsup|n>=T<rsup|>*D<rsup|n>*T<rsup|-1>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>
        <bmatrix|<tformat|<table|<row|<cell|2<rsup|n>>|<cell|0>>|<row|<cell|0>|<cell|1<rsup|n>>>>>>*<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|2<rsup|n+1>>|<cell|-2<rsup|n>>>|<row|<cell|-1>|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|2<rsup|n+1>-1>|<cell|1-2<rsup|n>>>|<row|<cell|2<rsup|n+1>-2>|<cell|2-2<rsup|n>>>>>>
        ,>>>>
      </eqnarray*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|2<rsup|n+1>-1>|<cell|1-2<rsup|n>>>|<row|<cell|2<rsup|n+1>-2>|<cell|2-2<rsup|n>>>>>>
        <bmatrix|<tformat|<table|<row|<cell|x<rsub|0>>>|<row|<cell|y<rsub|0>>>>>>=<bmatrix|<tformat|<table|<row|<cell|<around*|(|2<rsup|n+1>-1|)>*x<rsub|0>+<around*|(|1-2<rsup|n>|)>*y<rsub|0>>>|<row|<cell|<around*|(|2<rsup|n+1>-2|)>*x<rsub|0>+<around*|(|2-2<rsup|n>|)>*y<rsub|0>>>>>>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|n>>>|<row|<cell|y<rsub|n>>>>>>
        .>>>>
      </eqnarray*>

      In a more compact form, we may conclude that

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|x<rsub|n>>>|<row|<cell|y<rsub|n>>>>>>=<around*|(|2*x<rsub|0>-y<rsub|0>|)>*2<rsup|n>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+<around*|(|y<rsub|0>-x<rsub|0>|)>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>
        .
      </equation*>

      <item>Given <math|<wide|v|\<vect\>><rsub|0>=<around*|[|3,2|]><rsup|T>>,

      <\equation*>
        <wide|v|\<vect\>><rsub|7>=<around*|(|2*\<times\>3-2|)>*2<rsup|7>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+<around*|(|2-3|)>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|511>>|<row|<cell|510>>>>>
        .
      </equation*>
    </enumerate-alpha>
  </question>

  <\question>
    Find Jordan canonical forms. The number of\ 

    <\enumerate-alpha>
      <item><math|P<around*|(|\<lambda\>|)>=<around*|(|\<lambda\>-1|)><rsup|2>*<around*|(|\<lambda\>+2|)><rsup|3>>.

      <\equation*>
        J=<bmatrix|<tformat|<cwith|1|2|1|2|cell-background|pastel
        green>|<cwith|3|5|3|5|cell-background|pastel
        yellow>|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|-2>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-2>>>>>
        .
      </equation*>

      <item><math|P<around*|(|\<lambda\>|)>=<around*|(|\<lambda\>-5|)><rsup|4>>.

      <\equation*>
        J=<bmatrix|<tformat|<table|<row|<cell|5>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|5>|<cell|1>|0>|<row|0|0|<cell|5>|<cell|1>>|<row|0|0|0|<cell|5>>>>>
        .
      </equation*>

      <item><math|P<around*|(|\<lambda\>|)>=\<lambda\>*<around*|(|\<lambda\>+3|)>*<around*|(|\<lambda\>-5|)><rsup|2>
      .>

      <\equation*>
        J=<bmatrix|<tformat|<cwith|1|1|1|1|cell-background|pastel
        green>|<cwith|2|2|2|2|cell-background|pastel
        yellow>|<cwith|3|4|3|4|cell-background|pastel
        cyan>|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-3>|0|0>|<row|0|<cell|0>|<cell|5>|<cell|1>>|<row|0|<cell|0>|<cell|0>|<cell|5>>>>>
        .
      </equation*>
    </enumerate-alpha>
  </question>

  <\question>
    Find matrix <math|T> that transforms the matrix <math|A> to Jordan
    canonical form.

    <\enumerate-alpha>
      <item> <math|A=<bmatrix|<tformat|<table|<row|<cell|-12>|<cell|7>>|<row|<cell|-7>|<cell|2>>>>>>
      . Find eigenvalues for <math|A>.

      <\equation*>
        <around*|\||A-\<lambda\>*I|\|>=<around*|(|\<lambda\>+12|)>*<around*|(|\<lambda\>-2|)>+49=\<lambda\><rsup|2>+10\<lambda\>+25=<around*|(|\<lambda\>+5|)><rsup|2>=0
        .
      </equation*>

      <math|T> consists of two generalized eigenvectors
      <math|T=<around*|[|t<rsub|1>,t<rsub|2>|]>>. <math|t<rsub|1>\<in\>kernel
      <around*|(|A+5*I|)>>:

      <\equation*>
        <around*|[|A+5*I|]>*t<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>\<Longleftrightarrow\><bmatrix|<tformat|<table|<row|<cell|-7>|<cell|7>>|<row|<cell|-7>|<cell|7>>>>>t<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>
        .
      </equation*>

      Pick <math|t<rsub|1>=<around*|[|-7,-7|]><rsup|T>>. <math|t<rsub|2>>
      satisfies <math|<around*|[|A+5*I|]>*t<rsub|2>=t<rsub|1>>.

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|-7>|<cell|7>>|<row|<cell|-7>|<cell|7>>>>>*t<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|-7>>|<row|<cell|-7>>>>>
        .
      </equation*>

      Pick <math|t<rsub|2>=<around*|[|1,0|]><rsup|T>.> The desired matrix
      <math|T> is

      <\equation*>
        T=<bmatrix|<tformat|<table|<row|<cell|-7>|<cell|1>>|<row|<cell|-7>|<cell|0>>>>>
        .
      </equation*>

      <item><math|A=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-1>>|<row|<cell|1>|<cell|2>>>>>>.
      Find eigenvalues for <math|A>.

      <\equation*>
        <around*|\||A-\<lambda\>*I|\|>=<around*|(|\<lambda\>-4|)>*<around*|(|\<lambda\>-2|)>+1=\<lambda\><rsup|2>-6\<lambda\>+9=<around*|(|\<lambda\>-3|)><rsup|2>=0.
      </equation*>

      <math|T> consists of two generalized eigenvectors
      <math|T=<around*|[|t<rsub|1>,t<rsub|2>|]>>.
      <math|t<rsub|1>\<in\>kernel<around*|(|A-3*I|)>>:

      <\equation*>
        <around*|[|A-3*I|]>*t<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>\<Longleftrightarrow\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|-1>>>>>*t<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>
        .
      </equation*>

      Pick <math|t<rsub|1>=<around*|[|1,1|]><rsup|T>>. <math|t<rsub|2>>
      satisfies <math|<around*|[|A-3*I|]>*t<rsub|2>=t<rsub|1>>.

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|1>|<cell|-1>>>>>*t<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>
        .
      </equation*>

      Pick <math|t<rsub|2>=<around*|[|1,0|]><rsup|T>>.

      <\equation*>
        T=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>
        .
      </equation*>

      <item><math|A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|4>|<cell|-5>>>>>>.
      Find eigenvalues for <math|A>.

      <\equation*>
        <around*|\||A-\<lambda\>*I|\|>=<around*|(|\<lambda\>-1|)>*<around*|(|\<lambda\>+5|)>-12=\<lambda\><rsup|2>+4\<lambda\>-17
        .
      </equation*>

      <\equation*>
        \<lambda\><rsub|1,2>=<frac|-4\<pm\><sqrt|16+4\<times\>17>|2>=-2\<pm\><sqrt|21>
        .
      </equation*>

      Find associated eigenvectors. For <math|\<lambda\><rsub|1>=-2+<sqrt|21>>:

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|[|A-<around*|(|<sqrt|21>-2|)>*I|]>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|3-<sqrt|21>>|<cell|3>>|<row|<cell|4>|<cell|-3-<sqrt|21>>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|<frac|3|3-<sqrt|21>>>>|<row|<cell|4>|<cell|-3-<sqrt|21>>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|<frac|3|3-<sqrt|21>>>>|<row|<cell|0>|<cell|-<around*|(|3+<sqrt|21>|)>-<frac|12|3-<sqrt|21>>=<frac|-<around*|(|9-21|)>-12|3-<sqrt|21>>=0>>>>>>>>>
      </eqnarray*>

      <\equation*>
        w<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|<frac|3|<sqrt|21>-3>>>|<row|<cell|1>>>>>
        .
      </equation*>

      For <math|\<lambda\><rsub|2>=-2-<sqrt|21>>:

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|<around*|[|A+<around*|(|<sqrt|21>+2|)>*I|]>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|3+<sqrt|21>>|<cell|3>>|<row|<cell|4>|<cell|-3+<sqrt|21>>>>>>\<sim\><bmatrix|<tformat|<table|<row|<cell|1>|<cell|<frac|3|3+<sqrt|21>>>>|<row|<cell|4>|<cell|-3+<sqrt|21>>>>>>>>|<row|<cell|>|<cell|\<sim\>>|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|<frac|3|3+<sqrt|21>>>>|<row|<cell|0>|<cell|-3+<sqrt|21>-<frac|12|3+<sqrt|21>>=<frac|<around*|(|21-9|)>-12|3+<sqrt|21>>=0>>>>>>>>>>
      </equation*>
    </enumerate-alpha>

    <\equation*>
      w<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|-<frac|3|3+<sqrt|21>>>>|<row|<cell|1>>>>>
      .
    </equation*>

    <math|T> is just the matrix of the eigenvectors of <math|A>.

    <\equation*>
      T=<bmatrix|<tformat|<table|<row|<cell|<frac|3|<sqrt|21>-3>>|<cell|-<frac|3|3+<sqrt|21>>>>|<row|<cell|1>|<cell|1>>>>>
      .
    </equation*>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>