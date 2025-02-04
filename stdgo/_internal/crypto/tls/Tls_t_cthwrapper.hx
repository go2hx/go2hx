package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_cthwrapper_static_extension.T_cthWrapper_static_extension) class T_cthWrapper {
    public var _h : stdgo._internal.crypto.tls.Tls_t_constanttimehash.T_constantTimeHash = (null : stdgo._internal.crypto.tls.Tls_t_constanttimehash.T_constantTimeHash);
    public function new(?_h:stdgo._internal.crypto.tls.Tls_t_constanttimehash.T_constantTimeHash) {
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cthWrapper(_h);
    }
}
