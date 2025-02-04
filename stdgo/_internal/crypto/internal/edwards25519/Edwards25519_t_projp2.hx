package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2_static_extension.T_projP2_static_extension) class T_projP2 {
    public var x : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var y : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var z : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_projP2(x, y, z);
    }
}
