package stdgo;
final maxRune : StdTypes.Int = stdgo._internal.unicode.utf16.Utf16_maxrune.maxRune;
final replacementChar : StdTypes.Int = stdgo._internal.unicode.utf16.Utf16_replacementchar.replacementChar;
/**
    * Package utf16 implements encoding and decoding of UTF-16 sequences.
**/
class Utf16 {
    /**
        * IsSurrogate reports whether the specified Unicode code point
        * can appear in a surrogate pair.
    **/
    static public inline function isSurrogate(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.utf16.Utf16_issurrogate.isSurrogate(_r);
    }
    /**
        * DecodeRune returns the UTF-16 decoding of a surrogate pair.
        * If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
        * the Unicode replacement code point U+FFFD.
    **/
    static public inline function decodeRune(_r1:StdTypes.Int, _r2:StdTypes.Int):StdTypes.Int {
        final _r1 = (_r1 : stdgo.GoInt32);
        final _r2 = (_r2 : stdgo.GoInt32);
        return stdgo._internal.unicode.utf16.Utf16_decoderune.decodeRune(_r1, _r2);
    }
    /**
        * EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
        * If the rune is not a valid Unicode code point or does not need encoding,
        * EncodeRune returns U+FFFD, U+FFFD.
    **/
    static public inline function encodeRune(_r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _r = (_r : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.unicode.utf16.Utf16_encoderune.encodeRune(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Encode returns the UTF-16 encoding of the Unicode code point sequence s.
    **/
    static public inline function encode(_s:Array<StdTypes.Int>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return [for (i in stdgo._internal.unicode.utf16.Utf16_encode.encode(_s)) i];
    }
    /**
        * AppendRune appends the UTF-16 encoding of the Unicode code point r
        * to the end of p and returns the extended buffer. If the rune is not
        * a valid Unicode code point, it appends the encoding of U+FFFD.
    **/
    static public inline function appendRune(_a:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _a = ([for (i in _a) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        final _r = (_r : stdgo.GoInt32);
        return [for (i in stdgo._internal.unicode.utf16.Utf16_appendrune.appendRune(_a, _r)) i];
    }
    /**
        * Decode returns the Unicode code point sequence represented
        * by the UTF-16 encoding s.
    **/
    static public inline function decode(_s:Array<std.UInt>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return [for (i in stdgo._internal.unicode.utf16.Utf16_decode.decode(_s)) i];
    }
}
