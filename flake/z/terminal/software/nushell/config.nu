def save_history [] {
    let dir = (pwd | path expand | str replace -a "/" "_")
    let history_file = $"~/.local/share/nu/history/($dir).nu"
    history save $history_file
    history save ~/.local/share/nu/global.nu
}

def load_history [] {
    let dir = (pwd | path expand | str replace -a "/" "_")
    let history_file = $"~/.local/share/nu/history/($dir).nu"

    if ($history_file | path exists) {
        history load $history_file
    } else {
        history load ~/.local/share/nu/global.nu
    }
}

# Ensure history directory exists
mkdir -p ~/.local/share/nu/history

# Hooks for automatic save/load
$env.config = ($env.config | upsert hooks { pre_exit: { save_history }, pre_prompt: { load_history } })
