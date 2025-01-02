package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2inflow_asInterface) class T_http2inflow_static_extension {
    @:keep
    @:tdfield
    static public function _take( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>, _n:stdgo.GoUInt32):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow> = _f;
        if ((_n > ((@:checkr _f ?? throw "null pointer dereference")._avail : stdgo.GoUInt32) : Bool)) {
            return false;
        };
        (@:checkr _f ?? throw "null pointer dereference")._avail = ((@:checkr _f ?? throw "null pointer dereference")._avail - ((_n : stdgo.GoInt32)) : stdgo.GoInt32);
        return true;
    }
    @:keep
    @:tdfield
    static public function _add( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>, _n:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow> = _f;
        var _connAdd = (0 : stdgo.GoInt32);
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("negative update" : stdgo.GoString));
        };
        var _unsent = (((@:checkr _f ?? throw "null pointer dereference")._unsent : stdgo.GoInt64) + (_n : stdgo.GoInt64) : stdgo.GoInt64);
        {};
        if (((_unsent + ((@:checkr _f ?? throw "null pointer dereference")._avail : stdgo.GoInt64) : stdgo.GoInt64) > (2147483647i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(("flow control update exceeds maximum window size" : stdgo.GoString));
        };
        (@:checkr _f ?? throw "null pointer dereference")._unsent = (_unsent : stdgo.GoInt32);
        if ((((@:checkr _f ?? throw "null pointer dereference")._unsent < (4096 : stdgo.GoInt32) : Bool) && ((@:checkr _f ?? throw "null pointer dereference")._unsent < (@:checkr _f ?? throw "null pointer dereference")._avail : Bool) : Bool)) {
            return _connAdd = (0 : stdgo.GoInt32);
        };
        (@:checkr _f ?? throw "null pointer dereference")._avail = ((@:checkr _f ?? throw "null pointer dereference")._avail + ((@:checkr _f ?? throw "null pointer dereference")._unsent) : stdgo.GoInt32);
        (@:checkr _f ?? throw "null pointer dereference")._unsent = (0 : stdgo.GoInt32);
        return _connAdd = (_unsent : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _init( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>, _n:stdgo.GoInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._avail = _n;
    }
}
