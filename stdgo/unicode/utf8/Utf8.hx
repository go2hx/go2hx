package stdgo.unicode.utf8;
/**
    // Package utf8 implements functions and constants to support text encoded in
    // UTF-8. It includes functions to translate between runes and UTF-8 byte sequences.
    // See https://en.wikipedia.org/wiki/UTF-8
**/
private var __go2hxdoc__package : Bool;
final runeError : Int = stdgo._internal.unicode.utf8.Utf8.runeError;
final runeSelf : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.runeSelf;
final maxRune : Int = stdgo._internal.unicode.utf8.Utf8.maxRune;
final utfmax : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.utfmax;
@:invalid typedef T_acceptRange = Dynamic;
/**
    // FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
    // An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
**/
inline function fullRune(p:Array<Int>):Bool throw "not implemented";
/**
    // FullRuneInString is like FullRune but its input is a string.
**/
inline function fullRuneInString(s:String):Bool throw "not implemented";
/**
    // DecodeRune unpacks the first UTF-8 encoding in p and returns the rune and
    // its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
    // the encoding is invalid, it returns (RuneError, 1). Both are impossible
    // results for correct, non-empty UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
inline function decodeRune(p:Array<Int>):stdgo.Tuple.<Int, Int> throw "not implemented";
/**
    // DecodeRuneInString is like DecodeRune but its input is a string. If s is
    // empty it returns (RuneError, 0). Otherwise, if the encoding is invalid, it
    // returns (RuneError, 1). Both are impossible results for correct, non-empty
    // UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
inline function decodeRuneInString(s:String):stdgo.Tuple.<Int, Int> throw "not implemented";
/**
    // DecodeLastRune unpacks the last UTF-8 encoding in p and returns the rune and
    // its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
    // the encoding is invalid, it returns (RuneError, 1). Both are impossible
    // results for correct, non-empty UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
inline function decodeLastRune(p:Array<Int>):stdgo.Tuple.<Int, Int> throw "not implemented";
/**
    // DecodeLastRuneInString is like DecodeLastRune but its input is a string. If
    // s is empty it returns (RuneError, 0). Otherwise, if the encoding is invalid,
    // it returns (RuneError, 1). Both are impossible results for correct,
    // non-empty UTF-8.
    //
    // An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    // out of range, or is not the shortest possible UTF-8 encoding for the
    // value. No other validation is performed.
**/
inline function decodeLastRuneInString(s:String):stdgo.Tuple.<Int, Int> throw "not implemented";
/**
    // RuneLen returns the number of bytes required to encode the rune.
    // It returns -1 if the rune is not a valid value to encode in UTF-8.
**/
inline function runeLen(r:Int):Int throw "not implemented";
/**
    // EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
    // If the rune is out of range, it writes the encoding of RuneError.
    // It returns the number of bytes written.
**/
inline function encodeRune(p:Array<Int>, r:Int):Int throw "not implemented";
/**
    // AppendRune appends the UTF-8 encoding of r to the end of p and
    // returns the extended buffer. If the rune is out of range,
    // it appends the encoding of RuneError.
**/
inline function appendRune(p:Array<Int>, r:Int):Array<Int> throw "not implemented";
/**
    // RuneCount returns the number of runes in p. Erroneous and short
    // encodings are treated as single runes of width 1 byte.
**/
inline function runeCount(p:Array<Int>):Int throw "not implemented";
/**
    // RuneCountInString is like RuneCount but its input is a string.
**/
inline function runeCountInString(s:String):Int throw "not implemented";
/**
    // RuneStart reports whether the byte could be the first byte of an encoded,
    // possibly invalid rune. Second and subsequent bytes always have the top two
    // bits set to 10.
**/
inline function runeStart(b:Int):Bool throw "not implemented";
/**
    // Valid reports whether p consists entirely of valid UTF-8-encoded runes.
**/
inline function valid(p:Array<Int>):Bool throw "not implemented";
/**
    // ValidString reports whether s consists entirely of valid UTF-8-encoded runes.
**/
inline function validString(s:String):Bool throw "not implemented";
/**
    // ValidRune reports whether r can be legally encoded as UTF-8.
    // Code points that are out of range or a surrogate half are illegal.
**/
inline function validRune(r:Int):Bool throw "not implemented";
