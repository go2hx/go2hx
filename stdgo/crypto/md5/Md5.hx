package stdgo.crypto.md5;
final size : haxe.UInt64 = stdgo._internal.crypto.md5.Md5_size.size;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.md5.Md5_blockSize.blockSize;
@:structInit @:using(stdgo.crypto.md5.Md5.T_digest_static_extension) abstract T_digest(stdgo._internal.crypto.md5.Md5_T_digest.T_digest) from stdgo._internal.crypto.md5.Md5_T_digest.T_digest to stdgo._internal.crypto.md5.Md5_T_digest.T_digest {
    public var _s(get, set) : haxe.ds.Vector<std.UInt>;
    function get__s():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._s) i]);
    function set__s(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._s = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _x(get, set) : haxe.ds.Vector<std.UInt>;
    function get__x():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._x) i]);
    function set__x(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._x = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nx(get, set) : StdTypes.Int;
    function get__nx():StdTypes.Int return this._nx;
    function set__nx(v:StdTypes.Int):StdTypes.Int {
        this._nx = v;
        return v;
    }
    public var _len(get, set) : haxe.UInt64;
    function get__len():haxe.UInt64 return this._len;
    function set__len(v:haxe.UInt64):haxe.UInt64 {
        this._len = v;
        return v;
    }
    public function new(?_s:haxe.ds.Vector<std.UInt>, ?_x:haxe.ds.Vector<std.UInt>, ?_nx:StdTypes.Int, ?_len:haxe.UInt64) this = new stdgo._internal.crypto.md5.Md5_T_digest.T_digest(([for (i in _s) i] : stdgo.GoArray<stdgo.GoUInt32>), ([for (i in _x) i] : stdgo.GoArray<stdgo.GoUInt8>), _nx, _len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_digestPointer = stdgo._internal.crypto.md5.Md5_T_digestPointer.T_digestPointer;
class T_digest_static_extension {
    static public function _checkSum(_d:T_digest):haxe.ds.Vector<std.UInt> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension._checkSum(_d)) i]);
    }
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        return stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        return stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        stdgo._internal.crypto.md5.Md5_T_digest_static_extension.T_digest_static_extension.reset(_d);
    }
}
/**
    Package md5 implements the MD5 hash algorithm as defined in RFC 1321.
    
    MD5 is cryptographically broken and should not be used for secure
    applications.
**/
class Md5 {
    /**
        New returns a new hash.Hash computing the MD5 checksum. The Hash also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
    **/
    static public function new_():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.md5.Md5_new_.new_();
    }
    /**
        Sum returns the MD5 checksum of the data.
    **/
    static public function sum(_data:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.md5.Md5_sum.sum(_data)) i]);
    }
}
