package stdgo._internal.internal.syscall.unix;
function recvfromInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((38 : stdgo._internal.syscall.Syscall_Errno.Errno)) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
