#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Math 542 HW4",
  authors: ("Hongtao Zhang",),
)

#let Wedge = $Lambda$
#let wedge = $and$

= Adjugates and Laplace

==

#solution[
    $
      Wedge^n A (e) = v_1 wedge dots wedge v_n = det(A) e\
      A_(i j) = v_1 wedge ... wedge e_j wedge ... wedge v_n
    $
]


= Cayley-Hamilton

= Free Module

#solution[
  It suffices to consider $R^(m+1) -> R^m$. Assume $phi: R^(m+1) -> R^m$ is the injection, and let $psi: R^m -> R^(m+1)$ be the projection.

  Consider $A = psi compose phi$.

  Consider the minimal degree nonzero polynomial such that $p(A) = 0$. Since both $phi$ and $psi$ are injection, then $A$ is an injection. However we also know that $forall x in R^(m+1) : A x = (..., 0)$ because it has to apply $psi$. Because $A x = 0$ if and only if $x = 0$, but for $v = (0,...,0,1)$, $A v = 0$ where $v!=0$, which is a contradiction.
]


= Commutator subgroups of matrix group

==

#let SL = "SL"
#let GL = "GL"

#solution[
  This is a direct result of smith normal form.
]

==

#solution[
  Because all elementary row/column operations matrix can be written as a $E_(i j)(a)$. Since every matrix in $SL(n,k)$ can be written as identity times some $E_(i j)(a)$, we can conclude that $SL(n,k)$ is product of $E_(i j )(a)$.
]

==

#solution[
  
  Consider the commutator of $mat(a,0;0,a^(-1))$ and $mat(1,b;0,1)$.

  $
    mat(a,0;0,a^(-1))mat(1,b;0,1)mat(a^(-1),0;0,a)mat(1,-b;0,1) = mat(a, a b; 0, a^(-1))mat(a^(-1), -a^(-1)b; 0, a) = mat(1, -b +a^2 b; 0, 1)
  $

  Then for any elementary matrix we just need to have $-b + a^2 b = a'$ so $E_(i j)(a') = A B A^(-1) B^(-1)$ for some $A, B$.
]


==

This can be done by induction on $n$ with the previous question.

= Determinats of exterior and tensor powers

