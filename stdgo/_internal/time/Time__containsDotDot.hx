package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _containsDotDot(_s:stdgo.GoString):Bool {
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                if (((_s[(_i : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                    return true;
                };
            });
        };
        return false;
    }