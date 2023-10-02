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

#let tensor = $times.circle$

#let qt(x,y) = $#x\/#y$
#let div = $\/$

#show: thm-rules


#import "@preview/commute:0.1.0": node, arr, commutative-diagram



= Q1

== 10.4.10

Suppose $R$ is commutative and $N cong R^n$ is a free $R$-module of rank $n$ with $R$-module basis $e_1, ..., e_n$.

===

For any nonzero $R$-module $M$ show that every element of $M tensor N$ can be written uniquely in the form $sum_(i=1)^n m_i tensor e_i$ where $m_i in M$. Deduce that if $sum_(i=1)^n m_i tensor e_i = 0$ in $M tensor N$ then $m_i = 0$ for $i = 1, ..., n$.

#proof[
    $N cong R^n => M tensor N cong M tensor R^n cong underbrace((M tensor R) plus.circle ... plus.circle (M tensor R), n "times")$

    Because the construction is a free module, so every entries are linearly independent, so summing them is equivalent to the cartisian product.

    Therefore, if $sum_(i=1)^n m_i tensor e_i = 0$, every entries must equal to $0$, then either $m_i = 0$ or $e_i = 0$ for all $i$. However, we know that $e_i != 0$, then $m_i = 0$.
]

===

Show that if $sum m_i tensor n_i = 0$ in $M tensor N$ where $n_i$ are merely assumed to be $R$-linearly independent then it is not necessarily true that all the $m_i$ are $0$.

#proof[
    Consider the $1 tensor 2$ in the proposed Hint.

    In $qt(ZZ, 2ZZ) tensor ZZ$, we have proved that $1 tensor 2 = 0$ in last homework, but this is a counterexample for the claim above as $1!=0 in qt(ZZ,2ZZ)$.
]

== 10.4.16

Suppose $R$ is commutative and let $I$ and $J$ be ideals of $R$, so $qt(R,I)$ and $qt(R,J)$ are natrually $R$-modules.

===

Prove that every element of $R/I tensor_R R/J$ can be written as simple tensor of the form $(1 mod I) tensor (r mod J)$.

#proof[
    Assume we have $a tensor b + c tensor d in R/I tensor R/J$. By the property of tensor product, it must satisfy $a tensor b + c tensor d= a (1 tensor b) + c(1 tensor d) = (1 tensor a b) + (1 tensor c d) = 1 tensor (a b + c d)$. This is doable because $R/I$ and $R/J$ are subring of $R$.
]

===

Prove that there is an $R$-module isomorphism $qt(R,I) tensor_R qt(R, J) cong qt(R, (I+J))$ mapping $(r mod I) tensor (r' mod J)$ to $r r' mod (I + J)$.

#proof[
    To prove surjectivity, we already have every element of $R/I tensor R/J$ can be written as $(1 mod I) tensor (r mod J)$, and thus implies that $1 r' mod (I+J)$ is everything in $R div (I+J)$.

    To prove injectivity, we have the only element maps to $0$ to be the element when $r=0$ or $r' = 0$. However, each will mean they are $0$ in the tensor product.
]

= Short Exact Sequences

Let $R$ be a commutative ring. A sequence of $R$-modules

$ 0 -> N arrow.long^iota A arrow.long^p Q arrow.long 0 $

is _short exact_ if $iota : N -> A$ is an injective $R$-module homomorphism whose image is the kernel of the surjective $R$-module homomorphism $p$. Let $B$ be an $R$-module. 

==
Show that $p tensor id : A tensor B -> Q tensor B$ is still surjective and that the image of $iota tensor id$ is still its kernel.

#proof[
    We know that both $p$ and $id$ are surjective. Then we can prove that $p tensor id$ is surjective by the property of tensor product.


    Consider the following diagram:

    #align(center)[#commutative-diagram(
        node((0, 0), [$A plus.circle B$]),
        node((0, 1), [$A tensor B$]),
        node((1, 0), [$Q plus.circle B$]),
        node((1, 1), [$Q tensor B$]),
        arr((0, 0), (0, 1), [$f$]),
        arr((1, 0), (1, 1), [$tilde(f)$], label-pos: -1em),
        arr((0, 0), (1, 0), [$p cplus id$], label-pos: -2em),
        arr((0, 1), (1, 1), [$p tensor id$], label-pos: -1.5em, "dashed"),
    )]

    The kernel of $p tensor id$ will be also be the kernel of $p cplus id$ as only $0$ be sent to $0$ and the diagram commute. Because $p cplus id$ is surjective, and thus $p tensor id$ is also surjective.

    With a similar reasoning, the image of $iota$, which is the kernel of $p$ also lies in the kernel of $p tensor id$.
]

