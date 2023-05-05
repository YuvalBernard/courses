<TeXmacs|2.1.2>

<style|<tuple|course|framed-theorems|number-long-article|libertine-font|SIUnits-simple|preview-ref|smart-ref>>

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
      outcomes>>.
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
      p<around*|(|A\<cup\>B\<cup\>C|)>=p<rsub|A>+p<rsub|B>+p<rsub|C>.
    </equation*>

    That's the addition rule.

    <item>Probability that all outcomes occur? (Assuming independence)

    <\equation*>
      p<around*|(|A\<cap\>B\<cap\>C|)>=p<rsub|A>*p<rsub|B>*p<rsub|C>.
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
      p<around*|(|A\<nocomma\>B|)>=p<around*|(|B\|A|)>*p<around*|(|A|)>.
    </equation*>

    <math|P<around*|(|A|)>> is called the a priori probability and
    <math|p<around*|(|B\|A|)>> is called the a posterior probability
  </definition>

  <\theorem>
    <em|Bayes theorem.>

    <\equation*>
      p<around*|(|B\|A|)>*p<around*|(|A|)>=p<around*|(|A\|B|)>*p<around*|(|B|)>.
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
      p<around*|(|A\|B|)>=<frac|p<around*|(|B\|A|)>*p<around*|(|A|)>|p<around*|(|B|)>>.
    </equation*>

    <math|p<around*|(|B|)>> is the diagnosis of breast cancer irrespective
    whether it's there or not there.

    <\equation*>
      p<around*|(|B|)>=p<around*|(|B\<nocomma\>A|)>+p<around*|(|B\<nocomma\><wide|A|\<bar\>>|)>=p<around*|(|B\|A|)>*p<around*|(|A|)>+p<around*|(|B\|<wide|A|\<bar\>>|)>*p<around*|(|<wide|A|\<bar\>>|)>=0.8\<cdot\>0.01+0.096\<cdot\>0.99=0.103
    </equation*>

    <\equation*>
      p<around*|(|A\|B|)>=<frac|0.8\<cdot\>0.01|0.103>=0.078=7.8%.
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
      W=<frac|N!|N<rsub|A>>.
    </equation*>

    In general, for <math|N> objects consisting of <math|t> categories in
    which the objects are indistinguishable:

    <\equation*>
      W=<frac|N!|<around*|(|n<rsub|1>!|)>*<around*|(|n<rsub|2>!|)>*\<cdots\>*<around*|(|n<rsub|t>!|)>>.
    </equation*>

    So, if <math|t=2>, (e.g. possible number of ways to arrange three acids
    A,A,H)

    <\equation*>
      W=<frac|N!|n<rsub|1>!\<cdot\>n<rsub|2>!>=<frac|N!|n<rsub|1>!*<around*|(|N-n<rsub|1>|)>!>=<binom|N|n>.
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
        p<rsub|H><rsup|n<rsub|H>>\<cdot\>p<rsub|T><rsup|n<rsub|T>>=p<rsub|H><rsup|n<rsub|H>>*<around*|(|1-p<rsub|H>|)><rsup|N-n<rsub|H>>;<application-space|1em>N=n<rsub|H>+n<rsub|T>.
      </equation*>

      and the number of ways to arrange the coins is

      <\equation*>
        W=<frac|N!|n<rsub|H>!*<around*|(|N-n<rsub|H>|)>!>.
      </equation*>

      Therefore, the possibility for the outcome (getting <math|n<rsub|H>>
      and <math|n<rsub|T>>) in any order is

      <\ornamented>
        <\equation*>
          p<around*|(|n<rsub|H>,N|)>=<binom|N|n<rsub|H>>*p<rsub|H><rsup|n<rsub|H>>*<around*|(|1-p<rsub|H>|)><rsup|N-N<rsub|H>>.
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
          p<around*|(|n<rsub|1>,n<rsub|2>,\<ldots\>,n<rsub|t>,N|)>=<around*|(|<frac|N!|n<rsub|1>!*n<rsub|2>!*\<cdots\>*n<rsub|t>!>|)>*p<rsub|1><rsup|n<rsub|1>>*p<rsub|2><rsup|n<rsub|2>>*\<cdots\>*p<rsub|t><rsup|n<rsub|t>>.
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
      \<mathd\>x=a*<around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>.
    </equation*>

    Given 2 functions <math|f<around*|(|x|)>,g<around*|(|x|)>>,

    <\equation*>
      <around*|\<langle\>|f<around*|(|x|)>+g<around*|(|x|)>|\<rangle\>>=<around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>+<around*|\<langle\>|g<around*|(|x|)>|\<rangle\>>
    </equation*>

    <\equation*>
      <around*|\<langle\>|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|\<rangle\>>\<neq\><around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>*<around*|\<langle\>|g<around*|(|x|)>|\<rangle\>>.
    </equation*>

    The 2nd and 3nd <with|font-series|bold|Moments> of the distributions
    <math|p<around*|(|x|)>> are

    <\equation*>
      <around*|\<langle\>|x<rsup|2>|\<rangle\>>=<big|int>x<rsup|2>*p<around*|(|x|)>
      \<mathd\>x
    </equation*>

    <\equation*>
      <around*|\<langle\>|x<rsup|3>|\<rangle\>>=<big|int>x<rsup|3>*p<around*|(|x|)>
      \<mathd\>x.
    </equation*>

    The <with|font-series|bold|Variance> of the distribution,
    <math|\<sigma\><rsup|2>> is defined as

    <\equation*>
      \<sigma\><rsup|2>=<around*|\<langle\>|x<rsup|2>|\<rangle\>>-<around*|\<langle\>|x|\<rangle\>><rsup|2>=<around*|\<langle\>|<around*|(|x-<around*|\<langle\>|x|\<rangle\>>|)><rsup|2>|\<rangle\>>.
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
      S=k*ln W.
    </equation*>

    <\itemize>
      <item><math|k=<SI|1.3806\<times\> 10<rsup|-23>|J*K<rsup|-1>>> is
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
      Entropy is an <em|extensive> (additive) quantity. Consider a
      thermodynamic system having two subsystems, <math|A> and <math|B>, with
      multiplicities <math|W<rsub|A>> and <math|W<rsub|B>>, respectively. The
      multiplicity of the total system is
      <math|W<rsub|total>=W<rsub|A>*W<rsub|B>>. Following def.
      <reference|entropy-definition>, <math|S<rsub|total>=S<rsub|A>+S<rsub|B>=k*ln
      W<rsub|A>+k*ln W<rsub|B>>. This is why incorporating the multiplicity
      in a logarithm makes sense.
    </note*>
  </ornamented>

  Why does def. <reference|entropy-definition> assumes this particular
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
    <math|n\<gg\>1>,

    <\equation*>
      ln n!\<approx\>n*ln n-n
    </equation*>

    <\equation*>
      n!\<approx\><around*|(|<frac|n|\<mathe\>>|)><rsup|n>
    </equation*>
  </definition>

  and define the probabilities <math|p<rsub|i>=n<rsub|i>/N>, to get

  <\equation*>
    W=<frac|<around*|(|N/\<mathe\>|)><rsup|N>|<around*|(|n<rsub|1>/\<mathe\>|)><rsup|n<rsub|1>>*<around*|(|n<rsub|2>/\<mathe\>|)><rsup|n<rsub|2>>*\<cdots\>*<around*|(|n<rsub|t>/\<mathe\>|)><rsup|n<rsub|t>>>=<frac|N<rsup|N>|n<rsub|1><rsup|n<rsub|1>>*n<rsub|2><rsup|n<rsub|2>>*\<cdots\>*n<rsub|t><rsup|n<rsub|t>>>=<frac|1|p<rsub|1><rsup|n<rsub|1>>*p<rsub|2><rsup|n<rsub|2>>*\<cdots\>*p<rsub|t><rsup|n<rsub|t>>>.
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
      Boltzmann's constant <math|k> puts entropy into units that
      inter-convert with energy for thermodynamics. Basically, <math|k> is
      the entropy per particle.

      Sometimes, it is more convenient to express the entropy per mole of
      particles,

      <\equation*>
        S=R*ln W.
      </equation*>

      where <math|R=\<cal-N\>*k> is the <em|gas constant> and
      <math|\<cal-N\>> is Avogadro's number\Vthe number of molecules per
      mole.\ 
    </note*>
  </ornamented>

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
      W<rsub|A>=<frac|N!|n!*<around*|(|N-n|)>!>.
    </equation*>

    Using def. <reference|Stirling's approximation>,

    <\equation*>
      W<rsub|A>\<approx\><frac|N<rsup|N>|n<rsup|n>*<around*|(|N-n|)><rsup|N-n>>.
    </equation*>

    Similarly,

    <\equation*>
      W<rsub|B>\<approx\><frac|M<rsup|M>|m<rsup|m>*<around*|(|M-m|)><rsup|M-m>>.
    </equation*>

    As entropy is extensive,

    <\equation*>
      S=S<rsub|A>+S<rsub|B>=k*ln <around*|(|W<rsub|A>*W<rsub|B>|)>.
    </equation*>

    After mixing there are <math|M+N> lattice sites and <math|m+n> particles.
    Note that <math|W<rsub|A\<nocomma\>B>=W<rsub|A>*W<rsub|B>> is the
    combined multiplicity without mixing. The multiplicity after mixing,
    <math|W<rsub|A\<nocomma\>B><rsup|\<star\>>> behaves according to the
    multinomial distribution.

    <\equation*>
      W<rsub|A\<nocomma\>B><rsup|\<star\>>=<frac|<around*|(|N+M|)>!|n!*m!*<around*|(|N+M-m-n|)>!>\<approx\><frac|<around*|(|N+M|)><rsup|N+M>|n<rsup|n>*m<rsup|m>*<around*|(|N+M-m-n|)><rsup|N+m-m-n>>.
    </equation*>

    For simplification, assume <math|N=M> and <math|n=m>.

    <\equation*>
      W<rsub|A\<nocomma\>B><rsup|\<star\>>=<frac|<around*|(|2*N|)><rsup|2*N>|n<rsup|2*N>*<around*|(|2*N-2*n|)><rsup|2*N-2*n>>.
    </equation*>

    In this case, the combined multiplicity prior to mixing is

    <\equation*>
      W<rsub|A\<nocomma\>B>=<frac|N<rsup|2*N>|n<rsup|2*n>*<around*|(|N-n|)><rsup|2*<around*|(|N-n|)>>>.
    </equation*>

    What is the change in entropy due to mixing?

    <\equation*>
      \<Delta\>S=S<rsub|A\<nocomma\>B><rsup|\<star\>>-S<rsub|A\<nocomma\>B>=k*ln
      <frac|W<rsub|A\<nocomma\>B><rsup|\<star\>>|W<rsub|A\<nocomma\>B>>=\<cdots\>=k*ln
      <around*|(|2<rsup|2*n>|)>=2*n*k*ln 2.
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
    \<Delta\>f=f<around*|(|x|)>-f<around*|(|a|)>=<around*|(|<frac|\<mathd\>f|\<mathd\>x>|)><rsub|x=a>*\<Delta\>x+<frac|1|2>*<around*|(|<frac|\<mathd\><rsup|2>f|\<mathd\>x<rsup|2>>|)><rsub|x=a>*\<Delta\>x<rsup|2>+<frac|1|6>*<around*|(|<frac|\<mathd\><rsup|3>f|\<mathd\>x<rsup|3>>|)><rsub|x=a>*\<Delta\>x<rsup|3>+\<cdots\><label|taylor-series>.
  </equation*>

  For very small changes, <math|\<Delta\>x=<around*|(|x-a|)>\<rightarrow\>\<mathd\>x>,
  non-linear terms in the series expansions are neligible, and thus
  <math|\<mathd\>f\<approx\><around*|(|<frac|\<mathd\>f|\<mathd\>x>|)><rsub|x=a>*\<mathd\>x>.

  In the case of a bivariate function, <math|f<around*|(|x,y|)>>,

  <\equation*>
    \<mathd\>f=<around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>*\<mathd\>x+<around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>*.
  </equation*>

  We can generalize to multivariate functions, and define

  <\equation*>
    \<mathd\>f=<big|sum><rsub|i=1><rsup|t><around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)><rsub|x<rsub|j\<neq\>i>>*\<mathd\>x<rsub|i>.
  </equation*>

  The extrema of multivariate functions occur where the partial derivatives
  are zero. The <em|global> extremum occurs where <em|all> partial
  derivatives are zero: <math|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)><rsub|x<rsub|j\<neq\>i>>=0>
  for <math|i=1,2,\<ldots\>,t>.\ 

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
      For example, if we require <math|x=y>, the constaint function
      <math|g<around*|(|x,y|)>> would be:

      <\equation*>
        g<around*|(|x,y|)>=x-y=0.
      </equation*>

      Because <math|x> and <math|y> are related through the equation
      <math|g<around*|(|x,y|)>=constant>, they are <strong|not> independent
      variables. To satisfy both the extremum equation and the constraint
      equation, put the constraint equation into differential form and
      combine it with the extremum equation.

      <\equation*>
        \<mathd\>g=<around*|(|<frac|\<partial\>g|\<partial\>x>|)><rsub|y>*\<mathd\>x+<around*|(|<frac|\<partial\>g|\<partial\>y>|)><rsub|x>*\<mathd\>y=0
      </equation*>

      In this example,
    </note*>

    <\equation*>
      \<mathd\>g=1\<cdot\>\<mathd\>x-1\<cdot\>\<mathd\>y=0\<rightarrow\>\<mathd\>x=\<mathd\>y.
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
  the same to within an arbitraty constant <math|\<mathlambda\>>, called the
  <em|Lagrange multiplier>:

  <\equation>
    <around*|(|<frac|\<partial\>f|\<partial\>x>|)><rsub|y>=\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x>|)><rsub|y><space|1em>\<frak-a\>nd<space|1em><around*|(|<frac|\<partial\>f|\<partial\>y>|)><rsub|x>=\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>y>|)><rsub|x><label|Lagrange-multipliers>.
  </equation>

  The values <math|x=x<rsup|\<star\>>> and <math|y=y<rsup|\<star\>>> that
  satisfy <eqref|Lagrange-multipliers> are at the extremum of <math|f> and
  satisfy the constraint.

  <\example*>
    Suppose you want to find a rectangle of the largest possible area that is
    40 cm in circumference.

    Mathematically, find the extremum of

    <\equation*>
      f<around*|(|x,y|)>=x*y,
    </equation*>

    with the constraint equation

    <\equation*>
      g<around*|(|x,y|)>=2*x+2*y=40.
    </equation*>

    Use Lagrange multipliers to maximize <math|f> subject to <math|g>:

    <\equation*>
      <around*|(|<frac|\<partial\>f|\<partial\>x>|)>=y,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>x>|)>=2<space|1em>\<Rightarrow\><space|1em>y<rsup|\<star\>>=2*\<mathlambda\>,
    </equation*>

    <\equation*>
      <around*|(|<frac|\<partial\>f|\<partial\>y>|)>=x,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>y>|)>=2<space|1em>\<Rightarrow\><space|1em>x<rsup|\<star\>>=2*\<mathlambda\>.
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
        \<mathd\><around*|(|f-\<mathlambda\>*g-\<beta\>*h|)>=<big|sum><rsub|i=1><rsup|t><around*|[|<around*|(|<frac|\<partial\>f|\<partial\>x<rsub|i>>|)>-\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x<rsub|i>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>x<rsub|i>>|)>|]>\<mathd\>x<rsub|i>=0<label|Lagrange-alt>.
      </equation>
    </note*>
  </ornamented>

  <subsubsection|Maximizing entropy of an isolated system>

  Back to entropy, we had

  <\equation*>
    <frac|S|k>=-*<big|sum><rsub|i>p<rsub|i>*ln p<rsub|i>.
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
    S=-k*<around*|(|p<rsub|1>*ln p<rsub|1>+p<rsub|2>*ln p<rsub|2>|)>.
  </equation*>

  <\equation*>
    g=p<rsub|1>+p<rsub|2>=1
  </equation*>

  Calculate partical derivatives:

  <\equation*>
    <frac|1|k>*<around*|(|<frac|\<partial\>S|\<partial\>p<rsub|1>>|)><rsub|p<rsub|2>>=-<around*|(|ln
    p<rsub|1>+p<rsub|1>*<frac|1|p<rsub|1>>|)>=-ln
    p<rsub|1>-1,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|1>>|)><rsub|p<rsub|2>>=1,
  </equation*>

  <\equation*>
    <frac|1|k>*<around*|(|<frac|\<partial\>S|\<partial\>p<rsub|2>>|)>=-ln
    p<rsub|2>-1,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|2>>|)><rsub|p<rsub|1>>=1.
  </equation*>

  Via eq. <eqref|Lagrange-multipliers>,

  <\equation*>
    <choice|<tformat|<table|<row|<cell|-1-ln
    p<rsub|1>-\<mathlambda\>=0>>|<row|<cell|-1-ln
    p<rsub|2>-\<mathlambda\>=0>>>>><space|1em>\<Rightarrow\><space|1em>p<rsub|1><rsup|\<star\>>=p<rsub|2><rsup|\<star\>>=\<mathe\><rsup|-1-\<mathlambda\>>.
  </equation*>

  Plug these to the constraint equation to get

  <\equation*>
    g=2*\<mathe\><rsup|-1-\<mathlambda\>>=1<space|1em>\<Rightarrow\><space|1em>\<mathe\><rsup|-1-\<mathlambda\>>=<frac|1|2><space|1em>\<Rightarrow\><space|1em>p<rsub|1>=p<rsub|2>=<frac|1|2>
  </equation*>

  <\description-paragraphs>
    <item*|Conclusion.>Maximum entropy predicts a <em|flat> distribution of
    states. All states are equally likely.
  </description-paragraphs>

  In non-isolated systems, there may be additional constraints such as
  conservation of energy, conservation of mass, etc.

  <subsubsection|Maximizing entropy with an energy constraint>

  Roll a dice having <math|t> sides, with faces numbered
  <math|i=1,2,3,\<ldots\>,t>. You don't know thte distribution of outcomes of
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
    h<around*|(|p<rsub|1>,p<rsub|2>,\<ldots\>,p<rsub|t>|)>=<around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>*\<varepsilon\><rsub|i><space|1em>\<Rightarrow\><space|1em><big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*\<mathd\>p<rsub|i>=0.
  </equation*>

  Solve via method of Lagrange multipliers.

  <\equation*>
    <around*|(|<frac|\<partial\>S|\<partial\>p<rsub|i>>|)>-\<alpha\>*<around*|(|<frac|\<partial\>g|\<partial\>p<rsub|i>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>p<rsub|i>>|)>=0<space|1em><text|for>
    i=1,2,\<ldots\>,t.
  </equation*>

  The partial derivatives are evalueated for each <math|p<rsub|i>>:

  <\equation*>
    <around*|(|<frac|\<partial\>S|\<partial\>p<rsub|i>>|)>=-1-ln
    p<rsub|i>,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|i>>|)>=1,<space|1em><around*|(|<frac|\<partial\>h|\<partial\>p<rsub|i>>|)>=\<varepsilon\><rsub|i>.
  </equation*>

  Substitute into the above equation to get <math|t> equations of the form

  <\equation*>
    -1-ln p<rsub|i><rsup|\<star\>>-\<alpha\>-\<beta\>*\<varepsilon\><rsub|i>=0.
  </equation*>

  Solve for each <math|p<rsub|i><rsup|\<star\>>> to get

  <\equation*>
    p<rsub|i><rsup|\<star\>>=\<mathe\><rsup|-1-\<alpha\>-\<beta\>*\<varepsilon\><rsub|i>>.
  </equation*>

  To eliminate <math|\<alpha\>>, use the normalization constraint to divide
  both sides by one. The result is an <em|exponential distribution law>:

  <\equation>
    p<rsub|i><rsup|\<star\>>=<frac|p<rsub|i><rsup|\<star\>>|<big|sum><rsub|i=1><rsup|t>p<rsub|i><rsup|\<star\>>>=<frac|\<mathe\><rsup|<around*|(|-1-\<alpha\>|)>>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|<around*|(|-1-\<alpha\>|)>>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>>.<label|Boltzmann-distribution-law>
  </equation>

  In Statistical Mechanics, the average score is translated to <em|average
  energy> of the system, and eq. <eqref|Boltzmann-distribution-law> is called
  the <em|Boltzmann distribution law>. \ The quantity in the denominator is
  called the <em|partition function> <math|q>:

  <\equation>
    q\<equiv\><big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>><label|partition-function>
  </equation>

  Using the score constraint and the above, we get

  <\equation>
    <around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*p<rsub|i><rsup|\<star\>>=<frac|1|q>*<big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>.<label|average-energy-canonical-ensemble>
  </equation>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
    <associate|frame-titles|true>
    <associate|info-flag|detailed>
    <associate|math-font|roman>
    <associate|ornament-color|light grey>
    <associate|ornament-shape|rounded>
    <associate|ornament-title-style|top center>
    <associate|page-medium|paper>
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
    <associate|auto-10|<tuple|2.2.2|9>>
    <associate|auto-11|<tuple|2.3|10>>
    <associate|auto-12|<tuple|2.2.3|10>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|2|4>>
    <associate|auto-5|<tuple|2.1|4>>
    <associate|auto-6|<tuple|2.1|6>>
    <associate|auto-7|<tuple|2.2|7>>
    <associate|auto-8|<tuple|2.2|7>>
    <associate|auto-9|<tuple|2.2.1|8>>
    <associate|average-energy-canonical-ensemble|<tuple|2.6|11>>
    <associate|entropy-alt-def|<tuple|2.1|5>>
    <associate|entropy-definition|<tuple|2.1|4>>
    <associate|partition-function|<tuple|2.5|11>>
    <associate|taylor-series|<tuple|2.2|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|2.1>|>
        Each particle may occupy a lattice site.
      </surround>|<pageref|auto-6>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2.2>|>
        To identify the maximum of this function, both
        <with|mode|<quote|math>|<around*|(|\<partial\>f/\<partial\>x|)>> and
        <with|mode|<quote|math>|<around*|(|\<partial\>f/\<partial\>y|)>> must
        equal zero, as they do in (b), but not in (a).
      </surround>|<pageref|auto-8>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2.3>|>
        <with|mode|<quote|math>|-p*ln p> versus <with|mode|<quote|math>|p>
        has a maximum.
      </surround>|<pageref|auto-11>>
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

      <with|par-left|<quote|1tab>|2.2<space|2spc>Predicting distributions by
      maximizing entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|2.2.1<space|2spc>Extrema with constraints:
      Method of Lagrange Multipliers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|2.2.2<space|2spc>Maximizing entropy of an
      isolated system <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|2.2.3<space|2spc>Maximizing entropy with an
      energy constraint <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>
    </associate>
  </collection>
</auxiliary>