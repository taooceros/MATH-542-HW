#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Math 542 HW1",
  authors: ("Hongtao Zhang",),
)

#let (
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof
) = (
  thm,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof
)

#show: thmrules



=

#theorem[
  "First Isomorphism Theorem for Modules",
][
    Let M, N be R-modules and let $p : M -> N $be an
    R-module homomorphism. Then $ker(psi)$ is a
    submodule of $M$ and $M\/ker cong psi(M)$.
  ]<thm:firstiso>


#solution[
    As $psi$ is a $R$-module homomorphism,

    $ forall m_1, m_2 in M, r in R : psi(r m_1 + m_2) = r psi(m_1) + psi(m_2) $

    For $ker(psi)$ to become a submodule, we requires $forall r in R, x in ker(psi): r x in ker(psi)$


    We have $r dot 0 = 0$, and $forall x in ker(psi): psi(x) = 0$

    Then $forall r in R, x in ker(psi):psi(r x) = r psi(x) = r dot 0 = 0$

    Because a module homomorphism must be a group
    homomorphism. By first isomorphism theorem of
    group, $M\/ker(psi) cong psi(M)$.
  ]

#theorem(
  "Second Isomorphism Theorem for Modules",
)[
    let A and B be submodules of M. Then $(A+B)/B cong A/(A sect B)$
  ]

#solution[
    Construct a map $psi : A -> (A+B)/B$ by composing
    map from $phi: A-> A+B$ as a natural map and the
    canonical projection.

    Then we can write $psi(a)$ as $a B$, which means
    its kernel is $A sect B$.
  ]

=

== 

#solution[
    #let tor(M) = $"Tor"(#M)$

    We want to show $forall r in R, m in tor(M): r m in tor(M)$
    
    Thus we want to find some $r'$ such that $r' r m = 0$

    We know that $exists r'' : r'' m = 0$, then it suffices to find $r'$ such that $r' r = r''$.

    As $R$ is an integral domain, we have $r''r = r r'' => (r'' r) m = (r r'') m = 0$, and $r r'' != 0$ because $r != 0 and r'' != 0$.
  ]

==

#example[
  #let tor(M) = $"Tor"(#M)$

  Consider $R=ZZ\/6ZZ$ :

  $2 in tor(R)$ but $5 times 2 = 4 != tor(R)$.
]

== 

#solution[
  #let tor(M) = $"Tor"(#M)$

  Consider the zero divisor $r_1, r_2 in R$. We have $r_1, r_2 != 0 and r_1 r_2 = 0$. Then consider any non-zero element $m in M$, $r_2 r_1 m = 0 => r_1 m in tor(M)$. Then it suffices to show that $r_1 m != 0$.

  However, if $r_1 m = 0$, then $m in tor(M)$, which also satisfy the requirement.

]

==

===

Because $ZZ$ is an integral domain, then become a torsion submodules means exist some elements that makes the whole submodule become $0$. Then the first entries must be $0$.

The second entry is just the whole $ZZ\/6ZZ$ as we always have $6 in ZZ$ that makes every element in $ZZ\/6ZZ$ to be 0.

=

Denote the finite-dimensional $k[x]$-module as $V$.

To become a submodule $V'$, it must be invariant under the linear transformation represented by $x$. It suffices to find a polynomial $chi(A)$ such that $chi(A) = 0$. By Cayley-Hamilton theorem, this polynomials always exists, which is the charateristic polynomial. Thus every element is a torsion element, and thus the torsion submodules are $V$ itself.

==

#proposition[
  The only finite-dimensional simple $CC[x]$-modules are one-dimensional.
]

#solution[
  As any $n times n$ matrix with entries in $CC$ has an eigenvector. We know that the span of eigenvector of $x$ will never escape the span, and thus is a submodule.

  As long as the dimension of $CC[x]$-modules are not 1, we definately can find a span of eigenvector that has dimensions less than the module.
]

==

#proposition[
  Let $M := CC^2$ be a $CC[x]$-module where the action of $x$ is given by the matrix $mat(1,1;0,1)$. Find all submodules of $M$.
]

#solution[
  By (1), we will have the submodules span by the eigenvectors of $mat(1,1;0,1)$.

  $
    mat(1,1;0,1)mat(x;y) = lambda mat(x;y) => mat(x+y =x;y = y) => mat()
  $
]

=

== 

#solution[
  For $f$ to be a R-module isomorphism, it must be a isomorphism of the underlying set. Consider $f$ is bijective first.
  
  Therefore, $exists g : f compose g = g compose f = id$. It suffices to prove that $g$ is a R-module homomorphism.

  Because $f$ is a R-module homomorphism 
  
  $ forall m_1, m_2 in M, r in R: f(r m_1 + m_2) = r f(m_1) + f(m_2) $
  
  Then we have $g(f(r m_1 + m_2)) = r m_1 + m_2 = g(r f(m_1) + f(m_2))$. 

  Because $f$ is bijective, $f(m_1)$ and $f(m_2)$ points to a unique element in $M$ denoted as $m_3$ and $m_4$

  $ forall m_3, m_4 in M: exists m_1, m_2 in M : f(m_1) = m_3 and f(m_2) = m_4 $ 

  Therefore, $forall m_3, m_4 in M: g(r m_3 + m_4) = r g(m_3) + g(m_4) = r m_1 + m_2$.

  Assume the existence of such $g$ that is a R-module homomorphism and $g compose f = id = f compose g$:

  We know that the existence of inverse of the underlying set means that $f$ and $g$ is bijective. Then nothing left to be proved.
]

