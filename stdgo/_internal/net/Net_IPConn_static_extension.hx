package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.IPConn_asInterface) class IPConn_static_extension {
    @:keep
    static public function writeMsgIP( _c:stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "IPConn:net.writeMsgIP is not yet implemented";
    @:keep
    static public function writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_Addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "IPConn:net.writeTo is not yet implemented";
    @:keep
    static public function writeToIP( _c:stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "IPConn:net.writeToIP is not yet implemented";
    @:keep
    static public function readMsgIP( _c:stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>; var _4 : stdgo.Error; } throw "IPConn:net.readMsgIP is not yet implemented";
    @:keep
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_Addr.Addr; var _2 : stdgo.Error; } throw "IPConn:net.readFrom is not yet implemented";
    @:keep
    static public function readFromIP( _c:stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>; var _2 : stdgo.Error; } throw "IPConn:net.readFromIP is not yet implemented";
    @:keep
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>):{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } throw "IPConn:net.syscallConn is not yet implemented";
    @:embedded
    public static function _ok( __self__:stdgo._internal.net.Net_IPConn.IPConn):Bool return __self__._ok();
    @:embedded
    public static function write( __self__:stdgo._internal.net.Net_IPConn.IPConn, _text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_text);
    @:embedded
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_IPConn.IPConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setWriteDeadline(_t);
    @:embedded
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_IPConn.IPConn, __0:stdgo.GoInt):stdgo.Error return __self__.setWriteBuffer(__0);
    @:embedded
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_IPConn.IPConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setReadDeadline(_t);
    @:embedded
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_IPConn.IPConn, __0:stdgo.GoInt):stdgo.Error return __self__.setReadBuffer(__0);
    @:embedded
    public static function setDeadline( __self__:stdgo._internal.net.Net_IPConn.IPConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setDeadline(_t);
    @:embedded
    public static function remoteAddr( __self__:stdgo._internal.net.Net_IPConn.IPConn):stdgo._internal.net.Net_Addr.Addr return __self__.remoteAddr();
    @:embedded
    public static function read( __self__:stdgo._internal.net.Net_IPConn.IPConn, _text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_text);
    @:embedded
    public static function localAddr( __self__:stdgo._internal.net.Net_IPConn.IPConn):stdgo._internal.net.Net_Addr.Addr return __self__.localAddr();
    @:embedded
    public static function file( __self__:stdgo._internal.net.Net_IPConn.IPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } return __self__.file();
    @:embedded
    public static function close( __self__:stdgo._internal.net.Net_IPConn.IPConn):stdgo.Error return __self__.close();
}
