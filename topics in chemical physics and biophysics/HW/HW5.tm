<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Homework 5>>

  <\ornamented>
    <\question>
      <with|font-series|bold|Ternary mixture>.

      Consider a lattice model for a liquid mixture of three species
      <math|A>, B, and <math|C>. As with binary mixtures, assume that all
      particles <math|N=N<rsub|A>+N<rsub|B>+N<rsub|C>> fill the whole
      lattice.

      <\enumerate>
        <item>Write an expression for the entropy of mixing.

        <item>Using the mean-field approximation, write an expression for the
        energy of mixing <math|U> in terms of the binary interaction
        parameters <math|\<chi\>>.

        <item>Write an expression for the chemical potential
        <math|\<mu\><rsub|A>> of <math|A>.
      </enumerate>
    </question>
  </ornamented>

  <\enumerate>
    <item>The multiplicity is given by the multinomial

    <\equation>
      W=<frac|N!|N<rsub|A>!*N<rsub|B>!*N<rsub|C>!>
    </equation>

    The entropy of mixing is given by <math|S=k*ln W>, using Stirling's
    approximation.

    <\eqnarray*>
      <tformat|<table|<row|<cell|S<rsub|mix>>|<cell|=>|<cell|k*ln
      <around*|(|<frac|N!|N<rsub|A>!*N<rsub|B>!*N<rsub|C>!>|)>>>|<row|<cell|>|<cell|=>|<cell|k*<around*|[|ln
      N!-<around*|(|ln N<rsub|A>!+ln N<rsub|B>!+ln
      N<rsub|C>!|)>|]>>>|<row|<cell|>|<cell|\<approx\>>|<cell|k*<around*|[|N*ln
      N-N-<around*|(|N<rsub|A>*ln N<rsub|A>-N<rsub|A>+N<rsub|B>*ln
      N<rsub|B>-N<rsub|B>+N<rsub|C>*ln N<rsub|C>-N<rsub|C>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|k*<around*|(|N*ln
      N-N<rsub|A>*ln N<rsub|A>-N<rsub|B>*ln N<rsub|B>-N<rsub|C>*ln
      N<rsub|C>|)>>>|<row|<cell|>|<cell|=>|<cell|k*<around*|(|N<rsub|A>*ln
      N+N<rsub|B>*ln N+N<rsub|C>*ln N-N<rsub|A>*ln N<rsub|A>-N<rsub|B>*ln
      N<rsub|B>-N<rsub|C>*ln N<rsub|C>|)>>>|<row|<cell|>|<cell|=>|<cell|k**<around*|(|N<rsub|A>*ln
      <frac|N|N<rsub|A>>+N<rsub|B>*ln <frac|N|N<rsub|B>>+N<rsub|C>*ln
      <frac|N|N<rsub|C>>|)>>>|<row|<cell|>|<cell|=>|<cell|-k*N*<around*|(|<frac|N<rsub|A>|N>*ln
      <frac|N<rsub|A>|N>+<frac|N<rsub|B>|N>*ln
      <frac|N<rsub|B>|N>+<frac|N<rsub|C>|N>*ln
      <frac|N<rsub|C>|N>|)><eq-number>>>>>
    </eqnarray*>

    Define <math|x<rsub|i>=N<rsub|i>/N> for <math|i\<in\>A,B,C>. Then, we get

    <\equation>
      <frac|S<rsub|mix>|N*k>=-x<rsub|A>*ln x<rsub|A>-x<rsub|B>*ln
      x<rsub|B>-x<rsub|C>*ln x<rsub|C>
    </equation>

    We can further simplify be writing <math|x<rsub|C>=1-x<rsub|A>-x<rsub|B>><text-dots>

    <item>There are six possible bond types: <math|A\<nocomma\>A>,
    <math|B\<nocomma\>B>, <math|C\<nocomma\>C>, <math|A\<nocomma\>B>,
    <math|A\<nocomma\>C>, <math|B\<nocomma\>C>.

    The total energy of the system is

    <\equation>
      U<rsub|mix>=m<rsub|A\<nocomma\>A>*w<rsub|A\<nocomma\>A>+m<rsub|B\<nocomma\>B>*w<rsub|B\<nocomma\>B>+m<rsub|C\<nocomma\>C>*w<rsub|C\<nocomma\>C>+m<rsub|A\<nocomma\>B>*w<rsub|A\<nocomma\>B>+m<rsub|A\<nocomma\>C>*w<rsub|A\<nocomma\>C>+m<rsub|B\<nocomma\>C>*w<rsub|B\<nocomma\>C>
    </equation>

    where <math|m<rsub|i\<nocomma\>j>> is the number of <math|i\<nocomma\>j>
    bonds and <math|w<rsub|i\<nocomma\>j>> is the contact energy of the
    <math|i\<nocomma\>j> bond. Express these in terms of
    <math|N<rsub|A>,N<rsub|B>,N<rsub|C>>. Each lattice site has <math|z>
    sides, and every contact involves two sides. The total number of sides of
    type <math|i> is

    <\equation>
      z*N<rsub|i>=2*m<rsub|i\<nocomma\>i>+<big|sum><rsub|j\<neq\>i>m<rsub|i\<nocomma\>j>
      .
    </equation>

    Therefore,

    <\equation>
      m<rsub|i\<nocomma\>i>=<frac|z*N<rsub|i>-<big|sum><rsub|j\<neq\>i>m<rsub|i\<nocomma\>j>|2>
      .
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|U<rsub|mix>>|<cell|=>|<cell|<frac|z*N<rsub|A>-m<rsub|A\<nocomma\>B>-m<rsub|A\<nocomma\>C>|2>*w<rsub|A\<nocomma\>A>+<frac|z*N<rsub|B>-m<rsub|A\<nocomma\>B>-m<rsub|B\<nocomma\>C>|2>*w<rsub|B\<nocomma\>B>+<frac|z*N<rsub|C>-m<rsub|A\<nocomma\>C>-m<rsub|B\<nocomma\>C>|2>>>|<row|<cell|>|<cell|+>|<cell|m<rsub|A\<nocomma\>B>*w<rsub|A\<nocomma\>B>+m<rsub|A\<nocomma\>C>*w<rsub|A\<nocomma\>C>+m<rsub|B\<nocomma\>C>*w<rsub|B\<nocomma\>C>
      .<eq-number>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|U<rsub|mix>>|<cell|=>|<cell|<frac|z*w<rsub|A\<nocomma\>A>|2>*N<rsub|A>+<frac|z*w<rsub|B\<nocomma\>B>|2>*N<rsub|B>+<frac|z*w<rsub|C\<nocomma\>C>|2>*N<rsub|C>+<around*|(|w<rsub|A\<nocomma\>B>-<frac|w<rsub|A\<nocomma\>A>+w<rsub|B\<nocomma\>B>|2>|)>*m<rsub|A\<nocomma\>B>>>|<row|<cell|>|<cell|>|<cell|+<around*|(|w<rsub|A\<nocomma\>C>-<frac|w<rsub|A\<nocomma\>A>+w<rsub|C\<nocomma\>C>|2>|)>*m<rsub|A\<nocomma\>C>+<around*|(|w<rsub|B\<nocomma\>C>-<frac|w<rsub|B\<nocomma\>B>+w<rsub|C\<nocomma\>C>|2>|)>m<rsub|B\<nocomma\>C>
      .<eq-number>>>>>
    </eqnarray*>

    Now, let's apply the mean-field approximation. The probability that
    molecule <math|i> occupies a neighboring site of molecule <math|j> is

    <\equation>
      p<rsub|i>=<frac|N<rsub|i>|N>=x<rsub|i> .
    </equation>

    The number of <math|i\<nocomma\>j> contacts is approximately equal to the
    number of type <math|j> molecules times <math|z> available sites times
    the probability that moleule <math|i> neighbors molecule <math|j>. In
    other words,

    <\equation>
      m<rsub|i\<nocomma\>j>\<approx\>z*N<rsub|i>*<frac|N<rsub|j>|N>=z*N<rsub|i>*x<rsub|j>
      .
    </equation>

    Input (10) into (8) to get

    <\eqnarray*>
      <tformat|<table|<row|<cell|U<rsub|mix>>|<cell|\<approx\>>|<cell|<frac|z*w<rsub|A\<nocomma\>A>|2>*N<rsub|A>+<frac|z*w<rsub|B\<nocomma\>B>|2>*N<rsub|B>+<frac|z*w<rsub|C\<nocomma\>C>|2>*N<rsub|C>+z***<around*|(|w<rsub|A\<nocomma\>B>-<frac|w<rsub|A\<nocomma\>A>+w<rsub|B\<nocomma\>B>|2>|)>**<frac|N<rsub|A>*N<rsub|B>|N>>>|<row|<cell|>|<cell|>|<cell|+z*<around*|(|w<rsub|A\<nocomma\>C>-<frac|w<rsub|A\<nocomma\>A>+w<rsub|C\<nocomma\>C>|2>|)>**<frac|N<rsub|A>*N<rsub|C>|N>+z*<around*|(|w<rsub|B\<nocomma\>C>-<frac|w<rsub|B\<nocomma\>B>+w<rsub|C\<nocomma\>C>|2>|)>**<frac|N<rsub|B>*N<rsub|C>|N>*<eq-number>>>>>
    </eqnarray*>

    \ Identify the binary exchange parameter
    <math|\<chi\><rsub|i\<nocomma\>j>> as

    <\equation>
      \<chi\><rsub|i\<nocomma\>j>=<frac|z|k*T>*<around*|(|w<rsub|i\<nocomma\>j>-<frac|w<rsub|i\<nocomma\>i>+w<rsub|j\<nocomma\>j>|2>|)>
      .
    </equation>

    The total internal energy is then

    <\equation*>
      U<rsub|mix>=<frac|z*w<rsub|A\<nocomma\>A>|2>*N<rsub|A>+<frac|z*w<rsub|B\<nocomma\>B>|2>*N<rsub|B>+<frac|z*w<rsub|C\<nocomma\>C>|2>*N<rsub|C>+k*T*\<chi\><rsub|A\<nocomma\>B>*<frac|N<rsub|A>*N<rsub|B>|N>+k*T*\<chi\><rsub|A\<nocomma\>C>*<frac|N<rsub|A>*N<rsub|C>|N>+k*T*\<chi\><rsub|B\<nocomma\>C>*<frac|N<rsub|B>*N<rsub|C>|N>
      .
    </equation*>

    <item>Derive the chemical potential from the Helmholtz free energy.

    <\equation>
      \<mu\><rsub|A>=<around*|(|<frac|\<partial\>F|\<partial\>N<rsub|A>>|)><rsub|T,N<rsub|B>,N<rsub|C>>
      .
    </equation>

    <\equation*>
      F<rsub|mix>=U<rsub|mix>-T*S<rsub|mix>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|F<rsub|mix>>|<cell|=>|<cell|<frac|z*w<rsub|A\<nocomma\>A>|2>*N<rsub|A>+<frac|z*w<rsub|B\<nocomma\>B>|2>*N<rsub|B>+<frac|z*w<rsub|C\<nocomma\>C>|2>*N<rsub|C>+k*T*\<chi\><rsub|A\<nocomma\>B>*<frac|N<rsub|A>*N<rsub|B>|N>+k*T*\<chi\><rsub|A\<nocomma\>C>*<frac|N<rsub|A>*N<rsub|C>|N>+k*T*\<chi\><rsub|B\<nocomma\>C>*<frac|N<rsub|B>*N<rsub|C>|N>>>|<row|<cell|>|<cell|>|<cell|-k*T**<around*|(|N<rsub|A>*ln
      <frac|N|N<rsub|A>>+N<rsub|B>*ln <frac|N|N<rsub|B>>+N<rsub|C>*ln
      <frac|N|N<rsub|C>>|)> .<eq-number>>>>>
    </eqnarray*>

    Differentiate <math|F<rsub|mix>> wrt <math|N<rsub|A>> to get the chemical
    potential <math|\<mu\><rsub|A>>.

    There are some specific derivatives we have to calculate.

    <\equation>
      <frac|\<partial\>|\<partial\>N<rsub|i>><around*|(|<frac|N<rsub|i>*N<rsub|j>|N<rsub|i>+N<rsub|j>+N<rsub|k>>|)>=N<rsub|j>*<frac|N<rsub|i>+N<rsub|j>+N<rsub|k>-N<rsub|i>|<around*|(|N<rsub|i>+N<rsub|j>+N<rsub|k>|)><rsup|2>>=x<rsub|j>*<around*|(|x<rsub|j>*+x<rsub|k>|)>
    </equation>

    <\equation>
      <frac|\<partial\>|\<partial\>N<rsub|i>><around*|(|<frac|N<rsub|j>*N<rsub|k>|N<rsub|i>+N<rsub|j>+N<rsub|k>>|)>=<frac|-N<rsub|j>*N<rsub|k>|<around*|(|N<rsub|i>+N<rsub|j>+N<rsub|k>|)><rsup|2>>=-x<rsub|j>*x<rsub|k>
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|\<partial\>|\<partial\>N<rsub|i>><around*|(|N<rsub|i>*ln
      <frac|N<rsub|i>+N<rsub|j>+N<rsub|k>|N<rsub|i>>|)>>|<cell|=>|<cell|<frac|\<partial\>|\<partial\>N<rsub|i>><around*|[|N<rsub|i>*ln
      <around*|(|N<rsub|i>+N<rsub|j>+N<rsub|k>|)>-N<rsub|i>*ln
      N<rsub|i>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|ln
      <around*|(|N<rsub|i>+N<rsub|j>+N<rsub|k>|)>+<frac|N<rsub|i>|N<rsub|i>+N<rsub|j>+N<rsub|k>>-ln
      N<rsub|i>-1|]>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|i>-ln
      x<rsub|i>-1<eq-number>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|\<partial\>|\<partial\>N<rsub|i>><around*|(|N<rsub|j>*ln
      <frac|N<rsub|i>+N<rsub|j>+N<rsub|k>|N<rsub|j>>|)>>|<cell|=>|<cell|<frac|\<partial\>|\<partial\>N<rsub|i>><around*|[|N<rsub|j>*ln
      <around*|(|N<rsub|i>+N<rsub|j>+N<rsub|k>|)>-N<rsub|j>*ln
      N<rsub|j>|]>>>|<row|<cell|>|<cell|=>|<cell|<frac|N<rsub|j>|N<rsub|i>+N<rsub|j>+N<rsub|k>>=x<rsub|j><eq-number>>>>>
    </eqnarray*>

    Therefore,

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><rsub|A>>|<cell|=>|<cell|<frac|z*w<rsub|A\<nocomma\>A>|2>+k*T*\<chi\><rsub|A\<nocomma\>B>**x<rsub|B>*<around*|(|x<rsub|B>+x<rsub|C>|)>+k*T*\<chi\><rsub|A\<nocomma\>C>*x<rsub|C>*<around*|(|x<rsub|C>+x<rsub|B>|)>-k*T*\<chi\><rsub|B\<nocomma\>C>*x<rsub|B>*x<rsub|C>>>|<row|<cell|>|<cell|>|<cell|-k*T*<around*|[|<around*|(|x<rsub|A>-ln
      x<rsub|A>-1|)>+x<rsub|B>+x<rsub|C>|]>>>|<row|<cell|\<mu\><rsub|A>>|<cell|=>|<cell|<frac|z*w<rsub|A\<nocomma\>A>|2>+k*T*\<chi\><rsub|A\<nocomma\>B>**x<rsub|B>*<around*|(|x<rsub|B>+x<rsub|C>|)>+k*T*\<chi\><rsub|A\<nocomma\>C>*x<rsub|C>*<around*|(|x<rsub|C>+x<rsub|B>|)>-k*T*\<chi\><rsub|B\<nocomma\>C>*x<rsub|B>*x<rsub|C>+k*T*ln
      x<rsub|A><eq-number>>>>>
    </eqnarray*>
  </enumerate>

  <\ornamented>
    <\question>
      <with|font-series|bold|Enthalpy of mixing>.

      For a mixture of benzene and n-heptane having equal mole fractions,
      <math|x=0.5> and temperature <math|T=300 \<up-K\>>, the enthalpy of
      mixing is <math|\<Delta\>H<rsub|mix>=200 cal mol<rsup|-1>>. Compute
      <math|\<chi\><rsub|A\<nocomma\>B>>.
    </question>
  </ornamented>

  We may assume that due to mixing only liquids, the volume and pressure
  don't change, and that approximately,

  <\equation*>
    \<Delta\>H<rsub|mix>\<approx\>\<Delta\>U<rsub|mix> .
  </equation*>

  For a binary solution, the lattice model predicts that the change in
  internal energy due to mixing is

  <\equation*>
    \<Delta\>U<rsub|mix>=R*T*\<chi\><rsub|A\<nocomma\>B>*x<rsub|A>*x<rsub|B>,
  </equation*>

  so

  <\equation*>
    \<chi\><rsub|A\<nocomma\>B>\<approx\><frac|\<Delta\>H<rsub|mix>|R*T*x<rsub|A>*<around*|(|1-x<rsub|A>|)>>=<frac|4\<times\>200
    cal mol<rsup|-1>|1.987*cal*mol<rsup|-1>*\<up-K\><rsup|-1>\<times\>300
    \<up-K\>>=1.48
  </equation*>

  <\ornamented>
    <\question>
      <with|font-series|bold|Entropy of hydrophobic effect>.

      \ The entropy of dissolving benzene in water at high dilution is
      approximately \ 14 cal <math|mol<rsup|-1> \<up-K\><rsup|-1>> at
      <math|T=15<rsup|\<circ\>>\<up-C\>>.

      <\enumerate>
        <item>How does this compare to the mixing entropy?\ 

        <item>Speculate on the origin of this entropy.\ 
      </enumerate>
    </question>
  </ornamented>

  <\enumerate>
    <item>The maximum value of entropy for mixing is for <math|x=0.5>, where

    <\equation*>
      <frac|S<rsub|mix><rsup|max>|n*R>=2\<times\><around*|(|-0.5*ln
      0.5|)>=-0.69 .
    </equation*>

    <\equation*>
      \<Longrightarrow\><space|1em><frac|S<rsub|mix><rsup|max>|n>=-0.69\<times\>1.987
      cal mol<rsup|-1> \<up-K\><rsup|-1>=-1.37 \ cal mol<rsup|-1>
      \<up-K\><rsup|-1> .
    </equation*>

    <math|S<rsub|min><rsup|max>> is considerably smaller than the hydrophobic
    entropy.

    <item>The lattice model for entropy of mixing does not take into account
    the fact that water forms complex, very ordered geometries around the
    hydrophobic substance. As a result, entropy of mixing water and
    hydrophobic molecules is positive instead of negative.
  </enumerate>
</body>

<\initial>
  <\collection>
    <associate|ornament-color|light grey>
    <associate|page-medium|paper>
  </collection>
</initial>