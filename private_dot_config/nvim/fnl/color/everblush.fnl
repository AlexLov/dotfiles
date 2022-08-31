(let [(ok? everblush) (pcall require "everblush")]
	(when ok?
		(let [colors ((. (require "everblush.core") "get_colors") {})]
			(everblush.setup {
				:nvim_tree	{ :contrast true }
				:transparent_background true
				:override {
					:Whitespace { :fg colors.color8 }
					:NonText { :fg colors.color8 }
					:LineNr { :fg colors.color4 }
					:CursorLineNr { :fg colors.color10 :bg colors.cursorline }
					:Comment { :fg "gray" }
					:TSComment { :fg "gray" }
					:Search { :fg colors.color8 :bg colors.color10 }
					:IncSearch { :fg colors.color8 :bg colors.color10 }
				}}))))
;; vim: ts=2 noet
