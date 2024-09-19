package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_dumpConn_asInterface) class T_dumpConn_static_extension {
    @:keep
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>):stdgo._internal.net.Net_Addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo._internal.net.Net_Addr.Addr);
    }
    @:keep
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>):stdgo._internal.net.Net_Addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo._internal.net.Net_Addr.Addr);
    }
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:embedded
    public static function write( __self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function read( __self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
}
