#SingleInstance, Force
#NoEnv
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Combining accents
CapsLock &  \::Send {U+0300} ; Grave accent
CapsLock &  /::Send {U+0301} ; Acute accent
CapsLock &  '::Send {U+0302} ; Circumflex accent
CapsLock & `;::Send {U+0306} ; Breve accent

; BiDi overrides
CapsLock & ,::Send {U+202E} ; RLO
CapsLock & .::Send {U+202D} ; LRO
CapsLock & n::Send {U+2067} ; RLI
CapsLock & m::Send {U+2066} ; LRI

; Custom (LaTeX-like) inputs
; After doing the hotkey, keep typing what you want, then press Esc, Enter, Tab or period to paste the special character
CapsLock & s::
	Input, input, V, {esc}{enter}{tab}.

	switch input
	{
	case "imp":	Send, {backspace 4}{U+2192} ; Implies arrow
	case "iff":	Send, {backspace 4}{U+2194} ; If and only if arrow
	case "neg":	Send, {backspace 4}{U+00AC} ; Negation
	case "and":	Send, {backspace 4}{U+2227} ; Logical conjunction
	case "or":	Send, {backspace 3}{U+2228} ; Logical disjunction
	case "true":	Send, {backspace 5}{U+22A4}
	case "false":	Send, {backspace 6}{U+22A5}
	case "neq":	Send, {backspace 4}{U+2260} ; Not equal
	case "forall":	Send, {backspace 7}{U+2200} ; Upside down capital A
	case "exists":	Send, {backspace 7}{U+2203} ; Backwards capital E
	case "models":	Send, {backspace 7}{U+22A8} ; Double turnstile
	case "nmodels":	Send, {backspace 8}{U+22AD} ; Negated double turnstile
	}
return
