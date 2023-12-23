<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  2>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    <with|font-shape|italic|Show that the span of a set of vectors in a
    vector space is a subspace.>

    Recall the definition of span: let <math|S> be a set of vectors in a
    vector space <math|V>. The span of <math|S> is the intersection <math|W>
    of all subspaces of <math|V> which contain <math|S>.\ 

    Additionally, recall the theorem that a non-empty subset <math|W> of
    <math|V> is a subspace of <math|V> if and only if for each pair of
    vectors <math|\<alpha\>,\<beta\>> in <math|W> and each scalar <math|c> in
    the field over which <math|V> is defined, the vector
    <math|c*\<alpha\>+\<beta\>> is again in <math|W>.

    Proving that the span of <math|S> is a subspace can be reduced to proving
    that the intersection of a collection of subspaces of <math|V> is a
    subspace of <math|V>.

    Let <math|<around*|{|W<rsub|a>|}>> be a collection of subspaces of
    <math|V>, and let <math|W> be their intersection. Since each
    <math|W<rsub|a>> is a subspace, each contains the zero vector. Thus, the
    zero vector is in the intersection <math|W>, and <math|W> is non-empty.
    Let <math|v,w> be vectors in <math|W> and let <math|\<alpha\>> be a
    scalar. By definition of <math|W>, both <math|v> and <math|w> belong to
    each <math|W<rsub|\<alpha\>>>, and because each <math|W<rsub|a>> is a
    subspace, the vector <math|<around*|(|\<alpha\>*v+w|)>> is in every
    <math|W<rsub|a>>. Thus <math|<around*|(|\<alpha\>*v+w|)>> is again in
    <math|W>. Therefore, <math|W>, the span of set <math|S>, is a subspace of
    <math|V>.
  </question>

  <\question>
    <em|Check if the following sets of vectors span the subspace <math|W> of
    <math|\<bbb-R\><rsup|4>>, where <math|W> is the set of vectors whose
    coordinates add up to 0.>

    Here we use the theorem: the subspace spanned by a non-empty subset
    <math|S> of a vector space <math|V> is the set of all linear combinations
    of vectors in <math|S>.\ 

    The set <math|S> spans <math|W> if any <math|v\<in\>W> can be expressed
    as a linear combination of the vectors in <math|S>.\ 

    <\enumerate-alpha>
      <item>Given the set <math|S> containing
      <math|<around*|(|1,0,0,-1|)>,<around*|(|1,-1,0,0|)>,<around*|(|1,-1,1,-1|)>>,
      let <math|v=<around*|(|x,y,z,w|)>> be an arbitrary vector in <math|W>
      such that <math|x+y+z+w=0>. We search for a solution to:

      <\equation*>
        a*<around*|(|1,0,0,-1|)>+b*<around*|(|1,-1,0,0|)>+c*<around*|(|1,-1,1,-1|)>=<around*|(|x,y,z,w|)>,<space|1em><text|s.t.><space|1em>x+y+z+w=0
        .
      </equation*>

      This translates to

      <\eqnarray*>
        <tformat|<table|<row|<cell|a+b+c>|<cell|=>|<cell|x>>|<row|<cell|-b-c>|<cell|=>|<cell|y>>|<row|<cell|c>|<cell|=>|<cell|z>>|<row|<cell|-a-c>|<cell|=>|<cell|w>>>>
      </eqnarray*>

      If we sum the set of equations, we see that every choice of
      <math|a,b,c> satisfies <math|x+y+z+w=0>. <math|S> is thus a spanning
      set of <math|W>.

      <item>Given the set <math|S> containing
      <math|<around*|(|1,2,-4,1|)>,<around*|(|0,1,1,-2|)>>, we search for
      <math|a,b> such that\ 

      <\equation*>
        a*<around*|(|1,2,-4,1|)>+b*<around*|(|0,1,1,-2|)>=<around*|(|x,y,z,w|)>,<space|1em><space|1em><text|s.t.><space|1em>x+y+z+w=0
        .
      </equation*>

      The set of equations is

      <\eqnarray*>
        <tformat|<table|<row|<cell|a>|<cell|=>|<cell|x>>|<row|<cell|2*a+b>|<cell|=>|<cell|y>>|<row|<cell|-4*a+b>|<cell|=>|<cell|z>>|<row|<cell|a-2*b>|<cell|=>|<cell|w>>>>
      </eqnarray*>

      The condition <math|x+y+z+w=0> holds for every <math|a,b>. <math|S> is
      a spanning set.
    </enumerate-alpha>
  </question>

  <\question>
    <em|Which of the following vectors is an element of the subspace <math|W>
    where>

    <\equation*>
      W=span<around*|{|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>,<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|3>>>>>|}>
      in \<bbb-R\><rsup|3>:<space|2em>v=<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|2>>|<row|<cell|1>>>>>,<space|1em>w=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|1>>|<row|<cell|-18>>>>>
      .
    </equation*>

    A vector <math|u> is in the subspace <math|W> if and only if there exist
    scalars <math|c<rsub|1>,c<rsub|2>> such that

    <\with|par-mode|center>
      <\equation*>
        u=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|3>>>>>
        .
      </equation*>
    </with>

    <\enumerate>
      <item>Find <math|c<rsub|1>,c<rsub|2>> such that

      <\equation*>
        c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|3>>>>>=v=<bmatrix|<tformat|<table|<row|<cell|4>>|<row|<cell|2>>|<row|<cell|1>>>>>
        .
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|c<rsub|1>>|<cell|=>|<cell|4>>|<row|<cell|2*c<rsub|1>+c<rsub|2>>|<cell|=>|<cell|2\<rightarrow\>c<rsub|2>=2-2*c<rsub|1>=-6>>|<row|<cell|-c<rsub|1>+c<rsub|2>>|<cell|=>|<cell|1\<rightarrow\>c<rsub|2>=1+c<rsub|1>=5>>>>
      </eqnarray*>

      The system of equations has no solution. <math|v> is not in <math|W>.

      <item>Find <math|c<rsub|1>,c<rsub|2>> such that

      <\equation*>
        c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|-1>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|3>>>>>=w=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|1>>|<row|<cell|-18>>>>>
        .
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|c<rsub|1>>|<cell|=>|<cell|3>>|<row|<cell|2*c<rsub|1>+c<rsub|2>>|<cell|=>|<cell|1\<rightarrow\>c<rsub|2>=1-2*c<rsub|1>=-5>>|<row|<cell|-c<rsub|1>+3*c<rsub|2>>|<cell|=>|<cell|-18\<rightarrow\>c<rsub|2>=<frac|c<rsub|1>-18|3>=-5>>>>
      </eqnarray*>

      We found <math|<around*|(|c<rsub|1>,c<rsub|2>|)>=<around*|(|3,-5|)>>.
      The vector <math|w> is thus an element of the subspace <math|W>.
    </enumerate>
  </question>

  <\question>
    <em|Is the function <math|sin x> a linear combination of <math|cos x> and
    <math|\<mathe\><rsup|x>> in the space of continuous real functions over
    the real numbers?>

    No. <math|sin x> may only be written as a linear combination of <math|cos
    x> and <math|\<mathe\><rsup|x>> in the space of continuous real functions
    over the field of <strong|complex> numbers, as <math|sin x=\<mathi\>*cos
    x-\<mathi\>*\<mathe\><rsup|x>>. There are no real scalars
    <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> such that <math|sin
    x=\<alpha\>*cos x+\<beta\>*\<mathe\><rsup|x>>.
  </question>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>