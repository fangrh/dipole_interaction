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

;math operator
::partialt::
sendRaw,\frac{\partial}{\partial t}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;quantum opterator
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::qohh::
sendRaw,\hat{H} 
return

::qoha::
sendRaw,\hat{a}
return

::qohad::
sendRaw,\hat{a}^{\dagger}
return

::qohs::
sendRaw,\hat{\sigma}
return

::qohsd::
sendRaw,\hat{\sigma}^{\dagger}
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