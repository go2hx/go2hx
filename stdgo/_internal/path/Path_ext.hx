package stdgo._internal.path;
function ext(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L187"
        {
            var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_i >= (0 : stdgo.GoInt) : Bool) && (_path[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/path/path.go#L188"
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/path/path.go#L189"
                    return (_path.__slice__(_i) : stdgo.GoString).__copy__();
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L192"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
