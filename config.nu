# Nushell Config File
#
# version = "0.104.0"
$env.config.color_config = {
    separator: white
    leading_trailing_space_bg: { attr: n }
    header: green_bold
    empty: blue
    bool: light_cyan
    int: white
    filesize: cyan
    duration: white
    datetime: purple
    range: white
    float: white
    string: white
    nothing: white
    binary: white
    cell-path: white
    row_index: green_bold
    record: white
    list: white
    closure: green_bold
    glob:cyan_bold
    block: white
    hints: dark_gray
    search_result: { bg: red fg: white }
    shape_binary: purple_bold
    shape_block: blue_bold
    shape_bool: light_cyan
    shape_closure: green_bold
    shape_custom: green
    shape_datetime: cyan_bold
    shape_directory: cyan
    shape_external: cyan
    shape_externalarg: green_bold
    shape_external_resolved: light_yellow_bold
    shape_filepath: cyan
    shape_flag: blue_bold
    shape_float: purple_bold
    shape_glob_interpolation: cyan_bold
    shape_globpattern: cyan_bold
    shape_int: purple_bold
    shape_internalcall: cyan_bold
    shape_keyword: cyan_bold
    shape_list: cyan_bold
    shape_literal: blue
    shape_match_pattern: green
    shape_matching_brackets: { attr: u }
    shape_nothing: light_cyan
    shape_operator: yellow
    shape_pipe: purple_bold
    shape_range: yellow_bold
    shape_record: cyan_bold
    shape_redirection: purple_bold
    shape_signature: green_bold
    shape_string: green
    shape_string_interpolation: cyan_bold
    shape_table: blue_bold
    shape_variable: purple
    shape_vardecl: purple
    shape_raw_string: light_purple
    shape_garbage: {
        fg: white
        bg: red
        attr: b
    }
}
$env.config = {
  edit_mode: 'vi'
}


$env.AZURE_API_VERSION = "2025-04-14"

$env.config.buffer_editor = "nvim"
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

source ~/.zoxide.nu
source ~/.local/share/atuin/init.nu

#Aliases

alias lg = lazygit
alias lzd = lazydocker
alias ll = eza -alGT -L 2 --color=always --icons=auto
alias l = eza -al --color=always --icons=auto
alias vi = nvim
# alias v=selected=$(fd --type f --hidden --exclude .git --exclude node_modules | fzf --multi --preview bat --style=numbers --color=always --line-range=:100 {}"); [ -n "$selected" ] && nvim $selected

## Terraform aliases
alias tf = terraform


#Pnpm aliases
alias pn = pnpm

# Shred aliases
alias rip = shred -vzu -n5

# Source Carapace
source ~/.cache/carapace/init.nu
