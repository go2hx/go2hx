package stdgo.syscall;
class RawConn_static_extension {
    static public function write(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.write(t, _f);
    }
    static public function read(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.read(t, _f);
    }
    static public function control(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.control(t, _f);
    }
}
