#import "../template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Math 542 HW1",
  authors: ("Hongtao Zhang",),
)

#import "@preview/lemmify:0.1.2": *

#let (
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof,
  rules: thm-rules,
) = default-theorems("thm-group", lang: "en")

#show: thm-rules


=

#theorem(
  name: "First Isomorphism Theorem for Modules",
)[
    Let M, N be R-modules and let $p : M -> N $be an
    R-module homomorphism. Then $ker(psi)$ is a
    submodule of $M$ and $M\/ker cong psi(M)$.
  ]<thm:firstiso>


#proof[
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
  name: "Second Isomorphism Theorem for Modules",
)[
    let A and B be submodules of M. Then $(A+B)/B cong A/(A sect B)$
  ]

#proof[
    Construct a map $psi : A -> (A+B)/B$ by composing
    map from $phi: A-> A+B$ as a natural map and the
    canonical projection.

    Then we can write $psi(a)$ as $a B$, which means
    its kernel is $A sect B$.
  ]

=

== 

#proof[
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

#proof[
  #let tor(M) = $"Tor"(#M)$

  Consider the zero divisor $r_1, r_2 in R$. We have $r_1, r_2 != 0 and r_1 r_2 = 0$. Then consider any non-zero element $m in M$, $r_2 r_1 m = 0 => r_1 m in tor(M)$. Then it suffices to show that $r_1 m != 0$.

  However, if $r_1 m = 0$, then $m in tor(M)$, which also satisfy the requirement.

]

=

==

#proposition[
  The only finite-dimensional $CC[x]$-modules are one-dimensional.
]

#proof[
  As any $n times n$ matrix with entries in $CC$ has an eigenvector. We know that the span of eigenvector of $x$ will never escape the span, and thus is a submodule.

  As long as the dimension of $CC[x]$-modules are not 1, we definately can find a span of eigenvector that has dimensions less than the module.
]

==

#proposition[
  Let $M := CC^2$ be a $CC[x]$-module where the action of $x$ is given by the matrix $mat(1,1;0,1)$. Find all submodules of $M$.
]

#proof[
  By (1), we will have the submodules span by the eigenvectors of $mat(1,1;0,1)$.

  It suffices to show that any other vector span has dimension 2 (0 is trivial).

  Consider a module $mat(x;y) in.not "span"("Eigen"mat(1,1;0,1))$, then $mat(1,1;0,1) mat(x;y) != c mat(x;y)$, which implies $mat(1,1;0,1)$ is linearly independent with $mat(x;y)$, which means it cannot become a submodule by itself or its linear variant. 
]

=

== 

#proof[
  For $f$ to be a R-module isomorphism, it must be a isomorphism of the underlying set. Consider $f$ is bijective first.
  
  Therefore, $exists g : f compose g = g compose f = id$. It suffices to prove that $g$ is a R-module homomorphism.

  Because $f$ is a R-module homomorphism, $forall m_1, m_2 in M, r in R: f(r m_1 + m_2) = r f(m_1) + f(m_2)$. Then we have $g(f(r m_1 + m_2)) = r m_1 + m_2 = g(r f(m_1) + f(m_2))$. Because $f$ is bijective, $f(m_1)$ and $f(m_2)$ points to a unique element in $M$ denoted as $m_3$ and $m_4$, and $forall m_3, m_4 in M: exists m_1, m_2 in M : f(m_1) = m_3 and f(m_2) = m_4$. Therefore, $forall m_3, m_4 in M: g(r m_3 + m_4) = r g(m_3) + g(m_4) = r m_1 + m_2$.

  Assume the existence of such $g$ that is a R-module homomorphism and $g compose f = id = f compose g$:

  We know that the existence of inverse of the underlying set means that $f$ and $g$ is bijective. Then nothing left to be proved.
]

==

#proof[
  By @thm:firstiso we have $ker(f)$ as a submodule of $M$. However, because $M$ is simple, then $ker(f)$ is either ${0}$ or $M$.

  Then for any non-zero $R$-module homomorphism $f : M->M$, we have $ker(f) = {0}$, which means it is injective, and as $f$ maps from $M$ to $M$, it is subjective, so thus bijective. By (1), we have such $g$ exists.
]

==

#proof[
  
]

=

==

Let $A$ be any $ZZ$-module, let $a$ be any element of $A$ and let $n$ be a positive integer. Prove that the map $phi_a : ZZ\/n ZZ -> A $ given by $phi(overline(k)) = k a$ is a well defined $ZZ$-module homomorphism if and only if $n a = 0$. Prove that $"Hom"_ZZ (ZZ\/n ZZ, A) cong A_n$, where $A_n = {a in A bar n a = 0}$ (so $A_n$ is the annihilator in $A$ of the ideal $(n)$ of $ZZ$ --- cf. Exercise 10, Section 1).

#proof[
  if $n a = 0$
  $ 
    phi(overline(x) + overline(y)) = phi(x + y mod n) = (x + y mod a) a\
    phi(overline(x)) + phi(overline(y)) = (x+y) a
  $

  Because $n a$ = 0, $(x+y) a = (x + y mod n)a$

  If $phi_a$ is a valid homomorphism, then 
  
  $ phi(overline(x) + overline(y)) = phi(overline(x)) + phi(overline(y)) => (x+y)a = (x + y mod n) a => n a = 0 $
]

#proof[
  From Previous statement, we have each $phi_a : ZZ\/n ZZ -> A$ correspoinded to a set of $a$ such that $n a = 0$.
]

==

Exhibit all $ZZ$-module homomorphisms from $ZZ\/30ZZ$ to $ZZ\/21ZZ$.