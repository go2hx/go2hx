package stdgo._internal.syscall;
@:keep class RawConn_static_extension {
    static public function write(t:RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error return t.write(_f);
    static public function read(t:RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error return t.read(_f);
    static public function control(t:RawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error return t.control(_f);
}
