#SingleInstance, Force
#NoEnv
SendMode Input
SetWorkingDir, %A_ScriptDir%

StringCaseSense, On

; Combining accents
CapsLock &  \::Send {U+0300} ; Grave accent
CapsLock &  /::Send {U+0301} ; Acute accent
CapsLock &  '::Send {U+0302} ; Circumflex accent
CapsLock & `;::Send {U+0306} ; Breve accent

; Custom (LaTeX-like) inputs
; After doing the hotkey, keep typing what you want, then press Tab, space or period to paste the special character
; The key that will work as an 'end-key' will depend on the application, but period tends to work most often
CapsLock & s::
    Input, value, V, {tab} .

    length := StrLen(value) + 1 ; +1 to account for the end key
    Send {backspace %length%}

    switch value
    {
    ; Math and logic
    case "imp":     Send {U+2192} ; Implies arrow
    case "iff":     Send {U+2194} ; If and only if arrow
    case "neg":     Send {U+00AC} ; Negation
    case "and":     Send {U+2227} ; Logical conjunction
    case "or":      Send {U+2228} ; Logical disjunction
    case "true":    Send {U+22A4}
    case "false":   Send {U+22A5}
    case "neq":     Send {U+2260} ; Not equal
    case "forall":  Send {U+2200} ; Upside down capital A
    case "exists":  Send {U+2203} ; Backwards capital E
    case "models":  Send {U+22A8} ; Double turnstile
    case "nmodels": Send {U+22AD} ; Negated double turnstile

    ; Greek letters
    case "Alpha":   Send {U+0391}
    case "Beta":    Send {U+0392}
    case "Gamma":   Send {U+0393}
    case "Delta":   Send {U+0394}
    case "Epsilon": Send {U+0395}
    case "Zeta":    Send {U+0396}
    case "Eta":     Send {U+0397}
    case "Theta":   Send {U+0398}
    case "Iota":    Send {U+0399}
    case "Kappa":   Send {U+039A}
    case "Lambda":  Send {U+039B}
    case "Mu":      Send {U+039C}
    case "Nu":      Send {U+039D}
    case "Xi":      Send {U+039E}
    case "Omicron": Send {U+039F}
    case "Pi":      Send {U+03A0}
    case "Rho":     Send {U+03A1}
    case "Sigma":   Send {U+03A3}
    case "Tau":     Send {U+03A4}
    case "Upsilon": Send {U+03A5}
    case "Phi":     Send {U+03A6}
    case "Chi":     Send {U+03A7}
    case "Psi":     Send {U+03A8}
    case "Omega":   Send {U+03A9}
    case "alpha":   Send {U+03B1}
    case "beta":    Send {U+03B2}
    case "gamma":   Send {U+03B3}
    case "delta":   Send {U+03B4}
    case "epsilon": Send {U+03B5}
    case "zeta":    Send {U+03B6}
    case "eta":     Send {U+03B7}
    case "theta":   Send {U+03B8}
    case "iota":    Send {U+03B9}
    case "kappa":   Send {U+03BA}
    case "lambda":  Send {U+03BB}
    case "mu":      Send {U+03BC}
    case "nu":      Send {U+03BD}
    case "xi":      Send {U+03BE}
    case "omicron": Send {U+03BF}
    case "pi":      Send {U+03C0}
    case "rho":     Send {U+03C1}
    case "sigma2":  Send {U+03C2}
    case "sigma":   Send {U+03C3}
    case "tau":     Send {U+03C4}
    case "upsilon": Send {U+03C5}
    case "phi":     Send {U+03C6}
    case "chi":     Send {U+03C7}
    case "psi":     Send {U+03C8}
    case "omega":   Send {U+03C9}

    ; Hacky stuff relating to BiDi
    case "lre": Send {U+202A} ; Left-to-right embedding
    case "rle": Send {U+202B} ; Right-to-left embedding
    case "lro": Send {U+202D} ; Left-to-right override
    case "rlo": Send {U+202E} ; Right-to-left override
    case "pdf": Send {U+202C} ; Pop directional format, applies to Embedding and Override
    case "lri": Send {U+2066} ; Left-to-right isolate
    case "rli": Send {U+2067} ; Right-to-left isolate
    case "pdi": Send {U+2069} ; Pop directional isolate, applies to Isolate

    ; Hacky stuff misc
    case "highsurr": Send {U+D800} ; High surrogate
    case "lowsurr": Send {U+DC00} ; Low surrogate
    case "zwsp": Send {U+200B} ; Zero-width space

    default: Send, _ ; _ to differentiate from applications replacing unknown characters with '?'
    }
return
