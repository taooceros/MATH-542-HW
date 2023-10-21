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

#let proj = $op("proj")$

#solution[
    We know that $det(A)$ is defined by the coefficient of $A e_1 wedge ... A e_n = v_1 wedge ... wedge v_n = det(A) e_1 wedge ... wedge e_n$.

    Then we consider $A_(i j)$ by seeing that it is the coefficient of $e_1 wedge ... wedge e_n$ after we replace $v_1 wedge ... v_i wedge ... wedge v_n$ with $v_1 wedge ... wedge e_j wedge ... wedge v_n$.

    Consider a matrix $B_(i j)$ which is the matrix after removing the $i$-th row and $j$-th column of $A$.

    Now we consider the exterior basis removing $e_i$.

    $
      B_(i j) e_1 wedge ... wedge B_(i j) e_(j-1) wedge B_(i j) e_(j+1) wedge ... wedge e_n = A_(i j) e_1 wedge ... wedge e_(j-1) wedge e_(j+1) wedge ... wedge e_n \
      = w_1 wedge ... wedge w_(j-1) wedge w_(j+1) wedge ... wedge w_n
    $

    where $w_i = v_i$ projecting to the subspace orthogonal to $e_i$.

    Note that

    $
      e_j wedge (w_1 wedge ... wedge w_(j-1) wedge w_(j+1) wedge ... wedge w_n) = e_j wedge ((v_1 - proj_(e_i) v_i) wedge ...) \
    $

    Then we can see the projection terms just become $0$ after wedging with $e_j$.

    $
      e_j wedge (w_1 wedge ... wedge w_(j-1) wedge w_(j+1) wedge ... wedge w_n) =
      e_j wedge v_1 wedge ... wedge v_(j-1) wedge v_(j+1) wedge ... wedge v_n
    $

    which is what we want to show.
]


==

#solution[
  This can be done easily by seeing that $v_i = sum_(j) a_(i j) e_j$, then by lienarity of exterior product the result follows.
]

==

#let adj = $op("adj")$

#solution[
  Consider the first row times first column of $A adj(A)$. We can see that it is $sum (-1)^(1+j) a_(1 j) A_(1 j) = det(A)$ from part (2).

  Consider the multiplication at row 2 and column 1.

  The result is
  $
    sum_j (-1)^(2+j) a_(2 j) A_(1 j)
  $

  This is 0 because with (1) we have showed that $A_(i j)$ is the coefficient of $e_1 wedge ... wedge e_n$, but when adding the linear combination from another row, we essentially recover one of the vector. Therefore the wedge product become $0$.

  Therefore $A adj(A) = det(A) I$. The reason for the commutativity is due to that we only have non-zero scalar multiplication and addition in the diagonal, which is commutative.
]


= Cayley-Hamilton

#solution[
  Consider how $B$ looks like

  $
    B = mat(A - a_(11), -a_(12), ..., -a(1n);
      -a_(21), A-a_(22), ..., -a(2n);
      dots.v, dots.down;
      -a_(n_1), -a_(n_2), ..., A-a_(n_n))
  $

  We can see that $sum^n_(j=1) b_(i j) e_j = A e_i - sum_(j=1)^n a_(1n) e_j = 0$.

  Consider the adjugate matrix $C$ of $B$.

  We know that $C B = det(B) I$, which means $forall k : sum_(i=1)^n c_(k i) b_(i j) = delta_(k j) det(B)$.

  Consider

  $
    sum_j sum_j c_(k i) b_(i j) e_j = sum_j delta_(k j) det(B) e_j = sum_i c_(k i) 0 = 0
  $

  Thus $det(B) = 0$.

  We can see that a matrix defined by entries $i$ and $j$ with $delta_(i j) x - a_(i j)$ will be sent to $B$ in $R'$.
]

= Free Module

#solution[
  It suffices to consider $R^(m+1) -> R^m$. Assume $phi: R^(m+1) -> R^m$ is the injection, and let $psi: R^m -> R^(m+1)$ be the projection.

  Consider $A = psi compose phi$.

  Consider the minimal degree nonzero polynomial such that $p(A) = 0$. Since $A$ is injective, we have the $n$-th degree non-zero when applying $A$ as $x$. Thus, by Cayley-Hamilton we have the constant term non-zero.

  However, consider applying $p(A)$ to $(0,...,0,1) in R^m+1$, the result will not be $0$ because the final term is always $0$, while the constant is non-zero, which means the result is non-zero, which is a contradiction.

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

