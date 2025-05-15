package io;

import haxe.macro.Expr;

function toGoPath(path:String):String {
	return StringTools.replace(path, ".", "/");
}

function toHaxePath(path:String):String {
	return StringTools.replace(path, "/", ".");
}

function normalizePath(path:String):String {
	path = StringTools.replace(path, ".", "dot");
	path = StringTools.replace(path, ":", "colon");
	path = StringTools.replace(path, "go-", "godash");
	path = StringTools.replace(path, "-", "dash");
	var path = path.split("/");
	for (i in 0...path.length) {
		if (io.Data.reserved.indexOf(path[i]) != -1) {
			path[i] += "_";
		}
	}
	return path.join("/");
}

function title(name:String):String {
	final name = name.charAt(0).toUpperCase() + name.substring(1);
	if (name == "Atomic")
		return "Atomic_";
	if (name == "Environ")
		return "Environ_";
	return name;
}


function importClassName(name:String):String {
	name = nameAscii(name);
	final bool = isTitle(name);
	name = title(name);
	if (bool || isInvalidTitle(name)) {
		name = "T_" + name;
	}
	if (Data.reservedClassNames.indexOf(name) != -1)
		name += "_";
	return name;
}


function isInvalidTitle(name:String):Bool {
	final c = name.charAt(0);
	if ([for (i in 0...10 + 1) '$i'].indexOf(c) != -1)
		return true;
	if (c == "_")
		return true;
	return false;
}

function nameAscii(name:String):String {
	for (i in 0...name.length) {
		final char = name.charCodeAt(i);
		final isAscii = char > -1 && char < 128;
		if (!isAscii) {
			name = name.substr(0, i) + '$char' + name.substr(i + 1);
			if (i == 0)
				name = "_" + name;
		}
	}
	if (name.length > 255 - 80)
		name = name.substr(0, 255 - 80);
	return name;
}

function untitle(name:String):String {
	if (isTitle(name)) {
		name = name.substr(0, 1).toLowerCase() + name.substring(1);
	} else {
		name = "_" + name;
	}
	return name;
}

function isTitle(string:String):Bool {
	if (string.charAt(0) == "_")
		return false;
	return string.charAt(0) == string.charAt(0).toUpperCase();
}
