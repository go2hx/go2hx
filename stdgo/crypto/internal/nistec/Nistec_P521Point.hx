package stdgo.crypto.internal.nistec;
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P521Point_static_extension) abstract P521Point(stdgo._internal.crypto.internal.nistec.Nistec_P521Point.P521Point) from stdgo._internal.crypto.internal.nistec.Nistec_P521Point.P521Point to stdgo._internal.crypto.internal.nistec.Nistec_P521Point.P521Point {
    public var _x(get, set) : P521Element;
    function get__x():P521Element return this._x;
    function set__x(v:P521Element):P521Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
        return v;
    }
    public var _y(get, set) : P521Element;
    function get__y():P521Element return this._y;
    function set__y(v:P521Element):P521Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
        return v;
    }
    public var _z(get, set) : P521Element;
    function get__z():P521Element return this._z;
    function set__z(v:P521Element):P521Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
        return v;
    }
    public function new(?_x:P521Element, ?_y:P521Element, ?_z:P521Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_P521Point.P521Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
