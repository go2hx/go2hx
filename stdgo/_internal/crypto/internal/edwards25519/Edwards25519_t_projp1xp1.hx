package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1_static_extension.T_projP1xP1_static_extension) class T_projP1xP1 {
    public var x : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var y : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var z : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var t : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?t:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
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
