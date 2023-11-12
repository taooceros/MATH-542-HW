#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(title: "Math 542 HW7", authors: ("Hongtao Zhang",))

= 13.1

== 2

Show that $x^3 - 2x -2$ is irreducible over $QQ$ and let $theta$ be
a root. Computer $(1+theta)(1+theta+theta^2)$ and $(1+theta)/(1+theta+theta^2)$ in $QQ(theta)$.

#solution[
    $
        (1 + theta)(1 + theta + theta^2) 
            &= 1 + theta + theta^2 + theta + theta^2 + theta^3 \
            &= 1 + 2theta + 2 theta^2 + theta^3 = 1 + 2theta +2theta^2 + 2theta + 2\
            &= 3 + 4theta + 2theta^2
    $
     
    We want to find the inverse of $(1+theta+theta^2)$, thus by
    euclidean algorithm
     
    $
        x^3-2x-2       &= (x^2 + x + 1)(x-1) + (-2x - 1)\
        x^2+x+1        &= (-2x-1)(-1/2x - 1/4) + (3/4)\
                       &= (x^3-2x-2-(x^2+x+1)(x-1))(-1/2x - 1/4) + (3/4)\
        -3/4           &= (x^3-2x-2)(-1/2 x-1/4) - (x^2+x+1)((-1/2x-1/4)(x-1)+1)\
        (x^2+x+1)^(-1) &= 4/3((-1/2x-1/4)(x-1) + 1) = (-2x^2 + x + 5)/3
    $
     
    Then
     
    $
        (1+theta)/(1+theta+theta^2) = -(2 θ^3)/3 - θ^2/3 + 2 θ + 5/3 = - theta^2/3 + 2/3 theta + 1/3
    $
]


== 5

Suppose $alpha$ is a rational root of a monic polynomial in $ZZ[x]$.
Prove that $alpha$ is an integer.

#solution[
    Suppose $alpha = n/d$ where $abs(d) > 1$. The polynomial can be written as

    $
        a_n x^n + a_(n-1) x^(n-1) + ... + a_1 x + a_0
    $

    Thus

    $
        (n/d)^n + a_(n-1) (n/d)^(n-1) + ... + a_1 (n/d) + a_0 = 0 \        
    $

    $
        -(n/d)^n &= a_(n-1) (n/d)^(n-1) + ... + a_1 (n/d) + a_0 \
        &= b/d^(n-1)
    $ for some $b in ZZ$. Since $abs(d) > 1$, we have reached a contradiction.
]

= 13.4

== 3

Splitting field over $QQ$ for $x^4 + x^2 + 1$.

#solution[
    $
        x^4 + x^2 + 1 = (x^2-x+1)(x^2+x+1)
    $

    Thus we can find that it has 4 roots

    $
        (-1 - i sqrt(3))/2, (1 + i sqrt(3))/2, (1-i sqrt(3))/2, (-1 + i sqrt(3))/2
    $

    Thus we have the splitting field

    $
        QQ(sqrt(3))
    $
]

== 4

Determine the splitting field and its degree over $QQ$ for $x^6 - 4$.

#solution[
    Note that $x^6-4 = 0 => x^6 = 4 => x^6 = (root(6,4)) dot 1 = root(3,2) dot 1$.

    Thus the splitting field need to contain all the root of the polynomial, which is

    $
        QQ(root(3,2), root(3,2) zeta(6), root(3,2) zeta(6), root(3,2) zeta(6), root(3,2) zeta(6), root(3,2) zeta(6))
    $

    The degree is 6.
]


== 5

Let $K$ be a finite extension of $F$. Prove that $K$ is a splitting field over $F$ if and only if every irreducible polynomial in $F[x]$ that has a root in $K$ splits completely in $K[x]$.

#let div = $\/$

#solution[
    Denote the polynomial as $p in F[x]$.

    We know that $k$ is a splitting field of $p$, and thus $k cong F[x] div p$.

    Assume there are two roots $alpha, beta$ in $k$ such that $alpha in k$ and $beta in.not k$.
    
    We know that $F[alpha] cong F[x] div p cong F[beta]$. Thus we have an isomorphism $phi : F[alpha] cong F[beta]$. Consider the splitting field of $p$ denoted as $k$, thus we have an injective map from $F[alpha] arrow.hook k$, and $F[beta] arrow.hook k$.

    Then we consider the algebratic closure of $F$ noted as $overline(F)$. Automatically we have an isomorphism that extends $phi$ to $overline(F)$. Restricting $phi$ to $k$, we have a homomorphism $overline(phi) : k -> k$ that sends $alpha arrow.bar beta$, which means $beta in k$. This is a contradiction.

    The other direction follows as definition of splitting field.
]