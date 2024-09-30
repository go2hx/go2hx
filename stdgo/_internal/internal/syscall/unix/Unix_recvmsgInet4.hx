package stdgo._internal.internal.syscall.unix;
function recvmsgInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _recvflags = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : stdgo.Go.asInterface((38 : stdgo._internal.syscall.Syscall_Errno.Errno)) };
    }
