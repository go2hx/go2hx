package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_loggingConn_asInterface) class T_loggingConn_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn> = _c;
        var _err = (null : stdgo.Error);
        stdgo._internal.net.http.Http__log._log.printf(("%s.Close() = ..." : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._name));
        _err = (@:checkr _c ?? throw "null pointer dereference").conn.close();
        stdgo._internal.net.http.Http__log._log.printf(("%s.Close() = %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err));
        return _err;
    }
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        stdgo._internal.net.http.Http__log._log.printf(("%s.Read(%d) = ...." : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((_p.length)));
        {
            var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").conn.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        stdgo._internal.net.http.Http__log._log.printf(("%s.Read(%d) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        stdgo._internal.net.http.Http__log._log.printf(("%s.Write(%d) = ...." : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((_p.length)));
        {
            var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").conn.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        stdgo._internal.net.http.Http__log._log.printf(("%s.Write(%d) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        return { _0 : _n, _1 : _err };
    }
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
