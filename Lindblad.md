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

在此我们只考虑$\mid{2}\rangle\mid{0}\rangle$和$\mid{1}\rangle\mid{1_{\vec{k},\alpha}}\rangle$这些项, 因为这两项的能量比较接近, 而$\mid{2}\rangle\mid{1_{\vec{k},\alpha}}\rangle$和$\mid{1}\rangle\mid{0}\rangle$这些项的能量和$\mid{2}\rangle\mid{0}\rangle$相差太大,导致跃迁的概率会低一些.

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

分别考虑$\mid{2}\rangle\mid{0}\rangle$和$\mid{1}\rangle\mid{1_{\vec{k},\alpha}}\rangle$这些项
$$
\dot{c}(t)=-i\sum_{\vec{k},\alpha}g_{\vec{k},\alpha}c_{\vec{k},\alpha}e^{i(\omega-\omega_k) t}
$$

$$
\dot{c}_{\vec{k},\alpha}(t)e^{-i\omega_k t}=-ig^*_{\vec{k},\alpha}c(t)e^{-i\omega t}
$$

从该知乎可以看到实际上激发态的衰减是由于二能级体系和光场模式耦合在一起导致的, 这样激发态就只有一个,而基态有很多个,因此不断扩散就导致激发态容易衰减到基态了.

## Lindblad equation中的衰减$\Gamma$是怎么导致的

### 马尔科夫近似

首先我们用马尔科夫近似得到光子湮灭算符的演化
$$
\frac{d \hat{a}_{\lambda}}{dt}=\frac{1}{i\hbar}\left[\hat{a}_{\lambda},\hat{H}\right],
$$
那么可以得到
$$
\frac{d \hat{a}_{\lambda}}{dt}=-i\omega_{\lambda}\hat{a}_{\lambda}+\sum_{\alpha}g^{\lambda}\cdot (\hat{\mathbf{b}}_{\alpha}+\hat{\mathbf{b}}^{\dagger}_{\alpha})e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}
\label{#eq:haisenbao}
$$
其齐次方程解为
$$
\hat{a}_{\lambda}\left(t\right)=\hat{a}_{\lambda}(0)e^{-i\omega_{\lambda} t}
$$
利用马尔科夫近似可以求解Eq. $\ref{#eq:haisenbao}$

首先如果不用马尔科夫近似, Eq. $\ref{#eq:haisenbao}$的解应为
$$
\hat{a}_{\lambda}(t)=\hat{a}_{\lambda}(0)e^{-i\omega_{\lambda}t}+\int_{0}^{t}\sum_{\alpha}\mathbf{g}^{\lambda}\cdot (\hat{\mathbf{b}}_{\alpha}\left(t^\prime\right)+\hat{\mathbf{b}}_{\alpha}\left(t^\prime\right)^{\dagger})e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}e^{-i\omega_{\lambda}(t-t^\prime)}dt^{\prime}
\label{eq13}
$$
一般而言, 在海森堡表象下$\hat{\mathbf{b}}_{\alpha}(t^\prime)=\hat{\mathbf{b}}_{\alpha}(0)e^{-i\omega_0 t^\prime}$, $\hat{\mathbf{b}}^{\dagger}_{\alpha}(t^\prime)=\hat{\mathbf{b}}^{\dagger}_{\alpha}(0)e^{i\omega_0 t^\prime}$

因此Eq. $\ref{eq13}$第二项的$\hat{\mathbf{b}}_{\alpha}$项可以写成
$$
\begin{equation}
\begin{aligned}
&\int_{0}^{t}\sum_{\alpha}\mathbf{g}^{\lambda}\cdot \hat{\mathbf{b}}_{\alpha}(0)e^{-i\omega_0 t^\prime}e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}e^{-i\omega_{\lambda}(t-t^\prime)}dt^{\prime}\\
=& e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}\int_{0}^{t}\sum_{\alpha}\mathbf{g}^{\lambda}\cdot \hat{\mathbf{b}}_{\alpha}(0)e^{-i\omega_0 t} e^{i\omega_0 (t-t^\prime)}e^{-i\omega_{\lambda}(t-t^\prime)}dt^{\prime}\\
= & e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}\int_{0}^{t}\sum_{\alpha}\mathbf{g}^{\lambda}\cdot \hat{\mathbf{b}}_{\alpha}(t) e^{i\omega_0 (t-t^\prime)}e^{-i\omega_{\lambda}(t-t^\prime)}dt^{\prime}\\
= & e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}\sum_{\alpha}\mathbf{g}^{\lambda}\cdot \hat{\mathbf{b}}_{\alpha}(t)\int_{0}^{t}e^{-i(\omega_{\lambda}-\omega_0)(t-t^\prime)}dt^{\prime}\\
= & e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}\sum_{\alpha}\mathbf{g}^{\lambda}\cdot \hat{\mathbf{b}}_{\alpha}(t)\int_{0}^{t}e^{-i(\omega_{\lambda}-\omega_0)\tau}d\tau\\
\end{aligned}
\end{equation}
\label{eq14}
$$
其中$\tau=t-t^\prime$,对于Eq. $\ref{eq14}$, 我们可以看出$\hat{a}_{\lambda}(t)$与$(0,t)$区间内的所有时间系统的状态都是相关的,但是其中的积分项在$t\to +\infty$的时候是收敛于一个值的, 即
$$
\begin{equation}
\begin{aligned}
\int_{0}^{+\infty}e^{-i\omega \tau}d\tau =& \lim_{\eta\to 0^{+}}\int_{0}^{+\infty}e^{-i\omega \tau-\eta \tau}d\tau\\
=&\lim_{\eta\to 0^{+}}\frac{1}{\eta+i\omega}\\
=&\lim_{\eta\to 0^{+}}\frac{\eta-i\omega}{\eta^2+\omega^2}\\
=&\lim_{\eta\to 0^{+}}\frac{\eta}{\eta^2+\omega^2}-\lim_{\eta\to 0^{+}}\frac{i\omega}{\eta^2+\omega^2}\\
=& \pi\delta(\omega)-i\mathrm{P}\frac{1}{\omega},
\end{aligned}
\end{equation}
$$
因此我们可以用马尔科夫近似,我们对积分进行延拓, 认为处于稳态时当前状态只和当前或者前一个状态有关,和其它状态无关,Eq. $\ref{eq13}$可以写成
$$
\hat{a}_{\lambda}(t)=\hat{a}_{\lambda}(0)e^{-i\omega_{\lambda}t}+\sum_{\alpha}\mathbf{g}^{\lambda}\cdot (\hat{\mathbf{b}}_{\alpha}\left(t\right)\zeta(\omega_\lambda-\omega_0)+\hat{\mathbf{b}}_{\alpha}\left(t\right)^{\dagger}\zeta(\omega_\lambda-\omega_0))e^{-i\mathbf{k}_{\lambda}\cdot \mathbf{r}_{\alpha}}
$$


