scripte utf-8

let a ='`1234567890-= ~!@#$%^&*()_+'
let a.='qwertyuiop[]  QWERTYUIOP{} '
let a.='asdfghjkl;''\ ASDFGHJKL:"| '
let a.='zxcvbnm,./    ZXCVBNM<>?   '

let b ='`₁₂¨⍢⍨˜÷×∞₀¯≠ ⍬⍣↺⍝⎊◶⪫§⍟⟨⟩¬±'
let b.='⋈⍵∊⍴⍉↑↓⍳○⍉←↤  ⌽⍹⁅√⍨T↥↧⊚Oτ⊣⊢'
let b.='⍺⊇⧻⊸⟜hj◡⎕⍎⍕\  ⍶⊃△FGHJ⍤⊔⍕⊙⌵ '
let b.='⊞□⋄⍋⌊⊡≡⍪⋅⫽    ⊕⊟⟠⍒⌈⬚≢≥≤⌿   '

let p=exists('g:fixapl_prefix_key')?g:apl_prefix_key:'<Tab>'
exec 'lno<buffer> '.p.'<space> ‿'
let [k,v] = map([a,b], "split(v:val,'\\zs *')")
for i in range(len(k))
    exe escape('lno<buffer>'.p.k[i].' '.v[i],'|')
endfor
unlet a b k v i p
