<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  5>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    Write the system of equations in matrix form:

    <\equation*>
      A*<wide|c|\<vect\>>=0<space|1em>is<space|1em><bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>>>><bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>|<row|<cell|c<rsub|3>>>|<row|<cell|c<rsub|4>>>>>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
    </equation*>

    Perform Gaussian elimination on <math|A\<in\>\<bbb-R\><rsup|n*\<times\>n>>
    to check if <math|rank<around*|(|A|)>=n>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<rightarrow\>R<rsub|1>-R<rsub|2>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|1>\<leftrightarrow\>R<rsub|2>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|2>>>|<row|<cell|R<rsub|4>\<rightarrow\>R<rsub|4>-R<rsub|3>>>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
      .>>>>
    </eqnarray*>

    <math|rank<around*|(|A|)>=3\<less\>n=4>, which means that one vector is a
    linear combination of the others. The system is linearly dependent.
  </question>

  <\question>
    In the vector space of vectors of length 2 with entries of real-valued
    functions,

    <\enumerate-alpha>
      <item><math|v<rsub|1>=<around*|(|\<mathe\><rsup|-t>,2*\<mathe\><rsup|-t>|)>,v<rsub|2>=<around*|(|\<mathe\><rsup|-t>,\<mathe\><rsup|-t>|)>,v<rsub|3>=<around*|(|3\<mathe\><rsup|-t>,0|)>
      .>

      Perform Gaussian elimination on the system

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|\<mathe\><rsup|-t>>|<cell|2*\<mathe\><rsup|-t>>>|<row|<cell|\<mathe\><rsup|-t>>|<cell|\<mathe\><rsup|-t>>>|<row|<cell|3*\<mathe\><rsup|-t>>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>-R<rsub|2>-R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-3R<rsub|1>>>>>>><bmatrix|<tformat|<table|<row|<cell|\<mathe\><rsup|-t>>|<cell|2*\<mathe\><rsup|-t>>>|<row|<cell|0>|<cell|-\<mathe\><rsup|-t>>>|<row|<cell|0>|<cell|-6*\<mathe\><rsup|-t>>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|3>-6*R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|\<mathe\><rsup|-t>>|<cell|2*\<mathe\><rsup|-t>>>|<row|<cell|0>|<cell|-\<mathe\><rsup|-t>>>|<row|<cell|0>|<cell|0>>>>>
      </equation*>

      The system is linearly dependent. (We could have also claimed this
      based on the fact that the dimension of <math|\<bbb-F\><rsup|n>> is
      <math|n>.)

      <item><math|v<rsub|1>=<around*|(|2*sin t,sin
      t|)>,v<rsub|2>=<around*|(|sin t,2*sin t|)>>. Perform Gaussian
      elimination on the system

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|2*sin t>|<cell|sin
        t>>|<row|<cell|sin t>|<cell|2*sin
        t>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>-<frac|1|2>*R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|2*sin
        t>|<cell|sin t>>|<row|<cell|0>|<cell|<frac|3|2>*sin t>>>>>.
      </equation*>

      The rank of the coefficient matrix equals its number of columns.

      The system is linearly independent, because there are no
      <math|c<rsub|1>,c<rsub|2>> such that
      <math|c<rsub|1>*v<rsub|1><around*|(|t|)>+c<rsub|2>*v<rsub|2><around*|(|t|)>=<wide|0|\<vect\>>>
      for all <math|t>.

      <item><math|v<rsub|1>=<around*|(|\<mathe\><rsup|t>,t*\<mathe\><rsup|t>|)>,v<rsub|2>=<around*|(|1,t|)>>.
      We can see that, for <math|c<rsub|1>=\<mathe\><rsup|t>,c<rsub|2>=-1>

      <\equation*>
        c<rsub|1>*v<rsub|1>+c<rsub|2>*v<rsub|2>=<wide|0|\<vect\>>
      </equation*>

      These vectors are not linearly dependent, as there are no
      <em|constants> <math|c<rsub|1>,c<rsub|2>> such that

      <math|c<rsub|1>*v<rsub|1>+c<rsub|2>*v<rsub|2>=0> <em|for all <math|t>>;
      there is a different <math|c<rsub|1>> for each <math|t>.
    </enumerate-alpha>
  </question>

  <\question>
    Given <math|t<rsub|0>\<in\>\<bbb-R\>> as scalar and
    <math|v<rsub|1>=<around*|(|\<mathe\><rsup|t<rsub|0>>,t<rsub|0>*\<mathe\><rsup|t<rsub|0>>|)>,v<rsub|2>=<around*|(|1,t<rsub|0>|)>>
    two vectors in <math|\<bbb-R\><rsup|2>>, we show that for
    <math|c<rsub|1>=\<mathe\><rsup|-t<rsub|0>>,c<rsub|2>=-1>, the condition
    for linear independence,

    <\equation*>
      c<rsub|1>*v<rsub|1>+c<rsub|2>*v<rsub|2>=<wide|0|\<vect\>>,
    </equation*>

    \ is satisfied.

    <\eqnarray*>
      <tformat|<table|<row|<cell|c<rsub|1>*v<rsub|1>+c<rsub|2>*v<rsub|2>>|<cell|=>|<cell|\<mathe\><rsup|-t<rsub|0>>*<around*|(|\<mathe\><rsup|t<rsub|0>>,t<rsub|0>*\<mathe\><rsup|t<rsub|0>>|)>-<around*|(|1,t<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<mathe\><rsup|-t<rsub|0>>*\<mathe\><rsup|t<rsub|0>>,t<rsub|0>*\<mathe\><rsup|-t<rsub|0>>*\<mathe\><rsup|t<rsub|0>>|)>-<around*|(|1,t<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1,t<rsub|0>|)>-<around*|(|1,t<rsub|0>|)>=<around*|(|0,0|)>
      .>>>>
    </eqnarray*>
  </question>

  <\question>
    A basis for a space is a sequence of vectors having two properties at
    once:

    <\enumerate>
      <item>The vectors are linearly independent.

      <item>They span the space.
    </enumerate>

    <\enumerate-alpha>
      <item><math|U> is the set of square <math|n\<times\>n> real symmetric
      matrices.

      Let <math|E<rsub|i\<nocomma\>j>\<in\>\<bbb-R\><rsup|n*\<times\>n>> be a
      matrix such that its <math|i\<nocomma\>j<rsup|th>> entry is one and all
      other entries are zero, and let <math|A> be a symmetric matrix, such
      that <math|a<rsub|i\<nocomma\>j>=a<rsub|j\<nocomma\>i>>.

      Proposed basis for <math|U> is the set
      <math|S=<around*|{|E<rsub|i\<nocomma\>i>\|i=1,\<ldots\>,n|}>\<cup\><around*|{|E<rsub|i\<nocomma\>j>+E<rsub|j\<nocomma\>i>\|i,j=1,\<ldots\>,n<infix-and>i\<less\>j|}>>.
      We first show that the basis spans the set. <math|A> can be described
      completely via the upper triangular entries (<math|i\<leq\>j>):

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|a<rsub|11>>|<cell|a<rsub|12>>|<cell|\<cdots\>>|<cell|a<rsub|1\<nocomma\>n>>>|<row|<cell|a<rsub|12>>|<cell|a<rsub|22>>|<cell|\<cdots\>>|<cell|a<rsub|2\<nocomma\>n>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|a<rsub|1n>>|<cell|a<rsub|2\<nocomma\>n>>|<cell|\<cdots\>>|<cell|a<rsub|n\<nocomma\>n>>>>>>,
      </equation*>

      because of its symmetry. Note that there are
      <math|<frac|n*<around*|(|n+1|)>|2>> distinct elements in a symmetric
      matrix (<math|n> from the diagonal and
      <math|<around*|(|n<rsup|2>-n|)>/2> above the diagonal), which means
      that the basis dimension shall be <math|<frac|n*<around*|(|n+1|)>|2>>.

      <math|A> can be decomposed into the following:

      <\equation*>
        A=<big|sum><rsub|i=1><rsup|n>a<rsub|i\<nocomma\>i>*E<rsub|i\<nocomma\>i>+<big|sum><rsub|<tabular*|<tformat|<table|<row|<cell|i\<comma\>j=1>>|<row|<cell|i\<less\>j>>>>>><rsup|n>a<rsub|i\<nocomma\>j>*<around*|(|E<rsub|i\<nocomma\>j>+E<rsub|j\<nocomma\>i>|)>.
      </equation*>

      <math|A\<in\>U> is a linear combination of all vectors in <math|S>, so
      it is a spanning set. Because the number of vectors in <math|S> matches
      the basis dimension, <math|S> is also linearly independent.

      <item><math|V> is the set of square <math|n\<times\>n> real matrices
      whose rows add up to zero.

      A general matrix <math|A<rsup|n\<times\>n>\<in\>V> has the form:

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|a<rsub|11>>|<cell|a<rsub|21>>|<cell|\<cdots\>>|<cell|a<rsub|n1>>>|<row|<cell|a<rsub|12>>|<cell|a<rsub|22>>|<cell|>|<cell|a<rsub|n2>>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|-<big|sum><rsub|j=1><rsup|n-1>a<rsub|1j>>|<cell|-<big|sum><rsub|j=1><rsup|n-1>a<rsub|2j>>|<cell|>|<cell|-<big|sum><rsub|j=1><rsup|n-1>a<rsub|n\<nocomma\>j>>>>>>
        .
      </equation*>

      We can see that all elements in the <math|n<rsup|th>> row are linearly
      dependent on the elements in their respective columns. The basis
      dimension is therefore <math|n<rsup|2>-n> (total number of elements in
      a square matrix minus a number of elements in a row).

      Take out the scalars to get a spanning set and check linear
      independence to get a basis.

      <\eqnarray*>
        <tformat|<table|<row|<cell|A>|<cell|=>|<cell|a<rsub|11>*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|\<ddots\>|<cell|0>>|<row|<cell|-1>|<cell|0>|0|<cell|0>>>>>+a<rsub|21>*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|\<ddots\>|<cell|0>>|<row|<cell|-1>|<cell|0>|0|<cell|0>>>>>+\<cdots\>+a<rsub|<around*|(|n-1|)>1><bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|1>|<cell|\<vdots\>>|\<ddots\>|<cell|0>>|<row|<cell|-1>|<cell|0>|0|<cell|0>>>>>>>|<row|<cell|>|<cell|+>|<cell|a<rsub|12>*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|\<ddots\>|<cell|0>>|<row|<cell|0>|<cell|-1>|0|<cell|0>>>>>+a<rsub|22>*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|\<ddots\>|<cell|0>>|<row|<cell|0>|<cell|-1>|0|<cell|0>>>>>+\<cdots\>+a<rsub|<around*|(|n-1|)>2>*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|\<vdots\>>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|1>|\<ddots\>|<cell|0>>|<row|<cell|0>|<cell|-1>|0|<cell|0>>>>>>>|<row|<cell|>|<cell|+>|<cell|a<rsub|1\<nocomma\>n>*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|0>|\<ddots\>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|0>|0|<cell|-1>>>>>+a<rsub|2n>*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|1>>|<row|<cell|\<vdots\>>|<cell|0>|\<ddots\>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|0>|0|<cell|-1>>>>>+\<cdots\>+a<rsub|<around*|(|n-1|)>n>*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|\<vdots\>>>|<row|<cell|\<vdots\>>|<cell|0>|\<ddots\>|<cell|1>>|<row|<cell|0>|<cell|0>|0|<cell|-1>>>>>>>>>
      </eqnarray*>

      Let <math|B<rsub|i\<nocomma\>j>\<in\>\<bbb-R\><rsup|n\<times\>n>> be a
      matrix whose <math|i\<nocomma\>j<rsup|th>> entry is 1 and its
      <math|i\<nocomma\>n<rsup|th>> entry is <math|-1>. The basis is

      <\equation*>
        S=<around*|{|B<rsub|i\<nocomma\>j>\|i=1,\<ldots\>,n-1<infix-and>j=1,\<ldots\>,n|}>
        .
      </equation*>

      As shown above, <math|S> is a spanning set:
      <math|A=<big|sum><rsub|i=1><rsup|n-1><big|sum><rsub|j=1><rsup|n>B<rsub|i\<nocomma\>j>>.
      The set <math|S> also contains <math|n<rsup|2>-n> elements, so its
      vectors are linearly independent.

      <item><math|W> is the set of real polynomial functions.

      Every polynomial can be written as the sum:

      <\equation*>
        a<rsub|0>+a<rsub|1>*x+a<rsub|2>*x<rsup|2>+\<cdots\>+a<rsub|n>*x<rsup|n>,<space|2em>a<rsub|i>\<in\>\<bbb-R\>,<space|1em>n\<in\>\<bbb-N\>,
      </equation*>

      which is spanned by the monomial set:

      <\equation*>
        S=<around*|{|1,x,x<rsup|2>,\<ldots\>,x<rsup|n>|}> ,
      </equation*>

      whose dimension is <math|n+1>. The set is linearly independent: each
      monomial can be expressed as a vector of order <math|n+1>; for example

      <\eqnarray*>
        <tformat|<table|<row|<cell|1>|<cell|\<leftrightarrow\>>|<cell|<around*|[|1,0,0,\<ldots\>,0|]>>>|<row|<cell|x>|<cell|\<leftrightarrow\>>|<cell|<around*|[|0,1,0,\<ldots\>,0|]>>>|<row|<cell|x<rsup|2>>|<cell|\<leftrightarrow\>>|<cell|<around*|[|0,0,1,\<ldots\>,0|]>>>|<row|<cell|x<rsup|n>>|<cell|\<leftrightarrow\>>|<cell|<around*|[|0,0,0,\<ldots\>,1|]>
        .>>>>
      </eqnarray*>

      To check for linear independence, form a matrix from the vectors to get

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|1>>>>>
        .
      </equation*>

      The resulting matrix is in canonical form and has a full rank, which
      means that the set is linearly independent. The set spans the space and
      is linearly independent. It is therefore a basis.

      <item><math|\<bbb-C\><rsup|n>> as a vector space over <math|\<bbb-R\>>.

      Let

      <\equation*>
        e<rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>,e<rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>,\<ldots\>,e<rsub|n>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>|<row|<cell|1>>>>>
        .
      </equation*>

      Thet set <math|S=<around*|{|e<rsub|1>,\<mathi\>*e<rsub|1>,e<rsub|2>,\<mathi\>*e<rsub|2>,\<ldots\>,e<rsub|n>,\<mathi\>*e<rsub|n>|}>>
      is a basis for the vector space. A generic vector in
      <math|\<bbb-C\><rsup|n>> is <math|<around*|(|a<rsub|1>+\<mathi\>*b<rsub|1>,a<rsub|2>+\<mathi\>*b<rsub|2>,\<ldots\>,a<rsub|n>+\<mathi\>*b<rsub|n>|)>>
      where <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>>,
      <math|i=1,\<ldots\>,n>.<math|> The aforementioned vector can be written
      as a linear combination of the vectors in <math|S>:

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|a<rsub|1>+\<mathi\>*b<rsub|1>>>|<row|<cell|a<rsub|2>+\<mathi\>*b<rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|a<rsub|n>+\<mathi\>*b<rsub|n>>>>>>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|1>>>|<row|<cell|a<rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|a<rsub|n>>>>>>+\<mathi\>*<bmatrix|<tformat|<table|<row|<cell|*b<rsub|1>>>|<row|<cell|*b<rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|*b<rsub|n>>>>>>=a<rsub|1>*e<rsub|1>+a<rsub|2>*e<rsub|2>+\<cdots\>+a<rsub|n>*e<rsub|n>+b<rsub|1>**\<mathi\>*e<rsub|1>+b<rsub|2>*\<mathi\>*e<rsub|2>+\<cdots\>+b<rsub|n>*\<mathi\>*e<rsub|n>
        .*
      </equation*>

      so <math|S> is a spanning set. The vectors in <math|S> are also
      linearly independent. Put the vectors in <math|S> as row vectors of a
      matrix and perform Gaussian elimination:

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|e<rsub|1>>>|<row|<cell|e<rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|e<rsub|n>>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|\<cdots\>>|<cell|0>>|<row|<cell|\<vdots\>>|<cell|0>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|0>|<cell|0>|<cell|\<cdots\>>|<cell|1>>>>>
      </equation*>

      The matrix is in canonical form so its rows are linearly independent.
      Furthermore, for each <math|j=1,\<ldots\>,n>, <math|e<rsub|j>> and
      <math|\<mathi\>*e<rsub|j>> are linearly independent over
      <math|\<bbb-R\>>. The set <math|S> forms a basis.
    </enumerate-alpha>
  </question>

  <\question>
    \;

    <\enumerate-alpha>
      <item>The subspace of upper triangualar <math|3\<times\>3> real
      matrices.

      A generic matrix in the space is

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|a>|<cell|d>|<cell|e>>|<row|<cell|0>|<cell|b>|<cell|f>>|<row|<cell|0>|<cell|0>|<cell|c>>>>>
        .
      </equation*>

      <math|A> can be written as the sum

      <\equation*>
        A=a*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>+b**<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>+c**<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>+d**<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>+e**<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>+f**<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
      </equation*>

      The set

      <\equation*>
        S=<around*|{|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>,**<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>,*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>,*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>|}>
      </equation*>

      is a spanning set. Additionally, the vectors in the set are
      independent. Flatten each matrix to a <math|\<bbb-R\><rsup|9>> row
      vector, and perform Gaussian elimination on the matrix built from the
      vectors.

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|0|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|swapping<space|1em>of<space|1em>rows><bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
        .
      </equation*>

      The matrix in row echelon form has no rows of all zeros, so its rows
      are independent. The set <math|S> is a basis, and its dimension is 6.

      <item>The subspace of real <math|2\<times\>2> matrices in which the sum
      of the elements on the main diagonal is zero.

      A generic vector in the subspace is

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|c>|<cell|-a>>>>>
        .
      </equation*>

      <math|A> can be written as the sum

      <\equation*>
        A=a*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>>>>>+b*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>+c*<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>
        .
      </equation*>

      The set

      <\equation*>
        S=<around*|{|<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>|}>
      </equation*>

      is a spanning set. The vectors in <math|S> are also linearly
      independent. Flatten the matrices to <math|\<bbb-R\><rsup|4>> row
      vectors, and perform Gaussian elimination on the matrix built from the
      vectors.

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>>>>
        .
      </equation*>

      The matrix is in row echelon form and has no zero rows. Its rows are
      therefore linearly independent. The set <math|S> is a basis, and its
      dimension is 3.
    </enumerate-alpha>
  </question>

  <\question>
    The system can be expressed in matrix form, where
    <math|<wide|x|\<vect\>>\<in\>\<bbb-R\><rsup|5>>,
    <math|<wide|y|\<vect\>>\<in\>\<bbb-R\><rsup|3>>, and
    <math|W\<in\>R<rsup|3\<times\>5>>:

    <\equation*>
      W*<wide|x|\<vect\>>=<wide|y|\<vect\>> .
    </equation*>

    <\enumerate-alpha>
      <item>The output, <math|<wide|y|\<vect\>>,> is a linear combination of
      the columns of <math|W> weighted by the coordinates of
      <math|<wide|x|\<vect\>>>. This means that <math|<wide|y|\<vect\>>> is
      spanned by the columns of <math|W>, so <math|<wide|y|\<vect\>>> resides
      in the <with|font-series|bold|column space> of <math|W>.

      <item>We need to find a basis for the column space of <math|W>. Perform
      Gaussian elimination on <math|W>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<bmatrix|<tformat|<table|<row|<cell|7>|<cell|1>|<cell|6>|<cell|5>|<cell|3>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|6>|<cell|4>|<cell|2>|<cell|-2>|<cell|-10>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>7R<rsub|3>-6R<rsub|1>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|7>|<cell|1>|<cell|6>|<cell|5>|<cell|3>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|0>|<cell|22>|<cell|-22>|<cell|-44>|<cell|-88>>>>>>>|<row|<cell|>|<cell|<long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>+22R<rsub|2>>>>>>>>|<cell|<bmatrix|<tformat|<table|<row|<cell|7>|<cell|1>|<cell|6>|<cell|5>|<cell|3>>|<row|<cell|0>|<cell|-1>|<cell|1>|<cell|2>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>
        .>>>>
      </eqnarray*>

      The matrix is in row echelon form. A possible basis for the column
      space of <math|W> is

      <\equation*>
        <around*|{|<bmatrix|<tformat|<table|<row|<cell|7>>|<row|<cell|1>>|<row|<cell|6>>|<row|<cell|5>>|<row|<cell|3>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|4>>>>>|}>
        .
      </equation*>

      <item>The fundumental space of <math|W*<wide|x|\<vect\>>=<wide|0|\<vect\>>>
      is the <with|font-series|bold|nullspace> of <math|W>, and its dimension
      is <math|n-r>. In this case, <math|n=5> and <math|r=2> (found from b.)
      The dimension of the nullspace of <math|W> is 3.

      <\equation*>
        \ 
      </equation*>
    </enumerate-alpha>
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>