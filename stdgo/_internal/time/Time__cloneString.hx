package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _cloneString(_s:stdgo.GoString):stdgo.GoString {
        return ((_s : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
