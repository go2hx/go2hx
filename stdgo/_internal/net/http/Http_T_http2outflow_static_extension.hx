package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2outflow_asInterface) class T_http2outflow_static_extension {
    @:keep
    static public function _add( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>, _n:stdgo.GoInt32):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        var _sum = (_f._n + _n : stdgo.GoInt32);
        if (((_sum > _n : Bool)) == ((_f._n > (0 : stdgo.GoInt32) : Bool))) {
            _f._n = _sum;
            return true;
        };
        return false;
    }
    @:keep
    static public function _take( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>, _n:stdgo.GoInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        if ((_n > _f._available() : Bool)) {
            throw stdgo.Go.toInterface(("internal error: took too much" : stdgo.GoString));
        };
        _f._n = (_f._n - (_n) : stdgo.GoInt32);
        if ((_f._conn != null && ((_f._conn : Dynamic).__nil__ == null || !(_f._conn : Dynamic).__nil__))) {
            _f._conn._n = (_f._conn._n - (_n) : stdgo.GoInt32);
        };
    }
    @:keep
    static public function _available( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>):stdgo.GoInt32 {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        var _n = (_f._n : stdgo.GoInt32);
        if (((_f._conn != null && ((_f._conn : Dynamic).__nil__ == null || !(_f._conn : Dynamic).__nil__)) && (_f._conn._n < _n : Bool) : Bool)) {
            _n = _f._conn._n;
        };
        return _n;
    }
    @:keep
    static public function _setConnFlow( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>, _cf:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        _f._conn = _cf;
    }
}
