package stdgo.unicode.utf8;
var runeError : stdgo.GoInt32 = 65533i64;
var runeSelf : stdgo.GoUInt64 = 128i64;
var maxRune : stdgo.GoInt32 = 1114111i64;
var uTFMax : stdgo.GoUInt64 = 4i64;
/**
    * Package utf8 implements functions and constants to support text encoded in
    * UTF-8. It includes functions to translate between runes and UTF-8 byte sequences.
    * See https://en.wikipedia.org/wiki/UTF-8
**/
class Utf8 {
    /**
        * FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
        * An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
    **/
    static public inline function fullRune(_p:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_p);
    /**
        * FullRuneInString is like FullRune but its input is a string.
    **/
    static public inline function fullRuneInString(_s:stdgo.GoString):Bool return stdgo._internal.unicode.utf8.Utf8_fullruneinstring.fullRuneInString(_s);
    /**
        * DecodeRune unpacks the first UTF-8 encoding in p and returns the rune and
        * its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
        * the encoding is invalid, it returns (RuneError, 1). Both are impossible
        * results for correct, non-empty UTF-8.
        * 
        * An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
        * out of range, or is not the shortest possible UTF-8 encoding for the
        * value. No other validation is performed.
    **/
    static public inline function decodeRune(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_p);
    /**
        * DecodeRuneInString is like DecodeRune but its input is a string. If s is
        * empty it returns (RuneError, 0). Otherwise, if the encoding is invalid, it
        * returns (RuneError, 1). Both are impossible results for correct, non-empty
        * UTF-8.
        * 
        * An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
        * out of range, or is not the shortest possible UTF-8 encoding for the
        * value. No other validation is performed.
    **/
    static public inline function decodeRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s);
    /**
        * DecodeLastRune unpacks the last UTF-8 encoding in p and returns the rune and
        * its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
        * the encoding is invalid, it returns (RuneError, 1). Both are impossible
        * results for correct, non-empty UTF-8.
        * 
        * An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
        * out of range, or is not the shortest possible UTF-8 encoding for the
        * value. No other validation is performed.
    **/
    static public inline function decodeLastRune(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune(_p);
    /**
        * DecodeLastRuneInString is like DecodeLastRune but its input is a string. If
        * s is empty it returns (RuneError, 0). Otherwise, if the encoding is invalid,
        * it returns (RuneError, 1). Both are impossible results for correct,
        * non-empty UTF-8.
        * 
        * An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
        * out of range, or is not the shortest possible UTF-8 encoding for the
        * value. No other validation is performed.
    **/
    static public inline function decodeLastRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(_s);
    /**
        * RuneLen returns the number of bytes required to encode the rune.
        * It returns -1 if the rune is not a valid value to encode in UTF-8.
    **/
    static public inline function runeLen(_r:stdgo.GoInt32):stdgo.GoInt return stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_r);
    /**
        * EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
        * If the rune is out of range, it writes the encoding of RuneError.
        * It returns the number of bytes written.
    **/
    static public inline function encodeRune(_p:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt return stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_p, _r);
    /**
        * AppendRune appends the UTF-8 encoding of r to the end of p and
        * returns the extended buffer. If the rune is out of range,
        * it appends the encoding of RuneError.
    **/
    static public inline function appendRune(_p:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_p, _r);
    /**
        * RuneCount returns the number of runes in p. Erroneous and short
        * encodings are treated as single runes of width 1 byte.
    **/
    static public inline function runeCount(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(_p);
    /**
        * RuneCountInString is like RuneCount but its input is a string.
    **/
    static public inline function runeCountInString(_s:stdgo.GoString):stdgo.GoInt return stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s);
    /**
        * RuneStart reports whether the byte could be the first byte of an encoded,
        * possibly invalid rune. Second and subsequent bytes always have the top two
        * bits set to 10.
    **/
    static public inline function runeStart(_b:stdgo.GoUInt8):Bool return stdgo._internal.unicode.utf8.Utf8_runestart.runeStart(_b);
    /**
        * Valid reports whether p consists entirely of valid UTF-8-encoded runes.
    **/
    static public inline function valid(_p:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.unicode.utf8.Utf8_valid.valid(_p);
    /**
        * ValidString reports whether s consists entirely of valid UTF-8-encoded runes.
    **/
    static public inline function validString(_s:stdgo.GoString):Bool return stdgo._internal.unicode.utf8.Utf8_validstring.validString(_s);
    /**
        * ValidRune reports whether r can be legally encoded as UTF-8.
        * Code points that are out of range or a surrogate half are illegal.
    **/
    static public inline function validRune(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r);
}
