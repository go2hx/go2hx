package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable_static_extension.T_affineLookupTable_static_extension) class T_affineLookupTable {
    public var _points : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> = new stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>(8, 8, ...[for (i in 0 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached)]);
    public function new(?_points:stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_affineLookupTable(_points);
    }
}
