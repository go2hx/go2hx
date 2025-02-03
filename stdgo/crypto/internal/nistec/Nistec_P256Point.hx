package stdgo.crypto.internal.nistec;
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P256Point_static_extension) abstract P256Point(stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point) from stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point to stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point {
    public var _x(get, set) : P256Element;
    function get__x():P256Element return this._x;
    function set__x(v:P256Element):P256Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        return v;
    }
    public var _y(get, set) : P256Element;
    function get__y():P256Element return this._y;
    function set__y(v:P256Element):P256Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        return v;
    }
    public var _z(get, set) : P256Element;
    function get__z():P256Element return this._z;
    function set__z(v:P256Element):P256Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        return v;
    }
    public function new(?_x:P256Element, ?_y:P256Element, ?_z:P256Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
