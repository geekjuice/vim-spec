# vim-spec

Spec runner for Vim. Run Rspec and Mocha tests straight from Vim.

Inspired by [thoughtbot/vim-rspec](https://github.com/thoughtbot/vim-rspec) and
[geekjuice/vim-mocha](https://github.com/geekjuice/vim-mocha).

Can be thought of as a combination of vim-rspec and vim-mocha. Determines
whether to run `Mocha` or `Rspec` based on filetype. Rather than use
different mappings for each test, use the same mapping for all spec files.

Example: Calling `<leader>t` in a Javascript file will call `mocha`. The same
mapping can be used in a Coffeescript file and call `mocha` using the Coffeescript
compiler. And of course, calling it from a Ruby file will invoke `rspec`.


## Installation

Using [vundle](https://github.com/gmarik/vundle):

```vim
Bundle 'geekjuice/vim-spec'
```

If using zsh on OS X it may be necessary to run move `/etc/zshenv` to `/etc/zshrc`.

Using [pathogen](https://github.com/tpope/vim-pathogen)

```shell
cd ~/.vim/bundle
git clone git://github.com/geekjuice/vim-spec.git
```

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

## Notes/Caveats

* When calling `RunAllSpecs`, plugin expects tests within a directory to all be
  the same filetype. i.e. a specific spec directory should only contain
  Javascript mocha files. (To be fixed)

* Initial call expects to be done on a spec file since vim-spec has no prior
  knowledge of which spec commmand to call

Credits
-------

[thoughtbot/vim-rspec](https://github.com/thoughtbot/vim-rspec)

[geekjuice/vim-mocha](https://github.com/geekjuice/vim-mocha)

## License

vim-spec is released under the [MIT License](LICENSE).
