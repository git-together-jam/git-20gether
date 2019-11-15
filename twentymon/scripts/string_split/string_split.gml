/// @fucn string_split(str, delim)
/// @arg str
/// @arg delim

var _str = argument0;
var _delim = argument1;

var word = "";
var words = [];
var index = 0;

for(var i = 1; i <= string_length(_str); i++) {
	var char = string_char_at(_str, i);
	if(char == _delim) {
		words[index] = word;
		index ++;
		word = "";
	} else {
		word += char;
	}
}
words[index] = word;
return words;