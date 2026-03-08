return {
	entry = function(_, job)
		local limit = tonumber(job.args[1]) or 200

		local cmd = string.format(
			[[
selected=$(atuin search --limit %d --cmd-only | fzf --header "Search atuin history" --header-first --no-info --reverse)
if [ -n "$selected" ]; then
  eval "$selected"
fi
]],
			limit
		)

		ya.emit("shell", { cmd, block = true, desc = "Atuin History" })
	end,
}
