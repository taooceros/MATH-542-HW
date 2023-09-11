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

  Consider the zero divisor $r_1, r_2 in R$. We have $r_1, r_2 != 0 and r_1 r_2 = 0$. Then consider any element $m in M$, $r_2 r_1 m = 0 => r_1 m in tor(M)$. Then it suffices to show that $r_1 m != 0$.

  However, if $r_1 m = 0$, then $m in tor(M)$, which also satisfy the requirement.

]