#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Math 542 HW2",
  authors: ("Hongtao Zhang",),
)

#show: thmrules

#let tensor = $times.circle$

#let qt(x,y) = $#x\/#y$
#let div = $\/$



#import "@preview/commute:0.1.0": node, arr, commutative-diagram

#let Wedge = $Lambda$
#let wedge = $and$


= Simple wedges

Let $V$ be a finite dimensional $k$-vector space where $k$ is a field.

==

Say that $alpha in Wedge^n V$ is _divisible_ by $v in V$ if there is some $beta in Wedge^(n-1) V$ so that $alpha = beta wedge v$. Show that $alpha$ is divisible by $v in V$ if and only if $alpha wedge v = 0$. Conclude that the set of vectors $v in V$ that divide $alpha$ is a subspace.

#solution[
    If $alpha$ is divisible by $v in V$, then exists $beta$ such that $alpha = beta wedge v$. Thus $alpha wedge v = beta wedge v wedge v = 0$

    If $alpha wedge v = 0$,

    We can write $alpha$ as linear combination of basis in $Wedge^n V$, where $alpha wedge v = 0$ implies $v wedge cal(e)_i = 0$ for all $cal(e)_i$. Since all basis are simple, we can find some $beta$ such that $e_i = v wedge beta$.

    $
        cal(e)_i wedge v = 0 <=> (a_1 e_1 wedge ... wedge a_n e_n) wedge (b_1 e_1 + ... + b_k e_k ) = 0 \
        <=> a_1 e_1 wedge ... wedge a_n e_n wedge b_1 e_1 + ... + a_1 e_1 wedge ... wedge a_n e_n wedge b_k e_k = 0 \
    $

    Since $e_i wedge e_i = 0$

    $
        a_1 e_1 wedge ... wedge a_n e_n wedge b_1 e_1 + ... + a_1 e_1 wedge ... wedge a_n e_n wedge b_k e_k = 0 \
        <=> a_1 e_1 wedge ... wedge a_n e_n wedge b_(n+1) e_(n+1) + ... + a_1 e_1 wedge ... wedge a_n e_n wedge b_k e_k = 0 \
    $

    Because these wedges are linearly independent, we have $a_1a_2...a_n b(n+1), a_1a_2...a_n b_k = 0$. Since $a_1a_2...a_n$ is not zero, we have $b_(n+1) = ... = b_k = 0$. Thus $alpha = beta wedge v$ where $beta_i = 1/beta_(n-1  ) a_1 e_1 wedge ... wedge a_(n-1) e_(n-1)$. By taking linear combination of $beta_i$ we will get the desired $beta$.

    The conclusion follows if we consider the map $phi_alpha$, where the set divide $alpha$ is its kernel. This map is automatically linear and thus its kernel must be a subspace.
]

==

Given nonzero $alpha in Wedge^n V$ consider the map $phi_alpha : V -> Wedge^(n+1) V$ where $phi_alpha(v) = v wedge alpha$. The element $alpha$ is called simple if there are vectors $v_1, ..., v_n in V$ so that $alpha = v_1 wedge ... wedge v_n$. Show that $alpha$ is simple if and only if the kernel $phi_alpha$ has dimension $n$.

#solution[
    If $alpha$ is simple, then the argument in the last question shows that the kernel of $phi_alpha$ has dimension $n$.

    If the kernel of $phi_alpha$ has dimension $n$, then there exists $v_1, ..., v_n$ such that $v_1 wedge ... wedge v_n$ is in the kernel of $phi_alpha$. Consider the kernel of $phi_alpha$.

    $
        v wedge v_1 wedge ... wedge v_n = 0
    $

    From the previous quesiton we can see that this implies $v$ is divisible by $v_1 wedge ... wedge v_n$. Thus exists some $beta in Wedge^(n-1)V$ such that $alpha = beta wedge v$.

]

==

Let $d := dim V$. Show that every element of $Wedge^(d-1) V$ is simple.

#solution[
    Because we only have one element in $Wedge^d V$, which means that the homomorphism $phi_alpha$ must has kernel of dimension $d-1$. Thus $alpha$ is simple.
]

= Plucker

==

