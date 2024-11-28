package stdgo._internal.internal.syscall.unix;
function recvmsgInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _recvflags = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : _n = (0 : stdgo.GoInt), _1 : _oobn = (0 : stdgo.GoInt), _2 : _recvflags = (0 : stdgo.GoInt), _3 : _err = stdgo.Go.asInterface((38 : stdgo._internal.syscall.Syscall_Errno.Errno)) };
    }
