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
	h	ctrl
	i	shift
	j	esc
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

var _str = string_upper(argument0);

_str = string_replace_all(_str, "|HP",			"a");
_str = string_replace_all(_str, "|XP",			"b");
_str = string_replace_all(_str, "|PP",			"c");
_str = string_replace_all(_str, "|XX",			"d");
_str = string_replace_all(_str, "|GMS2LOGO",	"e");
_str = string_replace_all(_str, "|OLDGMLOGO",	"f");
_str = string_replace_all(_str, "|$G",			"g");
_str = string_replace_all(_str, "|CTRL",		"h");
_str = string_replace_all(_str, "|SHIFT",		"i");
_str = string_replace_all(_str, "|ESC",			"j");
_str = string_replace_all(_str, "|DPAD",		"r");
_str = string_replace_all(_str, "|DPADRIGHT",	"s");
_str = string_replace_all(_str, "|DPADLEFT",	"t");
_str = string_replace_all(_str, "|DPADLEFT",	"u");
_str = string_replace_all(_str, "|DPADDOWN",	"v");
_str = string_replace_all(_str, "|A",			"w");
_str = string_replace_all(_str, "|B",			"x");
_str = string_replace_all(_str, "|X",			"y");
_str = string_replace_all(_str, "|Z",			"z");

return _str;