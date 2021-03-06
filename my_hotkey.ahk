;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;For the autohotkey macro
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^!r:: ;Reload the Script
Send, ^s ; To save a changed script
Sleep, 300 ; give it time to save the script
Reload
Return

^!a::
send,{; 100}{enter}
send,{;}{enter}
send,{; 100}{Up}
return

^!k::
send,\mid\rangle
send,{Left 7}
send,{{}{}}{Left}
return

^!b::
send,\langle\mid
send,{Left 4}
send,{{}{}}{Left}
return

^!f::
sendRaw,\frac{}{}
send,{Left 3}
return

::ahksendr::
sendRaw,::::
send,{Enter}
sendRaw,sendRaw,
send,{Enter}
sendRaw,return
sleep, 20
send,{Left 2}
send,{Up 2}
send,{Left 2}
return

::ahksend::
sendRaw,::::
send,{Enter}
sendRaw,send,
send,{Enter}
sendRaw,return
sleep, 20
send,{Left 2}
send,{Up 2}
send,{Left 2}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Greek
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^+a::
send,\alpha
return

^+w::
send,\omega
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;math functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::fexp::
send,e{^}{{}{}}{Left}
return

::fsum::
send,\sum_{{}{}}{^}{{}{}}{Left 4}
return

::fsum1::
send,\sum_{{}{}}{Left}
return

::fint::
sendRaw,\int_{}^{}
send,{Left 4}
return

::limeta::
sendRaw,\lim_{\eta\to 0^{+}}
return

::int0infty::
sendRaw,\int_{0}^{+\infty}
return

;math operator
::partialt::
sendRaw,\frac{\partial}{\partial t}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;quantum opterator
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::hath::
sendRaw,\hat{H} 
return

::hata::
sendRaw,\hat{a}
return

::hatad::
sendRaw,\hat{a}^{\dagger}
return

::hats::
sendRaw,\hat{\sigma}
return

::hatsd::
sendRaw,\hat{\sigma}^{\dagger}
return

::hatal::
sendRaw,\hat{a}_{\lambda}
return

::hatb::
sendRaw,\hat{b}
return

::hatbd::
sendRaw,\hat{b}^{\dagger}
return

::hatba::
sendRaw,\hat{b}_{\alpha}
return

::hatbda::
sendRaw,\hat{b}^{\dagger}_{\alpha}
return

::hatbfba::
sendRaw,\hat{\mathbf{b}}_{\alpha}
return

::hatbfbda::
sendRaw,\hat{\mathbf{b}}^{\dagger}_{\alpha}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;quantum state
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::ketpsit::
sendRaw,\mid{\psi(t)}\rangle
return

::brapsit::
sendRaw,\langle{\psi(t)}\mid
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;tensor
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::veck::
sendRaw,\vec{k}
return 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;algebra
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::dotc::
sendRaw,\dot{c}
return

::mathbf::
sendRaw,\mathbf{}
send,{Left}
return

::lr()::
sendRaw,\left(\right)
send,{Left 7}
return

::lr[]::
sendRaw,\left[\right]
send,{Left 7}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Latex code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::eqalign::
sendRaw,\begin{equation}
send,{Enter}
sendRaw,\begin{aligned}
send,{Enter 2}
sendRaw,\end{aligned}
send,{Enter}
sendRaw,\end{equation}
send,{Up 2}
return