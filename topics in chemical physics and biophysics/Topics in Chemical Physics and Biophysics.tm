<TeXmacs|2.1.2>

<style|<tuple|course|framed-theorems|cite-sort|number-long-article>>

<\body>
  <\hide-preamble>
    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    \;
  </hide-preamble>

  <doc-data|<doc-title|Topics in Physical Chemistry and Biophysics>>

  <section|Review of probability>

  <marginal-note|normal|l|18.04.23 lec 1>

  <\definition>
    <em|Probability.> If <math|N> is the total number of outcomes, and
    <math|n<rsub|A>> fall in category <math|A>, then

    <\equation*>
      p<rsub|A>=<frac|n<rsub|A>|N>=<frac|<text|outcomes cat.> A|<text|all
      outcomes>>
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
      p<around*|(|A\<cup\>B\<cup\>C|)>=p<rsub|A>+p<rsub|B>+p<rsub|C>
    </equation*>

    That's the addition rule.

    <item>Probability that all outcomes occur? (Assuming independence)

    <\equation*>
      p<around*|(|A\<cap\>B\<cap\>C|)>=p<rsub|A>*p<rsub|B>*p<rsub|C>
    </equation*>

    <item>Probability that an event <math|A> is not happening?
    <math|p=1-p<rsub|A>>
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
      p<around*|(|A\<nocomma\>B|)>=p<around*|(|B\|A|)>*p<around*|(|A|)>
    </equation*>

    <math|P<around*|(|A|)>> is called the a priori probability and
    <math|p<around*|(|B\|A|)>> is called the a posterior probability
  </definition>

  <\theorem>
    <em|Bayes theorem.>

    <\equation*>
      p<around*|(|B\|A|)>*p<around*|(|A|)>=p<around*|(|A\|B|)>*p<around*|(|B|)>
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
    </equation*>

    <math|p<around*|(|B|)>> is the diagnosis of breast cancer irrespective
    whether it's there or not there.

    <\equation*>
      p<around*|(|B|)>=p<around*|(|B\<nocomma\>A|)>+p<around*|(|B\<nocomma\><wide|A|\<bar\>>|)>=p<around*|(|B\|A|)>*p<around*|(|A|)>+p<around*|(|B\|<wide|A|\<bar\>>|)>*p<around*|(|<wide|A|\<bar\>>|)>=0.8\<cdot\>0.01+0.096\<cdot\>0.99=0.103
    </equation*>

    <\equation*>
      p<around*|(|A\|B|)>=<frac|0.8\<cdot\>0.01|0.103>=0.078=7.8%
    </equation*>

    The reason that <math|p<around*|(|A\|B|)>> is so small is that the rate
    of false positive is really low and the rate of having breast cancer is
    really low.
  </example*>

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
      W=<frac|N!|N<rsub|A>>
    </equation*>

    In general, for <math|N> objects consisting of <math|t> categories in
    which the objects are indistinguishable:

    <\equation*>
      W=<frac|N!|<around*|(|n<rsub|1>!|)>*<around*|(|n<rsub|2>!|)>*\<cdots\>*<around*|(|n<rsub|t>!|)>>
    </equation*>

    So, if <math|t=2>, (e.g. possible number of ways to arrange three acids
    A,A,H)

    <\equation*>
      W=<frac|N!|n<rsub|1>!\<cdot\>n<rsub|2>!>=<frac|N!|n<rsub|1>!*<around*|(|N-n<rsub|1>|)>!>=<binom|N|n>
    </equation*>
  </example*>

  <\definition>
    <em|Distribution functions.> Describe collections of probabilities.
    Relevant for continuous variables.

    <\equation*>
      <big|sum><rsub|i>p<rsub|i>\<rightarrow\><big|int><rsub|a><rsup|b>p<around*|(|x|)>
      \<mathd\>x
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
      </equation*>

      and the number of ways to arrange the coins is

      <\equation*>
        W=<frac|N!|n<rsub|H>!*<around*|(|N-n<rsub|H>|)>!>
      </equation*>

      therefore, the possibility for the outcome (getting <math|n<rsub|H>>
      and <math|n<rsub|T>>) in any order is

      <\ornamented>
        <\equation*>
          p<around*|(|n<rsub|H>,N|)>=<binom|N|n<rsub|H>>*p<rsub|H><rsup|n<rsub|H>>*<around*|(|1-p<rsub|H>|)><rsup|N-N<rsub|H>>
        </equation*>
      </ornamented>

      that's the binomial distribution.

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
      \<mathd\>x
    </equation*>

    <\em>
      Given <math|f<around*|(|x|)>>,

      <\equation*>
        <around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>=<big|int>f<around*|(|x|)>*p<around*|(|x|)>
        \<mathd\>x
      </equation*>

      Given <math|a\<in\>\<bbb-R\>>
    </em>

    <\equation*>
      <around*|\<langle\>|a*f<around*|(|x|)>|\<rangle\>>=<big|int>a*f<around*|(|x|)>*p<around*|(|x|)>
      \<mathd\>x=a*<around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>
    </equation*>

    Given 2 functions <math|f<around*|(|x|)>,g<around*|(|x|)>>,

    <\equation*>
      <around*|\<langle\>|f<around*|(|x|)>+g<around*|(|x|)>|\<rangle\>>=<around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>+<around*|\<langle\>|g<around*|(|x|)>|\<rangle\>>
    </equation*>

    <\equation*>
      <around*|\<langle\>|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|\<rangle\>>\<neq\><around*|\<langle\>|f<around*|(|x|)>|\<rangle\>>*<around*|\<langle\>|g<around*|(|x|)>|\<rangle\>>
    </equation*>

    The 2nd and 3nd <with|font-series|bold|Moments> of the distributions
    <math|p<around*|(|x|)>> are

    <\equation*>
      <around*|\<langle\>|x<rsup|2>|\<rangle\>>=<big|int>x<rsup|2>*p<around*|(|x|)>
      \<mathd\>x
    </equation*>

    <\equation*>
      <around*|\<langle\>|x<rsup|3>|\<rangle\>>=<big|int>x<rsup|3>*p<around*|(|x|)>
      \<mathd\>x
    </equation*>

    The <with|font-series|bold|Variance> of the distribution,
    <math|\<sigma\><rsup|2>> is defined as

    <\equation*>
      \<sigma\><rsup|2>=<around*|\<langle\>|x<rsup|2>|\<rangle\>>-<around*|\<langle\>|x|\<rangle\>><rsup|2>=<around*|\<langle\>|<around*|(|x-<around*|\<langle\>|x|\<rangle\>>|)><rsup|2>|\<rangle\>>
    </equation*>
  </definition>
</body>

<\initial>
  <\collection>
    <associate|frame-titles|true>
    <associate|info-flag|detailed>
    <associate|ornament-shape|rounded>
    <associate|ornament-title-style|top center>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Review
      of probability> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>