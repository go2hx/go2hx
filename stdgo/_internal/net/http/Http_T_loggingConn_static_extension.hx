package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_loggingConn_asInterface) class T_loggingConn_static_extension {
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn> = _c;
        var _err = (null : stdgo.Error);
        stdgo._internal.log.Log_printf.printf(("%s.Close() = ..." : stdgo.GoString), stdgo.Go.toInterface(_c._name));
        _err = _c.conn.close();
        stdgo._internal.log.Log_printf.printf(("%s.Close() = %v" : stdgo.GoString), stdgo.Go.toInterface(_c._name), stdgo.Go.toInterface(_err));
        return _err;
    }
    @:keep
    static public function read( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        stdgo._internal.log.Log_printf.printf(("%s.Read(%d) = ...." : stdgo.GoString), stdgo.Go.toInterface(_c._name), stdgo.Go.toInterface((_p.length)));
        {
            var __tmp__ = _c.conn.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.log.Log_printf.printf(("%s.Read(%d) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_c._name), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function write( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        stdgo._internal.log.Log_printf.printf(("%s.Write(%d) = ...." : stdgo.GoString), stdgo.Go.toInterface(_c._name), stdgo.Go.toInterface((_p.length)));
        {
            var __tmp__ = _c.conn.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.log.Log_printf.printf(("%s.Write(%d) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_c._name), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        return { _0 : _n, _1 : _err };
    }
    @:embedded
    public static function setWriteDeadline( __self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setWriteDeadline(__0);
    @:embedded
    public static function setReadDeadline( __self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setReadDeadline(__0);
    @:embedded
    public static function setDeadline( __self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, __0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.setDeadline(__0);
    @:embedded
    public static function remoteAddr( __self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn):stdgo._internal.net.Net_Addr.Addr return __self__.remoteAddr();
    @:embedded
    public static function localAddr( __self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn):stdgo._internal.net.Net_Addr.Addr return __self__.localAddr();
}
