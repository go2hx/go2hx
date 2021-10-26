package stdgo.path;

import haxe.Rest;

using haxe.io.Path;

var errBadPattern = stdgo.errors.Errors.new_("syntax error in pattern");

function base(path:String):GoString {
	path = path.normalize();
	var index = path.lastIndexOf("/");
	if (index != -1)
		path = path.substr(index);
	return clean(path);
}

function clean(path:String):GoString {
	path = path.normalize();
	return path == "" ? "." : path;
}

function dir(path:String):GoString {
	path = path.normalize();
	return path.directory() == "" ? "." : path;
}

function ext(path:String):GoString {
	return path.extension();
}

function isAbs(path:String):Bool {
	return path.isAbsolute();
}

function join(elem:Rest<String>):GoString {
	return haxe.io.Path.join(elem.toArray());
}

function math(pattern:String, name:String):{_0:Bool, ?_1:stdgo.Error} {
	return {_0: true};
}

function split(path:String):{_0:GoString, _1:GoString} {
	return {_0: dir(path), _1: path.withoutDirectory()};
}
