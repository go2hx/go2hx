package stdgo._internal.path.filepath;
function ext(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L286"
        {
            var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L287"
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L288"
                    return (_path.__slice__(_i) : stdgo.GoString).__copy__();
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L291"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
