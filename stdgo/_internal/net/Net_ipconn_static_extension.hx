package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.IPConn_asInterface) class IPConn_static_extension {
    @:keep
    @:tdfield
    static public function writeMsgIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "IPConn:net.writeMsgIP is not yet implemented";
    @:keep
    @:tdfield
    static public function writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "IPConn:net.writeTo is not yet implemented";
    @:keep
    @:tdfield
    static public function writeToIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "IPConn:net.writeToIP is not yet implemented";
    @:keep
    @:tdfield
    static public function readMsgIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _4 : stdgo.Error; } throw "IPConn:net.readMsgIP is not yet implemented";
    @:keep
    @:tdfield
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } throw "IPConn:net.readFrom is not yet implemented";
    @:keep
    @:tdfield
    static public function readFromIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _2 : stdgo.Error; } throw "IPConn:net.readFromIP is not yet implemented";
    @:keep
    @:tdfield
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } throw "IPConn:net.syscallConn is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_ipconn.IPConn):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_ipconn.IPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo.Error return @:_5 __self__.close();
}
