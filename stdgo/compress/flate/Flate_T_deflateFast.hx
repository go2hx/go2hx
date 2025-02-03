package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_deflateFast_static_extension) abstract T_deflateFast(stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast) from stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast to stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast {
    public var _table(get, set) : haxe.ds.Vector<T_tableEntry>;
    function get__table():haxe.ds.Vector<T_tableEntry> return haxe.ds.Vector.fromArrayCopy([for (i in this._table) i]);
    function set__table(v:haxe.ds.Vector<T_tableEntry>):haxe.ds.Vector<T_tableEntry> {
        this._table = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>);
        return v;
    }
    public var _prev(get, set) : Array<std.UInt>;
    function get__prev():Array<std.UInt> return [for (i in this._prev) i];
    function set__prev(v:Array<std.UInt>):Array<std.UInt> {
        this._prev = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cur(get, set) : StdTypes.Int;
    function get__cur():StdTypes.Int return this._cur;
    function set__cur(v:StdTypes.Int):StdTypes.Int {
        this._cur = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_table:haxe.ds.Vector<T_tableEntry>, ?_prev:Array<std.UInt>, ?_cur:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast(([for (i in _table) i] : stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>), ([for (i in _prev) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_cur : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
