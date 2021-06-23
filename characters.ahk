#SingleInstance, Force
#NoEnv
SendMode Input
SetWorkingDir, %A_ScriptDir%

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
    case "lambda":  Send {U+03BB}
    case "epsilon": Send {U+03B5}
    case "pi":      Send {U+03C0}

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
