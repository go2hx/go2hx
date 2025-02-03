package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projLookupTable_static_extension) abstract T_projLookupTable(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable to stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable {
    public var _points(get, set) : haxe.ds.Vector<T_projCached>;
    function get__points():haxe.ds.Vector<T_projCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_projCached>):haxe.ds.Vector<T_projCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_projCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
