package stdgo._internal.time;
function _closefd(_fd:stdgo.GoUIntptr):Void {
        //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L40"
        stdgo._internal.syscall.Syscall_close.close((_fd : stdgo.GoInt));
    }
