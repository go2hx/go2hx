package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function _lastSlash(_s:stdgo.GoString):stdgo.GoInt {
        var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        return _i;
    }
