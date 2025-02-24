package stdgo;
final size : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size.size;
final size224 : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size224.size224;
final size256 : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size256.size256;
final size384 : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_size384.size384;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.sha512.Sha512_blocksize.blockSize;
@:structInit @:using(stdgo.crypto.sha512.Sha512.T_digest_static_extension) @:dox(hide) abstract T_digest(stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest) from stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest to stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest {
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
    public var _function(get, set) : stdgo._internal.crypto.Crypto_hash.Hash;
    function get__function():stdgo._internal.crypto.Crypto_hash.Hash return this._function;
    function set__function(v:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        this._function = v;
        return v;
    }
    public function new(?_h:haxe.ds.Vector<haxe.UInt64>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64, ?_function:stdgo._internal.crypto.Crypto_hash.Hash) this = new stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest(([for (i in _h) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nx : stdgo.GoInt), (_len : stdgo.GoUInt64), _function);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_digestPointer = stdgo._internal.crypto.sha512.Sha512_t_digestpointer.T_digestPointer;
@:dox(hide) class T_digest_static_extension {
    static public function _checkSum(_d:T_digest):haxe.ds.Vector<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension._checkSum(_d)) i]);
    }
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        return {
            final obj = stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        stdgo._internal.crypto.sha512.Sha512_t_digest_static_extension.T_digest_static_extension.reset(_d);
    }
}
/**
    * Package sha512 implements the SHA-384, SHA-512, SHA-512/224, and SHA-512/256
    * hash algorithms as defined in FIPS 180-4.
    * 
    * All the hash.Hash implementations returned by this package also
    * implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    * marshal and unmarshal the internal state of the hash.
**/
class Sha512 {
    /**
        * New returns a new hash.Hash computing the SHA-512 checksum.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new_.new_();
    }
    /**
        * New512_224 returns a new hash.Hash computing the SHA-512/224 checksum.
    **/
    static public inline function new512_224():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224();
    }
    /**
        * New512_256 returns a new hash.Hash computing the SHA-512/256 checksum.
    **/
    static public inline function new512_256():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256();
    }
    /**
        * New384 returns a new hash.Hash computing the SHA-384 checksum.
    **/
    static public inline function new384():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.sha512.Sha512_new384.new384();
    }
    /**
        * Sum512 returns the SHA512 checksum of the data.
    **/
    static public inline function sum512(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_data)) i]);
    }
    /**
        * Sum384 returns the SHA384 checksum of the data.
    **/
    static public inline function sum384(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum384.sum384(_data)) i]);
    }
    /**
        * Sum512_224 returns the Sum512/224 checksum of the data.
    **/
    static public inline function sum512_224(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512_224.sum512_224(_data)) i]);
    }
    /**
        * Sum512_256 returns the Sum512/256 checksum of the data.
    **/
    static public inline function sum512_256(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_sum512_256.sum512_256(_data)) i]);
    }
}
