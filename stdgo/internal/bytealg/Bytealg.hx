package stdgo.internal.bytealg;
var maxLen(get, set) : StdTypes.Int;
private function get_maxLen():StdTypes.Int return stdgo._internal.internal.bytealg.Bytealg.maxLen;
private function set_maxLen(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.bytealg.Bytealg.maxLen = v;
        return v;
    }
final primeRK : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.primeRK;
final maxBruteForce : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.maxBruteForce;
class Bytealg {
    /**
        HashStrBytes returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrBytes(_sep:Array<StdTypes.Int>):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStrBytes(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStr returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStr(_sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStr(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStrRevBytes returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrRevBytes(_sep:Array<StdTypes.Int>):stdgo.Tuple<std.UInt, std.UInt> {
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStrRevBytes(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStrRev returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrRev(_sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStrRev(_sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
    **/
    static public function indexRabinKarpBytes(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.indexRabinKarpBytes(_s, _sep);
    }
    /**
        IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
    **/
    static public function indexRabinKarp(_s:String, _substr:String):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.indexRabinKarp(_s, _substr);
    }
    /**
        MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
        It is the caller's responsibility to ensure uninitialized bytes
        do not leak to the end user.
    **/
    static public function makeNoZero(_n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.internal.bytealg.Bytealg.makeNoZero(_n)) i];
    }
    /**
        go:noescape
    **/
    static public function compare(_a:Array<StdTypes.Int>, _b:Array<StdTypes.Int>):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoByte>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.compare(_a, _b);
    }
    static public function count(_b:Array<StdTypes.Int>, _c:StdTypes.Int):StdTypes.Int {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.count(_b, _c);
    }
    static public function countString(_s:String, _c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.countString(_s, _c);
    }
    /**
        Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
        
        Equal is equivalent to bytes.Equal.
        It is provided here for convenience,
        because some packages cannot depend on bytes.
    **/
    static public function equal(_a:Array<StdTypes.Int>, _b:Array<StdTypes.Int>):Bool {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoByte>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.equal(_a, _b);
    }
    /**
        Index returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
    **/
    static public function index(_a:Array<StdTypes.Int>, _b:Array<StdTypes.Int>):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoByte>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.index(_a, _b);
    }
    /**
        IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
    **/
    static public function indexString(_a:String, _b:String):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.indexString(_a, _b);
    }
    /**
        Cutover reports the number of failures of IndexByte we should tolerate
        before switching over to Index.
        n is the number of bytes processed so far.
        See the bytes.Index implementation for details.
    **/
    static public function cutover(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.cutover(_n);
    }
    /**
        go:noescape
    **/
    static public function indexByte(_b:Array<StdTypes.Int>, _c:StdTypes.Int):StdTypes.Int {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.indexByte(_b, _c);
    }
    /**
        go:noescape
    **/
    static public function indexByteString(_s:String, _c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.indexByteString(_s, _c);
    }
}
