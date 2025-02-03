package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_cthWrapper_static_extension) abstract T_cthWrapper(stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper) from stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper to stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper {
    public var _h(get, set) : T_constantTimeHash;
    function get__h():T_constantTimeHash return this._h;
    function set__h(v:T_constantTimeHash):T_constantTimeHash {
        this._h = v;
        return v;
    }
    public function new(?_h:T_constantTimeHash) this = new stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper(_h);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
