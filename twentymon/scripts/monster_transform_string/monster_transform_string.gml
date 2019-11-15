/// @fucn monster_transform_string(str)
/// @arg str
/**
	The monster font uses several lowercase letters as special characters, 
	as listed below:
	
	a	HP
	b	XP
	c	PP
	d	XX
	e	GMS2Logo
	f	OldGmLogo
	g	$G
	r	Dpad
	s	DpadRight
	t	DpadLeft
	u	DpadUp
	v	DpadDown
	w	A
	x	B
	y	X
	z	Z
	
	This function transforms a string for use with the monster font, by making 
	all characters uppercase, then replacing special character escapes 
	(beginning with a '|') with the corresponding letter. For example, '|HP'
	is replaced with 'a'. These escapes are case insensitive.
*/

var str = string_upper(argument0);

str = string_replace_all(str, "|HP",		"a");
str = string_replace_all(str, "|XP",		"b");
str = string_replace_all(str, "|PP",		"c");
str = string_replace_all(str, "|XX",		"d");
str = string_replace_all(str, "|GMS2LOGO",	"e");
str = string_replace_all(str, "|OLDGMLOGO", "f");
str = string_replace_all(str, "|$G",		"g");
str = string_replace_all(str, "|DPAD",		"r");
str = string_replace_all(str, "|DPADRIGHT", "s");
str = string_replace_all(str, "|DPADLEFT",	"t");
str = string_replace_all(str, "|DPADLEFT",	"u");
str = string_replace_all(str, "|DPADDOWN",	"v");
str = string_replace_all(str, "|A",			"w");
str = string_replace_all(str, "|B",			"x");
str = string_replace_all(str, "|X",			"y");
str = string_replace_all(str, "|Z",			"z");

return str;