package stdgo.internal;
var maxLen(get, set) : StdTypes.Int;
private function get_maxLen():StdTypes.Int return stdgo._internal.internal.bytealg.Bytealg.maxLen;
private function set_maxLen(v:StdTypes.Int):StdTypes.Int return stdgo._internal.internal.bytealg.Bytealg.maxLen = v;
final primeRK : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.primeRK;
final maxBruteForce : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.maxBruteForce;
class Bytealg {
    /**
        HashStrBytes returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrBytes(sep:Array<StdTypes.Int>):stdgo.Tuple<std.UInt, std.UInt> {
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStrBytes(sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStr returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStr(sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStr(sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStrRevBytes returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrRevBytes(sep:Array<StdTypes.Int>):stdgo.Tuple<std.UInt, std.UInt> {
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStrRevBytes(sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        HashStrRev returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
    **/
    static public function hashStrRev(sep:String):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.internal.bytealg.Bytealg.hashStrRev(sep);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
    **/
    static public function indexRabinKarpBytes(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.indexRabinKarpBytes(s, sep);
    }
    /**
        IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
    **/
    static public function indexRabinKarp(s:String, substr:String):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.indexRabinKarp(s, substr);
    }
    /**
        MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
        It is the caller's responsibility to ensure uninitialized bytes
        do not leak to the end user.
    **/
    static public function makeNoZero(n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.internal.bytealg.Bytealg.makeNoZero(n)) i];
    }
    /**
        go:noescape
    **/
    static public function compare(a:Array<StdTypes.Int>, b:Array<StdTypes.Int>):StdTypes.Int {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoByte>);
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.compare(a, b);
    }
    static public function count(b:Array<StdTypes.Int>, c:StdTypes.Int):StdTypes.Int {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.count(b, c);
    }
    static public function countString(s:String, c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.countString(s, c);
    }
    /**
        Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
        
        Equal is equivalent to bytes.Equal.
        It is provided here for convenience,
        because some packages cannot depend on bytes.
    **/
    static public function equal(a:Array<StdTypes.Int>, b:Array<StdTypes.Int>):Bool {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoByte>);
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.equal(a, b);
    }
    /**
        Index returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
    **/
    static public function index(a:Array<StdTypes.Int>, b:Array<StdTypes.Int>):StdTypes.Int {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoByte>);
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.index(a, b);
    }
    /**
        IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
    **/
    static public function indexString(a:String, b:String):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.indexString(a, b);
    }
    /**
        Cutover reports the number of failures of IndexByte we should tolerate
        before switching over to Index.
        n is the number of bytes processed so far.
        See the bytes.Index implementation for details.
    **/
    static public function cutover(n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.cutover(n);
    }
    /**
        go:noescape
    **/
    static public function indexByte(b:Array<StdTypes.Int>, c:StdTypes.Int):StdTypes.Int {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.internal.bytealg.Bytealg.indexByte(b, c);
    }
    /**
        go:noescape
    **/
    static public function indexByteString(s:String, c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.bytealg.Bytealg.indexByteString(s, c);
    }
}
