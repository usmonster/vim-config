" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\(\S\)\s\+$/\1/e
  call setpos('.', save_cursor)
endfunction

" C family
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp call StripTrailingWhitespace()

" Ruby, Rails
autocmd BufWritePre *.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml,*.feature call StripTrailingWhitespace()

" Java, PHP
autocmd BufWritePre *.java,*.php call StripTrailingWhitespace()

" Haml
au BufRead,BufNewFile *.hamlc set ft=haml

" JavaScript, ECMAScript
au BufRead,BufNewFile *.es6 set ft=javascript

" Highlight Ruby files
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.god set filetype=ruby
au BufRead,BufNewFile Gemfile* set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile soloistrc set filetype=ruby

" Highlight Jasmine fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" Open all folds in Markdown.
autocmd FileType mkd normal zR
