package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.TCPConn_asInterface) class TCPConn_static_extension {
    @:keep
    static public function multipathTCP( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>):{ var _0 : Bool; var _1 : stdgo.Error; } throw "TCPConn:net.multipathTCP is not yet implemented";
    @:keep
    static public function setNoDelay( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>, _noDelay:Bool):stdgo.Error throw "TCPConn:net.setNoDelay is not yet implemented";
    @:keep
    static public function setKeepAlivePeriod( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>, _d:stdgo._internal.time.Time_Duration.Duration):stdgo.Error throw "TCPConn:net.setKeepAlivePeriod is not yet implemented";
    @:keep
    static public function setKeepAlive( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>, _keepalive:Bool):stdgo.Error throw "TCPConn:net.setKeepAlive is not yet implemented";
    @:keep
    static public function setLinger( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>, _sec:stdgo.GoInt):stdgo.Error throw "TCPConn:net.setLinger is not yet implemented";
    @:keep
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>):stdgo.Error throw "TCPConn:net.closeWrite is not yet implemented";
    @:keep
    static public function closeRead( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>):stdgo.Error throw "TCPConn:net.closeRead is not yet implemented";
    @:keep
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "TCPConn:net.readFrom is not yet implemented";
    @:keep
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>):{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } throw "TCPConn:net.syscallConn is not yet implemented";
    @:embedded
    public static function _ok( __self__:stdgo._internal.net.Net_TCPConn.TCPConn):Bool return __self__._ok();
    @:embedded
    public static function write( __self__:stdgo._internal.net.Net_TCPConn.TCPConn, _text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_text);
    @:embedded
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_TCPConn.TCPConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setWriteDeadline(_t);
    @:embedded
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_TCPConn.TCPConn, __0:stdgo.GoInt):stdgo.Error return __self__.setWriteBuffer(__0);
    @:embedded
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_TCPConn.TCPConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setReadDeadline(_t);
    @:embedded
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_TCPConn.TCPConn, __0:stdgo.GoInt):stdgo.Error return __self__.setReadBuffer(__0);
    @:embedded
    public static function setDeadline( __self__:stdgo._internal.net.Net_TCPConn.TCPConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setDeadline(_t);
    @:embedded
    public static function remoteAddr( __self__:stdgo._internal.net.Net_TCPConn.TCPConn):stdgo._internal.net.Net_Addr.Addr return __self__.remoteAddr();
    @:embedded
    public static function read( __self__:stdgo._internal.net.Net_TCPConn.TCPConn, _text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_text);
    @:embedded
    public static function localAddr( __self__:stdgo._internal.net.Net_TCPConn.TCPConn):stdgo._internal.net.Net_Addr.Addr return __self__.localAddr();
    @:embedded
    public static function file( __self__:stdgo._internal.net.Net_TCPConn.TCPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } return __self__.file();
    @:embedded
    public static function close( __self__:stdgo._internal.net.Net_TCPConn.TCPConn):stdgo.Error return __self__.close();
}
