# Exercise Session 1
## 1
Let us assume that we are given the sets $A = {1,2,3}$ and $B = {2,3}$.

### A Does $A \subseteq B$ hold true?
No

### B Does $B \subseteq A$ hold true?
Yes

### C In what relation stands B with respect to A?

> A relation from a set A to a set B is a subset of A×B. Hence, a relation R consists of ordered pairs (a,b), where a∈A and b∈B. If (a,b)∈R, we say that is related to , and we also write aRb.

### D Find the set $A \cup B$.
${1,2,3}$

### E How does one call $A \cup B$?
Union.

### F Find the set $A \cap B$.
${2,3}$

### G How does one call $A \cap B$?
Intersection.

### H Find the set $A \times B$.
```
λ>[(x,y) | x <- a, y <- b]
[(1,2),(1,3),(2,2),(2,3),(3,2),(3,3)]
```

### How does one call $A \times B$?
Cartesian product.

### J Find $P(B)$ the power set of B.
`fromList [fromList [],fromList [2],fromList [2,3],fromList [3]]`

### K If E is some finite set, what is the cardinality of $P(E)$? That is , how many elements does $P(E)$ hove?
$2^{|E|}$

## 2
Formalize the following informal statements by using predicate logic.

### A There exists a real number x such that x + x is greater than 8.
$\exists x \in \R : x + x > 8$

### B Every real number x is the double of some real number y.
$\forall x \in \R, \exists y \in \R : x = 2y$

### C All natural numbers are positive.
$\forall x \in \N, x > 0$

## 3
Consider the sets $C = {1,2,17,484}$ and $D = {x,y,z}$ and consider the sets of pairs $R = {(1,x),(2,y),(17,y),(17,x)}$.

### A Does R encode a function (from C to D)?
> In mathematics, a function from a set X to a set Y assigns to each element of X exactly one element of Y.

Seeing as 17 how two values and 484 has no value no.

### B Does R encode a relation (among C and D)?

### C Does $R \cup {484}$ encode a relation (among C and D)?

### D Let $X\Y$ denote the elements of X not present in Y. Wit this, does $R\{(17,x)}$ encode a function (from C to D)? If so, is the function total or partial?
It is now a function seeing as 17 now only has a single value, but partial as 484 still has no value.

## 4
Prove by induction on k that

$1 + \sum_{i=1}^x(2i+1) = (k+1)^2$

For all $k \geq 1$.

Base case $k=1$

Start by looking at the right side

$1 + \sum_{i+1}^1(2i + 1) = 1 + (2 * 1 + 1) = 4$

Then the left side

$(1+1)^2=4$

Now for the induction step

$1 + \sum_{i=1}^{k+1}(2i+1) = (k+2)^2$

$1 + (2 * 1 + 1) +...+ (2 * k + 1) + (2 * (k+1) + 1) = k^2 + 4k + 4$

Assume that k is proven

$(k+1)^2 + (2 * (k+1) + 1) = k^2 + 4k + 4$

$k^2 + 2k + 1 + 2k + 2 + 1 = k^2 + 4k + 4$

$k^2 + 4k + 4= k^2 + 4k + 4$

$\blacksquare$

# 5
Using the formula form 1 (k), compute first the cardinality of $P(P(B))$ where $B = {2,3}$ as in Exercise 1. Afterwards, compute $P(P(B))$ itself and check whether the cardinality of your answer matches the cardinality obtained in the farst part of the exercise.

$2^{2^2} = 16$

```
λ>powerSet $ powerSet b
fromList [ fromList []
         , fromList [ fromList [] ]
         , fromList [ fromList []
                    , fromList [2] ]
         , fromList [ fromList []
                    , fromList [2]
                    , fromList [2,3] ]
         , fromList [ fromList []
                    , fromList [2]
                    , fromList [2,3]
                    , fromList [3] ]
         , fromList [ fromList []
                    , fromList [2]
                    , fromList [3] ]
         , fromList [ fromList []
                    , fromList [2,3] ]
         , fromList [ fromList []
                    , fromList [2,3]
                    , fromList [3] ]
         , fromList [ fromList []
                    , fromList [3] ]
         , fromList [ fromList [2] ]
         , fromList [ fromList [2]
                    , fromList [2,3] ]
         , fromList [ fromList [2]
                    , fromList [2,3]
                    , fromList [3] ]
         , fromList [ fromList [2]
                    , fromList [3] ]
         , fromList [ fromList [2,3] ]
         , fromList [ fromList [2,3]
                    , fromList [3] ]
         , fromList [ fromList [3] ] ]

λ>length $  powerSet $ powerSet b
16
```
