/// @fucn string_split(str, delim)
/// @arg str
/// @arg delim

var str = argument0;
var delim = argument1;

var word = "";
var words = [];
var index = 0;

for(var i = 1; i <= string_length(str); i++) {
	var char = string_char_at(str, i);
	if(char == delim) {
		words[index] = word;
		index ++;
		word = "";
	} else {
		word += char;
	}
}
words[index] = word;
return words;