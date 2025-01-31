package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _commaOrPeriod(_b:stdgo.GoUInt8):Bool {
        return ((_b == (46 : stdgo.GoUInt8)) || (_b == (44 : stdgo.GoUInt8)) : Bool);
    }
