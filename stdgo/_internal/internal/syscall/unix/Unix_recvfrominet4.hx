package stdgo._internal.internal.syscall.unix;
function recvfromInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/syscall/unix/net_js.go#L15"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno)) };
    }
