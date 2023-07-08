<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Homework 4>>

  <\ornamented>
    <\question>
      <with|font-series|bold|Binding to a surface.>

      Consider a particle with two states, bonded to a surface and
      non-bonded. The non-bonded state is higher in energy by the amount
      <math|\<varepsilon\><rsub|0>>. Compute the heat capacity
      <math|C<rsub|V>> in units <math|N*k> (Number of particles and Boltzmann
      constant) if <math|T=300K> and <math|\<varepsilon\><rsub|0>=1.2 kcal
      mol<rsup|-1>>.
    </question>
  </ornamented>

  Use the Schottky two-state model.

  The partition function is the sum of Boltzmann factors for each level

  <\equation*>
    q=1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>> .
  </equation*>

  The probabilities of being in each energy level are

  <\equation*>
    p<rsub|1><rsup|\<star\>>=<frac|1|q> ,<space|2em>p<rsub|2><rsup|\<star\>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|q>
    .
  </equation*>

  The average energy per particle is therefore

  <\equation*>
    <around*|\<\<langle\>\>|\<varepsilon\>|\<\<rangle\>\>>=<big|sum>p<rsub|j><rsup|\<star\>>*\<varepsilon\><rsub|j>=\<varepsilon\><rsub|0>*p<rsub|2><rsup|\<star\>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>*\<varepsilon\><rsub|0>|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>>
    .
  </equation*>

  The total internal energy is

  <\equation*>
    U=N*<around*|\<\<langle\>\>|\<varepsilon\>|\<\<rangle\>\>>=N*<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>*\<varepsilon\><rsub|0>|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>>=N*\<varepsilon\><rsub|0>*<frac|1|1+\<mathe\><rsup|\<beta\>*\<varepsilon\><rsub|0>>>.
  </equation*>

  The heat capacity is defined as

  <\equation*>
    C<rsub|V>=<frac|\<partial\>U|\<partial\>T>=<frac|\<partial\>U|\<partial\>\<beta\>>*<frac|\<partial\>\<beta\>|\<partial\>T>
    .
  </equation*>

  <\equation*>
    <frac|\<partial\>\<beta\>|\<partial\>T>=-<frac|1|k*T<rsup|2>>,<space|2em><frac|\<partial\>U|\<partial\>\<beta\>>=N*\<varepsilon\><rsub|0>*<around*|(|-\<varepsilon\><rsub|0>*\<mathe\><rsup|\<beta\>\<varepsilon\><rsub|0>>*<frac|1|<around*|(|1+\<mathe\><rsup|\<beta\>*\<varepsilon\><rsub|0>>|)><rsup|2>>|)>
    .
  </equation*>

  Therefore,

  <\equation*>
    <frac|C<rsub|V>|N*k>=\<varepsilon\><rsub|0><rsup|2>*\<beta\><rsup|2>*<frac|\<mathe\><rsup|\<beta\>*\<varepsilon\><rsub|0>>|<around*|(|1+\<mathe\><rsup|\<beta\>*\<varepsilon\><rsub|0>>|)><rsup|2>>
    .
  </equation*>

  Insert given data to get

  <\equation*>
    \<beta\>*\<varepsilon\><rsub|0>=<frac|1.2\<times\>10<rsup|3>
    <frac|cal|mol>|1.987*<frac|cal|mol <math-up|K>>*300 <math-up|K>>=2.013,
  </equation*>

  <\equation*>
    <frac|C<rsub|V>|N*k>=<around*|(|2.013|)><rsup|2>\<cdot\><frac|\<mathe\><rsup|-2.013>|<around*|(|1+\<mathe\><rsup|-2.013>|)><rsup|2>>=0.421
    .
  </equation*>

  <\ornamented>
    <\question>
      <with|font-series|bold|Protein conformations.>

      Assume a protein has six discrete conformations, labeled A to F, with
      energies<strong| A)> -3 kcal/mol, <strong|B)> -5 kcal/mol, <strong|C)>
      -3 kcal/mol,<strong| D)> 1 kcal/mol,<strong| E)> 2kcal/mol, <strong|F)>
      1kcal/mol.

      Write an expression for <math|p<around*|(|i|)>> of finding the protein
      in conformation <math|i>.

      Write an expression for <math|p<around*|(|E|)>> of finding the protein
      having energy <math|E>.

      Use the results above to compute the following probabilities:

      <\enumerate>
        <item><math|p<around*|(|state B|)>>

        <item><math|p<around*|(|State A|)>>

        <item><math|p<around*|(|State D|)>>

        <item><math|p<around*|(|1 kcal/mol|)>>

        <item><math|p<around*|(|-5 kcal/mol|)>>
      </enumerate>

      What is the averag eenergy of the ensemble of conformations?
    </question>
  </ornamented>

  The partition function is the sum of Boltzmann factors.

  <\eqnarray*>
    <tformat|<table|<row|<cell|q>|<cell|=>|<cell|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|A>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|B>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|C>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|D>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|E>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|F>>>>|<row|<cell|>|<cell|=>|<cell|2*\<mathe\><rsup|3\<beta\>>+\<mathe\><rsup|5\<beta\>>+2*\<mathe\><rsup|-\<beta\>>+\<mathe\><rsup|-2*\<beta\>>
    .>>>>
  </eqnarray*>

  The probability of finding the protein in conformation
  <math|i\<in\>A,B,\<ldots\>,F> is, according to Boltzmann's Law

  <\framed>
    <\equation*>
      p<around*|(|i|)>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>|q>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>|2*\<mathe\><rsup|3\<beta\>>+\<mathe\><rsup|5\<beta\>>+2*\<mathe\><rsup|-\<beta\>>+\<mathe\><rsup|-2*\<beta\>>>
      .
    </equation*>
  </framed>

  The probability of finding the protein having energy
  <math|E\<in\>\<varepsilon\><rsub|A>,\<varepsilon\><rsub|B>,\<ldots\>,\<varepsilon\><rsub|F>>
  is

  <\framed>
    <\equation*>
      p<around*|(|E|)>=<frac|W<around*|(|E|)>*\<mathe\><rsup|-\<beta\>*E>|q>=<frac|W<around*|(|E|)>*\<mathe\><rsup|-\<beta\>*E>|2*\<mathe\><rsup|3\<beta\>>+\<mathe\><rsup|5\<beta\>>+2*\<mathe\><rsup|-\<beta\>>+\<mathe\><rsup|-2*\<beta\>>>
    </equation*>
  </framed>

  where <math|W<around*|(|E|)>> is the multiplicity of states for the
  energy/Fluctu, which in our case is either 1 or 2.

  The average energy of the ensemble of conformations is given by

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>>|<cell|=>|<cell|<big|sum><rsub|i>\<varepsilon\><rsub|i>*p<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|2\<times\><around*|(|-3|)><frac|*\<mathe\><rsup|3*\<beta\>>|q>-5*<frac|\<mathe\><rsup|5*\<beta\>>|q>+2\<times\><frac|\<mathe\><rsup|-\<beta\>>|q>+2*<frac|\<mathe\><rsup|-2\<beta\>>|q>>>|<row|<cell|>|<cell|=>|<cell|<frac|-6*\<mathe\><rsup|3*\<beta\>>-5*\<mathe\><rsup|5*\<beta\>>+2*\<mathe\><rsup|-\<beta\>>+2*\<mathe\><rsup|-2*\<beta\>>|2*\<mathe\><rsup|3\<beta\>>+\<mathe\><rsup|5\<beta\>>+2*\<mathe\><rsup|-\<beta\>>+\<mathe\><rsup|-2*\<beta\>>>>>>>
  </eqnarray*>

  <\ornamented>
    <\question>
      <with|font-series|bold|><with|font-series|bold|Fluctuations in
      enthalpy>.

      The mean square fluctuations in enthalpy for processes at constant
      pressure are given by

      <\equation*>
        <around*|\<langle\>|\<delta\>H<rsup|2>|\<rangle\>>=<around*|\<langle\>|<around*|(|H-<around*|\<langle\>|H|\<rangle\>>|)><rsup|2>|\<rangle\>>=k*T<rsup|2>*C<rsub|p>
        .
      </equation*>

      What is the root-mean-square enthalpy fluctuation
      <math|<around*|\<langle\>|\<delta\>H<rsup|2>|\<rangle\>><rsup|1/2>> for
      water at <math|T=300 \<up-K\>>?
    </question>
  </ornamented>

  Search for <math|C<rsub|p>> of water in the internet and calculate
  <math|<sqrt|k*T<rsup|2>*C<rsub|p>>> where <math|T=300 \<up-K\>>.

  <\ornamented>
    <\question>
      <with|font-series|bold|The transition temperature for protein folding.>

      Folding and unfolding of proteins is often treated with a two-energy
      level model. Assume that the addition of denaturants, e.g., small
      molecules such as urea or guanidinium chloride that destabilize
      proteins, change the free energies of the folded and unfolded state
      according to

      <\equation*>
        F<rsub|f>=F<rsub|f,0>+m<rsub|f>*<around*|[|D|]>,
      </equation*>

      and

      <\equation*>
        F<rsub|u>=F<rsub|u,0>+m<rsub|u>*<around*|[|D|]> .
      </equation*>
    </question>

    Here, the subscript <with|font-shape|italic|0> referes to conditions in
    the absence of denaturant <math|D>, and the subscripts <math|f> and
    <math|u> refer to folded and unfolded conformations, respectively. Given
    the partition function

    <\equation*>
      q=w<rsub|f>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|f,0>+m<rsub|f>*<around*|[|D|]>|)>>+w<rsub|u>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|u,0>+m<rsub|u>*<around*|[|D|]>|)>>,
    </equation*>

    find an expression for the transition temperature <math|T<rsub|M>> as a
    function of the denaturant concentration <math|D>.

    Hint: <math|T<rsub|M>> is the temperature at which the heat capacity
    <math|C<rsub|v>> has its maximum.
  </ornamented>

  The heat capacity <math|C<rsub|v>> is defined as

  <\equation>
    C<rsub|v>=<frac|\<partial\>U|\<partial\>T>=-<frac|1|k*T<rsup|2>>*<around*|(|<frac|\<partial\>U|\<partial\>\<beta\>>|)>=-k*\<beta\><rsup|2>*<around*|(|<frac|\<partial\>U|\<partial\>\<beta\>>|)>.
  </equation>

  The internal energy <math|U> can be derived from the partition function.

  <\equation>
    U=-<frac|1|q>*<around*|(|<frac|\<partial\>q|\<partial\>\<beta\>>|)>
  </equation>

  Calculate the derivative of the partition function wrt <math|\<beta\>>.

  <\equation*>
    <frac|\<partial\>q|\<partial\>\<beta\>>=-w<rsub|f>*<around*|(|E<rsub|f,0>+m<rsub|f>*<around*|[|D|]>|)>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|f,0>+m<rsub|f>*<around*|[|D|]>|)>>-w<rsub|u>*<around*|(|E<rsub|u,0>+m<rsub|u>*<around*|[|D|]>|)>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|u,0>+m<rsub|u>*<around*|[|D|]>|)>>
    .
  </equation*>

  So,

  <\equation>
    U=<frac|w<rsub|f>*<around*|(|E<rsub|f,0>+m<rsub|f>*<around*|[|D|]>|)>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|f,0>+m<rsub|f>*<around*|[|D|]>|)>>+w<rsub|u>*<around*|(|E<rsub|u,0>+m<rsub|u>*<around*|[|D|]>|)>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|u,0>+m<rsub|u>*<around*|[|D|]>|)>>|w<rsub|f>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|f,0>+m<rsub|f>*<around*|[|D|]>|)>>+w<rsub|u>*\<mathe\><rsup|-\<beta\>*<around*|(|E<rsub|u,0>+m<rsub|u>*<around*|[|D|]>|)>>>
    .
  </equation>

  Find the derivative of <math|U> wrt <math|\<beta\>>. To simplify the
  expression, denote

  <\equation*>
    E<rsub|f>\<equiv\>E<rsub|f,0>+m<rsub|f>*<around*|[|D|]>,<space|2em>E<rsub|u>=E<rsub|u,0>+m<rsub|u>*<around*|[|D|]>
  </equation*>

  <\equation*>
    U=<frac|w<rsub|f>*E<rsub|f>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*E<rsub|u>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|w<rsub|f>**\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>**\<mathe\><rsup|-\<beta\>*E<rsub|u>>>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|\<partial\>U|\<partial\>\<beta\>>>|<cell|=>|<cell|<frac|-<around*|(|w<rsub|f>*E<rsub|f><rsup|2>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*E<rsub|u><rsup|2>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)>*<around*|(|w<rsub|f>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)>+<around*|(|w<rsub|f>*E<rsub|f>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*E<rsub|u>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)><rsup|2>|<around*|(|w<rsub|f>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)><rsup|2>>
    .>>>>
  </eqnarray*>

  <\equation*>
    C<rsub|v>=-k*\<beta\><rsup|2>*<frac|-<around*|(|w<rsub|f>*E<rsub|f><rsup|2>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*E<rsub|u><rsup|2>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)>*<around*|(|w<rsub|f>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)>+<around*|(|w<rsub|f>*E<rsub|f>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*E<rsub|u>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)><rsup|2>|<around*|(|w<rsub|f>*\<mathe\><rsup|-\<beta\>*E<rsub|f>>+w<rsub|u>*\<mathe\><rsup|-\<beta\>*E<rsub|u>>|)><rsup|2>>
  </equation*>

  In order to find <math|T<rsub|M>>, find when
  <math|\<partial\>C<rsub|v>/\<partial\>\<beta\>=0>. This is a gruesome
  calculation<text-dots>

  A simplification could be done by setting <math|E<rsub|f>\<equiv\>0> and
  <math|E<rsub|u>=\<Delta\>E>.
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|ornament-color|light grey>
  </collection>
</initial>