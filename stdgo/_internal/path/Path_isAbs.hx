package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function isAbs(_path:stdgo.GoString):Bool {
        return (((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
    }
