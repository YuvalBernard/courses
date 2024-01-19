<TeXmacs|2.1.2>

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

      <\proof>
        The relation between <math|det <around*|(|A|)>> and <math|det
        <around*|(|A<rsup|-1>|)>> is

        <\equation*>
          det <around*|(|A<rsup|-1>|)>=<frac|1|det <around*|(|A|)>> .
        </equation*>

        The matrices <math|A>, <math|A<rsup|-1>> contain only integers, which
        means that the sums and products of their elements are also integers.
        The formula for the determinant of a matrix involves sums of products
        of certain entries of the matrix. By this definition, the determinant
        of a matrix containing only integers must also be an integer.

        From the definition of <math|det <around*|(|A<rsup|-1>|)>>, we see
        that it is a <em|fraction>, but we established that it must also be
        an integer. The only fractions that are also integers are
        <math|\<pm\>1>, so <math|det <around*|(|A|)>> must be <math|\<pm\>1>.
        </proof>

      <item>If <math|A> is invertible and has integer entries and <math|det
      <around*|(|A|)>=\<pm\>1>, then <math|A<rsup|-1>> has integer entries.

      <\proof>
        The formula for the inverse matrix <math|A<rsup|-1>> is given by the
        adjugate matrix of <math|A>:

        <\equation*>
          A<rsup|-1>=<frac|1|det <around*|(|A|)>>*adj <around*|(|A|)>,
        </equation*>

        where

        <\equation*>
          <around*|(|adj <around*|(|A|)>|)><rsub|i\<nocomma\>j>=<around*|(|-1|)><rsup|i+j>*A<rsub|j\<nocomma\>i>
          .
        </equation*>

        <math|A> has integer entries, so each <math|A<rsub|j\<nocomma\>i>> is
        also an integer, and <math|adj <around*|(|A|)>> is a matrix with
        integer entries. Using <math|det <around*|(|A|)>=\<pm\>1>, we have

        <\equation*>
          A<rsup|-1>=\<pm\> adj <around*|(|A|)>,
        </equation*>

        which means that <math|A<rsup|-1>> is a matrix with integer entries.
      </proof>

      <item>If <math|A*A<rsup|T>=I> then <math|det <around*|(|A|)>=\<pm\>1>.

      <\proof>
        By the properties of the determinant, <math|A<rsup|T>> satisfies

        <\equation*>
          det <around*|(|A<rsup|T>|)>=det <around*|(|A|)> .
        </equation*>

        Additionally,\ 

        <\equation*>
          det <around*|(|A*A<rsup|T>|)>=det <around*|(|A|)>*det
          <around*|(|A<rsup|T>|)>,
        </equation*>

        and

        <\equation*>
          det <around*|(|I|)>=1 .
        </equation*>

        Therefore,

        <\equation*>
          det <around*|(|A*A<rsup|T>|)>=<around*|(|det
          <around*|(|A|)>|)><rsup|2>=det <around*|(|I|)>=1,
        </equation*>

        so

        <\equation*>
          det <around*|(|A|)>=\<pm\><sqrt|1>=\<pm\>1 .
        </equation*>
      </proof>

      <item>If <math|A<rsup|2>=A> and <math|A\<neq\>I> then <math|det
      <around*|(|A|)>=0>.

      <\proof>
        If

        <\equation*>
          A<rsup|2>=A*A=A ,
        </equation*>

        then

        <\equation*>
          det <around*|(|A<rsup|2>|)>=det <around*|(|A|)>*det
          <around*|(|A|)>=det <around*|(|A|)> .
        </equation*>

        The product of a number by itself is itself again if and only if the
        number equals one or zero. The determinant of a matrix <math|A>
        equals one only for <math|A=I>, but we are given <math|A\<neq\>I>,
        then <math|det <around*|(|A|)>> must be zero.
      </proof>

      <item>If <math|A> is upper triangular then <math|det <around*|(|A|)>>
      is the product on the elements on the main diagonal.

      <\proof>
        Let <math|A> be an upper triangular
        <math|\<bbb-F\><rsup|n\<times\>n>> matrix. Then

        <\equation*>
          A=<bmatrix|<tformat|<table|<row|<cell|a<rsub|11>>|<cell|a<rsub|12>>|<cell|\<cdots\>>|<cell|a<rsub|1n>>>|<row|<cell|0>|<cell|a<rsub|22>>|<cell|\<cdots\>>|<cell|a<rsub|2n>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<cdots\>>|<cell|0>|<cell|a<rsub|n\<nocomma\>n>>>>>>
          .
        </equation*>

        Always calculating the next minor via the leftmost column:

        <\eqnarray*>
          <tformat|<table|<row|<cell|det <around*|(|A|)>>|<cell|=>|<cell|a<rsub|11>\<times\>det
          <bmatrix|<tformat|<table|<row|<cell|a<rsub|22>>|<cell|a<rsub|23>>|<cell|\<cdots\>>|<cell|a<rsub|2n>>>|<row|<cell|0>|<cell|a<rsub|33>>|<cell|\<cdots\>>|<cell|a<rsub|3n>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<ddots\><rsub|>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<cdots\>>|<cell|0>|<cell|a<rsub|n\<nocomma\>n>>>>>>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|11>\<times\>a<rsub|22>\<times\>det
          <bmatrix|<tformat|<table|<row|<cell|a<rsub|33>>|<cell|a<rsub|34>>|<cell|\<cdots\>>|<cell|a<rsub|3n>>>|<row|<cell|0>|<cell|a<rsub|44>>|<cell|\<cdots\>>|<cell|a<rsub|4n>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|\<cdots\>>|<cell|0>|<cell|a<rsub|n\<nocomma\>n>>>>>>>>|<row|<cell|>|<cell|=>|<cell|\<ldots\>=<around*|(|<big|prod><rsub|i=1><rsup|n-2>a<rsub|i\<nocomma\>i>|)>\<times\>*det
          <bmatrix|<tformat|<table|<row|<cell|a<rsub|<around*|(|n-1|)><around*|(|n-1|)>>>|<cell|a<rsub|<around*|(|n-1|)>n>>>|<row|<cell|0>|<cell|a<rsub|n\<nocomma\>n>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n-2>a<rsub|i\<nocomma\>i>|)>\<times\>a<rsub|<around*|(|n-1|)><around*|(|n-1|)>>\<times\>a<rsub|n\<nocomma\>n>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n>a<rsub|i\<nocomma\>i>
          .>>>>
        </eqnarray*>
      </proof>

      <item>If the sum of the entries in every row of <math|A> is zero then
      <math|det <around*|(|A|)>=0>.

      <\proof>
        As shown in assignment 5, the matrix whose rows add up to zero is
        linearly dependent, and the determinant of a linearly dependent
        matrix is zero.
      </proof>
    </enumerate-alpha>
  </question>
</body>

<initial|<\collection>
</collection>>