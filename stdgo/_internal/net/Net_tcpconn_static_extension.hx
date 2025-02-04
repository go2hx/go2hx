package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.TCPConn_asInterface) class TCPConn_static_extension {
    @:keep
    @:tdfield
    static public function multipathTCP( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):{ var _0 : Bool; var _1 : stdgo.Error; } throw "TCPConn:net.multipathTCP is not yet implemented";
    @:keep
    @:tdfield
    static public function setNoDelay( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _noDelay:Bool):stdgo.Error throw "TCPConn:net.setNoDelay is not yet implemented";
    @:keep
    @:tdfield
    static public function setKeepAlivePeriod( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _d:stdgo._internal.time.Time_duration.Duration):stdgo.Error throw "TCPConn:net.setKeepAlivePeriod is not yet implemented";
    @:keep
    @:tdfield
    static public function setKeepAlive( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _keepalive:Bool):stdgo.Error throw "TCPConn:net.setKeepAlive is not yet implemented";
    @:keep
    @:tdfield
    static public function setLinger( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _sec:stdgo.GoInt):stdgo.Error throw "TCPConn:net.setLinger is not yet implemented";
    @:keep
    @:tdfield
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):stdgo.Error throw "TCPConn:net.closeWrite is not yet implemented";
    @:keep
    @:tdfield
    static public function closeRead( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):stdgo.Error throw "TCPConn:net.closeRead is not yet implemented";
    @:keep
    @:tdfield
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "TCPConn:net.readFrom is not yet implemented";
    @:keep
    @:tdfield
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } throw "TCPConn:net.syscallConn is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo.Error return @:_5 __self__.close();
}
