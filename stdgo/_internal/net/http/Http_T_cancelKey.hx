package stdgo._internal.net.http;
@:structInit class T_cancelKey {
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public function new(?_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) {
        if (_req != null) this._req = _req;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cancelKey(_req);
    }
}
