package stdgo._internal.time;
function _interrupt():Void {
        if (true) {
            stdgo._internal.syscall.Syscall_kill.kill(stdgo._internal.syscall.Syscall_getpid.getpid(), (1 : stdgo._internal.syscall.Syscall_signal.Signal));
        };
    }
