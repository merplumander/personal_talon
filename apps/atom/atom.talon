app: atom
-
tag(): user.tabs
tag(): user.line_commands
command pallete: user.atom_open_command_palette()
[format] black: user.atom_type_in_command_palette("python black isort format")
find in project: key(shift-cmd-F)
go line <number>: user.atom_go_line_number(number)
# hydrogen
(sell ex | pie ex): key(alt-shift-enter)
(new | code) cell: "# %%\n"
[new] markdown cell: "# %% markdown\n"
(restart kernel | kernel restart): user.atom_type_in_command_palette("hydrogen restart kernel")
[hydrogen] toggle inspector: user.atom_type_in_command_palette("hydrogen toggle inspector")
hydrogen run all: user.atom_type_in_command_palette("hydrogen run all")
hydrogen run all above: user.atom_type_in_command_palette("hydrogen run all above")


action(app.window_open):
	key(cmd-shift-N)