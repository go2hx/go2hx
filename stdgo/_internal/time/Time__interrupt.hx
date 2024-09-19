package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _interrupt():Void {
        if (true) {
            stdgo._internal.syscall.Syscall_kill.kill(stdgo._internal.syscall.Syscall_getpid.getpid(), (1 : stdgo._internal.syscall.Syscall_Signal.Signal));
        };
    }
