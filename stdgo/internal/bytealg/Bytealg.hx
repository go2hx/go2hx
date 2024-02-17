package stdgo.internal.bytealg;
var maxLen(get, set) : Int;
function get_maxLen():Int return stdgo._internal.internal.bytealg.Bytealg.maxLen;
function set_maxLen(v:Int):Int return stdgo._internal.internal.bytealg.Bytealg.maxLen = v;
final primeRK : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.primeRK;
final maxBruteForce : haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.maxBruteForce;
/**
    // HashStrBytes returns the hash and the appropriate multiplicative
    // factor for use in Rabin-Karp algorithm.
**/
inline function hashStrBytes(sep:Array<Int>):stdgo.Tuple.<UInt, UInt> throw "not implemented";
/**
    // HashStr returns the hash and the appropriate multiplicative
    // factor for use in Rabin-Karp algorithm.
**/
inline function hashStr(sep:String):stdgo.Tuple.<UInt, UInt> throw "not implemented";
/**
    // HashStrRevBytes returns the hash of the reverse of sep and the
    // appropriate multiplicative factor for use in Rabin-Karp algorithm.
**/
inline function hashStrRevBytes(sep:Array<Int>):stdgo.Tuple.<UInt, UInt> throw "not implemented";
/**
    // HashStrRev returns the hash of the reverse of sep and the
    // appropriate multiplicative factor for use in Rabin-Karp algorithm.
**/
inline function hashStrRev(sep:String):stdgo.Tuple.<UInt, UInt> throw "not implemented";
/**
    // IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
    // first occurrence of substr in s, or -1 if not present.
**/
inline function indexRabinKarpBytes(s:Array<Int>, sep:Array<Int>):Int throw "not implemented";
/**
    // IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
    // first occurrence of substr in s, or -1 if not present.
**/
inline function indexRabinKarp(s:String, substr:String):Int throw "not implemented";
/**
    // MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
    // It is the caller's responsibility to ensure uninitialized bytes
    // do not leak to the end user.
**/
inline function makeNoZero(n:Int):Array<Int> throw "not implemented";
/**
    //go:noescape
**/
inline function compare(a:Array<Int>, b:Array<Int>):Int throw "not implemented";
inline function count(b:Array<Int>, c:Int):Int throw "not implemented";
inline function countString(s:String, c:Int):Int throw "not implemented";
/**
    // Equal reports whether a and b
    // are the same length and contain the same bytes.
    // A nil argument is equivalent to an empty slice.
    //
    // Equal is equivalent to bytes.Equal.
    // It is provided here for convenience,
    // because some packages cannot depend on bytes.
**/
inline function equal(a:Array<Int>, b:Array<Int>):Bool throw "not implemented";
/**
    // Index returns the index of the first instance of b in a, or -1 if b is not present in a.
    // Requires 2 <= len(b) <= MaxLen.
**/
inline function index(a:Array<Int>, b:Array<Int>):Int throw "not implemented";
/**
    // IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
    // Requires 2 <= len(b) <= MaxLen.
**/
inline function indexString(a:String, b:String):Int throw "not implemented";
/**
    // Cutover reports the number of failures of IndexByte we should tolerate
    // before switching over to Index.
    // n is the number of bytes processed so far.
    // See the bytes.Index implementation for details.
**/
inline function cutover(n:Int):Int throw "not implemented";
/**
    //go:noescape
**/
inline function indexByte(b:Array<Int>, c:Int):Int throw "not implemented";
/**
    //go:noescape
**/
inline function indexByteString(s:String, c:Int):Int throw "not implemented";
