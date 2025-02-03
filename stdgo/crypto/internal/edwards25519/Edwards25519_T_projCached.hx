package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projCached_static_extension) abstract T_projCached(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached {
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
    public var z(get, set) : Element;
    function get_z():Element return this.z;
    function set_z(v:Element):Element {
        this.z = v;
        return v;
    }
    public var t2d(get, set) : Element;
    function get_t2d():Element return this.t2d;
    function set_t2d(v:Element):Element {
        this.t2d = v;
        return v;
    }
    public function new(?yplusX:Element, ?yminusX:Element, ?z:Element, ?t2d:Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached(yplusX, yminusX, z, t2d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
