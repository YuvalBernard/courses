<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Homework 3>>

  <\ornamented>
    <\question>
      <with|font-series|bold|Finding a fundamental equation>.

      While the Gibbs free energy <math|G> is the fundamental function of the
      natural variables <math|<around*|(|T,P,N|)>>, growing biological cells
      often regulate not the numbers of molecules <math|N>, but the chemical
      potentials <math|\<mu\>>, i.e., they control concentrations. What is
      the fundamental function <math|Z> of the natural variables
      <math|<around*|(|T,p,\<mu\>|)>>?
    </question>
  </ornamented>

  We know that

  <\equation>
    \<mathd\>G=-S*\<mathd\>T+V \<mathd\>p+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>
    .
  </equation>

  Define

  <\equation>
    Z\<equiv\>G-<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*N<rsub|j> .
  </equation>

  Differentiate.

  <\equation>
    \<mathd\>Z=\<mathd\>G-<big|sum><rsub|j=1><rsup|M><around*|(|\<mu\><rsub|j>*\<mathd\>N<rsub|j>+N<rsub|j>*\<mathd\>\<mu\><rsub|j>|)>
    .
  </equation>

  Insert (1) into (3).

  <\equation*>
    \<mathd\>Z=-S \<mathd\>T+V \<mathd\>P-<big|sum><rsub|j=1><rsup|M><around*|(|\<mu\><rsub|j>*\<mathd\>N<rsub|j>+N<rsub|j>*\<mathd\>\<mu\><rsub|j>-\<mu\><rsub|j>*\<mathd\>N<rsub|j>|)>
  </equation*>

  <\framed>
    <\equation*>
      \<mathd\>Z=-S \<mathd\>T+V \<mathd\>P-<big|sum><rsub|j=1><rsup|M>N<rsub|j>*\<mathd\>\<mu\><rsub|j>
    </equation*>
  </framed>

  <\ornamented>
    <\question>
      <with|font-series|bold|A thermodynamic cycle for mutations in protein
      folding>.

      Suppose that you can measure the stability of a wild-type protein,
      <math|\<Delta\>G<rsub|1>=G<rsub|folded>-G<rsub|unfolded>>, which is the
      free energy difference between folded and unfolded states. A mutant of
      that protein has a single amino acid replacement. Design a
      thermodynamic cycle that will help you find the free energy difference
      <math|\<Delta\>G<rsub|2>=G<rsub|folded,mutant>-G<rsub|folded,wildtype>>.
      Assume that the effect of mutations on the free energy of the unfolded
      state is negligible.
    </question>
  </ornamented>

  \;

  <\padded-center>
    <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-end|\|\<gtr\>|gr-auto-crop|true|<graphics||<point|-4|2>|<point|-4|-2>|<point|4|-2>|<text-at|Unfolded|<point|-5.6961734356396345|1.9332749040878423>>|<text-at|Folded|<point|4.35873|2.04043>>|<text-at|Unfolded,
    mutant|<point|-7.017776822330996|-2.0672542664373594>>||<text-at|Folded,
    mutant|<point|4.28729|-1.97796>>|<point|3.939327291969837|1.9861423468712793>|<with|arrow-end|\|\<gtr\>|<line|<point|3.93933|1.98614>|<point|-3.811697975922741|2.004001852096838>>>|<math-at|-\<Delta\>G<rsub|1>|<point|-0.6505655509988094|2.2183159148035454>>|<with|arrow-end|\|\<gtr\>|<line|<point|3.93933|1.98614>|<point|3.957186797195396|-1.7565815584071967>>>|<math-at|\<Delta\>G<rsub|2>|<point|4.13578|0.154386>>|<with|arrow-end|\|\<gtr\>|<line|<point|-4|-2>|<point|3.814310755390925|-2.0244741367905807>>>|<math-at|\<Delta\>G<rsub|3>|<point|-0.311235|-1.7923>>|<with|arrow-end|\|\<gtr\>|<line|<point|-4|2>|<point|-3.9545740177272126|-1.7744410636327557>>>|<math-at|\<Delta\>G<rsub|4>|<point|-3.75812|0.154386>>>>
  </padded-center>

  \;

  Free energy change of mutating a folded protein is equivalent to cost of
  unfolding a wildtype, mutating it, and folding the mutant.

  <\equation*>
    \<Delta\>G<rsub|2>=-\<Delta\>G<rsub|1>+\<Delta\>G<rsub|4>+\<Delta\>G<rsub|3>
  </equation*>

  As <math|\<Delta\>G<rsub|4>> is negligible,

  <\equation*>
    \<Delta\>G<rsub|2>=-\<Delta\>G<rsub|1>+\<Delta\>G<rsub|3> .
  </equation*>

  <\ornamented>
    <\question>
      <with|font-series|bold|Why does increasing temperature increase
      disorder?>

      Systems become disordered as the temperature is increased. For example,
      liquids and solids become gases, solutions mix, adsorbates desorb. Why?
    </question>
  </ornamented>

  Increasing the temperature increases the internal energy of the system, and
  thus the availability of states to populate. As a result, the multiplicity
  of states of the system increases, and the entropy, or disorder, increases
  by definition.

  <\ornamented>
    <\question>
      <with|font-series|bold|The transition temperature of simple polymer
      collapse>.

      When a polymer is put into certain solvents, it collapses to a compact
      structure.

      Consider a two-dimensional lattice polymer with four monomers and a
      closed test tube (<math|V=constant>). The terminal monomer units of the
      polymer can interact intra-molecularly with the sticking energy
      <math|-\<varepsilon\>>, where <math|\<varepsilon\>\<gtr\>0>, thus
      resulting in a compact conformation. All other conformations are called
      open conformations.

      Your experiment can distinguish between compact and open states. Given
      that the closed state has a multiplicity of <math|W<rsub|C>=1> and the
      open state has <math|W<rsub|O>=4>, derive an expression for the
      collapse temperature <math|T<rsub|c>=f<around*|(|\<varepsilon\>|)>>, at
      which there are equal populations of open and compact sturctures.
    </question>
  </ornamented>

  To find <math|T<rsub|C>>, the temperature at equilibrium, we must have an
  expression for the free energy of the system. As the volume is constant, we
  deal with the Helmholtz free energy, for which

  <\equation*>
    \<Delta\>F=\<Delta\>U-T*\<Delta\>S .
  </equation*>

  At equilibrium <math|\<Delta\>F=0>, and the process at hand is transition
  from an open state to a closed state.

  <\equation*>
    \<Delta\>U=-\<varepsilon\>,<space|2em>\<Delta\>S=k*ln
    <frac|W<rsub|C>|W<rsub|O>>=-k*ln 4
  </equation*>

  Therefore,

  <\equation*>
    \<Delta\>F=0=-\<varepsilon\>+T<rsub|C>*k*ln 4
  </equation*>

  <\equation*>
    T<rsub|C>=<frac|\<varepsilon\>|k*ln 4> .
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|ornament-color|light grey>
  </collection>
</initial>