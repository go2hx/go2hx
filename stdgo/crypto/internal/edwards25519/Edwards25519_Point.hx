package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.Point_static_extension) abstract Point(stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point to stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point {
    public var __1(get, set) : T_incomparable;
    function get___1():T_incomparable return this.__1;
    function set___1(v:T_incomparable):T_incomparable {
        this.__1 = v;
        return v;
    }
    public var _x(get, set) : Element;
    function get__x():Element return this._x;
    function set__x(v:Element):Element {
        this._x = v;
        return v;
    }
    public var _y(get, set) : Element;
    function get__y():Element return this._y;
    function set__y(v:Element):Element {
        this._y = v;
        return v;
    }
    public var _z(get, set) : Element;
    function get__z():Element return this._z;
    function set__z(v:Element):Element {
        this._z = v;
        return v;
    }
    public var _t(get, set) : Element;
    function get__t():Element return this._t;
    function set__t(v:Element):Element {
        this._t = v;
        return v;
    }
    public function new(?__1:T_incomparable, ?_x:Element, ?_y:Element, ?_z:Element, ?_t:Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point(__1, _x, _y, _z, _t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
