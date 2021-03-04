---
title: The Note of Lindblad Equation
---

$$
\begin{align*}
\newcommand{\Ha}{\hat{H}}
\end{align*}
$$

# The Fermi Golden rule

The Spontaneous emissions



# The System and bath model

Base on [A simple derivation of Lindblad equation](https://doi.org/10.1590/S1806-11172013000100003)
Consider a System interact with a bath, the Hamiltonian of system is $\hat{H}_S$ and the bath is $\hat{H}_B$.
And the total Hamiltonian is 
$$
\hat{H}=\hat{H}_S \otimes \hat{1}_{B} + \hat{1}_{S} \otimes \hat{H}_B + \alpha\hat{H}_{SB}
$$ {#eq:eq1}

Where $\hat{H}_{SB}$ is
$$
\hat{H}_{SB} = \hbar(\hat{S}^{\dagger}\hat{B}+\hat{S}\hat{B}^{\dagger}).
$$ {#eq:eq2}

# The Cavity QED

这个是基于该[知乎](file:///C:/Users/fangruihuan/Zotero/storage/G7SQNMR2/139761346.html)的笔记

The Halmiltonian is 
$$
\hat{H} = \hbar \omega \hat{\sigma}^{\dagger} \hat{\sigma} + 
\sum_{\vec{k},\alpha}\hbar\omega_{\vec{k},\alpha}\hat{a}^{\dagger}_{\vec{k},\alpha}\hat{a}_{\vec{k},\alpha} - \sum_{\vec{k},\alpha}\hbar(g_{\vec{k},\alpha}\hat{\sigma}^{\dagger} \hat{a}_{\vec{k},\alpha}+g^*_{\vec{k},\alpha}\hat{\sigma} \hat{a}^{\dagger}_{\vec{k} ,\alpha} )
$$


Here the $\alpha$ is the polarization mode.

考虑态演化为
$$
\mid\psi(t)\rangle = c(t)e^{-i\omega t} \mid{2}\rangle\mid{0}\rangle + \sum_{\vec{k},\alpha}c_{\vec{k},\alpha}(t)e^{-i\omega_{k}t}\mid{1}\rangle\mid{1_{\vec{k},\alpha}}\rangle
$$

初始时刻我们假设全部处于激发态

$c(0)=1; c_{\vec{k},\alpha}(0)=0$

带入薛定谔方程
$$
\frac{\partial}{\partial t}\mid{\psi(t)}\rangle	 = -\frac{i}{\hbar}\hat{H}\mid{\psi(t)}\rangle
$$

$$
\begin{equation}
\begin{aligned}
LHS=&\left(\dot{c}(t)e^{-i\omega t}-i\omega c(t)e^{-i\omega t}\right)\mid{2}\rangle\mid{0}\rangle +\\
&\sum_{\vec{k},\alpha}\left(\dot{c}_{\vec{k},\alpha}(t)e^{-i\omega_k t}-i\omega_{k}c_{\vec{k},\alpha}(t)e^{-i\omega_{k}t}\right)\mid{1}\rangle\mid{1_{\vec{k},\alpha}}\rangle
\end{aligned}
\end{equation}
$$

$$
\begin{equation}
\begin{aligned}
RHS=&-i\omega c(t) e^{-i\omega t}\mid{2}\rangle\mid{0}\rangle \\
&- \sum_{\vec{k},\alpha}-i \omega_{\vec{k},\alpha}c_{\vec{k},\alpha}(t)e^{-i\omega_{k}t}\mid{1}\rangle\mid{1_{\vec{k},\alpha}}\rangle\\
&\sum_{\vec{k},\alpha}-i\left(g_{\vec{k},\alpha}c_{\vec{k},\alpha}(t)e^{-i\omega_k t}\mid{2}\rangle\mid{0}\rangle+g_{\vec{k},\alpha}^* c(t)e^{-i\omega t}\mid{1}\rangle\mid{1_{\vec{k},\alpha}}\rangle \right)
\end{aligned}
\end{equation}
$$

