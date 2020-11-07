package go;

class Strings {
    public static function contains(s:String,value:String):Bool {
        return StringTools.contains(s,value);
    }
    public static function hasPrefix(s:String,value:String):Bool {
        return true;
    }
    public static function hasSuffix(s:String,value:String):Bool {
        return true;
    }
}