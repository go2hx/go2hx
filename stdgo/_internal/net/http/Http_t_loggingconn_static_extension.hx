package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_loggingConn_asInterface) class T_loggingConn_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>):stdgo.Error throw "T_loggingConn:net.http.close is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_loggingConn:net.http.read is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_loggingConn:net.http.write is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
}
