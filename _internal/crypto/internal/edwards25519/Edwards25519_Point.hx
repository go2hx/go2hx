package _internal.crypto.internal.edwards25519;
@:structInit @:using(_internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension) class Point {
    @:optional
    public var __1 : _internal.crypto.internal.edwards25519.Edwards25519_T_incomparable.T_incomparable = new _internal.crypto.internal.edwards25519.Edwards25519_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _x : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var _y : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var _z : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var _t : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public function new(?__1:_internal.crypto.internal.edwards25519.Edwards25519_T_incomparable.T_incomparable, ?_x:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?_y:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?_z:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?_t:_internal.crypto.internal.edwards25519.field.Field_Element.Element) {
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
