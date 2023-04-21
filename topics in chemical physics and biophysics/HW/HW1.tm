<TeXmacs|2.1.2>

<style|exam>

<\body>
  <doc-data|<doc-title|HW1>|<\doc-date>
    <date>
  </doc-date>>

  <\question>
    Probabilities of sequences.

    Assume that the four bases, A, T, C, and G occur with equal likelihood in
    a DNA sequence of nine monomers.

    <\enumerate>
      <item>What is the probability of finding the sequence AAATCGAGT through
      random chance?

      <item>What is the probability of finding the sequence AAAAAAAAA through
      random chance?

      <item>What is the probability of finding any sequence that has four
      A's, two T's, two G's, and one C, such as that in a.?
    </enumerate>
  </question>

  <\answer*>
    \;

    <\enumerate>
      <item>Since <math|p<rsub|A>=p<rsub|T>=p<rsub|G>=p<rsub|C>=<frac|1|4>>,
      according to the multiplication rule,

      <\equation*>
        p<around*|(|AAATCGAGT|)>=p<rsub|A><rsup|3>**p<rsub|T>*p<rsub|C>*p<rsub|G>*p<rsub|A>*p<rsub|G>*p<rsub|T>=<around*|(|<frac|1|4>|)><rsup|9>
      </equation*>

      <item>Each amino acid is equally likely to appear, so the identity of
      the acid doesn't matter.

      <\equation*>
        p<around*|(|AAAAAAAAA|)>=p<rsub|A><rsup|9>=<around*|(|<frac|1|4>|)><rsup|9>
      </equation*>

      <item>The solution is given by the multinomial distribution.

      For <math|N=9,n<rsub|A>=4,n<rsub|T>=2,n<rsub|G>=2,n<rsub|C>=1>,

      <\equation*>
        p<around*|(|n<rsub|A>,n<rsub|T>,n<rsub|G>,n<rsub|C>|)>=p<rsub|A><rsup|4>*p<rsub|T><rsup|2>*p<rsub|G><rsup|2>*p<rsub|C>*<frac|N!|n<rsub|A>!*n<rsub|T>!*n<rsub|G>!*n<rsub|C>!>=<around*|(|<frac|1|4>|)><rsup|9>*<frac|9!|4!*2!*2!*1!>
      </equation*>
    </enumerate>
  </answer*>

  \;

  <\question>
    Predicting combinations of independent events.

    If you flip and unbiased green coin and an unbiased red coin five times
    each, what is the probability of getting four red heads and two green
    tails?
  </question>

  <\answer*>
    Denote 4 red heads as <math|p<around*|(|rh<rsub|4>|)>> and 2 green tails
    as <math|p<around*|(|gt<rsub|2>|)>>. The probability of both occuring is
    given by the multiplication rule:

    <\equation*>
      p<around*|(|rh<rsub|4>\<cap\>gt<rsub|2>|)>=p<around*|(|rh<rsub|4>|)>*p<around*|(|gt<rsub|2>|)>
    </equation*>

    As both coins are unbiased, <math|\<theta\>=<frac|1|2>>.
    <math|p<around*|(|rh<rsub|4>|)>> and <math|p<around*|(|gt<rsub|2>|)>> are
    given by the binomial distribution.

    <\equation*>
      p<around*|(|rh<rsub|4>|)>=P<around*|(|n=4,N=5|)>=\<theta\><rsup|n>*<around*|(|1-\<theta\>|)><rsup|N-n>*<frac|N!|n!*<around*|(|N-n|)>!>=<around*|(|<frac|1|2>|)><rsup|5>*<frac|5!|4!*1!>=<frac|5|32>
    </equation*>

    <\equation*>
      p<around*|(|gt<rsub|2>|)>=P<around*|(|n=2,N=5|)>=<around*|(|<frac|1|2>|)><rsup|5>*<frac|5!|2!*3!>=<frac|5|16>
    </equation*>

    Therefore,

    <\equation*>
      p<around*|(|rh<rsub|4>\<cap\>gt<rsub|2>|)>=<frac|5|32>\<cdot\><frac|5|16>=<frac|25|512>
    </equation*>
  </answer*>

  <\question>
    Computing mean and variance.

    Consider the probability density function
    <math|p<around*|(|x|)>=a*x<rsup|n>,x\<in\><around*|[|0,1|]>> for
    <math|n\<gtr\>0>.

    <\enumerate>
      <item>Derive an expression for the constant <math|a>, to normalize
      <math|p<around*|(|x|)>>.

      <item>Compute the average <math|<around*|\<langle\>|x|\<rangle\>>> as a
      function of <math|n>.

      <item>Compute <math|\<sigma\><rsup|2>=<around*|\<langle\>|x<rsup|2>|\<rangle\>>-<around*|\<langle\>|x|\<rangle\>><rsup|2>>
      as a function of <math|n>.
    </enumerate>
  </question>

  <\answer*>
    \;

    <\enumerate>
      <item>We require <math|<big|int><rsub|0><rsup|1>p<around*|(|x|)>
      \<mathd\>x=1>.

      <\equation*>
        1=<big|int><rsub|0><rsup|1>a*x<rsup|n>
        \<mathd\>x=a\<cdot\><around*|[|<frac|x<rsup|n+1>|n+1>|]><rsub|0><rsup|1>=<frac|a|n+1>\<rightarrow\>a=n+1
      </equation*>

      <item>

      <\equation*>
        <around*|\<langle\>|x|\<rangle\>>=<big|int><rsub|0><rsup|1>x*a*x<rsup|n>
        \<mathd\>x=a<big|int><rsub|0><rsup|1>x<rsup|n+1>
        \<mathd\>x=a\<cdot\><around*|[|<frac|x<rsup|n+2>|n+2>|]><rsub|0><rsup|1>=<frac|n+1|n+2>
      </equation*>

      <item>

      <\equation*>
        <around*|\<langle\>|x<rsup|2>|\<rangle\>>=<big|int><rsub|0><rsup|1>x<rsup|2>*a*x<rsup|n>
        \<mathd\>x=<frac|n+1|n+3>
      </equation*>

      <\equation*>
        \<sigma\><rsup|2>=<around*|\<langle\>|x<rsup|2>|\<rangle\>>-<around*|\<langle\>|x|\<rangle\>><rsup|2>=<frac|n+1|n+3>-<around*|(|<frac|n+1|n+2>|)><rsup|2>
      </equation*>
    </enumerate>
  </answer*>

  <\question>
    Ion channel events.

    A biological membrane contains <math|N> ion-channel proteins. The
    fraction of time that any protein is open to allow ions to flow through
    is <math|q>. Express the probability <math|P<around*|(|m,N|)>> that
    <math|m> channels will be open at any time.
  </question>

  <\answer*>
    In any time <math|t>, each protein is either open or closed. The
    probability that at time <math|t> a protein is open is <math|q>. The
    probability of observing <math|m> open proteins out of <math|N> is given
    by the binomial distribution

    <\equation*>
      P<around*|(|m,N|)>=q<rsup|m>*<around*|(|1-q|)><rsup|N-m>*<around*|(|<frac|N!|m!*<around*|(|N-m|)>!>|)>
    </equation*>
  </answer*>
</body>

<\initial>
  <\collection>
    <associate|enum-1|<macro|x|<number|<arg|x>|alpha>>>
    <associate|page-medium|paper>
  </collection>
</initial>