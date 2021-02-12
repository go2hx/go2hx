package stdgo;

import Go.ErrorReturn;
import haxe.Rest;

using haxe.io.Path;
var errBadPattern = new Errors("syntax error in pattern");

@:noUsing
function base(path:String):String {
	path = path.normalize();
	var index = path.lastIndexOf("/");
	if (index != -1)
		path = path.substr(index);
	return clean(path);
}
@:noUsing
function clean(path:String):String {
	path = path.normalize();
	return path == "" ? "." : path;
}
@:noUsing
function dir(path:String):String {
	path = path.normalize();
	return path.directory() == "" ? "." : path;
}
@:noUsing
function ext(path:String):String {
	return path.extension();
}
@:noUsing
function isAbs(path:String):Bool {
	return path.isAbsolute();
}
@:noUsing
function join(elem:Rest<String>):String {
	return haxe.io.Path.join(elem.toArray());
}
@:noUsing
function math(pattern:String, name:String):ErrorReturn<Bool> {
	return {value: true};
}
@:noUsing
function split(path:String):{dir:String, file:String} {
	return {dir: dir(path), file: path.withoutDirectory()};
}