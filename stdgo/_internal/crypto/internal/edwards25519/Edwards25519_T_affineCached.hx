package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached_static_extension.T_affineCached_static_extension) class T_affineCached {
    public var yplusX : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var yminusX : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var t2d : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public function new(?yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element, ?yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element, ?t2d:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element) {
        if (yplusX != null) this.yplusX = yplusX;
        if (yminusX != null) this.yminusX = yminusX;
        if (t2d != null) this.t2d = t2d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_affineCached(yplusX, yminusX, t2d);
    }
}
