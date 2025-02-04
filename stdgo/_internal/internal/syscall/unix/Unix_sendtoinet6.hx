package stdgo._internal.internal.syscall.unix;
function sendtoInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):stdgo.Error {
        var _err = (null : stdgo.Error);
        return _err = stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno));
    }
