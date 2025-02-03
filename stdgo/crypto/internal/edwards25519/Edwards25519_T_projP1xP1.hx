package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projP1xP1_static_extension) abstract T_projP1xP1(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1 {
    public var x(get, set) : Element;
    function get_x():Element return this.x;
    function set_x(v:Element):Element {
        this.x = v;
        return v;
    }
    public var y(get, set) : Element;
    function get_y():Element return this.y;
    function set_y(v:Element):Element {
        this.y = v;
        return v;
    }
    public var z(get, set) : Element;
    function get_z():Element return this.z;
    function set_z(v:Element):Element {
        this.z = v;
        return v;
    }
    public var t(get, set) : Element;
    function get_t():Element return this.t;
    function set_t(v:Element):Element {
        this.t = v;
        return v;
    }
    public function new(?x:Element, ?y:Element, ?z:Element, ?t:Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1(x, y, z, t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