#proof[
    If $a$ is simple, then $a = e_i wedge e_j => e_i wedge e_j wedge e_i wedge e_j = 0$.

    If $a wedge a = 0$
]

==

#proof[
    $alpha$ is simple if and only if $alpha wedge alpha = 0$.

    We have 

    $
        (sum_(1<=i<j<d) c_(i j) e_i wedge e_j) wedge (sum_(1<=i<j<d) c_(i j) e_i wedge e_j) = 0
    $

    Then we consider the coefficient of $e_i wedge e_j wedge e_k wedge e_l$.

    We will have $c_(i j) c_(k l) - c_(i k) c_(j l) + c_(i l) c_(j k) = 0$. Since the basis are linearly independent, we need the coefficient to be $0$ to make $alpha wedge alpha = 0$.

    The converse follows the same logic.
]

==

#proof[
    $
        v_1 wedge v_2 &= (v_11 e_1 + v_12 e_2 + ... + v_(1d) e_d) wedge (v_21 e_1 + v_22 e_2 + ... + v_(2d) e_d) \
            &= (v_11 v_22 - v_21v_12) e_1 wedge e_2 + (v_11 v_23 - v_13 v_32) e_1 wedge e_3 + ... + (v_(1,d-1) v_(2,d) - v_(2,d-1)v_(1 d)) e_(d-1) wedge e_d \
            &= sum_(i<j) A_(i j) e_i wedge e_j
    $

    As $v_1 wedge v_2$ is simple, the claim follows.
]

= Dicyclic groups

==

#solution[
    $a^(2n) = e^((2pi i)/(2n)) = id$

    $j^4 = (-1)^4 = id$

    $a^n j^(-2)= e^(pi i) j^(-2) = -1 dot j^(-2) = -1 dot j^2 = -1 dot -1 = 1$

    $
        j^(-1) a j a 
            &= j^3 (cos(pi/n) + sin(pi/n)i) j (cos(pi/n) + sin(pi/n)i) \
            &= (j^3 cos(pi/n) - j^2 i j sin(pi/n))(j cos(pi/n) - i j sin(pi/n)) \
            &= (cos(pi/n)^2 - j^2 i j^2 sin(pi/n)cos(pi/n) -j^3 i j cos(pi/n)sin(pi/n)  + j^2 i j i j sin(pi/n)^2 ) \
            &=cos(pi/n)^2 -sin(pi/n)cos(pi/n)(j^2 i j^2 + j^3 i j) + sin(pi/n)^2 j^2 i j i j \
            &=cos(pi/n)^2 -sin(pi/n)cos(pi/n)(i - i) + sin(pi/n)^2 j^2 i j i j \
            &=cos(pi/n)^2 + sin(pi/n)^2 j^2 i j i j \
            &=cos(pi/n)^2 + sin(pi/n)^2 \
            &= 1
    $
]

==

#solution[
    #let Dic(n) = $"Dic"_(#n n)$

    #let end(a) = $"End"(#a)$

    Assume we have a submodule $M subset HH$.

    Then $M$ must be invariant under $RR[Dic(4)]$.

    However, $i,j,k$ all lies in #Dic(4), which means that $M$ must be invariant under $RR[i,j,k]$. Thus $M$ must be the whole $HH$.

    Thus $HH$ is simple.

    The $end(HH)$ is all the $RR[Dic(4)]$-homomorphism from $HH$ to $HH$.

    $
        forall r in RR[Dic(4)] : f in end(HH) : f(r h) = r f(h) \
    $

    Thus the homomorphism must be invariant under multiplication of $i,j,k$, which means as an homomorphism it needs to commute with multiplication of $i,j,k$, which means it is isomorphisc to the center of $HH$.
]

==

#solution[
    After quotient out $angle.l plus.minus 1 angle.r$, $-1 = 1$ in the resulting group.

    So $j^2 = 1$, $a^n = 1$, $(j a)^2 = id$. Thus by mapping $a arrow.bar r, j arrow.bar s$, we have a isomorphism.
]

==

#solution[
    Note that the same argument in part (2) showing $HH$ is simple also applies here, because for all odd $k$, $i,j,k$ (the quaternion $k$) lies in the image of $phi.alt_k$.


]

==

#solution[

]