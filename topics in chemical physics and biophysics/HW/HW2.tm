<TeXmacs|2.1.2>

<style|<tuple|generic|framed-theorems>>

<\body>
  <doc-data|<doc-title|Homework 2>>

  <\ornamented>
    <\question>
      The entropy of dipoles in a field.

      You have a solution of dipolar molecules with a positive charge at the
      head and a negative charge at the tail. When there is no electric field
      applied to the solutions, the dipoles point north (n), east (e), west
      (w), or south (s) with equal probabilities. However, when you apply a
      field to the solution, you now observe a different distribution with
      more heads pointing north: (n,e,w,s) = (7/16, 1/4, 1/4, 1/16).

      <\enumerate>
        <item>What is the polarity of the applied field?

        <item>Calculate the entropy of the system in the absence of the
        field.

        <item>Calculate the entropy of the system in the presence of the
        field.

        <item>Does the system become more ordered or disordered when the
        field is applied?
      </enumerate>
    </question>
  </ornamented>

  <\answer*>
    \;

    <\enumerate>
      <item>The field has its most positive pole facing south, because the
      (positive) heads are facing north.

      <item>The formula for the entropy of the system is:

      <\equation*>
        S=-k*<big|sum><rsub|i>p<rsub|i>*ln p<rsub|i>.
      </equation*>

      In absence of the field,

      <\equation*>
        S<rsub|no>=-k*\<cdot\>4*ln <around*|(|<frac|1|4>|)>=8k*ln 2.
      </equation*>

      <item>In presence of the field,

      <\equation*>
        S<rsub|yes>=-k*<around*|(|<frac|7|16>**ln <frac|7|16>+<frac|2|4>*ln
        <frac|1|4>+<frac|1|16>*ln <frac|1|16>|)>.*
      </equation*>

      <item>The system becomes less disordered when the field is applied,
      because the field limits the degrees of freedom of the
      system\Vorientation in space. Moreover, <math|\<Delta\>S\<less\>0>.
    </enumerate>
  </answer*>

  <\ornamented>
    <\question>
      Finding extrema subject to constraints.

      Find the point <math|<around*|(|x<rsup|\<star\>>,y<rsup|\<star\>>,z<rsup|\<star\>>|)>>
      that is at the minimum of the function.

      <\equation*>
        f<around*|(|x,y,z|)>=2*x<rsup|2>+8*y<rsup|2>+z<rsup|2>
      </equation*>

      subject to the constraint equation

      <\equation*>
        g<around*|(|x,y,z|)>=6*x+4*y+4*z-72=0
      </equation*>

      using Lagrange multipliers.
    </question>
  </ornamented>

  <\answer*>
    Set of equations to solve the problem using Lagrange multipliers method:

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>x>|)>>|<cell|=>|<cell|\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>x>|)>,>>|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>y>|)>>|<cell|=>|<cell|\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>y>|)>,>>|<row|<cell|<around*|(|<frac|\<partial\>f|\<partial\>z>|)>>|<cell|=>|<cell|\<mathlambda\>*<around*|(|<frac|\<partial\>g|\<partial\>z>|)>.>>>>
    </eqnarray*>
  </answer*>

  Calculate partial derivatives.

  <\equation*>
    \<nabla\>f=<around*|(|4*x,16*y,2*z|)>,<space|1em>\<nabla\>g=<around*|(|6,4,4|)>.
  </equation*>

  So:

  <\eqnarray*>
    <tformat|<table|<row|<cell|4*x<rsup|\<star\>>>|<cell|=>|<cell|6*\<mathlambda\><space|1em>\<Rightarrow\><space|1em>x<rsup|\<star\>>=1.5*\<mathlambda\>,>>|<row|<cell|16*y<rsup|\<star\>>>|<cell|=>|<cell|4*\<mathlambda\><space|1em>\<Rightarrow\><space|1em>y<rsup|\<star\>>=0.25*\<mathlambda\>,>>|<row|<cell|2*z<rsup|\<star\>>>|<cell|=>|<cell|4*\<mathlambda\><space|1em>\<Rightarrow\><space|1em>z<rsup|\<star\>>=2*\<mathlambda\>.>>>>
  </eqnarray*>

  Insert above equalities into the constraint equation to find
  <math|\<mathlambda\>>.

  <\equation*>
    9*\<mathlambda\>+\<mathlambda\>+8\<mathlambda\>=72<space|1em>\<Rightarrow\><space|1em>\<mathlambda\>=4.
  </equation*>

  In conclusion, <math|<around*|(|x<rsup|\<star\>>,y<rsup|\<star\>>,z<rsup|\<star\>>|)>=<around*|(|6,1,8|)>>.

  <\ornamented>
    <\question>
      Maximum entropy in Las Vegas.

      You play a slot machine in Las Vegas. For every $1 coin you insert,
      there are three outcomes:

      <\enumerate>
        <item>you loose $1.

        <item>you win $1 (so profit is $0)

        <item>you win $5 (so profit is $4).
      </enumerate>

      Suppose that your average profit over many trials is $0. Find the
      maximum entropy distribution for the probabilities
      <math|p<rsub|1>,p<rsub|2>,p<rsub|3>> of observing each of these three
      outcomes.
    </question>
  </ornamented>

  <\answer*>
    Maximum entropy solution in case of average observable constraint is:

    <\equation*>
      p<rsub|i><rsup|\<star\>>=<frac|\<mathe\><rsup|-\<beta\>\<varepsilon\><rsub|i>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>>,
    </equation*>

    where <math|\<beta\>> is a Lagrange multiplier. Defie
    <math|x\<equiv\>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i>>>. Then,

    <\equation*>
      p<rsub|i><rsup|\<star\>>=<frac|x<rsup|\<varepsilon\><rsub|i>>|x<rsup|\<varepsilon\><rsub|1>>+x<rsup|\<varepsilon\><rsub|2>>+x<rsup|\<varepsilon\><rsub|3>>>=<frac|x<rsup|\<varepsilon\><rsub|i>>|x<rsup|-1>+1+x<rsup|4>>.
    </equation*>

    From the constraint equation, we have

    <\equation*>
      0=<around*|\<langle\>|\<varepsilon\>|\<rangle\>>=<big|sum><rsub|i=1><rsup|3>\<varepsilon\><rsub|i>*p<rsub|i><rsup|\<star\>>=<around*|(|-1|)>*p<rsub|1><rsup|\<star\>>+0\<cdot\>p<rsub|2><rsup|\<star\>>+4*p<rsub|3><rsup|\<star\>>=<frac|-x<rsup|-1>+4*x<rsup|4>|x<rsup|-1>+1+x<rsup|4>>.
    </equation*>

    Therefore,

    <\equation*>
      <frac|1|x>=4*x<rsup|4><space|1em>\<Rightarrow\><space|1em><frac|1|4>=x<rsup|5><space|1em>\<Rightarrow\><space|1em>x=<around*|(|<frac|1|4>|)><rsup|1/5>.
    </equation*>

    The maximum entropy distribution is:

    <\equation*>
      <around*|(|p<rsub|1><rsup|\<star\>>,p<rsub|2><rsup|\<star\>>,p<rsub|3><rsup|\<star\>>|)>=<around*|(|<frac|<around*|(|<frac|1|4>|)><rsup|-<frac|1|5>>|<around*|(|<frac|1|4>|)><rsup|-<frac|1|5>>+1+<around*|(|<frac|1|4>|)><rsup|<frac|4|5>>>,<frac|1|<around*|(|<frac|1|4>|)><rsup|-<frac|1|5>>+1+<around*|(|<frac|1|4>|)><rsup|<frac|4|5>>>,<frac|<around*|(|<frac|1|4>|)><rsup|<frac|4|5>>|<around*|(|<frac|1|4>|)><rsup|-<frac|1|5>>+1+<around*|(|<frac|1|4>|)><rsup|<frac|4|5>>>|)>.
    </equation*>
  </answer*>

  <\ornamented>
    <\question>
      The maximum entropy distribution is Gaussian when the second moment is
      given.

      Prove that the probability distribution <math|p<rsub|i>> that maximizes
      the entropy for die rolls subject to a constant value of the second
      moment <math|<around*|\<langle\>|i<rsup|2>|\<rangle\>>> is a Gaussian
      function. Use <math|\<varepsilon\><rsub|i>=i>.
    </question>
  </ornamented>

  The second moment for the possible outcomes of a <math|t>-sided die is:

  <\equation>
    <around*|\<langle\>|\<varepsilon\><rsup|2>|\<rangle\>>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>*\<varepsilon\><rsub|i><rsup|2>.
  </equation>

  The constraint equations are:

  <\equation>
    g<around*|(|p<rsub|1>,\<ldots\>,p<rsub|t>|)>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>=1<space|1em>\<Rightarrow\><space|1em><big|sum><rsub|i=1><rsup|t>\<mathd\>p<rsub|i>=0
  </equation>

  <\equation>
    h<around*|(|p<rsub|1>,\<ldots\>,p<rsub|t>|)>=<around*|\<langle\>|\<varepsilon\><rsup|2>|\<rangle\>>=<big|sum><rsub|i=1><rsup|t>p<rsub|i>*\<varepsilon\><rsub|i><rsup|2><space|1em>\<Rightarrow\><space|1em><big|sum><rsub|i=1><rsup|t>\<varepsilon\><rsub|i><rsup|2>*\<mathd\>p<rsub|i>=0
  </equation>

  The maximum entropy solution is given by the method of Lagrange
  multipliers:

  <\equation>
    <around*|(|<frac|\<partial\>S|\<partial\>p<rsub|i>>|)>-\<alpha\>*<around*|(|<frac|\<partial\>g|\<partial\>p<rsub|i>>|)>-\<beta\>*<around*|(|<frac|\<partial\>h|\<partial\>p<rsub|i>>|)>=0<space|1em>for<space|1em>i=1,\<ldots\>,t,
  </equation>

  where <math|\<alpha\>> and <math|\<beta\>> are unknown multiplers. The
  partial derivatives are evaluated for each <math|p<rsub|i>>:

  <\equation>
    <around*|(|<frac|\<partial\>S|\<partial\>p<rsub|i>>|)>=-1-ln
    p<rsub|i>,<space|1em><around*|(|<frac|\<partial\>g|\<partial\>p<rsub|i>>|)>=1,<space|1em><around*|(|<frac|\<partial\>h|\<partial\>p<rsub|i>>|)>=\<varepsilon\><rsub|i><rsup|2>
  </equation>

  Substitute eq. (5) into eq. (4) to get <math|t> equations of the form

  <\equation>
    -1-ln p<rsub|i><rsup|\<star\>>-\<alpha\>-\<beta\>*\<varepsilon\><rsub|i><rsup|2>=0,
  </equation>

  where the <math|p<rsub|i><rsup|\<star\>>>'s the values of <math|p<rsub|i>>
  that maximize the entropy. For each <math|p<rsub|i><rsup|\<star\>>>:

  <\equation>
    p<rsub|i><rsup|\<star\>>=\<mathe\><rsup|-1-\<alpha\>-\<beta\>*\<varepsilon\><rsub|i><rsup|2>>.
  </equation>

  To eliminate <math|\<alpha\>> in eq. (7), use eq. (2) to divide both sides
  by one.

  <\equation>
    p<rsub|i><rsup|\<star\>>=<frac|p<rsub|i><rsup|\<star\>>|<big|sum><rsub|i=1><rsup|t>p<rsub|i><rsup|\<star\>>>=<frac|\<mathe\><rsup|-1-\<alpha\>-\<beta\>*\<varepsilon\><rsub|i><rsup|2>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|<around*|(|-1-\<alpha\>|)>>*\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i><rsup|2>>>=<frac|\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i><rsup|2>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>*\<varepsilon\><rsub|i><rsup|2>>>.
  </equation>

  Input <math|\<varepsilon\><rsub|i>=i> to get a Gaussian in <math|i>

  <\equation>
    p<rsub|i><rsup|\<star\>>=<frac|\<mathe\><rsup|-\<beta\>*i<rsup|2>>|<big|sum><rsub|i=1><rsup|t>\<mathe\><rsup|-\<beta\>**i<rsup|2>>>.
  </equation>
</body>

<\initial>
  <\collection>
    <associate|ornament-color|light grey>
    <associate|page-medium|paper>
  </collection>
</initial>