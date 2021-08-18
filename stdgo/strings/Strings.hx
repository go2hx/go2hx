package stdgo.strings;

import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;

inline function contains(s:GoString, value:GoString):Bool {
	return StringTools.contains(s, value);
}

function hasPrefix(s:GoString, value:GoString):Bool {
	return s.substr(0, value.toString().length) == value;
}

inline function hasSuffix(s:GoString, value:GoString):Bool {
	return s.substr(s.toString().length - value.toString().length) == value;
}

inline function index(s:GoString, substr:GoString):Int
	return s.toString().indexOf(substr);

function indexByte(s:GoString, c:GoByte):GoInt {
	for (i in 0...s.length.toBasic()) {
		if (s[i] == c)
			return i;
	}
	return -1;
}

function replace(s:GoString, sub:GoString, by:GoString, count:GoInt):GoString {
	if (count == 0)
		return s;
	if (count == -1)
		return StringTools.replace(s, sub, by);
	var str = s;
	var index = 0;
	for (i in 0...count.toBasic()) {
		var j = str.toString().indexOf(sub, index);
		if (j == -1)
			return str;
		index = j + sub.length.toBasic();
		str = str.substr(j) + by + str.substr(index);
	}
	return str;
}

function replaceAll(s:GoString, old:GoString, n:GoString):GoString {
	return StringTools.replace(s, old, n);
}

inline function toUpper(s:GoString):GoString {
	return s.toString().toUpperCase();
}

inline function toLower(s:GoString):GoString {
	return s.toString().toLowerCase();
}
