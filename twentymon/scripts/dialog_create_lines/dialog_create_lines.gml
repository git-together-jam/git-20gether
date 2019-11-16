/// @fucn dialog_create_lines(str, width)
/// @arg str
/// @arg width

var str = argument0;
var width = argument1;

var line = "";
var lines = [];
var index = 0;

var words = string_split(str, " ");

for(var i = 0; i < array_length_1d(words); i++) {
	var word = words[i];
	if(string_width(line + word) >= width) {
		lines[index] = line;
		index ++;
		line = word + " ";
	} else {
		line += word + " ";
	}
}
lines[index] = line;
return lines;