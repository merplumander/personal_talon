from talon import Context, Module


mod = Module()
ctx = Context()

mod.list('latex-prefix', desc='Prefix for all latex commands')
ctx.lists['self.latex-prefix'] = ["lad"]

mod.list('small-greek-prefix', desc='Prefix for latex Greek letters')
ctx.lists['self.small-greek-prefix'] = ["greeky"]