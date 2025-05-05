package stdgo._internal.time;
function _interrupt():Void {
        //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L22"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/time/sys_unix.go#L23"
            stdgo._internal.syscall.Syscall_kill.kill(stdgo._internal.syscall.Syscall_getpid.getpid(), (1 : stdgo._internal.syscall.Syscall_signal.Signal));
        };
    }
