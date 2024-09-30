package stdgo._internal.internal.syscall.unix;
function sendmsgNInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _to:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((38 : stdgo._internal.syscall.Syscall_Errno.Errno)) };
    }
