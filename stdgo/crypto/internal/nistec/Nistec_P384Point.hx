package stdgo.crypto.internal.nistec;
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P384Point_static_extension) abstract P384Point(stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point) from stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point to stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point {
    public var _x(get, set) : P384Element;
    function get__x():P384Element return this._x;
    function set__x(v:P384Element):P384Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        return v;
    }
    public var _y(get, set) : P384Element;
    function get__y():P384Element return this._y;
    function set__y(v:P384Element):P384Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        return v;
    }
    public var _z(get, set) : P384Element;
    function get__z():P384Element return this._z;
    function set__z(v:P384Element):P384Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        return v;
    }
    public function new(?_x:P384Element, ?_y:P384Element, ?_z:P384Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
