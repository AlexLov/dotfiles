(let [(ok? everblush) (pcall require "everblush")]
	(if ok?
		(let [colors ((. (require "everblush.core") "get_colors") {})]
			(everblush.setup {
				:nvim_tree	{ :contrast true }
				:override {
					:Whitespace { :fg colors.color8 }
					:NonText { :fg colors.color8 }
					:LineNr { :fg colors.color4 :bg colors.background }
					:CursorLineNr { :fg colors.color10 :bg colors.cursorline }
					; TODO comments should be a little bit brighter
				}}))))
