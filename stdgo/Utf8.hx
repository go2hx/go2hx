package stdgo;
final runeError : StdTypes.Int = stdgo._internal.unicode.utf8.Utf8_runeerror.runeError;
final runeSelf : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8_runeself.runeSelf;
final maxRune : StdTypes.Int = stdgo._internal.unicode.utf8.Utf8_maxrune.maxRune;
final uTFMax : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8_utfmax.uTFMax;
@:structInit @:using(stdgo.unicode.utf8.Utf8.T_acceptRange_static_extension) @:dox(hide) abstract T_acceptRange(stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange) from stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange to stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange {
    public var _lo(get, set) : std.UInt;
    function get__lo():std.UInt return this._lo;
    function set__lo(v:std.UInt):std.UInt {
        this._lo = (v : stdgo.GoUInt8);
        return v;
    }
    public var _hi(get, set) : std.UInt;
    function get__hi():std.UInt return this._hi;
    function set__hi(v:std.UInt):std.UInt {
        this._hi = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_lo:std.UInt, ?_hi:std.UInt) this = new stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange((_lo : stdgo.GoUInt8), (_hi : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_acceptRangePointer = stdgo._internal.unicode.utf8.Utf8_t_acceptrangepointer.T_acceptRangePointer;
@:dox(hide) class T_acceptRange_static_extension {

}
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
    static public inline function fullRune(_p:Array<std.UInt>):Bool {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_p);
    }
    /**
        * FullRuneInString is like FullRune but its input is a string.
    **/
    static public inline function fullRuneInString(_s:String):Bool {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.unicode.utf8.Utf8_fullruneinstring.fullRuneInString(_s);
    }
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
    static public inline function decodeRune(_p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function decodeRuneInString(_s:String):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function decodeLastRune(_p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function decodeLastRuneInString(_s:String):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * RuneLen returns the number of bytes required to encode the rune.
        * It returns -1 if the rune is not a valid value to encode in UTF-8.
    **/
    static public inline function runeLen(_r:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_r);
    }
    /**
        * EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
        * If the rune is out of range, it writes the encoding of RuneError.
        * It returns the number of bytes written.
    **/
    static public inline function encodeRune(_p:Array<std.UInt>, _r:StdTypes.Int):StdTypes.Int {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_p, _r);
    }
    /**
        * AppendRune appends the UTF-8 encoding of r to the end of p and
        * returns the extended buffer. If the rune is out of range,
        * it appends the encoding of RuneError.
    **/
    static public inline function appendRune(_p:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.GoInt32);
        return [for (i in stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_p, _r)) i];
    }
    /**
        * RuneCount returns the number of runes in p. Erroneous and short
        * encodings are treated as single runes of width 1 byte.
    **/
    static public inline function runeCount(_p:Array<std.UInt>):StdTypes.Int {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(_p);
    }
    /**
        * RuneCountInString is like RuneCount but its input is a string.
    **/
    static public inline function runeCountInString(_s:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s);
    }
    /**
        * RuneStart reports whether the byte could be the first byte of an encoded,
        * possibly invalid rune. Second and subsequent bytes always have the top two
        * bits set to 10.
    **/
    static public inline function runeStart(_b:std.UInt):Bool {
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.unicode.utf8.Utf8_runestart.runeStart(_b);
    }
    /**
        * Valid reports whether p consists entirely of valid UTF-8-encoded runes.
    **/
    static public inline function valid(_p:Array<std.UInt>):Bool {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.unicode.utf8.Utf8_valid.valid(_p);
    }
    /**
        * ValidString reports whether s consists entirely of valid UTF-8-encoded runes.
    **/
    static public inline function validString(_s:String):Bool {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.unicode.utf8.Utf8_validstring.validString(_s);
    }
    /**
        * ValidRune reports whether r can be legally encoded as UTF-8.
        * Code points that are out of range or a surrogate half are illegal.
    **/
    static public inline function validRune(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r);
    }
}
