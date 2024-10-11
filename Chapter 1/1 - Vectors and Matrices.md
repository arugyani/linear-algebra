# 1. Vectors and Matrices

## Table of Contentsß

[1.1: Linear Combinations of Vectors](#11-linear-combinations-of-vectors)

- [Lines & Planes](#lines--planes)

[1.2: Lengths and Angles from Dot Products](#12-lengths-and-angles-from-dot-products)

[1.3: Matrices and Column Spaces](#13-matrices-and-column-spaces)

[1.4: Matrix Multiplication and $A = CR$](#14-matrix-multiplication-and)

## 1.1: Linear Combinations of Vectors

The idea of linear algebra is in two _vector_ operations:

- adding vectors: $v + w$
- multiplying vectors by scalars (e.g. $c$ and $d$): $cv$ and $dw$

When we combine these operations, we get a **_linear combination_**.

$$
\text{Linear combination} \qquad cv + dw = c \begin{bmatrix}1\\1\end{bmatrix} + d \begin{bmatrix}2\\3\end{bmatrix} = \begin{bmatrix}c + 2d\\c + 3d\end{bmatrix}
$$

Linear combinations are super important. Sure, sometimes we only need a particular combination, like the combination where $c = 2$ and $d = 1$ that produces $cv + dw = (4,5)$. But other times we want _all the combinations_ of $v$ and $w$. Sometimes, these combinations produce the **zero vector**, these combinations have special importance (question: idk what yet though).

Note: $0v + 0w$ is always the zero vector (question: what does this mean)

### Lines & Planes

> The vectors $cv$ lie along a line.

This statement can be a bit confusing.

First, why do we say "vectors" in plural when talking about $cv$? Here, $c$ is a _scalar_, meaning it can be any real number. When we multiply the vector $v$ by different values of $c$, it changes $v$, giving us different vectors, e.g.

$$
c \in \R\\
v = \begin{bmatrix}1\\1\end{bmatrix}\\
\therefore \qquad cv = \begin{bmatrix}c\\c\end{bmatrix}\\
$$

Now, why do we say that vectors $cv$ lie along a line? Let's reword the last thing we covered to put it in the context of a line (although it doesn't change the meaning!)...

> When we multiply the vector $v$ by different values of $c$, **it stretches or shrinks $v$**, resulting in different vectors.

Let's say that our vector $v$ represents a point in space starting from the origin $(0,0)$. When we multiply this vector by a scalar $c$, we change its length, but not its direction. Below is a visualization of this to show you what that means:

![scalar_multiplication](https://github.com/user-attachments/assets/e38ede71-b5e7-4fb1-b960-c69c6a076928)

## 1.2: Lengths and Angles from Dot Products

## 1.3: Matrices and Column Spaces

## 1.4: Matrix Multiplication and $A = CR$
