package stdgo.internal.safefilepath;
/**
    Package safefilepath manipulates operating-system file paths.
**/
class Safefilepath {
    /**
        FromFS converts a slash-separated path into an operating-system path.
        
        FromFS returns an error if the path cannot be represented by the operating
        system. For example, paths containing '\' and ':' characters are rejected
        on Windows.
    **/
    static public function fromFS(_path:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.safefilepath.Safefilepath_fromFS.fromFS(_path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
