package stdgo;
var maxLen(get, set) : StdTypes.Int;
private function get_maxLen():StdTypes.Int return stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen;
private function set_maxLen(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen = (v : stdgo.GoInt);
        return v;
    }
final primeRK : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg_primerk.primeRK;
final maxBruteForce : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg_maxbruteforce.maxBruteForce;
class Bytealg {
    /**
        * HashStrBytes returns the hash and the appropriate multiplicative
        * factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStrBytes(_sep:Array<std.UInt>):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashstrbytes.hashStrBytes(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * HashStr returns the hash and the appropriate multiplicative
        * factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStr(_sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = (_sep : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashstr.hashStr(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * HashStrRevBytes returns the hash of the reverse of sep and the
        * appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStrRevBytes(_sep:Array<std.UInt>):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashstrrevbytes.hashStrRevBytes(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * HashStrRev returns the hash of the reverse of sep and the
        * appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStrRev(_sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = (_sep : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashstrrev.hashStrRev(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
        * first occurrence of substr in s, or -1 if not present.
    **/
    static public inline function indexRabinKarpBytes(_s:Array<std.UInt>, _sep:Array<std.UInt>):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_indexrabinkarpbytes.indexRabinKarpBytes(_s, _sep);
    }
    /**
        * IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
        * first occurrence of substr in s, or -1 if not present.
    **/
    static public inline function indexRabinKarp(_s:String, _substr:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _substr = (_substr : stdgo.GoString);
        return stdgo._internal.internal.bytealg.Bytealg_indexrabinkarp.indexRabinKarp(_s, _substr);
    }
    /**
        * MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
        * It is the caller's responsibility to ensure uninitialized bytes
        * do not leak to the end user.
    **/
    static public inline function makeNoZero(_n:StdTypes.Int):Array<std.UInt> {
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero(_n)) i];
    }
    /**
        * go:noescape
    **/
    static public inline function compare(_a:Array<std.UInt>, _b:Array<std.UInt>):StdTypes.Int {
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_compare.compare(_a, _b);
    }
    static public inline function count(_b:Array<std.UInt>, _c:std.UInt):StdTypes.Int {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.internal.bytealg.Bytealg_count.count(_b, _c);
    }
    static public inline function countString(_s:String, _c:std.UInt):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.internal.bytealg.Bytealg_countstring.countString(_s, _c);
    }
    /**
        * Equal reports whether a and b
        * are the same length and contain the same bytes.
        * A nil argument is equivalent to an empty slice.
        * 
        * Equal is equivalent to bytes.Equal.
        * It is provided here for convenience,
        * because some packages cannot depend on bytes.
    **/
    static public inline function equal(_a:Array<std.UInt>, _b:Array<std.UInt>):Bool {
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_equal.equal(_a, _b);
    }
    /**
        * Index returns the index of the first instance of b in a, or -1 if b is not present in a.
        * Requires 2 <= len(b) <= MaxLen.
    **/
    static public inline function index(_a:Array<std.UInt>, _b:Array<std.UInt>):StdTypes.Int {
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_index.index(_a, _b);
    }
    /**
        * IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
        * Requires 2 <= len(b) <= MaxLen.
    **/
    static public inline function indexString(_a:String, _b:String):StdTypes.Int {
        final _a = (_a : stdgo.GoString);
        final _b = (_b : stdgo.GoString);
        return stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString(_a, _b);
    }
    /**
        * Cutover reports the number of failures of IndexByte we should tolerate
        * before switching over to Index.
        * n is the number of bytes processed so far.
        * See the bytes.Index implementation for details.
    **/
    static public inline function cutover(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.internal.bytealg.Bytealg_cutover.cutover(_n);
    }
    /**
        * go:noescape
    **/
    static public inline function indexByte(_b:Array<std.UInt>, _c:std.UInt):StdTypes.Int {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.internal.bytealg.Bytealg_indexbyte.indexByte(_b, _c);
    }
    /**
        * go:noescape
    **/
    static public inline function indexByteString(_s:String, _c:std.UInt):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_s, _c);
    }
}
