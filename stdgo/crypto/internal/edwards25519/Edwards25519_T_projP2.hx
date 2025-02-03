package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projP2_static_extension) abstract T_projP2(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2 {
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
    public function new(?x:Element, ?y:Element, ?z:Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2(x, y, z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
