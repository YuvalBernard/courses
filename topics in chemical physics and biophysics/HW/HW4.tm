<TeXmacs|2.1.2>

<style|<tuple|generic|pagella-font>>

<\body>
  <doc-data|<doc-title|HW4>>

  <\question>
    Binding to a surface.

    Consider a particle with two states, bonded to a surface and non-bonded.
    The non-bonded state is higher in energy by the amount
    <math|\<varepsilon\><rsub|0>>. Compute the heat capacity <math|C<rsub|V>>
    in units <math|N*k> (Number of particles and Boltzmann constant) if
    <math|T=300K> and <math|\<varepsilon\><rsub|0>=1.2 kcal mol<rsup|-1>>.
  </question>

  <\answer*>
    Use the Schottky two-state model.

    The partition function is the sum of Boltzmann factors for each level

    <\equation*>
      q=1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>> .
    </equation*>

    The probabilities of being in each energy level are

    <\equation*>
      p<rsub|1><rsup|\<star\>>=<frac|1|q>
      ,<space|2em>p<rsub|2><rsup|\<star\>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|q>
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
  </answer*>

  <\question>
    Protein conformations.

    Assume a protein has six discrete conformations, labeled A to F, with
    energies<strong| A)> -3 kcal/mol, <strong|B)> -5 kcal/mol, <strong|C)> -3
    kcal/mol,<strong| D)> 1 kcal/mol,<strong| E)> 2kcal/mol, <strong|F)>
    1kcal/mol.

    Write an expression for <math|p<around*|(|i|)>> of finding the protein in
    conformation <math|i>.

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
</body>

<\initial>
  <\collection>
    <associate|math-font|math-pagella>
  </collection>
</initial>