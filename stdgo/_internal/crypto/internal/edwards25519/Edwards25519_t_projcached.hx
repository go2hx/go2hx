package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached_static_extension.T_projCached_static_extension) class T_projCached {
    public var yplusX : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var yminusX : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var z : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public var t2d : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
    public function new(?yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?t2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) {
        if (yplusX != null) this.yplusX = yplusX;
        if (yminusX != null) this.yminusX = yminusX;
        if (z != null) this.z = z;
        if (t2d != null) this.t2d = t2d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_projCached(yplusX, yminusX, z, t2d);
    }
}
