package stdgo._internal.internal.syscall.unix;
import stdgo._internal.unsafe.Unsafe;
function recvfromInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((38 : stdgo._internal.syscall.Syscall_Errno.Errno)) };
    }