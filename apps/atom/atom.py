from talon import Context, Module, actions
import time

mod = Module()
#ctx = Context("atom", bundle="com.github.atom")


atom_hotkey = "cmd-shift-ctrl-alt-t"
atom_command_pallet = "cmd-shift-p"

def command_from_palette(command):
    actions.key(atom_command_pallet)
    time.sleep(0.05)
    actions.user.paste(command)
    #time.sleep(0.1)
    actions.key("enter")



def command(command):
    def function(m):
        command_from_palette(command)

    return function




@mod.action_class
class Actions:
    def atom_open_command_palette():
        """Opens the command palette in atom period."""
        actions.key(atom_command_pallet)
        
    def atom_type_in_command_palette(m: str):
        """Types into atoms command palette"""
        command_from_palette(m)
        
    def atom_go_line_number(m: int):
        """"""
        actions.key("ctrl-g")
        #time.sleep(0.01)
        actions.insert(m)
        #time.sleep(0.1)
        actions.key("enter")
        
        