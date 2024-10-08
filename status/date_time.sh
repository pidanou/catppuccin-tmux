show_date_time() {
  local index icon color text module

  tmux_batch_setup_status_module "date_time"
  run_tmux_batch_commands

  index=$1
  icon="$(get_tmux_batch_option "@tmux_theme_date_time_icon" "󰃰")"
  color="$(get_tmux_batch_option "@tmux_theme_date_time_color" "$thm_blue")"
  text="$(get_tmux_batch_option "@tmux_theme_date_time_text" "%Y-%m-%d %H:%M")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
