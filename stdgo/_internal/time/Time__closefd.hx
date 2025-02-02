package stdgo._internal.time;
function _closefd(_fd:stdgo.GoUIntptr):Void {
        stdgo._internal.syscall.Syscall_close.close((_fd : stdgo.GoInt));
    }
