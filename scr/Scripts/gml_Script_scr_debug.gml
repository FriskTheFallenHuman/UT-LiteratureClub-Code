// If our global varaible does not exist, just return false
if (!variable_global_exists("debug"))
	return false

return (global.debug == true)