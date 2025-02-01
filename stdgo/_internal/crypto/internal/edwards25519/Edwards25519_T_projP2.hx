package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2_static_extension.T_projP2_static_extension) class T_projP2 {
    public var x : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var y : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var z : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public function new(?x:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element, ?y:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_projP2(x, y, z);
    }
}
