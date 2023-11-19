#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(title: "Math 542 HW7", authors: ("Hongtao Zhang",))


= Factorization of Cyclotomic Polynomials

Let $l$ be a prime and let $Phi_l (x) = (x^l - 1)/(x-1) = x^(l-1) + x^(l-2) ... + x + 1 in ZZ[x]$ be the $l^"th"$ cyclotomic polynomial, which is irreduciable in $ZZ[x]$. This exercise determines the factorization of $Phi_l(x)$ modulo $p$ for any prime $p$. Let $zeta$ denote any fixed primitive $l^("th")$ root of unity.

== 

Show that $p=l => Phi_l (x) = (x-1)^(l-1) in FF_l[x]$

#solution[
    $
        (x-1)^(l-1) = sum_(i=0)^(l-1) binom(l-1,i) x^i (-1)^(l-1-i)
    $

    Consider each binomial coefficient $binom(l-1,i)$ modulo $l$. Since $l$ is prime, $(l-1)! equiv -1 mod n$.

    $
        binom(l-1,i) = ((l-1)!)/((l-1-i)!i!) \
        <=> binom(l-1,i)(l-1-i)!i! equiv (l-1)! equiv -1 mod l #h(1em) ("Wilson Theorem")\
        <=> binom(l-1,i) equiv - 1/((l-1-i)!i!) mod l
    $
]

== <q8b>

Suppose $p!=l$ and let $f$ denote the order of $p mod l$, i.e. $f$ is the smallest power of $p$ with $p^f equiv 1 mod l$. Use the fact that $FF^times_(p^n)$ is a cyclic group to show that $n=f$ is the smallest power $p^n$ of $p$ with $zeta in FF_(p^n)$. Conclude that the minimal polynomial of $zeta$ over $FF_p$ has degree $f$.

#solution[
    Since $FF^times_p^n$ is a cyclic group, and $zeta$ is a $l$-th primitive root of unity, for $zeta$ to be in $FF_p^n$, we must have some element that has order $l$. Therefore $n=f$ is the smallest power of $p^n$ of $p$ with $zeta in FF_p^n$ by construction.
]

#solution[
    Because we have the minimum extension of $zeta$ to be in $FF_p^n$, which is a degree $n$ extension, the minimal polynomial of $zeta$ over $FF_p$ has degree $n = f$.
]

==

Show that $FF_p (zeta) = FF_p (zeta^a)$ for any integer $a$ not divisible by $l$.
[Hint:]

#solution[
    One direction, it suffices to check that $zeta^a$ can be generated by $zeta$, which is obvious.

    The other direction suffices to check that $zeta$ can be generated by $zeta^a$, which follows from the hint that $zeta=(zeta^a)^b$ where $b$ is the multiplicative inverse of $a mod l$.
]


Conclude using (@q8b) that, in $FF_p [x]$, $Phi_l (x)$ is the product of $(l-1)/f$ distinct irreducible polynomials of degree $f$.


#solution[
    Since all primitive roots of unity have $f$-degree minimal polynomial, and all other roots of unity are generated by primitive roots of unity, we have that $Phi_l(x)$ is the product of $(l-1)/f$ distinct irreducible polynomials of degree $f$.
]

==

In particular, prove that, viewed in $FF_p [x]$, $Phi_7(x) = x^6 + x^5 + ... + x + 1$ is $(x-1)^6$ for $p=7$, a product of distint linear factor for $p equiv 1 mod 7$, a product of $3$ irreducible quadratics for $p equiv 6 mod 7$, a product of 2 irreducible cubics for $p equiv 2,4 mod 7$, and is irreducible for $p equiv 3,5 mod 7$.

#solution[

]

=

==

Let $phi$ denote the Frobenius map $x arrow.bar x^p$ on the finite field $FF_p^n$ as in the previous exercise. Determine the rational canonical form over $FF_p$ for $phi$ considered as an $FF_p$-linear transformation of the $n$-dimensional $FF_p$-vector space $FF_p^n$.

#solution[

]

==

Let $phi$ denote the Frobenius map $x arrow.bar x^p$ on the finite field $FF_p^n$ as in the previous exercise. Determine the Jordan canonical form (over a field containing all the eigenvalues) for $phi$ considered as an $FF_p$-linear transformation of the $n$-dimensional $FF_p$-vector space $FF_p^n$.


= Wedderburn's Theorem on Finite Division Rings

The exercise outline a proof of Wedderburn's Theorem that a finite division ring $D$ is a field.

==

Let $Z$ denote the center of $D$. Prove that $Z$ is a field containing $FF_p$ for some prime $p$. If $Z = FF_q$ prove that $D$ has order $q^n$ for some integer $n$.

#solution[
    Because we know that the center of $D$ is finite and commutative, and thus is a finite field. Further, we know that any finite field containing some $FF_p$ for some prime $p$.

    We can view $D$ as additive group, and thus $Z$ is the center of $D$,so the order of $D$ divides the order of $Z$.
]

==

The nonzero elements $D^times$ of $D$ form a multiplicative group. For any $x in D^times$ shows that the elements of $D$ which commute with $x$ form a division ring which contains $Z$. Show that this division ring is of order $q^m$ for some integer $m$ and that $m < n$ if $x$ is not an element of $Z$.

#solution[
    Since $Z$ is the center, so all elements of $D^times$ commutex with $Z$ and thus form a division ring contains $Z$.
]

==

Show that the class equation for the group $D^times$ is

$
    q^n-1=(q-1) + sum_(i=1)^r (q^n -1)/(abs(C_D^times (x_i)))
$

where $x_i$ are representatives of the distinct conjugacy classes in $D^times$ not contained in the center of $D^times$. Conclude that for each $i$, $abs(C_D^times (x_i))=q^(m_i)-1$ for some $m_i < n$.

==

Prove that since $(q^n-1)/(q^m_i = 1) = abs(D^times : C_D^times (x_i))$ is an integer then $m_i$ divides $n$. Conclude that $Phi_n (x)$ divides $(x^n-1)/(x^(m_i)-1)$ and hence that the integer $Phi_n (q)$ divides $(q^n-1)/(q^(m_i)-1)$ for $i=1,2,...,r$.

==

Prove that $Phi_n (q) = product_(zeta "primitive") (q-zeta)$ divides $q-1$. Prove that $abs(q-zeta) > q-1$ (complex absolute value) for any root of unity $zeta != 1$. [note that $1$ is the closest point on the unit circle in $CC$ to the point $q$ on the real line]

Conclude that $n=1 <=> D=Z$.

= Dirichlet's Theorem

==

#image("13.6.14.png")

==

#image("13.6.15.png")

==

Let $a in ZZ$. Show that if $p$ is an odd prime dividingg $Phi_m (a)$ then either $p$ divides $m$ or $p equiv 1 mod m$.

==

Prove there are infinitely many primes $p$ with $p equiv 1 mod m$.