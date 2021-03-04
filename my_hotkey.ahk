^!r:: ;Reload the Script
Send, ^s ; To save a changed script
Sleep, 300 ; give it time to save the script
Reload
Return

^+a::
send,\alpha
return

^+w::
send,\omega
return

::fexp::
send,e{^}{{}{}}{Left}
return

::fsum::
send,\sum_{{}{}}{^}{{}{}}{Left 4}
return

::fsum1::
send,\sum_{{}{}}{Left}
return

::qohh::{Raw}\hat{H}
::qoha::{Raw}\hat{a}
::qohad::{Raw}\hat{a}^{\dagger}
::qohs::{Raw}\hat{\sigma}
::qohsd::{Raw}\hat{\sigma}^{\dagger}

::ketpsit::\mid{\psi(t)}\rangle
::brapsit::\langle{\psi(t)}\mid


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

::veck::{Raw}\vec{k}