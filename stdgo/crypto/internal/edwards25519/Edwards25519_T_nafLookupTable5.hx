package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable5_static_extension) abstract T_nafLookupTable5(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5 {
    public var _points(get, set) : haxe.ds.Vector<T_projCached>;
    function get__points():haxe.ds.Vector<T_projCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_projCached>):haxe.ds.Vector<T_projCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_projCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
