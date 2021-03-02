package stdgo.strings;

inline function contains(s:String, value:String):Bool {
	return StringTools.contains(s, value);
}


function hasPrefix(s:String, value:String):Bool {
	return s.substr(0, value.length) == value;
}


inline function hasSuffix(s:String, value:String):Bool {
	return s.substr(s.length - value.length) == value;
}


inline function toUpper(s:String):String {
	return s.toUpperCase();
}


inline function toLower(s:String):String {
	return s.toLowerCase();
}
