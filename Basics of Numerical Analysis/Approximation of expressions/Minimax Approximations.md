# Minimax Approximations

Code implementation: `minimax.jl`

- For a function $f$ continuous in $[a,b]$ , optimal expression, polynomial of degree $n$ is: $p_{n}^\star \text{ for which } \exists \ E_{n}^\star \in  \mathbb{R}:$ 
	$$E_{n}^\star=\max_{a\leq x\leq b}|p^\star_{n}(x)-f(x)|\leq \max_{a\leq x\leq b}|p_{n}(x)-f(x)|$$
	for any $p_{n}(x)$ 
- **algorithm:** [iterative Remez algorithm](https://en.wikipedia.org/wiki/Remez_algorithm) 
- based on **[Borel equi-oscillation theorem](https://en.wikipedia.org/wiki/Equioscillation_theorem)** : a degree $n$ polynomial $p^\star_{n}$ is the optimal approximation of $f$ precisely when $(n\ + \ 2)$ distinct points $x_{i}$ exist, arranged as $a\leq x_{0}\leq x_{1}\leq\dots\leq x_{n\ + \ 1}\leq b$ for which 
	$$p_{n}^\star(x_{i})-f(x _{i})=\lambda(-1)^{i}E_{n}^\star$$ for $i=0,1,\dots,n\ + \ 1$ and $\lambda$ is a fixed value $\in [-1,1]$ 
	$\implies$ coeff. of $p_{n}(x)=\sum_{j=0}^na_{j}x^{j}$ and parameter $E_{n}$ must fulfil the system of equations :
	$$\sum_{j=0}^na_{j}x _{i}^{j}-f(x _{i})=(-1)^{i}E_{n}, \quad  i=0,1,\dots,n\ + \  1$$
	$$\sum$$


**References**
Section 1.2 in [*Computational Methods for Physicists*](https://link.springer.com/book/10.1007/978-3-319-78619-3) by Simon Širca and Martin Horvat
[3.11(i), Approximation Techniques](https://dlmf.nist.gov/3.11)  , Numerical Methods, NIST Digital Library of Mathematical Functions 
