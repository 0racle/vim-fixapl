VIM-FIXAPL
==========

Vim files for the [FIXAPL programming language](https://fixapl.netlify.app/)

FEATURES
========

### Syntax highlighting

Highlighting for glyphs and abbreviations.  
Different highlight groups for monadic and dyadic symbols

### Prefix keyboard mappings

As well as abbreviations, FIXAPL defines the prefix-key mappings. The default prefix key is `<Tab>`.
You can customize it be settings the `g:fixapl_prefix_key` global variable before the plugin loads.

### Code formatting

FIXAPL can format files or code via STDIN.  
This plugin does not provide auto-formatting or keybindings, but it can easily be done.  
For example, to set `<leader>f` to format buffer or selection, you could add the following mappings

```vimscript
nnoremap <leader>f :%!fixapl fmt<cr>
vnoremap <leader>f :!fixapl fmt<cr>
```
