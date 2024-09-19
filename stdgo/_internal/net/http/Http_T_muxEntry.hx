package stdgo._internal.net.http;
@:structInit class T_muxEntry {
    public var _h : stdgo._internal.net.http.Http_Handler.Handler = (null : stdgo._internal.net.http.Http_Handler.Handler);
    public var _pattern : stdgo.GoString = "";
    public function new(?_h:stdgo._internal.net.http.Http_Handler.Handler, ?_pattern:stdgo.GoString) {
        if (_h != null) this._h = _h;
        if (_pattern != null) this._pattern = _pattern;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_muxEntry(_h, _pattern);
    }
}
