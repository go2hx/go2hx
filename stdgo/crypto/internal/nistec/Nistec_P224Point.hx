package stdgo.crypto.internal.nistec;
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P224Point_static_extension) abstract P224Point(stdgo._internal.crypto.internal.nistec.Nistec_P224Point.P224Point) from stdgo._internal.crypto.internal.nistec.Nistec_P224Point.P224Point to stdgo._internal.crypto.internal.nistec.Nistec_P224Point.P224Point {
    public var _x(get, set) : P224Element;
    function get__x():P224Element return this._x;
    function set__x(v:P224Element):P224Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return v;
    }
    public var _y(get, set) : P224Element;
    function get__y():P224Element return this._y;
    function set__y(v:P224Element):P224Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return v;
    }
    public var _z(get, set) : P224Element;
    function get__z():P224Element return this._z;
    function set__z(v:P224Element):P224Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return v;
    }
    public function new(?_x:P224Element, ?_y:P224Element, ?_z:P224Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_P224Point.P224Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
