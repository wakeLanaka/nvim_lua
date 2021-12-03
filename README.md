# VIM Tricks

## Substitute word in project

`:vimgrep /NameToReplace/gj **/*`

Loads all occurences into quickfix

- g -> all occurences in line
- j -> do not jump to next element
- \*\*/\* -> all files in recursive directory

`:cdo %s/NameToReplace/e`

- e -> do not display errors (eof)

### Undo substitute

`:cdo norm u`


### Substitution & key

`g&` -> repeat last substitution on whole Buffer
`&`(in normal mode) -> repeat last substitution on row
`&`(in visual mode) -> repeat last substitution on visual selected area

## Register

% -> get path of current buffer. Handy with :lcd


## Global

`:g/TODO/yank A` -> copy all lines with TODO into register a. Useful to paste
into empy file and have TODO's always around

