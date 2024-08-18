show_load() {
  local index icon color text module

  tmux_batch_setup_status_module "load"
  run_tmux_batch_commands

  index=$1
  icon="$(get_tmux_batch_option "@tmux_theme_load_icon" "󰊚")"
  color="$(get_tmux_batch_option "@tmux_theme_load_color" "$thm_blue")"
  text="$(get_tmux_batch_option "@tmux_theme_load_text" "#{load_full}")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
