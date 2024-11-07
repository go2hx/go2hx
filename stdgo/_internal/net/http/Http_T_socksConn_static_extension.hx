package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksConn_asInterface) class T_socksConn_static_extension {
    @:keep
    static public function boundAddr( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_socksConn.T_socksConn>):stdgo._internal.net.Net_Addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_socksConn.T_socksConn> = _c;
        if ((_c == null || (_c : Dynamic).__nil__)) {
            return (null : stdgo._internal.net.Net_Addr.Addr);
        };
        return _c._boundAddr;
    }
    @:embedded
    public static function write( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(__0);
    @:embedded
    public static function setWriteDeadline( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setWriteDeadline(__0);
    @:embedded
    public static function setReadDeadline( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setReadDeadline(__0);
    @:embedded
    public static function setDeadline( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setDeadline(__0);
    @:embedded
    public static function remoteAddr( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo._internal.net.Net_Addr.Addr return __self__.remoteAddr();
    @:embedded
    public static function read( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
    @:embedded
    public static function localAddr( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo._internal.net.Net_Addr.Addr return __self__.localAddr();
    @:embedded
    public static function close( __self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo.Error return __self__.close();
}
