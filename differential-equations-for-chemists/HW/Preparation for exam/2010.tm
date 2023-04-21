<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|2010 Exam solution>>

  <section*|Question 1>

  Given a closed system of 2 tanks containing a salt solution with constant
  flow between them of 10 L/min, find the amount of salt in each tank at time
  <math|t> if the first tank constains 30L, the second 50L, and the initial
  amount of salt in tank 1 is 10g and in tank 2 15g.

  Write system of DEs in matrix form:

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>,<application-space|1em><wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|10>>|<row|<cell|15>>>>>
  </equation*>

  where

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|3>>|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>|<cell|-<frac|1|5>>>>>>
  </equation*>

  Find eigenvalues and eigenvectors of <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=<det|<tformat|<table|<row|<cell|-<frac|1|3>-\<lambda\>>|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>|<cell|-<frac|1|5>-\<lambda\>>>>>>=\<lambda\><rsup|2>+<frac|8|15>\<lambda\>=\<lambda\><around*|(|\<lambda\>+<frac|8|15>|)>
  </equation*>

  Roots are <math|\<lambda\><rsub|1,2>=0,-<frac|8|15>>. Find eigenvectors.
  For <math|\<lambda\>=0>:

  <\equation*>
    A-\<lambda\><rsub|1>I=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|3>>|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>|<cell|-<frac|1|5>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>>>>>
  </equation*>

  such that <math|<around*|(|A-\<lambda\><rsub|1>I|)><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>>

  \ For <math|\<lambda\>=-<frac|8|15>>:

  <\equation*>
    A-\<lambda\><rsub|2>I=<bmatrix|<tformat|<table|<row|<cell|<frac|1|5>>|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>|<cell|<frac|1|3>>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  such that <math|<around*|(|A-\<lambda\><rsub|2>I|)><wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>>.

  General solution is

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>>>>>+c<rsub|2>*\<mathe\><rsup|-<frac|8|15>t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  Find <math|c<rsub|1>,c<rsub|2>> that satisfy ICs.

  <\equation*>
    <wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|10>>|<row|<cell|15>>>>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|150>>|<row|<cell|225>>>>>=<bmatrix|<tformat|<table|<row|<cell|3c<rsub|1>+15c<rsub|2>>>|<row|<cell|5c<rsub|1>-15c<rsub|2>>>>>>
  </equation*>

  <\equation*>
    c<rsub|1>=<frac|375|8>,c<rsub|2>=<frac|5|8>
  </equation*>

  Unique solution is

  <\equation*>
    <wide|x|\<vect\>>=<frac|375|8>*<bmatrix|<tformat|<table|<row|<cell|<frac|1|5>>>|<row|<cell|<frac|1|3>>>>>>+<frac|5|8>*\<mathe\><rsup|-<frac|8|15>t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  <section*|Question 2>

  Solve the DE

  <\equation*>
    <around*|(|1+t<rsup|2>|)>*y<rprime|''>+2t*y<rprime|'>+<frac|3|t<rsup|2>>=0
  </equation*>

  with ICs <math|y<around*|(|1|)>=2,y<rprime|'><around*|(|1|)>=-1>. Note: Use

  <\equation*>
    <frac|A+B*t|t*<around*|(|t<rsup|2>+1|)>>=<frac|1|t>+<frac|B-A*t|t<rsup|2>+1>
  </equation*>

  This is a separable equation in <math|y<rprime|'>>:

  <\equation*>
    <around*|(|<around*|(|1+t<rsup|2>|)>*y<rprime|'>|)><rprime|'>=-<frac|3|t<rsup|2>>
  </equation*>

  Integrate both sides:

  <\equation*>
    <around*|(|1+t<rsup|2>|)>*y<rprime|'>=<frac|3|t>+c<rsub|1>
  </equation*>

  Therefore:

  <\equation*>
    y=<big|int><around*|(|<frac|3|t<around*|(|1+t<rsup|2>|)>>+<frac|c<rsub|1>|1+t<rsup|2>>|)>
    \<mathd\>t
  </equation*>

  Simplify:

  <\equation*>
    <frac|3|t<around*|(|1+t<rsup|2>|)>>=<frac|A|t>+<frac|B-A*t|t<rsup|2>+1>
  </equation*>

  <\equation*>
    A<around*|(|t<rsup|2>+1|)>+B*t-A*t<rsup|2>=3
  </equation*>

  <\equation*>
    A=3,B=0
  </equation*>

  <\equation*>
    y=<big|int><around*|(|<frac|3|t>-<frac|3t|t<rsup|2>+1>+<frac|c<rsub|1>|t<rsup|2>+1>|)>
    \<mathd\>t=3*ln <around*|\||t|\|>-<frac|3|2>*ln
    <around*|\||t<rsup|2>+1|\|>+c<rsub|1>*arctan t+c<rsub|2>
  </equation*>

  Find <math|c<rsub|1>,c<rsub|2>> via ICs.

  <\equation*>
    y<rprime|'><around*|(|1|)>=-1\<rightarrow\><around*|(|1+1|)>\<cdot\><around*|(|-1|)>=<frac|3|1>+c<rsub|1>\<rightarrow\>c<rsub|1>=-5
  </equation*>

  <\equation*>
    y<around*|(|1|)>=2\<rightarrow\>2=-<frac|3|2>*ln 2+-5*arctan
    1+c<rsub|2>\<rightarrow\>c<rsub|2>=2+<frac|3|2>*ln 2+5*arctan 1
  </equation*>

  Unique solution is:

  <\equation*>
    y=3*ln t-<frac|3|2>*ln <around*|(|t<rsup|2>+1|)>-5*arctan
    t+2+<frac|3|2>*ln 2+5*arctan 1
  </equation*>

  <section*|Question 3>

  Find the general solution to the DE:

  <\equation*>
    2y<rsup|<around*|(|3|)>>-2y<rprime|''>+25y<rprime|'>=sin 2x+x
  </equation*>

  Solve associated homogeneous equation. Characteristic equation is

  <\equation*>
    2\<lambda\><rsup|3>-2\<lambda\><rsup|2>+25\<lambda\>=0
  </equation*>

  <\equation*>
    \<lambda\><around*|(|2\<lambda\><rsup|2>-2\<lambda\>+25|)>=0
  </equation*>

  Roots are

  <\equation*>
    \<lambda\><rsub|1,2,3>=0,<frac|2\<pm\>14\<mathi\>|4>=<frac|1|2>\<pm\><frac|7|2>\<mathi\>
  </equation*>

  Therefore,

  <\equation*>
    y<rsub|h>=c<rsub|1>+c<rsub|2>*\<mathe\><rsup|<frac|1|2>x>*cos
    <frac|7x|2>+c<rsub|3>*\<mathe\><rsup|<frac|1|2>x>*sin <frac|7x|2>
  </equation*>

  Find particular solutions for each part of the RHS. For sine part, guess
  solution of the form: <math|y<rsub|p1>=A*cos 2x+B*sin 2x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p1><rprime|'>>|<cell|=>|<cell|-2A*sin
    2x+2B*cos 2x>>|<row|<cell|y<rsub|p1><rprime|''>>|<cell|=>|<cell|-4A*cos
    2x-4B*sin 2x>>|<row|<cell|y<rsub|p1><rsup|<around*|(|3|)>>>|<cell|=>|<cell|*8A*sin
    2x-8B*cos 2x>>>>
  </eqnarray*>

  Input in ODE:

  <\equation*>
    16A*sin 2x-16B*cos 2x+8A*cos 2x+8B*sin 2x-50A*sin 2x+50B*cos 2x=sin 2x
  </equation*>

  <\equation*>
    sin 2x*<around*|(|16A+8B-50A|)>+cos 2x*<around*|(|-16B+8A+50B|)>=sin 2x
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|cos
    2x:>|<cell|34B=8A\<rightarrow\>A=<frac|34|8>B>>|<row|<cell|sin
    2x:>|<cell|-34A+8B=1\<rightarrow\>B=-<frac|2|273>,A=-<frac|17|546>>>>>>
  </equation*>

  So:

  <\equation*>
    y<rsub|p1>=-<frac|17|546>*cos 2x-<frac|2|273>*sin 2x
  </equation*>

  For polynomial part, guess solution of the form:
  <math|y<rsub|p2>=A*x<rsup|3>+B*x<rsup|2>+C*x>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|p2><rprime|'>>|<cell|=>|<cell|3A*x<rsup|2>+2B*x+C>>|<row|<cell|y<rsub|p2><rprime|''>>|<cell|=>|<cell|6A*x+2B>>|<row|<cell|y<rsub|p2><rsup|<around*|(|3|)>>>|<cell|=>|<cell|6A>>>>
  </eqnarray*>

  Input in ODE:

  <\equation*>
    12A-12A*x-4B+75A*x<rsup|2>+50B*x+25C=x
  </equation*>

  <\equation*>
    75A*x<rsup|2>+<around*|(|-12A+50B|)>x+<around*|(|12A-4B+25C|)>=x
  </equation*>

  Equate coefficients on both sides:

  <\equation*>
    A=0,B=<frac|1|50>,C=<frac|2|625>
  </equation*>

  So:

  <\equation*>
    y<rsub|p2>=<frac|1|50>x<rsup|2>+<frac|2|625>x
  </equation*>

  General solution to the DE is:

  <\equation*>
    c<rsub|1>+c<rsub|2>*\<mathe\><rsup|<frac|1|2>x>*cos
    <frac|7x|2>+c<rsub|3>*\<mathe\><rsup|<frac|1|2>x>*sin
    <frac|7x|2>-<frac|17|546>*cos 2x-<frac|2|273>*sin
    2x+<frac|1|50>x<rsup|2>+<frac|2|625>x
  </equation*>

  where <math|c<rsub|1,2,3>\<in\>\<bbb-R\>>, <math|t\<gtr\>0>.

  <section*|Question 4>

  Find the solution to the following system of DEs with ICs:
  <math|<wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|3>>|<row|<cell|2>>>>>>.

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>
  </equation*>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|1>|<cell|4>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|4>>>>>
  </equation*>

  Notice that the sum along each row is the same and equals 6. Therefore,
  <math|A> has an eigenvalue <math|\<lambda\>=6> with corresponding
  eigenvector <math|<wide|v|\<vect\>>=<around*|[|1,1,1|]><rsup|T>>.

  Find the rest of the eigenvalues of <math|A>.

  <\equation*>
    det <around*|(|A-\<lambda\>I|)>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|2>|<cell|3>>|<row|<cell|1>|<cell|4-\<lambda\>>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|4-\<lambda\>>>>>>=<around*|(|1-\<lambda\>|)>*<around*|[|15-8\<lambda\>+\<lambda\><rsup|2>|]>-<around*|[|5-2\<lambda\>|]>+<around*|[|-10+3\<lambda\>|]>=0
  </equation*>

  <\equation*>
    15-8\<lambda\>+\<lambda\><rsup|2>-15\<lambda\>+8\<lambda\><rsup|2>-\<lambda\><rsup|3>-5+2\<lambda\>-10+3\<lambda\>=0
  </equation*>

  <\equation*>
    -\<lambda\><rsup|3>+9\<lambda\><rsup|2>-18\<lambda\>=-\<lambda\><around*|(|\<lambda\>-6|)><around*|(|\<lambda\>-3|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2,3>=0,6,3
  </equation*>

  Find eigenvectors. For <math|\<lambda\><rsub|1>=0>:

  <\equation*>
    A-\<lambda\><rsub|1>I=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|1>|<cell|4>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|4>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-R<rsub|1>>>|<row|<cell|R<rsub|3>\<rightarrow\>R<rsub|3>-R<rsub|1>>>>>>><bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|2>|<cell|-2>>|<row|<cell|0>|<cell|-1>|<cell|1>>>>>
  </equation*>

  Pick

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|-5>>|<row|<cell|1>>|<row|<cell|1>>>>>
  </equation*>

  s.t. <math|<around*|(|A-\<lambda\><rsub|1>I|)><wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>>.
  For <math|\<lambda\><rsub|3>=3>:

  <\equation*>
    A-\<lambda\><rsub|3>I=<bmatrix|<tformat|<table|<row|<cell|-2>|<cell|2>|<cell|3>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<rightarrow\>R<rsub|1>+2R<rsub|2>><bmatrix|<tformat|<table|<row|<cell|0>|<cell|4>|<cell|5>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>
  </equation*>

  Pick:

  <\equation*>
    <wide|v|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-5>>|<row|<cell|4>>>>>
  </equation*>

  s.t. <math|<around*|(|A-\<lambda\><rsub|3>I|)><wide|v|\<vect\>><rsub|3>=0>.
  General solution to system of DEs is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|-5>>|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>**\<mathe\><rsup|6t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|3>*\<mathe\><rsup|3t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-5>>|<row|<cell|4>>>>>
  </equation*>

  Find <math|c<rsub|1>,c<rsub|2>,c<rsub|3>> that satisfy ICs. Define

  <\equation*>
    <wide|c|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>|<row|<cell|c<rsub|3>>>>>>,B=<bmatrix|<tformat|<table|<row|<cell|-5>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|-5>>|<row|<cell|1>|<cell|1>|<cell|4>>>>>,<wide|b|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|3>>|<row|<cell|2>>>>>
  </equation*>

  such that

  <\equation*>
    B*<wide|c|\<vect\>>=<wide|b|\<vect\>>
  </equation*>

  Find <math|B<rsup|-1>>.

  <\equation*>
    det B=-5\<cdot\><around*|(|4+5|)>-1\<cdot\><around*|(|4-1|)>+1\<cdot\><around*|(|-5-1|)>=-5\<cdot\>9-3-6=-54
  </equation*>

  <\equation*>
    B<rsup|-1>=-<frac|1|54><bmatrix|<tformat|<table|<row|<cell|<around*|(|4+5|)>>|<cell|-<around*|(|4+5|)>>|<cell|0>>|<row|<cell|-<around*|(|4-1|)>>|<cell|<around*|(|-20-1|)>>|<cell|-<around*|(|-5-1|)>>>|<row|<cell|<around*|(|-5-1|)>>|<cell|-<around*|(|25-1|)>>|<cell|<around*|(|-5-1|)>>>>>>=-<frac|1|54>*<bmatrix|<tformat|<table|<row|<cell|9>|<cell|-9>|<cell|0>>|<row|<cell|-3>|<cell|-21>|<cell|6>>|<row|<cell|-6>|<cell|-24>|<cell|-6>>>>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|6>>|<cell|<frac|1|6>>|<cell|0>>|<row|<cell|<frac|1|18>>|<cell|<frac|7|18>>|<cell|-<frac|1|9>>>|<row|<cell|<frac|1|9>>|<cell|<frac|4|9>>|<cell|<frac|1|9>>>>>>
  </equation*>

  Therefore,

  <\equation*>
    <wide|c|\<vect\>>=B<rsup|-1>*<wide|b|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|6>>|<cell|<frac|1|6>>|<cell|0>>|<row|<cell|<frac|1|18>>|<cell|<frac|7|18>>|<cell|-<frac|1|9>>>|<row|<cell|<frac|1|9>>|<cell|<frac|4|9>>|<cell|<frac|1|9>>>>>><bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|3>>|<row|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|<frac|1|2>>>|<row|<cell|<frac|17|18>>>|<row|<cell|<frac|14|9>>>>>>
  </equation*>

  Unique solution is:

  <\equation*>
    <wide|x|\<vect\>>=<frac|1|2>*<bmatrix|<tformat|<table|<row|<cell|-5>>|<row|<cell|1>>|<row|<cell|1>>>>>+<frac|17|18>**\<mathe\><rsup|6t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+<frac|14|9>*\<mathe\><rsup|3t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-5>>|<row|<cell|4>>>>>
  </equation*>

  <section*|Question 5>

  Show that the eigenvalue problem

  <\equation*>
    y<rprime|''>+\<lambda\>y<rprime|'>+y=0
  </equation*>

  with boundary conditions <math|y<around*|(|0|)>=y<around*|(|1|)>=0> has no
  real eigenvalues by considering the following cases:

  <\enumerate>
    <item>Show that if <math|\<lambda\>\<in\>\<bbb-R\>> and
    <math|<around*|\||\<lambda\>|\|>\<less\>2> then <math|\<lambda\>> is not
    an eigenvalue.

    <item>Show tha if <math|\<lambda\>=\<pm\>2> then <math|\<lambda\>> is not
    an eigenvalue.

    <item>Show that if <math|\<lambda\>\<in\>\<bbb-R\>> and
    <math|<around*|\||\<lambda\>|\|>\<gtr\>2> then <math|\<lambda\>> is not
    an eigenvalue.
  </enumerate>

  Characteristic equation is:

  <\equation*>
    u<rsup|2>+\<lambda\>*u+1=0
  </equation*>

  <\equation*>
    u=<frac|-\<lambda\>\<pm\><sqrt|\<lambda\><rsup|2>-4>|2>
  </equation*>

  Three cases to examine:

  <\enumerate>
    <item>If <math|\<lambda\><rsup|2>-4\<gtr\>0> (i.e.
    <math|<around*|\||\<lambda\>|\|>\<gtr\>2>), there are two real roots:

    <\equation*>
      u<rsub|1,2>=<frac|-\<lambda\>\<pm\><sqrt|\<lambda\><rsup|2>-4>|2>
    </equation*>

    and the general solution is

    <\equation*>
      y=c<rsub|1>*\<mathe\><rsup|<frac|-\<lambda\>+<sqrt|\<lambda\><rsup|2>-4>|2>t>+c<rsub|2>*\<mathe\><rsup|<frac|-\<lambda\>-<sqrt|\<lambda\><rsup|2>-4>|2>t>
    </equation*>

    Check if there are <math|c<rsub|1>,c<rsub|2>> that satisfy ICs.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|=>|<cell|c<rsub|1>+c<rsub|2>>>|<row|<cell|y<around*|(|1|)>=0>|<cell|=>|<cell|c<rsub|1>*\<mathe\><rsup|<frac|-\<lambda\>+<sqrt|\<lambda\><rsup|2>-4>|2>>+c<rsub|2>*\<mathe\><rsup|<frac|-\<lambda\>-<sqrt|\<lambda\><rsup|2>-4>|2>>>>>>
    </eqnarray*>

    These two conditions hold iff <math|c<rsub|1>=c<rsub|2>=0>, i.e. there is
    no non-trivial solution and no eigenvalue in this case.

    <item>If <math|\<lambda\><rsup|2>=4> (i.e. <math|\<lambda\>=\<pm\>2>),
    there is one double root (<math|\<lambda\>=-2> or <math|\<lambda\>=2>),
    and the solution is:

    <\equation*>
      y<rsub|\<pm\>>=c<rsub|1>*\<mathe\><rsup|\<pm\>\<lambda\>t>+c<rsub|2>*t*\<mathe\><rsup|\<pm\>\<lambda\>t>
    </equation*>

    Check if there are <math|c<rsub|1>,c<rsub|2>> that satisfy ICs.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|=>|<cell|c<rsub|1>>>|<row|<cell|y<around*|(|1|)>=0>|<cell|=>|<cell|c<rsub|1>*\<mathe\><rsup|\<pm\>2>+c<rsub|2>*\<mathe\><rsup|\<pm\>2>\<rightarrow\>c<rsub|2>=0>>>>
    </eqnarray*>

    Again, there is no non-trivial solution and no eigenvalue in this case.

    <item>If <math|\<lambda\><rsup|2>-4\<less\>0> (i.e.
    <math|<around*|\||\<lambda\>|\|>\<less\>2>), there are two non-real
    roots:

    <\equation*>
      u<rsub|1,2>=<frac|-\<lambda\>\<pm\><sqrt|4-\<lambda\><rsup|2>>\<mathi\>|2>
    </equation*>

    and the general solution is:

    <\equation*>
      y=c<rsub|1>*\<mathe\><rsup|-<frac|\<lambda\>|2>t>*cos
      <around*|(|<frac|<sqrt|4-\<lambda\><rsup|2>>|2>t|)>+c<rsub|2>*\<mathe\><rsup|-<frac|\<lambda\>|2>t>*sin
      <around*|(|<frac|<sqrt|4-\<lambda\><rsup|2>>|2>t|)>
    </equation*>

    Check if there are <math|c<rsub|1>,c<rsub|2>> that satisfy ICs.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|=>|<cell|c<rsub|1>>>|<row|<cell|y<around*|(|1|)>=0>|<cell|=>|<cell|c<rsub|2>*\<mathe\><rsup|-<frac|\<lambda\>|2>>*sin
      <around*|(|<frac|<sqrt|4-\<lambda\><rsup|2>>|2>|)>>>>>
    </eqnarray*>

    Either <math|c<rsub|2>=0> (which means no eigevalue in this case), or

    <\equation*>
      sin <around*|(|<frac|<sqrt|4-\<lambda\><rsup|2>>|2>|)>=0
    </equation*>

    <\equation*>
      <frac|<sqrt|4-\<lambda\><rsup|2>>|2>=\<mathpi\>*n,<application-space|1em>n=1,2,3,\<ldots\>
    </equation*>

    <\equation*>
      \<lambda\>=\<pm\><sqrt|4-4\<mathpi\><rsup|2>*n<rsup|2>>
    </equation*>

    This doesn't yield a <strong|real> eigenvalue.
  </enumerate>

  In conclusion, the eigenvalue problem doesn't have any real eigenvalue.

  <section*|Question 6>

  Solve the following BVP:

  <\equation*>
    9y<rsub|x\<nocomma\>x>=y<rsub|t\<nocomma\>t>,<application-space|1em>x\<in\><around*|(|0,1|)>,t\<gtr\>0
  </equation*>

  with homogeneous BCs and ICs: <math|y<around*|(|x,0|)>=sin
  \<mathpi\>x,y<rsub|t><around*|(|x,0|)>=3*sin
  <around*|(|2\<mathpi\>*x|)>-4*sin <around*|(|3\<mathpi\>*x|)>>.

  Split the problem into a zero initial velocity and a zero initial position
  case.

  <underline|Zero initial velocity>, i.e. ICs are:
  <math|y<around*|(|x,0|)>\<equiv\>f<around*|(|x|)>=sin
  \<mathpi\>x,y<rsub|t><around*|(|x,0|)>\<equiv\>0>.

  In this case, solution is given by:

  <\equation*>
    y<rsub|1><around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>c<rsub|n>*sin
    <frac|n\<mathpi\>*x|L>*cos <frac|n\<mathpi\>a*t|L>
  </equation*>

  where

  <\equation*>
    c<rsub|n>=<frac|2|L><big|int><rsub|0><rsup|L>f<around*|(|x|)>*sin
    <frac|n\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|c<rsub|n>>.

  <\equation*>
    c<rsub|n>=2<big|int><rsub|0><rsup|1>sin
    <around*|(|\<mathpi\>x|)>\<cdot\>sin <around*|(|n\<mathpi\>*x|)>
    \<mathd\>x
  </equation*>

  As sines of different frequencies are orthogonal, integral is non-zero only
  for <math|n=1>.

  <\equation*>
    c<rsub|1>=2<big|int><rsub|0><rsup|1>sin<rsup|2> <around*|(|\<mathpi\>x|)>
    \<mathd\>x=<frac|2|\<mathpi\>>*<around*|[|<frac|\<mathpi\>x|2>-<frac|sin
    <around*|(|2\<mathpi\>*x|)>|4>|]><rsub|0><rsup|1>=<frac|2|\<mathpi\>>*\<cdot\><frac|\<mathpi\>|2>=1
  </equation*>

  Solution is therefore,

  <\equation*>
    y<rsub|1><around*|(|x,t|)>=sin <around*|(|\<mathpi\>*x|)>*cos
    <around*|(|3\<mathpi\>*t|)>
  </equation*>

  <underline|Zero initial position>, i.e. ICs are
  <math|y<around*|(|x,0|)>\<equiv\>0,y<rsub|t><around*|(|x,0|)>\<equiv\>g<around*|(|x|)>=3*sin
  <around*|(|2\<mathpi\>*x|)>-4*sin <around*|(|3\<mathpi\>*x|)>>.

  In this case, solution is given by:

  <\equation*>
    y<rsub|2><around*|(|x,t|)>=<big|sum><rsub|n=1><rsup|\<infty\>>k<rsub|n>*sin
    <frac|n\<mathpi\>*x|L>*sin <frac|n\<mathpi\>a*t|L>
  </equation*>

  where

  <\equation*>
    k<rsub|n>=<frac|2|n\<mathpi\>a><big|int><rsub|0><rsup|L>g<around*|(|x|)>*sin
    <frac|n\<mathpi\>*x|L> \<mathd\>x
  </equation*>

  Calculate <math|k<rsub|n>>.

  <\equation*>
    k<rsub|n>=<frac|2|3n\<mathpi\>><around*|[|3<big|int><rsub|0><rsup|1>sin
    <around*|(|2\<mathpi\>*x|)>*sin <around*|(|n\<mathpi\>*x|)>
    \<mathd\>x-4<big|int><rsub|0><rsup|1>sin <around*|(|3\<mathpi\>*x|)>*sin
    <around*|(|n\<mathpi\>*x|)> \<mathd\>x|]>
  </equation*>

  By means of orthogonality,

  <\equation*>
    k<rsub|n>=k<rsub|2>+k<rsub|3>=<frac|6|6\<mathpi\>><big|int><rsub|0><rsup|1>sin<rsup|2>
    <around*|(|2\<mathpi\>*x|)> \<mathd\>x-<frac|8|9\<mathpi\>><big|int><rsub|0><rsup|1>sin<rsup|2>
    <around*|(|3\<mathpi\>*x|)> \<mathd\>x
  </equation*>

  <\equation*>
    k<rsub|2>=<frac|1|\<mathpi\>>\<cdot\><frac|1|2\<mathpi\>><around*|[|<frac|2\<mathpi\>*x|2>-<frac|sin
    <around*|(|4\<mathpi\>*x|)>|4>|]><rsub|0><rsup|1>,<application-space|2em>k<rsub|3>=-<frac|8|9\<mathpi\>>\<cdot\><frac|1|3\<mathpi\>><around*|[|<frac|3\<mathpi\>*x|2>-<frac|sin
    <around*|(|6\<mathpi\>*x|)>|4>|]><rsub|0><rsup|1>
  </equation*>

  <\equation*>
    k<rsub|2>=<frac|1|2\<mathpi\>>,<application-space|1em>k<rsub|3>=-<frac|4|9\<mathpi\>>
  </equation*>

  Therefore,

  <\equation*>
    y<rsub|2><around*|(|x,t|)>=sin <around*|(|\<mathpi\>*x|)>*cos
    <around*|(|3\<mathpi\>*t|)>+<frac|1|2\<mathpi\>>*sin
    <around*|(|2\<mathpi\>*x|)>*sin <around*|(|6\<mathpi\>*t|)>-<frac|4|9\<mathpi\>>*sin
    <around*|(|3\<mathpi\>*x|)>*sin <around*|(|9\<mathpi\>*t|)>
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-2|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-3|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-4|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-5|<tuple|?|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
    <associate|auto-6|<tuple|3|?|..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_1.tm>>
  </collection>
</references>