==

#solution[
  By @thm:firstiso we have $ker(f)$ as a submodule of $M$. However, because $M$ is simple, then $ker(f)$ is either ${0}$ or $M$.

  Then for any non-zero $R$-module homomorphism $f : M->M$, we have $ker(f) = {0}$, which means it is injective, and as $f$ maps from $M$ to $M$, it is subjective, so thus bijective. By (1), we have such $g$ exists.
]

==

#solution[
  Consider a matrix $mat(0,1;-1,0)$ that has no eigenvector in $RR^2$. Then we have no submodule for this module.

  $"End"_R (M)$ is all the linear transformation that commute with $x$, and for this case it is $mat(a,b;-b,a)$, and thus we can just send this to $a+b i$.
]

=

==

Let $A$ be any $ZZ$-module, let $a$ be any element of $A$ and let $n$ be a positive integer. Prove that the map $phi_a : ZZ\/n ZZ -> A $ given by $phi(overline(k)) = k a$ is a well defined $ZZ$-module homomorphism if and only if $n a = 0$. Prove that $"Hom"_ZZ (ZZ\/n ZZ, A) cong A_n$, where $A_n = {a in A bar n a = 0}$ (so $A_n$ is the annihilator in $A$ of the ideal $(n)$ of $ZZ$ --- cf. Exercise 10, Section 1).

#solution[
  if $n a = 0$
  $ 
    phi(overline(x) + overline(y)) = phi(x + y mod n) = (x + y mod a) a\
    phi(overline(x)) + phi(overline(y)) = (x+y) a
  $

  Because $n a$ = 0, $(x+y) a = (x + y mod n)a$

  If $phi_a$ is a valid homomorphism, then 
  
  $ phi(overline(x) + overline(y)) = phi(overline(x)) + phi(overline(y)) => (x+y)a = (x + y mod n) a => n a = 0 $
]

#solution[
  From Previous statement, we have each $phi_a : ZZ\/n ZZ -> A$ correspoinded to a set of $a$ such that $n a = 0$.

  #let hom = [$"Hom"_(ZZ) (ZZ\/n ZZ, A)$]
  #let znz = [$ZZ\/n ZZ$]

  We want to prove $forall psi in hom : exists a in A : psi = phi_a $

  For $psi$ to be in $hom$, we will have the property that

  $forall x in znz, z in ZZ : z psi(x) = psi(z x)$

  Therefore, $z psi(x) = overline(z) psi (x)$.

  Therefore, $psi(x)$ must have the property that $n psi(x) = 0$, which fits exactly into the $a$ we have.
]

==

Exhibit all $ZZ$-module homomorphisms from $ZZ\/30ZZ$ to $ZZ\/21ZZ$.

#solution[
  By previous exercise, it suffices to find all $a in ZZ\/21ZZ$ such that $30 a = 0 => 9a = 0$.

  We have $a_1 = 7, a_2 = 14, a_3 = 0$
]

= Bonus

Given a ring $R$, the opposite ring $R^"op"$ is the ring with all the same elements, where addition is defined identically, but for which $x dot^"op" y := y dot x$ where $dot$ is multiplciation in $R$ and $dot^"op"$ is the multiplication in $R^"op"$. Take $R$ as a left $R$-module and show that $"Hom"_(R-"Mod")(R,R)$ is isomorphic to $R^"op"$ as a ring.

#solution[
  #let hom = $"Hom"_(R-"Mod")(R,R)$
  
  #let op = "op"

  Consider an element $f$ in $hom$, it must follows the module property.

  That is

  $ forall r_1, r_2 in R: r_1 f(r_2) = f(r_1 r_2) => f(r_1) = f(r_1 dot 1) = r_1 f(1) $

  Therefore, $f$ can only have one form $f_r (r') = r' r$.

  Then the map $psi: R -> hom$ by sending $r arrow.bar f_r$. This map is clearly both injective and surjective.

  Consider the map $phi: hom -> R^op$ that maps $f_r$ to $r$ in $R^op$. Because it is the inverse of $psi$ in the underlying set, it is injective and surjective, and thus a isomorphism.
]

#[
  #let op = [op]
  #let Mat = "Mat"


  Show that if $R = Mat_(n times n) (k)$ is the ring of $n times n$ matrices with entries in a field $k$, then $R^op cong R$ where the isomorphism is given by sending a matrix to its transpose.
]

#solution[
  This map is a clearly bijection on the underlying set. The only thing left to check it is a homomorphism.

  $
    f(A+B) = (A+B)^T = A^T + B^T\
    f(A B) = (B A)^T = A^T B^T = f(A)f(B)

  $
]