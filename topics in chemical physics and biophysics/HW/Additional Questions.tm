<TeXmacs|2.1.2>

<style|generic>

<\body>
  <\ornamented>
    <\question>
      The probability of a sequqnce.

      Given one <strong|S, T, C, R> and two <strong|E>, what is the
      probability that the sequence <strong|SECRET> will occur by chance?
    </question>
  </ornamented>

  <\answer*>
    The number of combinations of these letters is given by the multinomial.

    <\equation*>
      W=<frac|6!|1!\<times\>1!\<times\>1!*\<times\>1!\<times\>*1!\<times\>2!>=360.
    </equation*>

    The probability of observing one of these sequences, e.g.
    <strong|SECRET>, is 1/360.
  </answer*>

  <\ornamented>
    <\question>
      Predicting compositions of independent events.

      Suppose you roll a die three times.

      <\enumerate>
        <item>What is the probability of getting a total of two <strong|5>'s
        from all three rolls of the dice?

        <item>What is the probability of getting a total of <em|at least> two
        <strong|5>'s from all three rolls of the die?
      </enumerate>
    </question>
  </ornamented>

  <\answer*>
    \;

    <\enumerate>
      <item>There are 3 events that result in the requested outcome:\ 

      <\equation*>
        <text|X55, 5X5, 55X>
      </equation*>

      the probability is 3 times the proability of observing a 5,5, and not
      5.

      <\equation*>
        P=3\<times\><frac|1|6>\<times\><frac|1|6>\<times\><frac|5|6>=<frac|5|72>
        .
      </equation*>

      This could also be calculated from the multinomial distribution.

      <\equation*>
        P=<frac|3!|2!\<times\>1!>\<times\><around*|(|<frac|1|6>|)><rsup|2>\<times\><around*|(|<frac|5|6>|)>=<frac|5|72>
        .
      </equation*>

      <item>Add the probability of observing a 555.

      <\equation*>
        P=<frac|5|72>+<around*|(|<frac|1|6>|)><rsup|3>=<frac|2|27> .
      </equation*>
    </enumerate>
  </answer*>

  <\ornamented>
    <\question>
      Predicting coincidence.

      Your statistical mechanics class has 25 students. What is the
      probability that at least two classmates have the same birthday?
    </question>
  </ornamented>

  <\answer*>
    There are 365 days a year. the probability is <math|1-<wide| P|\<bar\>>>,
    where <math|<wide| P|\<bar\>>> is the probability that none have
    coinciding birthdays, or the probability of choosing <math|m> distinct
    days of the year.

    <\equation*>
      <wide| P|\<bar\>>=1\<times\><frac|364|365>\<times\><frac|363|365>\<times\>\<cdots\>\<times\><frac|365-m|365>=<frac|365!|<around*|(|365-m|)>!\<times\>365<rsup|m>>
    </equation*>

    <\equation*>
      P=1-<frac|365!|<around*|(|365-m|)>!\<times\>365<rsup|m>>
    </equation*>
  </answer*>

  <\ornamented>
    <\question>
      Maximum entropy for three-sided die.

      You have a three-sided die, with numbers <strong|1, 2, 3> on the sides.
      For a series of <math|N> dice rolls, you observe an average score
      <math|\<alpha\>> per roll using the maximum entropy principle.

      Write expressions that show how to compute the relative probabilities
      of occurence of the three sides, <math|n<rsub|1><rsup|\<star\>>/N>,
      <math|n<rsub|2><rsup|\<star\>>/N>, <math|n<rsub|3><rsup|\<star\>>/N>,
      if <math|\<alpha\>> is given.
    </question>
  </ornamented>

  <\answer*>
    We shall use the formula for entropy and the method of Lagrange
    multipliers.

    <\equation*>
      S=-k*<big|sum><rsub|i=1><rsup|t>p<rsub|i>*ln p<rsub|i> .
    </equation*>

    The constraints are

    <\equation*>
      g=<big|sum><rsub|i=1><rsup|t>p<rsub|i>=1;<space|2em>h=<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*p<rsub|i>=\<alpha\>
    </equation*>

    Find the partial derivatives.

    <\equation*>
      \<mathd\>S=-k*<big|sum><rsub|i=1><rsup|t><around*|(|1+ln
      p<rsub|i>|)>*\<mathd\>p<rsub|i>
    </equation*>

    <\equation*>
      \<mathd\>g=<big|sum><rsub|i=1><rsup|t>\<mathd\>p<rsub|i>=0
    </equation*>

    <\equation*>
      \<mathd\>h=<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*\<mathd\>p<rsub|i>=0
    </equation*>

    Using the method of Lagrange multipliers, we have

    <\equation*>
      <around*|(|\<mathd\>S-a*\<mathd\>g-b*\<mathd\>h|)>=<big|sum><rsub|i=1><rsup|t><around*|(|<frac|\<mathd\>S|\<mathd\>p<rsub|i>>-a*<frac|\<mathd\>g|\<mathd\>p<rsub|i>>-b*<frac|\<mathd\>h|\<mathd\>p<rsub|i>>|)>*\<mathd\>p<rsub|i>=0,
    </equation*>

    which means that

    <\equation*>
      -k*<around*|(|1+ln p<rsub|i>|)>*-a-b*\<varepsilon\><rsub|i>=0
    </equation*>

    <\equation*>
      ln p<rsub|i>=-<frac|a+b*\<varepsilon\><rsub|i>+k|k>
    </equation*>

    <\equation*>
      p<rsub|i>=\<mathe\><rsup|-<around*|(|a+\<varepsilon\><rsub|i>+k|)>/k> .
    </equation*>

    Use the normalization constraint

    <\equation*>
      <big|sum><rsub|i=1><rsup|t>p<rsub|i>=1
    </equation*>

    to divide the expression for <math|p<rsub|i>> by one.

    <\equation*>
      p<rsub|i>=<frac|\<mathe\><rsup|-<around*|(|a+b*\<varepsilon\><rsub|i>+k|)>/k>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-<around*|(|a+b*\<varepsilon\><rsub|i>+k|)>/k>>=<frac|\<mathe\><rsup|-<around*|(|a+k|)>/k>\<times\>\<mathe\><rsup|-b*\<varepsilon\><rsub|i>/k>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-<around*|(|a+k|)>/k>\<times\>\<mathe\><rsup|-b*\<varepsilon\><rsub|i>/k>>=<frac|\<mathe\><rsup|-b*\<varepsilon\><rsub|i>/k>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-b*\<varepsilon\><rsub|i>/k>>\<equiv\><frac|\<mathe\><rsup|-b*\<varepsilon\><rsub|i>/k>|q>.
    </equation*>

    Use the other constraint equation.

    <\equation*>
      <big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>\<times\><frac|\<mathe\><rsup|-b*\<varepsilon\><rsub|i>/k>|q>=\<alpha\>.
    </equation*>

    Expand the term

    <\equation*>
      <frac|\<mathe\><rsup|-b/k>+2*\<mathe\><rsup|-2*b/k>+3*\<mathe\><rsup|-3*b/k>|\<mathe\><rsup|-b/k>+\<mathe\><rsup|-2*b/k>+\<mathe\><rsup|-3*b/k>>=\<alpha\>,
    </equation*>

    and multiply numerator and denominator by <math|\<mathe\><rsup|b/k>>.

    <\equation*>
      <frac|1+2*\<mathe\><rsup|-*b/k>+3*\<mathe\><rsup|-2*b/k>|1+\<mathe\><rsup|-*b/k>+\<mathe\><rsup|-2*b/k>>=\<alpha\>.
    </equation*>

    Denote <math|x=\<mathe\><rsup|-b/k>> and solve a quadratic equation.

    <\equation*>
      1+2*x+3*x<rsup|2>=\<alpha\>+\<alpha\>*x+\<alpha\>*x<rsup|2> .
    </equation*>

    <\equation*>
      <around*|(|3-\<alpha\>|)>*x<rsup|2>+<around*|(|2-\<alpha\>|)>*x+<around*|(|1-\<alpha\>|)>=0
    </equation*>

    <\equation*>
      x=<frac|<around*|(|\<alpha\>-2|)>\<pm\><sqrt|<around*|(|2-\<alpha\>|)><rsup|2>-4*<around*|(|3-\<alpha\>|)><around*|(|1-\<alpha\>|)>>|2*<around*|(|3-\<alpha\>|)><with|font-series|bold|>>
      .
    </equation*>

    Finally, we can say that, given <math|\<alpha\>>,

    <\equation*>
      <frac|n<rsub|i><rsup|\<star\>>|N>=p<rsub|i>=<frac|\<mathe\><rsup|-b*\<varepsilon\><rsub|i>/k>|q>=<frac|x<rsup|i>|x+x<rsup|2>+x<rsup|3>>
      .
    </equation*>
  </answer*>

  <\ornamented>
    <\question>
      The work in a thermodynamic cycle.

      A thermodynamic cycle is a series of steps that ultimately returns to
      its begining point. Compute the total work performed around the
      thermodynamic cycle of quasi-static processes in the figure below.

      <\padded-center>
        <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-end|\|\<gtr\>|gr-auto-crop|true|<graphics||<with|arrow-end|\|\<gtr\>|<line|<point|4|1.8>|<point|4.0|-2.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|3.8|-2>|<point|-4.0|-2.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-4|-1.8>|<point|-4.0|2.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-3.8|2.0>|<point|4.0|2.0>>>|<math-at|B|<point|-4.2|2.2>>|<math-at|A|<point|-4.2|-2.4>>|<math-at|D|<point|3.8|-2.3667592924467016>>|<math-at|C|<point|4.0|2.2>>|<text-at|Step
        2|<point|-0.5|2.5>>|<text-at|Step 3|<point|4.2|0>>|<text-at|Step
        4|<point|-0.5|-2.4>>|<text-at|Step
        1|<point|-5.3|0.0>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-4>|<point|-6.0|3.6>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-4>|<point|5.4|-4.0>>>|<math-at|p
        <around*|(|atm|)>|<point|-6.4|3.8>>|<math-at|V
        <around*|(|cm<rsup|3>|)>|<point|5.7|-4>>|<math-at|100|<point|-6.6|-2.0>>|<math-at|300|<point|-6.6|2>>|<math-at|1|<point|-4|-3.8>>|<math-at|2|<point|4.0|-3.8>>>>
      </padded-center>
    </question>
  </ornamented>

  <\answer*>
    The work is defined by <math|\<delta\>w=-p*\<mathd\>V>. Therefore,
    isochoric stages within the cycle can be ignored.

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<delta\>w>|<cell|=>|<cell|-<big|int><rsub|B><rsup|C>p<rsub|B\<nocomma\>C>*\<mathd\>V-<big|int><rsub|D><rsup|A>p<rsub|D\<nocomma\>A>*\<mathd\>V>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|300
      atm\<times\>1 cm<rsup|3>+100 atm\<times\><around*|(|-1|)>
      cm<rsup|3>|)>=-200 atm*cm<rsup|3> .>>>>
    </eqnarray*>
  </answer*>

  <\ornamented>
    <\question>
      Stirling Engine.

      A Stirling engine has the following <math|p*V> cycle and usses an ideal
      gas working fluid. The steps are quasi-static.

      <\enumerate>
        <item>How much work is done in the constant volume segments,
        <math|W<rsub|12>> and <math|W<rsub|34>>?

        <item>What is the energy change around the cycle,
        <math|\<Delta\>U<rsub|tot>=\<Delta\>U<rsub|12>+\<Delta\>U<rsub|23>+\<Delta\>U<rsub|34>+\<Delta\>U<rsub|41>>?

        <item>What is the total work performed around the cycle,
        <math|W<rsub|tot>=W<rsub|12>+W<rsub|23>+W<rsub|34>+W<rsub|41>>?

        <item>If <math|T<rsub|2>=2000 \<up-K\>,T<rsub|1>=300
        \<up-K\>,V<rsub|2>=1 \<up-L\>,V<rsub|1>=0.01 \<up-L\>>, and
        <math|n=0.1 mole> of ideal gas, compute <math|W<rsub|tot>>.
      </enumerate>

      <\padded-center>
        <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-end|\|\<gtr\>|gr-auto-crop|true|<graphics||<with|arrow-end|\|\<gtr\>|<line|<point|-6|-4>|<point|-6.0|3.6>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-4>|<point|5.4|-4.0>>>|<math-at|P|<point|-6.26649|3.78339>>|<math-at|V|<point|5.697|-3.95097>>|<with|arrow-end|\|\<gtr\>|<line|<point|-4|-2>|<point|-4.0|2.0>>>|<with|arrow-end|\|\<gtr\>|<spline|<point|-4|2>|<point|-1.5|0.6>|<point|2.0|0.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|2|-0.2>|<point|2.0|-2.4>>>|<with|arrow-end|\|\<gtr\>|<spline|<point|2|-2.5>|<point|-1.0|-2.4>|<point|-4.0|-2.0>>>|<text-at|Isothermal|<point|-1.5|1.4>>|<math-at|T<rsub|2>|<point|-0.7|1>>|<text-at|Isothermal<math|>|<point|-2|-2.8>>|<math-at|T<rsub|1>|<point|-1.2999999999999996|-3.2>>|<math-at|V<rsub|2>|<point|2|-3.7>>|<math-at|V<rsub|1>|<point|-4|-3.7>>|<math-at|P<rsub|2>|<point|-6.5|-2>>|<math-at|P<rsub|1>|<point|-6.5|2.0>>|<math-at|2|<point|-4.26769|2.133>>|<math-at|3|<point|2.28557|-0.0387121>>|<math-at|4|<point|2.28557|-2.51523>>|<math-at|1|<point|-4.40105|-2.11518>>>>
      </padded-center>
    </question>
  </ornamented>

  <\answer*>
    \;

    <\enumerate>
      <item>In the constant volume segments, <math|W<rsub|12>,W<rsub|34>>, no
      work is done.

      <item>Energy is a state variable. As such, change in energy in a closed
      cycle equals zero.

      <item> In the isochoric segments, <math|W=0>.

      <\equation*>
        W<rsub|tot>=W<rsub|23>+W<rsub|41> .
      </equation*>

      <\equation*>
        W<rsub|tot>=-<big|int><rsub|2><rsup|3>P<rsub|23>*\<mathd\>V-<big|int><rsub|4><rsup|1>P<rsub|41>*\<mathd\>V
      </equation*>

      Use the ideal gas state equation

      <\equation*>
        P*V=n*R*T<space|1em>\<longrightarrow\><space|1em>P=<frac|n*R*T|V>
      </equation*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|W<rsub|tot>>|<cell|=>|<cell|-n*R<around*|(|T<rsub|2><big|int><rsub|2><rsup|3><frac|1|V>*\<mathd\>V+T<rsub|1><big|int><rsub|4><rsup|1><frac|1|V>\<mathd\>V|)>>>|<row|<cell|>|<cell|=>|<cell|-n*R*<around*|(|T<rsub|2>*ln
        <frac|V<rsub|2>|V<rsub|1>>+T<rsub|1>*ln
        <frac|V<rsub|1>|V<rsub|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|n*R**ln
        <frac|V<rsub|1>|V<rsub|2>>*<around*|(|T<rsub|2>-T<rsub|1>|)> .>>>>
      </eqnarray*>

      <item><math|W<rsub|tot>=0.1 mol\<times\>8.314*\<up-J\>*\<up-K\><rsup|-1>*mol<rsup|-1>*\<times\>ln
      <frac|0.01 \<up-L\>|1 \<up-L\>>\<times\><around*|(|2000 \<up-K\>-300
      \<up-K\>|)>=-6508.85 \<up-J\>>.
    </enumerate>
  </answer*>

  \;
</body>

<initial|<\collection>
</collection>>