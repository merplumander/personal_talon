from talon import Module, Context


mod = Module()
mod.list("umlaut", desc="The German umlauts")

ctx = Context()
umlauts = {"airiest": "ä", "oddliest": "ö", "urgiest": "ü", "sunniest": "ß"}
ctx.lists["self.umlaut"] = umlauts

@mod.capture(rule="{self.umlaut}+")
def umlauts(m) -> str:
    print(m)
    return ''.join(m.umlaut_list)
    
# Having my own keys.py implementation has the problem that when trying to chain umlauts
# and normal letters within "ship", "ship" will always stop when changing between umlauts and
# normal letters.