<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  7>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    Calculate the following determinants:

    <\enumerate-alpha>
      <item>

      <\equation*>
        <det|<tformat|<table|<row|<cell|-9>|<cell|14>>|<row|<cell|-2>|<cell|7>>>>>=-9\<times\>7+14\<times\>2=-35
      </equation*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|2>|<cell|1>|<cell|3>>|<row|<cell|0>|<cell|3>|<cell|3>>>>>>|<cell|=>|<cell|1\<times\><det|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|3>|<cell|3>>>>>-2\<times\><det|<tformat|<table|<row|<cell|2>|<cell|3>>|<row|<cell|3>|<cell|3>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|3-9|)>-2*<around*|(|6-9|)>=-6+6=0>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|14>|<cell|27>|<cell|35>>|<row|<cell|22>|<cell|11>|<cell|19>>|<row|<cell|-4>|<cell|0>|<cell|0>>>>>>|<cell|=>|<cell|-4*<det|<tformat|<table|<row|<cell|27>|<cell|35>>|<row|<cell|11>|<cell|19>>>>>>>|<row|<cell|>|<cell|=>|<cell|-4*<around*|(|513-385|)>=-512>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|a>|<cell|b>|<cell|c>>|<row|<cell|c>|<cell|a>|<cell|b>>|<row|<cell|b>|<cell|c>|<cell|a>>>>>>|<cell|=>|<cell|a\<times\><det|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|a>>>>>-c\<times\><det|<tformat|<table|<row|<cell|b>|<cell|c>>|<row|<cell|c>|<cell|a>>>>>+b\<times\><det|<tformat|<table|<row|<cell|b>|<cell|c>>|<row|<cell|a>|<cell|b>>>>>>>|<row|<cell|>|<cell|=>|<cell|a*<around*|(|a<rsup|2>-b*c|)>-c*<around*|(|a*b-c<rsup|2>|)>+b*<around*|(|b<rsup|2>-a*c|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|3>-3*a*b*c+c<rsup|3>+b<rsup|3>>>>>
      </eqnarray*>

      <item>The determinant of a triangular matrix is the product of its
      diagonal entries.

      <\equation*>
        <det|<tformat|<table|<row|<cell|24>|<cell|35>|<cell|9>|<cell|17>>|<row|<cell|0>|<cell|1>|<cell|100>|<cell|38>>|<row|<cell|0>|<cell|0>|<cell|2>|<cell|97>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|4>>>>>=24\<times\>1\<times\>2*4=192
      </equation*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|t+2>|<cell|0>|<cell|1>>|<row|<cell|t+2>|<cell|t-2>|<cell|1>>|<row|<cell|0>|<cell|t-2>|<cell|t+4>>>>>>|<cell|=>|<cell|<around*|(|t+2|)>\<times\><det|<tformat|<table|<row|<cell|t-2>|<cell|1>>|<row|<cell|t-2>|<cell|t+4>>>>>+1\<times\><det|<tformat|<table|<row|<cell|t+2>|<cell|t-2>>|<row|<cell|0>|<cell|t-2>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|t+2|)>*<around*|(|t-2|)>*<around*|(|t+3|)>+<around*|(|t+2|)>*<around*|(|t-2|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|t+2|)>*<around*|(|t-2|)>*<around*|(|t+4|)>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|a>|<cell|b>|<cell|c>>|<row|<cell|a<rsup|2>>|<cell|b<rsup|2>>|<cell|c<rsup|2>>>>>>>|<cell|=>|<cell|<det|<tformat|<table|<row|<cell|b>|<cell|c>>|<row|<cell|b<rsup|2>>|<cell|c<rsup|2>>>>>>-<det|<tformat|<table|<row|<cell|a>|<cell|c>>|<row|<cell|a<rsup|2>>|<cell|c<rsup|2>>>>>>+<det|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|a<rsup|2>>|<cell|b<rsup|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|b*c<rsup|2>-b<rsup|2>*c-a*c<rsup|2>+a<rsup|2>*c+a*b<rsup|2>-a<rsup|2>*b>>|<row|<cell|>|<cell|=>|<cell|a<rsup|2>*<around*|(|c-b|)>+b<rsup|2>*<around*|(|a-c|)>+c<rsup|2>*<around*|(|a+b|)>>>>>
      </eqnarray*>
    </enumerate-alpha>
  </question>

  <\question>
    The matrices are independent if

    <\equation*>
      a*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|6>>>>>+b*<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|3>>|<row|<cell|-1>|<cell|1>>>>>+c*<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|0>|<cell|1>>>>>+d*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|4>>|<row|<cell|4>|<cell|9>>>>>=0
    </equation*>

    for some <math|a,b,c,d> that are not all zero. The system can be
    represented in the form

    <\equation*>
      <bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|3>|<cell|-1>|<cell|4>>|<row|<cell|3>|<cell|-1>|<cell|0>|<cell|4>>|<row|<cell|6>|<cell|1>|<cell|1>|<cell|9>>>>>*<bmatrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>|<row|<cell|d>>>>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
      .
    </equation*>

    Clearly the 4th row is the sum of the upper 3, so the rank of the
    coefficient matrix is smaller than the number of columns, and the system
    is linearly dependent. We could have also rearranged the matrix with
    transformations that do not affect the determinant to achieve a row of
    zeros. The determinant of a matrix with a row of zeros is zero, and a
    matrix with a zero determinant is linearly dependent.
  </question>

  <\question>
    Prove the following:

    <\enumerate-alpha>
      <item>If <math|A> is invertible and both <math|A> and <math|A<rsup|-1>>
      have integer entries then <math|det<around*|(|A|)>=\<pm\>1>.
    </enumerate-alpha>
  </question>
</body>

<initial|<\collection>
</collection>>