package stdgo.unicode;
/**
    Package utf8 implements functions and constants to support text encoded in
    UTF-8. It includes functions to translate between runes and UTF-8 byte sequences.
    See https://en.wikipedia.org/wiki/UTF-8
**/
private var __go2hxdoc__package : Bool;
final runeError : StdTypes.Int = stdgo._internal.unicode.utf8.Utf8.runeError;
final runeSelf : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.runeSelf;
final maxRune : StdTypes.Int = stdgo._internal.unicode.utf8.Utf8.maxRune;
final utfmax : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.utfmax;
@:forward @:forward.new abstract T_acceptRange(stdgo._internal.unicode.utf8.Utf8.T_acceptRange) from stdgo._internal.unicode.utf8.Utf8.T_acceptRange to stdgo._internal.unicode.utf8.Utf8.T_acceptRange {

}
/**
    FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
    An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
**/
function fullRune(p:Array<StdTypes.Int>):Bool {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.fullRune(p);
    }
/**
    FullRuneInString is like FullRune but its input is a string.
**/
function fullRuneInString(s:String):Bool {
        return stdgo._internal.unicode.utf8.Utf8.fullRuneInString(s);
    }
/**
    DecodeRune unpacks the first UTF-8 encoding in p and returns the rune and
    its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
    the encoding is invalid, it returns (RuneError, 1). Both are impossible
    results for correct, non-empty UTF-8.
    
    An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    out of range, or is not the shortest possible UTF-8 encoding for the
    value. No other validation is performed.
**/
function decodeRune(p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeRune(p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    DecodeRuneInString is like DecodeRune but its input is a string. If s is
    empty it returns (RuneError, 0). Otherwise, if the encoding is invalid, it
    returns (RuneError, 1). Both are impossible results for correct, non-empty
    UTF-8.
    
    An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    out of range, or is not the shortest possible UTF-8 encoding for the
    value. No other validation is performed.
**/
function decodeRuneInString(s:String):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    DecodeLastRune unpacks the last UTF-8 encoding in p and returns the rune and
    its width in bytes. If p is empty it returns (RuneError, 0). Otherwise, if
    the encoding is invalid, it returns (RuneError, 1). Both are impossible
    results for correct, non-empty UTF-8.
    
    An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    out of range, or is not the shortest possible UTF-8 encoding for the
    value. No other validation is performed.
**/
function decodeLastRune(p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeLastRune(p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    DecodeLastRuneInString is like DecodeLastRune but its input is a string. If
    s is empty it returns (RuneError, 0). Otherwise, if the encoding is invalid,
    it returns (RuneError, 1). Both are impossible results for correct,
    non-empty UTF-8.
    
    An encoding is invalid if it is incorrect UTF-8, encodes a rune that is
    out of range, or is not the shortest possible UTF-8 encoding for the
    value. No other validation is performed.
**/
function decodeLastRuneInString(s:String):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString(s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    RuneLen returns the number of bytes required to encode the rune.
    It returns -1 if the rune is not a valid value to encode in UTF-8.
**/
function runeLen(r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.utf8.Utf8.runeLen(r);
    }
/**
    EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
    If the rune is out of range, it writes the encoding of RuneError.
    It returns the number of bytes written.
**/
function encodeRune(p:Array<StdTypes.Int>, r:StdTypes.Int):StdTypes.Int {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.encodeRune(p, r);
    }
/**
    AppendRune appends the UTF-8 encoding of r to the end of p and
    returns the extended buffer. If the rune is out of range,
    it appends the encoding of RuneError.
**/
function appendRune(p:Array<StdTypes.Int>, r:StdTypes.Int):Array<StdTypes.Int> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.unicode.utf8.Utf8.appendRune(p, r)) i];
    }
/**
    RuneCount returns the number of runes in p. Erroneous and short
    encodings are treated as single runes of width 1 byte.
**/
function runeCount(p:Array<StdTypes.Int>):StdTypes.Int {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.runeCount(p);
    }
/**
    RuneCountInString is like RuneCount but its input is a string.
**/
function runeCountInString(s:String):StdTypes.Int {
        return stdgo._internal.unicode.utf8.Utf8.runeCountInString(s);
    }
/**
    RuneStart reports whether the byte could be the first byte of an encoded,
    possibly invalid rune. Second and subsequent bytes always have the top two
    bits set to 10.
**/
function runeStart(b:StdTypes.Int):Bool {
        return stdgo._internal.unicode.utf8.Utf8.runeStart(b);
    }
/**
    Valid reports whether p consists entirely of valid UTF-8-encoded runes.
**/
function valid(p:Array<StdTypes.Int>):Bool {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.valid(p);
    }
/**
    ValidString reports whether s consists entirely of valid UTF-8-encoded runes.
**/
function validString(s:String):Bool {
        return stdgo._internal.unicode.utf8.Utf8.validString(s);
    }
/**
    ValidRune reports whether r can be legally encoded as UTF-8.
    Code points that are out of range or a surrogate half are illegal.
**/
function validRune(r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.utf8.Utf8.validRune(r);
    }
