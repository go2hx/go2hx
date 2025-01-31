package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _parseGMT(_value:stdgo.GoString):stdgo.GoInt {
        _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        if ((_value.length) == ((0 : stdgo.GoInt))) {
            return (3 : stdgo.GoInt);
        };
        return ((3 : stdgo.GoInt) + stdgo._internal.time.Time__parseSignedOffset._parseSignedOffset(_value?.__copy__()) : stdgo.GoInt);
    }
