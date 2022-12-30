<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Assignment 9>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date: TBE
  </author-affiliation>>>>

  <section*|Page 355>

  <underline|Question 24>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|1>>>>>*<wide|x|\<vect\>>
  </equation*>

  <\equation*>
    <wide|x|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|6>>|<row|<cell|-8>>|<row|<cell|-4>>>>>*\<mathe\><rsup|-t>+<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>*\<mathe\><rsup|2*t>
  </equation*>

  Denote <math|A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|1>>>>>>.
  Assume the solution is of the form\ 

  <\equation*>
    <wide|x|\<vect\>>=<wide|z|\<vect\>>*\<mathe\><rsup|r*t>
  </equation*>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=r*<wide|z|\<vect\>>*\<mathe\><rsup|r*t>
  </equation*>

  Plug in the system of ODEs to get

  <\equation*>
    r*<wide|z|\<vect\>>*\<mathe\><rsup|r*t>=A*<wide|z|\<vect\>>*\<mathe\><rsup|r*t>
  </equation*>

  Divide both sides by <math|\<mathe\><rsup|r*t>\<neq\>0> (for all <math|t>)
  to get

  <\equation*>
    A*<wide|z|\<vect\>>=r*<wide|z|\<vect\>>
  </equation*>

  This problem is equivalent to finding the eigenvalues of <math|A>. Find
  <math|\<lambda\>> such that <math|<rigid|det
  <around*|(|A-\<lambda\>*I|)>=0>>.

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1-\<lambda\>>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|1-\<lambda\>>>>>>=0
  </equation*>

  \;

  <\eqnarray*>
    <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1-\<lambda\>>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|1-\<lambda\>>>>>>>|<cell|=>|<cell|<around*|(|1-\<lambda\>|)>*<around*|[|1-2\<lambda\>+\<lambda\><rsup|2>-1|]>-2*<around*|(|1-\<lambda\>+1|)>>>|<row|<cell|>|<cell|=>|<cell|1-2\<lambda\>+\<lambda\><rsup|2>-1-\<lambda\>+2\<lambda\><rsup|2>-\<lambda\><rsup|3>+\<lambda\>-4+2\<lambda\>>>|<row|<cell|>|<cell|=>|<cell|-\<lambda\><rsup|3>+3\<lambda\><rsup|2>-4>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<lambda\>+1|)>*<around*|(|-\<lambda\><rsup|2>+4\<lambda\>-4|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<lambda\>+1|)>*<around*|(|\<lambda\>-2|)><rsup|2>=0\<rightarrow\>\<lambda\><rsub|1>=-1,\<lambda\><rsub|2>=2>>>>
  </eqnarray*>

  Find the eigenvectors that correspond to the calculated eigenvalues.

  <underline|<math|<rsub|>\<lambda\><rsub|1>=-1>>

  <\equation*>
    <around*|(|A-\<lambda\><rsub|1>*I|)>*<wide|z|\<vect\>><rsub|1>=0
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|2>>>>>*<wide|z|\<vect\>>=0
  </equation*>

  Apply row operations on the augmented matrix <math|A\|<wide|0|\<vect\>>>.

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|2>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|2>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-R<rsub|1>>>>>>><bmatrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|-2>>|<row|<cell|0>|<cell|-1>|<cell|2>>>>>
  </equation*>

  From which we obtain:

  <\equation*>
    x<rsub|2>=2x<rsub|3>,x<rsub|1>=-<frac|3|2>x<rsub|3>
  </equation*>

  Pick <math|x<rsub|3>=-4> to get:

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|6>>|<row|<cell|-8>>|<row|<cell|-4>>>>>
  </equation*>

  <\underline>
    <math|\<lambda\><rsub|2>=2>
  </underline>

  <\equation*>
    <around*|(|A-\<lambda\><rsub|2>*I|)>*<wide|z|\<vect\>><rsub|2>=0
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|-1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|-1>>>>>*<wide|z|\<vect\>>=0
  </equation*>

  Obtain

  <\equation*>
    x<rsub|2>=-x<rsub|3>,x<rsub|1>=0
  </equation*>

  Pick <math|x<rsub|3>=-1> and get

  <\equation*>
    <wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>
  </equation*>

  Finally, the general solution is

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*<wide|z|\<vect\>><rsub|1>*\<mathe\><rsup|\<lambda\><rsub|1>t>+c<rsub|2>*<wide|z|\<vect\>><rsub|2>*\<mathe\><rsup|\<lambda\><rsub|2>t>
  </equation*>

  If we pick <math|c<rsub|1>,c<rsub|2>=1>, we get the unique solution

  <\equation*>
    <wide|x|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|6>>|<row|<cell|-8>>|<row|<cell|-4>>>>>*\<mathe\><rsup|-t>+<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|-1>>>>>*\<mathe\><rsup|2*t>
  </equation*>

  as requested to verify.

  <section*|Page 367>

  <underline|Question 16>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-2>>|<row|<cell|4>|<cell|-1>>>>>
  </equation*>

  Find eigenvalues of <math|A>.

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|-2>>|<row|<cell|4>|<cell|-1-\<lambda\>>>>>>=<around*|(|\<lambda\>-3|)>*<around*|(|1+\<lambda\>|)>+8=0
  </equation*>

  <\equation*>
    \<lambda\><rsup|2>-2\<lambda\>+5=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|2\<pm\>4*\<mathi\>|2>=1\<pm\>2\<mathi\>
  </equation*>

  Find eigenvectors of <math|A>.

  <\underline>
    <math|\<lambda\><rsub|1>=1+2\<mathi\>>
  </underline>

  Solve <math|<around*|(|A-\<lambda\>*<rsub|1>I|)>*<wide|v|\<vect\>><rsub|1>=<wide|0|\<vect\>>>.

  <\equation*>
    A-\<lambda\><rsub|1>*I=<bmatrix|<tformat|<table|<row|<cell|2-2\<mathi\>>|<cell|-2>>|<row|<cell|4>|<cell|-2-2\<mathi\>>>>>>
  </equation*>

  Select

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1-\<mathi\>>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|2>=1-2\<mathi\>>>

  Solve <math|<around*|(|A-\<lambda\><rsub|2>*I|)>*<wide|v|\<vect\>><rsub|2>=<wide|0|\<vect\>>>.

  <\equation*>
    A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|2+2\<mathi\>>|<cell|-2>>|<row|<cell|4>|<cell|-2+2\<mathi\>>>>>>
  </equation*>

  Select

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1+\<mathi\>>>>>>
  </equation*>

  <underline|Question 18>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|\<mathi\>>>|<row|<cell|-\<mathi\>>|<cell|1>>>>>
  </equation*>

  Find eigenvalues of <math|A>.

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|\<mathi\>>>|<row|<cell|-\<mathi\>>|<cell|1-\<lambda\>>>>>>=\<lambda\><rsup|2>-2\<lambda\>+1-1=\<lambda\>*<around*|(|\<lambda\>-2|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=0,2
  </equation*>

  Find eigenvectors of <math|A>.

  <underline|<math|\<lambda\><rsub|1>=0>>

  <\equation*>
    A-\<lambda\><rsub|1>*I=A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|\<mathi\>>>|<row|<cell|-\<mathi\>>|<cell|1>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|-\<mathi\>>>|<row|<cell|1>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|2>=2>>

  <\equation*>
    A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|\<mathi\>>>|<row|<cell|-\<mathi\>>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|\<mathi\>>>|<row|<cell|1>>>>>
  </equation*>

  <underline|Question 21>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|1>|<cell|-2>>|<row|<cell|3>|<cell|2>|<cell|1>>>>>
  </equation*>

  Find eigenvalues: (Calculate det <math|A-\<lambda\>*I> along row 1)

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|1-\<lambda\>>|<cell|-2>>|<row|<cell|3>|<cell|2>|<cell|1-\<lambda\>>>>>>=<around*|(|1-\<lambda\>|)>*<around*|[|\<lambda\><rsup|2>-2\<lambda\>+1+4|]>=0
  </equation*>

  <\equation*>
    <around*|(|1-\<lambda\>|)>*<around*|(|\<lambda\><rsup|2>-2\<lambda\>+5|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2,3>=1,1\<pm\>2\<mathi\>
  </equation*>

  Find eigenvectors.

  <underline|<math|\<lambda\><rsub|1>=1>>

  <\equation*>
    A-\<lambda\><rsub|1>*I=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|0>|<cell|-2>>|<row|<cell|3>|<cell|2>|<cell|0>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-3>>|<row|<cell|2>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|2>=1+2\<mathi\>>>

  <\equation*>
    A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|-2\<mathi\>>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|-2\<mathi\>>|<cell|-2>>|<row|<cell|3>|<cell|2>|<cell|-2\<mathi\>>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|\<mathi\>>>|<row|<cell|1>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|3>=1-2\<mathi\>>>

  <\equation*>
    A-\<lambda\><rsub|3>*I=<bmatrix|<tformat|<table|<row|<cell|2\<mathi\>>|<cell|0>|<cell|0>>|<row|<cell|2>|<cell|2\<mathi\>>|<cell|-2>>|<row|<cell|3>|<cell|2>|<cell|2\<mathi\>>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-\<mathi\>>>|<row|<cell|1>>>>>
  </equation*>

  <underline|Question 22>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|4>|<cell|1>>|<row|<cell|-2>|<cell|-4>|<cell|-1>>>>>
  </equation*>

  Find eigenvalues:

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|4-\<lambda\>>|<cell|1>>|<row|<cell|-2>|<cell|-4>|<cell|-1-\<lambda\>>>>>>=0
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|4-\<lambda\>>|<cell|1>>|<row|<cell|-2>|<cell|-4>|<cell|-1-\<lambda\>>>>>>>|<cell|=>|<cell|<around*|(|3-\<lambda\>|)>*<around*|[|-<around*|(|4-\<lambda\>|)>*<around*|(|1+\<lambda\>|)>+4|]>-1*<around*|[|-2*<around*|(|1+\<lambda\>|)>+8|]>>>|<row|<cell|>|<cell|>|<cell|-2*<around*|[|2-8+2\<lambda\>|]>=0>>>>
  </eqnarray*>

  <\equation*>
    <around*|(|3-\<lambda\>|)>*<around*|(|\<lambda\><rsup|2>-3\<lambda\>|)>-*2<around*|(|3-\<lambda\>|)>-4<around*|(|\<lambda\>-3|)>=0
  </equation*>

  <\equation*>
    <around*|(|3-\<lambda\>|)>*<around*|(|\<lambda\><rsup|2>-3\<lambda\>+2|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2,3>=3,1,2
  </equation*>

  Find eigenvectors:

  <\underline>
    <math|\<lambda\><rsub|1>=3>
  </underline>

  <\equation*>
    A-\<lambda\><rsub|1>*I=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|-2>|<cell|-4>|<cell|-4>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-1>>|<row|<cell|1>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|2>=1>>

  <\equation*>
    A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|-2>|<cell|-4>|<cell|-2>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|3>=2>>

  <\equation*>
    A-\<lambda\><rsub|3>*I=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|-2>|<cell|-4>|<cell|-3>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|-2>>|<row|<cell|1>>|<row|<cell|0>>>>>
  </equation*>

  <underline|Question 24>

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|0>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|3>>>>>
  </equation*>

  Find eigenvalues:

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|-\<lambda\>>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|3-\<lambda\>>>>>>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|-\<lambda\>>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|3-\<lambda\>>>>>>>|<cell|=>|<cell|<around*|(|3-\<lambda\>|)>*<around*|(|\<lambda\><rsup|2>-3\<lambda\>-4|)>-2*<around*|(|6-2\<lambda\>-8|)>+4*<around*|(|4+4\<lambda\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|3-\<lambda\>|)>*<around*|(|\<lambda\>-4|)>*<around*|(|\<lambda\>+1|)>+4<around*|(|1+\<lambda\>|)>+16*<around*|(|1+\<lambda\>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<lambda\>+1|)>*<around*|(|\<lambda\><rsup|2>-7\<lambda\>-8|)>=0>>>>
  </eqnarray*>

  <\equation*>
    \<lambda\><rsub|1,2,3>=-1,-1,8
  </equation*>

  Find eigenvectors:

  <underline|<math|\<lambda\><rsub|1,2>=-1>>

  <\equation*>
    A-\<lambda\><rsub|1,2>*I=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|4>>>>>
  </equation*>

  We have one equation in 3 variables. Choose two linearly independent
  vectors <math|<wide|v|\<vect\>><rsub|1,2>> that satisfy
  <math|A*<wide|v|\<vect\>><rsub|1,2>=<wide|0|\<vect\>>>.

  <\equation*>
    <wide|v<rsub|1>|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>>>>,<application-space|1em><wide|v<rsub|2>|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-2>>|<row|<cell|1>>>>>
  </equation*>

  <\underline>
    <math|\<lambda\><rsub|3>=8>
  </underline>

  <\equation*>
    A-\<lambda\><rsub|3>*I=<bmatrix|<tformat|<table|<row|<cell|-5>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|-8>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|-5>>>>>
  </equation*>

  <\equation*>
    <wide|v<rsub|3>|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|2>>>>>
  </equation*>

  <underline|Two Extra Extremely Exasperating Inquires>

  <section*|Page ???>

  <underline|Question 1>

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|n+1>=3x<rsub|n>-y<rsub|n>>>|<row|<cell|y<rsub|n+1>=2x<rsub|n>>>>>>
  </equation*>

  (a) Denote <math|<wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|n>>>|<row|<cell|y<rsub|n>>>>>>>,
  Insert coefficients of <math|x<rsub|n>,y<rsub|n>> from both equations into
  a matrix <math|A>:

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-1>>|<row|<cell|2>|<cell|0>>>>>
  </equation*>

  Indeed,

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x<rsub|n+1>>>|<row|<cell|y<rsub|n+1>>>>>>\<equiv\><wide|v|\<vect\>><rsub|n+1>=A*<wide|v|\<vect\>><rsub|n>*
  </equation*>

  (b) Given initial populations stored in <math|<wide|v|\<vect\>><rsub|0>>,
  we shall prove inductively that

  <\equation*>
    <wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  For <math|n=0>:

  <\equation*>
    <wide|v|\<vect\>><rsub|0>=A<rsup|0>*<wide|v|\<vect\>><rsub|0>=I*<wide|v|\<vect\>><rsub|0>=<wide|v|\<vect\>><rsub|0>
    \<checkmark\>
  </equation*>

  Assume that the statement holds for <math|n=k>, that is:

  <\equation*>
    <wide|v|\<vect\>><rsub|k>=A<rsup|k>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  \ Show that it holds for <math|n=k+1>:

  <\equation*>
    <wide|v|\<vect\>><rsub|k+1>=A<rsup|k+1>*<wide|v|\<vect\>><rsub|0>=A*A<rsup|k>*<wide|v|\<vect\>><rsub|0>=A*<wide|v|\<vect\>><rsub|k>
  </equation*>

  Note here that we've utilized the fact that a matrix commutes with its
  power. This can be proved inductively, as for <math|k=0>:
  <math|A<rsup|0>=I> by definition, and assuming

  <\equation*>
    A<rsup|k+1>=A<rsup|k>*A
  </equation*>

  indeed:

  <\equation*>
    A<rsup|k+1>=A<rsup|k>*A=<around*|(|A*A<rsup|k-1>|)>*A=A*<around*|(|A<rsup|k-1>*A|)>=A*A<rsup|k>
  </equation*>

  So <math|A<rsup|k>*A=A*A<rsup|k>=A<rsup|k+1>>.

  By definition of our problem, <math|<wide|v|\<vect\>><rsub|k+1>=A*<wide|v|\<vect\>><rsub|k>>
  (just switch <math|n> for <math|k>), so the statement

  <\equation*>
    <wide|v|\<vect\>><rsub|k+1>=A<rsup|k+1>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  holds. In summary, we've proved inductively that

  <\equation*>
    <wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  as requested.

  (c) Find <math|\<lambda\>> that satisfy:

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=0
  </equation*>

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|-1>>|<row|<cell|2>|<cell|-\<lambda\>>>>>>=\<lambda\><rsup|2>-3\<lambda\>+2=<around*|(|\<lambda\>-2|)><around*|(|\<lambda\>-1|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=2,1
  </equation*>

  Find the eigenvectors <math|<around*|{|<wide|x|\<vect\>><rsub|i>|}>> that
  satisfy for each <math|i\<in\>1,2>: <math|<around*|(|A-\<lambda\><rsub|i>*I|)><wide|x|\<vect\>><rsub|i>=0>.

  <underline|<math|\<lambda\><rsub|1>=2>>

  <\equation*>
    A-\<lambda\><rsub|1>*I=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|2>|<cell|-2>>>>>
  </equation*>

  <\equation*>
    <wide|x|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|2>=1>>

  <\equation*>
    A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|2>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <wide|x|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>
  </equation*>

  (d) Find explicit formulas for <math|<wide|v|\<vect\>><rsub|n>> in terms of
  <math|n>. Well, we know that

  <\equation*>
    <wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  and we also know that if

  <\equation*>
    <choice|<tformat|<table|<row|<cell|A*<wide|x|\<vect\>><rsub|1>=2*<wide|x|\<vect\>><rsub|1>>>|<row|<cell|A*<wide|x|\<vect\>><rsub|2>=<wide|x|\<vect\>><rsub|2>>>>>>
  </equation*>

  Then

  <\equation*>
    <choice|<tformat|<table|<row|<cell|A<rsup|\<ell\>>*<wide|x|\<vect\>><rsub|1>=2<rsup|\<ell\>>*<wide|x|\<vect\>><rsub|1>>>|<row|<cell|A<rsup|\<ell\>>*<wide|x|\<vect\>><rsub|2>=1<rsup|\<ell\>>*<wide|x|\<vect\>><rsub|2>=<wide|x|\<vect\>><rsub|2>>>>>>
  </equation*>

  The fact that the <math|i<rsup|th>> eigenvalue of <math|A<rsup|\<ell\>>> is
  <math|\<lambda\><rsub|i><rsup|\<ell\>>> can also be proved by induction:

  For <math|\<ell\>=0>: (given <math|<wide|x|\<vect\>><rsub|i>> is the
  eigenvector corresponding to the <math|i<rsup|th>> eigenvector of <math|A>)

  <\equation*>
    A<rsup|0>*<wide|x|\<vect\>><rsub|i>=I*<wide|x|\<vect\>><rsub|i>=<wide|x|\<vect\>><rsub|i>=\<lambda\><rsub|i><rsup|0>*<wide|x|\<vect\>><rsub|i>
  </equation*>

  Assuming <math|A<rsup|\<ell\>>*<wide|x|\<vect\>><rsub|i>=\<lambda\><rsub|i><rsup|\<ell\>>*<wide|x|\<vect\>><rsub|i>>,
  we show that it holds for <math|\<ell\>+1>:

  <\equation*>
    A<rsup|\<ell\>+1>*<wide|x|\<vect\>><rsub|i>=A*A<rsup|\<ell\>>*<wide|x|\<vect\>><rsub|i>=A*\<lambda\><rsub|i><rsup|\<ell\>>*<wide|x|\<vect\>><rsub|i>=\<lambda\><rsub|i><rsup|\<ell\>>*A*<wide|x|\<vect\>><rsub|i>=\<lambda\><rsub|i><rsup|\<ell\>>*\<lambda\><rsub|i>*<wide|x|\<vect\>><rsub|i>=\<lambda\><rsub|i><rsup|\<ell\>+1>*<wide|x|\<vect\>><rsub|i>
  </equation*>

  thus proving the inductive step holds.

  Now, to compute <math|A<rsup|n>*<wide|v|\<vect\>><rsub|0>>, we need to
  express <math|<wide|v|\<vect\>><rsub|0>> as a linear combination of
  <math|<wide|x|\<vect\>><rsub|1>,<wide|x|\<vect\>><rsub|2>>. In other words,
  find scalars <math|c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>> such that

  <\equation*>
    c<rsub|1>*<wide|x|\<vect\>><rsub|1>+<wide|x|\<vect\>><rsub|2>=<wide|v|\<vect\>><rsub|0>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|0>>>|<row|<cell|y<rsub|0>>>>>>
  </equation*>

  <\equation*>
    c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|0>>>|<row|<cell|y<rsub|0>>>>>>
  </equation*>

  or, in other words,

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>*<bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|0>>>|<row|<cell|y<rsub|0>>>>>>=<wide|v|\<vect\>><rsub|0>
  </equation*>

  Denote <math|B> as the matrix comprising the eigenvectors of <math|A> as
  its columns:

  <\equation*>
    B=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|2>>>>>
  </equation*>

  then

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>>>>=B<rsup|-1>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  Compute <math|B<rsup|-1>> via Gauss-Seidal algorithm:

  <\equation*>
    <bmatrix|<tformat|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|2|2|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|2>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|2>\<rightarrow\>R<rsub|2>-R<rsub|1>><bmatrix|<tformat|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|2|2|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|-1>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|R<rsub|1>\<rightarrow\>R<rsub|1>-R<rsub|2>><bmatrix|<tformat|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|2|2|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|0>|<cell|2>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|-1>|<cell|1>>>>>
  </equation*>

  Therefore,

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  In conclusion,

  <\equation*>
    <wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>=A<rsup|n>*<around*|(|c<rsub|1>*<wide|x|\<vect\>><rsub|1>+c<rsub|2>*<wide|x|\<vect\>><rsub|2>|)>=c<rsub|1>*A<rsup|n>*<wide|x|\<vect\>><rsub|1>+c<rsub|2>*A<rsup|n>*<wide|x|\<vect\>><rsub|2>=c<rsub|1>*2<rsup|n>*<wide|x|\<vect\>><rsub|1>+c<rsub|2>*<wide|x|\<vect\>><rsub|2>
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x<rsub|n>>>|<row|<cell|y<rsub|n>>>>>>=c<rsub|1>*2<rsup|n>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>,<application-space|1em>c<rsub|1>,c<rsub|2>\<in\>\<bbb-R\>
  </equation*>

  where <math|c<rsub|1>,c<rsub|2>> are given by:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|2>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>*<wide|v|\<vect\>><rsub|0>
  </equation*>

  where <math|<wide|v|\<vect\>><rsub|0>> is the vector containing the initial
  populations. A final, expanded expression:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x<rsub|n>>>|<row|<cell|y<rsub|n>>>>>>=<around*|(|2*x<rsub|0>-y<rsub|0>|)>*2<rsup|n><bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+<around*|(|-x<rsub|0>+y<rsub|0>|)>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>
  </equation*>

  (e) If at some year, <math|<wide|v|\<vect\>><rsub|0>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>>>>>,
  then 7 years later:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|x<rsub|7>>>|<row|<cell|y<rsub|7>>>>>>=<around*|(|2\<cdot\>3-2|)>*2<rsup|7>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+<around*|(|-3+2|)>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>=*512<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>-<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>=<bmatrix|<tformat|<table|<row|<cell|511>>|<row|<cell|510>>>>>
  </equation*>

  <page-break*><underline|Question 2>

  <math|a<rsub|0>=0,a<rsub|1>=1>, and for <math|n\<gtr\>1>,
  <math|a<rsub|n>=a<rsub|n-1>+a<rsub|n-2>>.

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>,<application-space|1em><wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n>>>|<row|<cell|a<rsub|n+1>>>>>>
  </equation*>

  (a)

  <\equation*>
    <wide|v|\<vect\>><rsub|n+1>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n+1>>>|<row|<cell|a<rsub|n+2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n+1>>>|<row|<cell|a<rsub|n>+a<rsub|n+1>>>>>>
  </equation*>

  Now calculate <math|A*<wide|v|\<vect\>><rsub|n>>:

  <\equation*>
    A*<wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|a<rsub|n>>>|<row|<cell|a<rsub|n+1>>>>>>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n+1>>>|<row|<cell|a<rsub|n>+a<rsub|n+1>>>>>>
  </equation*>

  We got the same result, thus approving that
  <math|<wide|v|\<vect\>><rsub|n+1>=A*<wide|v|\<vect\>><rsub|n>>.

  (b) the diagonalized form of <math|A> is
  <math|D=<bmatrix|<tformat|<table|<row|<cell|\<lambda\><rsub|1>>|<cell|0>>|<row|<cell|0>|<cell|\<lambda\><rsub|2>>>>>>>,
  where <math|\<lambda\><rsub|1>,\<lambda\><rsub|2>> are the eigenvalues of
  <math|A>.

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|-\<lambda\>>|<cell|1>>|<row|<cell|1>|<cell|1-\<lambda\>>>>>>=\<lambda\><rsup|2>-\<lambda\>-1=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|1\<pm\><sqrt|1+4>|2>=<frac|1|2>\<pm\><frac|<sqrt|5>|2>
  </equation*>

  <\equation*>
    D=<bmatrix|<tformat|<table|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|1-<sqrt|5>|2>>>>>>
  </equation*>

  To find an expression for <math|A<rsup|n>>, we use two facts:

  <\enumerate>
    <item>For a diagonal matrix <math|D=<bmatrix|<tformat|<table|<row|<cell|D<rsub|11>>|<cell|0>>|<row|<cell|0>|<cell|D<rsub|22>>>>>>>

    <\equation*>
      D<rsup|n>=<bmatrix|<tformat|<table|<row|<cell|D<rsub|11><rsup|n>>|<cell|0>>|<row|<cell|0>|<cell|D<rsub|22><rsup|n>>>>>><tabular*|<tformat|<table|<row|<cell|>>>>>
    </equation*>

    <item>Let <math|A=V*D*V<rsup|-1>> where <math|V> is a <math|2\<times\>2>
    invertible matrix and <math|D> is a diagonal matrix, then

    <\equation*>
      A<rsup|n>=V*D<rsup|n>*V<rsup|-1>
    </equation*>
  </enumerate>

  The first fact can be proved by induction on <math|n>. The base case
  <math|n=1> is true by definition. Now suppose that

  <\equation*>
    D<rsup|k>=<bmatrix|<tformat|<table|<row|<cell|D<rsub|11><rsup|k>>|<cell|0>>|<row|<cell|0>|<cell|D<rsup|k><rsub|22>>>>>>
  </equation*>

  then we have (inductive step):

  <\equation*>
    D<rsup|k+1>=D*D<rsup|k>=<bmatrix|<tformat|<table|<row|<cell|D<rsub|11>>|<cell|0>>|<row|<cell|0>|<cell|D<rsub|22>>>>>>*<bmatrix|<tformat|<table|<row|<cell|D<rsub|11><rsup|k>>|<cell|0>>|<row|<cell|0>|<cell|D<rsup|k><rsub|22>>>>>>=<bmatrix|<tformat|<table|<row|<cell|D<rsub|11><rsup|k+1>>|<cell|0>>|<row|<cell|0>|<cell|D<rsup|k+1><rsub|22>>>>>>
  </equation*>

  Hence the inductive step holds, which completes the proof.

  The second fact can also be proved by induction on <math|n>. The base case
  <math|n=1> is true by definition (the equality <math|A=V*D*V<rsup|-1>> is
  called <em|eigendecomposition>, and holds when <math|A> is
  diagonaizable\Vand it is in this case). For the inductive step, assume that

  <\equation*>
    A<rsup|k>=V*D<rsup|k>*V<rsup|-1>
  </equation*>

  then we have

  <\equation*>
    A<rsup|k+1>=A*A<rsup|k>=<around*|(|V*D*V<rsup|-1>|)>*<around*|(|V*D<rsup|k>*V<rsup|-1>|)>=V*D<rsup|k+1>*V<rsup|-1>
  </equation*>

  Hence the inductive step holds, which completes the proof.

  The vector <math|V> is the eigenvectors of <math|A> adjacent to each other
  in ordering respective to the order of eigenvalues in <math|D>.

  Calculate the eigenvectors of <math|A>:

  <underline|<math|\<lambda\><rsub|1>=<frac|1+<sqrt|5>|2>>>

  <\equation*>
    A-\<lambda\><rsub|1>*I=<bmatrix|<tformat|<table|<row|<cell|-<frac|1+<sqrt|5>|2>>|<cell|1>>|<row|<cell|1>|<cell|1-<frac|1+<sqrt|5>|2>>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>>>>>
  </equation*>

  <underline|<math|\<lambda\><rsub|2>=<frac|1-<sqrt|5>|2>>>

  <\equation*>
    A-\<lambda\><rsub|2>*I=<bmatrix|<tformat|<table|<row|<cell|-<frac|1-<sqrt|5>|2>>|<cell|1>>|<row|<cell|1>|<cell|1-<frac|1-<sqrt|5>|2>>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|<frac|1-<sqrt|5>|2>>>>>>
  </equation*>

  In conclusion,

  <\equation*>
    V=<bmatrix|<tformat|<table|<row|<cell|<wide|v|\<vect\>><rsub|1>>|<cell|<wide|v|\<vect\>><rsub|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|<frac|1-<sqrt|5>|2>>>>>>
  </equation*>

  Let's find <math|V<rsup|-1>> via Gauss-Seidal method:

  <\equation*>
    <bmatrix|<tformat|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|2|2|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|<frac|1-<sqrt|5>|2>>|<cell|0>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>R<rsub|2>-<frac|<around*|(|1+<sqrt|5>|)>|2>R<rsub|1>>>>>>><bmatrix|<tformat|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|2|2|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|-<frac|1+<sqrt|5>|2>>|<cell|1>>>>><long-arrow|\<rubber-rightarrow\>|<tabular*|<tformat|<table|<row|<cell|R<rsub|2>\<rightarrow\>-R<rsub|2>>>|<row|<cell|R<rsub|1>\<rightarrow\>R<rsub|1>-R<rsub|2>>>>>>>\<ldots\>
  </equation*>

  <\equation*>
    V<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|<frac|1-<sqrt|5>|2>>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|-1>>>>>
  </equation*>

  Thus,

  <\equation*>
    A<rsup|n>=V*D<rsup|n>*V<rsup|-1>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|<frac|1-<sqrt|5>|2>>>>>><bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>>|<cell|0>>|<row|<cell|0>|<cell|<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>>>><bmatrix|<tformat|<table|<row|<cell|<frac|1-<sqrt|5>|2>>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    A<rsup|n>=<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>>|<cell|<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>>|<cell|<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>><bmatrix|<tformat|<table|<row|<cell|<frac|1-<sqrt|5>|2>>|<cell|1>>|<row|<cell|<frac|1+<sqrt|5>|2>>|<cell|-1>>>>>
  </equation*>

  <\equation*>
    A<rsup|n>=<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>*<around*|(|<frac|1-<sqrt|5>|2>|)>+<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n><around*|(|<frac|1+<sqrt|5>|2>|)>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>*<around*|(|<frac|1-<sqrt|5>|2>|)>+<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>*<around*|(|<frac|1+<sqrt|5>|2>|)>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>
  </equation*>

  <\equation*>
    A<rsup|n>=<bmatrix|<tformat|<table|<row|<cell|-<around*|[|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n-1>+<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n-1>|]>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|-<around*|[|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>+<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>|]>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>
  </equation*>

  (c) Given

  <\equation*>
    <wide|v|\<vect\>><rsub|0>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|0>>>|<row|<cell|a<rsub|1>>>>>>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|n>=A<rsup|n>*<wide|v|\<vect\>><rsub|0>=<bmatrix|<tformat|<table|<row|<cell|-<around*|[|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n-1>+<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n-1>|]>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|-<around*|[|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>+<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>|]>>|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>
  </equation*>

  <\equation*>
    <wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>>>|<row|<cell|<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n+1>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n+1>>>>>>
  </equation*>

  It is clear that the result obeys the relation

  <\equation*>
    <wide|v|\<vect\>><rsub|n>=<bmatrix|<tformat|<table|<row|<cell|a<rsub|n>>>|<row|<cell|a<rsub|n+1>>>>>>
  </equation*>

  which was given to us as a definition. Thus, we can use it to extract the
  formula for <math|a<rsub|n>>

  <\equation*>
    a<rsub|n>=<around*|(|<frac|1+<sqrt|5>|2>|)><rsup|n>-<around*|(|<frac|1-<sqrt|5>|2>|)><rsup|n>
  </equation*>

  this is just the subtraction of the eigenvalues of <math|A> to the
  <math|n<rsup|th>> power!
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|?|3>>
    <associate|auto-3|<tuple|?|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      355> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      367> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      ???> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>