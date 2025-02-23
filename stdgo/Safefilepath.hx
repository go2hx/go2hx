package stdgo;
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
    static public inline function fromFS(_path:String):stdgo.Tuple<String, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.safefilepath.Safefilepath_fromfs.fromFS(_path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
