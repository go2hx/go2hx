package stdgo._internal.path.filepath;
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L297"
        {
            final __value__ = _path;
            if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L299"
                return ("." : stdgo.GoString);
            } else if (__value__ == (((47 : stdgo.GoInt32) : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L302"
                return _path?.__copy__();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L304"
                return (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
