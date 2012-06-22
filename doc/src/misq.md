\begin{eqnarray}
Var(e) &=& E e e^T \\
&=& M_2 I_n
\end{eqnarray}

\begin {eqnarray}
Cov( \mu^T e, e^T e ) &=& \mu^T E ee^T e \\
&=& \mu^T M_3 1_n
\end{eqnarray}

\begin {eqnarray}
Var( e^T e ) &=& E e^Tee^Te - (E e^Te)^2 \\
&=& n M_4 - nM_2^2
\end{eqnarray}


\begin{eqnarray}
Var(X^TX) &=& Var(2\mu^T e + e^Te) \nonumber \\
&=& 4 \mu^T Var(e) \mu + 4 Cov( \mu^T e, e^T e ) + Var( e^T e ) \nonumber \\
&=& 4 M_2 \mu^T \mu + 4 M_3 \mu^T 1_n + n M_4 - nM_2^2
\end{eqnarray}

\begin{eqnarray}
E e^T e e^T \Phi^T \Phi e  &=& E ( \sum \limits_{k=0}^n{e_k^2} ) ( \sum \limits_{i,j} { \Lambda_{i,j}e_i e_j } ) \\
&=& E (\sum \limits_{k=0}^n {e_k^2}) (\sum \limits_{k=0}^n{ \Lambda_{k,k} e_k^2 } ) \\
&=& E (\sum \limits_{k=0}^n{ \Lambda_{k,k} e_k^2 (\sum \limits_{i=0}^n {e_i^2}) } ) \\
&=&  (M_4 + (n-1)M_2^2) \sum \limits_{k=0}^n { \Lambda_{k,k} } \\ 
&=& (M_4 + (n-1)M_2^2) (n-m) \sum \limits_{k=0}^m { \phi_k^2 }
\end{eqnarray}

\begin{eqnarray}
Cov(X^TX, e^T \Phi^T \Phi e) &=& Cov( 2 \mu^T e + e^T e, e^T \Phi^T \Phi e ) \\
&=& 2 \mu^T E e e^T \Phi^T \Phi e + E e^T e e^T \Phi^T \Phi e - (E e^Te) (E e^T \Phi^T \Phi e) \\
&=& 2 M_3 \mu^T diag(\Lambda) + (M_4 + (n-1)M_2^2) (n-m) \sum \limits_{k=0}^m { \phi_k^2 } \\
& &- n(n-m) M_2^2 \sum \limits_{k=0}^m{\phi_m^2} \\
&=& 2 M_3 \mu^T diag(\Lambda) + (M_4 - M_2^2)(n-m) \sum \limits_{k=0}^m { \phi_k^2 }
\end{eqnarray}


\begin{eqnarray}
Var(e^T \Phi^T \Phi e) &=& E e^T \Phi^T \Phi e e^T \Phi^T \Phi e - (E e^T \Phi^T \Phi e)^2 \\
&=& M_4 \sum \limits_{i=1}^n {\Lambda_{i,i}^2} + M_2^2 \sum \limits_{i \neq j} {\Lambda_{i,i} \Lambda_{j,j} + \Lambda_{i,j}^2} \\
&-& \left(M_2 (n-m) \sum \limits_{k=0}^m {\phi_k^2} \right)^2 \\
&=& (M_4 - 2M_2^2) \sum \limits_{i=1}^n {\Lambda_{i,i}^2} + M_2^2 \sum \limits_{i,j} {\Lambda_{i,i} \Lambda_{j,j} + \Lambda_{i,j}^2} \\
&-& \left(M_2 \sum \limits_{i=1}^n {\Lambda_{i,i}} \right)^2 \\
&=& (M_4 - 2M_2^2) \sum \limits_{i=1}^n {\Lambda_{i,i}^2} + M_2^2 \sum \limits_{i,j} {\Lambda_{i,i} \Lambda_{j,j}} \\
&+& M_2^2 \sum \limits_{i,j} {\Lambda_{i,j}^2} - M_2^2 \sum \limits_{i,j} {\Lambda_{i,i} \Lambda_{j,j}} \\
\end{eqnarray}

