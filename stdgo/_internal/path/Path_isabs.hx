package stdgo._internal.path;
function isAbs(_path:stdgo.GoString):Bool {
        return (((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
    }
