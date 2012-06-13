# Notations

- $X = (x_1, x_2, ..., x_n)^T$ is a $n$-dim random vector of observed time series.
- $\mu = (\mu_1, \mu_2, ..., \mu_n)^T \in \Re^n$ is the unobserved truth.
- $e = (e_1, e_2, ..., e_n)^T$ is a $n$-dim random vector which represents the random error.

# Observations

We assume the observed time series is a sample from: \begin{eqnarray} \label{eq:model-obs}
X = \mu + e.
\end{eqnarray}

# Errors

We assume the error $e$ follows:

- $e_1, e_2, ..., e_n$ are i.i.d. distributed. For convenience, we denote the distribution as $\varepsilon$.
- $E \varepsilon = 0$
- $E \varepsilon^k \mbox{ are existed and bounded for }k=2,3,4$

# Moments

Suppose $E \varepsilon^k = M_k$, we have

- $E e^Te = n M_2$
- \begin{eqnarray}
E ee^Te &=& E \left(\begin{array}{c}
e_1 \\
e_2 \\
\vdots \\
e_n
\end{array}\right) \sum \limits_{i=1}^n{e_i^2} \nonumber \\
&=& M_3 1_n
\end{eqnarray}
- \begin{eqnarray}
E e^Tee^Te &=& E \left(\sum \limits_{i=1}^n{e_i^2}\right)^2 \nonumber \\
&=& E\left(\sum \limits_{i=1}^n{e_i^4} + \sum\limits {i \neq j} {e_i^2e_j^2}\right) \nonumber \\
&=& n M_4 + n(n-1) M_2^2
\end{eqnarray}
