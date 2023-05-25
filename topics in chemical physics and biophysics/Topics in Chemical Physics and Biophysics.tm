<TeXmacs|2.1.2>

<style|<tuple|course|framed-theorems|number-long-article|SIUnits-simple|preview-ref|smart-ref|pagella-font>>

<\body>
  <\hide-preamble>
    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    \;
  </hide-preamble>

  <doc-data|<doc-title|Topics in Physical Chemistry and Biophysics>>

  <section|Review of probability>

  <subsection|Rules of probability>

  <marginal-note|normal|l|18.04.23 lec 1>

  <\definition>
    <em|Probability.> If <math|N> is the total number of outcomes, and
    <math|n<rsub|A>> fall in category <math|A>, then

    <\equation*>
      p<rsub|A>=<frac|n<rsub|A>|N>=<frac|<text|outcomes cat.> A|<text|all
      outcomes>> .
    </equation*>
  </definition>

  Rules of composite events:

  <\enumerate>
    <item>Mutually exclusive: outcomes <math|<around*|(|A<rsub|1>,A<rsub|2,\<ldots\>>|)>>
    are <em|mutually exclusive> if one outcome precludes another outcomes.
    (Event <math|A<rsub|1>> prevents even <math|A<rsub|2>> from happening
    simultaneously.)

    <item>Collectively exhaustive: if all known outcomes are also all
    possible outcomes. <math|<big|sum>p<rsub|i>=1>.

    <item>Independence: outcomes do not depend on each other.

    <item>Multiplicity: total number of ways in which outcomes occur.
  </enumerate>

  Rules of calculation:

  <\enumerate>
    <item>Let there be 3 outcomes <math|A,B,C> with probability
    <math|p<rsub|A>,p<rsub|B>,p<rsub|C>>. What is the probability that either
    one occurs (<math|A> or <math|B> or <math|C>)?

    <\equation*>
      p<around*|(|A\<cup\>B\<cup\>C|)>=p<rsub|A>+p<rsub|B>+p<rsub|C> .
    </equation*>

    That's the addition rule.

    <item>Probability that all outcomes occur? (Assuming independence)

    <\equation*>
      p<around*|(|A\<cap\>B\<cap\>C|)>=p<rsub|A>*p<rsub|B>*p<rsub|C> .
    </equation*>

    <item>Probability that an event <math|A> is not happening?
    <math|p=1-p<rsub|A> >.
  </enumerate>

  <\example*>
    We roll a die twice. What is the probability of rolling a 1 first
    <with|font-series|bold|or> a 4 second?

    Split the problem to parts. Note that the events are not mutually
    exclusive. Condition applies if:

    <\itemize>
      <item>1 first and not a 4 second: <math|<frac|1|6>\<cdot\><frac|5|6>>

      <item>not a 1 first and a 4 second: <math|<frac|5|6>\<cdot\><frac|1|6>>

      <item>1 first and 4 second: <math|<frac|1|6>\<cdot\><frac|1|6>>
    </itemize>

    Now sum up all of the options to get result.
  </example*>

  <\definition>
    <em|Correlated events.> <math|p<around*|(|B\|A|)>> is the probability
    that <math|B> occurs given <math|A> has occurred.

    <em|Joint probability.> <math|p<around*|(|A\<nocomma\>B|)>> that both
    <math|A> and <math|B> occur.
  </definition>

  <\definition>
    <em|General multiplication rule.<assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>>

    <\equation*>
      p<around*|(|A\<nocomma\>B|)>=p<around*|(|B\|A|)>*p<around*|(|A|)> .
    </equation*>

    <math|P<around*|(|A|)>> is called the a priori probability and
    <math|p<around*|(|B\|A|)>> is called the a posterior probability
  </definition>

  <\theorem>
    <em|Bayes theorem.>

    <\equation*>
      p<around*|(|B\|A|)>*p<around*|(|A|)>=p<around*|(|A\|B|)>*p<around*|(|B|)>
      .
    </equation*>
  </theorem>

  <\example*>
    1% of population has breast cancer. We use mammography to detect cancer.

    Event <math|A>: breast cancer. <math|p<around*|(|A|)>=0.01>.
    <math|p<around*|(|<wide|A|\<bar\>>|)>=1-p<around*|(|A|)>=0.99>.

    Event <math|B>: diagnosis. <math|p<around*|(|B\|A|)>=0.8>.
    <math|p<around*|(|B\|<wide|A|\<bar\>>|)>=0.096>. (i.e. false positive0

    What is the chance that a doctor has diagnosed someone with cancer? i.e.
    <math|p<around*|(|A\|B|)>>

    <\equation*>
      p<around*|(|A\|B|)>=<frac|p<around*|(|B\|A|)>*p<around*|(|A|)>|p<around*|(|B|)>>
      .
    </equation*>

    <math|p<around*|(|B|)>> is the diagnosis of breast cancer irrespective
    whether it's there or not there.

    <\equation*>
      p<around*|(|B|)>=p<around*|(|B\<nocomma\>A|)>+p<around*|(|B\<nocomma\><wide|A|\<bar\>>|)>=p<around*|(|B\|A|)>*p<around*|(|A|)>+p<around*|(|B\|<wide|A|\<bar\>>|)>*p<around*|(|<wide|A|\<bar\>>|)>=0.8\<cdot\>0.01+0.096\<cdot\>0.99=0.103,
    </equation*>

    <\equation*>
      p<around*|(|A\|B|)>=<frac|0.8\<cdot\>0.01|0.103>=0.078=7.8% .
    </equation*>

    The reason that <math|p<around*|(|A\|B|)>> is so small is that the rate
    of false positive is really low and the rate of having breast cancer is
    really low.
  </example*>

  <subsection|Combinatorics and probability distributions>

  <\description-paragraphs>
    <item*|Combinatorics.>Concerned with composition of events, and not with
    their order.
  </description-paragraphs>

  <\example*>
    How many combinations there are of <math|N> amino acids?

    <\equation*>
      W=N!=N*<around*|(|N-1|)>*<around*|(|N-2|)>*\<cdots\>*
    </equation*>
  </example*>

  <\example*>
    Distinguish or not Distinguish: What are the possible number of ways to
    arrange <math|N> amino acids? Divide all permutations (assuming objects
    are distinguishable) by the number of permutations of objects that are
    indistinguishable.

    <\equation*>
      W=<frac|N!|N<rsub|A>> .
    </equation*>

    In general, for <math|N> objects consisting of <math|t> categories in
    which the objects are indistinguishable:

    <\equation*>
      W=<frac|N!|<around*|(|n<rsub|1>!|)>*<around*|(|n<rsub|2>!|)>*\<cdots\>*<around*|(|n<rsub|t>!|)>>
      .
    </equation*>

    So, if <math|t=2>, (e.g. possible number of ways to arrange three acids
    A,A,H)

    <\equation*>
      W=<frac|N!|n<rsub|1>!\<cdot\>n<rsub|2>!>=<frac|N!|n<rsub|1>!*<around*|(|N-n<rsub|1>|)>!>=<binom|N|n>
      .
    </equation*>
  </example*>

  <\definition>
    <em|Distribution functions.> Describe collections of probabilities.
    Relevant for continuous variables.

    <\equation*>
      <big|sum><rsub|i>p<rsub|i>\<rightarrow\><big|int><rsub|a><rsup|b>p<around*|(|x|)>
      \<mathd\>x .
    </equation*>
  </definition>

  Popular distributions:

  <\enumerate>
    <item><em|Binomial Distribution.> Relevant when there are only two
    outcomes.

    <\example*>
      What is the probability that a series of <math|N> trials has
      <math|n<rsub|H>> heads and <math|n<rsub|T>> tails in any order?

      <math|p<rsub|H>,p<rsub|T>> are mutually exclusive, so the probability
      of one sequence is

      <\equation*>
        p<rsub|H><rsup|n<rsub|H>>\<cdot\>p<rsub|T><rsup|n<rsub|T>>=p<rsub|H><rsup|n<rsub|H>>*<around*|(|1-p<rsub|H>|)><rsup|N-n<rsub|H>>;<application-space|1em>N=n<rsub|H>+n<rsub|T>
        .
      </equation*>

      and the number of ways to arrange the coins is

      <\equation*>
        W=<frac|N!|n<rsub|H>!*<around*|(|N-n<rsub|H>|)>!> .
      </equation*>

      Therefore, the possibility for the outcome (getting <math|n<rsub|H>>
      and <math|n<rsub|T>>) in any order is

      <\ornamented>
        <\equation*>
          p<around*|(|n<rsub|H>,N|)>=<binom|N|n<rsub|H>>*p<rsub|H><rsup|n<rsub|H>>*<around*|(|1-p<rsub|H>|)><rsup|N-N<rsub|H>>
          .
        </equation*>
      </ornamented>

      That's the binomial distribution.

      <\example*>
        Given the molecule <math|<math-up|C><rsub|27><math-up|H><rsub|44><math-up|O>>
        such that 1.1% is <math|<rsup|13><math-up|C>> and the rest are
        <math|<rsup|12><math-up|C>>, the fraction of molecules without a
        single <math|<rsup|13><math-up|C>> is given by the binomial
        distribution.
      </example*>

      <item><em|Multinomial distribution.> Basically the extension of the
      binomial distribution.

      <\ornamented>
        <\equation*>
          p<around*|(|n<rsub|1>,n<rsub|2>,\<ldots\>,n<rsub|t>,N|)>=<around*|(|<frac|N!|n<rsub|1>!*n<rsub|2>!*\<cdots\>*n<rsub|t>!>|)>*p<rsub|1><rsup|n<rsub|1>>*p<rsub|2><rsup|n<rsub|2>>*\<cdots\>*p<rsub|t><rsup|n<rsub|t>>
          .
        </equation*>
      </ornamented>
    </example*>
  </enumerate>

  <\definition>
    <em|Moments of distributions.> Averages and Variances of distribution
    functions.

    Given <math|p<around*|(|i|)>> s.t. <math|<big|sum><rsub|i>p<rsub|<around*|(|i|)>>=1>,
    the <with|font-series|bold|Average> is defined as

    <\equation*>
      <around*|\<langle\>|i|\<rangle\>>=<big|sum><rsub|i>i*p<around*|(|i|)>\<rightarrow\><around*|\<langle\>|x|\<rangle\>>=<big|int>x*p<around*|(|x|)>
      \<mathd\>x .
    </equation*>

    <\em>
      Given <math|f<around*|(|x|)>>,

      <\equation*>
        <around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>=<big|int>f<around*|(|x|)>*p<around*|(|x|)>
        \<mathd\>x .
      </equation*>

      Given <math|a\<in\>\<bbb-R\>>
    </em>

    <\equation*>
      <around*|\<langle\>|a*f<around*|(|x|)>|\<rangle\>>=<big|int>a*f<around*|(|x|)>*p<around*|(|x|)>
      \<mathd\>x=a*<around*|\<langle\>|f<around*|(|x|)>|\<rangle\>> .
    </equation*>

    Given 2 functions <math|f<around*|(|x|)>,g<around*|(|x|)>>,

    <\equation*>
      <around*|\<langle\>|f<around*|(|x|)>+g<around*|(|x|)>|\<rangle\>>=<around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>+<around*|\<langle\>|g<around*|(|x|)>|\<rangle\>>,
    </equation*>

    <\equation*>
      <around*|\<langle\>|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|\<rangle\>>\<neq\><around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>*<around*|\<langle\>|g<around*|(|x|)>|\<rangle\>>
      .
    </equation*>

    The 2nd and 3nd <with|font-series|bold|Moments> of the distributions
    <math|p<around*|(|x|)>> are

    <\equation*>
      <around*|\<langle\>|x<rsup|2>|\<rangle\>>=<big|int>x<rsup|2>*p<around*|(|x|)>
      \<mathd\>x,
    </equation*>

    <\equation*>
      <around*|\<langle\>|x<rsup|3>|\<rangle\>>=<big|int>x<rsup|3>*p<around*|(|x|)>
      \<mathd\>x .
    </equation*>

    The <with|font-series|bold|Variance> of the distribution,
    <math|\<sigma\><rsup|2>> is defined as

    <\equation*>
      \<sigma\><rsup|2>=<around*|\<langle\>|x<rsup|2>|\<rangle\>>-<around*|\<langle\>|x|\<rangle\>><rsup|2>=<around*|\<langle\>|<around*|(|x-<around*|\<langle\>|x|\<rangle\>>|)><rsup|2>|\<rangle\>>
      .
    </equation*>
  </definition>

  <section|Entropy>

  <subsection|Definition and Stirling's approximation>

  <marginal-note|normal|c|02.05.23 lec 2>Carved on the tombstone of Ludwig
  Boltzmann in the central cemetery in Vienna is the definition of
  <em|entropy>.

  <\definition>
    <em|Entropy.><label|entropy-definition>

    <\equation*>
      S=k*ln W .
    </equation*>

    <\itemize>
      <item><math|k=1.3806\<times\>10<rsup|-23> <math-up|J K><rsup|-1>> is
      Boltzmann's constant.

      <item><math|W> is the multiplicity; the microscopic degrees of freedom
      of a system.
    </itemize>
  </definition>

  Entropy can help describe the state of a system in equilibrium, as systems
  tend toward their states of maximum multiplicity <math|W> (and minimum
  energy).

  <\ornamented>
    <\note*>
      Entropy is an <em|extensive> (thus additive) quantity. Consider a
      thermodynamic system having two subsystems, <math|A> and <math|B>, with
      multiplicities <math|W<rsub|A>> and <math|W<rsub|B>>, respectively. The
      multiplicity of the total system is
      <math|W<rsub|total>=W<rsub|A>*W<rsub|B>>. Following def.
      <reference|entropy-definition>, <math|S<rsub|total>=S<rsub|A>+S<rsub|B>=k*ln
      W<rsub|A>+k*ln W<rsub|B>>. This is why incorporating the multiplicity
      in a logarithm makes sense.
    </note*>
  </ornamented>

  Why does def. <reference|entropy-definition> assume this particular
  mathematical form? The multiplicity could be maximized as
  <math|W<rsup|2>,15*W<rsup|3>> etc. We first show that expressing the
  entropy in terms of a <em|set of probabilities> <math|p<rsub|i>>,

  <\equation>
    <frac|S|k>=-<big|sum><rsub|i=1><rsup|t>p<rsub|i>*ln
    p<rsub|i><label|entropy-alt-def>.
  </equation>

  is equivalent to def. <reference|entropy-definition>. Roll a <math|t>-sided
  die <math|N> times. The multiplicity of outcomes is given by

  <\equation*>
    W=<frac|N!|n<rsub|1>!*n<rsub|2>!*\<cdots\>*n<rsub|t>!>,
  </equation*>

  where <math|n<rsub|i>> is the number of times that side <math|i> appears
  face up. Use Stirling's approximation,

  <\definition>
    <em|Stirling's approximation>.<label|Stirling's approximation> For
    <math|n\<gg\>1> (at least 1000),

    <\equation*>
      ln n!\<approx\>n*ln n-n .
    </equation*>

    <\equation*>
      n!\<approx\><around*|(|<frac|n|\<mathe\>>|)><rsup|n> .
    </equation*>
  </definition>

  and define the probabilities <math|p<rsub|i>=n<rsub|i>/N>, to get

  <\equation*>
    W=<frac|<around*|(|N/\<mathe\>|)><rsup|N>|<around*|(|n<rsub|1>/\<mathe\>|)><rsup|n<rsub|1>>*<around*|(|n<rsub|2>/\<mathe\>|)><rsup|n<rsub|2>>*\<cdots\>*<around*|(|n<rsub|t>/\<mathe\>|)><rsup|n<rsub|t>>>=<frac|N<rsup|N>|n<rsub|1><rsup|n<rsub|1>>*n<rsub|2><rsup|n<rsub|2>>*\<cdots\>*n<rsub|t><rsup|n<rsub|t>>>=<frac|1|p<rsub|1><rsup|n<rsub|1>>*p<rsub|2><rsup|n<rsub|2>>*\<cdots\>*p<rsub|t><rsup|n<rsub|t>>>
    .
  </equation*>

  Take the logarithm of both sides and divide by <math|N> to get

  <\equation*>
    ln W=-<big|sum><rsub|i=1><rsup|t>n<rsub|i>*ln
    p<rsub|i><space|1em>\<Rightarrow\><space|1em><frac|1|N>*ln
    W=-<big|sum><rsub|i=1><rsup|t>p<rsub|i>*ln
    p<rsub|i>=<frac|S<rsub|N>|N*k>=<frac|S|k> ,
  </equation*>

  where <math|S<rsub|N>> is the total entropy for <math|N> trials, so the
  entropy per trial is <math|S=S<rsub|N>/N>.

  <\ornamented>
    <\note*>
      def. <reference|entropy-definition> is reformulated from eq.
      <eqref|entropy-alt-def> if the microstates whose permutations sum up to
      multiplicity <math|W> are <em|degenerate>, or equivalently, if
      <math|p<rsub|i>=1/W>.
    </note*>
  </ornamented>

  <\ornamented>
    <\note*>
      Boltzmann's constant <math|k> puts entropy into units that
      inter-convert with energy for thermodynamics. Basically, <math|k> is
      the entropy per particle.

      Sometimes, it is more convenient to express the entropy per mole of
      particles,

      <\equation*>
        S=R*ln W .
      </equation*>

      where <math|R=\<cal-N\>*k> is the <em|gas constant> and
      <math|\<cal-N\>> is Avogadro's number\Vthe number of molecules per
      mole.\ 
    </note*>
  </ornamented>

  <subsection|Lattice models>

  <\example*>
    Entropy of mixing calculation for <em|lattice models>.

    Two solutions, <math|A> and <math|B>, are allowed to mix. Calculate the
    change in entropy of the system due to mixing.\ 

    <\description-paragraphs>
      <item*|Method.>Describe the solution (space) as a lattice, or grid,
      which has <math|N> lattice sites, which are filled by <math|n>
      particles.
    </description-paragraphs>

    <math|W> is the number of ways to arrange particles in the available
    sites.\ 

    <\big-figure>
      <\padded-center>
        <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-fill-color|pastel
        grey|gr-auto-crop|true|<graphics||<cline|<point|-5|4>|<point|-5.0|1.0>|<point|-2.0|1.0>|<point|-2.0|4.0>>|<line|<point|-4|4>|<point|-4.0|1.0>>|<line|<point|-3|4>|<point|-3.0|1.0>>|<line|<point|-5|2>|<point|-2.0|2.0>>|<line|<point|-5|3>|<point|-2.0|3.0>>|<with|fill-color|pastel
        grey|<carc|<point|-4.8|3.6>|<point|-4.4|3.9>|<point|-4.7|3.3>>>|<with|fill-color|pastel
        grey|<carc|<point|-2.8|3.6>|<point|-2.4|3.9>|<point|-2.7|3.3>>>|<with|fill-color|pastel
        grey|<carc|<point|-3.9|1.6>|<point|-3.5|1.9>|<point|-3.8|1.3>>>|<with|fill-color|pastel
        grey|<carc|<point|-2.9|2.5>|<point|-2.5|2.8>|<point|-2.8|2.2>>>>>
      </padded-center>
    <|big-figure>
      Each particle may occupy a lattice site.
    </big-figure>

    Each site can either be occupied or vacant, so <math|W> behaves according
    to the binomial distribution.

    <\equation*>
      W<rsub|A>=<frac|N!|n!*<around*|(|N-n|)>!> .
    </equation*>

    Using def. <reference|Stirling's approximation>,

    <\equation*>
      W<rsub|A>\<approx\><frac|N<rsup|N>|n<rsup|n>*<around*|(|N-n|)><rsup|N-n>>
      .
    </equation*>

    Similarly, for the second solution,

    <\equation*>
      W<rsub|B>\<approx\><frac|M<rsup|M>|m<rsup|m>*<around*|(|M-m|)><rsup|M-m>>
      .
    </equation*>

    As entropy is extensive,

    <\equation*>
      S=S<rsub|A>+S<rsub|B>=k*ln <around*|(|W<rsub|A>*W<rsub|B>|)> .
    </equation*>

    After mixing there are <math|M+N> lattice sites and <math|m+n> particles.
    Note that <math|W<rsub|A\<nocomma\>B>=W<rsub|A>*W<rsub|B>> is the
    combined multiplicity without mixing. The multiplicity after mixing,
    <math|W<rsub|A\<nocomma\>B><rsup|\<star\>>> behaves according to the
    multinomial distribution.

    <\equation*>
      W<rsub|A\<nocomma\>B><rsup|\<star\>>=<frac|<around*|(|N+M|)>!|n!*m!*<around*|(|N+M-m-n|)>!>\<approx\><frac|<around*|(|N+M|)><rsup|N+M>|n<rsup|n>*m<rsup|m>*<around*|(|N+M-m-n|)><rsup|N+m-m-n>>
      .
    </equation*>

    For simplification, assume <math|N=M> and <math|n=m>.

    <\equation*>
      W<rsub|A\<nocomma\>B><rsup|\<star\>>=<frac|<around*|(|2*N|)><rsup|2*N>|n<rsup|2*n>*<around*|(|2*N-2*n|)><rsup|2*N-2*n>>
      .
    </equation*>

    In this case, the combined multiplicity prior to mixing is

    <\equation*>
      W<rsub|A\<nocomma\>B>=<frac|N<rsup|2*N>|n<rsup|2*n>*<around*|(|N-n|)><rsup|2*<around*|(|N-n|)>>>
      .
    </equation*>

    What is the change in entropy due to mixing?

    <\equation*>
      \<Delta\>S=S<rsub|A\<nocomma\>B><rsup|\<star\>>-S<rsub|A\<nocomma\>B>=k*ln
      <frac|W<rsub|A\<nocomma\>B><rsup|\<star\>>|W<rsub|A\<nocomma\>B>>=\<cdots\>=k*ln
      <around*|(|2<rsup|2*n>|)>=2*n*k*ln 2 .
    </equation*>

    Obviously, mixing increased the total entropy of the system.
  </example*>

  <subsection|Predicting distributions by maximizing entropy>

  In an isolated environment (no exchange of energy or matter), entropy
  maximization predicts the distribution of states of the system.

  From eq. <eqref|entropy-alt-def> it is clear that <math|S> is a
  <em|function> of the possible states: <math|S=f<around*|(|p<rsub|1>,\<ldots\>,p<rsub|t>|)>>.
  a function <math|f<around*|(|x|)>> is maximized when
  <math|\<mathd\>f/\<mathd\>x=0> and <math|\<mathd\><rsup|2>f/\<mathd\>x<rsup|2>\<less\>0>.

  Additionally, if we know the value of <math|f<around*|(|x|)>> at some point
  <math|x=a>, we can use <em|Taylor series expansion> to compute
  <math|f<around*|(|x|)>> near that point:

  <\equation*>
    \<Delta\>f=f<around*|(|x|)>-f<around*|(|a|)>=<around*|(|<frac|\<mathd\>f|\<mathd\>x>|)><rsub|x=a>*\<Delta\>x+<frac|1|2>*<around*|(|<frac|\<mathd\><rsup|2>f|\<mathd\>x<rsup|2>>|)><rsub|x=a>*\<Delta\>x<rsup|2>+<frac|1|6>*<around*|(|<frac|\<mathd\><rsup|3>f|\<mathd\>x<rsup|3>>|)><rsub|x=a>*\<Delta\>x<rsup|3>+\<cdots\><label|taylor-series>
    .
  </equation*>

  For very small changes, <math|\<Delta\>x=<around*|(|x-a|)>\<rightarrow\>\<mathd\>x>,
  non-linear terms in the series expansions are negligible, and thus
  <math|\<mathd\>f\<approx\><around*|(|<frac|\<mathd\>f|\<mathd\>x>|)><rsub|x=a>*\<mathd\>x>.

  In the case of a bivariate function, <math|f<around*|(|x,y|)>>,

  <\equation*>
    \<mathd\>f=<around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>*\<mathd\>x+<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>*\<mathd\>y
    .
  </equation*>

  We can generalize to multivariate functions, and define

  <\equation*>
    \<mathd\>f=<big|sum><rsub|i=1><rsup|t><around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)><rsub|x<rsub|j\<neq\>i>>*\<mathd\>x<rsub|i>
    .
  </equation*>

  The extrema of multivariate functions occur where the partial derivatives
  are zero. The <em|global> extremum occurs where <em|all> partial
  derivatives are zero: <math|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)><rsub|x<rsub|j\<neq\>i>>=0>
  for <math|i=1,2,\<ldots\>,t>.

  <\big-figure|<image|Figures/extrema-multivariate.png|0.7par|||>>
    To identify the maximum of this function, both
    <math|<around*|(|\<partial\>f/\<partial\>x|)>> and
    <math|<around*|(|\<partial\>f/\<partial\>y|)>> must equal zero, as they
    do in (b), but not in (a).
  </big-figure>

  Note that when calculating entropy we are constrained by
  <math|<big|sum>p<rsub|i>=1>. How do we find the extrema of a function that
  is subject to a constraint? We must find a set of values that satisfy
  <em|both> the extremum equation

  <\equation*>
    \<mathd\>f=<big|sum><rsub|i=1><rsup|t><around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)><rsub|x<rsub|j\<neq\>i>>*\<mathd\>x<rsub|i>=0
    ,
  </equation*>

  <em|and> the constraint equation, <math|<big|sum>p<rsub|i>=1>.

  <\ornamented>
    <\note*>
      A constraint equation has the form <math|g<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|t>|)>=constant>.
      For example, if we require <math|x=y>, the constraint function
      <math|g<around*|(|x,y|)>> would be:

      <\equation*>
        g<around*|(|x,y|)>=x-y=0 .
      </equation*>

      Because <math|x> and <math|y> are related through the equation
      <math|g<around*|(|x,y|)>=constant>, they are <strong|not> independent
      variables. To satisfy both the extremum equation and the constraint
      equation, put the constraint equation into differential form and
      combine it with the extremum equation.

      <\equation*>
        \<mathd\>g=<around*|(|<frac|\<partial\>g|\<partial\>x>|)><rsub|y>*\<mathd\>x+<around*|(|<frac|\<partial\>g|\<partial\>y>|)><rsub|x>*\<mathd\>y=0
        .
      </equation*>

      In this example,
    </note*>

    <\equation*>
      \<mathd\>g=1\<cdot\>\<mathd\>x-1\<cdot\>\<mathd\>y=0\<rightarrow\>\<mathd\>x=\<mathd\>y
      .
    </equation*>

    If the extremum equation is

    <\equation*>
      \<mathd\>f=0=<around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>*\<mathd\>x+<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>*\<mathd\>y
      ,
    </equation*>

    then if we replace <math|\<mathd\>y> by <math|\<mathd\>x> in the extremum
    equation, we get:

    <\equation*>
      \<mathd\>f=0=<around*|[|<around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>+<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>|]>*\<mathd\>x=0
      ,
    </equation*>

    which gives

    <\equation*>
      <around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>=-<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>.
    </equation*>

    Solving this equation identifies the point that is both an extremum of
    <math|f> and also satisfies <math|g<around*|(|x,y|)>=constant>.
  </ornamented>

  <subsubsection|Extrema with constraints: Method of Lagrange Multipliers>

  Suppose you want to find the extremum of <math|f<around*|(|x,y|)>> subject
  to the constraint <math|g<around*|(|x,y|)>=constant>.

  It can be shown that the derivatives of <math|f> and <math|g> need only be
  the same to within an arbitrary constant <math|\<mathlambda\>>, called the
  <em|Lagrange multiplier>:

  <\equation>
    <around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>=\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x>|)><rsub|y><space|1em>\<frak-a\>nd<space|1em><around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>=\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>y>|)><rsub|x><label|Lagrange-multipliers>
    .
  </equation>

  The values <math|x=x<rsup|\<star\>>> and <math|y=y<rsup|\<star\>>> that
  satisfy <eqref|Lagrange-multipliers> are at the extremum of <math|f> and
  satisfy the constraint.

  <\example*>
    Suppose you want to find a rectangle of the largest possible area that is
    40 cm in circumference.

    <\padded-center>
      <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<cline|<point|-2|2>|<point|-2.0|0.0>|<point|2.0|0.0>|<point|2.0|2.0>>|<math-at|x|<point|-2.5|1>>|<math-at|y|<point|0|2.4>>>>
    </padded-center>

    Mathematically, find the extremum of

    <\equation*>
      f<around*|(|x,y|)>=x*y ,
    </equation*>

    with the constraint equation

    <\equation*>
      g<around*|(|x,y|)>=2*x+2*y=40 .
    </equation*>

    Use Lagrange multipliers to maximize <math|f> subject to <math|g>:

    <\equation*>
      <around*|(|<frac|\<partial\>f|\<partial\>x>|)>=y,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>x>|)>=2<space|1em>\<Rightarrow\><space|1em>y<rsup|\<star\>>=2*\<mathlambda\>
      ,
    </equation*>

    <\equation*>
      <around*|(|<frac|\<partial\>f|\<partial\>y>|)>=x,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>y>|)>=2<space|1em>\<Rightarrow\><space|1em>x<rsup|\<star\>>=2*\<mathlambda\>
      .
    </equation*>

    Substituting these into the constraint equation and solving for
    <math|\<mathlambda\>> gives <math|\<mathlambda\>=5> and
    <math|x<rsup|\<star\>>=y<rsup|\<star\>>=10>.
  </example*>

  <\ornamented>
    <\note*>
      For the extremum of <math|f<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|t>|)>>
      subject to more than one constraint,
      <math|g<around*|(|x<rsub|1>,\<ldots\>,x<rsub|t>|)>=c<rsub|1>> and
      <math|h<around*|(|x<rsub|1>,\<ldots\>,x<rsub|t>|)>=c<rsub|2>>, etc.,
      where the <math|c<rsub|i>> are constants, the Lagrange multiplier
      method gives the solutions

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|1>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|1>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|1>>|)>-\<cdots\>>|<cell|=>|<cell|0
        ,>>|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|2>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|2>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|2>>|)>-\<cdots\>>|<cell|=>|<cell|0
        ,>>|<row|<cell|\<vdots\><space|9em>>|<cell|>|<cell|>>|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|t>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|t>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|t>>|)>-\<cdots\>>|<cell|=>|<cell|0
        ,>>>>
      </eqnarray*>

      where <math|\<mathlambda\>,\<beta\>,\<ldots\>> are the Lagrange
      multipliers for each constraint. Each multiplier is found from its
      appropriate constraint equation.

      An alternative representation:

      <\equation>
        \<mathd\><around*|(|f-\<mathlambda\>*g-\<beta\>*h|)>=<big|sum><rsub|i=1><rsup|t><around*|[|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|i>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|i>>|)>|]>\<mathd\>x<rsub|i>=0<label|Lagrange-alt>
        .
      </equation>
    </note*>
  </ornamented>

  <subsubsection|Maximizing entropy of an isolated system>

  Back to entropy, we had

  <\equation*>
    <frac|S|k>=-*<big|sum><rsub|i>p<rsub|i>*ln p<rsub|i> .
  </equation*>

  This function can only have a maximum.

  <\big-figure|<with|gr-mode|<tuple|edit|spline>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-auto-crop|true|<graphics||<with|arrow-end|\<gtr\>|<line|<point|0|0>|<point|0.0|3.0>>>|<math-at|-p*ln
  p|<point|-1.4|3>>|<math-at|0|<point|0.0|-0.4>>|<with|arrow-end|\<gtr\>|<line|<point|0|0>|<point|6.0|0.0>>>|<math-at|p|<point|6.0|0.4>>|<math-at|1|<point|5.0|-0.4>>|<spline|<point|0|0>|<point|2.0|2.0>|<point|5.0|0.0>>>>>
    <math|-p*ln p> versus <math|p> has a maximum.
  </big-figure>

  The only (trivial) constraint is normalization:
  \ <with|math-display|true|<math|g=<big|sum><rsub|i=1><rsup|t>p<rsub|i>=1>>.
  For a simple case of <math|t=2> states,

  <\equation*>
    S=-k*<around*|(|p<rsub|1>*ln p<rsub|1>+p<rsub|2>*ln p<rsub|2>|)> .
  </equation*>

  <\equation*>
    g=p<rsub|1>+p<rsub|2>=1 .
  </equation*>

  Calculate partial derivatives:

  <\equation*>
    <frac|1|k>*<around*|(|<frac|\<partial\>S|\<partial\>p<rsub|1>>|)><rsub|p<rsub|2>>=-<around*|(|ln
    p<rsub|1>+p<rsub|1>*<frac|1|p<rsub|1>>|)>=-ln
    p<rsub|1>-1,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|1>>|)><rsub|p<rsub|2>>=1
    ,
  </equation*>

  <\equation*>
    <frac|1|k>*<around*|(|<frac|\<partial\>S|\<partial\>p<rsub|2>>|)>=-ln
    p<rsub|2>-1,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|2>>|)><rsub|p<rsub|1>>=1
    .
  </equation*>

  Via eq. <eqref|Lagrange-multipliers>,

  <\equation*>
    <choice|<tformat|<table|<row|<cell|-1-ln
    p<rsub|1>-\<mathlambda\>=0>>|<row|<cell|-1-ln
    p<rsub|2>-\<mathlambda\>=0>>>>><space|1em>\<Rightarrow\><space|1em>p<rsub|1><rsup|\<star\>>=p<rsub|2><rsup|\<star\>>=\<mathe\><rsup|-1-\<mathlambda\>>
    .
  </equation*>

  Plug these to the constraint equation to get

  <\equation*>
    g=2*\<mathe\><rsup|-1-\<mathlambda\>>=1<space|1em>\<Rightarrow\><space|1em>\<mathe\><rsup|-1-\<mathlambda\>>=<frac|1|2><space|1em>\<Rightarrow\><space|1em>p<rsub|1>=p<rsub|2>=<frac|1|2>
    .
  </equation*>

  <\description-paragraphs>
    <item*|Conclusion.>Maximum entropy predicts a <em|flat> distribution of
    states. All states are equally likely.
  </description-paragraphs>

  In non-isolated systems, there may be additional constraints such as
  conservation of energy, conservation of mass, etc.

  <subsubsection|Maximizing entropy with an energy constraint>

  Roll a dice having <math|t> sides, with faces numbered
  <math|i=1,2,3,\<ldots\>,t>. You don't know the distribution of outcomes of
  each face, but you know the total score after <math|N> rolls. You want to
  predict the distribution function.

  First, let's generalize our dice problem. instead of having the numbers
  <math|i=\<b-1\>,\<b-2\>,\<ldots\>,\<b-6\>> painted on its six sides, the
  die has a more general set of numbers painted on its <math|t> sides. When
  side <math|i> appears face up, the score is <math|\<varepsilon\><rsub|i>>.
  The total score after <math|N> rolls will be
  <math|E=<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*n<rsub|i>>, where
  <math|n<rsub|i>> is the number of times that you observe face <math|i>.

  Let <math|p<rsub|i>=n<rsub|i>/N> represent the fraction of the <math|N>
  rolls on which you observe face <math|i>. The average score per roll,
  <math|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>> is:

  <\equation*>
    <around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<frac|E|N>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>*\<varepsilon\><rsub|i>
    .
  </equation*>

  What is the distribution of outcomes <math|<around*|(|p<rsub|1><rsup|\<star\>>,p<rsub|2><rsup|\<star\>>,\<ldots\>,p<rsub|t><rsup|\<star\>>|)>>
  consistent with the average score <math|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>>?
  We seek the distribution that maximizes the entropy, subject to two
  constraints: (1) that all probabilities sum to one, and (2) that the
  average score agrees with the observed value
  <math|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>>.

  <\equation*>
    g<around*|(|p<rsub|1>,p<rsub|2>,\<ldots\>,p<rsub|t>|)>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>=1<space|1em>\<Rightarrow\><space|1em><big|sum><rsub|i=1><rsup|t>\<mathd\>p<rsub|i>=0
    ,
  </equation*>

  <\equation*>
    h<around*|(|p<rsub|1>,p<rsub|2>,\<ldots\>,p<rsub|t>|)>=<around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>*\<varepsilon\><rsub|i><space|1em>\<Rightarrow\><space|1em><big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*\<mathd\>p<rsub|i>=0
    .
  </equation*>

  Solve via method of Lagrange multipliers.

  <\equation*>
    <around*|(|<frac|\<partial\>S|\<partial\>p<rsub|i>>|)>-\<alpha\>*<around*|(|<frac|\<partial\>g|\<partial\>p<rsub|i>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>p<rsub|i>>|)>=0<space|1em><text|for>
    i=1,2,\<ldots\>,t .
  </equation*>

  The partial derivatives are evaluated for each <math|p<rsub|i>>:

  <\equation*>
    <around*|(|<frac|\<partial\>S|\<partial\>p<rsub|i>>|)>=-1-ln
    p<rsub|i>,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|i>>|)>=1,<space|1em><around*|(|<frac|\<partial\>h|\<partial\>p<rsub|i>>|)>=\<varepsilon\><rsub|i>
    .
  </equation*>

  Substitute into the above equation to get <math|t> equations of the form

  <\equation*>
    -1-ln p<rsub|i><rsup|\<star\>>-\<alpha\>-\<beta\>*\<varepsilon\><rsub|i>=0
    .
  </equation*>

  Solve for each <math|p<rsub|i><rsup|\<star\>>> to get

  <\equation*>
    p<rsub|i><rsup|\<star\>>=\<mathe\><rsup|-1-\<alpha\>-\<beta\>*\<varepsilon\><rsub|i>>
    .
  </equation*>

  To eliminate <math|\<alpha\>>, use the normalization constraint to divide
  both sides by one. The result is an <em|exponential distribution law>:

  <\equation>
    p<rsub|i><rsup|\<star\>>=<frac|p<rsub|i><rsup|\<star\>>|<big|sum><rsub|i=1><rsup|t>p<rsub|i><rsup|\<star\>>>=<frac|\<mathe\><rsup|<around*|(|-1-\<alpha\>|)>>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|<around*|(|-1-\<alpha\>|)>>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>>
    .<label|Boltzmann-distribution-law>
  </equation>

  In Statistical Mechanics, the average score is translated to <em|average
  energy> of the system, and eq. <eqref|Boltzmann-distribution-law> is called
  the <em|Boltzmann distribution law>. \ The quantity in the denominator is
  called the <em|partition function>, <math|q>:

  <\equation>
    q\<equiv\><big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>
    <label|partition-function>
  </equation>

  Using the score constraint and the above, we get

  <\equation>
    <around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*p<rsub|i><rsup|\<star\>>=<frac|1|q>*<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>
    .<label|average-energy-canonical-ensemble>
  </equation>

  <marginal-note|normal|c|16.05.23 lec 3>

  <section|Toward the Fundamental Thermodynamic Equations>

  <subsection|Definitions and conventions>

  <\definition>
    <em|Energy.>

    Energy is system property, and describes the capacity of a system to
    perform work. Energy is <strong|conserved> and can flow, so that capacity
    to perform work can be moved from one place to another.

    Energy is ubiquitous, and can take any form, e.g. mechanical, potential,
    or electrical.
  </definition>

  <\definition>
    <em|The First Law of Thermodynamics.> (JR von Mayer, 1842.)

    The internal energy <math|\<Delta\>U> of a system changes when it takes
    up or gives off heat <math|q> or work <math|w>:

    <\equation>
      \<Delta\>U=q+w .<label|first-law>
    </equation>

    The internal energy is conserved; if <math|\<Delta\>U> increases in the
    system, the energy decreases in the surroundings.
  </definition>

  General conventions:

  <\itemize>
    <item>If heat goes <strong|into> the system, <math|q\<gtr\>0>, and vice
    versa.

    <item>If work is done <strong|on> the system, <math|w\<gtr\>0>, and vice
    versa.
  </itemize>

  <subsection|Energy is quantized>

  Quantum theory debuted in the 20th century showed that energies of atoms
  and molecules are quantized. Each particle has discrete amounts of energy
  associated with each of its allowed degrees of freedom, some of which are
  translations rotations, vibrations, and electronic excitations.

  The allowed energies for a given system are indicated in <em|energy-level
  diagrams>, and they predict thermodynamic properties.

  <\big-figure>
    <\padded-center>
      <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-end|\<gtr\>|gr-auto-crop|true|<graphics||<line|<point|0|-4>|<point|2.0|-4.0>>|<line|<point|0|-3>|<point|2.0|-3.0>>|<line|<point|0|-1.2>|<point|2.0|-1.2>>|<line|<point|0|2>|<point|2.0|2.0>>|<line|<point|0|3.4>|<point|2.0|3.4>>|<with|arrow-end|\<gtr\>|<line|<point|2|-4>|<point|2.0|-3.2>>>|<with|arrow-end|\<gtr\>|<line|<point|1.4|-4>|<point|1.4000000000000008|-1.4>>>|<with|arrow-end|\<gtr\>|<line|<point|1|-4>|<point|1.0|1.8>>>|<with|arrow-end|\<gtr\>|<line|<point|0.4|-4>|<point|0.3999999999999998|3.2>>>|<math-at|i=1|<point|-1|-4>>|<math-at|i=2|<point|-1|-3>>|<math-at|i=3|<point|-1|-1.2>>|<math-at|i=4|<point|-1|2>>|<math-at|i=5|<point|-1|3.4>>|<math-at|\<varepsilon\><rsub|i>=0|<point|2.5|-4>>|<math-at|\<varepsilon\><rsub|i>=5|<point|2.6|-3>>|<math-at|\<varepsilon\><rsub|i>=16|<point|2.6|-1.2>>|<math-at|\<varepsilon\><rsub|i>=26|<point|2.6|2>>|<math-at|\<varepsilon\><rsub|i>=31|<point|2.6|3.3>>>>
    </padded-center>
  <|big-figure>
    An exemplary 5-level energy diagram. Each state has its corresponding
    energy, and particles may occupy the different states.
  </big-figure>

  For simple systems of independent, non-interacting particles, such as ideal
  gases, we can express the total <em|internal energy> of a thermodynamic
  system as the sum of the particle energies:

  <\equation>
    U=<big|sum><rsub|i>N<rsub|i>*\<varepsilon\><rsub|i> ,
  </equation>

  where <math|\<varepsilon\><rsub|i>> is the energy of any particle at level
  <math|i> and <math|N<rsub|i>> is the number of particles at energy level
  <math|i>. When the total internal energy of a system is increased by
  heating it, the energy levels <strong|do not> change, but the populations
  <math|<around*|{|N<rsub|i>|}>> change.

  <subsection|Flow of heat>

  What drives molecules or materials to exchange energy? Why does heat flow?
  The First Law of Thermodynamics cannot explain this phenomenon. Heat flow
  is a consequence of the tendency toward maximum multiplicity, which is the
  <em|Second Law of Thermodynamics>.

  Previously, we've seen that lattice models predict that:

  <\itemize>
    <item>Gases expand because the multiplicity <math|W> increases with
    volume <math|V>.

    <\itemize>
      <item>The dependence of <math|W> on <math|V> defines the force called
      <em|pressure>.
    </itemize>

    <item>Particles mix because the multiplicity <math|W> increases as the
    particle segregation decreases.

    <\itemize>
      <item>The tendency to mix defines the <em|chemical potential>.
    </itemize>
  </itemize>

  These are both manifestations of the Second Law of Thermodynamics.

  As a system absorbs heat, the internal energy increases, and the possible
  distributions of particles within the energy states (that sum up to the
  total internal energy) increases.

  Why, then, does heat flow from hot objects to cold ones?

  Consider two systems, <math|A> and <math|B>, both having two possible
  energy states: <math|\<varepsilon\><rsub|1>=0,\<varepsilon\><rsub|2>=1>.
  Each system has 10 particles. Suppose that system <math|A> starts with
  energy <math|U<rsub|A>=2> and system <math|B> starts with energy
  <math|U<rsub|B>=4>.

  <\big-figure|<image|Figures/flow-of-heat-example.png|0.7par|||>>
    Energy-level diagrams for two different systems with 10 particles each.
    System <math|B> has a higher internal energy, and thus a greater
    multiplicity of states.
  </big-figure>

  What would happen if we lt the systems exchange energy? The multiplicities
  <math|W<around*|(|U|)>> of the isolated systems are given by binomial
  distribution.

  <\equation*>
    W<rsub|A>=<frac|10!|2!*8!>=45,<space|2em>W<rsub|B>=<frac|10!|4!*6!>=210 .
  </equation*>

  The combined multiplicity of the isolated systems is
  <math|W<rsub|A\<nocomma\>B>=W<rsub|A>*W<rsub|B>=9450>. When the systems
  exchange energy, their total internal energy must be
  conserved\V<math|U<rsub|A>+U<rsub|B>=const>.

  One possibllity of heat flow is <math|U<rsub|A>=3,U<rsub|B>=3>. The total
  multiplicity would be

  <\equation*>
    W<rsub|A\<nocomma\>B>=<frac|10!|3!*7!>*<frac|10!|3!*7!>=14\<comma\>400 .
  </equation*>

  As the multiplicity increased, we can infer that heat flows from <math|B>
  to <math|A>, in this case to equalize energies. Consider an alternative
  outcome of heat flow: <math|U<rsub|A>=1,U<rsub|B>=5>. The total
  multiplicity in this case is

  <\equation*>
    W<rsub|A\<nocomma\>B>=<frac|10!|1!*9!>*<frac|10!|5*!*5!>=2520 .
  </equation*>

  The principle of maximal multiplicity predicts that heat flow from cold to
  hot objects is unlikely.

  \ 

  <\ornamented>
    <\note*>
      The tendency to maximize multiplicity does not always result in a
      draining of energy from higher to lower.

      Consider two systems (<math|\<varepsilon\><rsub|1>=0,\<varepsilon\><rsub|2>=1>)
      having the same energies, but different paritcle numbers. Suppose
      system <math|A> has <math|N<rsub|A>=10,U<rsub|A>=2> and system B has
      <math|N<rsub|B>=4,U<rsub|B>=2>.

      The total multiplicity of the isolated systems is

      <\equation*>
        W<rsub|A\<nocomma\>B>=W<rsub|A>*W<rsub|B>=<frac|10!|2!*8!>*<frac|4!|2!*2!>=270
        .
      </equation*>

      Now let the systems thermally interact. If the larger system absorbs
      energy from the smaller one, so that <math|U<rsub|A>=3,U<rsub|B>=1>,

      <\equation*>
        W<rsub|A\<nocomma\>B>=W<rsub|A>*W<rsub|B>=<frac|10!|3!*7!>*<frac|4!|1!*3!>=480
        ,
      </equation*>

      the multiplicity increased.

      We shall later see that the concept of <em|temperature> describes the
      driving force for energy exchange. The tendency toward maximum
      multiplicity is a tendency toward equal temperatures.
    </note*>
  </ornamented>

  <\example*>
    <em|Calculating maximized multiplicity ditribution of particles>.

    Let there be two non-interacting systems, <math|A> and <math|B>, each
    having two possible states:

    <\padded-center>
      <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-auto-crop|true|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics||<line|<point|-4|2>|<point|-2.0|2.0>>|<line|<point|-4|0>|<point|-2.0|0.0>>|<line|<point|0|2>|<point|2.0|2.0>>|<line|<point|0|0>|<point|2.0|0.0>>|<math-at|\<varepsilon\><rsub|2><rsup|B>=1|<point|2.3|2>>|<math-at|\<varepsilon\><rsub|1><rsup|B>0|<point|2.3|0>>|<math-at|\<varepsilon\><rsub|2><rsup|A>=1|<point|-5.3|2>>|<math-at|\<varepsilon\><rsub|1><rsup|A>=0|<point|-5.4|0>>|<point|-3.3|2>|<point|-2.9|2>|<point|-3.6|0>|<point|-3.3|0>|<point|-3|0>|<point|-2.7|0>|<point|-2.4|0>|<point|0.3|2>|<point|0.6|2>|<point|0.9|2>|<point|1.2|2>|<point|1.6|2>|<point|0.8|0>|<point|1.1|0>|<math-at|N<rsub|A>=1000|<point|-3.7|-1.0>>|<math-at|N<rsub|B>=1000|<point|0.6|-1>>|<math-at|N<rsub|B>*U<rsub|B>=900|<point|0.5265742823124752|-1.566080169334568>>|<math-at|N<rsub|A>*U<rsub|A>=200|<point|-3.7494873660537107|-1.5519910041010716>>>>
    </padded-center>

    The total energy of the system per particle is
    <math|<frac|U|N>=<big|sum><rsub|i>p<rsub|i>*\<varepsilon\><rsub|i>> .

    What is the distribution of states within each system?

    For system <math|A>,

    <\equation*>
      U<rsub|A>=<frac|200|1000>=\<varepsilon\><rsub|1><rsup|A>*p<rsub|1><rsup|A>+\<varepsilon\><rsub|2><rsup|A>*p<rsub|2><rsup|A>=p<rsub|2><rsup|A>
      ,
    </equation*>

    <\equation*>
      p<rsub|1><rsup|A>=1-p<rsub|2><rsup|A>=0.8 .
    </equation*>

    Similarly, for system B,

    <\equation*>
      U<rsub|B>=<frac|900|1000>=\<varepsilon\><rsub|1><rsup|B>*p<rsub|1><rsup|B>+\<varepsilon\><rsub|2><rsup|B>*p<rsub|2><rsup|B>=p<rsub|2><rsup|B>
      ,
    </equation*>

    <\equation*>
      p<rsub|1><rsup|B>=1-p<rsub|2><rsup|B>=0.1 .
    </equation*>

    Now we let the systems exchange energy. What would be the new equilibrium
    distribution of states?

    According to the First Law of Thermodynamics, energy is conserved.

    <\equation>
      U<rsub|total>=U<rsub|A>+U<rsub|B>=<frac|N<rsub|A>*U<rsub|A>+N<rsub|B>*U<rsub|B>|N<rsub|A>+N<rsub|B>>=0.55
      .
    </equation>

    This is a constraint equation!

    We wish to maximize the entropy.

    <\equation>
      <frac|S|k>=-<big|sum>p<rsub|i>*ln p<rsub|i>=-p<rsub|1><rsup|A>*ln
      p<rsub|1><rsup|A>-p<rsub|2><rsup|A>*ln
      p<rsub|2><rsup|A>-p<rsub|1><rsup|B>*ln
      p<rsub|1><rsup|B>-p<rsub|2><rsup|B>*ln p<rsub|2><rsup|B> .
    </equation>

    The other constraint equations:

    <\equation>
      g=p<rsub|1><rsup|A>+p<rsub|2><rsup|A>+p<rsub|1><rsup|B>+p<rsub|2><rsup|B>=1
    </equation>

    <\equation>
      h=\<varepsilon\><rsub|1><rsup|A>*p<rsub|1><rsup|A>+\<varepsilon\><rsub|2><rsup|A>*p<rsub|2><rsup|A>+\<varepsilon\><rsub|1><rsup|B>*p<rsub|1><rsup|B>+\<varepsilon\><rsub|2><rsup|B>*p<rsub|2><rsup|B>
    </equation>

    According to Boltzmann's law,

    <\equation*>
      p<rsub|i><rsup|\<star\>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>|q>,<space|2em>q=\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|1><rsup|A>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|2><rsup|A>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|1><rsup|B>>+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|2><rsup|B>>=2*<around*|(|1+\<mathe\><rsup|-\<beta\>>|)>
      .
    </equation*>

    Accordingly,

    <\equation>
      p<rsub|1><rsup|A,\<star\>>=p<rsub|1><rsup|B,\<star\>>=<frac|1|2*<around*|(|1+\<mathe\><rsup|-\<beta\>>|)>>,<space|2em>p<rsub|2><rsup|B,\<star\>>=p<rsub|2><rsup|A,\<star\>>=<frac|\<mathe\><rsup|-\<beta\>>|2*<around*|(|1+\<mathe\><rsup|-\<beta\>>|)>>
      .
    </equation>

    What is the value of <math|\<beta\>>? Insert into the constraint
    equation, eq. (3.4).

    <\equation*>
      U<rsub|total>=2*<around*|(|0\<cdot\><frac|1|2*<around*|(|1+\<mathe\><rsup|-\<beta\>>|)>>+1\<cdot\><frac|\<mathe\><rsup|-\<beta\>>|2*<around*|(|1+\<mathe\><rsup|-\<beta\>>|)>>|)>=0.55
      ,
    </equation*>

    <\equation*>
      \<beta\>=-ln <frac|U<rsub|total>|1-U<rsub|total>>=-0.2 .
    </equation*>

    Plug <math|\<beta\>> into eq. (3.5) to get (after normalization per
    system) <math|p<rsub|1><rsup|A,\<star\>>=p<rsub|1><rsup|B,\<star\>>=0.54>
    and <math|p<rsub|2><rsup|A\<star\>>=p<rsub|2><rsup|B,\<star\>>=0.46>. We
    can infer that particles in system <math|A> moved to the higher energy
    state, and particles in system <math|B> moved to the lower energy state.
  </example*>

  <subsection|Thermodynamic systems and the fundamental thermodynamic
  equations>

  A thermodynamic system is a collection of matter in any form, delineated
  from its surroundings by (real or imaginary) boundaries. Defining the
  boundaries is important, as its specifies thermodynamic properties of the
  system.

  <em|Types of systems:>

  <\description>
    <item*|Open system>An open system can exchange energy, volume, and matter
    with its surroundings.

    <item*|Closed system>Energy can cross the boundary of a closed system,
    but matter cannot.

    <item*|Isolated system>Energy and matter cannot cross the boundaries of
    an isolated system. Also, volume does not change. The total internal
    energy of an isolted system is constant.
  </description>

  <em|Types of boundaries:>

  <\description>
    <item*|Semipermeable membrane>A semipermeable membrane is a boundary that
    restricts the flow of some kinds of particle, while allowing others to
    cross.

    <item*|Adiabatic boundary>Prevents heat from flowing between the system
    and its surroundings.
  </description>

  We've seen that maximizing entropy with respect to different parameters,
  such as volume, number of particles, and internal energy, we predict
  different phenomena, such as expansion of gas, change in composition, and
  heat flow, respectively.

  Many systems, however, \ allow multiple parameters to change simutaneously.
  The <em|fundamental thermodynamic equation> for entropy is multivariate:
  <math|S=S<around*|(|U,V,\<b-up-N\>|)>>. In this formulation, the energy
  <math|U>, the volume <math|V>, and the number of particles of different
  categories <math|N<rsub|1>,N<rsub|2>,\<ldots\>,N<rsub|M>> are all free to
  change.

  Note that history first conjured the relations in the form of energy:
  <math|U=U<around*|(|S,V,\<b-up-N\>|)>>. The fundamental definitions of
  pressure, chemical potential, and temperature are based on the form of
  <math|U=U<around*|(|S,V,\<b-up-N\>|)>>. The microscopic driving forces,
  though, are better understood in terms of the enetropy equation
  <math|S=S<around*|(|U,V,\<b-up-N\>|)>>, so we need a way to switch between
  them. In any case, both formulations completely specify the state of a
  system.

  <\note*>
    Thermodynamics does not entell the specific mathematical dependence of
    <math|S> on <math|<around*|(|U,V,\<b-up-N\>|)>> or <math|U> on
    <math|<around*|(|S,V,\<b-up-N\>|)>>. <em|Equations of state>, which come
    from microscopic models or experiments, specify interrlations among these
    variables.\ 
  </note*>

  In this section, we transition from Statistical Mechanics to Classical
  Thermodynamics.

  <\equation*>
    S=-k*<big|sum>p<rsub|i>*ln p<rsub|i><space|1em>\<rightarrow\><space|1em>S=f<around*|(|U,V,\<b-up-N\>|)>
    .
  </equation*>

  <subsection|The fundamental equations define the thermodynamic driving
  forces>

  According to the fundamental entropy equation,

  <\equation>
    \<mathd\>S=<around*|(|<frac|\<partial\>S|\<partial\>U>|)><rsub|V,\<b-up-N\>>*\<mathd\>U+<around*|(|<frac|\<partial\>S|\<partial\>V>|)><rsub|U,\<b-up-N\>>*\<mathd\>V+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>S|\<partial\>N<rsub|j>>|)><rsub|U,V,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j>
    .<label|entropy-diff-form>
  </equation>

  Similarly, using the fundamental energy equation,

  <\equation>
    \<mathd\>U=<around*|(|<frac|\<partial\>U|\<partial\>S>|)><rsub|V,\<b-up-N\>>*\<mathd\>S+<around*|(|<frac|\<partial\>U|\<partial\>V>|)><rsub|S,\<b-up-N\>>*\<mathd\>V+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>U|\<partial\>N<rsub|j>>|)><rsub|S,V,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j>
    <label|energy-diff-form>
  </equation>

  It turns out that the partial derivatives in <eqref|energy-diff-form>
  corredspond to measurable physical quantities.

  <\definition>
    <em|Temperature, pressure, and chemical potential>.

    <\equation>
      T=<around*|(|<frac|\<partial\>U|\<partial\>S>|)><rsub|V,\<b-up-N\>>,<space|2em>p=-<around*|(|<frac|\<partial\>U|\<partial\>V>|)><rsub|S,\<b-up-N\>>,<space|2em>\<mu\><rsub|j>=<around*|(|<frac|\<partial\>U|\<partial\>N<rsub|j>>|)><rsub|S,V,N<rsub|i\<neq\>j>>
      .<label|state-pars-def>
    </equation>
  </definition>

  <\note*>
    <math|T,P> and <math|\<mu\>> are intensive properties, that are conjugate
    to extensive quantities, <math|U,S,V> and <math|N>.
  </note*>

  Substituting <eqref|state-pars-def> into <eqref|energy-diff-form> gives the
  <em|differential form of the fundamental energy equation>:

  <\ornamented>
    <\equation>
      \<mathd\>U=T*\<mathd\>S-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>
      .<label|energy-fundamental>
    </equation>

    Alternatively, substituting into <eqref|entropy-diff-form> gives the
    <em|differential form of the fundamental entropy equation>:

    <\equation>
      \<mathd\>S=<around*|(|<frac|1|T>|)>*\<mathd\>U+<around*|(|<frac|p|T>|)>*\<mathd\>V-<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<mu\><rsub|j>|T>|)>*\<mathd\>N<rsub|j>
      .<label|entropy-fundamental>
    </equation>
  </ornamented>

  From which we identify,

  <\ornamented>
    <\equation>
      <frac|1|T>=<around*|(|<frac|\<partial\>S|\<partial\>U>|)><rsub|V,\<b-up-N\>>
      ,<space|2em><frac|p|T>=<around*|(|<frac|\<partial\>S|\<partial\>V>|)><rsub|U,\<b-up-N\>>
      ,<space|2em><frac|\<mu\><rsub|j>|T>=-<around*|(|<frac|\<partial\>S|\<partial\>N<rsub|j>>|)><rsub|U,V,N<rsub|i\<neq\>j>>
      .<label|state-pars-alt-def>
    </equation>
  </ornamented>

  We shall later see how equations <eqref|energy-state-diff-form> and
  <eqref|entropy-state-diff-form> can be used to identify states of
  equilibrium.

  <section|Laboratory conditions and free energies>

  Up until now we dealed with systems with known energy that exchange it
  across their boundaries. These systems tend toward states of maximum
  entropy. That logic helped explain gas expansion, particle mixing, and the
  interconversion of heat. We now wish to explore a different class of
  systems, such as test tubes in laboratory heat baths, processes open to the
  air, and processes in biological systems. In these systems, it is not work
  or heat flow that is controled at the boundaries, but temperature and
  pressure. This change requires new thermodynamic quantities\Vthe <em|free
  energy> and the <em|enthalpy>\V and reformulated extremum principles.
  Systems held at constant temperature do not tend toward their states of
  maximum entropy. They tend roward their states of <em|minimum free energy>.

  When an intensive variable, such as <math|T,p>, or <math|\<mu\>> is
  controlled or measured at the boundary, it means that the conjugate
  variables, <math|U,V,> or <math|N>, can exchange freely back and forth
  across the boundary with the <em|bath>, the external reservoir that is
  large enough that it can hold <math|V,p,> or <math|\<mu\>> fixed, no matter
  what happens in the system. Such exchanges are called <em|fluctuations>.

  When <math|T> is constant, heat can exchange between the system and the
  surroundings, so the energy of the system fluctuates. When <math|p> is held
  constant, the volume fluctuates. When <math|\<mu\>> is constant, a particle
  bath is in contact with the system\Vparticles leave or enter the system to
  and from the particle bath. In this case, the number of particles in the
  system can fluctuate.

  Consider a process in a system that we call the <em|tset tube>, immersed in
  a <em|heat bath>. a heat bath refers to any surroundings of a system that
  hold the temperatue of the system constant. If the combined test tube plus
  heat bath are isolated from the greater surroundings, equilibrium will be
  the state of maximum entropy for the total system. However, we are only
  intereseted in what happens in the test tube itself. We need a new extremum
  principle that applies to the test tube, where the independent variables
  are <math|<around*|(|T,V,\<b-up-N\>|)>>.

  <\ornamented>
    <\note*>
      If the extremum of a function such as <math|S<around*|(|U|)>> predicts
      equilibrium, the variable <math|U> is called the <em|natural variable>
      of <math|S>. <math|T> is not a natural variable of <math|S>. Now we
      show that <math|<around*|(|T,V,\<b-up-N\>|)>> are natural variables of
      a function <math|F>, the <em|Helmholtz free energy>.

      An extremum in <math|F<around*|(|T,V,\<b-up-N\>|)>> predicts equilibria
      in systems that are constrained to constant temperature at their
      boundaries.
    </note*>
  </ornamented>

  <subsection|Free energy defines another extremum principle>

  <subsubsection|The Helmholtz free energy>

  Consider a process inside a test tube, sealed so that it has constant
  volume <math|V> and no interchange of its <math|\<b-up-N\>> particles with
  the surroundings. A heat bath holds the test tube at constant temperature
  <math|T>.

  <\big-figure|<image|Figures/helmholtz-free-energy.png|0.3par|||>>
    A heat bath is a reservoir that holds the system (the test tube in this
    case) at constant temperature by allowing heat flow in or out, as
    required. The properties that do not change inside the system are
    <around*|(|<math|T,V,\<b-up-N\>>|)>.
  </big-figure>

  The process inside the test tube might be complex. It might vary in rate
  from a quasi-static process to an explosion. It might or might not involve
  chemical or phase changes. It might give off or absorb heat. Processes
  within the test tube will influence the heat bath only through heat
  exchange, because its volume does not change and no work is done.

  If the combined system (sub-system plus heat bath) is isolated, equilibrium
  will be the state of maximum entropy of the combined system. Any change
  toward equilibrium must increase the entropy of the combined system,
  <math|\<mathd\>S<rsub|combined>\<geqslant\>0>.

  Because the entropy is extensive,

  <\equation>
    \<mathd\>S<rsub|combined>=\<mathd\>S<rsub|sys>+\<mathd\>S<rsub|bath>\<geqslant\>0
    .
  </equation>

  Since the combined system is isolated,

  <\equation>
    \<mathd\>U<rsub|bath>+\<mathd\>U<rsub|sys>=0 .
  </equation>

  We wish to relate <math|\<mathd\>S<rsub|bath>> to some property of the test
  tube system. Use <eqref|entropy-state-diff-form> to get, in our case,

  <\equation>
    \<mathd\>S<rsub|bath>=<around*|(|<frac|1|T>|)>*\<mathd\>U<rsub|bath>.<space|2em><around*|(|\<b-up-N\>,V|)>=constant
  </equation>

  Combine with eq. (4.2) to get

  <\equation>
    \<mathd\>S<rsub|bath>=-<frac|\<mathd\>U<rsub|sys>|T> .
  </equation>

  Substitute eq. (4.4) into (4.1) to get

  <\equation>
    \<mathd\>S<rsub|sys>=-<frac|\<mathd\>U<rsub|sys>|T>\<geqslant\>0<space|2em>\<Longrightarrow\><space|2em>\<mathd\>U<rsub|sys>-T*\<mathd\>S<rsub|sys>\<leqslant\>0
    .
  </equation>

  We got an expression describing the aaproach to equilibrium in tems of the
  test tube sub-system alone. Define a quantity <math|F>, the <em|Helmholtz
  free energy>:

  <\definition>
    <em|Helmholtz free energy>.

    <\equation>
      F\<equiv\>U-T*S .<label|helmholtz>
    </equation>

    <\equation>
      \<mathd\>F=\<mathd\>U-T*\<mathd\>S-S*\<mathd\>T .<label|helmholtz-diff>
    </equation>
  </definition>

  Comparison of eq. <eqref|helmholtz-diff> with eq. (4.5) shows that when a
  system in which <math|<around*|(|T,V,\<b-up-N\>|)>> are constant is at
  equilibrium, the quantity <math|F> is at minimum. It also follows from eq.
  <eqref|helmholtz> that to miminize <math|F>, the system in the tube will
  tend toward <em|both> high entropy and low energy, depending on the
  temperature. At high temperatures, the entropy dominates. At low
  temperatures, the energy dominates.

  <subsubsection|The fundamental equation for the Helmholtz free energy>

  Just as the functional form <math|S<around*|(|U,V,\<b-up-N\>|)>> implies a
  fundamental entropy equation for <math|\<mathd\>S>, the form
  <math|F<around*|(|T,V,\<b-up-N\>|)>> implies a fundamental equation for
  <math|\<mathd\>F>:

  <\equation*>
    \<mathd\>F=\<mathd\><around*|(|U-T*S|)>=\<mathd\>U-T*\<mathd\>S-S*\<mathd\>T
    .
  </equation*>

  Substitute the fundamental energy equation <eqref|energy-state-diff-form>
  into <eqref|helmholtz-diff> to get:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<mathd\>F>|<cell|=>|<cell|<around*|(|T*\<mathd\>S-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>|)>-T*\<mathd\>S-S*\<mathd\>T>>|<row|<cell|>|<cell|=>|<cell|-S*\<mathd\>T-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>
    .<eq-number><label|helmholtz-fundamental>>>>>
  </eqnarray*>

  Because <math|\<mathd\>F> is also defined by its partial derivative
  expression,

  <\equation>
    \<mathd\>F=<around*|(|<frac|\<partial\>F|\<partial\>T>|)><rsub|V,\<b-up-N\>>*\<mathd\>T+<around*|(|<frac|\<partial\>F|\<partial\>V>|)><rsub|T,\<b-up-N\>>*\<mathd\>V+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>F|\<partial\>N<rsub|j>>|)><rsub|V,T,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j>
    ,
  </equation>

  we get additional thermodynamic relations by comparing eq. (4.9) with
  <eqref|helmholtz-fundamental>:

  <\equation>
    S=-<around*|(|<frac|\<partial\>F|\<partial\>T>|)><rsub|V,\<b-up-N\>>,<space|2em>p=-<around*|(|<frac|\<partial\>F|\<partial\>V>|)><rsub|T,\<b-up-N\>>,<space|2em>\<mu\><rsub|j>=<around*|(|<frac|\<partial\>F|\<partial\>N<rsub|j>>|)><rsub|V,T,N<rsub|i\<neq\>j>>
    .<label|state-pars-alt-v2>
  </equation>

  <\ornamented>
    <\note*>
      We derived <math|F<around*|(|T,V,\<b-up-N\>|)>> from
      <math|S<around*|(|U,V,\<b-up-N\>|)>> by phisical arguments. You can
      also switch from one set of independent variables to another by purely
      mathematical arguments, called<em| Legendre transfoms.>

      A function <math|y=f<around*|(|x|)>> can be described as a list of
      pairs <math|<around*|(|x<rsub|1>,y<rsub|1>|)>,<around*|(|x<rsub|2>,y<rsub|2>|)>,\<ldots\>>.
      You can express the same function instead as a list of different pairs:
      the slopes <math|c<around*|(|x|)>> and the intercepts
      <math|b<around*|(|x|)>>: <math|<around*|(|c<rsub|1>,b<rsub|1>|)>,<around*|(|c<rsub|2>,b<rsub|2>|)>,\<ldots\>>.

      For a small change <math|\<mathd\>x>, the change <math|\<mathd\>y> in
      the function can be described by the slope <math|c<around*|(|x|)>> at
      that point:

      <\equation>
        \<mathd\>y=<around*|(|<frac|\<partial\>y|\<partial\>x>|)>*\<mathd\>x=c<around*|(|x|)>*\<mathd\>x.
      </equation>

      <\big-figure|<image|Figures/legendre-transform.png|0.4par|||>>
        To create the Legendre transofrm, a function <math|y<around*|(|x|)>>
        is expressed as a tangent slope function <math|c<around*|(|x|)>>, and
        a tangent intercept function <math|b<around*|(|x|)>>. The tangent
        slopes and intercepts of points <math|x<rprime|'>> and
        <math|x<rprime|''>> are shown here.
      </big-figure>

      Actually, the full function <math|y<around*|(|x|)>> (not just small
      changes) can be regarded as a set of slopes and intercepts\Vone slope
      <math|c<around*|(|x|)>> and one intercept <math|b<around*|(|x|)>> for
      each point <math|x>:

      <\equation>
        y<around*|(|x|)>=c<around*|(|x|)>*x+b<around*|(|x|)><space|2em>\<Longrightarrow\><space|2em>b<around*|(|x|)>=y<around*|(|x|)>-c<around*|(|x|)>*x
        .
      </equation>

      We are interested in the function that expresses the series of
      intercepts versus slopes, <math|b<around*|(|c|)>>. To see how small
      changes in the slope <math|c> lead to small changes in the intercept
      <math|b>, take the differential of (4.12) and substitute in (4.11), to
      get

      <\equation>
        \<mathd\>b=\<mathd\>y-c*\<mathd\>x-x*\<mathd\>c=-x*\<mathd\>c.
      </equation>

      Now generalize to a multivariate function
      <math|y=y<around*|(|x<rsub|1>,x<rsub|2>,x<rsub|3>|)>>. The differential
      element is

      <\equation>
        \<mathd\>y=c<rsub|1>*\<mathd\>x<rsub|1>+c<rsub|2>*\<mathd\>x<rsub|2>+c<rsub|3>*\<mathd\>x<rsub|3>,
      </equation>

      where

      <\equation*>
        c<rsub|1>=<around*|(|<frac|\<partial\>y|\<partial\>x<rsub|1>>|)><rsub|x<rsub|2>,x<rsub|3>>,<space|2em>c<rsub|2>=<around*|(|<frac|\<partial\>y|\<partial\>x<rsub|2>>|)><rsub|x<rsub|1>,x<rsub|3>>,<space|2em>c<rsub|3>=<around*|(|<frac|\<partial\>y|\<partial\>x<rsub|3>>|)><rsub|x<rsub|1>,x<rsub|2>>
        .
      </equation*>

      We want the intercept function <math|b<rsub|1>> along the
      <math|x<rsub|1>> axis:

      <\equation>
        b<rsub|1><around*|(|c<rsub|1>,x<rsub|2>,x<rsub|3>|)>=y-c<rsub|1>*x<rsub|1>
        .
      </equation>

      Take the differential of (4.15) and substitute (4.14) to get

      <\equation>
        \<mathd\>b<rsub|1>=\<mathd\>y-c<rsub|1>*\<mathd\>x<rsub|1>-x<rsub|1>*\<mathd\>c<rsub|1>=-x<rsub|1>*\<mathd\>c<rsub|1>+c<rsub|2>*\<mathd\>x<rsub|2>+c<rsub|3>*\<mathd\>x<rsub|3>
        .
      </equation>

      From (4.16), you can see that

      <\equation>
        x<rsub|1>=-<around*|(|<frac|\<partial\>b<rsub|1>|\<partial\>c<rsub|1>>|)><rsub|x<rsub|2>,x<rsub|3>>,<space|2em>c<rsub|2>=<around*|(|<frac|\<partial\>b<rsub|1>|\<partial\>x<rsub|2>>|)><rsub|c<rsub|1>,x<rsub|3>>,<space|2em>c<rsub|3>=<around*|(|<frac|\<partial\>b<rsub|1>|\<partial\>x<rsub|3>>|)><rsub|c<rsub|1>,x<rsub|2>>
        .
      </equation>

      Any of the original independent variables <math|x<rsub|i>> can be
      exchanged with their conjugate variables <math|c<rsub|i>> in this way.
      The transormation can be performed on any combination of conjugate
      parirs, so there are a total of <math|2<rsup|n>-1> possible
      transformations.
    </note*>
  </ornamented>

  <subsubsection|The enthalpy>

  The enthalpy is a function of the natural variables
  <math|<around*|(|S,p,\<b-up-N\>|)>>. Enthalpy is seldom used an an extemum
  principle, because it is not usually convenient to control the entropy.
  However, it can be ontained from calorimetry experiments, and it gives an
  emperimental route to the Gibbs free energy, which is of central importance
  in chemistry and biology.

  To find the enthalpy, you could reason in the same way as we did for the
  Helmholtz free energy, but instead let's use a simple math argument. Start
  with the internal energy <math|U<around*|(|S,V,\<b-up-N\>|)>>. We seek to
  replace a <math|\<mathd\>V> tyerm in the energy function with a
  <math|\<mathd\>p> term to get the enthalpy function <math|\<mathd\>H>. Add
  a <math|p*V> term to the energy so that when you differentiate it, the
  <math|\<mathd\>V> term will disappear and a <math|\<mathd\>p> term will
  appear:

  <\ornamented>
    <\equation>
      H=H<around*|(|S,p,\<b-up-N\>|)>\<equiv\>U+p*V .<label|enthalpy>
    </equation>
  </ornamented>

  Now differentiate:

  <\equation>
    \<mathd\>H=\<mathd\>U+p*\<mathd\>V+V*\<mathd\>p .<label|enthalpy-diff>
  </equation>

  Subsitute eq. <eqref|energy-fundamental> into (4.19) to get

  <\equation*>
    \<mathd\>H=T*\<mathd\>S-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>+p*\<mathd\>V+V*\<mathd\>p
  </equation*>

  <\ornamented>
    <\equation>
      \<mathd\>H=T*\<mathd\>S+V*\<mathd\>p+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>
      .<label|enthalpy-fundamental>
    </equation>
  </ornamented>

  <\equation*>
    \;
  </equation*>

  <subsubsection|The Gibbs free energy>

  The Gibbs free energy <math|G> is a function of
  <math|<around*|(|T,p,\<b-up-N\>|)>>. Constant temperature and pressure are
  the easiest constraints to impose in the laboratory, because the atmosphere
  provides them.

  <math|G=G<around*|(|T,p,\<b-up-N\>|)>> has a minimum at equilibrium. To
  find the fundamental equation, start with the enthalpy,
  <math|H=H<around*|(|S,p,\<b-up-N\>|)>>. You want to replace the
  <math|\<mathd\>S> term with a <math|\<mathd\>T> term in eq.
  <eqref|enthalpy-fundamental>. Define a function <math|G>:

  <\ornamented>
    <\equation>
      G\<equiv\>H-T*S .<label|gibbs>
    </equation>
  </ornamented>

  The total differential <math|\<mathd\>G> is

  <\equation>
    \<mathd\>G=\<mathd\>H-T*\<mathd\>S-S*\<mathd\>T .<label|gibbs-diff>
  </equation>

  Substitute eq. <eqref|enthalpy-fundamental> into (4.22) to get

  <\ornamented>
    <\equation>
      \<mathd\>G=-S*\<mathd\>T+V*\<mathd\>p+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>
      .<label|gibbs-fundamental>
    </equation>
  </ornamented>

  Similarly to <math|F<around*|(|T,V,\<b-up-N\>|)>>, if a process occurs in a
  test tube held at constant pressure and temperature, it will be at
  equilibium when the Gibbs free energy is at minumim.

  <\ornamented>
    <\note*>
      Equilibrium is the state at which the entropy of the combined system
      <em|plus> surroundings is at maximum. However, for the test tube system
      itself, which is at constant <math|<around*|(|T,p,\<b-up-N\>|)>>,
      equilibirum occurs when the Gibbs free energy is at mimimum.
    </note*>
  </ornamented>

  <math|\<mathd\>G> can be expressed as

  <\equation>
    \<mathd\>G=<around*|(|<frac|\<partial\>G|\<partial\>T>|)><rsub|p,\<b-up-N\>>*\<mathd\>T+<around*|(|<frac|\<partial\>G|\<partial\>p>|)><rsub|T,\<b-up-N\>>*\<mathd\>p+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>G|\<partial\>N<rsub|j>>|)><rsub|p,T,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j
    > .
  </equation>

  So,

  <\equation>
    S=-<around*|(|<frac|\<partial\>G|\<partial\>T>|)><rsub|p,\<b-up-N\>>*,<space|2em>V=<around*|(|<frac|\<partial\>G|\<partial\>p>|)><rsub|T,\<b-up-N\>>,<space|2em>\<mu\><rsub|j>=<around*|(|<frac|\<partial\>G|\<partial\>N<rsub|j>>|)><rsub|p,T,N<rsub|i\<neq\>j>>
    .
  </equation>

  <\ornamented>
    <\note*>
      For equilibrium phase changes, which occur at constant temperature,
      pressure, and paritcle numbe, the Gibbs free energy does not change.
    </note*>
  </ornamented>

  <\itemize>
    <item>A <em|micro canonical ensemble> is described in terms of
    <math|S,V,N>.

    <item>A <em|canonical ensemble> is described in terms of <math|T,V,N>.

    <item>A <em|grand canonical ensemble> is described in terms of
    <math|T,V,\<mu\>>.
  </itemize>

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|frame-titles|true>
    <associate|info-flag|detailed>
    <associate|math-font|math-pagella>
    <associate|ornament-color|light grey>
    <associate|ornament-shape|rounded>
    <associate|ornament-title-style|top center>
    <associate|page-medium|papyrus>
    <associate|page-screen-margin|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate||<tuple|4.20|?>>
    <associate|Boltzmann-distribution-law|<tuple|2.4|11>>
    <associate|Lagrange-alt|<tuple|2.3|9>>
    <associate|Lagrange-multipliers|<tuple|2.2|8>>
    <associate|Stirling's approximation|<tuple|2.2|5>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3.1|9>>
    <associate|auto-11|<tuple|2.3.2|9>>
    <associate|auto-12|<tuple|2.3|10>>
    <associate|auto-13|<tuple|2.3.3|?>>
    <associate|auto-14|<tuple|3|?>>
    <associate|auto-15|<tuple|3.1|?>>
    <associate|auto-16|<tuple|3.2|?>>
    <associate|auto-17|<tuple|3.1|?>>
    <associate|auto-18|<tuple|3.3|?>>
    <associate|auto-19|<tuple|3.2|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|3.4|?>>
    <associate|auto-21|<tuple|3.5|?>>
    <associate|auto-22|<tuple|4|?>>
    <associate|auto-23|<tuple|4.1|?>>
    <associate|auto-24|<tuple|4.1.1|?>>
    <associate|auto-25|<tuple|4.1|?>>
    <associate|auto-26|<tuple|4.1.2|?>>
    <associate|auto-27|<tuple|4.2|?>>
    <associate|auto-28|<tuple|4.1.3|?>>
    <associate|auto-29|<tuple|4.1.4|?>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|2|4>>
    <associate|auto-5|<tuple|2.1|4>>
    <associate|auto-6|<tuple|2.2|6>>
    <associate|auto-7|<tuple|2.1|7>>
    <associate|auto-8|<tuple|2.3|7>>
    <associate|auto-9|<tuple|2.2|8>>
    <associate|average-energy-canonical-ensemble|<tuple|2.6|11>>
    <associate|energy-diff-form|<tuple|3.9|?>>
    <associate|energy-fundamental|<tuple|3.11|?>>
    <associate|energy-state-diff-form|<tuple|3.11|?>>
    <associate|enthalpy|<tuple|4.18|?>>
    <associate|enthalpy-diff|<tuple|4.19|?>>
    <associate|enthalpy-fundamental|<tuple|4.20|?>>
    <associate|entropy-alt-def|<tuple|2.1|5>>
    <associate|entropy-definition|<tuple|2.1|4>>
    <associate|entropy-diff-form|<tuple|3.8|?>>
    <associate|entropy-fundamental|<tuple|3.12|?>>
    <associate|entropy-state-diff-form|<tuple|3.12|?>>
    <associate|first-law|<tuple|3.1|?>>
    <associate|gibbs|<tuple|4.21|?>>
    <associate|gibbs-definition|<tuple|4.21|?>>
    <associate|gibbs-diff|<tuple|4.22|?>>
    <associate|gibbs-fundamental|<tuple|4.23|?>>
    <associate|helmholtz|<tuple|4.6|?>>
    <associate|helmholtz-alt-diff-form|<tuple|4.2|?>>
    <associate|helmholtz-def|<tuple|4.6|?>>
    <associate|helmholtz-diff|<tuple|4.7|?>>
    <associate|helmholtz-diff-form|<tuple|4.2|?>>
    <associate|helmholtz-free-energy|<tuple|4.2|?>>
    <associate|helmholtz-fundamental|<tuple|4.8|?>>
    <associate|partition-function|<tuple|2.5|11>>
    <associate|state-pars-alt-def|<tuple|3.13|?>>
    <associate|state-pars-alt-v2|<tuple|4.10|?>>
    <associate|state-pars-def|<tuple|3.10|?>>
    <associate|taylor-series|<tuple|2.3|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|2.1>|>
        Each particle may occupy a lattice site.
      </surround>|<pageref|auto-7>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2.2>|>
        To identify the maximum of this function, both
        <with|mode|<quote|math>|<around*|(|\<partial\>f/\<partial\>x|)>> and
        <with|mode|<quote|math>|<around*|(|\<partial\>f/\<partial\>y|)>> must
        equal zero, as they do in (b), but not in (a).
      </surround>|<pageref|auto-9>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2.3>|>
        <with|mode|<quote|math>|-p*ln p> versus <with|mode|<quote|math>|p>
        has a maximum.
      </surround>|<pageref|auto-12>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Review
      of probability> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Rules of probability
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Combinatorics and
      probability distributions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Entropy>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Definition and Stirling's
      approximation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Lattice models
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Predicting distributions by
      maximizing entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Extrema with constraints:
      Method of Lagrange Multipliers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|2.3.2<space|2spc>Maximizing entropy of an
      isolated system <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|2.3.3<space|2spc>Maximizing entropy with an
      energy constraint <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Free
      energy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>