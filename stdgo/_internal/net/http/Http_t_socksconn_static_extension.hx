package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksConn_asInterface) class T_socksConn_static_extension {
    @:keep
    @:tdfield
    static public function boundAddr( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_socksconn.T_socksConn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_socksconn.T_socksConn> = _c;
        if ((_c == null || (_c : Dynamic).__nil__)) {
            return (null : stdgo._internal.net.Net_addr.Addr);
        };
        return (@:checkr _c ?? throw "null pointer dereference")._boundAddr;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn):stdgo.Error return @:_5 __self__.close();
}
