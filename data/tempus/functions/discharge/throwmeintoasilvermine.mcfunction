# I know how fucking stupid this looks, but trust me, this was literally the only way I could do this within one tick.
# For some goddamn reason, the item_check and fallingblock_check functions ran AFTER the if_else_list contained within the power this function assigns.
# Even if I just tried to do an execute_command action that runs the SOLE COMMAND OF THIS FUNCTION, it occurs after. I have no fucking idea why. Kill me.
# IT'S NOT MY FAULT, I'M TELLING YOU.

power grant @s tempus:discharge/launch tempus:discharge