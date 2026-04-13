if exists('b:current_syntax')
    finish
endif

syn match aplescape contained /\\./
syn region aplstring matchgroup=aplstring start=/"/ skip=/\\"/ end=/"/ contains=aplescape oneline
syn match aplcherr  /\v'..*'/
syn match aplchar   /\v'\\?.'/ contains=aplescape
syn match aplmonad  /[¬¯±⌵√⌊⁅⌈?⋈⍉⍳⧻△▽□⋄⊡⊚⍋⍒⍕⍎⪫⋅]/
syn match apldyad   /[-=≠>≥<≤+×÷|*⍟↥↧∊≡≢⊟⟠⍪⍴⊠⊇⊃⬚↑↓⌽⊔⊣⊢]/
syn match apl2mod   /[⎊⍣⍢⍤◶⊸⟜○]/
syn match apl1mod   /\v[\\\/⫽⌿⍨˜◡⊙¨⊞⊕↺₀₁₂]/
syn match aplpunct  /\v[(){}⟨⟩[\],‿↤←⎕§.]/
syn match aplquad   /\v[⎕&][A-Za-z]*/
syn match aplident  /\v[A-Z][A-Z_a-z0-9]*/
syn match aplerror  /\v(([a-z]*)@<!)?[a-z]|[⍺⍵]/
syn match aplarg    /\v[⍺a⍵w]/ contained
syn match aplconst  /\v[∞πτ⍬]|(([a-z]*)@<!)?%(inf|pi|tau|emp)/
syn match apldyad   /\v(([a-z]*)@<!)?%(lft|rgt|eq|ne|gt|ge|lt|le|add|sub|mul|div|mod|pow|log|max|min|mem|mat|nmt|par|cou|cat|res|rpl|sel|pic|fil|tak|dro|rot|gro)/
syn match aplmonad  /\v(([a-z]*)@<!)?%(id|not|ng|sig|abs|sqr|flo|rou|cei|rol|rev|tra|iot|len|sha|fla|enc|fix|mer|whe|gru|grd|fmt|exc|ari)/
syn match apl1mod   /\v(([a-z]*)@<!)?%(sb|mn|dy|slf|bac|cel|con|eac|pre|fol|twf|tab|win|rep)/
syn match apl2mod   /\v(([a-z]*)@<!)?%(ctc|unt|und|rnk|cho|bef|aft|ov)/
syn match aplnumber /\v¯?[0-9]+(\.[0-9]+)?/
syn match aplcmt    /\v(⍝|#).*$/


syn cluster aplsyntax contains=aplstring,aplchar,aplmonad,apldyad,apl1mod,apl2mod,aplpunct,aplquad,aplident,aplerror,aplnumber,aplconst,aplcmt,apldfn
syn region apldfn extend keepend matchgroup=aplpunct start=/{/ end=/}/ contains=@aplsyntax,aplarg

hi def link aplcmt    comment
hi def link aplconst  constant
hi def link aplarg    constant
hi def link apl1mod   type
hi def link apl2mod   identifier
hi def link aplnumber number
hi def link aplpunct  delimiter
hi def link aplquad   function
hi def link aplident  normal
hi def link aplstring string
hi def link aplchar   string
hi def link aplescape preproc
hi def link aplmonad  function
hi def link apldyad   preproc
hi def link aplerror  error
hi def link aplcherr  error

let b:current_syntax='fixapl'
