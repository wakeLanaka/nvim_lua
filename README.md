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

## Register

% -> get path of current buffer. Handy with :lcd
