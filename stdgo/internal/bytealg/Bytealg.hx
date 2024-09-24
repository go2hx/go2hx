package stdgo.internal.bytealg;
var maxLen(get, set) : StdTypes.Int;
private function get_maxLen():StdTypes.Int return stdgo._internal.internal.bytealg.Bytealg_maxLen.maxLen;
private function set_maxLen(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.bytealg.Bytealg_maxLen.maxLen = v;
        return v;
    }
final primeRK : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg_primeRK.primeRK;
final maxBruteForce : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg_maxBruteForce.maxBruteForce;
class Bytealg {
    /**
        HashStrBytes returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrBytes(_sep:Array<std.UInt>):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashStrBytes.hashStrBytes(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStr returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStr(_sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashStr.hashStr(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStrRevBytes returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrRevBytes(_sep:Array<std.UInt>):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashStrRevBytes.hashStrRevBytes(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStrRev returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrRev(_sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg_hashStrRev.hashStrRev(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
    **/
    static public function indexRabinKarpBytes(_s:Array<std.UInt>, _sep:Array<std.UInt>):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_indexRabinKarpBytes.indexRabinKarpBytes(_s, _sep);
    }
    /**
        IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
    **/
    static public function indexRabinKarp(_s:String, _substr:String):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg_indexRabinKarp.indexRabinKarp(_s, _substr);
    }
    /**
        MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
        It is the caller's responsibility to ensure uninitialized bytes
        do not leak to the end user.
    **/
    static public function makeNoZero(_n:StdTypes.Int):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.bytealg.Bytealg_makeNoZero.makeNoZero(_n)) i];
    }
    /**
        go:noescape
    **/
    static public function compare(_a:Array<std.UInt>, _b:Array<std.UInt>):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_compare.compare(_a, _b);
    }
    static public function count(_b:Array<std.UInt>, _c:std.UInt):StdTypes.Int {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_count.count(_b, _c);
    }
    static public function countString(_s:String, _c:std.UInt):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg_countString.countString(_s, _c);
    }
    /**
        Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
        
        Equal is equivalent to bytes.Equal.
        It is provided here for convenience,
        because some packages cannot depend on bytes.
    **/
    static public function equal(_a:Array<std.UInt>, _b:Array<std.UInt>):Bool {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_equal.equal(_a, _b);
    }
    /**
        Index returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
    **/
    static public function index(_a:Array<std.UInt>, _b:Array<std.UInt>):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_index.index(_a, _b);
    }
    /**
        IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
    **/
    static public function indexString(_a:String, _b:String):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg_indexString.indexString(_a, _b);
    }
    /**
        Cutover reports the number of failures of IndexByte we should tolerate
        before switching over to Index.
        n is the number of bytes processed so far.
        See the bytes.Index implementation for details.
    **/
    static public function cutover(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg_cutover.cutover(_n);
    }
    /**
        go:noescape
    **/
    static public function indexByte(_b:Array<std.UInt>, _c:std.UInt):StdTypes.Int {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.bytealg.Bytealg_indexByte.indexByte(_b, _c);
    }
    /**
        go:noescape
    **/
    static public function indexByteString(_s:String, _c:std.UInt):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_s, _c);
    }
}
