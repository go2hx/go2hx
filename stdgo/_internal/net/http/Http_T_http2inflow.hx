package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2inflow_static_extension.T_http2inflow_static_extension) class T_http2inflow {
    public var _avail : stdgo.GoInt32 = 0;
    public var _unsent : stdgo.GoInt32 = 0;
    public function new(?_avail:stdgo.GoInt32, ?_unsent:stdgo.GoInt32) {
        if (_avail != null) this._avail = _avail;
        if (_unsent != null) this._unsent = _unsent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2inflow(_avail, _unsent);
    }
}
