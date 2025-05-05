package stdgo.internal.bytealg;
var maxLen(get, set) : stdgo.GoInt;
private function get_maxLen():stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen;
private function set_maxLen(v:stdgo.GoInt):stdgo.GoInt {
        stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen = v;
        return v;
    }
var primeRK : stdgo.GoUInt64 = 16777619i64;
var maxBruteForce : stdgo.GoUInt64 = 0i64;
class Bytealg {
    /**
        * HashStrBytes returns the hash and the appropriate multiplicative
        * factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStrBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.internal.bytealg.Bytealg_hashstrbytes.hashStrBytes(_sep);
    /**
        * HashStr returns the hash and the appropriate multiplicative
        * factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStr(_sep:stdgo.GoString):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.internal.bytealg.Bytealg_hashstr.hashStr(_sep);
    /**
        * HashStrRevBytes returns the hash of the reverse of sep and the
        * appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.internal.bytealg.Bytealg_hashstrrevbytes.hashStrRevBytes(_sep);
    /**
        * HashStrRev returns the hash of the reverse of sep and the
        * appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public inline function hashStrRev(_sep:stdgo.GoString):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.internal.bytealg.Bytealg_hashstrrev.hashStrRev(_sep);
    /**
        * IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
        * first occurrence of substr in s, or -1 if not present.
    **/
    static public inline function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_indexrabinkarpbytes.indexRabinKarpBytes(_s, _sep);
    /**
        * IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
        * first occurrence of substr in s, or -1 if not present.
    **/
    static public inline function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_indexrabinkarp.indexRabinKarp(_s, _substr);
    /**
        * MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
        * It is the caller's responsibility to ensure uninitialized bytes
        * do not leak to the end user.
    **/
    static public inline function makeNoZero(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero(_n);
    /**
        * go:noescape
    **/
    static public inline function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_compare.compare(_a, _b);
    static public inline function count(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_count.count(_b, _c);
    static public inline function countString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_countstring.countString(_s, _c);
    /**
        * Equal reports whether a and b
        * are the same length and contain the same bytes.
        * A nil argument is equivalent to an empty slice.
        * 
        * Equal is equivalent to bytes.Equal.
        * It is provided here for convenience,
        * because some packages cannot depend on bytes.
    **/
    static public inline function equal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.internal.bytealg.Bytealg_equal.equal(_a, _b);
    /**
        * Index returns the index of the first instance of b in a, or -1 if b is not present in a.
        * Requires 2 <= len(b) <= MaxLen.
    **/
    static public inline function index(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_index.index(_a, _b);
    /**
        * IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
        * Requires 2 <= len(b) <= MaxLen.
    **/
    static public inline function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString(_a, _b);
    /**
        * Cutover reports the number of failures of IndexByte we should tolerate
        * before switching over to Index.
        * n is the number of bytes processed so far.
        * See the bytes.Index implementation for details.
    **/
    static public inline function cutover(_n:stdgo.GoInt):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_cutover.cutover(_n);
    /**
        * go:noescape
    **/
    static public inline function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_indexbyte.indexByte(_b, _c);
    /**
        * go:noescape
    **/
    static public inline function indexByteString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_s, _c);
}
