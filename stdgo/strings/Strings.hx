package stdgo.strings;

import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;

inline function contains(s:String, value:String):Bool {
	return StringTools.contains(s, value);
}

function hasPrefix(s:String, value:String):Bool {
	return s.substr(0, value.length) == value;
}

inline function hasSuffix(s:String, value:String):Bool {
	return s.substr(s.length - value.length) == value;
}

inline function index(s:String, substr:String):Int
	return s.indexOf(substr);

function indexByte(s:GoString, c:GoByte):GoInt {
	for (i in 0...s.length.toBasic()) {
		if (s[i] == c)
			return i;
	}
	return -1;
}

function replace(s:String, sub:String, by:String, count:GoInt):GoString {
	if (count == 0)
		return s;
	if (count == -1)
		return StringTools.replace(s, sub, by);
	var str = s;
	var index = 0;
	for (i in 0...count.toBasic()) {
		var j = str.indexOf(sub, index);
		if (j == -1)
			return str;
		index = j + sub.length;
		str = str.substr(j) + by + str.substr(index);
	}
	return str;
}

function replaceAll(s:String, old:String, n:String):GoString {
	return StringTools.replace(s, old, n);
}

inline function toUpper(s:String):GoString {
	return s.toUpperCase();
}

inline function toLower(s:String):GoString {
	return s.toLowerCase();
}
