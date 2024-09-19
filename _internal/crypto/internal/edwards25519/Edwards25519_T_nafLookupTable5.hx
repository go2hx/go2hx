package _internal.crypto.internal.edwards25519;
@:structInit @:using(_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5_static_extension.T_nafLookupTable5_static_extension) class T_nafLookupTable5 {
    public var _points : stdgo.GoArray<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached> = new stdgo.GoArray<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>(8, 8, ...[for (i in 0 ... 8) ({} : _internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached)]);
    public function new(?_points:stdgo.GoArray<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nafLookupTable5(_points);
    }
}
