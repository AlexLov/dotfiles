(import-macros {: set!} :hibiscus.vim)

;;; Global options
(set! hidden true)
(set! updatetime 200)
(set! timeoutlen 500)
(set! shortmess :filnxtToOFatsc)
(set! inccommand :split)
(set! path "**") 

;; cmp options
(set! completeopt [:menu :menuone :preview :noinsert])

;; Use clipboard outside Neovim
(set! clipboard :unnamedplus)

;; Enable mouse input
(set! mouse :a)

;; Faster macros
(set! lazyredraw true)

;; Disable swapfiles and enable undofiles
(set! swapfile false)
(set! undofile true)

;;; UI-related options
(set! ruler false)

;; Numbering
(set! number true)

;; True-color
(set! termguicolors true)

;; Cols and chars
(set! signcolumn "auto:1-3")
(set! foldcolumn "auto:3")

;; Smart search
(set! smartcase true)

;; Case-insensitive search
(set! ignorecase true)

;; Indentation rules
(set! copyindent true)
(set! smartindent true)
(set! preserveindent true)

;; Indentation level
(set! tabstop 2)
(set! shiftwidth 0) ; 0 to use value from 'tabstop'

;; Expand tabs
(set! expandtab false)

;; Enable concealing
(set! conceallevel 2)

;; Enable cursorline
(set! cursorline true)

;; Automatic split locations
(set! splitright true)
(set! splitbelow true)

;; Scroll off
(set! scrolloff 3)

;; Listchars setup
(set! listchars {:tab "› "
                 :eol "↵"
                 :extends "↷"
                 :precedes "↶"
                 :trail "␣"
                 :space "·"
                 :nbsp "⌴"})

;; Fillchar setup
(set! fillchars {:eob " "
                 :horiz "─"
                 :horizup "┴"
                 :horizdown "┬"
                 :vert "│"
                 :vertleft "┤"
                 :vertright "├"
                 :verthoriz "┼"
                 :fold " "
                 :diff "─"
                 :msgsep "‾"
                 :foldsep "│"
                 :foldopen "▾"
                 :foldclose "▸"})
