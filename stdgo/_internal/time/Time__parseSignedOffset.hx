package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _parseSignedOffset(_value:stdgo.GoString):stdgo.GoInt {
        var _sign = (_value[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_sign != (45 : stdgo.GoUInt8)) && (_sign != (43 : stdgo.GoUInt8)) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.time.Time__leadingInt._leadingInt((_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _x:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_err != null) || ((_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == _rem) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        if ((_x > (23i64 : stdgo.GoUInt64) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return ((_value.length) - (_rem.length) : stdgo.GoInt);
    }
