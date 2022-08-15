#SingleInstance, Force
#NoEnv
SendMode Input
SetWorkingDir, %A_ScriptDir%

StringCaseSense, On

; Combining accents
CapsLock & \::Send {U+0300} ; Grave accent
CapsLock & /::Send {U+0301} ; Acute accent
CapsLock & [::Send {U+0302} ; Circumflex accent
CapsLock & `::Send {U+0303} ; Tilde accent
CapsLock & ]::Send {U+0306} ; Breve accent

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
    case "neg":         Send {U+00AC} ; ¬ Negation
    case "times":       Send {U+00D7} ; × Multiplication / cross product
    case "forall":      Send {U+2200} ; ∀ Upside down capital A
    case "partial":     Send {U+2202} ; ∂ Partial derivative symbol
    case "exists":      Send {U+2203} ; ∃ Backwards capital E
    case "empty":       Send {U+2205} ; ∅ Empty set symbol
    case "nabla":       Send {U+2207} ; ∇ Vector differential
    case "in":          Send {U+2208} ; ∈ Element of
    case "infty":       Send {U+221E} ; ∞ Infinity symbol
    case "and":         Send {U+2227} ; ∧ Logical conjunction
    case "or":          Send {U+2228} ; ∨ Logical disjunction
    case "int":         Send {U+222B} ; ∫ Integral
    case "iint":        Send {U+222C} ; ∬ Double integral
    case "iiint":       Send {U+222D} ; ∭ Triple integral
    case "oint":        Send {U+222E} ; ∮ Closed integral
    case "oiint":       Send {U+222F} ; ∯ Closed double integral
    case "oiiint":      Send {U+2230} ; ∰ Closed triple integral
    case "therefore":   Send {U+2234} ; ∴ Therefore symbol
    case "because":     Send {U+2235} ; ∵ Since symbol
    case "approx":      Send {U+2248} ; ≈ Approx equal
    case "neq":         Send {U+2260} ; ≠ Not equal
    case "equiv":       Send {U+2261} ; ≡ Equivalence operator
    case "true":        Send {U+22A4} ; ⊤ Truth symbol
    case "false":       Send {U+22A5} ; ⊥ Falsity symbol
    case "models":      Send {U+22A8} ; ⊨ Double turnstile
    case "nmodels":     Send {U+22AD} ; ⊭ Negated double turnstile
    case "cdot":        Send {U+22C5} ; ⋅ Dot product operator
    case "imp":         Send {U+27F9} ; ⟹ Implies arrow
    case "iff":         Send {U+27FA} ; ⟺ If and only if arrow

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

    ; Superscript / Subscript
    case "^0": Send {U+2070}
    case "^1": Send {U+2071}
    case "^2": Send {U+2072}
    case "^3": Send {U+2073}
    case "^4": Send {U+2074}
    case "^5": Send {U+2075}
    case "^6": Send {U+2076}
    case "^7": Send {U+2077}
    case "^8": Send {U+2078}
    case "^9": Send {U+2079}
    case "_0": Send {U+2080}
    case "_1": Send {U+2081}
    case "_2": Send {U+2082}
    case "_3": Send {U+2083}
    case "_4": Send {U+2084}
    case "_5": Send {U+2085}
    case "_6": Send {U+2086}
    case "_7": Send {U+2087}
    case "_8": Send {U+2088}
    case "_9": Send {U+2089}

    ; BiDirectional unicode markers
    case "lrm": Send {U+200E} ; Left-to-right mark
    case "rlm": Send {U+200F} ; Right-to-left mark
    case "lre": Send {U+202A} ; Left-to-right embedding
    case "rle": Send {U+202B} ; Right-to-left embedding
    case "lro": Send {U+202D} ; Left-to-right override
    case "rlo": Send {U+202E} ; Right-to-left override
    case "pdf": Send {U+202C} ; Pop directional format, applies to Embedding and Override
    case "lri": Send {U+2066} ; Left-to-right isolate
    case "rli": Send {U+2067} ; Right-to-left isolate
    case "pdi": Send {U+2069} ; Pop directional isolate, applies to Isolate

    ; Misc
    case "highsurr":    Send {U+D800} ; High surrogate
    case "lowsurr":     Send {U+DC00} ; Low surrogate
    case "zwsp":        Send {U+200B} ; Zero-width space
    case "lf":          Send {U+000A} ; Line-feed
    case "cr":          Send {U+000D} ; Carriage return

    case "--":       Send {U+2014} ; Em dash
    case "---":      Send {U+2E3B} ; Three-em dash

    default: Send, _ ; _ to differentiate from applications replacing unknown characters with '?'
    }
return

; Custom linguistics IPA symbols
CapsLock & l::
    Input, value, V, {tab} .

    length := StrLen(value) + 1 ; +1 to account for the end key
    Send {backspace %length%}

    switch value
    {
    case "ae":  Send {U+00E6} ; Ash character (æ)
    case "eth": Send {U+00F0} ; Eth character (ð)
    case "a\":  Send {U+0250} ; Turned a (ɐ)
    case "aa":  Send {U+0251} ; Open a (ɑ)
    case "aa\": Send {U+0252} ; Open a turned (ɒ)
    case "c\":  Send {U+0254} ; Turned c (ɔ)
    case "e\":  Send {U+0259} ; Turned e / schwa (ə)
    case "3\":  Send {U+025B} ; Epsilon / turned 3 (ɛ)
    case "I":   Send {U+026A} ; Small caps I (ɪ)
    case "r\":  Send {U+0279} ; Turned r (ɹ)
    case "R\":  Send {U+0281} ; Turned small-caps r (ʁ)
    case "sh":  Send {U+0283} ; shh sound (ʃ)
    case "v\":  Send {U+028C} ; Turned V / wedge (ʌ)
    case "uu":  Send {U+028A} ; Horseshoe u / inverted omega (ʊ)
    case "w\":  Send {U+028D} ; Turned w (ʍ)
    case "3":   Send {U+0292} ; Ezh (ʒ)
    case "?":   Send {U+0294} ; Glottal stop (ʔ)
    case ":":   Send {U+02D0} ; Phone length indicator (ː)
    case "ng":  Send {U+014B} ; Velar nasal / n with right tail (ŋ)
    case "^h":  Send {U+02B0} ; Superscript h / aspirated (ʰ)
    case "^j":  Send {U+02B2} ; Superscript j / palatalized (ʲ)

    case "'": Send {U+02C8} ; Primary stress
    case ",": Send {U+02CC} ; Secondary stress

    default: Send, _
    }
return
