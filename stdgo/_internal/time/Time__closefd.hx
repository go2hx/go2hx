package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _closefd(_fd:stdgo.GoUIntptr):Void {
        stdgo._internal.syscall.Syscall_close.close((_fd : stdgo.GoInt));
    }
