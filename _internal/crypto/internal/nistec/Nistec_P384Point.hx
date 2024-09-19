package _internal.crypto.internal.nistec;
@:structInit @:using(_internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension) class P384Point {
    public var _x : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (null : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
    public var _y : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (null : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
    public var _z : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (null : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
    public function new(?_x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, ?_y:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, ?_z:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P384Point(_x, _y, _z);
    }
}