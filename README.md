# vim-spec

Spec runner for Vim. Run Rspec and Mocha tests straight from Vim.

Inspired by [thoughtbot/vim-rspec](https://github.com/thoughtbot/vim-rspec) and
[geekjuice/vim-mocha](https://github.com/geekjuice/vim-mocha).

## Installation

Recommended installation with [vundle](https://github.com/gmarik/vundle):

```vim
Bundle 'geekjuice/vim-spec'
```

If using zsh on OS X it may be necessary to run move `/etc/zshenv` to `/etc/zshrc`.

## Example of key mappings

```vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
```

## Configuration

Like [thoughtbot/vim-rspec](https://github.com/thoughtbot/vim-rspec), the
following variables can be overwritten for custom spec commands:

* `g:rspec_command`
* `g:mocha_js_command`
* `g:mocha_coffee_command`

Examples:

```vim
let g:rspec_command = "!rspec --drb {spec}"
let g:mocha_js_command = "!mocha --recursive --no-colors {spec}"
let g:mocha_coffee_command = "!mocha -b --compilers coffee:coffee-script{spec}"

" Using test runners
let g:rspec_command = "Dispatch zeus rspec {spec}"
let g:mocha_coffee_command = "!coratdo {spec}" "See vim-mocha
```

Credits
-------

[thoughtbot/vim-rspec](https://github.com/thoughtbot/vim-rspec)

[geekjuice/vim-mocha](https://github.com/geekjuice/vim-mocha)

## License

vim-spec is released under the [MIT License](LICENSE).
