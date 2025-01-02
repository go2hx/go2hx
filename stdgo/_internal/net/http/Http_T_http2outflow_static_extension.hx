package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2outflow_asInterface) class T_http2outflow_static_extension {
    @:keep
    @:tdfield
    static public function _add( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>, _n:stdgo.GoInt32):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        var _sum = ((@:checkr _f ?? throw "null pointer dereference")._n + _n : stdgo.GoInt32);
        if (((_sum > _n : Bool)) == (((@:checkr _f ?? throw "null pointer dereference")._n > (0 : stdgo.GoInt32) : Bool))) {
            (@:checkr _f ?? throw "null pointer dereference")._n = _sum;
            return true;
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _take( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>, _n:stdgo.GoInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        if ((_n > @:check2r _f._available() : Bool)) {
            throw stdgo.Go.toInterface(("internal error: took too much" : stdgo.GoString));
        };
        (@:checkr _f ?? throw "null pointer dereference")._n = ((@:checkr _f ?? throw "null pointer dereference")._n - (_n) : stdgo.GoInt32);
        if (((@:checkr _f ?? throw "null pointer dereference")._conn != null && (((@:checkr _f ?? throw "null pointer dereference")._conn : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference")._conn : Dynamic).__nil__))) {
            (@:checkr (@:checkr _f ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._n = ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._n - (_n) : stdgo.GoInt32);
        };
    }
    @:keep
    @:tdfield
    static public function _available( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>):stdgo.GoInt32 {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        var _n = ((@:checkr _f ?? throw "null pointer dereference")._n : stdgo.GoInt32);
        if ((((@:checkr _f ?? throw "null pointer dereference")._conn != null && (((@:checkr _f ?? throw "null pointer dereference")._conn : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference")._conn : Dynamic).__nil__)) && ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._n < _n : Bool) : Bool)) {
            _n = (@:checkr (@:checkr _f ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._n;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _setConnFlow( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>, _cf:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._conn = _cf;
    }
}
