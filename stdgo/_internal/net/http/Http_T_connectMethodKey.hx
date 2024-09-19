package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_connectMethodKey_static_extension.T_connectMethodKey_static_extension) class T_connectMethodKey {
    public var _proxy : stdgo.GoString = "";
    public var _scheme : stdgo.GoString = "";
    public var _addr : stdgo.GoString = "";
    public var _onlyH1 : Bool = false;
    public function new(?_proxy:stdgo.GoString, ?_scheme:stdgo.GoString, ?_addr:stdgo.GoString, ?_onlyH1:Bool) {
        if (_proxy != null) this._proxy = _proxy;
        if (_scheme != null) this._scheme = _scheme;
        if (_addr != null) this._addr = _addr;
        if (_onlyH1 != null) this._onlyH1 = _onlyH1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connectMethodKey(_proxy, _scheme, _addr, _onlyH1);
    }
}