==

Now consider a short exact sequence of abelian groups $0 -> ZZ -> ZZ -> ZZ div n -> 0$ and let $B = ZZ div m$ where $n$ and $m$ are positive integers. Show that $iota tensor id$ is injective if and only if $m | n$.

#proof[
    Consider the following graph:

    #align(center)[#commutative-diagram(
        node((0, 0), $ZZ cplus ZZ div m$),
        node((0, 1), [$ZZ plus.circle ZZ div m$]),
        node((0, 2), [$ZZ tensor ZZ div m$]),
        node((1, 1), [$ZZ div n plus.circle ZZ div m$]),
        node((1, 2), [$ZZ div n tensor ZZ div m$]),
        arr((0, 0), (0, 1), [$iota cplus id$], "inj"),
        arr((0, 1), (0, 2), [$f$]),
        arr((1, 1), (1, 2), [$tilde(f)$], label-pos: -1em),
        arr((0, 1), (1, 1), [$p cplus id$], label-pos: -2em),
        arr((0, 2), (1, 2), [$p tensor id$], label-pos: -1.5em, "dashed"),
    )]

    If $iota cplus id$ is injective, then the kernel of $p tensor id$ are ${0}$. Thus, the kernel of $p tensor id$ is also ${0}$.  

    If $m | n$, then $a tensor b in ZZ div m <=> a mod m tensor b$, which means $p tensor id$ will be injective.

    If $p tensor id$ is injective, then $a tensor b <=> a mod n tensor b$, which implies that $m | n$.

]


= Tensor Proudcts of Linear Maps

Suppose that $A : V_1 -> V_2$ and $B : W_1 -> W_2$ are $k$-linear maps between $k$-linear vectors spaces. Let $"rank"(C)$ be the rank of a linear map $C$, i.e. the dimension of its image. Show that $"rank"(A tensor B) = "rank"(A) "rank"(B)$.

#proof[
    This can be done by consider the basis of image of $A$ and image of $B$. Then the image of $A tensor B$ is the tensor product of the basis of the image of $A$ and $B$, which will contains $"rank"(A)"rank"(B)$ elements.
]

= Classifying Simple Modules

==

For each positive integer $n$, find all simple $RR[ZZ div n ZZ]$-modules up to isomorphism and their endomorphism algebras. (Hint: Each simple module will be at most $2$-dimensional; think about rotations)

#proof[
    We know that rotation matrix is simple under $RR[ZZ div n ZZ]$. Then for $ZZ div n ZZ$, we just consider the rotation matrix with angle $(2pi) / n$.

    Because we have the theorem $abs(ZZ div n ZZ) = sum dim(S_i)^2/"End"(S_i)$. Because we have $dim(S_i) = 2$ for all $i$, then the dimension of the endomorphism rings must be $4$.
]

==

Recall that $HH$ is a 4-dimensional algebra over $RR$ whose elements can be written as $a+b i + c j + d k$ for some real numbers $a,b,c,d$ where $i^2 = j^2 = k^2 = -1, i j =k, j k = i, j i = -k, i k = -j, k j = - i$.

Let $Q_8 subset HH$ be the group of order $8$ which is generated by $i,j$. Its elements are ${plus.minus 1, plus.minus i, plus.minus j, plus.minus k}$. 

===

Show that there are four non-isomorphic one-dimensional $RR[Q_8]$-modules. (Note that $Q_8 div [Q_8, Q_8] cong ZZ div 2 times ZZ div 2$). 

