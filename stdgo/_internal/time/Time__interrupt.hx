package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _interrupt():Void {
        if (true) {
            stdgo._internal.syscall.Syscall_kill.kill(stdgo._internal.syscall.Syscall_getpid.getpid(), (1 : stdgo._internal.syscall.Syscall_Signal.Signal));
        };
    }
