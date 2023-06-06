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
      p<rsub|A>=<frac|n<rsub|A>|N>=<frac|<text|outcomes cat.>A|<text|all
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
    <math|p=1-p<rsub|A>>.
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
      W=N!=N*<around*|(|N-1|)>*<around*|(|N-2|)>*\<cdots\>
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
      \<mathd\>x.
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
      \<mathd\>x.
    </equation*>

    <\em>
      Given <math|f<around*|(|x|)>>,

      <\equation*>
        <around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>=<big|int>f<around*|(|x|)>*p<around*|(|x|)>
        \<mathd\>x.
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
      \<mathd\>x.
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
    p<rsub|i>=<frac|S<rsub|N>|N*k>=<frac|S|k>,
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
      \<Delta\>*S=S<rsub|A\<nocomma\>B><rsup|\<star\>>-S<rsub|A\<nocomma\>B>=k*ln
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
    \<Delta\>*f=f<around*|(|x|)>-f<around*|(|a|)>=<around*|(|<frac|\<mathd\>f|\<mathd\>x>|)><rsub|x=a>*\<Delta\>*x+<frac|1|2>*<around*|(|<frac|\<mathd\><rsup|2>f|\<mathd\>x<rsup|2>>|)><rsub|x=a>*\<Delta\>*x<rsup|2>+<frac|1|6>*<around*|(|<frac|\<mathd\><rsup|3>f|\<mathd\>x<rsup|3>>|)><rsub|x=a>*\<Delta\>*x<rsup|3>+\<cdots\><label|taylor-series>
    .
  </equation*>

  For very small changes, <math|\<Delta\>*x=<around*|(|x-a|)>\<rightarrow\>\<mathd\>x>,
  non-linear terms in the series expansions are negligible, and thus
  <math|\<mathd\>f\<approx\><around*|(|<frac|\<mathd\>f|\<mathd\>x>|)><rsub|x=a>*\<mathd\>x>.

  In the case of a bivariate function, <math|f<around*|(|x,y|)>>,

  <\equation*>
    \<mathd\>f=<around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>*\<mathd\>x+<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>*\<mathd\>y
    .
  </equation*>

  We can generalize to multivariate functions, and define

  <\equation*>
    \<mathd\>f=<big|sum><rsub|i=1><rsup|t><around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)><rsub|x<rsub|j\<neq\>i>>*\<mathd\>x<rsub|i>.
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
    \<mathd\>f=<big|sum><rsub|i=1><rsup|t><around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)><rsub|x<rsub|j\<neq\>i>>*\<mathd\>x<rsub|i>=0,
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
      \<mathd\>f=0=<around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>*\<mathd\>x+<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>*\<mathd\>y,
    </equation*>

    then if we replace <math|\<mathd\>y> by <math|\<mathd\>x> in the extremum
    equation, we get:

    <\equation*>
      \<mathd\>f=0=<around*|[|<around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>+<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>|]>*\<mathd\>x=0,
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
      f<around*|(|x,y|)>=x*y,
    </equation*>

    with the constraint equation

    <\equation*>
      g<around*|(|x,y|)>=2*x+2*y=40 .
    </equation*>

    Use Lagrange multipliers to maximize <math|f> subject to <math|g>:

    <\equation*>
      <around*|(|<frac|\<partial\>f|\<partial\>x>|)>=y,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>x>|)>=2<space|1em>\<Rightarrow\><space|1em>y<rsup|\<star\>>=2*\<mathlambda\>,
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
        <tformat|<table|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|1>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|1>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|1>>|)>-\<cdots\>>|<cell|=>|<cell|0,>>|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|2>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|2>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|2>>|)>-\<cdots\>>|<cell|=>|<cell|0,>>|<row|<cell|\<vdots\><space|9em>>|<cell|>|<cell|>>|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|t>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|t>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|t>>|)>-\<cdots\>>|<cell|=>|<cell|0,>>>>
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
    <frac|S|k>=-<big|sum><rsub|i>p<rsub|i>*ln p<rsub|i>.
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
    p<rsub|1>-1,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|1>>|)><rsub|p<rsub|2>>=1,
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
    <around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<frac|E|N>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>*\<varepsilon\><rsub|i>.
  </equation*>

  What is the distribution of outcomes <math|<around*|(|p<rsub|1><rsup|\<star\>>,p<rsub|2><rsup|\<star\>>,\<ldots\>,p<rsub|t><rsup|\<star\>>|)>>
  consistent with the average score <math|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>>?
  We seek the distribution that maximizes the entropy, subject to two
  constraints: (1) that all probabilities sum to one, and (2) that the
  average score agrees with the observed value
  <math|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>>.

  <\equation*>
    g<around*|(|p<rsub|1>,p<rsub|2>,\<ldots\>,p<rsub|t>|)>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>=1<space|1em>\<Rightarrow\><space|1em><big|sum><rsub|i=1><rsup|t>\<mathd\>p<rsub|i>=0,
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
    q\<equiv\><big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>><label|partition-function>
  </equation>

  Using the score constraint and the above, we get

  <\equation>
    <around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*p<rsub|i><rsup|\<star\>>=<frac|1|q>*<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>.<label|average-energy-canonical-ensemble>
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
    <em|The First Law of Thermodynamics.> (JR Von Mayer, 1842.)

    The internal energy <math|\<Delta\>*U> of a system changes when it takes
    up or gives off heat <math|q> or work <math|w>:

    <\equation>
      \<Delta\>*U=q+w .<label|first-law>
    </equation>

    The internal energy is conserved; if <math|\<Delta\>*U> increases in the
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
    U=<big|sum><rsub|i>N<rsub|i>*\<varepsilon\><rsub|i>,
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

  What would happen if we let the systems exchange energy? The multiplicities
  <math|W<around*|(|U|)>> of the isolated systems are given by binomial
  distribution.

  <\equation*>
    W<rsub|A>=<frac|10!|2!*8!>=45,<space|2em>W<rsub|B>=<frac|10!|4!*6!>=210 .
  </equation*>

  The combined multiplicity of the isolated systems is
  <math|W<rsub|A\<nocomma\>B>=W<rsub|A>*W<rsub|B>=9450>. When the systems
  exchange energy, their total internal energy must be
  conserved\V<math|U<rsub|A>+U<rsub|B>=const>.

  One possibility of heat flow is <math|U<rsub|A>=3,U<rsub|B>=3>. The total
  multiplicity would be

  <\equation*>
    W<rsub|A\<nocomma\>B>=<frac|10!|3!*7!>*<frac|10!|3!*7!>=14\<comma\>400 .
  </equation*>

  As the multiplicity increased, we can infer that heat flows from <math|B>
  to <math|A>, in this case to equalize energies. Consider an alternative
  outcome of heat flow: <math|U<rsub|A>=1,U<rsub|B>=5>. The total
  multiplicity in this case is

  <\equation*>
    W<rsub|A\<nocomma\>B>=<frac|10!|1!*9!>*<frac|10!|5!*5!>=2520 .
  </equation*>

  The principle of maximal multiplicity predicts that heat flow from cold to
  hot objects is unlikely.

  \ 

  <\ornamented>
    <\note*>
      The tendency to maximize multiplicity does not always result in a
      draining of energy from higher to lower.

      Consider two systems (<math|\<varepsilon\><rsub|1>=0,\<varepsilon\><rsub|2>=1>)
      having the same energies, but different particle numbers. Suppose
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
        W<rsub|A\<nocomma\>B>=W<rsub|A>*W<rsub|B>=<frac|10!|3!*7!>*<frac|4!|1!*3!>=480,
      </equation*>

      the multiplicity increased.

      We shall later see that the concept of <em|temperature> describes the
      driving force for energy exchange. The tendency toward maximum
      multiplicity is a tendency toward equal temperatures.
    </note*>
  </ornamented>

  <\example*>
    <em|Calculating maximized multiplicity distribution of particles>.

    Let there be two non-interacting systems, <math|A> and <math|B>, each
    having two possible states:

    <\padded-center>
      <with|gr-mode|<tuple|edit|math-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-auto-crop|true|gr-grid-old|<tuple|cartesian|<point|0|0>|2>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics||<line|<point|-4|2>|<point|-2.0|2.0>>|<line|<point|-4|0>|<point|-2.0|0.0>>|<line|<point|0|2>|<point|2.0|2.0>>|<line|<point|0|0>|<point|2.0|0.0>>|<math-at|\<varepsilon\><rsub|2><rsup|B>=1|<point|2.3|2>>|<math-at|\<varepsilon\><rsub|1><rsup|B>*0|<point|2.3|0>>|<math-at|\<varepsilon\><rsub|2><rsup|A>=1|<point|-5.3|2>>|<math-at|\<varepsilon\><rsub|1><rsup|A>=0|<point|-5.4|0>>|<point|-3.3|2>|<point|-2.9|2>|<point|-3.6|0>|<point|-3.3|0>|<point|-3|0>|<point|-2.7|0>|<point|-2.4|0>|<point|0.3|2>|<point|0.6|2>|<point|0.9|2>|<point|1.2|2>|<point|1.6|2>|<point|0.8|0>|<point|1.1|0>|<math-at|N<rsub|A>=1000|<point|-3.7|-1.0>>|<math-at|N<rsub|B>=1000|<point|0.6|-1>>|<math-at|N<rsub|B>*U<rsub|B>=900|<point|0.5265742823124752|-1.566080169334568>>|<math-at|N<rsub|A>*U<rsub|A>=200|<point|-3.7494873660537107|-1.5519910041010716>>>>
    </padded-center>

    The total energy of the system per particle is
    <math|<frac|U|N>=<big|sum><rsub|i>p<rsub|i>*\<varepsilon\><rsub|i>> .

    What is the distribution of states within each system?

    For system <math|A>,

    <\equation*>
      U<rsub|A>=<frac|200|1000>=\<varepsilon\><rsub|1><rsup|A>*p<rsub|1><rsup|A>+\<varepsilon\><rsub|2><rsup|A>*p<rsub|2><rsup|A>=p<rsub|2><rsup|A>,
    </equation*>

    <\equation*>
      p<rsub|1><rsup|A>=1-p<rsub|2><rsup|A>=0.8 .
    </equation*>

    Similarly, for system B,

    <\equation*>
      U<rsub|B>=<frac|900|1000>=\<varepsilon\><rsub|1><rsup|B>*p<rsub|1><rsup|B>+\<varepsilon\><rsub|2><rsup|B>*p<rsub|2><rsup|B>=p<rsub|2><rsup|B>,
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
      U<rsub|total>=2*<around*|(|0\<cdot\><frac|1|2*<around*|(|1+\<mathe\><rsup|-\<beta\>>|)>>+1\<cdot\><frac|\<mathe\><rsup|-\<beta\>>|2*<around*|(|1+\<mathe\><rsup|-\<beta\>>|)>>|)>=0.55,
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
    energy of an isolated system is constant.
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

  Many systems, however, \ allow multiple parameters to change
  simultaneously. The <em|fundamental thermodynamic equation> for entropy is
  multivariate: <math|S=S<around*|(|U,V,\<b-up-N\>|)>>. In this formulation,
  the energy <math|U>, the volume <math|V>, and the number of particles of
  different categories <math|N<rsub|1>,N<rsub|2>,\<ldots\>,N<rsub|M>> are all
  free to change.

  Note that history first conjured the relations in the form of energy:
  <math|U=U<around*|(|S,V,\<b-up-N\>|)>>. The fundamental definitions of
  pressure, chemical potential, and temperature are based on the form of
  <math|U=U<around*|(|S,V,\<b-up-N\>|)>>. The microscopic driving forces,
  though, are better understood in terms of the entropy equation
  <math|S=S<around*|(|U,V,\<b-up-N\>|)>>, so we need a way to switch between
  them. In any case, both formulations completely specify the state of a
  system.

  <\note*>
    Thermodynamics does not en-tell the specific mathematical dependence of
    <math|S> on <math|<around*|(|U,V,\<b-up-N\>|)>> or <math|U> on
    <math|<around*|(|S,V,\<b-up-N\>|)>>. <em|Equations of state>, which come
    from microscopic models or experiments, specify interrelations among
    these variables.\ 
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
    \<mathd\>S=<around*|(|<frac|\<partial\>S|\<partial\>U>|)><rsub|V,\<b-up-N\>>*\<mathd\>U+<around*|(|<frac|\<partial\>S|\<partial\>V>|)><rsub|U,\<b-up-N\>>*\<mathd\>V+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>S|\<partial\>N<rsub|j>>|)><rsub|U,V,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j>.<label|entropy-diff-form>
  </equation>

  Similarly, using the fundamental energy equation,

  <\equation>
    \<mathd\>U=<around*|(|<frac|\<partial\>U|\<partial\>S>|)><rsub|V,\<b-up-N\>>*\<mathd\>S+<around*|(|<frac|\<partial\>U|\<partial\>V>|)><rsub|S,\<b-up-N\>>*\<mathd\>V+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>U|\<partial\>N<rsub|j>>|)><rsub|S,V,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j><label|energy-diff-form>
  </equation>

  It turns out that the partial derivatives in <eqref|energy-diff-form>
  correspond to measurable physical quantities.

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
      \<mathd\>U=T*\<mathd\>S-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>.<label|energy-fundamental>
    </equation>

    Alternatively, substituting into <eqref|entropy-diff-form> gives the
    <em|differential form of the fundamental entropy equation>:

    <\equation>
      \<mathd\>S=<around*|(|<frac|1|T>|)>*\<mathd\>U+<around*|(|<frac|p|T>|)>*\<mathd\>V-<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<mu\><rsub|j>|T>|)>*\<mathd\>N<rsub|j>.<label|entropy-fundamental>
    </equation>
  </ornamented>

  From which we identify,

  <\ornamented>
    <\equation>
      <frac|1|T>=<around*|(|<frac|\<partial\>S|\<partial\>U>|)><rsub|V,\<b-up-N\>>,<space|2em><frac|p|T>=<around*|(|<frac|\<partial\>S|\<partial\>V>|)><rsub|U,\<b-up-N\>>,<space|2em><frac|\<mu\><rsub|j>|T>=-<around*|(|<frac|\<partial\>S|\<partial\>N<rsub|j>>|)><rsub|U,V,N<rsub|i\<neq\>j>>
      .<label|state-pars-alt-def>
    </equation>
  </ornamented>

  We shall later see how equations <eqref|energy-fundamental> and
  <eqref|entropy-fundamental> can be used to identify states of equilibrium.

  <section|Laboratory conditions and free energies>

  Up until now we dealt with systems with known energy that exchange it
  across their boundaries. These systems tend toward states of maximum
  entropy. That logic helped explain gas expansion, particle mixing, and the
  interconversion of heat. We now wish to explore a different class of
  systems, such as test tubes in laboratory heat baths, processes open to the
  air, and processes in biological systems. In these systems, it is not work
  or heat flow that is controlled at the boundaries, but temperature and
  pressure. This change requires new thermodynamic quantities\Vthe <em|free
  energy> and the <em|enthalpy>\V and reformulated extremum principles.
  Systems held at constant temperature do not tend toward their states of
  maximum entropy. They tend toward their states of <em|minimum free energy>.

  When an intensive variable, such as <math|T,p>, or <math|\<mu\>> is
  controlled or measured at the boundary, it means that the conjugate
  variables, <math|U,V>, or <math|N>, can exchange freely back and forth
  across the boundary with the <em|bath>, the external reservoir that is
  large enough that it can hold <math|V,p>, or <math|\<mu\>> fixed, no matter
  what happens in the system. Such exchanges are called <em|fluctuations>.

  When <math|T> is constant, heat can exchange between the system and the
  surroundings, so the energy of the system fluctuates. When <math|p> is held
  constant, the volume fluctuates. When <math|\<mu\>> is constant, a particle
  bath is in contact with the system\Vparticles leave or enter the system to
  and from the particle bath. In this case, the number of particles in the
  system can fluctuate.

  Consider a process in a system that we call the <em|tset tube>, immersed in
  a <em|heat bath>. a heat bath refers to any surroundings of a system that
  hold the temperature of the system constant. If the combined test tube plus
  heat bath are isolated from the greater surroundings, equilibrium will be
  the state of maximum entropy for the total system. However, we are only
  interested in what happens in the test tube itself. We need a new extremum
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
  tube system. Use <eqref|entropy-fundamental> to get, in our case,

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

  We got an expression describing the approach to equilibrium in terms of the
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
  <eqref|helmholtz> that to minimize <math|F>, the system in the tube will
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

  Substitute the fundamental energy equation <eqref|energy-fundamental> into
  <eqref|helmholtz-diff> to get:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<mathd\>F>|<cell|=>|<cell|<around*|(|T*\<mathd\>S-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>|)>-T*\<mathd\>S-S*\<mathd\>T>>|<row|<cell|>|<cell|=>|<cell|-S*\<mathd\>T-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>.<eq-number><label|helmholtz-fundamental>>>>>
  </eqnarray*>

  Because <math|\<mathd\>F> is also defined by its partial derivative
  expression,

  <\equation>
    \<mathd\>F=<around*|(|<frac|\<partial\>F|\<partial\>T>|)><rsub|V,\<b-up-N\>>*\<mathd\>T+<around*|(|<frac|\<partial\>F|\<partial\>V>|)><rsub|T,\<b-up-N\>>*\<mathd\>V+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>F|\<partial\>N<rsub|j>>|)><rsub|V,T,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j>,
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
      <math|S<around*|(|U,V,\<b-up-N\>|)>> by physical arguments. You can
      also switch from one set of independent variables to another by purely
      mathematical arguments, called<em| Legendre transforms.>

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
        To create the Legendre transform, a function <math|y<around*|(|x|)>>
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
      The transformation can be performed on any combination of conjugate
      pairs, so there are a total of <math|2<rsup|n>-1> possible
      transformations.
    </note*>
  </ornamented>

  <subsubsection|The enthalpy>

  The enthalpy is a function of the natural variables
  <math|<around*|(|S,p,\<b-up-N\>|)>>. Enthalpy is seldom used an an extremum
  principle, because it is not usually convenient to control the entropy.
  However, it can be obtained from calorimetry experiments, and it gives an
  experimental route to the Gibbs free energy, which is of central importance
  in chemistry and biology.

  To find the enthalpy, you could reason in the same way as we did for the
  Helmholtz free energy, but instead let's use a simple math argument. Start
  with the internal energy <math|U<around*|(|S,V,\<b-up-N\>|)>>. We seek to
  replace a <math|\<mathd\>V> term in the energy function with a
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

  Substitute eq. <eqref|energy-fundamental> into (4.19) to get

  <\equation*>
    \<mathd\>H=T*\<mathd\>S-p*\<mathd\>V+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>+p*\<mathd\>V+V*\<mathd\>p
  </equation*>

  <\ornamented>
    <\equation>
      \<mathd\>H=T*\<mathd\>S+V*\<mathd\>p+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>.<label|enthalpy-fundamental>
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
      \<mathd\>G=-S*\<mathd\>T+V*\<mathd\>p+<big|sum><rsub|j=1><rsup|M>\<mu\><rsub|j>*\<mathd\>N<rsub|j>.<label|gibbs-fundamental>
    </equation>
  </ornamented>

  Similarly to <math|F<around*|(|T,V,\<b-up-N\>|)>>, if a process occurs in a
  test tube held at constant pressure and temperature, it will be at
  equilibrium when the Gibbs free energy is at minimum.

  <\ornamented>
    <\note*>
      Equilibrium is the state at which the entropy of the combined system
      <em|plus> surroundings is at maximum. However, for the test tube system
      itself, which is at constant <math|<around*|(|T,p,\<b-up-N\>|)>>,
      equilibrium occurs when the Gibbs free energy is at minimum.
    </note*>
  </ornamented>

  <math|\<mathd\>G> can be expressed as

  <\equation>
    \<mathd\>G=<around*|(|<frac|\<partial\>G|\<partial\>T>|)><rsub|p,\<b-up-N\>>*\<mathd\>T+<around*|(|<frac|\<partial\>G|\<partial\>p>|)><rsub|T,\<b-up-N\>>*\<mathd\>p+<big|sum><rsub|j=1><rsup|M><around*|(|<frac|\<partial\>G|\<partial\>N<rsub|j>>|)><rsub|p,T,N<rsub|i\<neq\>j>>*\<mathd\>N<rsub|j>.
  </equation>

  So,

  <\equation>
    S=-<around*|(|<frac|\<partial\>G|\<partial\>T>|)><rsub|p,\<b-up-N\>>,<space|2em>V=<around*|(|<frac|\<partial\>G|\<partial\>p>|)><rsub|T,\<b-up-N\>>,<space|2em>\<mu\><rsub|j>=<around*|(|<frac|\<partial\>G|\<partial\>N<rsub|j>>|)><rsub|p,T,N<rsub|i\<neq\>j>>
    .
  </equation>

  <\ornamented>
    <\note*>
      For equilibrium phase changes, which occur at constant temperature,
      pressure, and particle number, the Gibbs free energy does not change.
    </note*>
  </ornamented>

  <subsubsection|Summary>

  <\big-table|<tabular|<tformat|<table|<row|<cell|>>>>><tabular*|<tformat|<twith|table-valign|T>|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-hyphen|n>|<cwith|1|-1|1|-1|cell-halign|l>|<twith|table-hyphen|y>|<cwith|1|1|2|2|cell-tborder|0ln>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|1|3|3|cell-tborder|0ln>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|1|-1|3|3|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|3|3|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-lsep|0.1in>|<cwith|1|-1|1|-1|cell-rsep|0.1in>|<cwith|1|-1|1|-1|cell-bsep|0.1in>|<cwith|1|-1|1|-1|cell-tsep|0.1in>|<table|<row|<cell|Function>|<cell|Fundamental
  equation>|<cell|Definition>>|<row|<cell|<math|U<around*|(|S,V,\<b-up-N\>|)>>>|<cell|<math|\<mathd\>U=T*\<mathd\>S-p*\<mathd\>V+<big|sum><rsub|j>\<mu\>*\<mathd\>N<rsub|j>>>|<cell|>>|<row|<cell|<math|S<around*|(|U,V,\<b-up-N\>|)>>>|<cell|<math|\<mathd\>S=<around*|(|<frac|1|T>|)>*\<mathd\>U+<around*|(|<frac|p|T>|)>*\<mathd\>V-<big|sum><rsub|j><around*|(|<frac|\<mu\><rsub|j>|T>|)>*\<mathd\>N<rsub|j>>>|<cell|>>|<row|<cell|<math|H<around*|(|S,p,\<b-up-N\>|)>>>|<cell|<math|\<mathd\>H=T*\<mathd\>S+V*\<mathd\>p+<big|sum><rsub|j>\<mu\><rsub|j>*\<mathd\>N<rsub|j>>>|<cell|<math|H=U+p*V>>>|<row|<cell|<math|F<around*|(|T,V,\<b-up-N\>|)>>>|<cell|<math|\<mathd\>F=-S*\<mathd\>T-p*\<mathd\>V+<big|sum><rsub|j>\<mu\><rsub|j>*\<mathd\>N<rsub|j>>>|<cell|<math|F=U-T*S>>>|<row|<cell|<math|G<around*|(|T,p,\<b-up-N\>|)>>>|<cell|<math|\<mathd\>G=-S*\<mathd\>T+V*\<mathd\>p+<big|sum><rsub|j>\<mu\><rsub|j>*\<mathd\>N<rsub|j>>>|<cell|<math|G=H-T*S=F+p*V>>>>>>>
    Fundamental equations and their natural variables.
  </big-table>

  <subsection|Uses of internal energy, entropy and enthalpy; heat capacity>

  These non-fundamental component functions are important because they can be
  measured in calorimeters, and can be combined to give the fundamental
  functions, such as <math|F<around*|(|T,V,\<b-up-N\>|)>> and
  <math|G<around*|(|T,p,\<b-up-N\>|)>>. You measure the temperature
  dependence of a material' heat capacity <math|C<rsub|V><around*|(|T|)>> in
  a constant- volume calorimeter. Then, using
  <math|\<Delta\>*U=<big|int>C<rsub|V><around*|(|T|)>*\<mathd\>T> and
  <math|\<Delta\>*S=<big|int><frac|C<rsub|V>|T>*\<mathd\>T> to find
  <math|\<Delta\>*F>. Alternatively, if <math|\<Delta\>*G> is desired, then
  you can measure the heat capacity in a constant pressure calorimeter, and
  use <math|\<mathd\>H=\<mathd\>U+p*\<mathd\>V+V*\<mathd\>p=\<delta\>*q>. The
  heat capacity <math|C<rsub|p>> is

  <\equation>
    C<rsub|p>=<around*|(|<frac|\<delta\>*q|\<mathd\>T>|)><rsub|p>=<around*|(|<frac|\<partial\>H|\<partial\>T>|)><rsub|p>=T*<around*|(|<frac|\<partial\>S|\<partial\>T>|)><rsub|p>
    .
  </equation>

  Rearranging, you get

  <\equation>
    \<Delta\>*H<around*|(|T,p|)>=<big|int><rsub|T<rsub|A><rsup|\<nosymbol\>>><rsup|T<rsub|B>>C<rsub|p><around*|(|T|)>*\<mathd\>T.
  </equation>

  <\equation*>
    \<Delta\>*S<around*|(|T,p|)>=<big|int><rsub|T<rsub|A><rsup|\<nosymbol\>>><rsup|T<rsub|B>><frac|C<rsub|p><around*|(|T|)>|T>*\<mathd\>T.
  </equation*>

  And then use these to calculate <math|\<Delta\>*G>.

  <subsubsection|The third law of thermodynamics>

  Suppose you want to know the absolute entropy of a material at a
  temperature <math|T>. You can integrate the heat capacity,
  <math|S<around*|(|T|)>=<big|int><rsub|0><rsup|T><around*|(|C<rsub|V>/T<rprime|'>|)>*\<mathd\>T<rprime|'>+S<around*|(|0|)>>,
  where <math|S<around*|(|0|)>> is the entropy at absolute zero temperature.
  The third law of thermodynamics states that <math|S<around*|(|0|)>=0> at
  for a pure perfectly crystalline substance at zero Kelvin.

  <subsubsection|Thermodynamic cycles>

  The following example shows how to combine a thermodynamic cycle with heat
  capacities to compute properties for which measurements are difficult or
  impossible.

  <\ornamented>
    <\example*>
      Measuring enthalpies under standard conditions and computing them for
      other conditions. Suppose you want to know the enthalpy of boiling
      water, <math|\<Delta\>*H<rsub|boil<around*|(|0<degreesign>C|)>>>, at
      the freezing point of water 0<degreesign>C and <math|p=1 atm>. boiling
      water, <math|\<Delta\>*H<rsub|boil<around|(|0<degreesign>C|)>>>, at the
      freezing point of water <math|0<degreesign>C> and p = 1 atm. Since you
      cannot boil water at water's freezing point, why would you want to know
      that quantity? We will see later that
      <math|\<Delta\>*H<rsub|boil<around|(|0<degreesign>C|)>>> from the heat
      capacities of water and steam and the enthalpy of vaporization of
      water, <math|\<Delta\>*H<rsub|boil<around|(|100<degreesign>C|)>>>,
      under more standard boiling conditions, by using a simple thermodynamic
      cycle.\ 

      The standard state enthalpy has been measured to be
      <math|\<Delta\>*H<rsub|boil<around|(|100<degreesign>C|)>>=540 cal
      <math-up|g><rsup|-1>>. The heat capacity of steam is
      <math|C<rsub|p>=0.448 cal <math-up|K><rsup|-1> <math-up|g><rsup|-1>>
      and the heat capacity of liquid water is <math|C<rsub|p>=1.00>
      <math|cal <math-up|K><rsup|-1> <math-up|g><rsup|-1>>. To obtain
      <math|\<Delta\>*H<rsub|boil<around|(|0<degreesign>C|)>>>, construct the
      following thermodynamic cycle.

      <\big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D49484452000002D4000001A10802000000CE48B448000000097048597300002C4B00002C4B01A53D96A90000200049444154789CECDD757854C71A07E06FB37117E2EE0427487087002D4E2952E88552AC4029564A4BB1E2EE048742694B0B4543700B92840841E209C4DD938DECEEFDE3C0E9762D1BDB04F8BDCF7DEE737676E6EC6C48B3DFCECC37C3110A8504000000A02CAA31B1F10DDD07000000F86099181B1919198A96A8345457000000E0E384E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9541BBA03EF87FD7BF7F85DF52D292E661E76F4F25ABD767DC376090000E03D55ABE063EFEE5DC5C54592E593BF9ADAA489A9AC5621C1C137AEFB11D190A1C39A7A34AB4D076AACBA7D9831EB9B19B3BE79F4D07FC5B29FEABF770000001FB25A051F3D7AF6CACECAFAEBCC1F51919144A4A7A73775DA0C5333535D5D3D39ADDEBC797DE3DA3522EAD0D1ABA1828F9AF5C1D5CDAD3E3B050000F051A855F0D1A2654B22CAC9CD61820F8FE6CD070E1E5C37FD6A947475741BBA0B000000EFBD3A58F3A1A7F7769C434FEE8007AB5FBFFEED3B7424226363E3DABF7ACDD4AC0F2A5C6EBDF5080000E0635107C18786BAC6DB7BA92974371D5D5D1DDD061E42680C7D000000F8382935DB253D3D4D28FCF7A1A18181A6969664B58A8A8AD0909094E4241515150747C766CD5B70B9DCC2C2C2E2E262223231315153532B2A2A2A2AFA77ADAB9AAAAA499326ECC3CCCC4C3E9FCF3ED4D3D3D3D1D1A9561F88283525E5797878616181A1A1511B4FCF061CA7010000F8902835F8D8B0764D6E6E6E4A7232F3F0879F96F5EADD47ACCEAD9B37F6EFD99D9F9FCF9658585A7EFBDDFCE0A74FCFFCF13B11EDDABBDFCDDDDDFFC1FDF3E7CEA6A6A49494941091BDBDC3812347D9267B76ED484A4C4C4A4C140A8544F4F5F419A3C77CAE781F727373766CDBFAC8DF9F2DE1703803077F32E5ABA975F163000000F8A82935F8D8BA6317116DD9B4F1DA555FA9152E9CFF67CFCE1D44D4AB779F81833FB1B4B47CFDFA75F0D3A015CB7EB2B4B212ADE93D7090F7C04169A9A95F7E315EF23E2B56FD4244274F1CFFF5F8B1EAF6A1203F7FE177F3921213F5F5F5A77C3DAD45CB96A525A571B1B1FF9C3BBB64F1C2EABE6500000010D3009B8C59FD378C60E5E6E61CDCBF8F8806780F9CBF683187C321220B4B4BAF4E9D868D18B17ECD1AC926E616161C0E47283A8F22C2DAC6A6BA7D20A2DF4E9D4C4A4CD4D4D4DCB46DBB83832353E8E6EE3E60E0C02B972EEEDAB15DF63B03000080AA35C0F6EADADADA52CBCFFCF14779793987C399F4BFC94CE4C1B2B2B26ED5BAB564130E87A32563C50611B1EB3C14EF435E5EDE954B1789A8579FBE6CE4C150515119307090AC1B02000080821AE26C97FF06168CCACACACB172F1051CB56AD4CCDCC6A79B777CFC87E77325A5DBD72B9ACAC8C88FAF6EB578D3E00000080C21ACBC172E9E9E93C1E8F88ACACAC1BB01B0909F1CC8595754376030000E003D658828FB4D414E6C2A841335AD35253DF76C30889B5000000F5A2B1041FE96969CC85AA6A431EB4CB7443454585237B36070000006AA3B1041FAA6A6ACC45767656437643558D880402415E5E5E0376030000E003D658820F0B0B0BE6222BAB21830F0BCBB7DDC8CECA6CC06E0000007CC094117CE4E5E5A5A7A7C9AF636161C95CC4C7C555EBE6AA5C2E11555456D4AC6FB2BA1157CD6E0000008082EA20F8100804F22B1C3E7860E1BC79EC43E1BBFA02FEBF0DCDCCCD5D5C5C89283323232E3646EC0EB9B9394F8302A5DEDCCCDC82880A44B6637FFB2A42E1A387FEB27A28B50F44D4A55B37E6826D2BEAC6353F59370400000005D541F0C11EF056595129B542694989E8C392770F8B8A8B44CBC78E9FC05CECDDBDBBBCBC9C2D7F9D90B060DEB7BA320EA175767166FA101810C01626BE79B378C1FC8CF474E62173229D227DE8D4B98B83A323113DF2F70F78F2982D170804470E1D7C70FF9ED85B06000080EAAA6D6A8950288C8D8966AEC39F3D7B1A14A8A3ABABC25121A2CACA8AC2C2A29494E4E0A7413A3A6F4307814010FB6E60233626462814B279255DBB77EFDAADBBFF83FBE1CFC2667CFD5597AEDD7474742223239E06067E3B7F41427CFCB3B030C90E8C1D3FE1E6F5EB959595AB962FEBEF3DD0CCCC2C3A3AEAE18307A33E1BD3BA4DDBC080274414171BC3E7F3B95C6E957DE07038B3E77EFBF38F4B4B4A4A7EFE7169CF5EBD9D5D5CF27273FDFD1F18E81BAC5AB3F6F3D12389282539B9B8A84847463C040000007270A2636ABEB861C6D7539312DF545454BDDEC2CCCCFCD7D3BF4FF8FCB3FCFC7CD1FA6A6A6A5656D6EC81B442A1F0E8E1437FFDF9079FCF674A9A7A784C9F39AB59F316870EF8889E6A2B7AF3A0C0C04DEBD7E5E5E5320FED1D1CBE9C3CA56BB7EE8101013FFDF03D53A8AAAAAAA7A777ECE46F5F7D39517E1F882821217EF58AE5498989CC436D6DED4F860C9DF4BFC9443464903753C8E170F4F4F496AD58D9AA751BC57F620000001F1B136323232343D1925A051FF5A4203F3F2626BAB2B2D2DAC6D6FADD4EA372820F22AAA8A8789D90909D9565696565676F5F27DD888D89494F4F373434747272D2947D820C000000C821197C34E48E5EB2E81B1878B66B5FAD266A6A6A2EAEAE2EAEAE75D80D6717176717973ABC2100000050E3D9E7A34A653CDEDB8B325EC3F6040000006AE3BD093EF2F2DF6E399A9F279E550B000000EF91C638ED228A575A7AEBE68DACACACA07799B4A77F3B9596966A6B6BE7D5B973C3F60D0000006AA0B1071F957C3EB3E1FA8851A3D9C29292929CDC9C86EB14000000D45C63CC76010000800F8664B6CB7BB3E6030000003E0C8D7DDA05E0C350515171C867FF8851A32D2C2DABAC1CF0E47156A69473955BB7F56477BE21223FDF2BEC767CA2FAF4EBAFA9A9599BDE0200D42B041F00CA70FAD4C97FCE9D3535371FFDD9982A2BA7A5A525C4C73F7AE89F939D4D446A6A6A3D7AF63269D2A4AD2787AD535151919C9C9C939D7DE3FA35A1504844C6C6C65DBA75D7D7D7575757AFBF370200507B083E00EA5D6C4CCCEFBF9D22A2A0800045828FA1C38613119FCFBF7AE532117D3A74D88C59DF88D55153539B32F56B220A0909668649E62D58E4D5A9539D771E00A0CE61CD0740FDAAACACDCBC713D3338F13CFC19AFB454C18639D959CC45472F2F597504024161612111A9A8A8B46CD5AAD69D05005006041F00F5EBF7DF4E393838B669EB494415151561D20E67962A39399988381C4EB366CD65D5494D4D6536FF757671D1D6D6AE8BFE0200D43B041F00F5283626E6AAEF9599B3E7B4EFD08129097CF2589186C5C5C529C9C944646D6323E75CC3D89868E6C2D9A52E0F360200A85775BCE663D38675928503070D6ED9AAB568C9437F7F3777B7264D4C450BE3E3E2FE3AF387FC8600EF1166C265E637B3F5F5F5DB77E87860FF3E220A0A0C54A46D4C74143353E3EC2CEF74C3D89818E6C2CD4DFCA867008046AB8E473E06780F6CD1B2D58D6BD798FF393A397B0F1C64636B2B5AA7B8B8F89795CBAF5EB922D6D6D4CC6CE0A0C19D3A75B97FEF5E795979AFDE7DAD6D6C09E0BDC54CB874EDD69D88EC1D1C4CCDCC88283535253929A9CAB6D1D16F8734DCDCE54515D15191CC45DD1EE90C0050AFEA38F868DDA6EDA0C19F383A39330FBB75EFD1AA751B232363D13A4101017C3EFFF1A387626D7575755BB66ADDBE6347019F3F73F69C0E1D3B1A1B1B534DA5A4245FB974313B2BABC67700A88DF8B83866C2852D69D7FEDDCC4BC0932A9B4746BC622E9CAA18F98825222E97EBE8E454F3BE02002857BDACF960A7B7D90969510FFD1F10517454544E8E94F3599E8585B9B8BAD526EC20A2E3478F4C9EF8C58E6D5BF3F2F26A731F809AA9ACACDCBC710333E1C21676E8D091B9781A54F5CC4BCCBB910F171799C1477656565E5E2E1139383A626F0F00788FD4CB3E1F9EEDDA9FF9E377220A7FF68C197366F1F97CF66B5FC0E3C703070F166B1B14F0A44BD7AEB5EC00B3FE1FA0A1FCFEDB293B3B3BB15FFEB69E9E2A2A2A0281203424A4BCBC5C4EB8505454C4AC3625A2CF460EAFF2E5B0DA14A0FEE4E5E61287A3AFAFAFA282148D3A532FC147F3162D5455552B2B2B434342C49E7A1616A6A5A5555C5C4C448F1FF94B061F01014F56AE5E23F5B64545459111AFB2B2B24A4B4ACCCC2D9C9C9D2D2C2CC4EA646767575454149794BC7B98A5A3ABCB5C1B181868FD376B80CFE73F0B0B4B4A7CA3A1A9E9E6E66E676F2FFABB555C54545854C43E5455E5322B64F97C7E684870525292ADAD9D67BB768AFD48E023C24CB8ECF5392856AEA3ABEBD1ACD98BE7CFCBCBCBC39F85B1B33092A2A3A2980BAF4E9D677E335B56B5337FFE71F9E20522727573AB8B8E03C0BFA2A3A38E1D3E1C1D15A9A1A1A9AACACDCACA32363169D9B255AB366DFA0FF0E6703855DF0264AB97E0434343A3A987C7F3F0F0F8B8D882FC7C7D0303F6A9470FFDC78C1B7FFAE4AFB9B9B9C1C1C162DFFF1213DFF0F97C074747B11B5EF7F3BB79E3DAB3B0302363E3162D5A9694148786845454540C1838F0EBE933F5F4F4D89A2B7F5E161D152910089887CB7FFA917D6ADEFC05DE83FE8D7542438237AC5D63646CDCB55BF7DC848403FBF6AAA9ABCF5FB8B843C78E6C57CFFDFD774A4A7249490911D9D8D81E3E7EE25958E8E60DEBD3D3D389A8A39717820F10C3E7F325275C581D3A7ABD78FE9C88020302E4061F6F9791366FD1C2D2CA4A56B5CC8C74E6C2D515C107405D3A7DEAE48963479D5D5CB6EDDC6D6D634344A5A5A5B76EDCD8BF77F7F56B7E7DFBF5E772B90DDDC7F75B7D0D22B56ED396B978F6EC3F5B2A3D7EE8DFB97317AFCE5D88A88CC70B0BFDCFD048E093271DBDA4EC0FBD6BE7F690E060EF41834E9C3AFDC34FCB56AF5DBF7DD71E5555553F5FDF4DEBFF93DCBB73CF5EDFEB37478DFE8C79B87B9F8FEFF59BCCFF44238F3F7F3FBD64D1427B07C71DBBF74E983869F6B7F3366DDD5EC6E32DFF6969F8B3674C9D7E03BCF7F81C3870F828DBEA6950E092450B8B8B8B9B98FE27491880F5E7EFA76DED6CC5265C58FFEEF62177CD6954E4DBE0C3556E026D54641411A9A8A838393BD7A4AF1F0A814010121C1C1D1DD5D01D810F445060E0B12387D5D4D496AF5CCD441E44A4A5A5F5C990216D3C3DA536292B2B0B7EFAF4DEDD3BCAEBE57BAEBE828F366DDF061F6122332F71B131DA3ABA66E6E65DBA76634A1E3F7A24DA2AE0C9E34E9D3BCBBAE7D7D367B2C1A6B38B4BB7EE3D88E8C9E347ECD23C054546441C3E784028147E3367AE9A9A1A53E8E8E4D46F80379FCF3F7CD047B4B2A99919F3A2454545077D7C162DF9E1CCB9F3070E1FC5981B484A888FBF72E9D2ACD973655570767135303424A2A4C4C4F4F43459D5D8CF513909B4595999CC6A533B7B7B0D0D8D9A77FAFDB76ECDEA870FEE9F387AE4DCDF7F35745FE04370E8800F11356BDE9C498F1765DA44CA374F1E8F376AD8901F162FBC75E3BA32FAF741A8AFE0C3A35973663E252C34942D7CF4F021135BB4F5F4D4D0D424A2278FFF0D3E78A5A5519191EC9089A8A1C3868F1D3F416CF7687B0707E622233DBD5A7DF3D9B787885CDDDC6CEDEC44CB5BB56E4D44AF5EBE14ED331131AF5B5858B070F1F7BDFBF4555151D1D1D169D3B6AD85A5CCF170F808F1F9FC4D1BD6CFF8E61BA9132E0C1515154FCFB75375814FA40F7E141414A4A5A6129185A5A59C5B31C31EF4D1EFF051595999969AFACDDC6F7FFC79C5DD3B771ABA3BF0DEE3F178AF13E289C8A44913C967FBF6EF3F6BCE5CB195A742A1B0A2A24249FDFB50D4D7A9B66A6A6ACD9A370F0D0979FD3A212F37D7D0C888881EFAFBCF99378F88D4D5D5DBB56BFFD0FF416646465C5CAC93933311050707376FD142EA77B8A9D3A64B16EABDFBBB5CAD7FF5B8B85866D2DDCECE5EEC296D6D1DE6222C34A4759B36FF3EC1E11091A5A595E85FF9F59BB628FEA2F031903FE1C2EAE0E575FBD64D220A0A0AFC74E830C90A31EF863DE4AFE460D785C8AAB66FF7AEF0F06779B9795F4D9BD6B75FFF2AFB2F4B7979B98A8A8AAAAA6A4E4ECEF123879F3D0B2BE395ADDBB8898DFEA5CACDCD79F2484A3A1B8FC7D3D4D494DAA4B4B4F4D5CB9766666662DB12CAAFA0AAAAAAAAAA76DDCF2F31F18DD40DD9B2B23213DF24969696EAEBEBDBD9DBB3F1DC1FA77F1B3DE673CCDC8398CC8C0C66D5605AAA94B1C9E62D5A366FD1927D585656969B9BCBE657F2786569696F5B71B95C538909FA8CF4F4F0F067850505B67676AE6EEE72BE5D549960212B25828812E2E3A3A3A2CACBCBDD9ABA8BFD7DC8CCC8888C88C8C9CDB1B5B56BD1B2253BF6AF7CF5157C10519BB69E4CB64B585868CF5EBDB3B23273B2B3DCDD9B32CF76E9DA8DD9F0E3C9A3474CF01118F0D8AB93CC391739842454BCF29BD7AF990B2363633E9F2FFA143B9392999959836EC0C72C2121FECAA54B7B7C0E5459B35DBBF61C0E472814863C7D5A5959A9AA2AFEDF6064440473213F87855D17E22223F898397BCEF97367F7EEDE55AAF039BA924A4B4B877F3AB873972E2B56AF313636FE6EE1A28DEBD6DEBC71BDB2B2524EABBCDCDC654B7F58BEEA17F626A121C161A1A1CFC2422B2A2A0E1E3926D9E4E8E143519191C3468CB873FB96FF83FBCB57FD22F6A7564E8515AB7FB972E9A2B9B985F7A041A24DAEFBF91D397CB0A357A7D6ADDBA8A9A93DB87FCF6FE9156313139F43475455552D2C2D37AC5DB374D9CF35FEE1C007C9DCC282F92FF479F8B388572F9B7A349353392C344434AD2124F8E9E4891398EB264D4C7F3DFD3BFB148FC7DBBD63FBBDBB777AF4EC65676FFFDBC993CFC39FF5E9DBEFDBEFE68B1DDEA4608285D49488A4C4C47D7B76899EE1E0D5A9F38F3F2FD7D0D028C8CF3F74D0E7BA9F1F9B90E1E0E8F8F38A55ECA21625ABC7E0839D40090B09E9D9ABF7E3870F3B7879B11FF05E9D3A317B1E3C7EF470DC842F8828302060DCF82F64DD8DCFE73FF2F7BF7DFB667262527E413E873895953519E662838F1BD7AE3D7E28BECBAA8D8D2D11E9E8E8D4E0CEF0D1E2F3F95B376E943FE1C2323432727676898989E6F1782F9E874BCE3386BF5BA36D65652DE7155FBE78FEB69AB5CC6AA2896635C3E572DBB56F2F1ADF306B56E4DBBB7BD7C0C19FB05FFB98D52D83067F72E9C2797373F1F478223A71ECE8AD1B370E1C39AAA5A5D5A973177575F505F3E6EEF339C8F65F7E05030303E66F88A82D9B36DEBD7D6BD98A951D3A7A3125DD7BF6ECDAADDBC2EFE6317F7C7BF6EA7DEDAAAF9FEF15D1A5E800EAEAEA3D7BF5BE73FB16113131748B962D6555EEE8D5C9F7FA4D26462722264C97AC969696F6F3D21F92921257AD59C7AC3AFFECF3B1DBB66CF2F3F52D28C85FB37EA368E55D3BB797F178833FFD74F6DC79CCC85C6C4CCCB7B367F9F9FAE6E5E6AD5AB396A9D66F8077BF01DE9919195F8CFB9C29898C8858FAFD222767E719DFCCD6D6D2BA73FB76F0D3A0278F1F1D3D7C68F498318BBE9B2714D28489932C2C2D235EBEBC74F142427CFCD6CD1BB76CDF59373FB86AAAC7E0C3BD69532D2DADD2D2526609C5A387FE9F0CF9779059DFC0A059F3E6CFC3C3232322F27273F3F2F2747474CCCCCDA5DE2A243878E3FAB539D9D9CD9AB79834798A47330F4343A3CB972EEEDABEADBABD62B7551D3F71E2B0E1236AF4CE00FEE3BA9F5FC2EB84DB376FDEBE795391FA854585CC456C4C8C58F0515C54F4FCF9DBA8424EE8101A125CF26E331B39114FED9745ABABABAFDDB0E93FF7ACAA497252D293C78F162CFE9E2D7170707470702422D1AC78567171F1DF67FE9CF8BFC9EC363C23477FF6EBF163577DAF8C193B4E910A92C24243AF5DF51D3B7E021B79BCED89A3938BAB1BFB63193A7CE4BEDDBB060C1C84F5E3206AEAF419CFC39F6565651514142CFCEEDB2143877D39E52BDD775B46D5C09E9DDB5FBF4EE8D1AB179BEFC6E170A64C9D76DDCF2F2830F06950A064E2BD6482C5ED5B3799040BD105004C4A049FCF2F2E2EDAB96DEB921F97B1BB45F41BE0FDE517E3333332EEDDB9F32C2CB46FFF0163C74F60865AFBF51F50565E7EEDAAEFF3F0F0D70909F2A750EB493D061F5C2EB7798B9641810149498989896F5EBE7CB96CF94AD10A9DBB767B1E1E2E140A03029EE4E5E64A4DB225A2C8888815CB7EE4F178DD7BF4FCF1E7E5B5FC33C1FE02611754A82B61A121653CDEFD7B77ABDBD05664E1D15F7FFE11FEEC595C6C2CFB9BB96DF3260727C761C347B615C9EEDBBA79637656F6CB972FD8927973BEB1B0B09C3567AE9C43098A8B8AFEFEEB4CC4AB9766E61683067FE2DEB4A9E8B32F9E873FB87FBFA2BC9C2FE0BBBB7BF4F7F666FEEADDB87E2D2E2686881C9C9C06780F54F04D9DFBFB2FF7A61E52176F71385256B8DFBA719DC7E3B51239BF5A5555B5A987C7A58B1798D8A2CA0A920EFAEC5355551D3662A458B99E9EDE9EFDFFA6B3B568D9323D3D2D30407A863F7CB44C4D4DB7EEDCF5C3E245C9494942A1F0C2F97FEEDCBEF5BF2953077DF2490D36390D7EFA34E0C91322EAD7DF5BB4DCD0D0D0CEDE3E213EFEF4A953A2C1C7D061C3B95CAE9C040BB135E6DADADA8585851515153F2D5F21BA2D1097CBF5F068969991919D9D25B9F0AB458B16D7AEFA12515252E287167C10519BB66D83020388E8F0C103CD9BB7109BD9EADCA5EBC1FDFB88E8F1A38705F905FF9BF295D49BECDAB18DC7E311D19C79DFD5FE0B0A7BFE56E29B37B5BC150063FCC48923478FAE41433B7B07F6DAAB73E7FF2C737EC7DCC252F4E110696B5489C840F630497151D1F6AD5B2CADACBC3A77B978FE9F1BD7FC56AF5DCF0634A77E3DF1FB6FA796AFFAA57D870E7979798B177C77D5F7F29A751B7474757BF7E96B6868F4E392C59DBB745130F8E0F3F9D7AEF98D18394A91CA8C9898182212DB4BCDD2CAEA595858494989B6B6769515C46E585E5E1E131D6DEFE050E511513A3A3AB67676D7AFF921F80031E6E6167B7D0E1E3F7AE49FB37F0B04828282829DDBB7FA5EB9B470F112C96D30E5BB78FE1FE6C2EEBFF995F42ECBE1E58BE7151515ECDACF6A275870384464686824B921A1BAC6DB3D3C4517C9BE7BEAEDD78382820205DF48DDAAF7E083B978E4EF3F67DE7762CF5A5B5BDBDAD925BE79F33430505353CBA39994753DBCD25266AB69737373397F5EC5A8C85EC1EED9AE9D9A9A5A4545455858A84020C05EFD507BB6B6E27F53EAEF26F2B71D932A243878D9F215CC39035DBA74FDF28BF1870FFAECDEE743441111AF4E1C3B3A72F467CC68B0A1A1E1C2C54BE6CC9A71F2D713D367CEE272B9626324554A4F4F2BE3F124774790232B3393DE25B4B33435B598A7ECECEDABAC2076C3A4A444A15068A6581F4C4C9A24BEC6F7109042535373FACC597DFAF6DDBB7B37B3C42A3A2A6AF6CCE98B96FCD0B3576FC5EFC32E3434343212CB72603E80F87C7E5E6EAE82FFD5542BC1428E069F6AACDFE0C3D9C55547478739C9456A264BE72E5D13DFBCE1F1789DBB74959AF3C6515161D6A5E6E7E7CB8A152ACAC5234159B97C446464643CEAB331BFFF762A3D2DEDF1A3478A1C62271408884820E0575913A011EAD6A3077BC291A999997B538F972F9EE7E4E4181B1B33DFC944C763DDDCDD6D6C6C2F5D383F6DC64C0E8723998C235F4A720AC9FD0F501273F4B4D87FDACC5F83DCDC5C3B7BFB2A2B88DD303B2B8B145E6CABA9A999929AA2786FE163E3EAE6BE6DE7AEDBB76EEEDFB3272F2FB7A2A262FD9A5FCC2D2C9A36F550A4796565654A4A3211A9A8A8CC9E21654883C972104B1FABAB048BC6AC7E830F15159556AD5B3F7AF8D0C9D95932E399883A77E9FAE7EFA789A86327E9C39E1A1A1A0E8E8E71B1B13C1EEFE2F97F442771998D988888D9E75114B3BA8D889293939C254E241FFFC5C4DB376FA4A7A76FDFBAD9C1D14132A7402CCA6156F61589645403BCBFCC2DCC5FBE789E969A6A6C6C9CF8269188C472EDAC6D6C9292123332D2A566A6C85750904FEF2203051918E813914020106DC57C4134303450A48218A6DB99190A25CC73B9DC321E4FCEEE230044D4BB4FDFD66DDA2E98373725395920101C397870E396AD8A3464BE3613918EAEEEE1E3271469528709168D59BD4F3AB46EEB49449D3A7791FAAC47B3668686462A2A2AED3B7494758769336631177B77EFDABA79E39DDBB72E9CFFE7BBB9734A4B4B3FF9740811DDBF774F6C1AAC73D7AECC0A9A53BF9E6082065E69299BDCACA1A1B17AED7A2767E7FCBCBCD933A6FFFEDBA9E8E8A8ECECECA8C8C87B77EFACFB65F5E60DEBD95BC5C5C5320D0B0B0BABBB952A4023A4A7A74F44CC904671711187C3113DDC918898A41266C0B2BACCCDCD89882F77171031A666E64424B619098F574A446666E68A541063656DCDE57299AF9B55AAE457EAEBEB23F2802A191B1B2F59FA13731D161AC2532C6581CDF05230C58149B0C8C9CEEEDEA3E7D61D3BBB74ED6A6464DCE05324F5A1DE838F366DDA92ECE083C3E174EADCB9A9473339E9826D3D3D97AD58C9AC1DF3F3F55DF7CBEABFFEFC63C2C44973BE9D3766EC383D7DFDC8885723867C72ECC861B60997CBDDB0794BF71E3D13E2E3C78C1C3EE3EBA9E33EFFACBCAC8CAD60EFE0B073CFBEB1E32708898E1E3E347BC6F4F16346CF993563E3BAB5B9B9B93D7BF721A2F3E7CE8E1A3664E6D753992642A170E2F8B1A3870F5DB502BB12C17B2C3F2F8F88981DBAACAD6D8442219B7FCEC8CACA2422AB1A9D1E6069654DD51C2664C6265392FF132BA4A6A4985B5830EB3CAAAC20465555B555EBD69919192F9E8757F9EAC5454596B2F7530110E5DEB4A9A1A11173CDCC0656495D5DDDD2D28A88CACBCB15F9FA5AB709168D59FD4EBB109183A3E3A6ADDBA46E7BCC98F4BFC9558690DDBAF7F0EAD439F1CDEBACAC2C47472776618E85A5E591E3BFBE7AF9524D4DB559B3E6A24D8C8C8C7F5ABE223F3FFFCDEB84E2E262175757B15C1B3535B5C95F4D9DF4BFC9B13131D9D9595C2ED7C8C8C8DEC191FD16386CC448C9543D80F79A50288C78F5D2C5D58D5912D1A66DDB278F1F858504F71BF03609B0B8A8283A2ACABDA987D87F2F0A3236363635334B4E5668D481D1B75FFFC3077C9E8585B27F25CACBCB5FBD7CF9E5E4290A569034E39BD933BF9E7AD0C767EB8E9DF21795A7A5A6755660E1177C3C5253524243437AF6EA2D35B4B5B4B26426FA451320E4FF8E75ECD4E9FCB9B344141212EC3D70909C9A354BB0784FD5FBC80787C369D5BA8D9C08CEA4491345B677555353737276E9E8D5496C49B0BEBEBE57A74E9EEDDA4BFD5B696060D0B255EB4E9DBB34917614211171B95C3777F7CE5DBA76F4EAE4EAE62E36FE0CF001B87BFB5662E2DB848E7FCEFE9D9E9E3EBE5DA7D70000200049444154F1CB2F998743860DB7B6B139F3E71FEC1780337FFE515E5E3E7DE64CE661614101111516FE3B92515858484445EFF649933464E8B0E7E1CFA43E5552525C52223E9BA3A3A33366ECB8737FFFC54EF4FCF5E71F4646C603077FA26005490E0E8E93BF9A1AF1EAE5F70BE78B9D961011F18AFD029A99919191913E6498F4EC65F8384546466CDFB29959B62C293D3D9D883C9A35D312F9C451535393F31937FE8B89CCFE52E7CF9D150AE5E5AA30091624B25244926482859C9408A140285A4794802F10BB50B27A1FF90080863576FC8403FBF7252725F1F9FCE2A2A2EF97FEC84E83AAA9A96DDDB16BD78E6D4BBF5FD4BB4FDF98E8E8972F5F6CDABA9DD915C0CFF7CAF56BD7882832E2D5C6F5EBBC070EBA79E31A732493CFBEBDBD7AF791BAC7D7A04F3E3D75F2D7ACAC4C36E28F78F5F2F6CD9B191919A5A5A5A5A5A5BFAC5C6162623260E0207631F8848993F87CFEDAD5AB868F1CF93C3CFC6950E0D61D3B45B743ADB282A43163C779346BBE7DEBE6C9132738383A3A3A39575654A4A6A65A585A4C9FF976195960C09376EDDBD749A6347C60D2D2526D25B6E58878F532273B5B4545855D89C8505151B1B3B77F9D902075CCCFD0D0F07F53BEDABD73476C4CCCC1FDFBA6CD9C255987C972A85982859C940836D6673744661515BFAD5F5CDC30B9149CE898B806796100A86F6565650505052626262A2A2AC5454579797956D6D652BFA2555454A424271B9B98C8FF4457D0D1C387CACACA66CCFAA6BABD8D8C786566666E616959B30A52151715BD7EFDBAB8B8C8C4C4C4DAC696DD7AB5B2B272D6B4AF172D595283AD53E00376E7F6AD75BFAC7670749CF3ED77A2A7BA242725ADF8F9A737AF5F7F3D7DC6E8319F8BB5BA7BE7F6DAD5AB8868FEC245CC6941A23BE0090482DF7F3B75F2C4713E9FDFA66DDB519F8D717070ACA8A8C8C8C8888E8ABC71EDDAD2653F337B978504072F59B48069E53D689067BBF6050505B76FDE747276160A04972F5D746FEAB165FB0E7647B2B8B85866612287C33971EAB4E811253C1E6FE6B4A9CC62A9EF162C123D625A28146EDFBAE5EA95CB44D4BD47CFA5CB7EAEEF2DAF4C8C8D8C8CFE732C14820F00A8637C3E7FCDAA959F0E1DEAD9AE7D43F745A6BDBB77D9D9D97D2A63C758A87342A1F0BD584119F1EAE5C6F5EB92939288C8DEDEC1D5DD4D4F4F3F2931312C34C4CADAFA9B39735BB596B2133111DDBD7D7BCFEE9DF979794D9A34D1D0D4ECD2B59BD85EA5D15191BBB66F8F8C8C102D343333EFDCB5EB97FF9BCC6EC6F3E0FEBD3D3B77B0CBC0CD2D2CE6CE9BDFBE4387B4D4D4D9B366141614A8A9A98D1EF3B99191D1896347C5063CF4F4F4A6CFFCC6C9D9F987EF1715161488CEDD68696975EFD96BC1A2C533BE9E9A94F8463445544D4DCDC0C0E0D41F676AFE53AB0A820F005006A150F8E2F97339C78136B8A0C040F6942F50820BE7FFF11E3848EAA13F8D504E4E4EE29B379919E9B9B9B995959556D6D60E0E8EB67676F24708F87C7E7252527272928181817B530FA91BDE646565262526161717EBE9E9595A5A49DDD8B4A2A24232C182880A0A0AD8048B9A2D096F28083E0000A0015CB974F1E285F3CB56AC94DCD7113E7892C1074E360100807AD7A357EFC4376FE6CC9C71EBC68D86EE0B343C041F000050EF7475753B74F42A2A2ADAB06ECDAA153FE7E7E737748FA02121F800000065E837600073E17FFFFEF4AF26DFB97DAB61FB030D08C10700002843878E5E3A3A3ACC756E6EEEBA5F56AFF8F92776070BF8A820F800000065505757EFD1ABB768C9237FFF6953A79C3E75B24CE4EC2DF81834DEE0A3B8B838272747FE66B462F87C7E5656669527C594979717141428784FA150585858989E9E56505050ADCE000080983E7DFB8A9594F178C78E1CFEEA7F936EDFBA89BFB11F0F65A4DA26BE7913161A12161ABAF0FB255526799795959DF9E377DF2B97353535B5B5B5939292BCBC3A4D98384972A75B512F5F3C3F7DEAE4AB972F6DEDECD3D3D2B475B4870C1B3E64E830B19CEC8A8A8A7DBB775DF5BDC2E7F3DDDCDD172F592AEBB6991919972E5E087E1A141B13636060A0ABA7979E96565E5E6E6A6AE6E2EADAA265CB366D3DD9CDA10100401142A170D2F8711919D2CF77757671993E7356EB366D95DC2BA86FCADBE7232D2DED6960605868C8B3B0D0DCDCB77BD1FF73E98A96DC7D51B2B3B2962E599C9C94B474D9F22E5DBB12514A4AF22F2B572425257DFFC3D2AEDDBA4B6D75EEEFBF0EECDFD7BE4387454B96EAEBEB0B0482F3E7CEEEDFBBA7ADA7E78A55BF88EEC472FCE8916B577D17FFF0A3A999E9211F9FD70909078E1C15DB074620101C3D7CE8EC5F67F87CFEF091A3868F1CC51C3E2E140A539293FF3977D6CFF74A595999A5A5D5B193A76AF953626566669EFBFBAFE0A74F3333D24DCDCC3D3D3D878E18C9BC2E00C087E4F0C1037FFE7E5A4E05CF76EDC78E9FD0BA8DF48D44A50A78F2F8AAEF95C857AF2A2A2B5D5D5D7BF4ECD56F80B7D43DBEA041282FF838FBD799BCBC3C671717636393D52B97E7E7E55155C1477979F9FC6FE74447452D58FCFD00EF816C795E6EEED429FFE395966ED9BED3BD6953B1560FEEDD5BBD72B98DADED5E9F83A2C32AC78E1C3E7DEA64D7EEDD7F5EB18A2DFC7ACAFF468EFE6CD0E04F88A8A4A464D4B021BBF7F9880E600804825F56AEF07F705F4D4D6DD59AB55237870E7F16B6F0BB7975187CDCBC717DC7D62D62539EAAAAAAD366CE1A367C449DBC04004023F13A2161DA5793ABACD6AC798BFF4D9952E52808AFB474D58A9F9F060589953B3A3AAD58FD4BB58E0182FAA3BC4DC6468EFE6CCAD4AF7BF6EADDB2552B6B6B1B459A5CF8E75C7454949DBD7DFF01DEA2E5864646A33F1B535151B173FB36B119415E69E9AE1DDB8968D29793C52674C68E1BAFA7A7E77FFFFEE3470FD9422E57B5F2DD86F695959542A190ABFA9FD0F88FD3BFF93FB84F44B3E7CE93752C45CB56ADE58FDF544B5868C8E60DEB25175B555656EEDDB5F3C9A34775F54200008D81BD838393B37395D55EBE78BE78C1FCB9B366DEBA71A3BCBC5C56B5AD9B3749461E44141F1FF7D3D225BCD2D25AF515EA8DAA125E833DD94F8E8A8A8ADF4FFF46447DFBF5973C7CA853E72E470F1F8A898E0A78F2C4AB5327B6FCD2A58B7979B95A5A5A9DBB76156BA2A9A5D5AA4D1BFFFBF74F9E38CE1E20DE6FC080E3C78EEAEAE9999A9A1D3F7AD8C5D5D5CECE9E6D92969A7AE2D85122727377F71E34484E6F5DDDDC5555EBE047271008766CDB2A7AF68F981DDBB61EF53CA9A1A1111B131319F1AAF6AF0800D0E0ACADADE3626315A9191919B161DD9A03FBF70E1CFCC9F091A30C0DFFF3ED39E0C9E3BB776ECB6A9BF8E6CDB9B37F8F9BF0456DBB5B7D7C3E3F37374757574F535353F156C5C5C5656565464646F24FE02B2F2FE7F178FAFAFA8ADC5328141615159594146B6969EBE9E9359EB3FD94117CA8A854FD6E8383820A0B0A88A855EBD692CFDA3B38E8E9E9151616DEB9755334F8B87DF3261135F568A6AEAE2ED9AA65ABD6FEF7EF474745A5A42433A7098C1C359A575ABA6FCFEED29212CF76EDBF5FFAA3E88AD4B37FFFC5C401C3468C94FF2FB469EBB62ADF91225E3C0F67CE4E94253B3BEB696060976EDD8202038E1C3A58272F0A00F07EC9CDCD3D7DEAE45F7FFED1AD7B8FBEFDFB7BB66BCFACE7F0BD7C597E43DFCB976A1F7C542B6742C1EC07518AA7597C483913CA083E141118F084B9B0B777907C96C3E1B8376D1A1418181818C016E6E5E5C544471191BD83942644E4E1E1C15C0405060E1D664D442A2A2A5F4CFAF28B495F0A0402B15F05A15078EBC675A64E97AEDD6AFD8614121B1353659DD7AF137AF7E9A38A955300F071ABA8A80878F2584343C3DACADAD1C989885EBF4E90DF243D3DBDB4B4B40613E5527326E62F5A2CBF159BFD70E4C44936FB61EFAE9D8FFC1F88653FB064A5597C3373BA649AC56F277F7DF2F8D1BA8D9B999C8915CB7EAA3267E2C79F5748E64C3CF47F50B7391335D058828FB8B85822525353D3D1D5955AC1C8C898880A0B0AB2B3B24C9A3421A2F8B8B74B654D4C4CA4373136662E243FE32583D0F8B8D8C2C2422232363151649EA84E54BC5B8022878E8EB6ADAD75F316CDBB484C2D0100BC8FB2B2B2A22223ABD5C4C9D9F9EB69D3860C1D2A1A4928328520E0F3ABD93B22A2870FEEE7E5E575EDDE7DC8B0E16CCE847C0FEEDDDBBF778F8DADED4FCB573203242A2A2A23468DCECFCF3F7DEAE4C60DEB44B31F18E5E5E5CB97FD98101FBF60F1F7EC5F782B2BEBB5EB374E9DF2BF75BFAC164BB37870FFDE175FFE8FC9035AF8FD9251C38624C4C7CBCA9958BB61A3E8CA450E87636D63F3CD9CB93D7AF65CF8DDBC1AFC4CEA5663093E92121389485746E44144BA7A7A6F6B262532C14752E21BA64447477A2B5DDD774D1213ABEC4074743473616E6EAE68A76BCDC1D1B1EA3A0E0E44F4E990219F0E1952EF1D0200A87FD3A64E5530F8E072B9BDFBF499F4E5975DBA76959C0DB7B5B34B923B73ADA7AF2FEB0BAD7C23477FC65E5B5BDB54197CC8CF7EB874E13C93FDC02E4064C84FB3387AF8D0CEEDDB76EFDBCFBEF146983351638D6587D3A2A222225255539355811D59626A8A5EA8AA490FA1D826C5EF6ACAC1FE6E9999292FF868D5BA8DFC4543DADADABDFBF4515A7F0000EA5B5E5EDEBDBB77ABACA6A6A6367EC284EBB76EF91C3CD8B55B37A9EBF0860E1B26FF26BDFB886FA85A038A8C855799FD4044274F1C172DAF32CD828898340BB690C999B87DEBE6F3F0F0D52B7EAE4DCE84A59555956FAA5E358AE0A3BCBC9CCFE79348B82089CD2E29292E797B51F2F64256AB7F9B941457D90736946186559443434363EAB4E9722A2C58B8D0C8C84869FD0100A86F572E5F963FE3CCE572C78E1F7FE3F6EDD56BD6D8DBDBCBA9396AF468397B91E9EBEB8F1D37BEE61D7D47919C892AB31F8888C97E600B1549B320A23BB76EB28523478D1E3E62E4BE3DBB7F58BC505B5B67C5EA5F6A9C33B16EE3A62ADF54BD6A14D32E6C9420949D74CA7F376FA7A6AE26D14AFA71006C0AAB9A9A94DF0631EC30949C84F2FAE03D68704A4ACAEFBF4959F8337EC2842F2757BD150F00C07BE49F73E7643DC5E5723F1F3B76C6CC99D6360AED0EC5E57277EFDDFBE5C4899289BB068686CB96AF54CE97C91A643F508DD22C1A5BCE446D348AE0434545454353B38CC7E3CB5E19C42E1A6247C0D8A39965B562CBB575AA1E34333030602E0A0B153D73AEAE4CFE6A6AEB366D4E9F3AF5E279389FCFE7AAAAB66FDFFEABA953FBF6EBA7E49E0000D4ABC4C444A97B821151FF0103162E5EEC52CDFC4F2B2BAB73E7CF1F3B72E4CF3FFF64762E303030E8DEB3D7F82F26CACA45A87335CB7EA8419A05AB91E44CD446A3083E88C8D4D434293151CE81B4EC534D4C4DDF35317BF794F43DECD8F2264D4CABEC80DDBBD833212E5EA11ED729CF76ED3DDBB52F2F2F2F2B2BB3B2B4303737537E1F0000EADB85F3E7250B9B356BF6E3CF3F7712D9C3A95A74757567CF9D3B7BEEDCE4E4948CCC2CBD77D9094A53B3EC871AA459C8D1203913B5D158820F2727E7A4C4C4A2A2A2CACA4AA99B87161414101197CB65D7D73079DE449427631D72417E81584D399A7A786868689495952524C4171515C9F985A83FEAEF28FFA5010094406CCE454F5F7FC1C28513BEF842CE1E5C8AD3D5D52DE5891F55A10435CB7EA8419A851C0D9233511B8D62C12911B568D992B9888F977ED05D42423C11B9B9376543136B1B1B66AE44D636BD4C13D19BCBA1AAAADAB94B5722120A8537AEF955AFF700005095F0F070D13FD703BCBD6FDEBE3D71D2A43A893C8868F29793460D1B326AD890D7090975724305D520FBA1666916723448CE446D3496E0A35BF71ECCC5B3D050C967F3F2F212DFBC21A29EBD7AB1855C2EB74BB7EE44F43CFC99D4E351C2C3C288485F5FBFCA73111963C68E632EFE3E73A6B4218E233A79E2F8F6AD5BD6AC5E959696A6FC570700A857ECB087B1B1F13E1F9F7D3E3E75BB2CA3B8E82D390766D5871A643FD42CCD428E86CA99A83165041F8277FF1E727E214C9A34E9D1B317118586044B3EFB2C2C9488747474FAF61F205A3E7CC4480E87535C5C1CF36EBA4B54585828110D19365C4E6829CAD9C5E5934F8710514646FAEE9DDBC54ED05582FBF7EEFA5EBE74EEEC594576D30300788FF0F9FC4B172F1251B7EEDD7DFDFC06787B57D9E47D5183EC0726CD424E13929666214703E64CD48C32820F76488ABD906AF2D4A91A9A9A41818189EF16EFB0FEFAF34F22FA62D297625B7239383A0EFAE413223AFBF719B1268101016F5EBF363169327ACCE78A7775C637B3DD9B7A10D18D6BD736AD5F27E738E6ACACCC82FC7CC5EF0C00F031F37FF0A0203F7FF59A35C74E9C60F3063E0C35CB7E30353525915C0A69ADC4D32CE468D89C891AA8F7E0A3B8B83825F9EDB62AF20F85B7B2B2FEFE87A544B4EE97D5C5C5FF6E0B76E2D8D1C88857BDFBF415DDEF9635F39B391ECD9ADFBE795374A1466666E6F62D9B34353557AE5953ADA4237575F58D9BB7305BCBDDBC717DF2A42FFEFAF30FD16028272727F869D0E60DEBFFF7C5848C8C0CC5EF0C00F0317BFCF8F11F67CE8C9F30A1F19CEA5E576A96FDE0E4E44C444C9A85F4561269167230391344C4E44C54A3F70DA4BEB25DF6EEDEE5FFE07E4579794141013B7FB17AC5726D6D6D2D2D6D5555EED15F4F49CE8674EDD67DE396AD5B366E9C36E57F9F0E1DA6A7A7E7FFE0C18B17CFBF9C3C65ECF809525F485D5D7DE396AD3EFBF66EDDBCE9C9E3C76D3D3DD3D3D32F5D386F656DBD7ED31659C70DCBA1A9A5B5F29735FE0FEEFFF6EBAF3131D1077DF61FF4D9AFAAAA6A606058545C54C6E3696B6B77E9D66DCDFA0D2EAEAED5BD3900C0C769FA8C19ECD4C00786C97EC8CFCFAF56F6438B962DEFDDBD4344F1F171AEAE6EB25A89A659C8C1E44CDCB97D8BC999183E7254F5DF8752D557F0316BF69C59B3E7D4A061CB56AD8FFE7AF25958687C5C5C7171F1C041837F5ABE829D51934A5D5D7DCEB7F3264C9C14FC34283323C3D4D474DDC6CD6EEEEE35ED3B1151D76EDDBB76EB9E9D9DFDE279786E6E6E5161A18E8E8E8949139326262EAE6EC8860500A8960F35F2A077D90FBE972F31D90F92C93B52B31FBA75EFB177F72E227A161A2A197C484DB3906FCCD871776EDF22A2BFCF9CF11E34B8319C1E274763D9E7431487C369DDA6AD82292A2C6363E37EFF5D8E5A7B262626CC32580000F838299233317CC4C8AB572E33D90F925F7DA5663F306916F7EEDE090D091EF5D918B126B2D22CE46072262E5FBAC8E44C2C5CBCA431CF703596545B0000804648919C899A653FD420CD42BEF7286702C107000080748AE74CD420FBA166691672BC4739139CE818E93B8A82F24D9F3A25213E9E88AE5CBDEADEB46943770700E07DE2DDAF5F4C4C0C11ED3F7858915335E4909A334144F27326CACBCB7DF6EDF5BD7CA96BB7EEA2D90F8B972C9593FD10FE2C6CCBC68D1515E5A2691663C78D1F3B7E428DF77E657326988792391303BC0756776D436D98181B1919198A9620F86844107C0000D4581D061FB5C18C2E646664E8E9E9B9B9375524FB412814326916656565161696ED3B76949F66A1A0C6933321197C34C605A7000000EFA91A643FD42CCDA24A8D3967026B3E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C0000008052A9D6F91D8542E1F1A3473CDBB56BD5BA4D9595C3424322232224CB3D9A356FD9AA15FBD0F7CAE5C28202C96A3D7AF6B2B0B4AC4D6F010000C43C0F0F0F0C7832F9ABA955D62C2F2FBF71CD4FB29CC3E10CFAE453F66172525258688864356313934E9DBBD4A6ABEFA9BA0F3EFC7C7D4F9F3A99969AAA48F0C12BE5F178BC7B77EF24BE79C394F4EED3D7C1D151534BF33FD578BC8282822B972E16171713919EBE7EEF3E7D4D4D4D353535A5DC140000A0A64A4B4B37AE5F9B9E963674D87093264DE457E6F178292929C949490FFD1F30251696961DBD3A999A9A8A56CBCFCF4F4C4C7CF1FC7964C42BA6A455EBD6CE2EAEBA7A7AF5F1161ABF3A0E3E3233337DF6EF25A2E0E0A702814045A58A691DAFCE9DBD3A775657573F7AF81011B5F5F45CF2E34F92D5468C1C454471B1314F838288E8B3319F7F3E6E7CDDF61C000080880E1FF0494F4B23A2A74F8306780F945F595F5F7FEAB4E902816050FFBE4CC992A53F79346B2656AD59F3E6CD9A370F0B0D59BC603E11E9E9E9ADDBB85955B5EEBFFFBF2FEA78CDC7F62D9BCBCBCA88283F2F2F3A2A4AC156F9F9F9CC45878E5E72AA6567673317ADDBB6AD451F010000A47B16167AF9D245E63AF0C913055B15BC5B18606068D8D4C3435635F653AC65ABD61F73E441751B7C5CF3BB2A1008BC070E621E06050628D8303E2E96B968D1B295AC3A7C3E3F353595883434345C5DDD6AD75300000071BCD2D26D5B36CF5FB898791812FC94CFE72BD2303E2E8EB968D1A22587C391552D253999B9105DD4F871AAB3E0233333F3F8D123DF2D58D8B15327A6E46950A0826D6362628888CBE53A3A39C9AA93949858C6E3119193B33397CBAD757F010000FEE3F0C1031D3B7AF5F7F6B6B1B125A2C2C2427689867CB131D1CC85AB9BBCEFC6EC84808BAB6BED7AFADEABB3E063FB96CDE3274C3433376FDDA6AD9A9A1A11BD7AF9B2B0B0B0CA866969694C268BA3A393BABABAAC6A519191CC859B7BD33AEA320000C05BCFC242830203980C97761D3A308581010A0DE18B7C42B9CBAD1641441C0EC7E5A31FBFAF9BE0E39ADFD5CACA8AC19F7E4A445A5A5ACD9AB7202281401012FCB4CAB631D1EF2241B9016354D4DB7F5ACCB9000040DDE295966EDBBCE9BB858B34B5B4486401A282EB0762D8910FD99F50D9595939393944646D63A3ADAD5DDB1EBFE7EA20F8C8CECA3A7EF4C8770B16B1135D1DBDAAF1CFC60E43356D2A6F48830918A9AAB8120000A0BA8E1E3ED4AE7D0776878856AD5B3323F1D1515179B9B9F2DB969494308B392C2C2DF50D0C64558B7C373A227F6AE6235107C1C7F66D5B3E1F375E74B3AF76EDAB316015FD6E4843CEC8079FCF8F8B8D25220D4D4D1B5BDB5A751700004044F8B3674F1E3FFE6ADA74B6444343A3759BB64424140A83AB1AC28F8D89160A8554D5C03CFB61E7E686AFD0B5DEE7E39ADFD5D292D221438789163A3A39353135CDCACCCCC9CE8E8F8B93B38C94DEAD3625A2D933A6CBA9C6707171115B6D5A909F9F9696C65C1B1919999A9955EF0DD4B3A4C4C4929212E6DACEDE1EBBA20100342ABCD2D2AD9B367C3B7F819696966879FB0E1D02039E1051C093C77DFAF693738798E8B7732EF7EFDDF5EEDBBBCA577445F051CBE0233B2BEBE8E1435BB6EF90CC2C6ADFBEC355DF2B441418F0444EF0919999999F974744EE4D3DD6ACDF20ABDAB5ABBE07F6EF2369FF66B9B9B98F1EFAFBF9FA6667670D1F3172E6EC39EC5371B131422139383AD653760CAFB4343939595D43DDD6D64E569DD8D898F0B0B08B17CE13D1AEBDFB31670400D0A81C3D7CA88DA7675B4F4FB1F20E1DBDF6EDD94D44C14FABD83333FA5DF0F1C34FCBDC65A744CC9A31ADA4B898C3E120D5856A197CECD8B675F46763ACACAC259FEAD0D1EB5DF0113066EC38597760177CB8BAB9E9C9DE6536392989B990FCF0B67770F872F2949292927FCEFE2DF6D43733A60B0482BFCF5FD4D5D555E0DD545B4C4CCC8279731D9D9CF71F3C24AB4ECF5EBD7BF6EAFDD0DF3F3B3BAB3EFA00000035F63C3CFCD143FFFD878E483E656D63636969959A9A929F9717131D2DE7AB63CCBB0F32CF76EDF5F5F5A5D6C9CACA2C292E26221B5B5BB121968F53CDD77CDCBC71BDA0207FF8C851529F6DEBE9C98C37BC7AF9A2B4B454D64DFE5DF0E1E222E7B56263DF4ECDC89A2A93FAEF6D6B6B6763635BE516EF35A6A1A96163636B616951654D59BF8E0000D050CACACAB66EDEF8EDFC05B2724FDAFF9B702B73AB531E8F9798F88688CCCCCCE5FCA98F8DAEE2534C113C1E2F2830B0A2A2A2C677683C6AF8C19C9D9D7DE880CF8245DFCB9AD1D0D1D565B698ADA8A8080D0996751F36CFD6C95966F0C1E7F3E3E3E389484B4BCBDAC6466A1DA93BCA1D3872F4F0F113F597D1E4EAEA76F8F88915AB7EA9BAAAEC0DEF0000A0411C3D7CA845CB966C8684A40E5E6FF7CC0C0A94B967667C5C9C4020202267176739AFC57E85AE4DAACBC4719FFFB864317386C9FBAE86D32E3BB66E19317294AD9DCCB50E44E4D5A9F38BE7CF89283020A07397AE52EB30EB745454541C1C1D65DD27253999D9DBD4C5D54DC1618CF4F4B4CACAB77BE25A5A5A8AB52A2D2D8D78F5AAAC8CE7EAE66E6262929F9F5F5454646060A0ABAB9B9595595656CE5433333363764BCBC9C961076F9A3469A2A1A1C1E7F3D955AEEA6A6A92AB5C7373735EBD7CA5A3A3EDE2EAA6A3A3A3489F010040699E87873FB87FCFE7E0613975DAB46DABA6A656515111F1EA65414181D4818D6805BE4293E84620558D7CF078BC82FC7C0343430D0D0DB1A72AE5EEF55E5151919D9DADAFAF2FEB2B774949497E5E9E9191916655F33E7C3E3F2F37D7D0C848747CA1A2A2A2ACACACAE9631D424F8B879E37A5E6EEEA8CFC6C8AFE6D9BEFD91430749F63EEBD9D9D9CC8E2BB6B676923F65560D02C6BBB76F870407073F0D2222B1351F972E9CDFBB7B9786A6A695A5557272527FEF817C3EFFF2C50B5F4F9F317ACCE781010181014FFCEFDF27A2BD3E079D5D5C88282C3424F0C9939B37AE13D1BA8D9B3DDBB5E395965EBE703E2830F0F5EB04B1351F1515153BB76DBDE677B5499326BA7A7A991919D367CE52B0DB0000A0046565655B366DF8F6BBF93A723F4A3534345AB66A1DFC34482010848624928208000020004944415404F7E8D94BB2CEBF3BA6BBC85B461A17134B442A2A2ACEB2D7183C0B0BDDBB6B97B189B1BD83E3B3D0503E9F3F66DC3826D1E6E8E143418181BCD252225A387F9E8A0A978856AF5D676C6C4C44252525BF1E3F161519E1D1ACF9AB972F343434BE9DBFC0DCFCED9280929292F3E7CE3EB87FBFAC8C6767671F161A62656DFDCD9CB94D3D9A11D1AB972F4F9F3A999494C8E7F3FBF4ED376EC217870FF8F85DF52D2D2DD5D3D79FF9CDECBEFDFA676666FAECDDF3E8A17F6565A5A999D9A2EF7F68DDA68D9C37AB886A4FBBE4E4E41CF2D93F7FF1E22A53485C5C5C8D8C8C88282D3595991213C32EF870923B5A1555FD8D59C68C1DF7C34FCB24CB2F5FBCB86BC7F66EDD7BFC75EEFC1E9F03672F5C72717179E4FF80AD3068F027CB96AF140B1B7BF7E9BBF887A5A2FB8BE8E8EA4E9B396BD2E4C9922FB169FDBA6B7E5767CD997BEA8F333E878E9CFCFDCFA4A4A4E4A444057B0E0000F5EDD891C3CD9BB7907F8E3AA343C78ECC85AC136ED9E0C3497654515454949A9A4272579B2624C4FFB8E47B1757D7B51B364D9F396BE7DE7DDA3ADACFC3C39967277F3575CF7E1F66C462F3D6ED7BF6FBECD9EFC3441E6565653F2C5E18F2F4E9DA0D9BA64E9BBE71CBB6E2E2E2258B16F2783CA66D5C6CECB123875BB66A75F0C8B19F57AEDAB3FFC0EBD7AF7FF87E716E6E0E1179346BB66ACDDA5EBDFBA4A5A66667672DFFE947AEAAEACF2B57CD5FB45828106CDEB03E3020E087C50B1D9D9C56AF5DFFF58C995999996B56AD282F2FAFF247275FB5838F5DDBB70D1D3EC2C141E62C098BC3E1B0DBE33F953661F62C2C8CB9707494B711083B7062652D25AD46167D7D7DB18520E5E5E5A77E3DA1AEAEFEED77F399C8494545C57BD060B16096C3E1E8491B5B333434142B3190D8C92E3E2EEEEE9DDB1ECD9A0F1B3E8229D1D6D6FEEAEB69D636D8180D00A05178F9E2C5BDBB77A6CFFA4691CAFFEEB31E14C8EC2426AA203F3F213E8E88B475742C2C64261F30C3F044642DFB53ECD68D1BE5E5E56DDBB5631E72B95C05CF12F9F5F8B18857AF467D36869940E072B9DE0307A52427FBF95E612A686969B9B8BA7D3A6428F399686169E9EEDEB4A4B8F845F873F6264C1C131A12326DC6CC6933667AB66BEF3D7050A72E5D0402C1B12387D76DD83461E224CF76ED467F36C6D9D9253F3FFFD5CB178AF44D8EEA4DBB8486043FF47F4044BFAC5CA148FDE4E4B729B2EC71C32C3E9FFFF0C1DB2107392B8453529213E2E3996B037D99DBD64AC5E170447F57829F0665676775F4F2923FCE46442A1C29311947A250B2E49ADF5522EAD6BD7BB5FA0900004AB37FCF6E2D2DAD1D5BB728585F4545452010E46467E7E7E5191A19893EE5EFFF80F99491FC762A8AFDB033323696558759B5EA7FFF7EAFDE7D98AFC713267D2919EE88E1F3F9D7FDFC88A865AB566C213340F2D0FFC1B0112389C8D9C565CF7E1FD1569A9A1A44545E213E7AD1BE4347D17DB934343489A847CF9EA2EB1A3534358888C7ABEDA2D7EA051FAF5EBE24A28722F3140A7216D953E5EE9DDB776EDD4A4E4A6286A188E8F8D1238F1F3DEADEA347BF01DE6CB543077C5EBF4E60D3938868F94F3FDAD8DA8E1937AE69538FEA7680DE6D16D2C4D4B4066D1BCF4B0000408D555656C6C444F3F9FCC437521603C8616464C4461E7C3E7FE3BAB525A525A1C16F73395392937F58BC484F4F6FF10F4B5555DF7EB0C64447FFFEDBA9BCBCBCF0676F87F9EFDCBE9D939DE3E8E4F4BF295F89DDBFDF8001E7FEFECBFFC1FD995F4F1DFDF9E73D7AF652648F8694E4E4BCBC5C227AF4E8A1C6BB63E123225E11515E5E9E684DA15098929292939D95979B97939D53ADF75E1FAA177CF4EDD79FCD7BAE16D18DC83C3C9A59595949D63169F29FCFECBEFDFA57564AC966B691BD9DA87CE9E9E944A4AEA65EB3E68AC8A8FF970000801A130804BFAC93B99BB61CA2890B7C3EDF7BD060221A3172B4681D2E97CB461E4464606838F8D32144443451B49AE4943D11393838AE58BD66EBE68DAF5F276CD9B8C167EF9EA1C3478C193B4EFE8E64F9F9F9CC85BDBD035B686169D5AB775FD1867EBE578E1D39AC6F60D0B75F7F2B6B6BAE6A6D4F56A9BDEAF5C0CCDCDCCCDCBC962FA9E04DE49F085303CCBF44567DEE34AAA5AD5DDF2F01000035A6AEAEEEF96E5D457DDFC4D4D4D4B43A03E11D3A76FCF5B7DFAFFB5DBD74F1624C74D46F277F7DFCE8E18EDD7BD5D5657EA165230CF7A64D656DEB70EEECDFFBF7ECEED9ABF70F3F2D63967DB0CB411A507DEDFED90831E7EE32071FCBC751E110914028A8EE4B985B9893C866F00000008AC8C9C9292A2A5255551DF4C9A77BF6FB2C5FF58B9A9A5A5C6C2CBB58552A7B0707E6BCD2C437AFA556100A85BFFD7A8288C67F3151EA6E9C0DE503093E98A53ACCFF338442E1DBC277BBB2B46FDF81CBE5C6C5C6B2FB83115176565688C406AC4D9A3421A2BCDC7F27CC1212E2DFBC792DF61202019FFD7F46A7CE5D8828E0C963BEC85630CFC3C3D3D352C56A020000B0B66DDEC844098C2E5DBB7A75EE4C440505056C2157629B4D5555D52E5DBB11D1DD3B77A4DEB6B8B898B983AAC4548BE46A567E65A5E41D2AA5154AAD592D1F48F091939D4D4439B9FF2EA261D6E088169A9A99790F1A44446B57AF8A8E8E4A4B4DBD72E9E29AD52B9D9CC4771969DFA12311FD71FAB7A4C4C4D49494A3870F1D3EE0C32C5BC9CDF9F72572737289282F37972DE9D1B3979DBD7D4A72F2F6AD5BD25253E362634EFD7AE2ECDF679869A69C9C5C0200009026353555F461715191868686E8EEEFB676F6449492F29FF1FBA9D36718181A5EF8E7DC93C78F45CB9998434747C7CEDE9E88FE3AF327136D141515151616115176D6BF2B042A2A2B89A8B8B858F40ECCB2CBE2A2A2FF145648A95903DCB973BFADE52D1A56F8B3B09DDBB63D7EF490CFE7A7A6A43C0B0BD3D3D73FF7F75F274F1C6756E204070546454676EDDE9D883A74F4CACFCF0F78FCE8F2C50BFF9CFD5B20102C5EB23436263A22E255BBF6ED9B356FC1DCD3D5CD2D2121FE6950E0857FCE5DB97CC9D1C979DE8285B76FDDCC484F7FF13CFCC58BE77676F63BB76FF3BD7289C7E3959595050506141614346FD192C3E1F4E8D1332A32E2A1FF837FCEFE7DEDEA557B7BFBB9F3E65FBD72252F37373C2CF4E58B17ED3B7490358177E9C279667DF2842FBE60465F00004041274F9C6076CDFE74E830A3FFE6C4367E61A1A1B76FDD2C2C2CD4D3D32BAF28BF7CF1E2BDBB77162CFA9E39258D616FEF70EFEE9D972F5F686A69454747319BA56A6B6B77EDDE3DF869D0857FCE45BC7A151717FBE8E1C33F4EFF76FFEEDD01DE03391C8EBDBDFDBDBB77225EBD7AE8FF2028E0C9F56BD7E62F5CF4D0FF417C6C2C11E9E91BDCBA71DDCFD7372F37B7B0A080C3E1A87055F2F3F26FDFBC71EBC6F5929292C2C242A140A0A76F10171B73E7F6AD07F7EF555656161414949595595A59C9D99D5C94B696969696A66809273A467C078E0F5E5959D99BD709C6264D4C4C4C8868DFEE5DFF9C3BCB6CAF2E5A2D3333332F37C7DAC6B60647D315E4E7A7A5A559DBD854EB6097E953A7309B9A5CB97AD5BD69D3EABE2800C0C7CCBB5FBF98981822DA7FF0709DA72C28416A4ACAAB572F9312138542A199B979D76EDD25B36DB3B3B36FDFBA99979BEBEAEAD6B3776FB65C201084043F8D8A8C2C292931323272736FDAAC7973F65CB3F4F4B4BBB76F979696BABAB97B75EAC4E572535352AEF95DD5D7D7EFD9BB0FBB9916C3DCC282CBE58AAD8F7470742CC8CFCFC9F94F8EAE47B366F293715826C6464646FFD90AA5E1F36D944F434343F4681FC9F5228CEA2E5416A56F60A02F2D990A0000402A4B2B2B4B69FB5088323131192DED603515159576ED3BC83AA1D7DCDC62CCD87162AFF5E5E429CCB5B1B4ADCF24376C3536369673046C757D206B3E6A8359142216D0010000403DF918473E5881014FAE5CBA1418F08488FCAEFA6667677D3666AC9B7B15E71D030000406D7CD4C147EB366D3D9A35172D6112A6010000A0FE7CD4C187BABABA9C9DE3000000A03E60CD070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F0010000004A85E003000000940AC1070000002815820F000000502A041F000000A054083E00000040A9107C000000805221F800000000A542F00100F0FFF6EE3ABCA9AB0D00F89BA4DEA6A5EEEE50830215DC5ADC61487119EE03866C3074B897C27077D721434A8D5591425DA8A62E499326F9FEB8EDFDB2583D6DE1FD3D7BF65C39F7E4A405F2E6C87B10423285C10742082184640A830F84104208C914061F0821841092290C3E104208212453187C2084104248A630F840082184904C61F0811042082199C2E003218410423285C10742082184640A830F84104208C914061F0821841092290C3E104208212453187C2084104248A630F840082184904C61F0811042082199C2E003218410423285C10742082184640A830F84104208C914061F0821841092290C3E104208212453187C2084104248A630F840082184904C61F0811042082199C2E003218410423285C10742082184640A830F84104208C914061F0821841092290C3E104208212453187C2084104248A630F840082184904C61F0811042082199C2E003218410423285C10742082184640A830F84104208C914061FB2909B9BCB66B31BB7CE949494C6AD10218410920D0C3E6441595979CDAA95FBF6ECFEF82186CFE737A4AA8C8C8C007FFFC10307667CFBD658CD4308A1962C3939F9F4C993D9D9D98D525B656565D0BBC0B76F5E374A6DA87EE49ABB013F043535B5556BD6CE9B3DF3D183FB868646BDFBF6EDD3CFC7D8D8B8F6359496963E79FCF8E68D1B21C1C17C3E7FDD6FBF79797B375D831142A8E5B0B0B0E0F2785DBDBCBCBCBD878F18E1DBBFBFAAAA6A5D2BE1F3F99F3F7D7CFEECD9AB972F7474F5F61D3CD4144D45B584C1878CE8EAEA2EFB65E586F5EB3233332E9C3B7BE1DC59C7B66DFBF4EDD7A3576F757575494F71B9DC37AF5FDFB97DFBC9E3C7151515C4C57E3E3E53A74D9355C31142A8F9CD9839332A32F2C1FDFB816FDFAE5FBBD6C7D777D8F0E1DDBA77A7D168353E9B9696FAE2D9B397CF9F67666600009D4EFF7DE31F4A4A4A4DDF6A2411061FB2E3E5DD65D090A10FEEDD254E3F7FFAF4F9D3A700FF231D3B75EAEBE3DBD9C353B0F0870F1F6EDFBC79F7EEDD3C0643F0BAB189C98E5DBB28148AECDA8D10422DC0D6EDDB63A2A3535353592CD6DD3B77EEDEB9A3A5AD3D64E8D011234638BBB888962F2C28F8E7E58BE7CFFEFEFAE58BE0F525CB57181A19C9AAD5483C4A5C7C6273B7E10752515131EFE759E96969A2B7E8743A1FA0B4A40400CCCDCD25CD27BD72ED5AC74E9D9AB6950821D4228587878F1D354A74E69C95B5F5B0E1C36F5EBF4EFCCB396DC6AC0F31D1FFBE0FE3F17842257D7CFB2F5FB94A46CD45D5B4B5343535DB085EC1E043D63E7DFCB86CF1C2FA4D3B1D3F71E2E62D5B1ABD490821D45AFCB171E39953A7EAF7AC96B6F6B113A7E8747AE33609D54834F8C0D52EB2D6B65DBBA1C347D4E3413333B3356BD7367A7B1042A81559B57AB595B575FD9E5DB17215461E2D04061FCD60CAB4E95ADADA757DEAB70D1B5454549AA23D0821D45A282A2AFEB169533D1EECD9ABB77B471CB36E2930F86806AAAAAAF3172EAAD3233D7BF5EAD5BB7713B50721845A112F6FEF91A346D5E9115555D5B90B1636517B503D60F0D13CBA76EBEEE4EC5CCBC20A8A8ABF6FDCD8A4ED4108A156E49755ABEAB45676DC84896DDAB4A9B91C92150C3E9ACD9CF90B6A5972CAD4A96666664DDA1884106A45F4F4F4E6CE9B57CBC216969623478F69D2F6A0BAC2E0A3D9D8DADAF5EADDA7C6621A1A1AB5FF3B8610423F8819B366E9EBEBD7AEE46C39394C6AD5B260F0D19CA6CF9CA5A0A020BDCCEC397334343464D31E84106A2D94959557AE5E5D63B1764E4E42291C514B80C14773D2D3D7F7ED3F404A017D7DFD2953A7CAAA390821D49A0C1D36AC6DDBB6D2CBCC9C3D47368D417582C147339B3879B294CE8F858B16292B2BCBB23D0821D45A50A9D4C54B974A29D0B153E7B6EDDAC9AC3DA8F630F868669A9A5A83860C157B4B575777E4E8D1326E0F4208B5227DFAF6757573937477EAF4E9B26C0CAA3D0C3E9ADFB80913C5767ECC9C3D5B515151F6ED4108A1D68242A12C58283E8147670F0F5B3B7B19B707D512061FCDAF4D9B36FD070E12BAA8A1A1317EC28466690F4208B522BD7AF7B6777010BD3E6EC2C446A99FC3E1E4E6E6B258AC46A90D1170F551AD1C3D72F8C9E347E56565C469670F8F4D5BB73762FDC3478CBC77E7B6E06E737E9327ABAAAA36E24B2084D0778942A1CC9C35EB97E5CB052F3A39BBB473AA6D2247B1D86CF6F5AB575EBE78CE60307475740B0B0B2A2A2AECEC1D9C5D5C7AF6EA6D666EDEB056FFE81A147C1C3974B0ACAC54F4FAB41933757474253D75F8C0FE7266B99696F68C59B31BF2EA0D11111EFEECEF27003064E83007C71A264B03C09C79F3E7CC9B1FF42E70C3FA754DD11E6313134F2FAFA077EF8853797979BF49939AE2851042A8B9444745D9DAD935C524FA418307EFD8BE3D373797BC327AECD8865498939DBD7AE58ACC8C8CD973E60E1D3E8246A30140725292FFE18317CE9DE572B9D366CC6C68A37F6C0D1A76E9DEA367E7CE9EA92929CF9E3E7DF6F469485090B3B36BEF3E7DD5D4A46D1BF8F2E58B674F9FBE7BFBB6212FDD40A9A9556DCECACAAAFD53B676764DD724C1AD6E878F18A1A7A7D774AF851042B2A7A2AAFAD3E8D19999998D5EB3A2A2E2A42953C8535333330F4FAF7AD7C6E572B76FDDFC2D3D7DF090A123468D26220F00B0B0B49C39FB67494F65647C7B78FF5E1E8351EFD7FDA13428F8707276EED1AB57EFBEFD8853C776EDFA0F1CE8DEB1539D52EEB7226AAA6A4D5779FB0EEE643F1EE6F640087D7F6C6C6C2854EAD04183DEBC7EDDE8954F9A3C99EC5319317234955AFF4FB790A0A08F1F3E00404F91ED3C7574C577EA9F397572DA24BFFD7BF7141616D6FB757F288D30E7834EAFEAE7A04BEDF0201D3A7294CBE3C9376BB2DBBE7DFB75ECD41900B4B4B46AFF14B53AFE6D0A140A65D0E021FE870F39BBB838D694360721845AA3912347FEB171E3B4295366CE9EBD78C992461C825157571F3478C8F56B579595957BF7EDDB90AA3E7FFE441C688BCC1FA0D3D5E72D5C646F2FBC88A602A7A3D6512344008A0A55CB41E5E46B559B81A161C35FB48154D5D454D59AB01BA37EFAFAF89E3AF1D77081F1178410FA9E0C1E3264CBE6CD5C2EF77840C0DF4F9FEED9BB574A968EBA1A3A6CD8F56B57BB75EFD1C098262BAB6A60283B2BD3C0C040F0969C9CDCB0FFFE139D9797C7E170CACACBAB4F19E4878B868686504BB85C6E7454547A5AAAA292929D9DBD99B9B9941E9AC484F86FE9DFF2F218CA2A2A4646C60E8E8EF2F2F28205B2B3B3045629401B0D0D25656500282B2BFBF4F163C6B7746D6D9DF6EEEE826B17B85CEEA78F1F5352925554541C1DDB1A1A19D5F687D2D864D7FD50565A5A52FAFFD9A9727234499352391C4E644444C6B7742A956A6169D9B69D138D462B2929292B2B03006D6D6D7979F9D2D2D25281DAE4E5E4B47574C8D3DCDC5C2E974B9ED2E974F2A72FE9B7252A3323E3434C4C4949719B369A6E1D3AD4A98FA47ED4D4D4060C1AEC3B405AC27584106ABDB47574BA75EFFECFCB9700909C943466D4A84953A62C5FB1424545A5E1953B393B5B5A590F1834B881F51819191307D7AF5E717175A35028520A6FFC6D7DDCD72F3C1E8F38FD7DDD5AF2D69265CB7D070C244F2323C2FFDCBA45534BAB4BD76E05C9C9C7FC8FC82B282C5BB1B253E7CE8215666566DEBC713DF0ED9B3C06C3C5D54D5B5B3B2EEE6B5A6AAAA1A1D19CF9F33DBDBCC9927F6EDD52505090F1ED1B71FAEBBAF53D7AF6BA73EBE6F9B3674A4A4A888B743A7DC5AAD5C453EFDEBE3D7EEC28599E4AA54E9E3A6DFC44BF7AFD901A8A12179FD8C02ADEBC7AB5F98F0D00E03B60C0B2152B25157BF6F4C9AD1B373232BE95979703808989E9893367458BBD78FEECE8E143454545E4150343C3C54B9785FFFBEFB52B9701E0E091A376F6F64F1E3FBA73EB66664606519BB9B9C5B193A7C84736FCB62E3D2D2D3D2D8D58BC3AEBE739A3C7FE44DC5AB678A1D06FAB672FE151BD8282FCFD7BF7040506925728144AFF8183A6CF983966E4706882A5B624369B6D68A0AFA9D9A6292A4708A16677FFDEBDC5FF4D0B666864B46AF5EAC1438648FF98AF515151F193274F3AB8776C580321253979CEAC19443CE1E3DB7FC1E22535E67B3CE67FE4C6F56B007024E0B8B58D8D6881AB972F9DFCEBB85BFB0E9BB66E233A30921213972F59C462B1FEDCB5C7D9C5852C79FDEA95E30147E9EAEA3B76EDB6B2B601002E97BB73FBB6972F9E53A9D4BD070E0AADD0DCBD73C7D3C78F0060F5DA75A1C1C16161A17DFAF6B3B1B1CDCDCDB97AF91293C99497973F77E9F2DF4F9E9C3E79A24BB76E1D3AB8575656DEBE75333D2D0D00FEDCB5DBAD7D8706FEC46AA4ADA529F4B926BB9E8FBE3EBE7D7D7C737372FCC6FF24A9CCDD3BB70F1FD80F003D7BF5EE3F7090A1A1614A4A4AF8BFEF37AC5F27D43BE4DB7F806FFF0159999953FCC464E2DAF0C76600387FF6CCB933A7856EEDD97F10047E5BA28A8B8A562C5D929E96A6AEAE3E7DD66C2767676639333121E1F6AD9BAB57AEA8DB7BAEBB1A37B94508A156AD4FDFBE6A6A6A825DD79919194B162D3A7DEAD49A75EBDCDDDD1B5279C3230F0030B7B0183FD1EFC2B9B300F0F4C9E30F31D10B162F71EFD8A9DE157E898D3D71FC1800CC5FB8881C3AB1B4B2EAEBE37BE7D6CD13C703F61D3C2CF4888F8F2F117900008D469B3465EACB17CF793CDEA50B17366EDE2258D2A8FAC3F1FA952BE6969667CE5D20C77D34B5B4F6EDDEC5E17076EFD8919B9B73E8688095953571ABB3A7E7948913F87CFEFDBB7765107C88927586535D3D3D9A84699B0505F9C78FFA03808F6FFFD56BD7B5EFD0C1C0D0D0C3D373EEFC0547FF3AA1A82866058DBE81819448D9D8C444D22D23C9035D172F9C4F4F4B535252DAB977DF8081834C4DCDECECEDFB0F1C7824E0D8C006F7E649919F9FFFF6CDEB87F7EFBD78FE5C70B53A42087D4F9495957DFBF717BD1E19113176D4A839B367272624D4B54E3E9F1F1D1575FFDEDD278F1F45454656565636B09193A74E9B3A7D06719C9191B166D5CADFD7ADCDC8F856BFDA02FC0F0380AD9D9DA99999E07517575700F8FCE95354642479D1D6CE6EF888915E5DBA0A963432369693930380ECEC6CA1CAC911AB76CECE2B57FF2A389DB15D3B27E2A0203F7FCFFE8364E40100FAFA06C45C05A2FF43F69A61C9898A8A0A391C25E8DA952B6C369B42A14C9E3A4D28A4303232767175FD12FB59E8110A85A2ACAC5C5E3DD34788940CA192C6170B0B0B1FDEBF07003D7BF7B1B0B014BC45A5527DFA0F38B87F9FA43AEB8DC5641EF53FF2E4D14372D4904AA50E1D366CFDEFBFB76983E32F08A1EFCD8851A36E5CBF2EF6D6DF4F9FBE78FE7CDCF8F1F3172ED4D7D7AF4D6D21C1C11B376CF8121B4B5ED1D2D6FE79EE3CD121F53A193FD1CFD9C575EFAE9DE9E96900101CF4EEDFF76113274D1E3B6EBCA4AFD062252626100B77CDCC8493A2AAA8547D4845454690136F5DDDDABBBAB5172A49A150D4D4E88585051C0E5BF805AA3F2E45F7EF55A81E2DB2B0B214FD4024C6928A8B8B6BFF5E1A5173ECED22AEAFA2B2B2F2C1BDBB00E0ECE2A25BA7FC5A927B3E2814C9EF4EC2538F1F3EA8A8A800803E0D5BA9557B4C2673E9E2858F1EDC27230F00E0F178B76FDD1A356284E0DC178410FA3E787878184A5EF6C8E5722F9C3FDFA36BD7F56BD7D69891ECC5F3E793FDFC04230F00C8CFCBDBB679D3F9B3671AD84E276767FFE37F4D99365D51490900381CCEE9932756FFB2BCAC544C6A6F4952535288034D2D2DEE7F915FB3EBD0DBCDAFB9482D51A041336C1AA8A5ECED929D9D4D6CDB434E336E16C9C949C48191B18C9A71F4F021497D8CC94949EBD7AE3D70E8906C5A821042B241A552870E1F1EE0EF2FA50C87C3B978E1C2B5AB57870C1D3A6BF66C3B91D41A0090C7602C5FBA54D220CBB933A75DDDDC9C5D5C1BD254050585097E937CFB0F08F03FF2EA9F9700101D15B563FB36A189175290C1C7B3A74F83ABF7D02099989882B87EFAACACAC87F7EF7DFAF83127279B5D51A1A8A4545CFC5D7D176D29C14756660671A0D9F42B5AA536A32ACAD6D49445337273739F3E792CA5C083FBF7172E5E6C6B6B2B83C6208490CC8C1839527AF041E07038376FDCB879E3468F1E3D264D99D2B3572FC141F913274E481F35B87CF14203830F82B68ECE9AF5BFD93B381C3BEA0F00C141EF62A2A30597A848919F9F4F1C4C983469582DD238555656EEFA73FB3F2F5F282B2B0F1A3274D192A50686860A0A0A3F8D1A595858D09077D1A2B494E023BB7A8F15B966CD7C4A34834AA53670C5572DC54447098EB688F5E2F9734343A3937FFDB57FDF5E19340921845AA057AF5EBD7AF5CAC4C474C4C891C3478ED4D1D10180D7AF5E497F8A987CDA581F2BA3C68C8D080F0F0B0D018090E0A05A061F6AD533406B930595CFE7EFD8B6F5D53F2F151414B6EFDC6DEFE0D09006B764CD31E7431CB9EAD5477979CDB92B8F9C9C3C00F0783CD9E4E7CF1199B72C2A3939252B3BA7A42E438C0821F45D4A4F4F3B7860BF6FDF3E01478F666665D7385582C3E1346EE2734FEFAA1C5F0505F9B57CC4D2CA8A38484B4DADB17068480831B8D37FC0C0EF38F28096D3F341A6B06534EB96800686063939D90090C7C895414AD3DA8C31A9ABAB3775331042A855D068D366E8B0E17DFAF623323FA9A9A931A4C61F542A55BEEEC993DEBC7AA5D146C3C5554CDE77729EAC86C67F96224AD9F9AB83BBBBBCBC3C87C3898A8AE4F178D277BC8B8A8C200EECECBFE7C80364137C1416165654B0F4F50DA4943130A8FA8D2625D62DE3AA1C8D06009C4A4EBD9B27D48CE8A82800484C4CB4B51333BFA971393939D758C6D9D51500468C1A3D70F090A66E0F4208C9465A5AEAD2850B6A5FDEC9D979F888515E5DBA088EA1B8B8B82627254979CAC1B16D3D32379E3E79C2CAC65A6CF0417657BB77FC4F3633297BB96B6A6A8D1A33F6F2C50BD95959C14141DE5DBA487969320599A4E91DA24B6DF9D563F73CAEF0203E798BCF13B34886C7E392FF97BD46083E6A9CB570E2F8B1C8F0F073972E13A7C48F43E80DEBE9EBDBD8D8C6C7C7E5E6E42426C49399DD080505F9FFBE0F2E58E0BD0000200049444154135BB99EBE41717171B1C892543E9F1FF42E50520B25FDB6BCBB7625668006BD0BF4ED2FBCC7CAB3A74F2455583FC626261E9E5E21C141920A38BBB83A38380280828202263F45087D3704F7AF908242A178787A8DF9699C93B398AF6A23468F7EF8E0BE949462A3468FA95FF3B233B3C45E7FFBE6350074F6F4144A784AE685FAF62D5D34BDFA04BF492F9F3FCBCECEDEB7679785A585E8A24EB247C4DEC191B872EFCEED4143869229A9F2F3F389B0A3A8A848A8FB84CC74555A263C3A4FDE2A2F2F137D2F4492D9D2661AD36F84391F64D32B39E2FF0430FF9B048CF87188BEE17113261207470E1D62B3FF1FDCA524272F5FB2584DC226B4D636D6446D61A1A1E4C5B4D4D495CB9791212AB1239D681B40E4B7E5E9E56D61690900418181A121C1E4751E8F77F2AFE3C41F3BB18DAFB7854B966A6BEB88BDA5A1A1B172F5AF8DF5420821D442F078BC17CF9F492F232727D7D7C7E7D889531B376F111B7900809191F19C79F325D5D0CFC7B76BF7EEF56BE1972FB1674F9F12FCA79EC7E35DB974F17D5898BEBEFE2F2B570B95F7EAD2C5DCC202002E9C3B4B3CC56232C9AFA98A8A8A9BB66EB7B2B62E2A2C5C30E7E7CB172FC4C57DCDCBCBFBFAE5CBEB57FF6CDBBC69D79F559B85797A7911CB73B2B3B3E7CE9E79EBE68D57FFBC3CE67FE497654B56AD5947A150582C96D0675342423C719C101FCFE7FFA787E3EBD72FC4416A6A2AEBBF735F72B2B3896C9F1C0EA7AE030E8DA2A11BCBF1F9FC83FBF63EB87F0F00F4F4F4972C5FAEAAA646A55001A0B2925352529A91F1EDDCE953AAAA6A44CF476262C2DC5933018042A19CBD70494F20811D8FC7DBBC7143E0DB3700606C62E2DDA5ABAAAAEA972FB1FF86852D5EB63C392949706339F2A98C8C6FB3A64DADACAC545050E8E7DB5F4F4F2F2EEEEBBBB76F478D19EBEAD67EDDAFAB00A0B387C7864D5BC89C743C1E6FCBA68D6F5FBF0680FE03072D59B65C706D4B4C74D46F6BD79497975328941E3D7B59DBD81416140406BED550D7F863CBD69F468F04007575F5D302F9F31B283B3B6BCFCE1D9111118217DBB6735ABC6C995096558410FA0E444546AC5CBE4CD25D2A95DAB79FCF783FBF5AA67D7AFCF0E1C913C78B0456092828288CF969DCC44993EB948A94B46FCFEEE77F3F65B3D90A0A0AED3BB81B1A1A969595C5C67ECEF8F66DC4A8D17E93A7288BDB0BBDA020FFF081036F5EBFA2D16866E616D9D95997AE5C13DC359DC3E19C3F7BE6EE9DDBE502DF87E5E5E5DBB6731A3566AC87A72771A5A8A8C8FFD0C1972F9E933F0D1FDFFEB3E7CE5355553D7AE4F0AD1BD701405151F1C69D7B53FD2614151571381CC1DA8C8C8C8F9D3CB57DEBE6E077EF984C26798B4AA5D2D5D577EDD9171F1777E4D001A13CE36A6A6A93A74E1B3662643D7E5CB521BAB15C83828F39B366A6A7A50ABE7349F4F4F4478F1D2B144802009D4EFF79EEFC7EBEBEC4299FCF3F75E2AFEB57AF70B95583320E8E8E3FCF9DD7B69DD35FC702C4061F00F03E2C6CE7F66DE40899B985C59469D3BB74ED16161A4A041F0020272747A7D34F9FBF3863CA2449BF2DF24A7272D2A60DBF9319EF555454060D193A79EA34001832A0AAA9140A854EA7AFDFB051ECB8603DC4C67E8E0C0F2F2D2D555353736BDF5E68DF428410FA6EECDEF1A7A41447DE5DBA4E9F35CBD4D44CEC5D49584C6648707062620297CB353535F5F0F46AA3A9D9901672389CB4B4D4AC8C4C461EA3A4B8588D4EB7B0B0B4B4B2AA7105405151516A4A725959998DADAD8E8EAE68012E979B101F9F97C7A0D1689A9A9AE616966287D40B0AF2931213555454ACAC6D040B7CFDF2253737C7D4D4CCCC5C38597B4BD6C8C14713292E2A8A8F8FABACAC34363135AECE342A25F800000E8793929C9CC760181A1935D6AF24213E3E3B3BBB4D9B365656564AE2E25C84104275C562B1C68F1925BA2717F955B3595A859A9468F0D15296DA0A52D7D0A8EBB6C8F2F2F236B6B6368D9A09D4DAC64674DE104208A18608090A128A3CDAB4D1FC79DEBC5EBDFBC826BB236A095A62F021169928A6A2A23133C620841092A5677F3F113C1D3A7CC49469D3252D2940DFAB56137C1416554D262A2AFCAE36D74108A11F476141C1FBB0AABC09C626264B97AF6894BD5750ABD3D2830F1693F9E2F9330683F1BE7A25EDA58B17B2B2324D4DCD3CBCBC9AB76D082184EAE49F972F8805A883060F993D779E94DC5CE8FBD6D2838F4A2E9748B83E62D468F2627979797EADF3EA2384106A219EFDFD54455575E9F215DD7BF46CEEB6A0E6D4D2830F62F17173B70221845043A5A6A4F079FC637F9DD4D5D36BEEB6A066D6D2830F841042DF072693B97BFF011C6A4180C107420821D9F8BEF7884775D2087BBB2084104208D51E061F0821841092290C3E104208212453187C20841042D2949595E5E7E70B6D582F8ACD66171717D7B24E369BCD60E43218B96C36BBC10D6C7D1A79C2E9CE3FB7895EEC3F60A0500EBB77818176F676423BFE2525265EBF7645FA83082184906C5454545CBB72F9D1C3074A4A4A2A2A2AE9E9E91E1E9E13274D363513DE7497C3E1F81F3AF8F8D1432E976B676FBF72F51AD13200C0E3F1DEBE79FDE6D5ABE8A82826B35C574F8FC56432180C252525730B4B0747471717D7F6EEEEAAAAAA32797FCDA99177B58D8A8CC8C8C8D8B77B17713A6BCE5C3B3B3B5333334D4D2DB24C5959D99811C326F84DF29B3C45F0D9D2D2D2A4C484C282C29D3BB67B7878FAF41F606D63A3A5A505082184906CE531186B56AFFC969EBE66FDEFDE5DBA004046C6B7CD1B37A4A7A7AFFA754D97AEDD040B9F3975F2E9E3472B7F5DABABA7FB5740404A72F2B193A768349A6099C4C484ED9B37A7A4249B9A994D9F31CBC3CB8B28C062B1428283AE5CBA98101F0F002B7F5DD3A76F3F19BE515910DDD5B691875D5CDDDA0F1838C8D2CA9A38EDDAADBB8BAB9B60E40100EF4343B95C6E70D03BA167D5D4D49C5D5C3B76EECCE372E72E58D8A973E786441E1919DF1EDEBF97C760D4BB068410423F26369BFDFBFAB5C949498B962E23220F00303232DEBA7D878282C2B6CD9BBEC4C60A967FFBE6B5DF94A9AE6E6E4646C62B56ADCEC8F8969C942458E0434CCCB2450B5352923B7B781C3E7ACCBB6B573234515252EAD1B3D721FF00B7F6ED65F3EE5A822699F3D1B15327E220213E4EF4EEBBC0B70010F7F56B7EBE9814E9D1515136B6760DECF03873EAE4B4497EFBF7EE292C2C6C483D0821847E40776FDF8AFBFAD5CCDCBC9F8FAFE0F5369A9AA3C78CE5703807F6ED159C0242A3C9557238C4716565259FCFA7C9FDBFDBA3A8A868CBA68D4C26D3C4C474EDFADF151515455F914AA576F6F06C9A77D3123549F0D1C1BD237110131D2D748BCBE586858610C7A1C1C1A2CFBE0F0D21C3CC7AAB60B11A58034208A11F1387C3B97CE92200F4E9DB8F42A108DDF5F4F20680F8B8AFA12121E4C5BE3E3E674E9F7AF9E2F98798984D1B7EB3B1B535333327EF9E381E909F970700B3E7CE53525696F4BAFA06062626A63FC2840F68A20CA7ED9C9CE4E4E42A2B2B232322846E454745292B2B9795950140705060FF8103850A8486866CDCB4456CB5A5A5A55F623F33180C6679B99EBE8195B5B58181815099BCBC3C0E8753565E5E7DCA505553238E35343494FFFB5BE772B9D15151E969A98A4A4A7676F666E6E654EAFFA3B1B2D2D292D252F2544E8E46CC90E572B99111E1E9E9E9A6A6661DDCDD6BF723410821D43A84BF7F5F525C0C002EAE62563C985B58D0E9F49292927F5E3CF7F0ACEAAB18396A348BC9F43F7C88595EDEC1BDE3AA356BC94F93FCFCFC17CF9E0180A1A111595EACAEDDBA77EDD6BD91DF4C4BD524C187A2A2A283A3E3879898A4C484E2A222750D0DF256D0BBC0B1E3275C3A7FAEA0A0203C3C9CCD662B28289077D3D252B95CAE85A5A550857F3F79F2FCD9D3E8A8284D2D2D2727E7F2F2B2C888080E87E3D3BFFFAC9FE7D2E974B2E4C6DFD6C77DFD426CD90C00BFAF5B4BDE5AB26CB9EF80FFC73A9111E17F6EDDA2A9A5D5A56BB782E4E463FE47E4151496AD58D9A97367B2A9B76EDCC8C8F8565E5E0E002626A627CE9C8D8E8ADCF5E7F6ECEC6C00E8ECE181C10742087D67C8EE7973730BD1BB140AC5DEC1E17D585858582879914AA5FA4D9EE237790A8FC713FC120B00AFFE79C9E17000A04BB76EC275FDC09A6A6F1757B7F61F626200203A3A4A30940B7E17B86BEFFEC48484C70F1F54B0585191119D3A7B9077C34242C40E7A1D3CB0AF82C51A3878F082454B88493A09F1F18B17CC7BF2E8516141E11F5BB692250F1C3E0200C7FC8FDCB87E0D000EF90758DBD8885678F5F2A5937F1D776BDF61D3D66DF2F2F2003068C8D0E54B16FDBE6ECD9FBBF638BBB800405F1FDFBE3EBEB939397EE37F229EFAF77DD8FA35BF2A2B2BEBE8EA3272731BE1C7847E7865A5A507F7EFF39B3CC5C4D4B4C6C2AFFE79999D95257ADDCBBB0BB9AE8FC7E35DBF7A45B40C000C19365C5972972F42889098980000F2F2F264C7B9106215454971711E83A1ADA323784B28F20080A8C8AA110033718B6F7F584D95648C9CB51B2530F2929810AFA2AAA6A7AFEFDDA52B7125382848F0A9D090604F2F2F4975CEFA792E393DD8DAC6868869428283E2E3C44C6B95E24B6CEC89E3C7F87CFEFC858B88C803002CADACFAFAF872B9DC13C703040BEBEAE9112F5A5A5A7A3C20E097D5BF5EBB75E7D88953A2038108D543C0D1232F5F3C0F7CFBA63685391C4E5959D9F56B574F1C3F76E2F8B1F3E7CE12EBB9545454C8326C369B42A1E4E6E49CFCEB3851ECD1C307E5E5E572727262A7B9218484A4A7A501809A84C80300D4AABBDBD3D3D36AAC8DFC84D2D3179E27F0236BAA9E0FC7B6ED141414D86C765464247931E8DD3B22B668DFA183A29252058B15121CB470F112E22E8BC9FCFAE58BAB9B98B54643870DA7D16882FFC20280B985057190939D6D636B5BFBB605F81F06005B3B3BA124302EAEAE776EDDFCFCE9535464A4AB9B1B795D4545A5A4A4A4A4A478CBF63F8917525555756BDFDEC0D0A8F62F8A90A87FDF873D79F40800DE8785FE347E428DE5FBF6F30180ACCCCC7F5EBE0080C18387CC9E3B4FA88C9292D2989FC601C0DB37AF890565F3162C2207131142352A2D2D0500B9EAAFA6A2C8AFC1A502F3022529AA5E74A9A7A7D718ADFB4E3455CF87BCBC7CDB76ED00202525B9B0A080B8F82E30D0D3DB1B00141414DCDD3B02406E4E0ED1C10500E1E1E1ED9C9CC47E399B39FBE76933660A5DA4ABAB13079CEA054EB5919898F0F1C30700109C8A4C5051A99A634CF69255A15000C0D0D04830C4D9BE73F7FC858B6AFFBA0809292F2FDFBF770FD149FBF1C3076216766D1454FF85F2F0F29654A6B2B29258672E2727470C2322846A83CD6673B95C10883044C9C9557D6F2F2F2B975E1B87C321B3A70B0DD0FCE09A706F17B7F61D8883A8A84800603072F3F318F6F60EC44572E425A47AE4252C34D8C353E2988B147CA821DFBEA0D49414E240534B8BFB5FE4484A2ECEE7404DEF78807FF71E3D1DDBB605002E971B25B2344C92A4C40400A052A90E8E8E92CA64666410D3AEAD6D6C9594941AA3BD08FD10C8C0825FBD704114119D0080BC82C4DE91AA02F2F26410F363EEE12249530DBB00003980121511D1A367AFE077EF3A7978901FF01E9E9E542A95C7E30507BD1B3FD10F00C24243C74FF093541B97CB0D0A0C7CF9F2F9B7B4F4A2E2220A502A2BEBD0E14122838F674F9F06BF13CEB26A62620A003FC8326BD48CFE7D1F16131D7D24E0F8CDEBD788AEB8B0B010EFAE5D6B7C30273B9BD8B9CADCDC42CA1C8EB8AF5F89035B3BBB466A32423F042A954ACC0A20230C51BCEA5B429301C4D2D0D02006404B4A4AD4AB3BEC5113061FF60E0ECACACA4C269398F611F42E70D09061E45D750D8DB6EDDA7D8889F9121B5B5850505858A8AAAAAAA7AF2FB6AA88F0F01DDBB7E6E7E5B56DE73479DA74C7B68E6DDA683EB87FEFE0BEBD756D15995675C2A449C3868FA8D73B43A841880197D56BD6292828B877EA74EAC45F0010161A5AE383203079CDD6DE5E4AB12F5FAA723FDB61F081501DE9EAEAA6A7A5B12427AB246FE9E8EA4A2A43323337273E779293128D8D8D1BAB91AD5D130EBBD068B4764ECE00909E9E969696FAE9D3A70E1D3A0816F0EAD21500F87C7E6868486848B0A4CCB25F626337AC5F9B9F97D7AD7B8F3DFB0F7877E9A2A9A955EFC526E40466CC828A9ACBF100FF2E5DBB1193A26C6C6C35353501203727272539B9C667E3E2AABA34ECA5061F715FBF1007D8F381505D59595903406969696565A5D80244EF238D46139D3B288A1C0420D24F204213061F20B0E0F6C4F163EDDA3909A595F5F2AE4AA31E1CF42E342444D2848F83FBF71261E6C2254B1BBEC0D5D2CA8A38484B4D6D605508D5434478785464E4D4E93388530A85E25EBD179260CE2249E2E3C8F11489C10797CB8D8F8F0700050505730BE1947D0821E99C9C9D8983A424F1BBBE27272701809DBD033941448A6EDD7B10072F9E3DABD3F288EF9B8C828FA0EA752E828C8D8D89C5AEFF8685A5A5A61233EF84B0984C62F45A5F5F5F432053AA7454C9B3943BB8BB13B93DA2A2227992E71321D414CACBCBF7EFD9BD6CC54AC1E91A9D3B57F5F9FD1B1656630DC4B00B954AD5D5D32B91E0EB972F44C79EA595B59419FB0821B1C8C498D102A92248858585C477D71E3D7BD6A6365333332F6F6F00282C2C78F8E07EA3B5B2956BC2391F00606D63ABAAAA4AAC2114DBB1E1E5DD252D3595C56279797711FBAF24854A25E6A516151589A6AD2570D8C2B1A494E9FD9A9A5AA3C68CBD7CF1427656567050506D36B123E63CF37812271F21544BC703FC3D3C3DC9EF5584F6EEEEC41FF298E828168B25E54F6F5E5E1E3178CCE3F1C68F1955E3CB491F9A410889A5ADA3D3BD47CFD7AFFE898C081F3566ACD0DDE8A84800505555EDD3CFA79615CE9A332F322282C9649E3816E0EAEA26BA85C80FA8697B3EA8542AB1318F95B5B5AEB88939E4C84B6709DBED282A2A12BF27168B75EFCE6DC15B599999C441616181D05316D55DCDDFBEA58BD639C16F92BEBE3E00ECDBB32B23E39B6801A11E11626F97DA249341488A88F0F0C8F070D18C35EAEAEAF60E8E00C0E170A2C47DD32291B34DBB76EF7EFDF65D49FF0D1F591597D8E0840F84EA65DACC998A4A4AEFC3C2D2D28407E8AF5FBD0A007E93A7D47EE98AB1B1F18A95ABA9546A4545C58AA58BA5FC35E7F3F94989E2C77ABE33B4458B1637E90B141416BE0F0B1D306830390423484757F7FEDDBB6C367BF1D2E592D60D1A1B9B3CFBFB2900848586E6E6E65454544447471D3D72984EA7DBDADAC57DFD5A5656DED7C747B0E3C4D8C4E4ED9BD745858569A9A9BD7AF7515050603199541A8D9832222727D7C1BDE3C78F1FB232339F3D7DC2E7F315959400203D2DEDE3C70F17CF9F0B7EF78EDC01283131E1FEDD3B00C066B37D7CFB4B4AF58F90744C2673DD9AD5CB7E59696C22660F97BC3C06F1EF119D4E9734F31A005EBD7C4114F3ED3FA07D870E8A12DCBA712D33230300A64C9B4ECC664508D5099DAE6E666EFEFAD53F1F62627AF6EE436E807AF6F4A9972F9EF7EADD67D69CB975AAD0CCDCDCDEC121E85D605959D9DF4F9F2425252A292AE9E8EA12B346D86CF6B7F4F4172F9EEFDDB533213EBE57EF3E8DFF969A958AB2B2B2F27FFA742971F14D1B64252526CE9935E3C0617F7B0707B105F6EEDA999A9ABAF7C0412995BC7DF3FAF081FDE42A597D0383454B9675ECD4292B3373C1BC3925C5C5F2F2F2A3C7FE444EE203808282FCC3070EBC79FD8A46A399995B6467675DBA724D70C62B87C3397FF6CCDD3BB7CB05324BCACBCBB76DE7346ACC580F4FCF3BB76E9E3D7D4AA8C3834EA7BBB8B9FDB6E18F7AFC28D08FECD0FE7D00B0A07A3301215F626317CD9F0B00868646A7CF5F9054C986DFD605050602C0F69DBBDBFF77ED98A0B1A3461415162A2A2ADEBAF700E77C20546F31D151BB77ECE070D883870EA3D3E9816FDF7EFCF861DCF809E3264C143B07A046F9F9F917CF9D7DF6F7532693495C515353535054CCCFCB03001B5BBB5EBD7BFBF41FF0FDA503D1D6D2D4D46C2378A5C9830F3E9F1F131DE5ECE22A69A14A1E83C162B18C4D4CA4D7C3E170D25253180C86A5A595AE4086FCE2E2E2CF9F3EC9CBCBB56DDB4E4964C7CEA2A2A2D494E4B2B2321B5B5B1D1D31E33E5C2E37213E3E2F8F41A3D1343535CD2D2CC90817A1C6121519B167D7CEA3C74F48DA5496C7E38D1B338AD803E2E4D9F3929201F88DFF29372707006EDCB92769D7AB9CECEC4913C6018083A3E3FE43471AE70DC85C5959D9C70F31E61616FAB817176A567C3E3F3A2A322931B1A2A2C2C0C0B063E7CE0DCF42C9E572633F7F4A4B4D2B2E2EE272B95ADADA5A5ADA2626268646DFED7E61A2C147D34E3805000A85E2E2EA26A5402DD3DDCBCBCB5B59DB5859DB085D575757F790305F04003434349C5D5CA5544BA3D1ECECED01705E1E6A2A4C2673CFAE9D4B96AD90B29D3D954A7577EFF8E2F93300781F1A623C62A46899A2A22222F230343492B2DF26392FC4CE5E7C5F63CBC7643257AD58E6DEB1D3D9D3A7162C5AECE028661D1C42B241A1505CDDDA8BDDF1B4DE882458441EAC1F56D34E3845089D3816D0C1DD5DCA2809A193870771F05E42B60F32C387F43D9CE3E25A7D62F5D8CF9F5D5C5CA7CD98397DE6AC37AF5F37777310428D0F830F849A507454644870F0AC9F6B9E9BE6DEB1133134191911217603AAAF5FAA9296DA495D40FBB53AB1BAADAD70F0919D9DB567D78E6993264E183B46EC3AAF5AE2F178E4CE9F1F6262B66DDE34F1A731B3A64FADF1C12FB1B1E1FFBE17BC929F9FFF3E2C8CDCF89A60616911191911F8F6CDED9B37893CB042188CDC88F0F07781811F6262885C93842B972E4AD98F0321D47260F08150536131997B77ED5CB27C792D779F22064AD86C764C74946881A8C8AA6D6F2DADAC25BE228B151D55F5AC91C8C4117D7D83652B565A5A59E7E531B895F5FF900E0B091932C0F7EEED5B00E0E4ECFCEBBAF540A130180CE94F4547459E3A719CECBE6631996B57AF3A7FE6349FCF3B167074C3FAB564C8A5A9A9F5CBAA5F13E2E3070E1EDCA56B37C14AFE7EF264FCD8D1E7CE9C29C8CFE75656BE7DF37ACAC4F133A64E26D2601B181AFEB9754BBDDF174248669A7CCE07423FAC7B77EFE4E5E55DBB72F9DA95CBB529CFC8CD250E525353DD3B7612BC959F9F1F131D4D1C4B99F0F13E2C94F8085752529234755ABDD6998225D1D06CE3DEB1A3E054D0361A6D88743892B0D9EC5D3BFEDCBC753BB9FA66FDDA5FE974F5454B970140A7CE1E6B57AFDAF8DBFA2DDBFF24EE5A5A59913B219076EFDCF1EAE58BF51B3676EA5C3544D5AD478F2E5DBBAE58BA84C8CDD3A367AFA78F1F3D79F4D077C0C006BE47845093C2E003A1A6F2F5EB978A8A8A88F0F0BA3E6863F3FF89D5972E9C8F8C084F4C4820F7B8DAB16D8BBE81C14FE32792F348F87CFEC6DFD69594947E89FD4C5C61B1588B17CC575555FD65F5AF5A5A5A829537787F24707070DCFAE7CEFF5CAAA9D2E7CFFED6D7373033AFDA852B32223C3A2AEA90FF51B2C0F8897ECB972C8A8DFDECE0E028B686A8C8C8A78F1F8D9B30918C3C0816965636B676E462BAA1C347FA1F3AE8D37F40C3F7814208351D0C3E106A2A93A74E1BFBD3B87A3C6861F9FF2FFD5DBB77EFD8A993681923A3FF8FAAF078BC8993268BAD4ACA8E48DFD2D36F5CBF96959961656D3372F418A118E5E58BE731D1D1540A854AA379787A923D31674F9F62319900E0D5A5ABB38B4B2DDFD1AD1BD77BF4EC459EDEBF7B574545C5DAE6FF3367EDECEDE5E5E51FDCBD2B29F8381EE02F2727374C641D109D4E3F7C34803C757276CECECE0A0B0D9192AB0D21D4EC30F840A8A9989A9AC9A6121A8D2665935BB11213129E3FFBDBC9D9594747E7FAD52BFFBC7C71E0B03F117F5456566E58BF2E253979D7BE7DFAFA06B1B19F7FFD6545EFBEFD162E5E0200E3264CBC78FEDCA50BE775F5F46A197C7CFEF42925395970E7C88484787D7D03C1344D0A0A0A3A3ABA890909626B60B3D9F17171E61616421192285555555333B3BF9F3EC1E003A1960C279C22F4238A8F8FDBB879CBD871E327F84D5ABC74796E4ECEF5AB57885BB76FDE080B0D99BF681131ABC3C1C171E2A4C9F7EFDE090E7A07000A0A0A755DC49B929C0C00BABAFFCF0D98C760288B4CC2555252CA65E48AAD213D3D8DCFE7EB09641794425B5B272D45783F0E84508B82C107423F221FDFFEE4AC084F6F6F2A951A1214449CDEB9754B4D4D4D706A45EFBEFD0080DCD9518E56B71E53627F4772B75E2693595151219A9D9A46A31515160A6DEB48C86330A0D65365959494323233EAD44284908C61F081D08F4E51515153532B3B3B8BCFE7575454E4E4641B181A096E0AA3A5A5A5ACAC9C965ACFEE04221507B5BA42656565050505D12083CBE5AAABAB8BDD3283E883C9CD11DF2F228446A355B0582C16AB7EAD4508C9C077157C949595E5E7E7F3F97CE9C5D86CB6606222E9F87C7E4949497676567171718D3523D44AD1D5E9C4B6CFE5E56520D04B415256562E13D882B14E0C0C0C00805BBD5A0700747475C98DB5482C164B4F4F5F6C0D46C6C6341AAD9689D12AB995EAEAEAA26F0121D4727C0F134E2B2A2AAE5DB9FCE8E103252525151595F4F4740F0FCF8993269B9A09CFD4E37038FE870E3E7EF490CBE5DAD9DBAF5CBD46B40C213727E7FEBDBBE1FFBE4F888FD7D0D050A3D3B3B3B2D86CB6AEAE9E8DADAD93B3B35BFB0ED636C21BCD20D44A151516122182A6A6968A8A4ADE7F338671B9DC828202BB3ACE692511DB65959695EA41556C61656D1DFEFE3D97CB25FB57D86C3683912B6906AB9C9C9C8BAB6B4478F8C70F3135EE8851565A6A68247E673E84500BD1EA7B3EF2188C45F3E75EBE7861FEC2C5274E9F3D78E4E8E1A301A9A929F3E7FE1CF8F68D50E18BE7CF8504076DDBB1EBD4B9F3BABA7A1BD6AF134DC6CCE3F14E1C3F3675D2C42B972EB673723E79F6FCA56B378E9F3C7DE7C1A313A7CF7A7A7BFFFB3EECD851FF4D1B7E97D55B44A869656664141414908B695D5CDDB2B232B3B2B2C8025191117C3EDFC54DDA0E915210F9E033BEFDBFDF62C8D061E5E5E509F1F1E4952FB19F391CCEE0A1C324553267FE022A957A3C2040ECA410415999590E8EE2D7EB22845A88D61D7CB0D9ECDFD7AF4D4E4A5AB4749977972EC4452323E3ADDB772828286CDBBCE94B6CAC60F9B76F5EFB4D99EAEAE6666464BC62D5EA8C8C6FC949498205783CDEE68D1BAE5EBE44A150B6FEB963CEBCF9C4D74100A05028C62626F3172E22933022D47ADDBE75B3A4A40400B85CEEF16347959494468FFD89B835F3E79FE5E4E42E9E3F4B9C72B9DC4B172E68B469337EC244E24A49493100108F9357584CA6A47D558C8C8CDD3B762433B402805BFB0EAE6EEDCF9F3D439CF2F9FC0BE7CE7A413970DA000006A949444154787AD93B48DC89D7C2C272DA8C99B19F3FAD5AB12C37F73F933F62633FE7646713C7B939393939D94386490C6210422D41EB1E76B97BFB56DCD7AF66E6E6FD7C7C05AFB7D1D41C3D66ECA9137F1DD8B7F790FF5172563F8D2657C9E110C79595957C3E9F2647137CF0CAA58B447FC982454B3AB87714FBA2CE2EAE52F64647A8E5535555F5ED3F60E5F2A57C3EE43172D5D535F61E38A8ADAD4DDC353535DB7FE8C89E5D3BB76EFAC3C5CD2DF0CD1B7979B943478EAAAAA901C05FC702DE05BE0580470F1F1414E4F7E8D9EBD18307D9595900B061FDDAFE030709EDC642183E7254C09123FC797CF22FE3A6ADDBB66DFEE3C8A183EE1D3BBD7CFE8C4E57FF65F5AFD29B3D76DC78C7B6EDF6EDD9356DD2440B4B4B4B2BEB4A0E273333D3C0D0E0E7B9F3883261A121EE1D3B364A86158450D3A1C4C52736771BEA89C3E18C1F3BBAA4B878DA8C99E3AABF93919293927E9E391D00FED8B2CDC3B32ADDD0F56B572F5FBC307FE1225D5DBD33A74E3099CC0387FDC9D9F5599999D326FBF1783C3B7BFB0387FDA5A467FE65D9523939B96D3B764A2A80508B555A5ACAE1B03535B50080C1C805001D1D5DB125CBCBCB7372B28D8C8C256D13537B7C3E7FC5D2C5A3C7FEE4E5DD45F07A515151624282B58D8DBABA7AED6B2B2B2D4D4949292B2BD5D6D636363155545424AE575656CE9B3DEB97D5ABEB9A720D21D4A4B4B5343535DB085E69C53D1FE1EFDF97141703808BABABE85D730B0B3A9D5E5252F2CF8BE764F03172D4681693E97FF810B3BCBC837BC7556BD60AAEEBBB79E33A319C3C6CC448E91B43ECDCB3B731DF09423224B82F9DA4B083A0A2A2626161D9282F4AA15056AF5DBF7DCB663B3B7B6D1D1DF2BA868606B9434DEDA9AAA9B56DD74EF4FAB1A3FE43870FC7C803A196AF15071F61A121C481B9B985E85D0A8562EFE0F03E2C2C2C2C94BC48A552FD264FF19B3C85C7E309A513E0F3F92F9EFD4D94F1EED2B509DB8DD00F49575777D3D66D19DFBE09061F8DABB387A7D87D7010422D4D2B9E709A98980000F2F2F2AA127618273A964B8A8B85D60D02806822A3A4C40462029D96B6B68A48E2678450C3A9A8A8D8D8DAD65CAEBE30F240A8B568C5C1477A5A1AFCB70F59881A9D5E55323DADC6DAE2E2E288037D7DF1698E10420821D4285A71F0515A5A0A0072F2F2920A90F98B8892D2151516120792722C22841042A851B4D6E083CD661349050477A01022275735A3A5BCACBCC60AC900A5E906A41142082104AD37F820030BBEE4748764CA23790589BD23243275079BCD6E70EB1042082124516B0D3EA854AAA29212084418A278D5B76A338154A37AB76E227B23420821849A486B0D3E004057571700A46C9C4DDED2D19596CC806056BD5E373931496A418410420835482B0E3EACACAC01A0B4B4B45260AB6E41C5C5C50040A3D1CCCCCC6BACCDC1D191C893989C9C549B09AA08218410AA9F561C7C383957EDAC9D94243E437C72721200D8D93B901344A490939323123FF3F9FC674F9F345E3311420821F41FAD38F8E8DAAD3B71101D19297AB7B0B0302D3515007AF4EC59CB0AC78E1B4F1CDCB8768DC9643642131142082124A215071FDA3A3ADD7BF40480C88870D1BBD1519100A0AAAADAA79F4F2D2BB4B6B11934780800E4E4641F3AB08FCFE7375A5B1142082154AD15071F00306DE64C4525A5F761616969A942B7AE5FBD0A007E93A7D469B7CC39F317D83B3802C0B3A74F776EDFC692DCFFC160E4161715D5ABD5082184D00F8DB668D1E2E66E43FDD1E9EA66E6E6AF5FFDF32126A667EF3EE4C6DF674F9F7AF9E279AFDE7D66CD995BA70A69345AAFDEBD939392D2D3D39212139F3E7E040074757572216E7E7EFEE74F1F2F9C3BBB6FCFEE6E3D7A6A696B37EE3B42082184BE332ACACACACA4A82572871F1E2676BB62231D151BB77ECE070D883870EA3D3E9816FDF7EFCF861DCF809E3264C14DD40AE9602DFBEB978EE5C7C7CD5862F7272721A1A6D4ACB4A2B582C151515EFAE5D7D7CFBBBBAB56FBC37811042087D9FB4B5343535DB085EF91E820F00E0F3F9D151914989891515150606861D3B775655556D78B57979791F3FC4141414949694A8AAAA6A6BEB68EB68DBD8DA915D2C0821841092EEBB0D3E10420821D43289061FAD7BC229420821845A1D0C3E104208212453187C2084104248A630F840082184904C61F0811042082199C2E003218410423285C10742082184640A830F84104208C914061F0821841092290C3E104208212453187C2084104248A630F840082184904C61F0811042082199C2E003218410423285C10742082184640A830F84104208C914061F0821841092290C3E104208212453187C2084104248A630F840082184904CFD0FBCC6993D4828E1980000000049454E44AE426082>|thermodynamic-cycle.png>|0.4par|||>>
        A thermodynamic cycle allows you to calculate the enthalpy for
        boiling water at the freezing temperature of water if you have
        measured the enthalpy at the boiling temperature.
      </big-figure>

      With the directions of the arrows shown, summing to zero around a cycle
      means that

      <\equation*>
        \<Delta\>*H<rsub|boil<around|(|0<degreesign>C|)>>=\<Delta\>*H<rsub|boil<around|(|100<degreesign>C|)>>-\<Delta\>*H<rsub|liquid>+\<Delta\>*H<rsub|steam>
        .
      </equation*>

      Because there is no phase change for the steam or liquid, and because
      the heat capacities are reasonably independent of temperature, you have

      <\equation*>
        \<Delta\>*H<rsub|liquid>=<big|int><rsub|100><rsup|0>C<rsub|p,liquid>*\<mathd\>T=C<rsub|p,liquid>*\<Delta\>*T=<around*|(|1.00
        <frac|cal|<math-up|K g>>|)><around*|(|-100 <math-up|K>|)>=-100 cal
        <math-up|g><rsup|-1>
      </equation*>

      and\ 

      <\equation*>
        \<Delta\>*H<rsub|steam>=<big|int><rsub|100><rsup|0>C<rsub|p,steam>*\<mathd\>T=C<rsub|p,steam>*\<Delta\>*T=<around*|(|0.448
        <frac|cal|<math-up|K g>>|)><around*|(|-100 <math-up|K>|)>=-44.8 cal
        <math-up|g><rsup|-1> .
      </equation*>

      Thus,

      <\equation*>
        \<Delta\>*H<rsub|0<degreesign>C>=<around*|(|540+100-44.8|)> cal
        <math-up|g><rsup|-1>=585.2 cal <math-up|g><rsup|-1> .
      </equation*>
    </example*>
  </ornamented>

  <section|The Boltzmann distribution law and partition functions>

  <marginal-note|normal|c|lec 4. 30.05.23>This chapter deals with modeling of
  the probability distributions of the energies of atoms and molecules. The
  motivations is that averages over these distributions correspond to
  experimental measurements, and may be used to predict equilibria.

  <subsection|Developing the Boltzmann distribution law>

  Consider a system having <math|N> particles of a single type, and suppose
  the system has <math|t> different energy levels,
  <math|E<rsub|j>,j=1,\<ldots\>,t>. We aim to compute the probabilities
  <math|p<rsub|j>> that the system is in each level <math|j>. Suppose
  <math|<around*|(|T,V,N|)>> are held constant. Then the condition for
  equilibrium is <math|\<mathd\>F=\<mathd\>U-T*\<mathd\>S=0>. We need to find
  <math|\<mathd\>S> and <math|\<mathd\>U>.

  <math|\<mathd\>S> is given by eq. <eqref|entropy-alt-def>:

  <\equation*>
    <frac|S|k>=-<big|sum><rsub|j=1><rsup|t>p<rsub|j>*ln p<rsub|j>.
  </equation*>

  Differentiating with respect to <math|p<rsub|j>> gives

  <\equation>
    \<mathd\>S=-k*<big|sum><rsub|j=1><rsup|t><around*|(|1+ln
    p<rsub|j>|)>*\<mathd\>p<rsub|j>.
  </equation>

  <math|\<mathd\>U> is given by eq. <eqref|average-energy-canonical-ensemble>:

  <\equation*>
    U=<around*|\<langle\>|E|\<rangle\>>=<big|sum><rsub|j=1><rsup|t>p<rsub|j>*E<rsub|j>.
  </equation*>

  Take the derivative:

  <\equation>
    \<mathd\>U=<big|sum><rsub|j=1><rsup|t><around*|(|E<rsub|j>*\<mathd\>p<rsub|j>+p<rsub|j>*\<mathd\>E<rsub|j>|)>.
  </equation>

  Like the macroscopic energy <math|U>, the energy levels <math|E<rsub|j>>
  depend on <math|<around*|(|V,N|)>>, but not on <math|S> or <math|T>. We
  take as a fundamental principle of quantum mechanics that only the
  populations <math|p<rsub|j><around*|(|T|)>>, and not the energies
  <math|E<rsub|j>>, depend on temperature. However, the <em|average energy>
  <math|<around*|\<langle\>|E|\<rangle\>>> does depend on the temperature.
  <math|\<mathd\>E<rsub|j>=<around*|(|\<partial\>E<rsub|j>/\<partial\>V|)>*\<mathd\>V+<around*|(|\<partial\>E<rsub|j>/\<partial\>N|)>*\<mathd\>N=0>
  because both <math|V> and <math|N> are held constant. Thus,

  <\equation>
    \<mathd\><around*|\<langle\>|E|\<rangle\>>=<big|sum><rsub|j=1><rsup|t>E<rsub|j>*\<mathd\>p<rsub|j>.
  </equation>

  The first law of thermodynamics gives <math|\<mathd\>U=\<delta\>*q+\<delta\>*w>,
  which reduces to <math|\<mathd\><around*|\<langle\>|E|\<rangle\>>=\<mathd\>U=\<delta\>*q>
  when <math|V,N> are constant. Because eq. (5.3) applies when <math|V> is
  constant, it follows that the term <math|<big|sum>E<rsub|j>*\<mathd\>p<rsub|j>>
  is the heat and <math|<big|sum>p<rsub|j>*\<mathd\>E<rsub|j>> is the work.

  We want the probability distribution that satisfies the equilibrium
  condition <math|\<mathd\>F=\<mathd\><around*|\<langle\>|E|\<rangle\>>-T*\<mathd\>S=0>
  subject to the normalization constraint, which can be expressed in terms of
  a Lagrange multiplier <math|\<alpha\>>:

  <\equation>
    \<alpha\>*<big|sum><rsub|j=1><rsup|t>\<mathd\>p<rsub|j>=0 .
  </equation>

  Substitute eq. (5.1) and (5.2)\U(5.4) into
  <math|\<mathd\>F=\<mathd\>U-T*\<mathd\>S=0> to get

  <\equation>
    \<mathd\>F=<big|sum><rsub|j=1><rsup|t><around*|[|E<rsub|j>+k*T*<around*|(|1+ln
    p<rsub|j><rsup|\<star\>>|)>+\<alpha\>|]>*\<mathd\>p<rsub|j><rsup|\<star\>>=0
    .
  </equation>

  According to the Lagrange multiplier equation <eqref|Lagrange-alt>, the
  term in the brackets must equal zero for each <math|j>, so we have <math|t>
  equations of the form

  <\equation>
    ln p<rsub|j><rsup|\<star\>>=-<frac|E<rsub|j>|k*T>-<frac|\<alpha\>|k*T>-1
    .
  </equation>

  Exponentiate eq. (5.6) to find

  <\equation>
    p<rsub|j><rsup|\<star\>>=\<mathe\><rsup|-E<rsub|j>/k*T>*\<mathe\><rsup|<around*|(|-\<alpha\>/k*T|)>-1>
    .
  </equation>

  To eliminate <math|\<alpha\>>, write the constraint equation

  <\equation*>
    <big|sum><rsub|j=1><rsup|t>p<rsub|j><rsup|\<star\>>=1
  </equation*>

  \ as

  <\equation*>
    1=<big|sum><rsub|j=1><rsup|t>\<mathe\><rsup|-E<rsub|j>/k*T>*\<mathe\><rsup|<around*|(|-\<alpha\>/k*T|)>-1>.
  </equation*>

  Divide eq. (5.7) by this form to get the <em|Boltzmann distribution law>

  <\equation>
    p<rsub|j><rsup|\<star\>>=<frac|\<mathe\><rsup|-E<rsub|j>/k*T>|<big|sum><rsub|j=1><rsup|t>\<mathe\><rsup|-E<rsub|j>/k*T>>=<frac|\<mathe\><rsup|-E<rsub|j>/k*T>|Q>,<label|boltzmann-distribution-law>
  </equation>

  where <math|Q> is the <em|partition function>,

  <\equation>
    Q\<equiv\><big|sum><rsub|j=1><rsup|t>\<mathe\><rsup|-E<rsub|j>/k*T>.<label|energy-partition-function>
  </equation>

  The relative populations of particles in energy levels <math|i> and
  <math|j> at equilibrium are given by

  <\equation>
    <frac|p<rsub|i><rsup|\<star\>>|p<rsub|j><rsup|\<star\>>>=\<mathe\><rsup|-<around*|(|E<rsub|i>-E<rsub|j>|)>/k*T>
    .
  </equation>

  <\ornamented>
    <\note*>
      Comparison of eq. <eqref|energy-partition-function>, which we obtained
      by minimizing the free energy, with eq. <eqref|partition-function>,
      which we obtained by maximizing entropy subject to normalization
      constraint, shows that the Lagrange multiplier that enforces the
      constraint of average energy is <math|\<beta\>=1/<around*|(|k*T|)>>.
    </note*>
  </ornamented>

  <\ornamented>
    <\note*>
      The Boltzmann distribution says that more particles will have low
      energies and fewer particles will have high energies, because there are
      more rearrangements of the system that way. It is extremely unlikely
      that one particle would have such a high energy that it would leave all
      the others no energy. There are far more arrangements in which most
      particles have energies that are relatively low, but nonzero.
    </note*>
  </ornamented>

  <subsection|Properties of the partition function>

  The partition function is the connection between macroscopic thermodynamic
  properties and microscopic models. It is a sum of <em|Boltzmann factors>
  <math|\<mathe\><rsup|-E<rsub|j>/k*T>> that specify how particles are
  partitioned throughout the accessible states. eq.
  <eqref|energy-partition-function> gives

  <\equation*>
    Q=\<mathe\><rsup|-E<rsub|1>/k*T>+\<mathe\><rsup|-E<rsub|2>/k*T>+\<cdots\>+\<mathe\><rsup|-E<rsub|t>/k*T>
    .
  </equation*>

  It is also common to express <math|Q> in an alternative form. Experiments
  usually give information in form of energy differences (rather than
  absolute energies). So it is often convenient to define the ground-state
  energy as zero, <math|E<rsub|1>=0>, and re-write the partition function as
  follows:

  <\equation>
    Q=1+\<mathe\><rsup|-<around*|(|E<rsub|2>-E<rsub|1>|)>/k*T>+\<mathe\><rsup|-<around*|(|E<rsub|3>-E<rsub|1>|)>/k*T>+\<cdots\>+\<mathe\><rsup|-<around*|(|E<rsub|t>-E<rsub|1>|)>/k*T>
    .
  </equation>

  Another way to think about the partition function is as the number of
  states that are <em|effectively> accessible to the system. Look at limits
  of <math|Q>. when the energies are small, or the temperature is high, all
  the states become equally populated.

  <\equation>
    <choice|<tformat|<table|<row|<cell|E<rsub|j>\<rightarrow\>0>>|<row|<cell|or>>|<row|<cell|T\<rightarrow\>\<infty\>>>>>><space|2em>\<Longrightarrow\><space|2em><frac|E<rsub|j>|k*T>\<rightarrow\>0<space|2em>\<Longrightarrow\><space|2em>p<rsub|j><rsup|\<star\>>\<rightarrow\><frac|1|t><space|2em>\<Longrightarrow\><space|2em>Q\<rightarrow\>t
    .
  </equation>

  In this case, all <math|t> states become accessible. At the other extreme,
  as the energy intervals become large or as the temperature approaches zero,
  the particles only occupy the ground state.

  <\equation>
    <choice|<tformat|<table|<row|<cell|E<rsub|j\<neq\>1>\<rightarrow\>\<infty\>>>|<row|<cell|or>>|<row|<cell|T\<rightarrow\>0>>>>><space|2em>\<Longrightarrow\><space|2em><frac|E<rsub|j\<neq\>1>|k*T>\<rightarrow\>\<infty\><space|2em>\<Longrightarrow\><space|2em><choice|<tformat|<table|<row|<cell|p<rsub|1><rsup|\<star\>>\<rightarrow\>1>>|<row|<cell|and>>|<row|<cell|p<rsub|j\<neq\>1><rsup|\<star\>>\<rightarrow\>0>>>>><space|2em>\<Longrightarrow\><space|2em>Q\<rightarrow\>1
    .
  </equation>

  In other words, only the ground state becomes accessible. The magnitude
  <math|E<rsub|j>/k*T> determines whether state <math|j> is \Peffectively
  accessible\Q. Therefore, <math|k*T> may be used as a reference value.
  States that have energies <math|E<rsub|j>\<gtr\>k*T> are relatively
  inaccessible at temperature <math|T>, while states with
  <math|E<rsub|j>\<less\>k*T> are well populated. Increasing <math|k*T>
  increases the <em|threshold> for effective population. Note that the term
  'effective' is used, because the number of accessible states is always
  <math|t>, which is determined by the physics of the system.

  <subsubsection|Densities of states>

  Sometimes there is a different number of ways that a system can occupy one
  energy level than another. In such a case, we define
  <math|W<around*|(|E|)>> as the <em|density of states>\Vthe total number of
  ways a system can occur in energy level <math|E>. When
  <math|W<around*|(|E|)>\<gtr\>1>, an energy level is called <em|degenerate>.

  When we have a density of states, we can express the partition function as
  a sum over energy levels <math|\<ell\>=1,2,\<ldots\>,\<ell\><rsub|max>>:

  <\equation>
    Q=<big|sum><rsub|\<ell\>=1><rsup|\<ell\><rsub|max>>W<around*|(|E<rsub|\<ell\>>|)>*\<mathe\><rsup|-E<rsub|\<ell\>>/k*T>.<label|partition-function-density>
  </equation>

  The probability that a system is in <with|font-series|bold|macrostate>
  energy level <math|\<ell\>> is

  <\equation>
    p<rsub|\<ell\>>=Q<rsup|-1>*W<around*|(|E<rsub|\<ell\>>|)>*\<mathe\><rsup|-E<rsub|\<ell\>>/k*T>
    .
  </equation>

  <subsubsection|Partition functions for independent and distinguishable
  particles>

  The Boltzmann distribution law applies to system of any degree of
  complexity. In the simplest case, the particles do not interact, and
  therefore are considered independent. In this case, the
  <with|font-series|bold|system> partition function is the product of
  <with|font-series|bold|particle> partition functions.

  Before we prove the statement above, we need to emphasize the difference
  between distinguishable particles and indistinguishable ones. For example,
  the atoms in a crystal are spatially distinguishable because each one has
  its own private location in the crystal over the timescale of a typical
  experiment. Its location serves as a marker. In contrast, the particles in
  a gas are indistinguishable. As they interchange locations, you can't tell
  which is which.

  Consider distinguishable particles in a system with energy levels
  <math|E<rsub|j>>. Suppose the system has two independent subsystems (e.g.,
  two particles), labeled <math|A> and <math|B>, with energy levels
  <math|\<varepsilon\><rsub|i><rsup|A>> and
  <math|\<varepsilon\><rsub|m><rsup|B>>, where <math|i=1,2,\<ldots\>,a> and
  <math|m=1,2,\<ldots\>,b>. The system energy is

  <\equation*>
    E<rsub|j>=\<varepsilon\><rsub|i><rsup|A>+\<varepsilon\><rsub|m><rsup|B> .
  </equation*>

  Because the subsystems are independent, we can write partition functions
  for each subsystem.

  <\equation>
    q<rsub|A>=<big|sum><rsub|i=1><rsup|a>\<mathe\><rsup|-\<varepsilon\><rsub|i><rsup|A>/k*T>,<space|2em>q<rsub|B>=<big|sum><rsub|m=1><rsup|b>\<mathe\><rsup|-\<varepsilon\><rsub|m><rsup|B>/k*T>.
  </equation>

  The partition function <math|Q> for the entire system is the sum of
  Boltzmann factors over all <math|j=a*b> energy levels.

  <\equation>
    Q=<big|sum><rsub|i=1><rsup|a><big|sum><rsub|m=1><rsup|b>\<mathe\><rsup|-<around*|(|\<varepsilon\><rsub|i><rsup|A>+\<varepsilon\><rsub|m><rsup|B>|)>/k*T>=<big|sum><rsub|i=1><rsup|a><big|sum><rsub|m=1><rsup|b>\<mathe\><rsup|-\<varepsilon\><rsub|i><rsup|A>/k*T>*\<mathe\><rsup|-\<varepsilon\><rsub|m><rsup|B>/k*T>=q<rsub|A>*q<rsub|B>
    .
  </equation>

  More generally, for a system having <math|N> independent and
  distinguishable particles, each with partition function <math|q>, the
  partition function <math|Q> for the whole system is\ 

  <\equation>
    Q=q<rsup|N> .<label|partition-function-distinguishable-independent>
  </equation>

  <subsubsection|Partition functions for independent and indistinguishable
  particles>

  For a system of two indistinguishable particles, the total energy is
  <math|E<rsub|j>=\<varepsilon\><rsub|i>+\<varepsilon\><rsub|m>>, where
  <math|i=1,2,\<ldots\>,t<rsub|1>> and <math|m=1,2,\<ldots\>,t<rsub|2>>. The
  system partition function is

  <\equation>
    Q=<big|sum><rsub|j=1><rsup|t>\<mathe\><rsup|-E<rsub|j>/k*T>=<big|sum><rsub|i=1><rsup|t<rsub|1>><big|sum><rsub|m=1><rsup|t<rsub|2>>\<mathe\><rsup|-<around*|(|\<varepsilon\><rsub|i>+\<varepsilon\><rsub|m>|)>/k*T>.
  </equation>

  If one particle occupied energy level 27 and other particle occupied energy
  level 56, we could not distinguish that from the reverse. Because of this
  indistinguishability, we would have over-counted by a factor of 2!.

  For this system, we have <math|Q=q<rsup|2>/2>!, to a good approximation.
  (We are neglecting the case that both particles occupy the same energy
  level, which doesn't need a correction factor, but for a large number of
  available energy levels and limited amount of particles, the chance of the
  above event occurring is very small.) For <math|N> indistinguishable
  particles, the system partition function is

  <\equation>
    Q\<approx\><frac|q<rsup|N>|N!> .<label|partition-function-indistinguishable-independent>
  </equation>

  <subsection|Thermodynamic properties can be predicted from partition
  functions>

  <subsubsection|Computing the internal energy>

  Consider a system having fixed <math|<around*|(|T,V,N|)>>. The internal
  energy for a system with energies <math|E<rsub|j>>, substitute eq.
  <eqref|boltzmann-distribution-law> into eq.
  <eqref|average-energy-canonical-ensemble>:

  <\equation>
    U=<big|sum><rsub|j=1><rsup|t>p<rsub|j><rsup|\<star\>>*E<rsub|j>=Q<rsup|-1>*<big|sum><rsub|j=1><rsup|t>E<rsub|j>*\<mathe\><rsup|-\<beta\>*E<rsub|j>>,
  </equation>

  where <math|\<beta\>=1/k*T>. Notice that it follows from eq.
  <eqref|energy-partition-function> that we can write

  <\equation>
    <around*|(|<frac|\<mathd\>Q|\<mathd\>\<beta\>>|)>=<frac|\<mathd\>|\<mathd\>\<beta\>>*<big|sum><rsub|j=1><rsup|t>\<mathe\><rsup|-\<beta\>*E<rsub|j>>=-<big|sum><rsub|j=1><rsup|t>E<rsub|j>*\<mathe\><rsup|-\<beta\>*E<rsub|j>>.
  </equation>

  Substituting eq. (5.22) into (5.21) simplifies it:

  <\equation>
    U=-<frac|1|Q>*<around*|(|<frac|\<mathd\>Q|\<mathd\>\<beta\>>|)>=-<around*|(|<frac|\<mathd\>ln
    Q|\<mathd\>\<beta\>>|)> .
  </equation>

  Since <math|\<beta\>=1/k*T>, we have

  <\equation>
    <around*|(|<frac|\<mathd\>\<beta\>|\<mathd\>T>|)>=-<frac|1|k*T<rsup|2>> .
  </equation>

  So we can multiply the left side of (5.23) by <math|-1/k*T<rsup|2>> and the
  right side by <math|\<mathd\>\<beta\>/\<mathd\>T> to get

  <\equation>
    <frac|U|k*T<rsup|2>>=<around*|(|<frac|\<mathd\>ln Q|\<mathd\>T>|)>
    .<label|interal-energy-from-partition-function>
  </equation>

  A useful alternative expression is

  <\equation>
    <frac|U|k*T>=<frac|\<mathd\>ln Q|\<mathd\>ln
    T>=<frac|T|Q>*<around*|(|<frac|\<mathd\>Q|\<mathd\>T>|)> .
  </equation>

  <subsubsection|Computing the average particle energy>

  If particles are independent and distinguishable, the average energy
  <math|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>> <strong|per particle>
  is

  <\equation>
    <around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<frac|U|N>=<frac|k*T<rsup|2>|N>*<around*|(|<frac|\<partial\>ln
    q<rsup|N>|\<partial\>T>|)><rsub|V,N>=k*T<rsup|2>*<around*|(|<frac|\<partial\>ln
    q|\<partial\>T>|)>=-<around*|(|<frac|\<partial\>ln
    q|\<partial\>\<beta\>>|)> .<label|average-energy-from-partition-function>
  </equation>

  <subsubsection|Computing the entropy>

  The entropy of a system is given by

  <\equation*>
    <frac|S|k>=-<big|sum><rsub|j=1><rsup|t>p<rsub|j>*ln p<rsub|j>.
  </equation*>

  Substituting the Boltzmann distribution
  <math|p<rsub|j><rsup|\<star\>>=Q<rsup|-1>*\<mathe\><rsup|-E<rsub|j>/k*T>>
  gives

  <\equation>
    <frac|S|k>=-<big|sum><rsub|j=1><rsup|t><around*|(|<frac|1|Q>*\<mathe\><rsup|-E<rsub|j>/k*T>|)>*<around*|[|ln
    <around*|(|<frac|1|Q>|)>-<frac|E<rsub|j>|k*T>|]>.
  </equation>

  Substituting eq. <eqref|energy-partition-function> and (5.21) into (5.28)
  gives

  <\equation>
    S=k*ln Q+<frac|U|T>=k*ln Q+k*T*<around*|(|<frac|\<partial\>ln
    Q|\<partial\>T>|)> .<label|entropy-from-partition-function>
  </equation>

  For systems of <math|N> independent distinguishable particles
  (<math|Q=q<rsup|N>>),

  <\equation>
    S=k*N*ln q+<frac|U|T> .
  </equation>

  Because <math|S> increases linearly with <math|N>, the system entropy is
  the num of the entropies of the independent particles.

  <subsubsection|Computing the free energy and chemical potential>

  From <math|U> and <math|S> derived above, thermodynamic relationships can
  produce the rest\Vthe Helmholtz free energy, chemical potential, and
  pressure.

  <\equation>
    F=U-T*S=-k*T*ln Q .<label|helmholtz-from-partition-function>
  </equation>

  <\equation>
    \<mu\>=<around*|(|<frac|\<partial\>F|\<partial\>N>|)><rsub|T,V>=-k*T*<around*|(|<frac|\<partial\>ln
    Q|\<partial\>N>|)><rsub|T,V> .<label|chemical-potential-from-partition-function>
  </equation>

  <\equation>
    p=-<around*|(|<frac|\<partial\>F|\<partial\>V>|)><rsub|T,N>=k*T*<around*|(|<frac|\<partial\>ln
    Q|\<partial\>V>|)><rsub|T,N> .<label|pressure-from-partition-function>
  </equation>

  <subsubsection|The Schottky two-state model>

  Consider a system that has <math|N> distinguishable particles with two
  energy levels for each particle: a ground state with energy zero and an
  excited state with energy <math|\<varepsilon\><rsub|0>\<gtr\>0>. Find the
  average particle energy <math|<around*|\<langle\>|\<varepsilon\>|\<rangle\>>>,
  the heat capacity <math|C<rsub|V>>, the entropy, and the free energy per
  particle from the partition function.

  The partition function for a two-state level system is

  <\equation>
    q=1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>> .
  </equation>

  The relative populations are given by the Boltzmann distribution.

  <\equation>
    p<rsub|1><rsup|\<star\>>=<frac|1|q>,<space|2em>p<rsub|2><rsup|\<star\>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|q>
    .
  </equation>

  The average energy per particle is

  <\equation>
    <around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<big|sum><rsub|i>p<rsub|i><rsup|\<star\>>*\<varepsilon\><rsub|i>=<frac|1|q>\<cdot\>0+<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|q>\<cdot\>\<varepsilon\><rsub|0>=<frac|\<varepsilon\><rsub|0>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>>
    .
  </equation>

  The heat capacity is defined as <math|\<partial\>U/\<partial\>T>.

  <\equation*>
    U=N*<around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<frac|\<varepsilon\><rsub|0>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>>
    .
  </equation*>

  <\equation>
    C<rsub|V>=<frac|\<partial\>U|\<partial\>T>=<frac|\<partial\>U|\<partial\>\<beta\>>*<frac|\<partial\>\<beta\>|\<partial\>T>=-<frac|N|k*T<rsup|2>>*<around*|(|<frac|\<partial\><around*|\<langle\>|\<varepsilon\>|\<rangle\>>|\<partial\>\<beta\>>|)>
    .
  </equation>

  After some algebra we get

  <\equation>
    C<rsub|V>=<frac|N*\<varepsilon\><rsub|0><rsup|2>|k*T<rsup|2>>*<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|<around*|(|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|)><rsup|2>>
    .
  </equation>

  <\ornamented>
    <\note*>
      Peaks in the heat capacity plot are characteristic of bond-breaking and
      melting processes. At low temperatures, the thermal energy <math|k*T>
      from the bath is too small to excite the system to its higher energy
      level. At intermediate temperatures, the system can absorb heat from
      the bath, and particles are excited into the higher-energy state. At
      the highest temperatures, the system takes up no further energy from
      the bath because it has already taken up the maximum energy it can
      contain.
    </note*>
  </ornamented>

  To get the entropy, substitute eq. (5.34) for <math|q> and
  <math|Q=q<rsup|N>> for \ distinguishable independent particles into
  <eqref|average-energy-from-partition-function> and
  <eqref|entropy-from-partition-function>:

  <\equation>
    <frac|S|k>=<frac|\<varepsilon\><rsub|0>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|T*<around*|(|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|)>>+k*ln
    <around*|(|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|)> .
  </equation>

  To get the free energy, substitute <math|Q> into
  <math|<eqref|helmholtz-from-partition-function>>.

  <\equation>
    <frac|F|N*k*T>=-ln q=-ln <around*|(|1+\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|0>>|)>
    .
  </equation>

  As <math|\<varepsilon\><rsub|0>\<rightarrow\>\<infty\>>, the excited state
  becomes inaccessible, so <math|S\<rightarrow\>0> and
  <math|F\<rightarrow\>0>. On the other hand, as
  <math|\<varepsilon\><rsub|0>\<rightarrow\>0>, both states becomes
  accessible, so <math|S\<rightarrow\>N*k*ln 2> and
  <math|F\<rightarrow\>-N*k*T*ln 2>.

  <subsubsection|Temperature of a two-state system (and the notion of
  negative temperature)>

  Eq. <eqref|state-pars-alt-def> tells us that
  <math|T<rsup|-1>=<around*|(|\<partial\>S/\<partial\>U|)><rsub|V,N>>. Let's
  use the Schottky model to see the meaning of <math|T>.

  In the two-state model, <math|n> (out of <math|N>) particles populate the
  excited state. When energy enters thesystem as heat, it excites particles
  to move from the ground state to the excited state. We've seen that the
  energy <math|U> of the system abides by

  <\equation>
    U=n*\<varepsilon\><rsub|0><space|2em>\<Longrightarrow\><space|2em>n=<frac|U|\<varepsilon\><rsub|0>>
    .
  </equation>

  The multiplicity of states in a binary system is given by the binomial:

  <\equation*>
    W=<frac|N!|n!*<around*|(|N-n|)>!>,
  </equation*>

  so

  <\equation>
    <frac|S|k>=ln W\<approx\>-n*ln <around*|(|<frac|n|N>|)>-<around*|(|N-n|)>*ln
    <around*|(|<frac|N-n|N>|)> .
  </equation>

  To get <math|S<around*|(|U|)>>, replace (5.41) into (5.42).

  <\equation>
    <frac|1|T>=k*<around*|(|<frac|\<partial\> ln
    W|\<partial\>U>|)><rsub|V,N>=k*<around*|(|<frac|\<partial\> ln
    W|\<partial\>n>|)><rsub|V,N>*<around*|(|<frac|\<mathd\>n|\<mathd\>U>|)> .
  </equation>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|1|T>>|<cell|=>|<cell|<frac|k|\<varepsilon\><rsub|0>>*<around*|[|-1-ln
    <around*|(|<frac|n|N>|)>+1+ln <around*|(|<frac|N-n|N>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|-<frac|k|\<varepsilon\><rsub|0>>*ln
    <around*|(|<frac|n/N|1-<around*|(|n/N|)>>|)>=-<frac|k|\<varepsilon\><rsub|0>>*ln
    <around*|(|<frac|U/N*\<varepsilon\><rsub|0>|1-U/N*\<varepsilon\><rsub|0>>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|k|\<varepsilon\><rsub|0>>*ln
    <around*|(|<frac|f<rsub|ground>|f<rsub|excited>>|)>,<eq-number>>>>>
  </eqnarray*>

  where <math|f<rsub|excited>=n/N> and <math|f<rsub|ground>=1-n/N>. Eq.
  (5.44) shows that the temperature of a two-state system depends on the
  energy spacing <math|\<varepsilon\><rsub|0>>, the number of particles
  <math|N>, and the total energy <math|U>, through quantity <math|n>. The
  following figure shows <math|S<around*|(|U|)>> for a two-state system with
  <math|N=3> particles.

  <\big-figure|<image|Figures/entropy-two-state-system.png|0.7par|||>>
    The entropy of a two-state system as a function of its energy.
  </big-figure>

  For any value of <math|U>, <math|1/T> is the slope of the curve
  <math|S<around*|(|U|)>> at that point. There are 3 regions in the graph:

  <\enumerate>
    <item><em|Positive temperature>, <math|T\<gtr\>0>. At low <math|U>, most
    particles are in the ground state. According to (5.44), the temperature
    is positive. If an external source of energy is available, the system
    will tend to absorb energy from it, and particles will transition to the
    excited state. <strong|Systems having positive temperature absorb energy
    to gain entropy>.

    <item><em|Infinite temperature>, <math|T\<rightarrow\>\<infty\>>. At
    intermediate energy <math|U>, with equal populations in the ground and
    excited states, <math|1/T\<rightarrow\>0>. This is the point where
    <math|S<around*|(|U|)>> is maximal. <strong|Systems at infinite
    temperature cannot gain additional entropy by absorbing energy.>

    <item><em|Negative temperature>, <math|T\<less\>0>. At high energy
    <math|U>, most particles are in the excited state. It follows from (5.44)
    that the temperature is negative. If the system were to absorb additional
    energy, shifting the last few particles from the ground state to the
    excited state would lead to a lower multiplicity of states.
    <strong|Systems at negative temperature give off energy.>

    A system at negative energy is <em|hotter> than at positive energy, since
    \<#2018\>hotness\<#2018\> is a tendency to give up energy. Negative
    temperatures occur only in saturable systems that have finite numbers of
    energy levels. Ordinary materials have practically infinite ladders of
    energy levels and are not saturable, because their particles have
    translational, rotational, vibrational, and electronic freedom.

    A system at negative temperature, with more excited than ground-state
    particles, is said to have a population inversion. A population inversion
    cannot be achieved by equilibration with a normal heat bath, because heat
    baths invariably have positive temperatures. Using a heat bath that has a
    positive temperature, the most that increasing the bath temperature can
    achieve is equal populations of excited- and ground-state particles of
    the system. A population inversion can be caused by incident
    electromagnetic radiation entering the system to excite the particles
    into a nonequilibrium state. The excited particles will typically then
    spontaneously emit radiation to give off energy in order to reach a state
    of higher entropy.
  </enumerate>

  <subsubsection|Energy fluctuations in a system>

  The probability that an arbitrary system is in a particular energy level is
  (from eq. <eqref|partition-function-density>)

  <\equation>
    p<around*|(|E|)>=<frac|W<around*|(|E|)>*\<mathe\><rsup|-\<beta\>*E>|Q> .
  </equation>

  We shall show that <math|p<around*|(|E|)>> is a highly peaked function with
  a width that is determined by the heat capacity. Let <math|E> represent one
  particular energy level of the system and <math|U> epresent the equilibrium
  value of the energy. Near the peak, the function <math|p<around*|(|E|)>> is
  approximately Gaussian, and its with is proportional to <math|C<rsub|V>>.
  Express <math|ln p<around*|(|E|)>> as a Taylor series around the mean value
  <math|<around*|\<langle\>|E|\<rangle\>>=U>:

  <\equation>
    ln p<around*|(|E|)>=ln p<around*|(|U|)>+<around*|(|<frac|\<partial\> ln
    p<around*|(|E|)>|\<partial\>E>|)><rsub|E=U>*<around*|(|E-U|)>+<frac|1|2>*<around*|(|<frac|\<partial\><rsup|2>
    ln p<around*|(|E|)>|\<partial\>E<rsup|2>>|)><rsub|E=U>*<around*|(|E-U|)><rsup|2>+\<cdots\>
    .
  </equation>

  The peak of this function defines the equilibrium state: the fluctuations
  are deviations from it. We ar einterested in the variations away from
  equilibrium. At the peak, the entropy <math|S<around*|(|E|)>> equals its
  equilibrium value <math|S<around*|(|U|)>>. At the peak, the temperature
  <math|T<around*|(|E|)>> equals its equilibrium value <math|T<rsub|0>>,
  which is the temperature of the bath.

  Insert (5.45) into (5.46) and. <math|Q> is not a function of <math|E>, but
  a sum over <math|E>. So <math|Q> does not contribute to the partial
  derivatives. Use <math|S<around*|(|E|)>=k*ln W<around*|(|E|)>> and
  <math|<around*|(|\<partial\>S/\<partial\>E|)>=1/T<around*|(|E|)>> to get:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|<frac|\<partial\> ln
    p<around*|(|E|)>|\<partial\>E>|)>>|<cell|=>|<cell|<around*|(|<frac|\<partial\>
    ln W<around*|(|E|)>|\<partial\>E>|)>-\<beta\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|\<partial\><around*|(|S/k|)>|\<partial\>E>|)>-\<beta\>=<frac|1|k*T<around*|(|E|)>>-<frac|1|k*T<rsub|0>>
    .<eq-number>>>>>
  </eqnarray*>

  To get the second derivative, use the relation
  <math|<around*|(|\<partial\>E/\<partial\>T|)>=C<rsub|V>> to get:

  <\equation>
    <around*|(|<frac|\<partial\><rsup|2> ln
    p<around*|(|E|)>|\<partial\>E<rsup|2>>|)>=-<around*|(|<frac|1|k*T<rsup|2>>|)>*<around*|(|<frac|\<partial\>T|\<partial\>E>|)><rsub|E=U>=-<around*|(|<frac|1|k*T<rsub|0><rsup|2>*C<rsub|V>>|)>
    .
  </equation>

  Substituting (5.48) into(5.46) and exponentiating shows that
  <math|p<around*|(|E|)>> is approximately a Gaussian function.

  <\equation>
    p<around*|(|E|)>=p<around*|(|U|)>*exp
    <around*|[|-<frac|<around*|(|E-U|)><rsup|2>|2*k*T<rsub|0><rsup|2>*C<rsub|V>>|]>=exp
    <around*|[|U-T<rsub|0>*S<around*|(|U|)>|]>*exp
    <around*|[|-<frac|<around*|(|E-U|)><rsup|2>|2*k*T<rsub|0><rsup|2>*C<rsub|V>>|]>
    .
  </equation>

  By the definition of variance,

  <\equation>
    \<sigma\><rsup|2>=<around*|\<langle\>|<around*|(|E-U|)><rsup|2>|\<rangle\>>=<around*|\<langle\>|E<rsup|2>|\<rangle\>>-U<rsup|2>=k*T<rsub|0><rsup|2>*C<rsub|V>
    .<label|energy-fluctuations-magnitude>
  </equation>

  This equation shows that you can determine the magnitude of the energy
  fluctuations if you know <math|C<rsub|V>>.

  Sometimes, it is useful to express the variance in terms of the partition
  function:

  <\equation>
    \<sigma\><rsup|2>=<frac|\<mathd\><rsup|2> ln
    Q|\<mathd\>\<beta\><rsup|2>>=<frac|\<mathd\>|\<mathd\>\<beta\>>
    <around*|(|<frac|1|Q>*<frac|\<mathd\>Q|\<mathd\>\<beta\>>|)>=<frac|Q<rprime|''>|Q>-<frac|Q<rprime|'>|Q<rsup|2>>
    .<label|energy-fluctuations-magnitude-from-partition>
  </equation>

  <subsection|What is an ensemble?>

  A term commonly used in statistical mechanics is <em|ensemble>. The term is
  usually used in one of two ways. First, it can refer to which set of
  variables you are controlling: \<#2018\>the <math|<around*|(|U,V,N|)>>
  ensemble\<#2018\> or \<#2018\>the <math|<around*|(|T,p,N|)>>
  ensemble\<#2018\>.\ 

  <\itemize>
    <item>The <math|<around*|(|T,V,N|)>> ensemble is called the <em|canonical
    ensemble>.

    <item>The <math|<around*|(|U,V,N|)>> ensemble is called the
    <em|microcanonical ensemble>.

    <item>The <math|<around*|(|T,p,N|)>> ensemble is called the
    <em|isobaric-isothermal ensemble>.

    <item>The <math|<around*|(|T,V,\<mu\>|)>> ensemble is called the
    <em|grand canonical ensemble>.
  </itemize>

  The term ensemble also has another meaning. An ensemble is the collection
  of all the possible microstates, or snapshots, of a system.

  <subsubsection|The microcanonical ensemble>

  The microcanonical ensemble is qualitatively different from the canonical
  and grand canonical ensembles. In the canonical ensemble, the temperature
  is fixed, which is equivalent to fixing the average energy
  <math|U=<around*|\<langle\>|E|\<rangle\>>>. The energy can fluctuate. But
  in the microcanonical ensemble, every microstate has exactly the same fixed
  energy, so <math|U=E>, and there are no fluctuations.

  For the microcanonical ensemble, it is more useful to focus on the
  <math|i=1,2,\<ldots\>,W<around*|(|E,V,N|)>> microstates of the system, than
  of <math|t> energy levels, since there is only one energy level. In the
  microcanonical ensemble, each microstate is equivalent. So you can express
  the probability that the system is in microstate <math|i=1,2,\<ldots\>,W>
  as

  <\equation>
    p<rsub|i><rsup|\<star\>>=<frac|1|W> .
  </equation>

  Using the definition of the entropy, we have

  <\equation>
    <frac|S|k>=-<big|sum><rsub|i=1><rsup|W>p<rsub|i>*ln
    p<rsub|i>=-<big|sum><rsub|i=1><rsup|W><around*|(|<frac|1|W>|)>*ln
    <around*|(|<frac|1|W>|)>=ln W<around*|(|E,V,N|)> .
  </equation>

  <section|Solutions and Mixtures>

  <marginal-note|normal|c|lec 5. 06.06.23>

  <subsection|Lattice models describe mixtures>

  In this section we wish to derive the relationship between the chemical
  potential <math|\<mu\>> of a molecule and its concentration <math|x> in the
  solution. We shall use the <math|<around*|(|T,V,\<b-up-N\>|)>> ensemble
  rather than <math|<around*|(|T,p,\<b-up-N\>|)>>, because it allows us to
  work with a simple lattice model that captures the ptinciples of solution
  theory. The appropriate extremum principle is based on the Helmholtz free
  energy <math|F>, where <math|S> is the entropy of the solution and <math|U>
  accounts for the interaction energies between lattice particles.

  <subsubsection|The entropy of a solution>

  Suppose there are <math|N<rsub|A>,N<rsub|B>> molecules of species <math|A>
  and <math|B> respectively. Particles <math|A> and <math|B> are the same
  size; each occupies one lattice site and together they completely fill a
  lattice of <math|N> lattice sites.

  <\equation>
    N=N<rsub|A>+N<rsub|B> .
  </equation>

  The multiplicity here is given by the binomial

  <\equation>
    W=<frac|N!|N<rsub|A>!*N<rsub|B>!> .
  </equation>

  The translational entropy of the mixed system can be computed using the
  <math|S=k*ln W> and Stirling's approximation.

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<mathLaplace\>S<rsub|solution>>|<cell|=>|<cell|k*<around*|(|N*ln
    N-N<rsub|A>*ln N<rsub|A>-N<rsub|B>*ln
    N<rsub|B>|)>>>|<row|<cell|>|<cell|=>|<cell|k*<around*|(|N<rsub|A>*ln
    N+N<rsub|B>*ln N-N<rsub|A>*ln N<rsub|A>-N<rsub|B>*ln
    N<rsub|B>|)>>>|<row|<cell|>|<cell|=>|<cell|-N*k*<around*|[|<frac|N<rsub|A>|N>*ln
    <around*|(|<frac|N<rsub|A>|N>|)>+<frac|N<rsub|B>|N>*ln
    <around*|(|<frac|N<rsub|B>|N>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|-k*<around*|(|N<rsub|A>*ln
    x<rsub|A>+N<rsub|B>*ln x<rsub|B>|)> .<eq-number>>>>>
  </eqnarray*>

  This entropy can be expressed in terms of the <em|relative concentrations>
  of <math|A> and <math|B>. We shall use <em|mole fractions>
  <math|x=N<rsub|A>/N> and <math|<around*|(|1-x|)>=N<rsub|B>/N>.

  <\equation>
    <frac|\<Delta\>*S<rsub|solution>|N*k>=-x*ln x-<around*|(|1-x|)>*ln
    <around*|(|1-x|)> .<label|entropy-solution>
  </equation>

  This dependence is shown in Figure 6.1.

  <\big-figure|<image|Figures/entropy-versus-concentration.png|135pt|130pt||>>
    The entropy of solution as a function of the mole fraction.
  </big-figure>

  Note though that <math|x> is a fixed property of the system, and is not a
  degree of freedom.

  <\definition>
    <em|Ideal solutions>. A solution is called <em|ideal> if its free energy
    is given by <math|\<Delta\>*F<rsub|solution>=-T*\<Delta\>*S<rsub|solution>>.
    Mixing an ideal solution involves <strong|no> change in energy, and it
    involves no other entropies due to changes in volume, structuring, or
    ordering in the solution.

    Examples of ideal solutions: toluene/benzene and n-hexane/n-heptane.
  </definition>

  <subsubsection|The energy of a solution (and the mean-field approximation)>

  Real (non-ideal) solutions involve interactions between molecules. In the
  lattice model, the total energy of solution is the sum of the contact
  interactions of noncovalent bonds of all the pairs of nearest neighbors in
  the mixture. There are three types of contact: an <math|A\<nocomma\>A>
  bond, a <math|B\<nocomma\>B> bond, or and <math|A\<nocomma\>B> bond.

  The total energy of the system is

  <\equation>
    U=m<rsub|A\<nocomma\>A>*w<rsub|A\<nocomma\>A>+m<rsub|B\<nocomma\>B>*w<rsub|B\<nocomma\>B>+m<rsub|A\<nocomma\>B>*w<rsub|A\<nocomma\>B>,
  </equation>

  where <math|m<rsub|A\<nocomma\>A>> is the number of <math|A\<nocomma\>A>
  bonds and <math|w<rsub|A\<nocomma\>A>> is the contact energy of the
  <math|A\<nocomma\>A> bond. These are negative quantities.

  In general, <math|m<rsub|i\<nocomma\>j>> are not known. Express these in
  terms of <math|N<rsub|A>> and <math|N<rsub|B>>. Each lattice site has
  <math|z> \<#2018\>sides\<#2018\>; every contact involves two sides.

  <\big-figure|<image|Figures/lattice-model-sides.png|108pt|61pt||>>
    One contact between lattice particles involves two lattice site sides.
  </big-figure>

  The total number of sides of type <math|A> particles is <math|z*N<rsub|A>>,
  which can be expressed in terms of the number of contacts as

  <\equation>
    z*N<rsub|A>=2*m<rsub|A\<nocomma\>A>+m<rsub|A\<nocomma\>B>,
  </equation>

  because the number of <math|A> side equals

  <\equation*>
    <around*|(|#A\<nocomma\>A<space|0.2spc>
    bonds|)>\<times\><around*|(|<frac|2*A<space|0.2spc>
    sides|A\<nocomma\>A<space|0.2spc> bond>|)>+<around*|(|#A\<nocomma\>B<space|0.2spc>
    bonds|)>\<times\><around*|(|<frac|1*A<space|0.2spc>
    side|A\<nocomma\>B<space|0.2spc> bond>|)> .
  </equation*>

  Similarly, for type <math|B> particles,

  <\equation>
    z*N<rsub|B>=2*m<rsub|A\<nocomma\>B>+m<rsub|A\<nocomma\>B>.
  </equation>

  Combining (6.6) and (6.7) gives

  <\equation>
    m<rsub|A\<nocomma\>A>=<frac|z*N<rsub|A>-m<rsub|A\<nocomma\>B>|2>,<space|2em>m<rsub|B\<nocomma\>B>=<frac|z*N<rsub|B>-m<rsub|A\<nocomma\>B>|2>
    .
  </equation>

  Substitute into the expression for the total energy, to get

  <\eqnarray*>
    <tformat|<table|<row|<cell|U>|<cell|=>|<cell|<around*|(|<frac|z*N<rsub|A>-m<rsub|A\<nocomma\>B>|2>|)>*w<rsub|A\<nocomma\>A>+<around*|(|<frac|z*N<rsub|B>-m<rsub|A\<nocomma\>B>|2>|)>*w<rsub|B\<nocomma\>B>+m<rsub|A\<nocomma\>B>*w<rsub|A\<nocomma\>B>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|z*w<rsub|A\<nocomma\>A>|2>|)>*N<rsub|A>+<around*|(|<frac|z*w<rsub|B\<nocomma\>B>|2>|)>*N<rsub|B>+<around*|(|w<rsub|A\<nocomma\>B>-<frac|w<rsub|A\<nocomma\>A>+w<rsub|B\<nocomma\>B>|2>|)>*m<rsub|A\<nocomma\>B>
    .<label|internal-energy-solution><eq-number>>>>>
  </eqnarray*>

  Before we continue, we must first introduce a new approximation: the
  <em|mean-field approximation>.

  Different arrangements of the system's particles will have different values
  of <math|m<rsub|A\<nocomma\>B>>. In principle, we should consider each
  confgiuration of the system, and we should account for its appropriate
  Boltzmann weight. Instead, we assume that for any given numbers
  <math|N<rsub|A>> and <math|N<rsub|B>>, the particles are mixed <strong|as
  randomly and uniformly as possible>. This gives a new way to estimate
  <math|m<rsub|A\<nocomma\>B>>.

  Consider a specific site next to an <math|A> molecule. What is the
  probability that a <math|B> occupies that neighboring site? According to
  the mean-field approximation,

  <\equation>
    p<rsub|B>=<frac|N<rsub|B>|N>=x<rsub|B>=1-x .
  </equation>

  Because there are <math|z> nearest-neighbor sites for each molecule of
  <math|A>, the average number of <math|A\<nocomma\>B> contacts made by that
  particular molecule of <math|A> is <math|z*N<rsub|B>/N=z*<around*|(|1-x|)>>.
  Therefore,

  <\equation>
    m<rsub|A\<nocomma\>B>\<approx\><frac|z*N<rsub|A>*N<rsub|B>|N>=z*N*x*<around*|(|1-x|)>
    .
  </equation>

  Now compute the total contact energy of the mixture from the known
  quantities <math|N<rsub|A>> and <math|N<rsub|B>> by inserting (6.11) into
  (6.9):

  <\eqnarray*>
    <tformat|<table|<row|<cell|U>|<cell|=>|<cell|<around*|(|<frac|z*w<rsub|A\<nocomma\>A>|2>|)>*N<rsub|A>+<around*|(|<frac|z*w<rsub|B\<nocomma\>B>|2>|)>*N<rsub|B>+<around*|(|w<rsub|A\<nocomma\>B>-<frac|w<rsub|A\<nocomma\>A>+w<rsub|B\<nocomma\>B>|2>|)>*z*N*x*<around*|(|1-x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|z*w<rsub|A\<nocomma\>A>|2>|)>*N<rsub|A>+<around*|(|<frac|z*w<rsub|B\<nocomma\>B>|2>|)>*N<rsub|B>+k*T*\<chi\><rsub|A\<nocomma\>B>*<frac|N<rsub|A>*N<rsub|B>|N>,<eq-number>>>>>
  </eqnarray*>

  where we define the <em|exchange parameter>
  <math|\<chi\><rsub|A\<nocomma\>B>> as

  <\equation>
    \<chi\><rsub|A\<nocomma\>B>\<equiv\><frac|z|k*T>*<around*|(|w<rsub|A\<nocomma\>B>-<frac|w<rsub|A\<nocomma\>A>+w<rsub|B\<nocomma\>B>|2>|)><label|exchange-parameter-def>
    .
  </equation>

  The mean-field approximation does not always hold. If <math|A\<nocomma\>B>
  interactions are more favorable than <math|A\<nocomma\>A> and
  <math|B\<nocomma\>B> interactions, then the mixing will not be random.
  Conversely, if the self-attractions are stronger, then <math|A<rprime|'> s>
  and <math|B<rprime|'> s> will tend to form independent clusters.

  <subsubsection|The free energy of a solution>

  Combine the previous terms to form <math|F=U-T*S>.

  <\equation>
    <frac|F<around*|(|N<rsub|A>,N<rsub|B>|)>|k*T>=N<rsub|A>*ln
    <around*|(|<frac|N<rsub|A>|N>|)>+N<rsub|B>*ln
    <around*|(|<frac|N<rsub|B>|N>|)>+<around*|(|<frac|z*w<rsub|A\<nocomma\>A>|2>|)>*N<rsub|A>+<around*|(|<frac|z*w<rsub|B\<nocomma\>B>|2>|)>*N<rsub|B>+k*T*\<chi\><rsub|A\<nocomma\>B>*<frac|N<rsub|A>*N<rsub|B>|N>
    .
  </equation>

  The difference between the mixed, final state and the initial pure states
  of <math|A> and <math|B>, <math|\<Delta\>*F<rsub|solution>> is

  <\equation>
    \<Delta\>*F<rsub|solution>=F<around*|(|N<rsub|A>,N<rsub|B>|)>-F<around*|(|N<rsub|A>,0|)>-F<around*|(|0,N<rsub|B>|)>
    .
  </equation>

  <math|F<around*|(|N<rsub|A>,0|)>> is found by substituting
  <math|N=N<rsub|A>> and <math|N<rsub|B>=0> into (6.14).

  <\equation>
    <frac|\<Delta\>*F<rsub|solution>|N*k*T>=x*ln x+<around*|(|1-x|)>*ln
    <around*|(|1-x|)>+\<chi\><rsub|A\<nocomma\>B>*x*<around*|(|1-x|)>
    .<label|free-energy-solution>
  </equation>

  This model is also called the <em|regular solution model>, coined by JH
  Hildebrand in 1929. While ideal solutions are driven only by the entropy of
  solution of particles of roughly equal size, regular solutions are driven
  also by the energy of the mean-feild form described above.

  <subsubsection|The chemical potentials>

  The chemical potential of species <math|A> is
  <math|\<mu\><rsub|A>=<around*|(|\<partial\>F/\<partial\>N<rsub|A>|)><rsub|T,N<rsub|B>>>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|\<mu\><rsub|A>|k*T>>|<cell|=>|<cell|<around*|[|<frac|\<partial\>|\<partial\>N<rsub|A>>
    <around*|(|<frac|F|k*T>|)>|]><rsub|T,N<rsub|B>>>>|<row|<cell|>|<cell|=>|<cell|ln
    <around*|(|<frac|N<rsub|A>|N>|)>+1-<frac|N<rsub|A>|N>-<frac|N<rsub|B>|N>+<frac|z*w<rsub|A\<nocomma\>A>|2*k*T>+\<chi\><rsub|A\<nocomma\>B>*<frac|<around*|(|N<rsub|A>+N<rsub|B>|)>*N<rsub|B>-N<rsub|A>*N<rsub|B>|<around*|(|N<rsub|A>+N<rsub|B>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|ln
    x<rsub|A>+<frac|z*w<rsub|A\<nocomma\>A>|2*k*T>+\<chi\><rsub|A\<nocomma\>B>*<around*|(|1-x<rsub|A>|)><rsup|2>
    .<eq-number>>>>>
  </eqnarray*>

  Similarly, for <math|B>,

  <\equation>
    <frac|\<mu\><rsub|B>|k*T>=<around*|[|<frac|\<partial\>|\<partial\>N<rsub|B>>
    <around*|(|<frac|F|k*T>|)>|]><rsub|T,N<rsub|A>>=ln
    x<rsub|B>+<frac|z*w<rsub|B\<nocomma\>B>|2*k*T>+\<chi\><rsub|A\<nocomma\>B>*<around*|(|1-x<rsub|B>|)><rsup|2>
    .
  </equation>

  The main result is an equation of the form

  <\equation>
    \<mu\>=\<mu\><rsup|0>+k*T*ln \<gamma\>*x,
  </equation>

  where <math|\<gamma\>> is called the <em|activity coeffieicnt>.

  Note that because the lattice is fully filled, no work can be done and
  <math|p*V> effects are neglected.

  Equations (6.17)\U(6.19) provide the foundation for treatment of mixing,
  solubility, partitioning, solvation, and colligative properties. Chemical
  potential describes the tendency of particles to change phases, or states.
  Particles of type <math|A> tend to leave regions of high relative
  concentration to gain solution entropy, and are attracted to regions or
  phases characterized by high chemical affinity, described by
  <math|\<mu\><rsup|0>> and <math|\<chi\><rsub|A\<nocomma\>B>>.

  <\ornamented>
    <\note*>
      What is the physical meaning of <math|\<chi\><rsub|A\<nocomma\>B>>? It
      describes the <strong|energetic cost> of beginning with the pure states
      of <math|A> and <math|B> and transferring one <math|B> into a medium of
      pure <math|A<rprime|'> s> and one <math|A> into a medium of pure
      <math|B<rprime|'> s>.

      <\equation*>
        <frac|1|2>*z<around*|(|A\<nocomma\>A|)>+<frac|1|2>*z<around*|(|B\<nocomma\>B|)>\<longrightarrow\>z<around*|(|A\<nocomma\>B|)>,<space|2em>\<chi\><rsub|A\<nocomma\>B>=-ln
        K<rsub|exch.>,
      </equation*>

      where <math|K<rsub|exch.>> is the <em|equilibrium constant> for the
      exchange process.

      If the mixing is favorable, then <math|K<rsub|exch.>\<gtr\>1>.
      According to Hildebrand's principle, for most systems the
      <math|A\<nocomma\>B> affinity is weaker than the pure affinities, so
      usually <math|\<chi\><rsub|A\<nocomma\>B>\<gtr\>0>. The quantity
      <math|\<chi\><rsub|A\<nocomma\>B>> also contributes to the interfacial
      free energy between two materials.
    </note*>
  </ornamented>
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
    <associate|Boltzmann-distribution-law|<tuple|2.4|11>>
    <associate|Lagrange-alt|<tuple|2.3|9>>
    <associate|Lagrange-multipliers|<tuple|2.2|8>>
    <associate|Stirling's approximation|<tuple|2.2|5>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3.1|8>>
    <associate|auto-11|<tuple|2.3.2|9>>
    <associate|auto-12|<tuple|2.3|9>>
    <associate|auto-13|<tuple|2.3.3|10>>
    <associate|auto-14|<tuple|3|11>>
    <associate|auto-15|<tuple|3.1|11>>
    <associate|auto-16|<tuple|3.2|12>>
    <associate|auto-17|<tuple|3.1|12>>
    <associate|auto-18|<tuple|3.3|13>>
    <associate|auto-19|<tuple|3.2|13>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|3.4|16>>
    <associate|auto-21|<tuple|3.5|16>>
    <associate|auto-22|<tuple|4|17>>
    <associate|auto-23|<tuple|4.1|18>>
    <associate|auto-24|<tuple|4.1.1|18>>
    <associate|auto-25|<tuple|4.1|18>>
    <associate|auto-26|<tuple|4.1.2|19>>
    <associate|auto-27|<tuple|4.2|20>>
    <associate|auto-28|<tuple|4.1.3|21>>
    <associate|auto-29|<tuple|4.1.4|21>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-30|<tuple|4.1.5|22>>
    <associate|auto-31|<tuple|4.1|22>>
    <associate|auto-32|<tuple|4.2|22>>
    <associate|auto-33|<tuple|4.2.1|23>>
    <associate|auto-34|<tuple|4.2.2|23>>
    <associate|auto-35|<tuple|4.3|23>>
    <associate|auto-36|<tuple|5|24>>
    <associate|auto-37|<tuple|5.1|24>>
    <associate|auto-38|<tuple|5.2|26>>
    <associate|auto-39|<tuple|5.2.1|26>>
    <associate|auto-4|<tuple|2|4>>
    <associate|auto-40|<tuple|5.2.2|27>>
    <associate|auto-41|<tuple|5.2.3|27>>
    <associate|auto-42|<tuple|5.3|28>>
    <associate|auto-43|<tuple|5.3.1|28>>
    <associate|auto-44|<tuple|5.3.2|28>>
    <associate|auto-45|<tuple|5.3.3|28>>
    <associate|auto-46|<tuple|5.3.4|29>>
    <associate|auto-47|<tuple|5.3.5|29>>
    <associate|auto-48|<tuple|5.3.6|30>>
    <associate|auto-49|<tuple|5.1|31>>
    <associate|auto-5|<tuple|2.1|4>>
    <associate|auto-50|<tuple|5.3.7|32>>
    <associate|auto-51|<tuple|5.4|33>>
    <associate|auto-52|<tuple|5.4.1|33>>
    <associate|auto-53|<tuple|6|33>>
    <associate|auto-54|<tuple|6.1|34>>
    <associate|auto-55|<tuple|6.1.1|34>>
    <associate|auto-56|<tuple|6.1|34>>
    <associate|auto-57|<tuple|6.1.2|35>>
    <associate|auto-58|<tuple|6.2|35>>
    <associate|auto-59|<tuple|6.1.3|36>>
    <associate|auto-6|<tuple|2.2|5>>
    <associate|auto-60|<tuple|6.1.4|37>>
    <associate|auto-7|<tuple|2.1|6>>
    <associate|auto-8|<tuple|2.3|7>>
    <associate|auto-9|<tuple|2.2|7>>
    <associate|average-energy-canonical-ensemble|<tuple|2.6|11>>
    <associate|average-energy-from-partition-function|<tuple|5.27|28>>
    <associate|boltzmann-distribution-law|<tuple|5.8|25>>
    <associate|chemical-potential-from-partition-function|<tuple|5.32|29>>
    <associate|energy-diff-form|<tuple|3.9|17>>
    <associate|energy-fluctuations-magnitude|<tuple|5.50|33>>
    <associate|energy-fluctuations-magnitude-from-partition|<tuple|5.51|33>>
    <associate|energy-fundamental|<tuple|3.11|17>>
    <associate|energy-partition-function|<tuple|5.9|25>>
    <associate|enthalpy|<tuple|4.18|21>>
    <associate|enthalpy-diff|<tuple|4.19|21>>
    <associate|enthalpy-fundamental|<tuple|4.20|21>>
    <associate|entropy-alt-def|<tuple|2.1|5>>
    <associate|entropy-definition|<tuple|2.1|4>>
    <associate|entropy-diff-form|<tuple|3.8|16>>
    <associate|entropy-from-partition-function|<tuple|5.29|29>>
    <associate|entropy-fundamental|<tuple|3.12|17>>
    <associate|entropy-solution|<tuple|6.4|34>>
    <associate|exchange-parameter-def|<tuple|6.13|36>>
    <associate|first-law|<tuple|3.1|12>>
    <associate|free-energy-solution|<tuple|6.16|36>>
    <associate|gibbs|<tuple|4.21|21>>
    <associate|gibbs-diff|<tuple|4.22|21>>
    <associate|gibbs-fundamental|<tuple|4.23|21>>
    <associate|helmholtz|<tuple|4.6|19>>
    <associate|helmholtz-diff|<tuple|4.7|19>>
    <associate|helmholtz-from-partition-function|<tuple|5.31|29>>
    <associate|helmholtz-fundamental|<tuple|4.8|19>>
    <associate|interal-energy-from-partition-function|<tuple|5.25|28>>
    <associate|internal-energy-solution|<tuple|6.8|35>>
    <associate|partition-function|<tuple|2.5|11>>
    <associate|partition-function-density|<tuple|5.14|26>>
    <associate|partition-function-distinguishable-independent|<tuple|5.18|27>>
    <associate|partition-function-indistinguishable-independent|<tuple|5.20|27>>
    <associate|pressure-from-partition-function|<tuple|5.33|29>>
    <associate|state-pars-alt-def|<tuple|3.13|17>>
    <associate|state-pars-alt-v2|<tuple|4.10|19>>
    <associate|state-pars-def|<tuple|3.10|17>>
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

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.1>|>
        An exemplary 5-level energy diagram. Each state has its corresponding
        energy, and particles may occupy the different states.
      </surround>|<pageref|auto-17>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3.2>|>
        Energy-level diagrams for two different systems with 10 particles
        each. System <with|mode|<quote|math>|B> has a higher internal energy,
        and thus a greater multiplicity of states.
      </surround>|<pageref|auto-19>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.1>|>
        A heat bath is a reservoir that holds the system (the test tube in
        this case) at constant temperature by allowing heat flow in or out,
        as required. The properties that do not change inside the system are
        <around*|(|<with|mode|<quote|math>|T,V,\<b-up-N\>>|)>.
      </surround>|<pageref|auto-25>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.2>|>
        To create the Legendre transform, a function
        <with|mode|<quote|math>|y<around*|(|x|)>> is expressed as a tangent
        slope function <with|mode|<quote|math>|c<around*|(|x|)>>, and a
        tangent intercept function <with|mode|<quote|math>|b<around*|(|x|)>>.
        The tangent slopes and intercepts of points
        <with|mode|<quote|math>|x<rprime|'>> and
        <with|mode|<quote|math>|x<rprime|''>> are shown here.
      </surround>|<pageref|auto-27>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.3>|>
        A thermodynamic cycle allows you to calculate the enthalpy for
        boiling water at the freezing temperature of water if you have
        measured the enthalpy at the boiling temperature.
      </surround>|<pageref|auto-35>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|5.1>|>
        The entropy of a two-state system as a function of its energy.
      </surround>|<pageref|auto-49>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|6.1>|>
        The entropy of solution as a function of the mole fraction.
      </surround>|<pageref|auto-56>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|6.2>|>
        One contact between lattice particles involves two lattice site
        sides.
      </surround>|<pageref|auto-58>>
    </associate>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|4.1>|>
        Fundamental equations and their natural variables.
      </surround>|<pageref|auto-31>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Toward
      the Fundamental Thermodynamic Equations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Definitions and conventions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Energy is quantized
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Flow of heat
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Thermodynamic systems and
      the fundamental thermodynamic equations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>The fundamental equations
      define the thermodynamic driving forces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Laboratory
      conditions and free energies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Free energy defines another
      extremum principle <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|4.1.1<space|2spc>The Helmholtz free energy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|4.1.2<space|2spc>The fundamental equation
      for the Helmholtz free energy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|2tab>|4.1.3<space|2spc>The enthalpy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|2tab>|4.1.4<space|2spc>The Gibbs free energy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|2tab>|4.1.5<space|2spc>Summary
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Uses of internal energy,
      entropy and enthalpy; heat capacity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|4.2.1<space|2spc>The third law of
      thermodynamics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|2tab>|4.2.2<space|2spc>Thermodynamic cycles
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>The
      Boltzmann distribution law and partition functions>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Developing the Boltzmann
      distribution law <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Properties of the partition
      function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|2tab>|5.2.1<space|2spc>Densities of states
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|2tab>|5.2.2<space|2spc>Partition functions for
      independent and distinguishable particles
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|2tab>|5.2.3<space|2spc>Partition functions for
      independent and indistinguishable particles
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|5.3<space|2spc>Thermodynamic properties can
      be predicted from partition functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|5.3.1<space|2spc>Computing the internal
      energy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|2tab>|5.3.2<space|2spc>Computing the average
      particle energy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|2tab>|5.3.3<space|2spc>Computing the entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|5.3.4<space|2spc>Computing the free energy
      and chemical potential <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|2tab>|5.3.5<space|2spc>The Schottky two-state
      model <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|2tab>|5.3.6<space|2spc>Temperature of a two-state
      system (and the notion of negative temperature)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|5.3.7<space|2spc>Energy fluctuations in a
      system <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|1tab>|5.4<space|2spc>What is an ensemble?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|2tab>|5.4.1<space|2spc>The microcanonical
      ensemble <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Solutions
      and Mixtures> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Lattice models describe
      mixtures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|2tab>|6.1.1<space|2spc>The entropy of a solution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|2tab>|6.1.2<space|2spc>The energy of a solution
      (and the mean-field approximation) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|2tab>|6.1.3<space|2spc>The free energy of a
      solution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|2tab>|6.1.4<space|2spc>The chemical potentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>
    </associate>
  </collection>
</auxiliary>