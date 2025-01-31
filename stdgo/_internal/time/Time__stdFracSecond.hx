package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _stdFracSecond(_code:stdgo.GoInt, _n:stdgo.GoInt, _c:stdgo.GoInt):stdgo.GoInt {
        if (_c == ((46 : stdgo.GoInt))) {
            return (_code | ((((_n & (4095 : stdgo.GoInt) : stdgo.GoInt)) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
        };
        return ((_code | ((((_n & (4095 : stdgo.GoInt) : stdgo.GoInt)) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (268435456 : stdgo.GoInt) : stdgo.GoInt);
    }
