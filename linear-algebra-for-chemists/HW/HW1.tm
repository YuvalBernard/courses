<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  1>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    Assuming the vector space is over <math|\<bbb-R\>>:

    <\enumerate-alpha>
      <item><with|font-shape|italic|The set of real polynomials of degree
      less or equal to <math|n> with positive constant term.>

      This is not a vector space, as the set is not closed under
      multiplication by a negative scalar. There is also no identity element,
      because the zero constant term is not within the subset. Axioms that do
      not hold:

      <\itemize>
        <item>Inverse elements of vector addition.

        <item>Identity element of vector addition.
      </itemize>

      <item><with|font-shape|italic|The set of real polynomials of degree
      less or equal to <math|n>.>

      This is a vector space. Let <math|f<around*|(|x|)>>,
      <math|g<around*|(|x|)>> be both real polynomials of degree <math|n>,

      <\itemize>
        <item><math|f<around*|(|x|)>+g<around*|(|x|)>> is still a real
        polynomial of degree <math|n>.

        <item><math|\<alpha\>*f<around*|(|x|)>> where <math|\<alpha\>> is a
        (real) scalar is a real polynomial of degree <math|n>.
      </itemize>

      The set is closed under addition and multiplication. The set is a
      vector space.

      <item><with|font-shape|italic|The set of points in
      <math|\<bbb-R\><rsup|3>> lying on a plane passing through the origin.>

      This is a vector space. A plane that passes through the origin
      satisfies <math|<wide|n|\<vect\>>\<cdot\><wide|P|\<vect\>>=0>, where
      <math|<wide|n|\<vect\>>> is the normal to the plane and
      <math|<wide|P|\<vect\>>> is any point on the plane. Let
      <math|<wide|P|\<vect\>><rsub|1>,<wide|P|\<vect\>><rsub|2>> be vectors
      that represent points on the plane and let <math|a> be a scalar. We
      have:

      <\equation*>
        <wide|n|\<vect\>>\<cdot\><around*|(|<wide|P|\<vect\>><rsub|1>+<wide|P|\<vect\>><rsub|2>|)>=<wide|n|\<vect\>>\<cdot\><wide|P|\<vect\>><rsub|1>+<wide|n|\<vect\>>*\<cdot\><wide|P|\<vect\>><rsub|2>=0+0=0,
      </equation*>

      <\equation*>
        <wide|n|\<vect\>>\<cdot\><around*|(|a*<wide|P|\<vect\>><rsub|1>|)>=a*<wide|n|\<vect\>>\<cdot\><wide|P|\<vect\>><rsub|1>=a\<cdot\>0=0
        .
      </equation*>

      The set is closed under addition and multiplication. The set is a
      vector space.

      <item><with|font-shape|italic|The set of positive real numbers under
      addition <math|\<oplus\>> and multiplication by scalar <math|\<odot\>>
      defined:>

      <\equation*>
        x\<oplus\>y=x*y,<space|2em>\<alpha\>\<odot\>x=x<rsup|\<alpha\>> .
      </equation*>

      The set is a vector space. Let <math|x,y\<in\>\<bbb-R\><rsup|+>> and
      <math|a\<in\>\<bbb-R\>>.

      <\itemize>
        <item>The result of vector addition, <math|x*y>, is also a positive
        real number, as it is a product of positive real numbers.

        <item>The result of vector multiplication by scalar,
        <math|x<rsup|a>>, is also a positive real number, as any power of a
        positive real number is also a positive real number.
      </itemize>

      The set is closed under addition and multiplication. The set is a
      vector space.
    </enumerate-alpha>
  </question>

  <\question>
    \;

    <\enumerate-alpha>
      <item><with|font-shape|italic|<math|V=\<bbb-R\><rsup|n>>, W is the set
      of vectors in <math|V> whose coordinates are nonnegative.>

      <math|W> is not a subspace. Let <math|<wide|w|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>\<in\>W>
      s.t. <math|<wide|w|\<vect\>><rsub|1>=2*<wide|w|\<vect\>><rsub|2>>. The
      linear combination <math|<wide|w|\<vect\>><rsub|1>-2*<wide|w|\<vect\>><rsub|2>=<wide|0|\<vect\>>\<nin\>W>.

      <item><with|font-shape|italic|<math|V=\<bbb-R\><rsup|n>>, W is the set
      of vectors in V whose coordinates add up to 1.>

      <math|W> is not a subspace. The definition of each vector in
      <math|<wide|w|\<vect\>>\<in\>W> is

      <\equation*>
        <big|sum><rsub|i>w<rsub|i>=1 .
      </equation*>

      Let <math|<wide|w|\<vect\>><rsub|1>,<wide|w|\<vect\>><rsub|2>\<in\>W>
      s.t. <math|<wide|w|\<vect\>><rsub|1>=2*<wide|w|\<vect\>><rsub|2>>. The
      linear combination <math|<wide|w|\<vect\>><rsub|1>+<wide|w|\<vect\>><rsub|2>=3*<wide|w|\<vect\>><rsub|2>>
      is not in <math|W>, as

      <\equation*>
        <big|sum><rsub|i><around*|(|<wide|w|\<vect\>><rsub|1>+<wide|w|\<vect\>><rsub|2>|)>=3*<big|sum><rsub|i><wide|w|\<vect\>><rsub|2>=3\<gtr\>1
        .<rsub|>
      </equation*>

      <item><with|font-shape|italic|V is the space of square
      <math|n\<times\>n> matrices and W is the set of symmetric matrices in
      V.>

      <math|W> is a subspace. The matrix <math|A> is symmetric if for every
      <math|i,j> we have <math|a<rsub|j\<nocomma\>i>=a<rsub|i\<nocomma\>j>>.
      Let <math|A,B> be symmetric matrices in <math|W>, i.e.
      <math|a<rsub|j\<nocomma\>i>=a<rsub|i\<nocomma\>j>> and
      <math|b<rsub|j\<nocomma\>i>=b<rsub|i\<nocomma\>j>>.

      The matrix <math|C=A+B> satisfies <math|c<rsub|j\<nocomma\>i>=a<rsub|j\<nocomma\>i>+b<rsub|j\<nocomma\>i>=c<rsub|i\<nocomma\>j>=a<rsub|i\<nocomma\>j>+b<rsub|i\<nocomma\>j>>.
      Additionally, <math|C=\<alpha\>\<cdot\>A> satisfies
      <math|c<rsub|j\<nocomma\>i>=\<alpha\>*a<rsub|j\<nocomma\>i>=c<rsub|i\<nocomma\>j>=\<alpha\>*a<rsub|i\<nocomma\>j>>.
      The subset in closed under addition and multiplication by scalar.

      <item><with|font-shape|italic|V is the space of square
      <math|n\<times\>n> matrices and W is the set of matrices in V whose
      rows add up to zero.>

      <math|W> is a subspace. Each matrix <math|A<rsup|n\<times\>n>\<in\>W>
      satisfies:

      <\equation*>
        <big|sum><rsub|j=1><rsup|n>a<rsub|i\<nocomma\>j>=0,<space|1em>\<forall\>i\<in\>n
      </equation*>

      Let <math|A,B> both be matrices in <math|W>. The sum <math|A+B>
      satisfies:

      <\equation*>
        <big|sum><rsub|j=1><rsup|n><around*|(|a<rsub|i\<nocomma\>j>+b<rsub|i\<nocomma\>j>|)>=<big|sum><rsub|j=1><rsup|n>a<rsub|i\<nocomma\>j>+<big|sum><rsub|j=1><rsup|n>b<rsub|i\<nocomma\>j>=0+0=0,
      </equation*>

      and the multiplication of <math|A> by a scalar <math|\<alpha\>>
      satisfies:

      <\equation*>
        <big|sum><rsub|j=1><rsup|n>\<alpha\>*a<rsub|i\<nocomma\>j>=\<alpha\>*<big|sum><rsub|j=1><rsup|n>a<rsub|i\<nocomma\>j>=\<alpha\>\<cdot\>0=0
        .
      </equation*>

      The subset in closed under addition and multiplication by scalar.

      <item><with|font-shape|italic|V is the set of one-variabled real
      functions, and W is the set of polynomial functions of degree 2 in V.>

      The subset is not closed under addition. Let
      <math|f<around*|(|x|)>=x<rsup|2>+x> and let
      <math|g<around*|(|x|)>=-x<rsup|2>+x>.
      <math|f<around*|(|x|)>+g<around*|(|x|)>=2*x> is a polynomial of degree
      1, and is thus not in <math|W>.

      <item><with|font-shape|italic|<math|V=\<bbb-C\><rsup|n>>, as a vector
      space over <math|\<bbb-C\>>, <math|W=\<bbb-R\><rsup|n>>.>

      <math|W> is not a subspace of <math|V>, as it is not closed under
      multiplication by a scalar <math|\<alpha\>\<in\>\<bbb-C\>>.

      <item><with|font-shape|italic|<math|V=\<bbb-C\><rsup|n>>, as a vector
      space over <math|\<bbb-R\>>, <math|W=\<bbb-R\><rsup|n>>.>

      <math|W> is a subspace of <math|V>. Let
      <math|A,B\<in\>\<bbb-R\><rsup|n>>. These matrices satisfy:

      <\equation*>
        A+B\<in\>\<bbb-R\><rsup|n>,<space|2em>\<alpha\>*A\<in\>\<bbb-R\><rsup|n><space|1em>\<forall\>\<alpha\>\<in\>\<bbb-R\>.
      </equation*>

      <item><with|font-shape|italic|V is the set of one-variabled real
      continuous functions, and W is the set of real differentiable
      functions.>

      <math|W> is a subspace of <math|V>. All functions that are
      differentiable are also continuous (in the domain where they are
      differentiable). Additionally, the set of all real differentiable
      functions are closed under linear combinations.
    </enumerate-alpha>
  </question>

  <\question>
    \;

    The zero element <math|\<b-0\>> in a vector space <math|V> is defined
    such that for all <math|\<b-v\>\<in\>V>

    <\equation*>
      \<b-v\>+\<b-0\>=\<b-v\> .
    </equation*>

    Assume there are two distinct zero elements of the same vector space,
    <math|\<b-0\>> and <math|\<b-0\><rprime|'>>. By definition,

    <\equation*>
      \<b-v\>+\<b-0\>=\<b-v\>,
    </equation*>

    <\equation*>
      \<b-v\>+\<b-0\><rprime|'>=\<b-v\> .
    </equation*>

    By transitivity, we get

    <\equation*>
      \<b-v\>+\<b-0\>=\<b-v\>+\<b-0\><rprime|'> .
    </equation*>

    Subtract <math|\<b-v\>> from both sides of the equation to get

    <\equation*>
      \<b-0\>=\<b-0\><rprime|'> .
    </equation*>

    Contradiction! The zero element in a vector space is unique.
  </question>

  <\question>
    \;

    The additive inverse of an element <math|-\<b-v\>> in a vector space
    <math|V> satisfies, that, for all <math|\<b-v\>\<in\>V> there exists
    <math|-\<b-v\>> such that <math|\<b-v\>+<around*|(|-\<b-v\>|)>=\<b-0\>>.

    Assume there are two distinct inverse elements
    <math|-\<b-v\><rsub|>,-\<b-v\><rprime|'>> s.t.

    <\equation*>
      \<b-v\>+<around*|(|-\<b-v\>|)>=\<b-0\>,
    </equation*>

    <\equation*>
      \<b-v\>+<around*|(|-\<b-v\><rprime|'>|)>=\<b-0\> .
    </equation*>

    By transitivity, we get

    <\equation*>
      \<b-v\>+<around*|(|-\<b-v\>|)>=\<b-v\>+<around*|(|-\<b-v\><rprime|'>|)>
      .
    </equation*>

    Subtract <math|\<b-v\>> from both sides of the equation to get

    <\equation*>
      <around*|(|-\<b-v\>|)>=<around*|(|-\<b-v\><rprime|'>|)>.
    </equation*>

    Contradition! The inverse additive element of a vector space is unique.
  </question>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>