#proof[
    An one dimensional $RR[Q_8]$ module are in the following form:

    $
        {a + b i + c j + d k | a,b,c,d in RR}
    $

    For one dimensional module, we are essentially consider the homomorphism between $Q_8 -> RR^times$, but $RR^times$ is commutative, which means it suffices to consider $Q_8 div [Q_8, Q_8] -> RR^times$, which is essentially $ZZ div 2 times ZZ div 2 -> RR^times$, which is $"Hom"(ZZ div 2, RR^times)^2$, which has size 4.

]

===

Show that $"End"_(RR[Q_8])(HH)$ is isomorphic to $HH$ as a ring.

#proof[
    We can see that $RR[Q_8]$ is isomorphic to $HH$ as a ring, and thus $"End"_(RR[Q_8])(HH) cong HH$.
]

===

Use previous one to conclude, up to isomorphism, $HH$ is the unique simple $RR[Q_8]$-module that is not one-dimensional.

#proof[
    Since we have 4 one dimensional simple module and one 4 dimensional simple module, then we have $abs(Q_8) = sum dim(S_i)^2/"End"(S_i) = 4 + 4 = 8$.

    Then we know $HH$ is the unique simple $RR[Q_8]$-module that is not one dimensional.
]

==

Show that there is a unique simple $CC[Q_8]$-module that is not one-dimensional. (Hint: It is two-dimensional, but you don't have to construct it. You can deduce its existence from fact we have shown and the four one-dimensional $CC[Q_8]$-modules that you found in the previous part.)

#proof[
    We know that $abs(Q_8) = 8$, and we have four one dimensional simple module, so the last one must be two dimensional by the formula.
]

= Maschke

Let $k$ be a field. Let $V$ be a finite-dimensional $k$-vector space. Suppose that $V$ is a $k[G]$-module where $G$ is a finite group.

==

A linear map $pi : V->V$ is called a _projection onto_ $W$ if its image is $W$ and if $pi(w) = w$ for all $w in W$. Show that, given such a map, $V$ is isomorphic (as a vector space) to $ker(pi) cplus W$.

#proof[
    By rank-nullity theorem, we have $ker(pi) = abs(V) - abs(W)$. Then we can see that $V = ker(pi) cplus W$ as long as $ker(pi)$ and $W$ are disjoint except ${0}$. However this is clear given $pi(w) = w$.
]

==

A linear map $pi : V->V$ is called $G$-equivariant if $pi (g dot v) = g dot pi(v)$ for all $g in G$. Show that if $pi$ is $G$-equivariant then its kernel and image are $k[G]$-submodules of $V$.

#proof[
    We know that $pi$ is $G$-equivariant, then $forall g in G: pi(g dot v) = g dot pi(v)$. Thus it means that $pi in "Hom"_(k[G])(V, V)$, which suggests that its kernel and image are $k[G]$-submodules of $V$.
]

==

Suppose that $pi : V->V$ is a projection onto a submodule $W$. Suppose $abs(G)$ is invertible in $k$ (this could fail for instance if $G$ has even order and $k=ZZ div 2$ since 2 is not invertible in $k$ as it coincides with $0$). Define a new function $p : V->V$ by $p(v)=1/abs(G) sum_(g in G) g dot pi(g^(-1) dot v)$. Show that $p$ is a $G$-equaiariant projection onto $W$. Conclude that $V$ is isomorphic to $W cplus ker(pi)$ as a $k[G]$-module.

#proof[
    $
        p(g' w) = 1/abs(G) sum_(g in G) g (g^(-1)g' w) = 1/abs(G) sum_(g in G) g' g'^(-1) g(g^(-1) g' w) = g' sum_(g'' in G) g'' pi(g''^(-1) w) = g' pi(w)
    $
 
    Then $p$ is $G$-equivarant projection, then $W$ and $ker(pi)$ are all $k[G]$-submodule, which implies that $V$ is isomorphic to $W cplus ker(pi)$ as a $k[G]$-module.
]

==

Conclude that $V$ is a direct sum of simple $k[G]$-modules.

#proof[
    We can make $W$ a simple $k[G]$-module, and $W$ is a direct sum of a simple module and its kernel. Then we do the same thing to the kernel. Then we can conclude that $V$ is a direct sum of simple $k[G]$-modules.
]