package stdgo.internal.zstd;
@:structInit @:using(stdgo.internal.zstd.Zstd.T_xxhash64_static_extension) abstract T_xxhash64(stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64) from stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64 to stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64 {
    public var _len(get, set) : haxe.UInt64;
    function get__len():haxe.UInt64 return this._len;
    function set__len(v:haxe.UInt64):haxe.UInt64 {
        this._len = (v : stdgo.GoUInt64);
        return v;
    }
    public var _v(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__v():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._v) i]);
    function set__v(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._v = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _cnt(get, set) : StdTypes.Int;
    function get__cnt():StdTypes.Int return this._cnt;
    function set__cnt(v:StdTypes.Int):StdTypes.Int {
        this._cnt = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_len:haxe.UInt64, ?_v:haxe.ds.Vector<haxe.UInt64>, ?_buf:haxe.ds.Vector<std.UInt>, ?_cnt:StdTypes.Int) this = new stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64((_len : stdgo.GoUInt64), ([for (i in _v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_cnt : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
