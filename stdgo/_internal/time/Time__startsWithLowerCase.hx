package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _startsWithLowerCase(_str:stdgo.GoString):Bool {
        if ((_str.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _c = (_str[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        return (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool);
    }
