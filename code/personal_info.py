import os
import json

from talon import Context, Module

cwd = os.path.dirname(os.path.realpath(__file__))
personal_info_file = os.path.join(cwd, "personal_info.json")
with open(personal_info_file) as file:
    personal_info = json.load(file)


mod = Module()
ctx = Context()


mod.list("personal_info", desc="My personal information.")

ctx.lists["self.personal_info"] = personal_info

@mod.capture(rule="{self.personal_info}")
def personal_info(m) -> str:
    "Returns a plain string"
    return m.personal_info