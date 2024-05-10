package stdgo.unicode.utf16;
final maxRune : StdTypes.Int = stdgo._internal.unicode.utf16.Utf16.maxRune;
final replacementChar : StdTypes.Int = stdgo._internal.unicode.utf16.Utf16.replacementChar;
/**
    Package utf16 implements encoding and decoding of UTF-16 sequences.
**/
class Utf16 {
    /**
        IsSurrogate reports whether the specified Unicode code point
        can appear in a surrogate pair.
    **/
    static public function isSurrogate(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.utf16.Utf16.isSurrogate(r);
    }
    /**
        DecodeRune returns the UTF-16 decoding of a surrogate pair.
        If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
        the Unicode replacement code point U+FFFD.
    **/
    static public function decodeRune(r1:StdTypes.Int, r2:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.utf16.Utf16.decodeRune(r1, r2);
    }
    /**
        EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
        If the rune is not a valid Unicode code point or does not need encoding,
        EncodeRune returns U+FFFD, U+FFFD.
    **/
    static public function encodeRune(r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.unicode.utf16.Utf16.encodeRune(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Encode returns the UTF-16 encoding of the Unicode code point sequence s.
    **/
    static public function encode(s:Array<StdTypes.Int>):Array<std.UInt> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoRune>);
        return [for (i in stdgo._internal.unicode.utf16.Utf16.encode(s)) i];
    }
    /**
        AppendRune appends the UTF-16 encoding of the Unicode code point r
        to the end of p and returns the extended buffer. If the rune is not
        a valid Unicode code point, it appends the encoding of U+FFFD.
    **/
    static public function appendRune(a:Array<std.UInt>, r:StdTypes.Int):Array<std.UInt> {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoUInt16>);
        return [for (i in stdgo._internal.unicode.utf16.Utf16.appendRune(a, r)) i];
    }
    /**
        Decode returns the Unicode code point sequence represented
        by the UTF-16 encoding s.
    **/
    static public function decode(s:Array<std.UInt>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoUInt16>);
        return [for (i in stdgo._internal.unicode.utf16.Utf16.decode(s)) i];
    }
}
