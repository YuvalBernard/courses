<TeXmacs|2.1.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment 5>|<doc-author|<author-data|<author-name|Yuval
  Bernard>|<\author-affiliation>
    Date: 12/12/22
  </author-affiliation>>>>

  <section*|Page 168>

  <underline|Question 23>

  <\equation*>
    t<rsup|2>*y<rprime|''>-4t*y<rprime|'>+6y=0,<application-space|1em>t\<gtr\>0,<application-space|1em>y<rsub|1>=t<rsup|2>
  </equation*>

  Recall from class:

  <\ornamented>
    The general method is as follows: for a second order equation of the
    form:

    <\equation*>
      <\equation>
        y<rsub|2><rprime|''>+p<around*|(|x|)>*y<rprime|'><rsub|2>+q<around*|(|x|)>*y<rsub|2>=0
      </equation>
    </equation*>

    where <math|y<rsub|1><around*|(|t|)>> is a solution, write a second
    solution as <math|y<rsub|2><around*|(|t|)>=y<rsub|1><around*|(|t|)>*v<around*|(|t|)>>.

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rprime|'><rsub|2>>|<cell|=>|<cell|y<rsub|1><rprime|'>*v+y<rsub|1>*v<rprime|'>>>|<row|<cell|y<rsub|2><rprime|''>>|<cell|=>|<cell|y<rsub|1><rprime|''>*v+2y<rsub|1><rprime|'>*v<rprime|'>+y<rsub|1>*v<rprime|''>>>>>
    </eqnarray*>

    Get

    <\equation*>
      <around*|(|<with|color|red|y<rsub|1><rprime|''>*v>+<with|color|blue|2y<rsub|1><rprime|'>*v<rprime|'>>+y<rsub|1>*v<rprime|''>*|)>+p<around*|(|x|)>*<around*|(|<with|color|red|y<rsub|1><rprime|'>*v>+<with|color|blue|y<rsub|1>*v<rprime|'>>|)>+q<around*|(|x|)>*<around*|(|<with|color|red|y<rsub|1>*v>|)>=0
    </equation*>

    Rewrite as

    <\equation*>
      <with|color|red|<around*|(|y<rsub|1><rprime|''>+p<around*|(|x|)>*y<rprime|'><rsub|1>+q<around*|(|x|)>*y<rsub|1>|)>>*v+<with|color|blue|<around*|(|2y<rsub|1><rprime|'>+p<around*|(|x|)>*y<rsub|1>|)>>*v<rprime|'>+y<rsub|1>*v<rprime|''>=0
    </equation*>

    The <with|color|red|red> term is equal to zero because <math|y<rsub|1>>
    is a solution. Let's look at what's left.

    <\equation>
      <around*|(|2y<rsub|1><rprime|'>+p*y<rsub|1>|)>v<rprime|'>+y<rsub|1>*v<rprime|''>=0
    </equation>

    This is a 2nd order ODE in <math|v>, or a 1st order linear ODE in
    <math|v<rprime|'>>. Therefore we can find <math|y<rsub|2>> by \Preduction
    of order\Q.
  </ornamented>

  Rewrite the equation to match the form of eq. (1). Divide by
  <math|t<rsup|2>\<neq\>0> (not in domain):

  <\equation*>
    y<rprime|''>-<frac|4|t>*y<rprime|'>+<frac|6|t<rsup|2>>*y=0,<application-space|1em>t\<gtr\>0
  </equation*>

  Write a second solution of the form <math|y<rsub|2>=y<rsub|1>*v=t<rsup|2>*v>.
  According to eq. (1), <math|p<around*|(|t|)>=-<frac|4|t>,q<around*|(|t|)>=<frac|6|t<rsup|2>>>.

  Get the reduced ODE according to eq. (2):

  <\equation*>
    y<rprime|'><rsub|1>=2t
  </equation*>

  <\equation*>
    <wide*|<around*|(|2\<cdot\>2t-<frac|4|t>\<cdot\>t<rsup|2>|)><rsub|>|\<wide-underbrace\>><rsub|=0>*v<rprime|'>+t<rsup|2>*v<rprime|''>=0
  </equation*>

  We are left with the equation

  <\equation*>
    t<rsup|2>*v<rprime|''>=0
  </equation*>

  As <math|t\<gtr\>0>, <math|v<rprime|''>\<equiv\>0>.

  <\equation*>
    v<rprime|'>=<big|int>v<rprime|''> \<mathd\>t=c<rsub|1>
  </equation*>

  <\equation*>
    v=<big|int>v<rprime|'> \<mathd\>t=c<rsub|1>*t+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  In conclusion,

  <\equation*>
    y<rsub|2>=y<rsub|1>*v=t<rsup|2>*<around*|(|c<rsub|1>t+c<rsub|2>|)>=c<rsub|1>*t<rsup|3>+c<rsub|2>*t<rsup|2>,<application-space|1em>t\<gtr\>0
  </equation*>

  For a specific <math|y<rsub|2>>, choose <math|c<rsub|1>=1,c<rsub|2>=0>.
  <math|y<rsub|2>=t<rsup|3>>, <math|<around*|(|t\<gtr\>0|)>>.

  <\underline>
    Question 24
  </underline>

  <\equation*>
    t<rsup|2>*y<rprime|''>+2t*y<rprime|'>-2y=0,<application-space|1em>t\<gtr\>0,<application-space|1em>y<rsub|1>=t
  </equation*>

  Rewrite the equation to match the form of eq. (1). Divide by
  <math|t<rsup|2>\<neq\>0> (not in domain):

  <\equation*>
    y<rprime|''>+<frac|2|t>*y<rprime|'>-<frac|2|t<rsup|2>>*y=0,<application-space|1em>t\<gtr\>0
  </equation*>

  Here <math|p=<frac|2|t>,q=-<frac|2|t<rsup|2>>>. Select a solution of the
  form <math|y<rsub|2>=y<rsub|1>*v>. According to eq. (2),

  <\equation*>
    y<rsub|1><rprime|'>=1
  </equation*>

  <\equation*>
    <around*|(|2\<cdot\>1+<frac|2|t>*t|)>*v<rprime|'>+t*v<rprime|''>=0
  </equation*>

  <\equation*>
    4v<rprime|'>+t*v<rprime|''>=0,<application-space|1em>t\<gtr\>0
  </equation*>

  Divide by <math|t\<neq\>0>:

  <\equation*>
    v<rprime|''>+<frac|4|t>*v<rprime|'>=0,<application-space|1em>t\<gtr\>0
  </equation*>

  This is a second order linear ODE in <math|v>. Substitute
  <math|f=v<rprime|'>> to reduce equation order. The equation becomes:

  <\equation*>
    f<rprime|'>+<frac|4|t>*f=0,<application-space|1em>t\<gtr\>0
  </equation*>

  Solve using integration factor method.

  <\equation*>
    f<around*|(|t|)>=\<mathe\><rsup|-<big|int><frac|4|t>
    \<mathd\>t>*<around*|[|<big|int>0\<cdot\>\<mathe\><rsup|<big|int><frac|4|t>
    \<mathd\>t> \<mathd\>t+c<rsub|>|]>
  </equation*>

  <\equation*>
    f<around*|(|t|)>=<frac|c<rsub|1>|t<rsup|4>>*,
  </equation*>

  Integrate to find <math|v>.

  <\equation*>
    v<around*|(|t|)>=<big|int>f<around*|(|t|)>
    \<mathd\>t=-<frac|c<rsub|1>|3>**t<rsup|-3>+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  Substitute in expression for <math|y<rsub|2>>:

  <\equation*>
    y<rsub|2>=y<rsub|1>*v=-<frac|c<rsub|1>|3>*t<rsup|-2>+c<rsub|2>*t,<application-space|1em>t\<gtr\>0
  </equation*>

  For a specific solution, choose <math|c<rsub|1>=-3,c<rsub|2>=0>.
  <math|y<rsub|2>=t<rsup|-2>,<application-space|1em>t\<gtr\>0>.

  <underline|Question 27>

  <\equation*>
    x*y<rprime|''>-y<rprime|'>+4x<rsup|3>*y=0,<application-space|1em>x\<gtr\>0,<application-space|1em>y<rsub|1><around*|(|x|)>=sin
    x<rsup|2>
  </equation*>

  Rewrite the equation to match the form of eq. (1). Divide by
  <math|x\<neq\>0> (not in domain):

  <\equation*>
    y<rprime|''>-<frac|1|x>*y<rprime|'>+4x<rsup|2>*y=0,<application-space|1em>x\<gtr\>0
  </equation*>

  Here <math|p=-<frac|1|x>,q=4x<rsup|2>>. Select a solution of the form
  <math|y<rsub|2>=y<rsub|1>*v=sin x<rsup|2>*v>. According to eq. (2),

  <\equation*>
    y<rsub|1><rprime|'>=2x*cos x<rsup|2>
  </equation*>

  <\equation*>
    <around*|(|2\<cdot\>cos x<rsup|2>\<cdot\>2x-<frac|1|x>\<cdot\>sin
    x<rsup|2>|)>v<rprime|'>+sin x<rsup|2>*v<rprime|''>=0
  </equation*>

  <\equation*>
    <around*|(|4x*cos x<rsup|2>-<frac|1|x>*sin x<rsup|2>|)>*v<rprime|'>+sin
    x<rsup|2>*v<rprime|''>=0
  </equation*>

  Divide by <math|sin x<rsup|2>\<neq\>0>: (<math|x\<neq\><sqrt|\<mathpi\>k>>,
  <math|k=1,2,3,\<ldots\>>)

  <\equation*>
    v<rprime|''>+<around*|(|<frac|4x*|tan
    x<rsup|2>>-<frac|1|x>|)>*v<rprime|'>=0
  </equation*>

  Substitute <math|f=v<rprime|'>>,

  <\equation*>
    f<rprime|'>+<around*|(|<frac|4x*|tan x<rsup|2>>-<frac|1|x>|)>*f=0
  </equation*>

  This is a linear first order ODE in <math|f>. Solve using integration
  factor method.

  <\equation*>
    f<around*|(|x|)>=\<mathe\><rsup|-<big|int><around*|(|<frac|4x*|tan
    x<rsup|2>>-<frac|1|x>|)> \<mathd\>x>*<around*|[|<big|int>0\<cdot\>\<mathe\><rsup|<big|int><around*|(|<frac|4x*|tan
    x<rsup|2>>-<frac|1|x>|)> \<mathd\>x>+c<rsub|>|]>
  </equation*>

  <\equation*>
    f=\<mathe\><rsup|<big|int><around*|(|<frac|1|x>-<frac|4x|tan
    x<rsup|2>>|)> \<mathd\>x>\<cdot\>c<rsub|1><rsup|>,<application-space|1em>c<rsub|1>\<in\>\<bbb-R\>
  </equation*>

  Calculate the integral:

  <\equation*>
    <big|int><around*|(|<frac|1|x>-<frac|4x|tan x<rsup|2>>|)> \<mathd\>x=ln
    <around*|\||x|\|>-2<big|int><frac|2x|tan x<rsup|2>> \<mathd\>x
  </equation*>

  <\equation*>
    <big|int><frac|2x|tan x<rsup|2>> \<mathd\>x=<around*|[|u=x<rsup|2>,\<mathd\>u=2x
    \<mathd\>x|]><big|int><frac|1|tan u> \<mathd\>u=<big|int><frac|cos u|sin
    u> \<mathd\>u
  </equation*>

  Substitute <math|\<ell\>=sin u>. <math|\<mathd\>\<ell\>=cos u \<mathd\>u>.

  <\equation*>
    <big|int><frac|2x|tan x<rsup|2>> \<mathd\>x=\<cdots\>=<big|int><frac|1|\<ell\>>
    \<mathd\>\<ell\>=ln <around*|\||\<ell\>|\|>=ln <around*|\||sin u|\|>=ln
    <around*|\||sin x<rsup|2>|\|>
  </equation*>

  In summary,

  <\equation*>
    f<around*|(|x|)>=c<rsub|1>*\<mathe\><rsup|<around*|(|ln
    <around*|\||x|\|>-2*ln <around*|\||sin
    x<rsup|2>|\|>|)>>=c<rsub|1>*<frac|x|sin<rsup|2>
    x<rsup|2>>,<application-space|1em>x\<neq\><sqrt|\<mathpi\>k>,k=1,2,3,\<ldots\>
  </equation*>

  Integrate to get <math|v>:

  <\equation*>
    v=<big|int>f \<mathd\>x=c<rsub|1><big|int><frac|x|sin<rsup|2> x<rsup|2>>
    \<mathd\>x=<around*|[|u=x<rsup|2>|]>=<frac|c<rsub|1>|2><big|int><frac|1|sin<rsup|2>
    u> \<mathd\>u
  </equation*>

  <\equation*>
    <big|int><frac|1|sin<rsup|2> u> \<mathd\>u=<big|int><frac|<frac|1|cos<rsup|2>
    u>|<frac|sin<rsup|2> u|cos<rsup|2> u>>
    \<mathd\>u=<big|int><frac|<frac|1|cos<rsup|2> u>|tan<rsup|2> u>
    \<mathd\>u
  </equation*>

  Substitute <math|\<ell\>=tan u,\<mathd\>\<ell\>=<frac|1|cos<rsup|2> u>
  \<mathd\>u>.

  <\equation*>
    <big|int><frac|1|sin<rsup|2> u> \<mathd\>u=<big|int><frac|1|\<ell\><rsup|2>>
    \<mathd\>\<ell\>=-<frac|1|\<ell\>>=-<frac|1|tan u>=-<frac|cos
    x<rsup|2>|sin x<rsup|2>>
  </equation*>

  Therefore,

  <\equation*>
    v=-<frac|c<rsub|1>|2><frac|cos x<rsup|2>|sin
    x<rsup|2>>+c<rsub|2>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>
  </equation*>

  <\equation*>
    y<rsub|2>=y<rsub|1>*v=-<frac|c<rsub|1>|2>*cos x<rsup|2>+c<rsub|2>*sin
    x<rsup|2>,x\<gtr\>0
  </equation*>

  To get the solution we assumed <math|x\<neq\><sqrt|\<pi\>k>>. However, if
  we input <math|y<rsub|2>=cos x<rsup|2>> in the original ODE we get:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<rsub|2><rprime|'>>|<cell|=>|<cell|-2x*sin
    x<rsup|2>>>|<row|<cell|y<rsub|2><rprime|''>>|<cell|=>|<cell|-2*sin
    x<rsup|2>-4x<rsup|2>*cos x<rsup|2>>>>>
  </eqnarray*>

  <\equation*>
    x\<cdot\>y<rsub|2><rprime|''>-y<rprime|'>+4x<rsup|3>*y=-2x*<around*|(|sin
    x<rsup|2>+2x*<rsup|2>cos x<rsup|2>|)>+2x*sin x<rsup|2>+4x<rsup|3>*cos
    x<rsup|2>\<equiv\>0
  </equation*>

  The solution applies for all <math|x> in the requested domain.

  For a specific solution, choose <math|c<rsub|1>=-2,c<rsub|2>=0>.
  <math|y<rsub|2>=cos x<rsup|2>,<application-space|1em>x\<gtr\>0>.

  <section*|Page 220><page-break*>

  <underline|Question 11>

  <\equation*>
    y<rprime|'''>-y<rprime|''>-y<rprime|'>+y=0
  </equation*>

  As we've seen in class:

  <\ornamented>
    Given: <math|a<rsub|n>*y<rsup|<around*|(|n|)>>+a<rsub|n-1>*y<rsup|<around*|(|n-1|)>>+\<cdots\>+a<rsub|0>*y=0,<application-space|1em>a<rsub|n>\<neq\>0>,
    we look for solutions of the form <math|\<mathe\><rsup|\<lambda\>x>> and
    get:

    <\equation*>
      y<rsup|<around*|(|k|)>><around*|(|x|)>=\<lambda\><rsup|k>*\<mathe\><rsup|\<lambda\>x><application-space|1em>\<forall\>x
    </equation*>

    And when we substitute in the ODE:

    <\equation*>
      \<mathe\><rsup|\<lambda\>x>*<around*|(|a<rsub|n>*\<lambda\><rsup|n>+a<rsub|n-1>*\<lambda\><rsup|n-1>+\<cdots\>+a<rsub|1>*\<lambda\>+a<rsub|0>|)>=0
    </equation*>

    Then <math|\<mathe\><rsup|\<lambda\>x>> is a solution if and only if
    <math|><math|a<rsub|n>*\<lambda\><rsup|n>+a<rsub|n-1>*\<lambda\><rsup|n-1>+\<cdots\>+a<rsub|1>*\<lambda\>+a<rsub|0>=0>.
    (This equation is also called the <with|font-shape|italic|characteristic
    polynomial of the ODE>.)

    If the polynomial has <math|n> distinct solutions
    <math|\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|n>> then
    <math|\<mathe\><rsup|\<lambda\><rsub|1>x>,\<ldots\>,\<mathe\><rsup|\<lambda\><rsub|n>x>>
    are <math|n> linearly independent solutions and form a basis for space of
    solutions.

    Additionally, if <math|\<lambda\><rsub|0>> is a root of the
    characteristic polynomial of multiplicity <math|r>, then
    <math|<rigid|\<mathe\><rsup|\<lambda\>x>,x*\<mathe\><rsup|\<lambda\>x>,x<rsup|2>*\<mathe\><rsup|\<lambda\>x>,\<ldots\>,x<rsup|r-1>*\<mathe\><rsup|\<lambda\>x>>>
    will all solve the ODE and are linearly independent, and will be linearly
    independent of solutions we obtain from other roots of the characteristic
    polynomial.

    Moreover, if <math|z> is a non-real solution to
    <math|a<rsub|n>\<lambda\><rsup|n>+\<cdots\>+a<rsub|1>\<lambda\>+a<rsub|0>=0>,
    then so is <math|<wide|z|\<bar\>>>, and if we write
    <math|z=\<alpha\>+\<mathi\>*\<beta\>>, we get 2 linearly independent real
    solutions to the ODE:

    <\equation*>
      \<mathe\><rsup|\<alpha\>*x>*cos \<beta\>,\<mathe\><rsup|\<alpha\>*x>*sin
      \<beta\>
    </equation*>

    These of course behave similarly to real roots with multiplicity bigger
    than 1. Just multiply by <math|x,x<rsup|2>,\<ldots\>>
  </ornamented>

  The equation for the characteristic polynomial is:

  <\equation*>
    \<lambda\><rsup|3>-\<lambda\><rsup|2>-\<lambda\>+1=0
  </equation*>

  Note that <math|\<lambda\>=-1> solves the equation. The equation may be
  simplified (via long polynomial division):

  <\equation*>
    <around*|(|\<lambda\>+1|)><around*|(|\<lambda\><rsup|2>-2\<lambda\>+1|)>=<around*|(|\<lambda\>+1|)><around*|(|\<lambda\>-1|)><rsup|2>\<Rightarrow\>\<lambda\><rsub|1>=-1,\<lambda\><rsub|2>=1
  </equation*>

  <\itemize>
    <item>From <math|\<lambda\>=-1> we get the solution:
    <math|\<mathe\><rsup|-x>>.

    <item>From <math|\<lambda\>=1> we get the solutions:
    <math|\<mathe\><rsup|x>,x*\<mathe\><rsup|x>>.
  </itemize>

  The general solution is a linear combination of all solutions we've found:

  <\equation*>
    y=c<rsub|1>*\<mathe\><rsup|-x>+c<rsub|2>*\<mathe\><rsup|x>+c<rsub|3>*x*\<mathe\><rsup|x>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>x
  </equation*>

  <underline|Question 20>

  <\equation*>
    y<rsup|<around*|(|4|)>>-8y<rprime|'>=0
  </equation*>

  The characteristic polynomial equation is

  <\equation*>
    \<lambda\><rsup|4>-8\<lambda\>=0
  </equation*>

  <\equation*>
    \<lambda\>*<around*|(|\<lambda\><rsup|3>-8|)>=0
  </equation*>

  After polynomial division we get:

  <\equation*>
    \<lambda\>*<around*|(|\<lambda\>-2|)><around*|(|\<lambda\><rsup|2>+2\<lambda\>+4|)>=0
  </equation*>

  <\equation*>
    \<lambda\><rsup|2>+2\<lambda\>+4=0\<Rightarrow\>\<lambda\>=<frac|-2\<pm\><sqrt|2<rsup|2>-4\<cdot\>4>|2>=-1\<pm\><sqrt|3>\<mathi\>
  </equation*>

  <\itemize>
    <item>For <math|\<lambda\>=0> the solution is <math|\<mathe\><rsup|0>=1>

    <item>For <math|\<lambda\>=2> the solution is <math|\<mathe\><rsup|2x>>

    <item>For <math|\<lambda\>=-1\<pm\><sqrt|3>\<mathi\>> the solutions are
    <math|\<mathe\><rsup|-x>*cos <around*|(|<sqrt|3>x|)>> and
    <math|\<mathe\><rsup|-x>*sin <around*|(|<sqrt|3>x|)>>
  </itemize>

  The general solution is

  <\equation*>
    c<rsub|1>+c<rsub|2>*\<mathe\><rsup|2x>+c<rsub|3>*\<mathe\><rsup|-x>*cos
    <around*|(|<sqrt|3>x|)>+c<rsub|4>*\<mathe\><rsup|-x>*sin
    <around*|(|<sqrt|3>x|)>,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>x
  </equation*>

  <underline|Question 29>

  <\equation*>
    y<rprime|'''>+y<rprime|'>=0,<application-space|1em><choice|<tformat|<table|<row|<cell|y<around*|(|0|)>=0>>|<row|<cell|y<rprime|'><around*|(|0|)>=1>>|<row|<cell|y<rprime|''><around*|(|0|)>=2>>>>>
  </equation*>

  Find roots of characteristic polynomial:

  <\equation*>
    \<lambda\><rsup|3>+\<lambda\>=0
  </equation*>

  <\equation*>
    \<lambda\><around*|(|\<lambda\><rsup|2>+1|)>=0
  </equation*>

  <\equation*>
    \<lambda\><around*|(|\<lambda\>-i|)><around*|(|\<lambda\>+i|)>
  </equation*>

  General solution is:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y>|<cell|=>|<cell|c<rsub|1>+c<rsub|2>*cos
    t+c<rsub|3>*sin t,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t>>|<row|<cell|y<rprime|'>>|<cell|=>|<cell|-c<rsub|2>*sin
    t+c<rsub|3>*cos t>>|<row|<cell|y<rprime|''>>|<cell|=>|<cell|-c<rsub|2>*cos
    t-c<rsub|3>*sin t>>>>
  </eqnarray*>

  Inputting <math|t=0> gives:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|0|)>=0>|<cell|=>|<cell|c<rsub|1>+c<rsub|2>\<rightarrow\>c<rsub|1>=-c<rsub|2>>>|<row|<cell|y<rprime|'><around*|(|0|)>=1>|<cell|=>|<cell|c<rsub|3>>>|<row|<cell|y<rprime|''><around*|(|0|)>=2>|<cell|=>|<cell|-c<rsub|2>>>>>
  </eqnarray*>

  The specific solution is <math|y=2-2cos t+sin
  t,<application-space|1em>\<forall\>t>.

  The limit of <math|y<around*|(|t|)>> as <math|t\<rightarrow\>\<infty\>> is
  indeterminate. The solution oscillates.

  <underline|Question 34>

  <\equation*>
    4y<rprime|'''>+y<rprime|'>+5y=0,<application-space|1em><choice|<tformat|<table|<row|<cell|y<around*|(|0|)>=2>>|<row|<cell|y<rprime|'><around*|(|0|)>=1>>|<row|<cell|y<rprime|''><around*|(|0|)>=-1>>>>>
  </equation*>

  Find roots of characteristic polynomial:

  <\equation*>
    4\<lambda\><rsup|3>+\<lambda\>+5=0
  </equation*>

  Note that <math|\<lambda\>=-1> solves the equation. Using polynomial
  division the polynomial can be rewritten as:

  <\equation*>
    <around*|(|\<lambda\>+1|)><around*|(|4\<lambda\><rsup|2>-4\<lambda\>+5|)>=0
  </equation*>

  <\equation*>
    <around*|(|4\<lambda\><rsup|2>-4\<lambda\>+5|)>=0\<Rightarrow\>\<lambda\>=<frac|4\<pm\><sqrt|4<rsup|2>-4\<cdot\>4\<cdot\>5>|8>=<frac|1|2>\<pm\>\<mathi\>
  </equation*>

  The general solution is\ 

  <\equation*>
    y=c<rsub|1>*\<mathe\><rsup|-t>+c<rsub|2>*\<mathe\><rsup|t/2>*cos
    t+c<rsub|3>*\<mathe\><rsup|t/2>*sin t,<application-space|1em>c<rsub|1,2>\<in\>\<bbb-R\>,<application-space|1em>\<forall\>t
  </equation*>

  <\equation*>
    y<rprime|'>=-c<rsub|1>*\<mathe\><rsup|-t>+c<rsub|2>*<around*|(|-\<mathe\><rsup|t/2>*sin
    t+<frac|1|2>*\<mathe\><rsup|t/2>*cos t|)>+c<rsub|3>*<around*|(|\<mathe\><rsup|t/2>*cos
    t+<frac|1|2>*\<mathe\><rsup|t/2>*sin t|)>
  </equation*>

  <\equation*>
    y<rprime|'>=-c<rsub|1>*\<mathe\><rsup|-t>+\<mathe\><rsup|t/2>*sin
    t*<around*|(|<frac|c<rsub|3>|2>-c<rsub|2>|)>+\<mathe\><rsup|t/2>*cos
    t*<around*|(|<frac|c<rsub|2>|2>+c<rsub|3>|)>
  </equation*>

  <\equation*>
    y<rprime|''>=c<rsub|1>*\<mathe\><rsup|-t>+\<mathe\><rsup|t/2>*sin
    t*<around*|(|-c<rsub|2>-<frac|3|4>c<rsub|3>|)>+\<mathe\><rsup|t/2>*cos
    t**<around*|(|c<rsub|3>-<frac|3|4>c<rsub|2>|)>
  </equation*>

  Input ICs:

  <\eqnarray*>
    <tformat|<table|<row|<cell|y<around*|(|0|)>=2>|<cell|=>|<cell|c<rsub|1>+c<rsub|2><eq-number>>>|<row|<cell|y<rprime|'><around*|(|0|)>=1>|<cell|=>|<cell|-c<rsub|1>+<frac|c<rsub|2>|2>+c<rsub|3><eq-number>>>|<row|<cell|y<rprime|''><around*|(|0|)>=-1>|<cell|=>|<cell|c<rsub|1>+c<rsub|3>-<frac|3|4>c<rsub|2><eq-number>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|4|)>+<around*|(|5|)>>|<cell|:>|<cell|0=-<frac|c<rsub|2>|4>+2c<rsub|3>\<rightarrow\>c<rsub|2>=8c<rsub|3>>>|<row|<cell|<around*|(|3|)>+<around*|(|4|)>>|<cell|:>|<cell|3=<frac|3|2>c<rsub|2>+c<rsub|3>\<rightarrow\>c<rsub|3>=3-<frac|3|2>c<rsub|2>>>>>
  </eqnarray*>

  Therefore,

  <\equation*>
    c<rsub|3>=3-<frac|3|2>\<cdot\>8c<rsub|3>=3-12c<rsub|3>\<rightarrow\>c<rsub|3>=<frac|3|13>\<rightarrow\>c<rsub|2>=<frac|24|13>\<rightarrow\>c<rsub|1>=<frac|2|13>
  </equation*>

  The specific solution is\ 

  <\equation*>
    y=<frac|2|13>*\<mathe\><rsup|-t>+<frac|24|13>*\<mathe\><rsup|t/2>*cos
    t+<frac|3|13>*\<mathe\><rsup|t/2>*sin
    t,<application-space|1em>\<forall\>t
  </equation*>

  As <math|t\<rightarrow\>\<infty\>> the term
  <math|<frac|2|13>*\<mathe\><rsup|-t>> approaches zero, leaving us with a
  sinusoid with an indeterminate limit.

  <underline|Question 40>

  <\equation>
    c<rsub|1>*\<mathe\><rsup|r<rsub|1>t>+\<cdots\>+c<rsub|n>*\<mathe\><rsup|r<rsub|n>t>=0,<application-space|1em>\<forall\>t
  </equation>

  (a) Multiply eq. (6) by <math|\<mathe\><rsup|-r<rsub|1>t>>.

  <\equation*>
    c<rsub|1>+c<rsub|2>*\<mathe\><rsup|<around*|(|r<rsub|2>-r<rsub|1>|)>t>+c<rsub|3>*\<mathe\><rsup|<around*|(|r<rsub|3>-r<rsub|1>|)>t>+\<cdots\>+c<rsub|n>*\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|1>|)>t>=0
  </equation*>

  Differentiate wrt <math|t>.

  <\equation>
    c<rsub|2><around*|(|r<rsub|2>-r<rsub|1>|)>\<mathe\><rsup|<around*|(|r<rsub|2>-r<rsub|1>|)>t>+c<rsub|3><around*|(|r<rsub|3>-r<rsub|1>|)>\<mathe\><rsup|<around*|(|r<rsub|3>-r<rsub|1>|)>t>+\<cdots\>+c<rsub|n><around*|(|r<rsub|n>-r<rsub|1>|)>\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|1>|)>t>=0
  </equation>

  (b) Multiply eq. (7) by <math|\<mathe\><rsup|-<around*|(|r<rsub|2>-r<rsub|1>|)>t>>.

  <\equation*>
    c<rsub|2><around*|(|r<rsub|2>-r<rsub|1>|)>+c<rsub|3><around*|(|r<rsub|3>-r<rsub|1>|)>\<mathe\><rsup|<around*|(|r<rsub|3>-r<rsub|2>|)>t>+\<cdots\>+c<rsub|n><around*|(|r<rsub|n>-r<rsub|1>|)>\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|2>|)>t>=0
  </equation*>

  Differentiate wrt <math|t>.

  <\eqnarray*>
    <tformat|<table|<row|<cell|c<rsub|3><around*|(|r<rsub|3>-r<rsub|1>|)><around*|(|r<rsub|3>-r<rsub|2>|)>\<mathe\><rsup|<around*|(|r<rsub|3>-r<rsub|2>|)>t>+c<rsub|4><around*|(|r<rsub|4>-r<rsub|1>|)><around*|(|r<rsub|4>-r<rsub|2>|)>\<mathe\><rsup|<around*|(|r<rsub|4>-r<rsub|2>|)>t>+\<cdots\>+>|<cell|>|<cell|>>|<row|<cell|+c<rsub|n><around*|(|r<rsub|n>-r<rsub|1>|)><around*|(|r<rsub|n>-r<rsub|2>|)>\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|2>|)>t>>|<cell|=>|<cell|0>>>>
  </eqnarray*>

  (c) As we can see, each time we multiply by the negative version of the
  first exponent and differentiate, we reduce the number of terms in the
  equation and multiply all the remaining terms by the power of the exponent
  we multiplied with.

  Therefore, repeating the process (for the third time) for eq. (8) we get

  <\equation*>
    c<rsub|4><around*|(|r<rsub|4>-r<rsub|1>|)><around*|(|r<rsub|4>-r<rsub|2>|)><around*|(|r<rsub|4>-r<rsub|3>|)>*\<mathe\><rsup|<around*|(|r<rsub|4>-r<rsub|3>|)>t>+\<cdots\>+c<rsub|n><around*|(|r<rsub|n>-r<rsub|1>|)><around*|(|r<rsub|n>-r<rsub|2>|)><around*|(|r<rsub|n>-r<rsub|3>|)>\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|3>|)>t>=0
  </equation*>

  and for the forth time:

  <\equation*>
    c<rsub|4><around*|(|r<rsub|5>-r<rsub|1>|)><around*|(|r<rsub|5>-r<rsub|2>|)><around*|(|r<rsub|5>-r<rsub|3>|)><around*|(|r<rsub|5>-r<rsub|4>|)>\<mathe\><rsup|<around*|(|r<rsub|5>-r<rsub|4>|)>t>+\<cdots\>+c<rsub|n><around*|(|r<rsub|n>-r<rsub|1>|)><around*|(|r<rsub|n>-r<rsub|2>|)><around*|(|r<rsub|n>-r<rsub|3>|)><around*|(|r<rsub|n>-r<rsub|4>|)>\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|3>|)>t>=0c<rsub|1>
  </equation*>

  After <math|n-1> times, we are left with only one term:

  <\equation*>
    c<rsub|n><around*|(|r<rsub|n>-r<rsub|n-1>|)><around*|(|r<rsub|n>-r<rsub|n-2>|)>*\<cdots\>*<around*|(|r<rsub|n>-r<rsub|1>|)>\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|n-1>|)>t>=0
  </equation*>

  Because <math|\<mathe\><rsup|<around*|(|r<rsub|n>-r<rsub|n-1>|)>t>\<neq\>0>
  for all <math|t> and because all <math|r<rsub|n>> are different,
  <with|font-series|bold|<math|c<rsub|n>> must be zero>.

  The original equation can then be reduced to

  <\equation*>
    c<rsub|1>*\<mathe\><rsup|r<rsub|1>t>+\<cdots\>+c<rsub|n-1>*\<mathe\><rsup|r<rsub|n-1>t>=0
  </equation*>

  If we repeat the process again <math|n-2> times, we get
  <math|c<rsub|n-1>=0>. Then, after we rewrite the original equation again
  and repeat the multiplication and differentiation process <math|n-3> times,
  we get <math|c<rsub|n-2>=0>. Eventually, we see that all
  <math|c<rsub|k>,k=1,2,3\<ldots\>> are zero, thus proving that all
  <math|\<mathe\><rsup|r<rsub|1>t>,\<mathe\><rsup|r<rsub|2>t>,\<ldots\>,\<mathe\><rsup|r<rsub|n>t>>
  are linearly independent.
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|2|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      168> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Page
      220> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>