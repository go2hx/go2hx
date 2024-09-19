package _internal.crypto.internal.edwards25519;
@:structInit @:using(_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1_static_extension.T_projP1xP1_static_extension) class T_projP1xP1 {
    public var x : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var y : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var z : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var t : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public function new(?x:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?y:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?z:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?t:_internal.crypto.internal.edwards25519.field.Field_Element.Element) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_projP1xP1(x, y, z, t);
    }
}