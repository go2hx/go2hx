package _internal.crypto.internal.nistec;
@:structInit @:using(_internal.crypto.internal.nistec.Nistec_P521Point_static_extension.P521Point_static_extension) class P521Point {
    public var _x : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element> = (null : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
    public var _y : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element> = (null : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
    public var _z : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element> = (null : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
    public function new(?_x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>, ?_y:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>, ?_z:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P521Point(_x, _y, _z);
    }
}