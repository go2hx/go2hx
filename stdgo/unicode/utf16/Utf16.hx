package stdgo.unicode.utf16;
var maxRune : stdgo.GoInt32 = 1114111i64;
var replacementChar : stdgo.GoInt32 = 65533i64;
/**
    * Package utf16 implements encoding and decoding of UTF-16 sequences.
**/
class Utf16 {
    /**
        * IsSurrogate reports whether the specified Unicode code point
        * can appear in a surrogate pair.
    **/
    static public inline function isSurrogate(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.utf16.Utf16_issurrogate.isSurrogate(_r);
    /**
        * DecodeRune returns the UTF-16 decoding of a surrogate pair.
        * If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
        * the Unicode replacement code point U+FFFD.
    **/
    static public inline function decodeRune(_r1:stdgo.GoInt32, _r2:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.unicode.utf16.Utf16_decoderune.decodeRune(_r1, _r2);
    /**
        * EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
        * If the rune is not a valid Unicode code point or does not need encoding,
        * EncodeRune returns U+FFFD, U+FFFD.
    **/
    static public inline function encodeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt32; } return stdgo._internal.unicode.utf16.Utf16_encoderune.encodeRune(_r);
    /**
        * Encode returns the UTF-16 encoding of the Unicode code point sequence s.
    **/
    static public inline function encode(_s:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoUInt16> return stdgo._internal.unicode.utf16.Utf16_encode.encode(_s);
    /**
        * AppendRune appends the UTF-16 encoding of the Unicode code point r
        * to the end of p and returns the extended buffer. If the rune is not
        * a valid Unicode code point, it appends the encoding of U+FFFD.
    **/
    static public inline function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt16> return stdgo._internal.unicode.utf16.Utf16_appendrune.appendRune(_a, _r);
    /**
        * Decode returns the Unicode code point sequence represented
        * by the UTF-16 encoding s.
    **/
    static public inline function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoInt32> return stdgo._internal.unicode.utf16.Utf16_decode.decode(_s);
}
