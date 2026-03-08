return {
	entry = function()
		local cmd = [[
        selected=$(atuin search --limit 200 --cmd-only | fzf --header "Search atuin history" --header-first --no-info --reverse)
          if [ -n "$selected" ]; then
            eval "$selected"
          fi
      ]]

		ya.emit("shell", { cmd, block = true, desc = "Atuin History" })
	end,
}
