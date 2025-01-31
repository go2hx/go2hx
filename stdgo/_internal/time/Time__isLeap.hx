package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _isLeap(_year:stdgo.GoInt):Bool {
        return (((_year % (4 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) && ((((_year % (100 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_year % (400 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) : Bool)) : Bool);
    }
