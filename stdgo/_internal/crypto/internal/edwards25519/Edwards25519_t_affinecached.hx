package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached_static_extension.T_affineCached_static_extension) class T_affineCached {
    public var yplusX : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var yminusX : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var t2d : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?t2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
        if (yplusX != null) this.yplusX = yplusX;
        if (yminusX != null) this.yminusX = yminusX;
        if (t2d != null) this.t2d = t2d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_affineCached(yplusX, yminusX, t2d);
    }
}
