package stdgo._internal.io.fs;
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = _path;
            if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                return ("." : stdgo.GoString);
            } else {
                return (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
