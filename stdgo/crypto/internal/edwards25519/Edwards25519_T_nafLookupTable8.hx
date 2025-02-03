package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable8_static_extension) abstract T_nafLookupTable8(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8 {
    public var _points(get, set) : haxe.ds.Vector<T_affineCached>;
    function get__points():haxe.ds.Vector<T_affineCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_affineCached>):haxe.ds.Vector<T_affineCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_affineCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
