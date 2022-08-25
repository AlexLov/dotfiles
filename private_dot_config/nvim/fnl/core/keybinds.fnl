(import-macros {: map! : g!}	:hibiscus.vim)

;; set leader key
(g! mapleader " ")
(g! localleader ",")

;; Scroll half screen on Shift-PgUp/PgDown
(map! [n] :<S-PageUp> :<C-U>)
(map! [n] :<S-PageDown> :<C-D>)

;; move between windows
(map! [n] :<C-Left> :<C-w>h)
(map! [n] :<C-Down> :<C-w>j)
(map! [n] :<C-Up> :<C-w>k)
(map! [n] :<C-Right> :<C-w>l)

;; Resize splits
(map! [n] :<C-S-Up> "<cmd>resize +2<cr>")
(map! [n] :<C-S-Down> "<cmd>resize -2<cr>")
(map! [n] :<C-S-Left> "<cmd>vertical resize +2<cr>")
(map! [n] :<C-S-Right> "<cmd>vertical resize -2<cr>")

;; Navigate buffers
(map! [n] :<S-Right> ":bnext<CR>")
(map! [n] :<S-Left> ":bprevious<CR>")

;; Convinient shortcuts
(map! [n] :<leader>W ":w<CR>")
(map! [n] :<leader>WW ":wa<CR>")
(map! [n] :ZZ ":wqa<CR>")  ;; write all buffers and exit
(map! [n] :<leader>z ":wqa<CR>")  ;; write all buffers and exit
(map! [n] :QQ ":qa!<CR>")  ;; quit all buffers without saving
(map! [n] :<leader>q ":qa!<CR>")  ;; quit all buffers without saving

;; wrap/unwrap
(map! [n] :<leader>w "<cmd>set wrap!<CR>")

;; Toggele 'list' option on and off
(map! [n] :<leader>l "<cmd>set list!<CR>")

;; Toggele 'number' option on and off
(map! [n] :<leader>m "<cmd>set number!<CR>")

;; treesitter 
;(map! [n] :<Leader>th ":TSHighlightCapturesUnderCursor<CR>")
;(map! [n] :<Leader>tp ":TSPlayground<CR>")

;; telescope
;(map! [n] :<leader>bb "<cmd>Telescope buffers<CR>")
;(map! [n] :<leader>ff "<cmd>Telescope current_buffer_fuzzy_find<CR>")
;(map! [n] :<leader>pp "<cmd>lua require('telescope').extensions.project.project({ display_type = 'full' })<CR>")
;(map! [n] :<leader>fr "<cmd>Telescope oldfiles<CR>")
;(map! [n] "<leader>:" "<cmd>Telescope commands<CR>")
;(map! [n] :<leader><space> "<cmd>Telescope find_files<CR>")

;; nvimtree
;(map! [n] :<leader>op :<cmd>NvimTreeToggle<CR>)
;(map! [n] :<C-n> :<cmd>NvimTreeToggle<CR>)

;; truezen
;(map! [n] :<leader>tz :<cmd>TZAtaraxis<CR>)
