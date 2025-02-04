package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension) class Point {
    @:optional
    public var __1 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparable.T_incomparable = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _x : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var _y : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var _z : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var _t : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?__1:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparable.T_incomparable, ?_x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_t:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
        if (__1 != null) this.__1 = __1;
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(__1, _x, _y, _z, _t);
    }
}
