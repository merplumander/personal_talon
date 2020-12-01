from talon import Module
import os


mod = Module()
    
@mod.action_class
class Actions:
    def talon_open_log():
        """Opens the talon log file in a console"""
        os.system("open /Users/philipp/.talon/talon.log")