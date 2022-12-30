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

  Questions 16, 18, 21, 22, 24

  ++ two more extra extremely exasperating enquirers.

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|../../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|?|1|../../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
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
    </associate>
  </collection>
</auxiliary>