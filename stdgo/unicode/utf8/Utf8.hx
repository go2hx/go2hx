package stdgo.unicode.utf8;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package utf8 implements functions and constants to support text encoded in
    // UTF-8. It includes functions to translate between runes and UTF-8 byte sequences.
    // See https://en.wikipedia.org/wiki/UTF-8
**/
private var __go2hxdoc__package : Bool;
/**
    // first is information about the first byte in a UTF-8 sequence.
    
    
**/
private var _first = (new GoArray<GoUInt8>(
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(240 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(2 : GoUInt8),
(19 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(35 : GoUInt8),
(3 : GoUInt8),
(3 : GoUInt8),
(52 : GoUInt8),
(4 : GoUInt8),
(4 : GoUInt8),
(4 : GoUInt8),
(68 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8),
(241 : GoUInt8)) : GoArray<GoUInt8>);
/**
    // acceptRanges has size 16 to avoid bounds checks in the code that uses it.
    
    
**/
private var _acceptRanges = {
        var s:GoArray<stdgo.unicode.utf8.Utf8.T_acceptRange> = new GoArray<stdgo.unicode.utf8.Utf8.T_acceptRange>(...[for (i in 0 ... 16) ({} : stdgo.unicode.utf8.Utf8.T_acceptRange)]);
        s[0] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((128 : GoUInt8), (191 : GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[1] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((160 : GoUInt8), (191 : GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[2] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((128 : GoUInt8), (159 : GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[3] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((144 : GoUInt8), (191 : GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s[4] = (new stdgo.unicode.utf8.Utf8.T_acceptRange((128 : GoUInt8), (143 : GoUInt8)) : stdgo.unicode.utf8.Utf8.T_acceptRange);
        s;
    };
/**
    // Numbers fundamental to the encoding.
    
    // the "error" Rune or "Unicode replacement character"
**/
final runeError = (65533 : GoInt32);
/**
    // Numbers fundamental to the encoding.
    
    // characters below RuneSelf are represented as themselves in a single byte.
**/
final runeSelf = (128i64 : GoUInt64);
/**
    // Numbers fundamental to the encoding.
    
    // Maximum valid Unicode code point.
**/
final maxRune = (1114111 : GoInt32);
/**
    // Numbers fundamental to the encoding.
    
    // maximum number of bytes of a UTF-8 encoded Unicode character.
**/
final utfmax = (4i64 : GoUInt64);
/**
    // Code points in the surrogate range are not valid for UTF-8.
    
    
**/
private final _surrogateMin = (55296i64 : GoUInt64);
/**
    // Code points in the surrogate range are not valid for UTF-8.
    
    
**/
private final _surrogateMax = (57343i64 : GoUInt64);
/**
    
    
    
**/
private final _t1 = (0i64 : GoUInt64);
/**
    
    
    
**/
private final _tx = (128i64 : GoUInt64);
/**
    
    
    
**/
private final _t2 = (192i64 : GoUInt64);
/**
    
    
    
**/
private final _t3 = (224i64 : GoUInt64);
/**
    
    
    
**/
private final _t4 = (240i64 : GoUInt64);
/**
    
    
    
**/
private final _t5 = (248i64 : GoUInt64);
/**
    
    
    
**/
private final _maskx = (63i64 : GoUInt64);
/**
    
    
    
**/
private final _mask2 = (31i64 : GoUInt64);
/**
    
    
    
**/
private final _mask3 = (15i64 : GoUInt64);
/**
    
    
    
**/
private final _mask4 = (7i64 : GoUInt64);
/**
    
    
    
**/
private final _rune1Max = (127i64 : GoUInt64);
/**
    
    
    
**/
private final _rune2Max = (2047i64 : GoUInt64);
/**
    
    
    
**/
private final _rune3Max = (65535i64 : GoUInt64);
/**
    // The default lowest and highest continuation byte.
    
    
**/
private final _locb = (128i64 : GoUInt64);
/**
    
    
    
**/
private final _hicb = (191i64 : GoUInt64);
/**
    // These names of these constants are chosen to give nice alignment in the
    // table below. The first nibble is an index into acceptRanges or F for
    // special one-byte cases. The second nibble is the Rune length or the
    // Status for the special one-byte case.
    
    // invalid: size 1
**/
private final _xx = (241i64 : GoUInt64);
/**
    
    
    // ASCII: size 1
**/
private final _as = (240i64 : GoUInt64);
/**
    
    
    // accept 0, size 2
**/
private final _s1 = (2i64 : GoUInt64);
/**
    
    
    // accept 1, size 3
**/
private final _s2 = (19i64 : GoUInt64);
/**
    
    
    // accept 0, size 3
**/
private final _s3 = (3i64 : GoUInt64);
/**
    
    
    // accept 2, size 3
**/
private final _s4 = (35i64 : GoUInt64);
/**
    
    
    // accept 3, size 4
**/
private final _s5 = (52i64 : GoUInt64);
/**
    
    
    // accept 0, size 4
**/
private final _s6 = (4i64 : GoUInt64);
/**
    
    
    // accept 4, size 4
**/
private final _s7 = (68i64 : GoUInt64);
/**
    // acceptRange gives the range of valid values for the second byte in a UTF-8
    // sequence.
    
    
**/
@:structInit @:private class T_acceptRange {
    public var _lo : GoUInt8 = 0;
    public var _hi : GoUInt8 = 0;
    public function new(?_lo:GoUInt8, ?_hi:GoUInt8) {
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_acceptRange(_lo, _hi);
    }
}
/**
    // FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
    // An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
**/
function fullRune(_p:Slice<GoByte>):Bool {
        var _n:GoInt = (_p.length);
        if (_n == ((0 : GoInt))) {
            return false;
        };
        var _x:GoUInt8 = _first[(_p[(0 : GoInt)] : GoInt)];
        if (_n >= (_x & (7 : GoUInt8) : GoInt)) {
            return true;
        };
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
        if ((_n > (1 : GoInt)) && ((_p[(1 : GoInt)] < _accept._lo) || (_accept._hi < _p[(1 : GoInt)]))) {
            return true;
        } else if ((_n > (2 : GoInt)) && ((_p[(2 : GoInt)] < (128 : GoUInt8)) || ((191 : GoUInt8) < _p[(2 : GoInt)]))) {
            return true;
        };
        return false;
    }
/**
    // FullRuneInString is like FullRune but its input is a string.
**/
function fullRuneInString(_s:GoString):Bool {
        var _n:GoInt = (_s.length);
        if (_n == ((0 : GoInt))) {
            return false;
        };
        var _x:GoUInt8 = _first[(_s[(0 : GoInt)] : GoInt)];
        if (_n >= (_x & (7 : GoUInt8) : GoInt)) {
            return true;
        };
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
        if ((_n > (1 : GoInt)) && ((_s[(1 : GoInt)] < _accept._lo) || (_accept._hi < _s[(1 : GoInt)]))) {
            return true;
        } else if ((_n > (2 : GoInt)) && ((_s[(2 : GoInt)] < (128 : GoUInt8)) || ((191 : GoUInt8) < _s[(2 : GoInt)]))) {
            return true;
        };
        return false;
    }
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
function decodeRune(_p:Slice<GoByte>):{ var _0 : GoRune; var _1 : GoInt; } {
        var _r:GoRune = (0 : GoInt32), _size:GoInt = (0 : GoInt);
        var _n:GoInt = (_p.length);
        if (_n < (1 : GoInt)) {
            return { _0 : (65533 : GoInt32), _1 : (0 : GoInt) };
        };
        var _p0:GoUInt8 = _p[(0 : GoInt)];
        var _x:GoUInt8 = _first[(_p0 : GoInt)];
        if (_x >= (240 : GoUInt8)) {
            var _mask:GoInt32 = ((_x : GoRune) << (31i64 : GoUInt64)) >> (31i64 : GoUInt64);
            return { _0 : ((_p[(0 : GoInt)] : GoRune) & (_mask ^ (-1i32 : GoInt))) | ((65533 : GoInt32) & _mask), _1 : (1 : GoInt) };
        };
        var _sz:GoInt = (_x & (7 : GoUInt8) : GoInt);
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
        if (_n < _sz) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        var _b1:GoUInt8 = _p[(1 : GoInt)];
        if ((_b1 < _accept._lo) || (_accept._hi < _b1)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        if (_sz <= (2 : GoInt)) {
            return { _0 : ((_p0 & (31 : GoUInt8) : GoRune) << (6i64 : GoUInt64)) | (_b1 & (63 : GoUInt8) : GoRune), _1 : (2 : GoInt) };
        };
        var _b2:GoUInt8 = _p[(2 : GoInt)];
        if ((_b2 < (128 : GoUInt8)) || ((191 : GoUInt8) < _b2)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        if (_sz <= (3 : GoInt)) {
            return { _0 : (((_p0 & (15 : GoUInt8) : GoRune) << (12i64 : GoUInt64)) | ((_b1 & (63 : GoUInt8) : GoRune) << (6i64 : GoUInt64))) | (_b2 & (63 : GoUInt8) : GoRune), _1 : (3 : GoInt) };
        };
        var _b3:GoUInt8 = _p[(3 : GoInt)];
        if ((_b3 < (128 : GoUInt8)) || ((191 : GoUInt8) < _b3)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        return { _0 : ((((_p0 & (7 : GoUInt8) : GoRune) << (18i64 : GoUInt64)) | ((_b1 & (63 : GoUInt8) : GoRune) << (12i64 : GoUInt64))) | ((_b2 & (63 : GoUInt8) : GoRune) << (6i64 : GoUInt64))) | (_b3 & (63 : GoUInt8) : GoRune), _1 : (4 : GoInt) };
    }
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
function decodeRuneInString(_s:GoString):{ var _0 : GoRune; var _1 : GoInt; } {
        var _r:GoRune = (0 : GoInt32), _size:GoInt = (0 : GoInt);
        var _n:GoInt = (_s.length);
        if (_n < (1 : GoInt)) {
            return { _0 : (65533 : GoInt32), _1 : (0 : GoInt) };
        };
        var _s0:GoUInt8 = _s[(0 : GoInt)];
        var _x:GoUInt8 = _first[(_s0 : GoInt)];
        if (_x >= (240 : GoUInt8)) {
            var _mask:GoInt32 = ((_x : GoRune) << (31i64 : GoUInt64)) >> (31i64 : GoUInt64);
            return { _0 : ((_s[(0 : GoInt)] : GoRune) & (_mask ^ (-1i32 : GoInt))) | ((65533 : GoInt32) & _mask), _1 : (1 : GoInt) };
        };
        var _sz:GoInt = (_x & (7 : GoUInt8) : GoInt);
        var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
        if (_n < _sz) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        var _s1:GoUInt8 = _s[(1 : GoInt)];
        if ((_s1 < _accept._lo) || (_accept._hi < _s1)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        if (_sz <= (2 : GoInt)) {
            return { _0 : ((_s0 & (31 : GoUInt8) : GoRune) << (6i64 : GoUInt64)) | (_s1 & (63 : GoUInt8) : GoRune), _1 : (2 : GoInt) };
        };
        var _s2:GoUInt8 = _s[(2 : GoInt)];
        if ((_s2 < (128 : GoUInt8)) || ((191 : GoUInt8) < _s2)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        if (_sz <= (3 : GoInt)) {
            return { _0 : (((_s0 & (15 : GoUInt8) : GoRune) << (12i64 : GoUInt64)) | ((_s1 & (63 : GoUInt8) : GoRune) << (6i64 : GoUInt64))) | (_s2 & (63 : GoUInt8) : GoRune), _1 : (3 : GoInt) };
        };
        var _s3:GoUInt8 = _s[(3 : GoInt)];
        if ((_s3 < (128 : GoUInt8)) || ((191 : GoUInt8) < _s3)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        return { _0 : ((((_s0 & (7 : GoUInt8) : GoRune) << (18i64 : GoUInt64)) | ((_s1 & (63 : GoUInt8) : GoRune) << (12i64 : GoUInt64))) | ((_s2 & (63 : GoUInt8) : GoRune) << (6i64 : GoUInt64))) | (_s3 & (63 : GoUInt8) : GoRune), _1 : (4 : GoInt) };
    }
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
function decodeLastRune(_p:Slice<GoByte>):{ var _0 : GoRune; var _1 : GoInt; } {
        var _r:GoRune = (0 : GoInt32), _size:GoInt = (0 : GoInt);
        var _end:GoInt = (_p.length);
        if (_end == ((0 : GoInt))) {
            return { _0 : (65533 : GoInt32), _1 : (0 : GoInt) };
        };
        var _start:GoInt = _end - (1 : GoInt);
        _r = (_p[(_start : GoInt)] : GoRune);
        if (_r < (128 : GoInt32)) {
            return { _0 : _r, _1 : (1 : GoInt) };
        };
        var _lim:GoInt = _end - (4 : GoInt);
        if (_lim < (0 : GoInt)) {
            _lim = (0 : GoInt);
        };
        {
            _start--;
            Go.cfor(_start >= _lim, _start--, {
                if (runeStart(_p[(_start : GoInt)])) {
                    break;
                };
            });
        };
        if (_start < (0 : GoInt)) {
            _start = (0 : GoInt);
        };
        {
            var __tmp__ = decodeRune((_p.__slice__(_start, _end) : Slice<GoUInt8>));
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if (_start + _size != (_end)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        return { _0 : _r, _1 : _size };
    }
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
function decodeLastRuneInString(_s:GoString):{ var _0 : GoRune; var _1 : GoInt; } {
        var _r:GoRune = (0 : GoInt32), _size:GoInt = (0 : GoInt);
        var _end:GoInt = (_s.length);
        if (_end == ((0 : GoInt))) {
            return { _0 : (65533 : GoInt32), _1 : (0 : GoInt) };
        };
        var _start:GoInt = _end - (1 : GoInt);
        _r = (_s[(_start : GoInt)] : GoRune);
        if (_r < (128 : GoInt32)) {
            return { _0 : _r, _1 : (1 : GoInt) };
        };
        var _lim:GoInt = _end - (4 : GoInt);
        if (_lim < (0 : GoInt)) {
            _lim = (0 : GoInt);
        };
        {
            _start--;
            Go.cfor(_start >= _lim, _start--, {
                if (runeStart(_s[(_start : GoInt)])) {
                    break;
                };
            });
        };
        if (_start < (0 : GoInt)) {
            _start = (0 : GoInt);
        };
        {
            var __tmp__ = decodeRuneInString((_s.__slice__(_start, _end) : GoString));
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if (_start + _size != (_end)) {
            return { _0 : (65533 : GoInt32), _1 : (1 : GoInt) };
        };
        return { _0 : _r, _1 : _size };
    }
/**
    // RuneLen returns the number of bytes required to encode the rune.
    // It returns -1 if the rune is not a valid value to encode in UTF-8.
**/
function runeLen(_r:GoRune):GoInt {
        if (_r < (0 : GoInt32)) {
            return (-1 : GoInt);
        } else if (_r <= (127 : GoInt32)) {
            return (1 : GoInt);
        } else if (_r <= (2047 : GoInt32)) {
            return (2 : GoInt);
        } else if (((55296 : GoInt32) <= _r) && (_r <= (57343 : GoInt32))) {
            return (-1 : GoInt);
        } else if (_r <= (65535 : GoInt32)) {
            return (3 : GoInt);
        } else if (_r <= (1114111 : GoInt32)) {
            return (4 : GoInt);
        };
        return (-1 : GoInt);
    }
/**
    // EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
    // If the rune is out of range, it writes the encoding of RuneError.
    // It returns the number of bytes written.
**/
function encodeRune(_p:Slice<GoByte>, _r:GoRune):GoInt {
        {
            var _i:GoUInt32 = (_r : GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (127u32 : GoUInt32)))) {
                        _p[(0 : GoInt)] = (_r : GoByte);
                        return (1 : GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_i <= (2047u32 : GoUInt32)))) {
                        _p[(1 : GoInt)];
                        _p[(0 : GoInt)] = (192 : GoUInt8) | (_r >> (6i64 : GoUInt64) : GoByte);
                        _p[(1 : GoInt)] = (128 : GoUInt8) | ((_r : GoByte) & (63 : GoUInt8));
                        return (2 : GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_i > (1114111u32 : GoUInt32) || ((55296u32 : GoUInt32) <= _i) && (_i <= (57343u32 : GoUInt32))))) {
                        _r = (65533 : GoInt32);
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_i <= (65535u32 : GoUInt32)))) {
                        _p[(2 : GoInt)];
                        _p[(0 : GoInt)] = (224 : GoUInt8) | (_r >> (12i64 : GoUInt64) : GoByte);
                        _p[(1 : GoInt)] = (128 : GoUInt8) | ((_r >> (6i64 : GoUInt64) : GoByte) & (63 : GoUInt8));
                        _p[(2 : GoInt)] = (128 : GoUInt8) | ((_r : GoByte) & (63 : GoUInt8));
                        return (3 : GoInt);
                        break;
                        break;
                    } else {
                        _p[(3 : GoInt)];
                        _p[(0 : GoInt)] = (240 : GoUInt8) | (_r >> (18i64 : GoUInt64) : GoByte);
                        _p[(1 : GoInt)] = (128 : GoUInt8) | ((_r >> (12i64 : GoUInt64) : GoByte) & (63 : GoUInt8));
                        _p[(2 : GoInt)] = (128 : GoUInt8) | ((_r >> (6i64 : GoUInt64) : GoByte) & (63 : GoUInt8));
                        _p[(3 : GoInt)] = (128 : GoUInt8) | ((_r : GoByte) & (63 : GoUInt8));
                        return (4 : GoInt);
                        break;
                    };
                    break;
                };
                return (0 : GoInt);
            };
        };
    }
/**
    // AppendRune appends the UTF-8 encoding of r to the end of p and
    // returns the extended buffer. If the rune is out of range,
    // it appends the encoding of RuneError.
**/
function appendRune(_p:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
        if ((_r : GoUInt32) <= (127u32 : GoUInt32)) {
            return (_p.__append__((_r : GoByte)));
        };
        return _appendRuneNonASCII(_p, _r);
    }
private function _appendRuneNonASCII(_p:Slice<GoByte>, _r:GoRune):Slice<GoByte> {
        {
            var _i:GoUInt32 = (_r : GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (2047u32 : GoUInt32)))) {
                        return (_p.__append__((192 : GoUInt8) | (_r >> (6i64 : GoUInt64) : GoByte), (128 : GoUInt8) | ((_r : GoByte) & (63 : GoUInt8))));
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_i > (1114111u32 : GoUInt32) || ((55296u32 : GoUInt32) <= _i) && (_i <= (57343u32 : GoUInt32))))) {
                        _r = (65533 : GoInt32);
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_i <= (65535u32 : GoUInt32)))) {
                        return (_p.__append__((224 : GoUInt8) | (_r >> (12i64 : GoUInt64) : GoByte), (128 : GoUInt8) | ((_r >> (6i64 : GoUInt64) : GoByte) & (63 : GoUInt8)), (128 : GoUInt8) | ((_r : GoByte) & (63 : GoUInt8))));
                        break;
                        break;
                    } else {
                        return (_p.__append__((240 : GoUInt8) | (_r >> (18i64 : GoUInt64) : GoByte), (128 : GoUInt8) | ((_r >> (12i64 : GoUInt64) : GoByte) & (63 : GoUInt8)), (128 : GoUInt8) | ((_r >> (6i64 : GoUInt64) : GoByte) & (63 : GoUInt8)), (128 : GoUInt8) | ((_r : GoByte) & (63 : GoUInt8))));
                        break;
                    };
                    break;
                };
                return (null : Slice<GoUInt8>);
            };
        };
    }
/**
    // RuneCount returns the number of runes in p. Erroneous and short
    // encodings are treated as single runes of width 1 byte.
**/
function runeCount(_p:Slice<GoByte>):GoInt {
        var _np:GoInt = (_p.length);
        var _n:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            while (_i < _np) {
                _n++;
                var _c:GoUInt8 = _p[(_i : GoInt)];
                if (_c < (128 : GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[(_c : GoInt)];
                if (_x == ((241 : GoUInt8))) {
                    _i++;
                    continue;
                };
                var _size:GoInt = (_x & (7 : GoUInt8) : GoInt);
                if ((_i + _size) > _np) {
                    _i++;
                    continue;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
                {
                    var _c:GoUInt8 = _p[(_i + (1 : GoInt) : GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        _size = (1 : GoInt);
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _p[(_i + (2 : GoInt) : GoInt)];
                        if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                            _size = (1 : GoInt);
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _p[(_i + (3 : GoInt) : GoInt)];
                            if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                                _size = (1 : GoInt);
                            };
                        };
                    };
                };
                _i = _i + (_size);
            };
        };
        return _n;
    }
/**
    // RuneCountInString is like RuneCount but its input is a string.
**/
function runeCountInString(_s:GoString):GoInt {
        var _n:GoInt = (0 : GoInt);
        var _ns:GoInt = (_s.length);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _ns, _n++, {
                var _c:GoUInt8 = _s[(_i : GoInt)];
                if (_c < (128 : GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[(_c : GoInt)];
                if (_x == ((241 : GoUInt8))) {
                    _i++;
                    continue;
                };
                var _size:GoInt = (_x & (7 : GoUInt8) : GoInt);
                if ((_i + _size) > _ns) {
                    _i++;
                    continue;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
                {
                    var _c:GoUInt8 = _s[(_i + (1 : GoInt) : GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        _size = (1 : GoInt);
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _s[(_i + (2 : GoInt) : GoInt)];
                        if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                            _size = (1 : GoInt);
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _s[(_i + (3 : GoInt) : GoInt)];
                            if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                                _size = (1 : GoInt);
                            };
                        };
                    };
                };
                _i = _i + (_size);
            });
        };
        return _n;
    }
/**
    // RuneStart reports whether the byte could be the first byte of an encoded,
    // possibly invalid rune. Second and subsequent bytes always have the top two
    // bits set to 10.
**/
function runeStart(_b:GoByte):Bool {
        return _b & (192 : GoUInt8) != ((128 : GoUInt8));
    }
/**
    // Valid reports whether p consists entirely of valid UTF-8-encoded runes.
**/
function valid(_p:Slice<GoByte>):Bool {
        _p = (_p.__slice__(0, (_p.length), (_p.length)) : Slice<GoUInt8>);
        while ((_p.length) >= (8 : GoInt)) {
            var _first32:GoUInt32 = (((_p[(0 : GoInt)] : GoUInt32) | ((_p[(1 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | ((_p[(2 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_p[(3 : GoInt)] : GoUInt32) << (24i64 : GoUInt64));
            var _second32:GoUInt32 = (((_p[(4 : GoInt)] : GoUInt32) | ((_p[(5 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | ((_p[(6 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_p[(7 : GoInt)] : GoUInt32) << (24i64 : GoUInt64));
            if ((_first32 | _second32) & (-2139062144u32 : GoUInt32) != ((0u32 : GoUInt32))) {
                break;
            };
            _p = (_p.__slice__((8 : GoInt)) : Slice<GoUInt8>);
        };
        var _n:GoInt = (_p.length);
        {
            var _i:GoInt = (0 : GoInt);
            while (_i < _n) {
                var _pi:GoUInt8 = _p[(_i : GoInt)];
                if (_pi < (128 : GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[(_pi : GoInt)];
                if (_x == ((241 : GoUInt8))) {
                    return false;
                };
                var _size:GoInt = (_x & (7 : GoUInt8) : GoInt);
                if ((_i + _size) > _n) {
                    return false;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
                {
                    var _c:GoUInt8 = _p[(_i + (1 : GoInt) : GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        return false;
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _p[(_i + (2 : GoInt) : GoInt)];
                        if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                            return false;
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _p[(_i + (3 : GoInt) : GoInt)];
                            if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                                return false;
                            };
                        };
                    };
                };
                _i = _i + (_size);
            };
        };
        return true;
    }
/**
    // ValidString reports whether s consists entirely of valid UTF-8-encoded runes.
**/
function validString(_s:GoString):Bool {
        while ((_s.length) >= (8 : GoInt)) {
            var _first32:GoUInt32 = (((_s[(0 : GoInt)] : GoUInt32) | ((_s[(1 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | ((_s[(2 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_s[(3 : GoInt)] : GoUInt32) << (24i64 : GoUInt64));
            var _second32:GoUInt32 = (((_s[(4 : GoInt)] : GoUInt32) | ((_s[(5 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | ((_s[(6 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_s[(7 : GoInt)] : GoUInt32) << (24i64 : GoUInt64));
            if ((_first32 | _second32) & (-2139062144u32 : GoUInt32) != ((0u32 : GoUInt32))) {
                break;
            };
            _s = (_s.__slice__((8 : GoInt)) : GoString);
        };
        var _n:GoInt = (_s.length);
        {
            var _i:GoInt = (0 : GoInt);
            while (_i < _n) {
                var _si:GoUInt8 = _s[(_i : GoInt)];
                if (_si < (128 : GoUInt8)) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[(_si : GoInt)];
                if (_x == ((241 : GoUInt8))) {
                    return false;
                };
                var _size:GoInt = (_x & (7 : GoUInt8) : GoInt);
                if ((_i + _size) > _n) {
                    return false;
                };
                var _accept:stdgo.unicode.utf8.Utf8.T_acceptRange = _acceptRanges[(_x >> (4i64 : GoUInt64) : GoInt)];
                {
                    var _c:GoUInt8 = _s[(_i + (1 : GoInt) : GoInt)];
                    if ((_c < _accept._lo) || (_accept._hi < _c)) {
                        return false;
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _s[(_i + (2 : GoInt) : GoInt)];
                        if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                            return false;
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _s[(_i + (3 : GoInt) : GoInt)];
                            if ((_c < (128 : GoUInt8)) || ((191 : GoUInt8) < _c)) {
                                return false;
                            };
                        };
                    };
                };
                _i = _i + (_size);
            };
        };
        return true;
    }
/**
    // ValidRune reports whether r can be legally encoded as UTF-8.
    // Code points that are out of range or a surrogate half are illegal.
**/
function validRune(_r:GoRune):Bool {
        if (((0 : GoInt32) <= _r) && (_r < (55296 : GoInt32))) {
            return true;
        } else if (((57343 : GoInt32) < _r) && (_r <= (1114111 : GoInt32))) {
            return true;
        };
        return false;
    }
