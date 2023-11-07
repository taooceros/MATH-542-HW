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
    Since $alpha$ is a rational root of a monic polynomial in $ZZ[x]$,
    the polynomial $f(x)$ can be written as $(x-alpha)g(x)$ in $QQ[x]$.
    Write $g(x) = a_1 x^n + ... + a_(n+1)$. Then we can see that $a_1 = 1$ and $a_2 + alpha a_1, a_3 + alpha a_2 ..., a_(n+1) + alpha a_(n), alpha a_(n+1)$ are
    integers. Thus $a_(n+1)$ can be written as $beta/alpha$.
    
    Further, $alpha a_n + a_(n+1) = alpha a_n + beta/alpha = (alpha^2 a_n + beta)/alpha$ is an integer. So $alpha^2 a_n + beta$ is a multiple of $alpha$.
]

= 13.4

== 3

== 4

== 5