package stdgo.crypto.sha512;
@:structInit @:using(stdgo.crypto.sha512.Sha512.T_digest_static_extension) abstract T_digest(stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest) from stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest to stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest {
    public var _h(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__h():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._h) i]);
    function set__h(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._h = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
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
    public var _function(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get__function():stdgo._internal.crypto.Crypto_Hash.Hash return this._function;
    function set__function(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this._function = v;
        return v;
    }
    public function new(?_h:haxe.ds.Vector<haxe.UInt64>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64, ?_function:stdgo._internal.crypto.Crypto_Hash.Hash) this = new stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest(([for (i in _h) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nx : stdgo.GoInt), (_len : stdgo.GoUInt64), _function);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
