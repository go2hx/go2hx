package stdgo._internal.syscall;
@:keep class RawConn_static_extension {
    static public function write(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error return t.write(_f);
    static public function read(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error return t.read(_f);
    static public function control(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error return t.control(_f);
}
