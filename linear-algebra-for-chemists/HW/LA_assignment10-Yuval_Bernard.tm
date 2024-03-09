<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Linear Algebra for Chemists \V Assignment
  10>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    ID. 211860754
  </author-affiliation>>>|<doc-date|<date>>>

  <\question>
    <math|T:V\<rightarrow\>U> over <math|F> is a linear transformation if for
    any <math|v,u\<in\>V> and <math|a\<in\>F>\ 

    <\equation*>
      T<around*|(|a*v+u|)>=a*T<around*|(|v|)>+T<around*|(|u|)> .
    </equation*>

    <\enumerate-alpha>
      <item>Check which of the following are linear transfrormations.

      <\enumerate>
        <item><math|T:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|3>>,<space|1em><math|T<around*|(|x,y,z|)>=<around*|(|x+y-2*z,x+y,2*z|)>>.

        Take two vectors in <math|\<bbb-R\><rsup|3>>,
        <math|v=<around*|(|x,y,z|)>> and <math|u=<around*|(|a,b,c|)>>, and
        take a scalar <math|\<alpha\>\<in\>\<bbb-R\>>.

        <\eqnarray*>
          <tformat|<table|<row|<cell|T<around*|(|\<alpha\>**v+u|)>>|<cell|=>|<cell|T<around*|(|\<alpha\>*x+a,\<alpha\>*y+b,\<alpha\>*z+c|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>*x+a+\<alpha\>*y+b-2*\<alpha\>*z-2*c,\<alpha\>*x+a+\<alpha\>*y+b,2*\<alpha\>*z+2*c|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|(|x+y-2*z,x+y,2*z|)>+<around*|(|a+b-2*c,a+b,2*c|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*T<around*|(|v|)>+T<around*|(|u|)>
          .>>>>
        </eqnarray*>

        <math|T> is a linear transformation.

        <item><math|T:\<bbb-R\><rsup|2>\<rightarrow\>\<bbb-R\><rsup|2>>,<space|1em><math|T<around*|(|x,y|)>=<around*|(|x+y+1,y|)>>.

        Take two vectors in <math|\<bbb-R\><rsup|2>>,
        <math|v=<around*|(|x,y|)>> and <math|u=<around*|(|a,b|)>>, and take a
        scalar <math|\<alpha\>\<in\>\<bbb-R\>>.

        <\eqnarray*>
          <tformat|<table|<row|<cell|T<around*|(|\<alpha\>*v+u|)>>|<cell|=>|<cell|T<around*|(|\<alpha\>*x+a,\<alpha\>*y+b|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>*x+a+\<alpha\>*y+b+1,\<alpha\>*y+b|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|(|x+y,y|)>+<around*|(|a+b+1,b|)>>>|<row|<cell|>|<cell|\<neq\>>|<cell|\<alpha\>*T<around*|(|v|)>+T<around*|(|u|)>
          .>>>>
        </eqnarray*>

        <math|T> is not a linear transformation.

        <item><math|T:\<bbb-R\><rsup|n>\<rightarrow\>R<rsup|n>>,<space|1em><math|T<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n>|)>=<around*|(|0,x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n-1>|)>>.

        Take two vectors in <math|\<bbb-R\><rsup|n>>,
        <math|v=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>,u=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>>
        and a scalar <math|\<alpha\>\<in\>\<bbb-R\>>.

        <\eqnarray*>
          <tformat|<table|<row|<cell|T<around*|(|\<alpha\>*v+u|)>>|<cell|=>|<cell|<around*|(|\<alpha\>*x<rsub|1>+y<rsub|1>,\<alpha\>*x<rsub|2>+y<rsub|2>,\<ldots\>,\<alpha\>*x<rsub|n>+y<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0,\<alpha\>*x<rsub|1>+y<rsub|1>,\<alpha\>*x<rsub|2>+y<rsub|2>,\<ldots\>,\<alpha\>*x<rsub|n-1>+y<rsub|n-1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|(|0,x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n-1>|)>+<around*|(|0,y<rsub|1>,y<rsub|2>,\<ldots\>,y<rsub|n-1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*T<around*|(|v|)>+T<around*|(|u|)>
          .>>>>
        </eqnarray*>

        <math|T> is a linear transformation.

        <item><math|T:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\>>,<space|1em><math|T<around*|(|x,y,z|)>=5*x-2*z>.

        Take two vectors in <math|\<bbb-R\><rsup|3>>,
        <math|v=<around*|(|x,y,z|)>,u=<around*|(|a,b,c|)>>, and a scalar
        <math|\<alpha\>\<in\>\<bbb-R\>>.

        <\eqnarray*>
          <tformat|<table|<row|<cell|T<around*|(|a*v+u|)>>|<cell|=>|<cell|T<around*|(|\<alpha\>*x+a,\<alpha\>*y+b,\<alpha\>*z+c|)>>>|<row|<cell|>|<cell|=>|<cell|5*\<alpha\>*x+5*a-2*\<alpha\>*z-2*c>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|(|5*x-2*z|)>+<around*|(|5*a-2*c|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*T<around*|(|v|)>+T*<around*|(|u|)>
          .>>>>
        </eqnarray*>

        <math|T> is a linear transformation.

        <item><math|T:\<bbb-R\><rsup|3>\<rightarrow\><text|vector space of
        real-valued functions <math|f<around*|(|t|)>>,>
        T<around*|(|x,y,z|)>=x*\<mathe\><rsup|t>+<around*|(|y-z|)>*sin t>.

        Take two vectors in <math|\<bbb-R\><rsup|3>>,
        <math|v=<around*|(|x,y,z|)>,u=<around*|(|a,b,c|)>>, and a scalar
        <math|\<alpha\>\<in\>\<bbb-R\>>.

        <\eqnarray*>
          <tformat|<table|<row|<cell|T<around*|(|a*v+u|)>>|<cell|=>|<cell|T<around*|(|\<alpha\>*x+a,\<alpha\>*y+b,\<alpha\>*z+c|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>*x+a|)>*\<mathe\><rsup|t>+<around*|(|\<alpha\>*y+b-\<alpha\>*z-c|)>*sin
          t>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*<around*|(|x*\<mathe\><rsup|t>+<around*|[|y-z|]>*sin
          t|)>+<around*|(|a*\<mathe\><rsup|t>+<around*|[|b-c|]>*sin
          t|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>*T<around*|(|v|)>+T<around*|(|u|)>
          .>>>>
        </eqnarray*>

        <math|T> is a linear transformation.

        <item><math|T:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|2>>,<space|1em><math|T<around*|(|x,y,z|)>=<around*|(|x+y,x*y|)>>.

        Take two vectors in <math|\<bbb-R\><rsup|3>>,
        <math|v=<around*|(|x,y,z|)>,u=<around*|(|a,b,c|)>>, and a scalar
        <math|\<alpha\>\<in\>\<bbb-R\>>.
      </enumerate>

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|T<around*|(|a*v+u|)>>|<cell|=>|<cell|T<around*|(|\<alpha\>*x+a,\<alpha\>*y+b,\<alpha\>*z+c|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>*x+a+\<alpha\>*y+b,<around*|[|\<alpha\>*x+a|]>*<around*|[|\<alpha\>*y+b|]>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>*x+a+\<alpha\>*y+b,\<alpha\><rsup|2>*x*y+\<alpha\>*x*b+\<alpha\>*a*y+a*b|)>>>|<row|<cell|>|<cell|\<neq\>>|<cell|\<alpha\>*<around*|(|x+y,x*y|)>+<around*|(|a+b,a*b|)>=\<alpha\>*T<around*|(|v|)>+T<around*|(|u|)>
        .>>>>>
      </equation*>

      <math|T> is not a linear transformation.

      <item>Given <math|T:V\<rightarrow\>U> over <math|F>, <math|Ker
      T=<around*|{|v\<in\>V\|T<around*|(|v|)>=0|}>> and <math|Im
      T=<around*|{|u\<in\>U\|\<exists\>v\<in\>V,T<around*|(|v|)>=u|}>>.

      <\enumerate-numeric>
        <item><math|T:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|3>>,<space|1em><math|T<around*|(|x,y,z|)>=<around*|(|x+y-2*z,x+y,2*z|)>>.

        for <math|v=<around*|(|x,y,z|)>>, <math|Ker T> must satisfy

        <\equation*>
          <choice|<tformat|<table|<row|<cell|x+y-2*z=0>>|<row|<cell|x+y=0>>|<row|<cell|2*z=0>>>>>\<rightarrow\><choice|<tformat|<table|<row|<cell|z=0>>|<row|<cell|y=-x>>>>>
          .
        </equation*>

        A basis for <math|Ker T> is <math|<around*|{|<around*|(|1,-1,0|)>|}>>.

        A general vector in <math|T<around*|(|x,y,z|)>> can be decomposed
        into

        <\equation*>
          <around*|(|x+y-2*z,x+y,2*z|)>=x*<around*|(|1,1,0|)>+y*<around*|(|1,1,0|)>+z*<around*|(|-2,0,2|)>
          .
        </equation*>

        A basis for <math|Im T> is <math|<around*|{|<around*|(|1,1,0|)>,<around*|(|-2,0,2|)>|}>>.

        <item><math|T:\<bbb-R\><rsup|n>\<rightarrow\>R<rsup|n>>,<space|1em><math|T<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n>|)>=<around*|(|0,x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n-1>|)>>.

        It is clear from the definition of <math|T> that for
        <math|v=<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n>|)>>,
        <math|Ker T> satisfies

        <\equation*>
          <around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n-1>|)>=0,<space|1em>x<rsub|n>\<in\>\<bbb-R\>
          .
        </equation*>

        Therefore, a basis for <math|Ker T> is
        <around*|{|<math|<around*|(|0,0,\<ldots\>,1|)>>|}>.

        A general vector in <math|T<around*|(|x,y,z|)>> can be written as

        <\equation*>
          <around*|(|0,x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n-1>|)>=<around*|(|0,0,\<ldots\>,0|)>+x<rsub|1>*<around*|(|0,1,0,\<ldots\>,0|)>+\<cdots\>+x<rsub|n-1>*<around*|(|0,0,\<ldots\>,0,1|)>
          .
        </equation*>

        A basis for <math|Im T> is <math|<around*|{|<around*|(|0,1,0,\<ldots\>,0|)>,<around*|(|0,0,1,0,\<ldots\>,0|)>,\<ldots\>,<around*|(|0,0,\<ldots\>,0,1|)>|}>>

        <item><math|T:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\>>,<space|1em><math|T<around*|(|x,y,z|)>=5*x-2*z>.

        <math|Ker T> requires that <math|5*x=2*z\<longrightarrow\>z=<frac|5|2>*x>
        (<math|y> is free). A basis for <math|Ker T> is
        <math|<around*|{|<around*|(|2,0,5|)>,<around*|(|0,1,0|)>|}>>.

        Given <math|T:V\<rightarrow\>U> over <math|F>, if
        <math|<around*|{|v<rsub|1>,v<rsub|2>,\<ldots\>,v<rsub|n>|}>> span
        <math|V> then <math|<around*|{|T<around*|(|v<rsub|1>|)>,T<around*|(|v<rsub|2>|)>,\<ldots\>,T<around*|(|v<rsub|n>|)>|}>>
        span <math|Im T>. Take a minimal basis for <math|\<bbb-R\><rsup|3>>
        and apply <math|T> over its elements.

        <\eqnarray*>
          <tformat|<table|<row|<cell|T<around*|(|1,0,0|)>>|<cell|=>|<cell|5>>|<row|<cell|T<around*|(|0,1,0|)>>|<cell|=>|<cell|0>>|<row|<cell|T<around*|(|0,0,1|)>>|<cell|=>|<cell|-2
          .>>>>
        </eqnarray*>

        The first and third vectors are proportional. A basis for <math|Im T>
        is <math|<around*|{|1|}>>.

        <item><math|T:\<bbb-R\><rsup|3>\<rightarrow\><text|vector space of
        real-valued functions <math|f<around*|(|t|)>>,>
        T<around*|(|x,y,z|)>=x*\<mathe\><rsup|t>+<around*|(|y-z|)>*sin t>.

        <math|Ker T> requires <math|x=0> and <math|y=z>. A basis for
        <math|Ker T> is <math|<around*|{|<around*|(|0,1,1|)>|}>>.

        Take a minimal basis for <math|\<bbb-R\><rsup|3>> and apply <math|T>
        over its elements.

        <\eqnarray*>
          <tformat|<table|<row|<cell|T<around*|(|1,0,0|)>>|<cell|=>|<cell|\<mathe\><rsup|t>>>|<row|<cell|T<around*|(|0,1,0|)>>|<cell|=>|<cell|sin
          t>>|<row|<cell|T<around*|(|0,0,1|)>>|<cell|=>|<cell|-sin t .>>>>
        </eqnarray*>

        The second and third vectors are proportional. A basis for <math|Im
        T> is <math|<around*|{|\<mathe\><rsup|t>,sin t|}>>.
      </enumerate-numeric>
    </enumerate-alpha>
  </question>

  <\question>
    Let <math|T:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|3>> s.t.

    <\equation*>
      T<around*|(|<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|)>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|2>>>>>,<space|1em>T<around*|(|<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>=<bmatrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|2>>|<row|<cell|0>>>>>,<space|1em>T<around*|(|<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-4>>|<row|<cell|0>>>>>
      .
    </equation*>

    <\enumerate-alpha>
      <item><math|T> is a <math|3\<times\>3> matrix, and the product of the
      transformation matrix <math|A> with each elementary basis vector
      exctracts the corresponding column of the transformation matrix.

      <\equation*>
        A=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|2>|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      We can see that the first row of <math|A> is a multiple of the second
      row (by a factor of <math|-2>), and that the third row is independent
      from the first. Therefore, <math|rank A=2>.

      <item><math|Ker T=Ker A> is given by <math|v\<in\>\<bbb-R\><rsup|3>>
      s.t. <math|A*v=\<b-0\>>. Therefore, a basis for <math|Ker T> is
      <math|<around*|{|<around*|(|0,2,1|)>|}>>. (From third row, first
      element is zero, and from the first row, the second element must be
      twice the third element.)

      <math|Im T> is given by the column space of <math|A>. Row reduce
      <math|A>.

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|2>|<cell|0>|<cell|0>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|1>\<leftrightarrow\>R<rsub|3>>>>>>><bmatrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|0>|<cell|-1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|3>\<rightarrow\>R<rsub|3>+<frac|1|2>R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|-4>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>
        .
      </equation*>

      The pivots correspond to the first and second columns of <math|A>, so
      these span the column space of <math|A>. A basis for <math|Im T>
      <math|<around*|{|<around*|[|0,0,2,|]><rsup|T>,<around*|[|-1,2,0|]><rsup|T>|}>>.
    </enumerate-alpha>
  </question>

  <\question>
    We shall first go through rotation in 2D then proceed to rotation in 3D.

    In polar coordinates, a vector in 2D can be represented by the radius and
    the angle:

    <\big-figure>
      <\padded-center>
        <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.310044gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-end|\<gtr\>|gr-auto-crop|true|<graphics||<with|arrow-end|\<gtr\>|<line|<point|0|0>|<point|0.0|3.0>>>|<math-at|y|<point|-0.3|3>>|<math-at|x|<point|4.0|-0.3000000000000001>>|<with|arrow-end|\<gtr\>|color|blue|<line|<point|0|0>|<point|3.0|2.0>>>|<arc|<point|1.5|1>|<point|1.7000000000000004|0.6>|<point|1.7000000000000004|0.0>>|<math-at|\<alpha\>|<point|1.3|0.3>>|<with|arrow-end|\<gtr\>|dash-style|11100|color|blue|<line|<point|0|0>|<point|1.0|3.0>>>|<with|dash-style|11100|<arc|<point|1.5|1>|<point|1.2000000000000004|1.7>|<point|0.5333333333333334|1.6>>>|<math-at|\<theta\>|<point|0.8|1>>|<with|arrow-end|\<gtr\>|<line|<point|0|0>|<point|4.100806985050933|-0.030543061251488292>>>|<math-at|r|<point|2.6023614234687127|1.3661363937028708>>|<math-at|r|<point|1.009095118401905|2.4339032940865195>>|<math-at|<around*|(|r*cos
        \<alpha\>,r*sin \<alpha\>|)>|<point|3.184845879084535|1.93707831723773>>|<math-at|<around*|(|r*cos
        <around*|(|\<alpha\>+\<theta\>|)>,r*sin
        <around*|(|\<alpha\>+\<theta\>|)>|)>|<point|1.2283|3.06778>>>>
      </padded-center>
    <|big-figure>
      Anti-clockwise rotation of a vector of length <math|r>, offset from the
      <math|x> axis by angle <math|\<alpha\>> (solid line), by an angle
      <math|\<theta\>> (dashed line).
    </big-figure>

    Using the relations

    <\eqnarray*>
      <tformat|<table|<row|<cell|cos <around*|(|\<alpha\>+\<theta\>|)>>|<cell|=>|<cell|cos
      \<alpha\>*cos \<theta\>-sin \<alpha\>*sin \<theta\>>>|<row|<cell|sin
      <around*|(|\<alpha\>+\<theta\>|)>>|<cell|=>|<cell|cos \<alpha\>*sin
      \<theta\>+sin \<alpha\>*cos \<theta\>>>>>
    </eqnarray*>

    we may write

    <\equation*>
      <around*|(|r*cos <around*|(|\<alpha\>+\<theta\>|)>,r*sin
      <around*|(|\<alpha\>+\<theta\>|)>|)>=<around*|(|r*cos \<alpha\>*cos
      \<theta\>-r*sin \<alpha\>*sin \<theta\>,r*cos \<alpha\>*sin
      \<theta\>+r*sin \<alpha\>*cos \<theta\>|)> .
    </equation*>

    So, returning to cartesian axis notation, rotating a vector
    <math|v=<around*|(|x,y|)>> anti-clockwise by an angle <math|\<theta\>>
    results in <math|u=<around*|(|x*cos \<theta\>-y*sin \<theta\>,x*sin
    \<theta\>+y*cos \<theta\>|)>>.

    We can now develop rotation matrices in 3D. Rotation about some axis
    leaves its 3D component unchanged and rotates the remaining 3D components
    according the the right hand rule.

    Rotation about the <math|z>-axis can be written as
    <math|T:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|3>> s.t.

    <\equation*>
      T<around*|(|<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>|)>=<bmatrix|<tformat|<table|<row|<cell|x*cos
      \<theta\>-y*sin \<theta\>>>|<row|<cell|x*sin \<theta\>+y*cos
      \<theta\>>>|<row|<cell|z>>>>>,
    </equation*>

    and rotation about the <math|x>-axis can be written as
    <math|S:\<bbb-R\><rsup|3>\<rightarrow\>\<bbb-R\><rsup|3>> s.t.

    <\equation*>
      S<around*|(|<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>|)>=<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y*cos
      \<theta\>-z*sin \<theta\>>>|<row|<cell|y*sin \<theta\>+z*cos
      \<theta\>>>>>> .
    </equation*>

    Therefore, the linear transformation that rotates each vector
    anti-clockwise around the <math|z>-axis at an angle of <math|45> degrees
    (<math|\<pi\>/4>) is

    <\equation*>
      T<around*|(|<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>|)>=<bmatrix|<tformat|<table|<row|<cell|x*cos
      <frac|\<mathpi\>|4>-y*sin <frac|\<mathpi\>|4>>>|<row|<cell|x*sin
      <frac|\<mathpi\>|4>+y*cos <frac|\<mathpi\>|4>>>|<row|<cell|z>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|<sqrt|2>|2>*x-<frac|<sqrt|2>|2>*y>>|<row|<cell|<frac|<sqrt|2>|2>*x+<frac|<sqrt|2>|2>*y>>|<row|<cell|z>>>>>
    </equation*>

    The transformation matrix is

    <\equation*>
      A=<bmatrix|<tformat|<table|<row|<cell|<frac|<sqrt|2>|2>>|<cell|-<frac|<sqrt|2>|2>>|<cell|0>>|<row|<cell|<frac|<sqrt|2>|2>>|<cell|<frac|<sqrt|2>|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>
      .
    </equation*>
  </question>

  <\question>
    Ther linear transformation that rotates each vector anti-clockwise around
    the <math|x>-axis at an angle of 90 degrees (<math|\<pi\>/2>) is

    <\equation*>
      S<around*|(|<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>|)>=<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y*cos
      <frac|\<mathpi\>|2>-z*sin <frac|\<mathpi\>|2>>>|<row|<cell|y*sin
      <frac|\<mathpi\>|2>+z*cos <frac|\<mathpi\>|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|-z>>|<row|<cell|y>>>>>
    </equation*>

    The transformation matrix is

    <\equation*>
      B=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>
      .
    </equation*>
  </question>

  <\question>
    Commutation between matrices <math|A,B> is defined as
    <math|<around*|[|A,B|]>=A*B-B*A>.

    Calculate both products.

    <\equation*>
      A*B=<bmatrix|<tformat|<table|<row|<cell|<frac|<sqrt|2>|2>>|<cell|-<frac|<sqrt|2>|2>>|<cell|0>>|<row|<cell|<frac|<sqrt|2>|2>>|<cell|<frac|<sqrt|2>|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|<sqrt|2>|2>>|<cell|0>|<cell|<frac|<sqrt|2>|2>>>|<row|<cell|<frac|<sqrt|2>|2>>|<cell|0>|<cell|-<frac|<sqrt|2>|2>>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>
      .
    </equation*>

    <\equation*>
      B*A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>*<bmatrix|<tformat|<table|<row|<cell|<frac|<sqrt|2>|2>>|<cell|-<frac|<sqrt|2>|2>>|<cell|0>>|<row|<cell|<frac|<sqrt|2>|2>>|<cell|<frac|<sqrt|2>|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|<sqrt|2>|2>>|<cell|-<frac|<sqrt|2>|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|<frac|<sqrt|2>|2>>|<cell|<frac|<sqrt|2>|2>>|<cell|0>>>>>
      .
    </equation*>

    We can see that <math|A*B\<neq\>B*A> so the matrices do not commute.
  </question>

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Anti-clockwise rotation of a vector of length
        <with|mode|<quote|math>|r>, offset from the
        <with|mode|<quote|math>|x> axis by angle
        <with|mode|<quote|math>|\<alpha\>> (solid line), by an angle
        <with|mode|<quote|math>|\<theta\>> (dashed line).
      </surround>|<pageref|auto-1>>
    </associate>
  </collection>
</auxiliary>