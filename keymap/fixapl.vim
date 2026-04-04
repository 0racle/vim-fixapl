scripte utf-8

let a ='`1234567890-= ~!@#$%^&*()_+'
let b ='`₁₂¨⍢⍨˜÷×∞₀¯≠ ⍬⍣↺⍝⎊◶⪫§⍟⟨⟩¬±'

let a.='qwertyuiop[]  QWERTYUIOP{} '
let b.='⋈⍵∊⍴⍉↑↓⍳○⍉←↤  ⌽⍹⁅√⍨T↥↧⊚τ⊣⊢'

let a.='asdfghjkl;''\ ASDFGHJKL:"| '
let b.='⍺⊇⧻⊸⟜hj◡⎕⍎⍕\  ⍶⊃△FGHJ⍤⊔⍕⊙⌵ '

let a.='zxcvbnm,./    ZXCVBNM<>?   '
let b.='⊞□⋄⍋⌊⊡≡⍪⋅⫽    ⊕⊟⟠⍒⌈⬚≢≥≤⌿   '

let p=exists('g:fixapl_prefix_key')?g:apl_prefix_key:'<Tab>'
exec 'lno<buffer> '.p.'<space> ‿'
let [k,v] = map([a,b], "split(v:val,'\\zs *')")
for i in range(len(k))
    exe escape('lno<buffer>'.p.k[i].' '.v[i],'|')
endfor
unlet a b k v i p
