package std;

class Strings {
	public static function Contains(s:String, value:String):Bool {
		return StringTools.contains(s, value);
	}

	public static function HasPrefix(s:String, value:String):Bool {
		return s.substr(0, value.length) == value;
	}

	public static function HasSuffix(s:String, value:String):Bool {
		return s.substr(s.length - value.length) == value;
	}

	public static function ToUpper(s:String):String {
		return s.toUpperCase();
	}

	public static function ToLower(s:String):String {
		return s.toLowerCase();
	}
}
