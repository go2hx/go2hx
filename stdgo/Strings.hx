package stdgo;
@:noUsing
inline function contains(s:String, value:String):Bool {
	return StringTools.contains(s, value);
}

@:noUsing
function hasPrefix(s:String, value:String):Bool {
	return s.substr(0, value.length) == value;
}

@:noUsing
inline function hasSuffix(s:String, value:String):Bool {
	return s.substr(s.length - value.length) == value;
}

@:noUsing
inline function toUpper(s:String):String {
	return s.toUpperCase();
}

@:noUsing
inline function toLower(s:String):String {
	return s.toLowerCase();
}
