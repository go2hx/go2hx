package stdgo._internal.io.fs;
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L87"
        {
            final __value__ = _path;
            if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L89"
                return ("." : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L91"
                return (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
