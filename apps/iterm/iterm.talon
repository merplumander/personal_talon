app: iterm2
-
tag(): terminal
tag(): user.file_manager
tag(): user.git
action(user.file_manager_open_parent):
    insert("cd ..")
    key(enter)
action(app.tab_open):
  key(cmd-t)
action(app.tab_close):
  key(cmd-w)
action(app.tab_next):
  key(ctrl-tab)
action(app.tab_previous):
  key(ctrl-shift-tab)
kill all:
  key(ctrl-c)
rerun search:
  key(ctrl-r)
rerun [last]:
  key(up)
  key(enter)
action(edit.page_down):
  key(command-pagedown)
action(edit.page_up):
  key(command-pageup)
suspend:
  key(ctrl-z)
resume:
  insert("fg")
  key(enter)

pre commit: "pre-commit"
pre commit install: "pre-commit install"
pre commit run: "pre-commit run"
pre commit run files: "pre-commit run --files "
pre commit run all files: "pre-commit run --all-files\n"
pre commit auto update: "pre-commit autoupdate"