package stdgo._internal.path;
function isAbs(_path:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L220"
        return (((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
    }
