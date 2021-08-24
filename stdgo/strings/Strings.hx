package stdgo.strings;

import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;

inline function contains(s:GoString, value:GoString):Bool {
	return StringTools.contains(s, value);
}

inline function count(s:GoString, value:GoString):GoInt {
	var index = -1;
	final s:String = s.toString();
	var count = 0;
	while (true) {
		index = s.indexOf(value, index + 1);
		if (index == -1)
			break;
		count++;
	}
	return count;
}

function join(elems:Slice<GoString>, sep:GoString):GoString {
	return elems.toVector().join(sep);
}

function repeat(s:GoString, count:GoInt):GoString {
	return [for (i in 0...count.toBasic()) s].join("");
}

function split(s:GoString, sep:GoString):Slice<GoString> {
	return splitN(s, sep, -1);
}

function splitN(s:GoString, sep:GoString, n:GoInt):Slice<GoString> {
	if (n == 0)
		return new Slice().nil();
	// very inefficent (TODO) more optimized version
	final s:String = s.toString();
	if (n == -1)
		n = s.length;
	return new Slice<GoString>(...[for (s in s.split(sep)) (s : GoString)].slice(0, n.toBasic()));
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
	var str:String = s;
	var index = -1;
	for (i in 0...count.toBasic()) {
		var j = str.indexOf(sub, index + 1);
		if (j == -1)
			return str;
		index = j + sub.length.toBasic();
		str = str.substr(0, j) + by + str.substr(index);
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
