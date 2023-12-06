#import "@local/homework-template:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(title: "Math 542 HW9", authors: ("Hongtao Zhang",))

= 

== 14.11


Suppose $f lr((x)) in bb(Z) lr([x])$ is an irreducible quartic whose
splitting field has Galois group $S_4$ over $bb(Q)$ \(there are many
such quartics, cf. Section 6). Let $theta$ be a root of $f lr((x))$ and
set $K eq bb(Q) lr((theta))$. Prove that $K$ is an extension of $bb(Q)$
of degree 4 which has no proper subfields. Are there any Galois
extensions of $bb(Q)$ of degree 4 with no proper subfields?

#let Gal = $op("Gal")$

#solution[
  Denote the splitting field as $L$.

  We know that $Gal(L|QQ(theta))$ is a subgroup of $S_4$, and since $[QQ(theta) : QQ] = 4$, $[L:QQ(theta)] = 6$, and thus by Galois correspondence, we need to go through a index $4$ subgroup. There is only one index $4$ subgroup in $S_4$, which has no additional subgroup.

  There aren't any Galois extension of $QQ$ of degree $4$ with no proper subfield.
]

== 14.13

Prove that if the Galois group of the splitting field of a cubic
over $bb(Q)$ is the cyclic group of order 3 then all the roots of the
cubic are real.


#solution[
  The existence of complex conjugate is a order $2$ subgroup of the Galois group, which is impossible if the Galois group is $Z slash 3$.
]

= 14.16

== 

Prove that $x^4 minus 2 x^2 minus 2$ is irreducible over $bb(Q)$. 

#solution[
  By Eisenstein's criterion, $p=2$ divides each $a_i$ for $i<n$ while $p^2$ does not divides $2$. Thus $f$ is irreducible.
]

==

Show the roots of this quartic are
$ alpha_1 eq sqrt(1 plus sqrt(3)) #h(2em) & alpha_3 eq minus sqrt(1 plus sqrt(3))\
alpha_2 eq sqrt(1 minus sqrt(3)) #h(2em) & alpha_4 eq minus sqrt(1 minus sqrt(3)) dot.basic $

#solution[
  $
    x^4 - 2x^2 - 1 &= 3\
    (x^2 - 1)^2 &= 3\
    x^2 - 1 &= plus.minus sqrt(3)\
  $

  Thus the claim follows.
]

==

Let $K_1 eq bb(Q) lr((alpha_1))$ and $K_2 eq bb(Q) lr((alpha_2))$.
Show that $K_1 eq.not K_2$, and
$K_1 sect K_2 eq bb(Q) lr((sqrt(3))) eq F$. 

#solution[
  $K_1$ cannot be equal to $K_2$ because $K_1$ is all real, while $K_2$ is complex.
]

==
Prove that
$K_1 comma K_2$ and $K_1 K_2$ are Galois over $F$ with
$upright(G a l) lr((K_1 K_2 slash F))$ the Klein 4-group. Write out the
elements of $"Gal" lr((K_1 K_2 slash F))$ explicitly. Determine all the
subgroups of the Galois group and give their corresponding fixed
subfields of $K_1 K_2$ containing $F$.

$
  
$

== 
Prove that the splitting
field of $x^4 minus 2 x^2 minus 2$ over $bb(Q)$ is of degree 8 with
dihedral Galois group.