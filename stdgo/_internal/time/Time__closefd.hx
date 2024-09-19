package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _closefd(_fd:stdgo.GoUIntptr):Void {
        stdgo._internal.syscall.Syscall_close.close((_fd : stdgo.GoInt));
    }
