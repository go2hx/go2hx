import Go.ErrorReturn;
import haxe.Rest;
using haxe.io.Path;
class Path {
    public static var errBadPattern = new Errors("syntax error in pattern");
    public static function base(path:String):String {
        path = path.normalize();
        var index = path.lastIndexOf("/");
        if (index != -1)
            path = path.substr(index);
        return clean(path);
    }
    public static function clean(path:String):String {
        path = path.normalize();
        return path == "" ? "." : path;
    }
    public static function dir(path:String):String {
        path = path.normalize();
        return path.directory() == "" ? "." : path;
    }
    public static function ext(path:String):String {
        return path.extension();
    }
    public static function isAbs(path:String):Bool {
        return path.isAbsolute();
    }
    public static function join(elem:Rest<String>):String {
        return haxe.io.Path.join(elem.toArray());
    }
    public static function math(pattern:String,name:String):ErrorReturn<Bool> {
        return {value: true};
    }
    public static function split(path:String):{dir:String,file:String} {
        return {dir: dir(path),file: path.withoutDirectory()};
    }
}