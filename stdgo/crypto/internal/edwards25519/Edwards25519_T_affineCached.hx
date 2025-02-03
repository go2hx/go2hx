package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_affineCached_static_extension) abstract T_affineCached(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached {
    public var yplusX(get, set) : Element;
    function get_yplusX():Element return this.yplusX;
    function set_yplusX(v:Element):Element {
        this.yplusX = v;
        return v;
    }
    public var yminusX(get, set) : Element;
    function get_yminusX():Element return this.yminusX;
    function set_yminusX(v:Element):Element {
        this.yminusX = v;
        return v;
    }
    public var t2d(get, set) : Element;
    function get_t2d():Element return this.t2d;
    function set_t2d(v:Element):Element {
        this.t2d = v;
        return v;
    }
    public function new(?yplusX:Element, ?yminusX:Element, ?t2d:Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached(yplusX, yminusX, t2d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
