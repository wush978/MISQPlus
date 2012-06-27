# Generalized Filter

Suppose $x = (x_1, x_2, ..., x_n)^T \in \Re^n$ is a time series, the general form of finite impulse response is thus: \begin{eqnarray}
y_i = \sum \limits_{k=0}^m {\phi_k x_{i+k}}
\end{eqnarray}

Let \begin{eqnarray} 
\Phi &=& (\Phi_{i,j}) \nonumber \\
&=& \left(\begin{array}{cccc}
\phi_0 & \phi_1 & \cdots & \phi_{n-1} \\
\phi_{-1} & \phi_0 & \cdots & \phi_{n-2} \\
\vdots & \vdots & \ddots & \vdots \\
\phi_{m-n+1} & \phi_{m-n+2} & \cdots & \phi_{m}
\end{array}\right) \in \Re^{(n-m) \times n},
\end{eqnarray} where \begin{eqnarray}
\Phi_{i,j} = \phi_{i-j} = \left\{ \begin{array}{l}
\phi_{i-j} \\
0
\end{array} \right. \begin{array}{l}
\mbox{if } 0 \leq i - j \leq m \\
\mbox{otherwise}
\end{array}
\end{eqnarray}

Therefore, \begin{equation}
\Phi x = y = (y_1, y_2, ..., y_{n-m})^T.
\end{equation}

Moreover, we let \begin{eqnarray}
\Lambda &=& \Phi^T \Phi \nonumber \\
&=& (\Lambda_{i,j}) \in \Re^{n \times n},
\end{eqnarray} where \begin{eqnarray}
\Lambda_{i,j} &=& \sum \limits_{k=1}^{n-m} {\Phi_{k,i} \Phi_{k,j}} \nonumber \\
&=& \sum \limits_{k=1}^{n-m} {\phi_{k-i} \phi_{k-j}}. \label{eq:lambda-entry}
\end{eqnarray}

# Moments of filtered error

- \begin{eqnarray}
E \Phi e = 0
\end{eqnarray}
- \begin{eqnarray}
E e^T \Phi^T \Phi e &=& E e^T \Lambda e \nonumber \\
&=& E \sum \limits_{i,j=1}^{n} { \Lambda_{i,j}e_ie_j } \nonumber \\
&=& M_2 \sum \limits_{i=1}^{n} { \Lambda_{i,i} } \nonumber \\
&=& M_2 \sum \limits_{i=1}^{n} { \sum \limits_{k=1}^{n-m} {\phi_{k-i}^2 } } \nonumber \\
&=& M_2 (n-m) \sum \limits_{k=1}^m {\phi_k^2}
\end{eqnarray}
- \begin{eqnarray}
E \Phi e e^T \Phi^T \Phi e &=& \Phi E e e^T \Phi^T \Phi e. \nonumber
\end{eqnarray} Since \begin{eqnarray}
E e e^T \Phi^T \Phi e &=& E e \sum \limits_{i,j=1}^{n} { \Lambda_{i,j}e_ie_j } \nonumber \\
&=& M_3 \left(\begin{array}{c}
\Lambda_{1,1} \\
\Lambda_{2,2} \\
\vdots \\
\Lambda_{n,n}
\end{array}\right), \nonumber
\end{eqnarray} \begin{eqnarray}
E \Phi e e^T \Phi^T \Phi e &=& M_3 \Phi \left(\begin{array}{c}
\Lambda_{1,1} \\
\Lambda_{2,2} \\
\vdots \\
\Lambda_{n,n}
\end{array}\right) \nonumber \\
&=& M_3 \left(\begin{array}{c}
\sum \limits_{j=1}^n{\Phi_{1,j} \Lambda_{j,j}} \\
\sum \limits_{j=1}^n{\Phi_{2,j} \Lambda_{j,j}} \\
\vdots \\
\sum \limits_{j=1}^n{\Phi_{n-m,j} \Lambda_{j,j}}
\end{array}\right). \nonumber
\end{eqnarray} According to Eq. \ref{eq:lambda-entry}, \begin{eqnarray}
E \Phi e e^T \Phi^T \Phi e &=& M_3 \left(\begin{array}{c}
\sum \limits_{j=1}^n { \sum \limits_{k=1}^{n-m} { \phi_{1-j} \phi_{k-j}^2 } } \\
\sum \limits_{j=1}^n { \sum \limits_{k=1}^{n-m} { \phi_{2-j} \phi_{k-j}^2 } } \\
\vdots \\
\sum \limits_{j=1}^n { \sum \limits_{k=1}^{n-m} { \phi_{n-m-j} \phi_{k-j}^2 } } 
\end{array}\right) \nonumber
\end{eqnarray}
- \begin{eqnarray} 
E e^T \Phi^T \Phi e e^T \Phi^T \Phi e &=& E (\sum \limits_{i,j} { \Lambda_{i,j} e_i e_j })^2 \nonumber \\
&=& E (\sum \limits_{i,j,k,l} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) \nonumber \\
&=& E (\sum \limits_{i=j,k=l} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) + E (\sum \limits_{i=k,j=l} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) \nonumber \\
& & + E (\sum \limits_{i=l,j=k} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) - 2E (\sum \limits_{i=l=j=k} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) \nonumber
\end{eqnarray}
	- \begin{eqnarray}
E (\sum \limits_{i=j,k=l} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) &=& (M_4 - M_2^2)(\sum \limits_{i} { \Lambda_{i,i}^2 }) + M_2^2(\sum \limits_{i,j} { \Lambda_{i,i}\Lambda_{j,j} }) \nonumber   
\end{eqnarray}
	- \begin{eqnarray}
E (\sum \limits_{i=k,j=l} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) &=& (M_4 - M_2^2)(\sum \limits_{i} { \Lambda_{i,i}^2 }) + M_2^2(\sum \limits_{i,j} { \Lambda_{i,j}^2 }) \nonumber 
\end{eqnarray}
	- \begin{eqnarray}
E (\sum \limits_{i=l,j=k} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) &=& (M_4 - M_2^2)(\sum \limits_{i} { \Lambda_{i,i}^2 }) + M_2^2(\sum \limits_{i,j} { \Lambda_{i,j}^2 }) \nonumber    
\end{eqnarray}
	- \begin{eqnarray}
E (\sum \limits_{i=l=j=k} { \Lambda_{i,j}\Lambda_{k,l} e_i e_j e_k e_l }) &=& M_4 (\sum \limits_{i} { \Lambda_{i,i}^2 }) \nonumber
\end{eqnarray}
- \begin{eqnarray}
E e^T \Phi^T \Phi e e^T \Phi^T \Phi e &=& (M_4 - M_2^2)(\sum \limits_{i} { \Lambda_{i,i}^2 }) + M_2^2(\sum \limits_{i,j} { \Lambda_{i,i}\Lambda_{j,j} }) + (M_4 - M_2^2)(\sum \limits_{i} { \Lambda_{i,i}^2 }) + M_2^2(\sum \limits_{i,j} { \Lambda_{i,j}^2 }) \nonumber \\
& & + (M_4 - M_2^2)(\sum \limits_{i} { \Lambda_{i,i}^2 }) + M_2^2(\sum \limits_{i,j} { \Lambda_{i,j}^2 }) - 2   M_4 (\sum \limits_{i} { \Lambda_{i,i}^2 }) \nonumber \\
&=& (M_4 - 3M_2^2) (\sum \limits_{i} { \Lambda_{i,i}^2 }) + M_2^2 (\sum \limits_{i,j} { \Lambda_{i,i}\Lambda_{j,j} }) + 2 M_2^2 (\sum \limits_{i,j} { \Lambda_{i,j}^2 }) \nonumber \\
&=& (\sum \limits_{i} { \Lambda_{i,i}^2 }) M_4 + \left( \sum \limits_{i,j} { \Lambda_{i,i}\Lambda_{j,j} } + 2 \sum \limits_{i,j} { \Lambda_{i,j}^2 } - 3 \sum \limits_{i} { \Lambda_{i,i}^2 }\right) M_2^2
\end{eqnarray}
- \begin{eqnarray}
E e^Tee^T \Phi^T \Phi e &=& E (\sum \limits_{i}{e_i^2}) (\sum \limits_{i,j} {e_i \Lambda_{i,j} e_i e_j}) \nonumber \\
&=& E ( \sum \limits_{i,k,l} {\Lambda_{k,l} e_i^2 e_k e_l} ) \nonumber \\
&=& E ( \sum \limits_{i,k=l} {\Lambda_{k,l} e_i^2 e_k e_l} ) \nonumber \\
&=& E ( \sum \limits_{i,j} {\Lambda_{j,j} e_i^2 e_j^2} ) \nonumber \\
&=& n M_2^2 \sum \limits_{j} {\Lambda_{j,j}} + (M_4 - M_2^2) \sum \limits_{j} {\Lambda_{j,j}} \nonumber \\
&=& (M_4 + (n-1) M_2^2) \sum \limits_{j} {\Lambda_{j,j}} \nonumber 
\end{eqnarray}
- \begin{eqnarray}
& &E (\sum \limits_{i=0}^m {\phi_i e_i} )^4 \nonumber \\
&=& E \sum \limits_{i,j,k,l} {\phi_i \phi_j \phi_k \phi_l e_i e_j e_k e_l} \nonumber \\
&=& E (3 \sum \limits_{i,j} {\phi_i^2 \phi_j^2 e_i^2 e_j^2 } - 2 \sum \limits_{i} {\phi_i^4 e_i^4 }) \nonumber \\   
&=& 3 ( M_2^2 \sum \limits_{i,j} {\phi_i^2 \phi_j^2} + (M_4 - M_2^2) \sum \limits_{i} {\phi_i^4 } ) - 2 M_4 \sum \limits_{i} {\phi_i^4 }) \nonumber \\
&=& (M_4 - 3M_2^2) \sum \limits_{i} {\phi_i^4 } + 3 M_2^2 \sum \limits_{i,j} {\phi_i^2 \phi_j^2} \nonumber \\
&=& (\sum \limits_{i} {\phi_i^4 }) M_4 + 3 (\sum \limits_{i,j} {\phi_i^2 \phi_j^2} - \sum \limits_{i} {\phi_i^4 }) M_2^2 \nonumber
\end{eqnarray}



