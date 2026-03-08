# atuin.yazi

Shows an fzf picker of the last 200 commands by calling `atuin search`

## Requirements

[fzf](https://github.com/junegunn/fzf)<br>
[atuin](https://atuin.sh/) 

## Installation

```sh
ya pkg add shantheone/atuin
```

## Usage

Add keyboard shortcut in `keymap.toml` like below:

```toml
[[mgr.prepend_keymap]]
on   = [ "g", "a" ]
run  = "plugin atuin"
desc = "Go to atuin history"
```

## License

This plugin is MIT-licensed. For more information, check the [LICENSE](LICENSE) file.
