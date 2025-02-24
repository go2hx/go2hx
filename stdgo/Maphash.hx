package stdgo;
@:structInit @:using(stdgo.hash.maphash.Maphash.Seed_static_extension) abstract Seed(stdgo._internal.hash.maphash.Maphash_seed.Seed) from stdgo._internal.hash.maphash.Maphash_seed.Seed to stdgo._internal.hash.maphash.Maphash_seed.Seed {
    public var _s(get, set) : haxe.UInt64;
    function get__s():haxe.UInt64 return this._s;
    function set__s(v:haxe.UInt64):haxe.UInt64 {
        this._s = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_s:haxe.UInt64) this = new stdgo._internal.hash.maphash.Maphash_seed.Seed((_s : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.hash.maphash.Maphash.Hash_static_extension) abstract Hash(stdgo._internal.hash.maphash.Maphash_hash.Hash) from stdgo._internal.hash.maphash.Maphash_hash.Hash to stdgo._internal.hash.maphash.Maphash_hash.Hash {
    public var __1(get, set) : haxe.ds.Vector<() -> Void>;
    function get___1():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) () -> i()]);
    function set___1(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__1 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _seed(get, set) : Seed;
    function get__seed():Seed return this._seed;
    function set__seed(v:Seed):Seed {
        this._seed = v;
        return v;
    }
    public var _state(get, set) : Seed;
    function get__state():Seed return this._state;
    function set__state(v:Seed):Seed {
        this._state = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__1:haxe.ds.Vector<() -> Void>, ?_seed:Seed, ?_state:Seed, ?_buf:haxe.ds.Vector<std.UInt>, ?_n:StdTypes.Int) this = new stdgo._internal.hash.maphash.Maphash_hash.Hash(([for (i in __1) i] : stdgo.GoArray<() -> Void>), _seed, _state, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_n : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef SeedPointer = stdgo._internal.hash.maphash.Maphash_seedpointer.SeedPointer;
class Seed_static_extension {

}
typedef HashPointer = stdgo._internal.hash.maphash.Maphash_hashpointer.HashPointer;
class Hash_static_extension {
    static public function blockSize(_h:Hash):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.blockSize(_h);
    }
    static public function size(_h:Hash):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.size(_h);
    }
    static public function sum(_h:Hash, _b:Array<std.UInt>):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.sum(_h, _b)) i];
    }
    static public function sum64(_h:Hash):haxe.UInt64 {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.sum64(_h);
    }
    static public function _flush(_h:Hash):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension._flush(_h);
    }
    static public function reset(_h:Hash):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.reset(_h);
    }
    static public function setSeed(_h:Hash, _seed:Seed):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.setSeed(_h, _seed);
    }
    static public function seed(_h:Hash):Seed {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.seed(_h);
    }
    static public function writeString(_h:Hash, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.writeString(_h, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_h:Hash, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.write(_h, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_h:Hash, _b:std.UInt):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension.writeByte(_h, _b);
    }
    static public function _initSeed(_h:Hash):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_hash_static_extension.Hash_static_extension._initSeed(_h);
    }
}
/**
    * Package maphash provides hash functions on byte sequences.
    * These hash functions are intended to be used to implement hash tables or
    * other data structures that need to map arbitrary strings or byte
    * sequences to a uniform distribution on unsigned 64-bit integers.
    * Each different instance of a hash table or data structure should use its own Seed.
    * 
    * The hash functions are not cryptographically secure.
    * (See crypto/sha256 and crypto/sha512 for cryptographic use.)
**/
class Maphash {
    /**
        * Bytes returns the hash of b with the given seed.
        * 
        * Bytes is equivalent to, but more convenient and efficient than:
        * 
        * 	var h Hash
        * 	h.SetSeed(seed)
        * 	h.Write(b)
        * 	return h.Sum64()
    **/
    static public inline function bytes(_seed:Seed, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.maphash.Maphash_bytes.bytes(_seed, _b);
    }
    /**
        * String returns the hash of s with the given seed.
        * 
        * String is equivalent to, but more convenient and efficient than:
        * 
        * 	var h Hash
        * 	h.SetSeed(seed)
        * 	h.WriteString(s)
        * 	return h.Sum64()
    **/
    static public inline function string(_seed:Seed, _s:String):haxe.UInt64 {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.hash.maphash.Maphash_string.string(_seed, _s);
    }
    /**
        * MakeSeed returns a new random seed.
    **/
    static public inline function makeSeed():Seed {
        return stdgo._internal.hash.maphash.Maphash_makeseed.makeSeed();
    }
}
