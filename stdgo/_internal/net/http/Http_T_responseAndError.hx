package stdgo._internal.net.http;
@:structInit class T_responseAndError {
    @:optional
    public var __92 : stdgo._internal.net.http.Http_T_incomparable.T_incomparable = new stdgo._internal.net.http.Http_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?__92:stdgo._internal.net.http.Http_T_incomparable.T_incomparable, ?_res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, ?_err:stdgo.Error) {
        if (__92 != null) this.__92 = __92;
        if (_res != null) this._res = _res;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_responseAndError(__92, _res, _err);
    }
}