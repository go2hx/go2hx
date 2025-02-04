package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_dumpConn_asInterface) class T_dumpConn_static_extension {
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn> = _c;
        return (null : stdgo._internal.net.Net_addr.Addr);
    }
    @:keep
    @:tdfield
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn> = _c;
        return (null : stdgo._internal.net.Net_addr.Addr);
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}
