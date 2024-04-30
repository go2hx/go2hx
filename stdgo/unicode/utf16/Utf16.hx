package stdgo.unicode.utf16;
/**
    Package utf16 implements encoding and decoding of UTF-16 sequences.
**/
private var __go2hxdoc__package : Bool;
final maxRune : Int = stdgo._internal.unicode.utf16.Utf16.maxRune;
final replacementChar : Int = stdgo._internal.unicode.utf16.Utf16.replacementChar;
/**
    IsSurrogate reports whether the specified Unicode code point
    can appear in a surrogate pair.
**/
inline function isSurrogate(r:Int):Bool throw "not implemented";
/**
    DecodeRune returns the UTF-16 decoding of a surrogate pair.
    If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
    the Unicode replacement code point U+FFFD.
**/
inline function decodeRune(r1:Int, r2:Int):Int throw "not implemented";
/**
    EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
    If the rune is not a valid Unicode code point or does not need encoding,
    EncodeRune returns U+FFFD, U+FFFD.
**/
inline function encodeRune(r:Int):stdgo.Tuple<Int, Int> throw "not implemented";
/**
    Encode returns the UTF-16 encoding of the Unicode code point sequence s.
**/
inline function encode(s:Array<Int>):Array<UInt> throw "not implemented";
/**
    AppendRune appends the UTF-16 encoding of the Unicode code point r
    to the end of p and returns the extended buffer. If the rune is not
    a valid Unicode code point, it appends the encoding of U+FFFD.
**/
inline function appendRune(a:Array<UInt>, r:Int):Array<UInt> throw "not implemented";
/**
    Decode returns the Unicode code point sequence represented
    by the UTF-16 encoding s.
**/
inline function decode(s:Array<UInt>):Array<Int> throw "not implemented";
