package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _containsDotDot(_s:stdgo.GoString):Bool {
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                if (((_s[(_i : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                    return true;
                };
                _i++;
            };
        };
        return false;
    }
