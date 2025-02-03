package stdgo.crypto.md5;
@:structInit @:using(stdgo.crypto.md5.Md5.T_digest_static_extension) abstract T_digest(stdgo._internal.crypto.md5.Md5_T_digest.T_digest) from stdgo._internal.crypto.md5.Md5_T_digest.T_digest to stdgo._internal.crypto.md5.Md5_T_digest.T_digest {
    public var _s(get, set) : haxe.ds.Vector<std.UInt>;
    function get__s():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._s) i]);
    function set__s(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._s = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _x(get, set) : haxe.ds.Vector<std.UInt>;
    function get__x():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._x) i]);
    function set__x(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._x = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nx(get, set) : StdTypes.Int;
    function get__nx():StdTypes.Int return this._nx;
    function set__nx(v:StdTypes.Int):StdTypes.Int {
        this._nx = (v : stdgo.GoInt);
        return v;
    }
    public var _len(get, set) : haxe.UInt64;
    function get__len():haxe.UInt64 return this._len;
    function set__len(v:haxe.UInt64):haxe.UInt64 {
        this._len = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_s:haxe.ds.Vector<std.UInt>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64) this = new stdgo._internal.crypto.md5.Md5_T_digest.T_digest(([for (i in _s) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nx : stdgo.GoInt), (_len : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
