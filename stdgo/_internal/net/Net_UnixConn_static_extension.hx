package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.UnixConn_asInterface) class UnixConn_static_extension {
    @:keep
    static public function writeMsgUnix( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "UnixConn:net.writeMsgUnix is not yet implemented";
    @:keep
    static public function writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_Addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "UnixConn:net.writeTo is not yet implemented";
    @:keep
    static public function writeToUnix( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "UnixConn:net.writeToUnix is not yet implemented";
    @:keep
    static public function readMsgUnix( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>; var _4 : stdgo.Error; } throw "UnixConn:net.readMsgUnix is not yet implemented";
    @:keep
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_Addr.Addr; var _2 : stdgo.Error; } throw "UnixConn:net.readFrom is not yet implemented";
    @:keep
    static public function readFromUnix( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>; var _2 : stdgo.Error; } throw "UnixConn:net.readFromUnix is not yet implemented";
    @:keep
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>):stdgo.Error throw "UnixConn:net.closeWrite is not yet implemented";
    @:keep
    static public function closeRead( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>):stdgo.Error throw "UnixConn:net.closeRead is not yet implemented";
    @:keep
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_UnixConn.UnixConn>):{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } throw "UnixConn:net.syscallConn is not yet implemented";
    @:embedded
    public static function _ok( __self__:stdgo._internal.net.Net_UnixConn.UnixConn):Bool return __self__._ok();
    @:embedded
    public static function write( __self__:stdgo._internal.net.Net_UnixConn.UnixConn, _text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_text);
    @:embedded
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_UnixConn.UnixConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setWriteDeadline(_t);
    @:embedded
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_UnixConn.UnixConn, __0:stdgo.GoInt):stdgo.Error return __self__.setWriteBuffer(__0);
    @:embedded
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_UnixConn.UnixConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setReadDeadline(_t);
    @:embedded
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_UnixConn.UnixConn, __0:stdgo.GoInt):stdgo.Error return __self__.setReadBuffer(__0);
    @:embedded
    public static function setDeadline( __self__:stdgo._internal.net.Net_UnixConn.UnixConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setDeadline(_t);
    @:embedded
    public static function remoteAddr( __self__:stdgo._internal.net.Net_UnixConn.UnixConn):stdgo._internal.net.Net_Addr.Addr return __self__.remoteAddr();
    @:embedded
    public static function read( __self__:stdgo._internal.net.Net_UnixConn.UnixConn, _text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_text);
    @:embedded
    public static function localAddr( __self__:stdgo._internal.net.Net_UnixConn.UnixConn):stdgo._internal.net.Net_Addr.Addr return __self__.localAddr();
    @:embedded
    public static function file( __self__:stdgo._internal.net.Net_UnixConn.UnixConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } return __self__.file();
    @:embedded
    public static function close( __self__:stdgo._internal.net.Net_UnixConn.UnixConn):stdgo.Error return __self__.close();
}
