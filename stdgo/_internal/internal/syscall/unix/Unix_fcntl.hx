package stdgo._internal.internal.syscall.unix;
import stdgo._internal.unsafe.Unsafe;
function fcntl(_fd:stdgo.GoInt, _cmd:stdgo.GoInt, _arg:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((38 : stdgo._internal.syscall.Syscall_Errno.Errno)) };
    }
