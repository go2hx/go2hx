package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_affineLookupTable_static_extension) abstract T_affineLookupTable(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable {
    public var _points(get, set) : haxe.ds.Vector<T_affineCached>;
    function get__points():haxe.ds.Vector<T_affineCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_affineCached>):haxe.ds.Vector<T_affineCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_affineCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
