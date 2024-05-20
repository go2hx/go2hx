package stdgo.unicode.utf8;
final runeError : StdTypes.Int = stdgo._internal.unicode.utf8.Utf8.runeError;
final runeSelf : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.runeSelf;
final maxRune : StdTypes.Int = stdgo._internal.unicode.utf8.Utf8.maxRune;
final utfmax : haxe.UInt64 = stdgo._internal.unicode.utf8.Utf8.utfmax;
@:structInit @:private abstract T_acceptRange(stdgo._internal.unicode.utf8.Utf8.T_acceptRange) from stdgo._internal.unicode.utf8.Utf8.T_acceptRange to stdgo._internal.unicode.utf8.Utf8.T_acceptRange {
    public var _lo(get, set) : std.UInt;
    function get__lo():std.UInt return this._lo;
    function set__lo(v:std.UInt):std.UInt {
        this._lo = v;
        return v;
    }
    public var _hi(get, set) : std.UInt;
    function get__hi():std.UInt return this._hi;
    function set__hi(v:std.UInt):std.UInt {
        this._hi = v;
        return v;
    }
    public function new(?_lo:std.UInt, ?_hi:std.UInt) this = new stdgo._internal.unicode.utf8.Utf8.T_acceptRange(_lo, _hi);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
/**
    Package utf8 implements functions and constants to support text encoded in
    UTF-8. It includes functions to translate between runes and UTF-8 byte sequences.
    See https://en.wikipedia.org/wiki/UTF-8
**/
class Utf8 {
    /**
        FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
        An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
    **/
    static public function fullRune(_p:Array<StdTypes.Int>):Bool {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.fullRune(_p);
    }
    /**
        FullRuneInString is like FullRune but its input is a string.
    **/
    static public function fullRuneInString(_s:String):Bool {
        return stdgo._internal.unicode.utf8.Utf8.fullRuneInString(_s);
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
    static public function decodeRune(_p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeRune(_p);
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
    static public function decodeRuneInString(_s:String):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s);
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
    static public function decodeLastRune(_p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeLastRune(_p);
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
    static public function decodeLastRuneInString(_s:String):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        RuneLen returns the number of bytes required to encode the rune.
        It returns -1 if the rune is not a valid value to encode in UTF-8.
    **/
    static public function runeLen(_r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.unicode.utf8.Utf8.runeLen(_r);
    }
    /**
        EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
        If the rune is out of range, it writes the encoding of RuneError.
        It returns the number of bytes written.
    **/
    static public function encodeRune(_p:Array<StdTypes.Int>, _r:StdTypes.Int):StdTypes.Int {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.encodeRune(_p, _r);
    }
    /**
        AppendRune appends the UTF-8 encoding of r to the end of p and
        returns the extended buffer. If the rune is out of range,
        it appends the encoding of RuneError.
    **/
    static public function appendRune(_p:Array<StdTypes.Int>, _r:StdTypes.Int):Array<StdTypes.Int> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.unicode.utf8.Utf8.appendRune(_p, _r)) i];
    }
    /**
        RuneCount returns the number of runes in p. Erroneous and short
        encodings are treated as single runes of width 1 byte.
    **/
    static public function runeCount(_p:Array<StdTypes.Int>):StdTypes.Int {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.runeCount(_p);
    }
    /**
        RuneCountInString is like RuneCount but its input is a string.
    **/
    static public function runeCountInString(_s:String):StdTypes.Int {
        return stdgo._internal.unicode.utf8.Utf8.runeCountInString(_s);
    }
    /**
        RuneStart reports whether the byte could be the first byte of an encoded,
        possibly invalid rune. Second and subsequent bytes always have the top two
        bits set to 10.
    **/
    static public function runeStart(_b:StdTypes.Int):Bool {
        return stdgo._internal.unicode.utf8.Utf8.runeStart(_b);
    }
    /**
        Valid reports whether p consists entirely of valid UTF-8-encoded runes.
    **/
    static public function valid(_p:Array<StdTypes.Int>):Bool {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.unicode.utf8.Utf8.valid(_p);
    }
    /**
        ValidString reports whether s consists entirely of valid UTF-8-encoded runes.
    **/
    static public function validString(_s:String):Bool {
        return stdgo._internal.unicode.utf8.Utf8.validString(_s);
    }
    /**
        ValidRune reports whether r can be legally encoded as UTF-8.
        Code points that are out of range or a surrogate half are illegal.
    **/
    static public function validRune(_r:StdTypes.Int):Bool {
        return stdgo._internal.unicode.utf8.Utf8.validRune(_r);
    }
}
