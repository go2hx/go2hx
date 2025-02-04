package stdgo._internal.internal.syscall.unix;
function recvmsgInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _recvflags = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno)) };
            _n = __tmp__._0;
            _oobn = __tmp__._1;
            _recvflags = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
