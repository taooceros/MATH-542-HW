#import "../template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Math 542 HW2",
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
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof
)

#show: thm-rules


= Chinese Remainder

== 10.3.16 <10.3.16>

For any left ideal $I$ of $R$ define
$
    I M = {sum_"finite" a_i m_i | a_i in I, m_i in M}
$
to be the collection of all finite sums of elements of the form $a m$ where $a in I$ and $m in M$. This is a submodule of $M$.

For any ideal $I$ of $R$ let $I M$ be the submodule defined above. Let $A_1, ..., A_k$ be any ideals in the ring $R$. Prove that the map

$ phi : M -> M/(A_1 M) times ... times M/(A_k M) "defined by" m arrow.bar (m + A_1 M, ..., m + A_k M) $

is an $R$-module homomorphism with kernel $A_1 M sect A_2 M sect ... sect A_k M$.

#proof[
    Want to check $forall x, y in M : phi(x+y) = phi(x) + phi(y)$ and $forall x in M, r in R: phi(r x) = r phi(x)$.

    $forall x,y in M: phi(x+y) &= (x + y + A_1 M, ..., x + y + A_k M) \
        &= (x + A_1 M, ..., x + A_k M) + (y + A_1 M, ..., y + A_k M) \
        & = phi(x) + phi(y)$

    $forall r in R, x in M: phi(r x) = (r x A_1M, ..., r x A_k M) = r(x A_1 M,..., x A_k M)$ because submodule is invariant under the ring $R$.

    To become the kernel, it need to satisfy that $forall i in [1,k] : x+A_i M = A_i M$, which implies that $x in sect.big_i A_i M$.
]

== 10.3.17

In the notation of the @10.3.16, assume further that the ideals $A_1, ..., A_k$ are pairwise comaximal $(i.e. forall i != j : A_i + A_j = R)$. Prove that

$
    M/((A_1, ..., A_k) M) cong M/(A_1 M) times ... times M/(A_k M)
$

[See proof of the Chinese Remainder Theorem for rings in Section 7.6.]

#proof[
    
]