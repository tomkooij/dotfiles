c = get_config()

# lines of code to run at IPython startup.
# c.InteractiveShellApp.exec_lines = []
c.InteractiveShellApp.exec_lines = []
c.InteractiveShellApp.exec_lines.append('from __future__ import division')
#c.InteractiveShellApp.exec_lines.append('from __future__ import print_function')
#c.InteractiveShellApp.exec_lines.append('from __future__ import with_statement')
c.InteractiveShellApp.exec_lines.append('%load_ext autoreload')
c.InteractiveShellApp.exec_lines.append('%autoreload 2')
# editor

c.TerminalInteractiveShell.editor = '/usr/bin/env vim'
