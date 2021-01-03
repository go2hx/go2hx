package gostd;

class Strings {
	public static function contains(s:String, value:String):Bool {
		return StringTools.contains(s, value);
	}

	public static function hasPrefix(s:String, value:String):Bool {
		return s.substr(0, value.length) == value;
	}

	public static function hasSuffix(s:String, value:String):Bool {
		return s.substr(s.length - value.length) == value;
	}

	public static function toUpper(s:String):String {
		return s.toUpperCase();
	}

	public static function toLower(s:String):String {
		return s.toLowerCase();
	}
}
