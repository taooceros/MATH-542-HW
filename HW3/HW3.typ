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

$ 0 -> N arrow.long^eta A arrow.long^p Q arrow.long 0 $

is _short exact_ if $eta : N -> A$ is an injective $R$-module homomorphism whose image is the kernel of the surjective $R$-module homomorphism $p$. Let $B$ be an $R$-module. 

==
Show that $p tensor id : A tensor B -> Q tensor B$ is still surjective and that the image of $eta tensor id$ is still its kernel.

#proof[
    We know that both $p$ and $id$ are surjective. Then we can prove that $p tensor id$ is surjective by the property of tensor product.

    Consider the kernel of $p tensor id$. It requires that the element be sent to $0 in Q tensor B$, and thus 
]

==

Now consider a short exact sequence of abelian groups $0 -> ZZ -> ZZ -> ZZ div n -> 0$ and let $B = ZZ div m$ where $n$ and $m$ are positive integers. Show that $eta tensor id$ is injective if and only if $m | n$.


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

===

Show that $"End"_(RR[Q_8])(HH)$ is isomorphic to $HH$ as a ring.

===

Use previous one to conclude, up to isomorphism, $HH$ is the unique simple $RR[Q_8]$-module that is not one-dimensional.

==

Show that there is a unique simple $CC[Q_8]$-module that is not one-dimensional. (Hint: It is two-dimensional, but you don't have to construct it. You can deduce its existence from fact we have shown and the four one-dimensional $CC[Q_8]$-modules that you found in the previous part.)

= Maschke

