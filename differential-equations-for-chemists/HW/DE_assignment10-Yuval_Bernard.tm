<TeXmacs|2.1.2>

<style|<tuple|generic|SIUnits-simple>>

<\body>
  <doc-data|<doc-title|Assignment 10>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date:
  </author-affiliation>>>>

  <section*|Page 381>

  <underline|Question 1>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-2>>|<row|<cell|2>|<cell|-2>>>>>*<wide|x|\<vect\>>
  </equation*>

  Denote\ 

  <\equation*>
    A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-2>>|<row|<cell|2>|<cell|-2>>>>>
  </equation*>

  Solution is of the form <math|<wide|z|\<vect\>>*\<mathe\><rsup|\<lambda\>*t>>.
  <math|<wide|z|\<vect\>>,\<lambda\>> are given by calculating the
  eigenvalues and eigenvectors of <math|A>. First find eigenvalues:

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|-2>>|<row|<cell|2>|<cell|-2-\<lambda\>>>>>>=<around*|(|\<lambda\>-3|)>*<around*|(|\<lambda\>+2|)>+4=\<lambda\><rsup|2>-\<lambda\>-2=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|1\<pm\><sqrt|1+8>|2>=2,-1
  </equation*>

  Find corresponding eigenvectors. For <math|\<lambda\>=2>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|1>|<cell|-2>>|<row|<cell|2>|<cell|-4>>>>>*<wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>>>>
  </equation*>

  For <math|\<lambda\>=-1>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|4>|<cell|-2>>|<row|<cell|2>|<cell|-1>>>>>*<wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>
  </equation*>

  General solution is a linear combination of
  <math|<around*|{|z<rsub|i>*\<mathe\><rsup|\<lambda\><rsub|i>*t>|}>>:

  <\equation*>
    <wide|x|\<vect\>><around*|(|t|)>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>>>>*\<mathe\><rsup|2*t>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>*\<mathe\><rsup|-t>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  The solution diverges as <math|t\<rightarrow\>\<infty\>>.

  <underline|Question 7>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>>|<row|<cell|8>|<cell|-6>>>>>*<wide|x|\<vect\>>,<application-space|1em>A=<bmatrix|<tformat|<table|<row|<cell|4>|<cell|-3>>|<row|<cell|8>|<cell|-6>>>>>
  </equation*>

  As noted in the book, <math|A> has an eigenvalue
  <math|\<lambda\><rsub|1>=0>. Calculate the second eigenvalue:

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|4-\<lambda\>>|<cell|-3>>|<row|<cell|8>|<cell|-6-\<lambda\>>>>>>=<around*|(|\<lambda\>-4|)>*<around*|(|\<lambda\>+6|)>+24=\<lambda\><rsup|2>+2*\<lambda\>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|2>=-2
  </equation*>

  Calculate eigenvectors: for <math|\<lambda\><rsub|1>=0>:

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|4>>>>>
  </equation*>

  For <math|\<lambda\><rsub|2>=-2>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|6>|<cell|-3>>|<row|<cell|8>|<cell|-4>>>>>*<wide|z|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>
  </equation*>

  General solution is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|4>>>>>+c<rsub|2>*\<mathe\><rsup|-2*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  <\underline>
    Question 11
  </underline>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|1>>>>>
  </equation*>

  Note that the sum of all columns is equal (sum = 4). We can infer that
  <math|<wide|z|\<vect\>><rsub|1>=<around*|[|1,1,1|]><rsup|T>> is an
  eigenvector with an eigenvalue <math|\<lambda\><rsub|1>=4>. Find the other
  eigenvalues:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|1-\<lambda\>>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|2-\<lambda\>>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|1-\<lambda\>>>>>>>|<cell|=>|<cell|<around*|(|1-\<lambda\>|)>*<around*|[|<around*|(|2-\<lambda\>|)>*<around*|(|1-\<lambda\>|)>-1|]>-<around*|[|1-\<lambda\>-2|]>+2*<around*|[|1-4+2\<lambda\>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<lambda\>|)>*<around*|[|\<lambda\><rsup|2>-3\<lambda\>+1|]>+<around*|(|\<lambda\>+1|)>+<around*|(|4\<lambda\>-6|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|2>-3\<lambda\><rsub|>+1-\<lambda\><rsup|3>+3\<lambda\><rsup|2>-\<lambda\>+5\<lambda\>-5>>|<row|<cell|>|<cell|=>|<cell|-\<lambda\><rsup|3>+4\<lambda\><rsup|2>+\<lambda\>-4=0>>>>
  </eqnarray*>

  <\equation*>
    \<lambda\><rsup|3>-4\<lambda\><rsup|2>-\<lambda\>+4=0
  </equation*>

  Factor out <math|\<lambda\>=4>:

  <\equation*>
    <around*|(|\<lambda\>-4|)>*<around*|(|\<lambda\>-1|)>*<around*|(|\<lambda\>+1|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|2,3>=1,-1
  </equation*>

  Find eigenvectors. For <math|\<lambda\><rsub|2>=1>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|0>>>>>*<wide|z|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|1>>>>>
  </equation*>

  For <math|\<lambda\><rsub|3>=-1>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|1>|<cell|3>|<cell|1>>|<row|<cell|2>|<cell|1>|<cell|2>>>>>*<wide|z|\<vect\>><rsub|3>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>>>>
  </equation*>

  General solution is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|4*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>*\<mathe\><rsup|t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|1>>>>>+c<rsub|3>*\<mathe\><rsup|-t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|-1>>>>>,<application-space|1em>c<rsub|1,2,3>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  <underline|Question 12>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|0>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|3>>>>>*<wide|x|\<vect\>>,<application-space|1em>A=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|0>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|3>>>>>*
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<det|<tformat|<table|<row|<cell|3-\<lambda\>>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|-\<lambda\>>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|3-\<lambda\>>>>>>>|<cell|=>|<cell|<around*|(|3-\<lambda\>|)>*<around*|[|\<lambda\><rsup|2>-3\<lambda\>-4|]>-2*<around*|(|6-2\<lambda\>-8|)>+4*<around*|(|4+4\<lambda\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|3-\<lambda\>|)>*<around*|(|\<lambda\>-4|)>*<around*|(|\<lambda\>+1|)>+20<around*|(|\<lambda\>+1|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<lambda\>+1|)>*<around*|(|\<lambda\><rsup|2>-7\<lambda\>-8|)>=-<around*|(|\<lambda\>+1|)><rsup|2>*<around*|(|\<lambda\>-8|)>=0>>>>
  </eqnarray*>

  <\equation*>
    \<lambda\><rsub|1,2,3>=-1,-1,8
  </equation*>

  Find associated eigenvectors. For <math|\<lambda\><rsub|1,2>=-1>:

  <math|n-rank<around*|(|A-\<lambda\><rsub|1,2>*I|)>=3-1=2> linearly
  independent eigenvectors span the eigenspace:\ 

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|4>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|1>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|4>>>>>*<wide|z|\<vect\>><rsub|1,2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|1>>>>>,<application-space|1em><wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-2>>|<row|<cell|1>>>>>
  </equation*>

  For <math|\<lambda\><rsub|3>=8>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|-5>|<cell|2>|<cell|4>>|<row|<cell|2>|<cell|-8>|<cell|2>>|<row|<cell|4>|<cell|2>|<cell|-5>>>>>*<wide|z|\<vect\>><rsub|3>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|3>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|2>>>>>
  </equation*>

  General solution is:

  <\equation*>
    <wide|x|\<vect\>>=*\<mathe\><rsup|-t>*<around*|(|c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|1>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-2>>|<row|<cell|1>>>>>|)>+c<rsub|3>*\<mathe\><rsup|8*t>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|1>>|<row|<cell|2>>>>>,<application-space|1em>c<rsub|1,2,3>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  <underline|Question 15>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|5>|<cell|-1>>|<row|<cell|3>|<cell|1>>>>>*<wide|x|\<vect\>>,<application-space|1em><wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-1>>>>>
  </equation*>

  Find eigenvalues:

  <\equation*>
    <det|<tformat|<table|<row|<cell|A-\<lambda\>*I>>>>>=<around*|(|\<lambda\>-5|)>*<around*|(|\<lambda\>-1|)>+3=\<lambda\><rsup|2>-6\<lambda\>+8=<around*|(|\<lambda\>-4|)>*<around*|(|\<lambda\>-2|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=4,2
  </equation*>

  Find eigenvectors. For <math|\<lambda\><rsub|1>=4>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|1>|<cell|-1>>|<row|<cell|3>|<cell|-3>>>>>*<wide|z|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>
  </equation*>

  For <math|\<lambda\>=2>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|3>|<cell|-1>>|<row|<cell|3>|<cell|-1>>>>>*<wide|z|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|3>>>>>
  </equation*>

  General solution is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|4*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>*\<mathe\><rsup|2*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|3>>>>>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  Find <math|c<rsub|1,2>> with given ICs

  <\equation*>
    t=0:<application-space|1em>c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|3>>>>>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-1>>>>>
  </equation*>

  Rewrite problem in matrix form:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|3>>>>>*<bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-1>>>>>
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|3>>>>><rsup|-1>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-1>>>>>=<frac|1|3-1>*<bmatrix|<tformat|<table|<row|<cell|3>|<cell|-1>>|<row|<cell|-1>|<cell|1>>>>>*<bmatrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-1>>>>>=<bmatrix|<tformat|<table|<row|<cell|3.5>>|<row|<cell|-1.5>>>>>
  </equation*>

  The unique solution is:

  <\equation*>
    <wide|x|\<vect\>><around*|(|t|)>=<frac|7|2>*\<mathe\><rsup|4*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>-<frac|3|2>*\<mathe\><rsup|2*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|3>>>>>,<application-space|1em>\<forall\>t
  </equation*>

  As <math|t\<rightarrow\>\<infty\>> the solution diverges.

  <underline|Question 29>

  Given the 2nd order ODE:

  <\equation>
    a*y<rprime|''>+b*y<rprime|'>+c*y=0
  </equation>

  and its corresponding characteristic equation:

  <\equation>
    a*r<rsup|2>+b*r+c=0
  </equation>

  (a) Set

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1>=y>>|<row|<cell|x<rsub|2>=y<rprime|'>>>>>>
  </equation*>

  Differentiate:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x<rsub|1><rprime|'>=x<rsub|2>>>|<row|<cell|x<rsub|2><rprime|'>=-<frac|b|a>*x<rsub|2>-<frac|c|a>*x<rsub|1>>>>>>
  </equation*>

  Write in matrix form:

  <\equation*>
    <wide|x|\<vect\>>=<bmatrix|<tformat|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>>>>
  </equation*>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|-<frac|c|a>>|<cell|-<frac|b|a>>>>>>*<wide|x|\<vect\>>
  </equation*>

  In short:

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=A*<wide|x|\<vect\>>,<application-space|1em>A=<bmatrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|-<frac|c|a>>|<cell|-<frac|b|a>>>>>>
  </equation*>

  (b) The equation that determines the eigenvalues of the coefficient matrix
  <math|A> is given by calculating <math|det <around*|(|A-\<lambda\>*I|)>>.

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=<det|<tformat|<table|<row|<cell|-\<lambda\>>|<cell|1>>|<row|<cell|-<frac|c|a>>|<cell|-<frac|b|a>-\<lambda\>>>>>>=\<lambda\><rsup|2>+<frac|b|a>*\<lambda\>+<frac|c|a>=0
  </equation*>

  Multiply by <math|a> to get:

  <\equation*>
    a*\<lambda\><rsup|2>+b*\<lambda\>+c=0
  </equation*>

  As requested to show, we've reproduced eq. (2).

  <underline|Question 30>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|-<frac|1|10>>|<cell|<frac|3|40>>>|<row|<cell|<frac|1|10>>|<cell|-<frac|1|5>>>>>>*<wide|x|\<vect\>>,<application-space|1em><wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|-17>>|<row|<cell|-21>>>>>
  </equation*>

  (a) Find eigenvalues and eigenvectors of <math|A> (coefficient matrix):

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=<around*|(|\<lambda\>+<frac|1|10>|)>*<around*|(|\<lambda\>+<frac|1|5>|)>-<frac|3|400>=\<lambda\><rsup|2>+<frac|3|10>*\<lambda\>+<frac|1|80>=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|-0.3\<pm\><sqrt|0.09-0.05>|2>=-0.05,-0.25
  </equation*>

  For <math|\<lambda\><rsub|1>=-0.05>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|-0.05>|<cell|<frac|3|40>>>|<row|<cell|<frac|1|10>>|<cell|-0.15>>>>>*<wide|z|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>>>>
  </equation*>

  For <math|\<lambda\><rsub|2>=-0.25>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|0.15>|<cell|<frac|3|40>>>|<row|<cell|<frac|1|10>>|<cell|0.05>>>>>*<wide|z|\<vect\>><rsub|2>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|2>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>>>>
  </equation*>

  General solution is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|-0.05*t>*<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>>>>+c<rsub|2>*\<mathe\><rsup|-0.25*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>>>>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>t\<gtr\>0
  </equation*>

  Apply ICs:

  <\equation*>
    c<rsub|1>*<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>>>>+c<rsub|2>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>>>>=<bmatrix|<tformat|<table|<row|<cell|-17>>|<row|<cell|-21>>>>>
  </equation*>

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|c<rsub|1>>>|<row|<cell|c<rsub|2>>>>>>=<bmatrix|<tformat|<table|<row|<cell|3>|<cell|1>>|<row|<cell|2>|<cell|-2>>>>><rsup|-1>*<bmatrix|<tformat|<table|<row|<cell|-17>>|<row|<cell|-21>>>>>=<frac|1|8><bmatrix|<tformat|<table|<row|<cell|-2>|<cell|-1>>|<row|<cell|-2>|<cell|3>>>>>*<bmatrix|<tformat|<table|<row|<cell|17>>|<row|<cell|21>>>>>=<bmatrix|<tformat|<table|<row|<cell|-<frac|55|8>>>|<row|<cell|<frac|29|8>>>>>>
  </equation*>

  Unique solution is:

  <\equation*>
    <wide|x|\<vect\>>=-<frac|55|8>*\<mathe\><rsup|-0.05*t>*<bmatrix|<tformat|<table|<row|<cell|3>>|<row|<cell|2>>>>>+<frac|29|8>*\<mathe\><rsup|-0.25*t>*<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>>>>,<application-space|1em>t\<gtr\>0
  </equation*>

  <section*|Page 390>

  Questions 2,10 (no phase diagrams)

  <underline|Question 2>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|-1>|<cell|-4>>|<row|<cell|1>|<cell|-1>>>>>*<wide|x|\<vect\>>
  </equation*>

  Find eigenvalues and eigenvectors:

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=\<lambda\><rsup|2>+2\<lambda\>+5=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|-2\<pm\>4\<mathi\>|2>=-1\<pm\>2\<mathi\>
  </equation*>

  Find eigenvector for <math|\<lambda\>=-1-2\<mathi\>>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|2\<mathi\>>|<cell|-4>>|<row|<cell|1>|<cell|2\<mathi\>>>>>>*<wide|z|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|-2\<mathi\>>>|<row|<cell|1>>>>>
  </equation*>

  Pair of solutions is:

  <\equation*>
    \<mathe\><rsup|<around*|(|-1-2\<mathi\>|)>t>*<bmatrix|<tformat|<table|<row|<cell|-2\<mathi\>>>|<row|<cell|1>>>>>=\<mathe\><rsup|-t>*<around*|(|cos
    2t-\<mathi\>*sin 2t|)>*<bmatrix|<tformat|<table|<row|<cell|-2\<mathi\>>>|<row|<cell|1>>>>>=*\<cdots\>*
  </equation*>

  <\equation*>
    *\<cdots\>*=\<mathe\><rsup|-t>*<bmatrix|<tformat|<table|<row|<cell|-2\<mathi\>*cos
    2t-2*sin 2t>>|<row|<cell|cos 2t-\<mathi\>*sin
    2t>>>>>=\<mathe\><rsup|-t>*<bmatrix|<tformat|<table|<row|<cell|-2*sin
    2t>>|<row|<cell|cos 2t>>>>>-\<mathi\>*\<mathe\><rsup|-t>*<bmatrix|<tformat|<table|<row|<cell|2*cos
    2t>>|<row|<cell|sin 2t>>>>>
  </equation*>

  General solution is

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|-t>*<bmatrix|<tformat|<table|<row|<cell|-2*sin
    2t>>|<row|<cell|cos 2t>>>>>+c<rsub|2>*\<mathe\><rsup|-t>*<bmatrix|<tformat|<table|<row|<cell|2*cos
    2t>>|<row|<cell|sin 2t>>>>>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  As <math|t\<rightarrow\>\<infty\>> the solution approaches zero.

  <underline|Question 10>

  <\equation*>
    <wide|x|\<vect\>><rprime|'>=<bmatrix|<tformat|<table|<row|<cell|-3>|<cell|2>>|<row|<cell|-1>|<cell|-1>>>>>*<wide|x|\<vect\>>,<application-space|1em><wide|x|\<vect\>><around*|(|0|)>=<bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>>>>
  </equation*>

  Find eigenvalues and eigenvectors of the coefficient matrix.

  <\equation*>
    det <around*|(|A-\<lambda\>*I|)>=\<lambda\><rsup|2>+4\<lambda\>+5=0
  </equation*>

  <\equation*>
    \<lambda\><rsub|1,2>=<frac|-4\<pm\>2\<mathi\>|2>=-2\<pm\>\<mathi\>
  </equation*>

  Find eigenvector for <math|\<lambda\>=-2-\<mathi\>>:

  <\equation*>
    <bmatrix|<tformat|<table|<row|<cell|-1+\<mathi\>>|<cell|2>>|<row|<cell|-1>|<cell|1+\<mathi\>>>>>>*<wide|z|\<vect\>><rsub|1>=<wide|0|\<vect\>>
  </equation*>

  <\equation*>
    <wide|z|\<vect\>><rsub|1>=<bmatrix|<tformat|<table|<row|<cell|1+\<mathi\>>>|<row|<cell|1>>>>>
  </equation*>

  Pair of solutions is:

  <\equation*>
    \<mathe\><rsup|<around*|(|-2-\<mathi\>|)>*t>*<bmatrix|<tformat|<table|<row|<cell|1+\<mathi\>>>|<row|<cell|1>>>>>=\<mathe\><rsup|-2*t>*<around*|(|cos
    t-\<mathi\>*sin t|)>*<bmatrix|<tformat|<table|<row|<cell|1+\<mathi\>>>|<row|<cell|1>>>>>=*\<cdots\>*
  </equation*>

  <\equation*>
    *\<cdots\>*=\<mathe\><rsup|-2*t>*<bmatrix|<tformat|<table|<row|<cell|cos
    t+\<mathi\>*cos t-\<mathi\>*sin t+sin t>>|<row|<cell|cos t-\<mathi\>*sin
    t>>>>>=\<mathe\><rsup|-2*t>*<bmatrix|<tformat|<table|<row|<cell|cos t+sin
    t>>|<row|<cell|co st>>>>>+\<mathi\>*\<mathe\><rsup|-2t>*<bmatrix|<tformat|<table|<row|<cell|cos
    t-sin t>>|<row|<cell|-sin t>>>>>
  </equation*>

  General solution is:

  <\equation*>
    <wide|x|\<vect\>>=c<rsub|1>*\<mathe\><rsup|-2*t>*<bmatrix|<tformat|<table|<row|<cell|cos
    t+sin t>>|<row|<cell|co st>>>>>+c<rsub|2>*\<mathe\><rsup|-2t>*<bmatrix|<tformat|<table|<row|<cell|cos
    t-sin t>>|<row|<cell|-sin t>>>>>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  As <math|t\<rightarrow\>\<infty\>> the solution approaches zero.
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|../../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-2|<tuple|2|2|../../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      381> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      390> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>