package stdgo.internal.safefilepath;
/**
    * Package safefilepath manipulates operating-system file paths.
**/
class Safefilepath {
    /**
        * FromFS converts a slash-separated path into an operating-system path.
        * 
        * FromFS returns an error if the path cannot be represented by the operating
        * system. For example, paths containing '\' and ':' characters are rejected
        * on Windows.
    **/
    static public inline function fromFS(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.internal.safefilepath.Safefilepath_fromfs.fromFS(_path);
}
