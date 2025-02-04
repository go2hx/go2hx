package stdgo._internal.crypto.internal.edwards25519;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8_static_extension.T_nafLookupTable8_static_extension) class T_nafLookupTable8 {
    public var _points : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> = new stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>(64, 64, ...[for (i in 0 ... (64 > 64 ? 64 : 64 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached)]);
    public function new(?_points:stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nafLookupTable8(_points);
    }
}
