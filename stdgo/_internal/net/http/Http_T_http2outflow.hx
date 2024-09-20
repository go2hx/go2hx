package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2outflow_static_extension.T_http2outflow_static_extension) class T_http2outflow {
    @:optional
    public var __11 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _n : stdgo.GoInt32 = 0;
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>);
    public function new(?__11:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_n:stdgo.GoInt32, ?_conn:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>) {
        if (__11 != null) this.__11 = __11;
        if (_n != null) this._n = _n;
        if (_conn != null) this._conn = _conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2outflow(__11, _n, _conn);
    }
}
