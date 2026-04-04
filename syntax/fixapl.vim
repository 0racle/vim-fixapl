if exists('b:current_syntax')
    finish
endif

syn match aplescape contained /\\./
syn region aplstring matchgroup=aplstring start=/"/ skip=/\\"/ end=/"/ contains=aplescape oneline
syn match aplmonad  /[¬¯±⌵√⌊⁅⌈?⋈⍉⍳⧻△▽□⋄⊡⊚⍋⍒⍕⍎⪫⋅]/
syn match apldyad   /[=≠>≥<≤+-×÷|*⍟↥↧∊≡≢⊟⟠⍪⍴⌿⊇⊃⬚↑↓⌽⊔⊣⊢]/
syn match apl2mod   /[⎊⍣⍢⍤◶⊸⟜○]/
syn match apl1mod   /\v[\\\/⍨˜◡⊙¨⊞⊕↺₀₁₂]/
syn match aplpunct  /\v[(){}\[\]⟨⟩,‿↤←⎕§.]/
syn match aplquad   /\v[⎕&][A-Za-z]*/
syn match aplident  /\v[A-Z][A-Z_a-z0-9]*/
syn match aplnumber /\v¯?[0-9]+(\.[0-9]+)?/
syn match aplname   /\v[⍺⍵∞πτ⍬]/
syn match aplcmt    /\v(⍝|^#!).*$/

hi def link aplcmt    comment
hi def link aplname   constant
hi def link apl1mod   type
hi def link apl2mod   identifier
hi def link aplnumber number
hi def link aplpunct  delimiter
hi def link aplquad   function
hi def link aplident  normal
hi def link aplstring string
hi def link aplescape preproc
hi def link aplmonad  function
hi def link apldyad   preproc

let b:current_syntax='fixapl'
