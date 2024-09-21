package _internal.crypto.internal.edwards25519;
@:structInit @:using(_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached_static_extension.T_affineCached_static_extension) class T_affineCached {
    public var yplusX : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var yminusX : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public var t2d : _internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
    public function new(?yplusX:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?yminusX:_internal.crypto.internal.edwards25519.field.Field_Element.Element, ?t2d:_internal.crypto.internal.edwards25519.field.Field_Element.Element) {
        if (yplusX != null) this.yplusX = yplusX;
        if (yminusX != null) this.yminusX = yminusX;
        if (t2d != null) this.t2d = t2d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_affineCached(yplusX, yminusX, t2d);
    }
}
