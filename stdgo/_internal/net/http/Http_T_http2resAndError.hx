package stdgo._internal.net.http;
@:structInit class T_http2resAndError {
    @:optional
    public var __35 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?__35:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, ?_err:stdgo.Error) {
        if (__35 != null) this.__35 = __35;
        if (_res != null) this._res = _res;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2resAndError(__35, _res, _err);
    }
}
