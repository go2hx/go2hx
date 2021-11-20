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
@:structInit class T_acceptRange {
    public var _lo : GoUInt8 = ((0 : GoUInt8));
    public var _hi : GoUInt8 = ((0 : GoUInt8));
    public function new(?_lo:GoUInt8, ?_hi:GoUInt8) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_lo) + " " + Go.string(_hi) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_acceptRange(_lo, _hi);
    }
    public function __set__(__tmp__) {
        this._lo = __tmp__._lo;
        this._hi = __tmp__._hi;
        return this;
    }
}
final _s5 : GoInt64 = ((52 : GoUnTypedInt));
final _surrogateMax : GoInt64 = ((57343 : GoUnTypedInt));
final utfmax : GoInt64 = ((4 : GoUnTypedInt));
final _t3 : GoInt64 = ((224 : GoUnTypedInt));
final _s6 : GoInt64 = ((4 : GoUnTypedInt));
final _t4 : GoInt64 = ((240 : GoUnTypedInt));
final _tx : GoInt64 = ((128 : GoUnTypedInt));
final _s7 : GoInt64 = ((68 : GoUnTypedInt));
final _t5 : GoInt64 = ((248 : GoUnTypedInt));
final runeError : GoInt32 = (("\u{FFFD}".code : GoRune));
final maxRune : GoInt32 = (("\u{0010FFFF}".code : GoRune));
final _hicb : GoInt64 = ((191 : GoUnTypedInt));
final _locb : GoInt64 = ((128 : GoUnTypedInt));
var _acceptRanges : GoArray<T_acceptRange> = {
        var s = new GoArray<T_acceptRange>(...[for (i in 0 ... 16) new T_acceptRange()]);
        s[0] = new T_acceptRange(_locb, _hicb);
        s[1] = new T_acceptRange(((160 : GoUInt8)), _hicb);
        s[2] = new T_acceptRange(_locb, ((159 : GoUInt8)));
        s[3] = new T_acceptRange(((144 : GoUInt8)), _hicb);
        s[4] = new T_acceptRange(_locb, ((143 : GoUInt8)));
        s;
    };
final _rune2Max : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((11 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _surrogateMin : GoInt64 = ((55296 : GoUnTypedInt));
final _as : GoInt64 = ((240 : GoUnTypedInt));
final _xx : GoInt64 = ((241 : GoUnTypedInt));
final _s1 : GoInt64 = ((2 : GoUnTypedInt));
final _s2 : GoInt64 = ((19 : GoUnTypedInt));
final _s3 : GoInt64 = ((3 : GoUnTypedInt));
final _s4 : GoInt64 = ((35 : GoUnTypedInt));
var _first : GoArray<GoUInt8> = new GoArray<GoUInt8>(
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_as,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s1,
_s2,
_s3,
_s3,
_s3,
_s3,
_s3,
_s3,
_s3,
_s3,
_s3,
_s3,
_s3,
_s3,
_s4,
_s3,
_s3,
_s5,
_s6,
_s6,
_s6,
_s7,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx,
_xx).copy();
final _mask2 : GoInt64 = ((31 : GoUnTypedInt));
final _mask3 : GoInt64 = ((15 : GoUnTypedInt));
final _maskx : GoInt64 = ((63 : GoUnTypedInt));
final _mask4 : GoInt64 = ((7 : GoUnTypedInt));
final _rune3Max : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final runeSelf : GoInt64 = ((128 : GoUnTypedInt));
final _rune1Max : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _t1 : GoInt64 = ((0 : GoUnTypedInt));
final _t2 : GoInt64 = ((192 : GoUnTypedInt));
/**
    // FullRune reports whether the bytes in p begin with a full UTF-8 encoding of a rune.
    // An invalid encoding is considered a full Rune since it will convert as a width-1 error rune.
**/
function fullRune(_p:Slice<GoByte>):Bool {
        var _n:GoInt = _p.length;
        if (_n == ((0 : GoInt))) {
            return false;
        };
        var _x:GoUInt8 = _first[_p[((0 : GoInt))]];
        if (_n >= (((_x & ((7 : GoUInt8))) : GoInt))) {
            return true;
        };
        var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
        if (_n > ((1 : GoInt)) && (_p[((1 : GoInt))] < _accept._lo || _accept._hi < _p[((1 : GoInt))])) {
            return true;
        } else if (_n > ((2 : GoInt)) && (_p[((2 : GoInt))] < _locb || _hicb < _p[((2 : GoInt))])) {
            return true;
        };
        return false;
    }
/**
    // FullRuneInString is like FullRune but its input is a string.
**/
function fullRuneInString(_s:GoString):Bool {
        var _n:GoInt = _s.length;
        if (_n == ((0 : GoInt))) {
            return false;
        };
        var _x:GoUInt8 = _first[_s[((0 : GoInt))]];
        if (_n >= (((_x & ((7 : GoUInt8))) : GoInt))) {
            return true;
        };
        var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
        if (_n > ((1 : GoInt)) && (_s[((1 : GoInt))] < _accept._lo || _accept._hi < _s[((1 : GoInt))])) {
            return true;
        } else if (_n > ((2 : GoInt)) && (_s[((2 : GoInt))] < _locb || _hicb < _s[((2 : GoInt))])) {
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
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt));
        var _n:GoInt = _p.length;
        if (_n < ((1 : GoInt))) {
            return { _0 : runeError, _1 : ((0 : GoInt)) };
        };
        var _p0:GoUInt8 = _p[((0 : GoInt))];
        var _x:GoUInt8 = _first[_p0];
        if (_x >= _as) {
            var _mask:GoInt32 = ((((_x : GoRune)) << ((31 : GoUnTypedInt))) >> ((31 : GoUnTypedInt)));
            return { _0 : (((_p[((0 : GoInt))] : GoRune)) & _mask) ^ ((-1 : GoUnTypedInt)) | runeError & _mask, _1 : ((1 : GoInt)) };
        };
        var _sz:GoInt = (((_x & ((7 : GoUInt8))) : GoInt));
        var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
        if (_n < _sz) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        var _b1:GoUInt8 = _p[((1 : GoInt))];
        if (_b1 < _accept._lo || _accept._hi < _b1) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        if (_sz <= ((2 : GoInt))) {
            return { _0 : ((((_p0 & _mask2) : GoRune)) << ((6 : GoUnTypedInt))) | (((_b1 & _maskx) : GoRune)), _1 : ((2 : GoInt)) };
        };
        var _b2:GoUInt8 = _p[((2 : GoInt))];
        if (_b2 < _locb || _hicb < _b2) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        if (_sz <= ((3 : GoInt))) {
            return { _0 : ((((_p0 & _mask3) : GoRune)) << ((12 : GoUnTypedInt))) | ((((_b1 & _maskx) : GoRune)) << ((6 : GoUnTypedInt))) | (((_b2 & _maskx) : GoRune)), _1 : ((3 : GoInt)) };
        };
        var _b3:GoUInt8 = _p[((3 : GoInt))];
        if (_b3 < _locb || _hicb < _b3) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        return { _0 : ((((_p0 & _mask4) : GoRune)) << ((18 : GoUnTypedInt))) | ((((_b1 & _maskx) : GoRune)) << ((12 : GoUnTypedInt))) | ((((_b2 & _maskx) : GoRune)) << ((6 : GoUnTypedInt))) | (((_b3 & _maskx) : GoRune)), _1 : ((4 : GoInt)) };
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
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt));
        var _n:GoInt = _s.length;
        if (_n < ((1 : GoInt))) {
            return { _0 : runeError, _1 : ((0 : GoInt)) };
        };
        var _s0:GoUInt8 = _s[((0 : GoInt))];
        var _x:GoUInt8 = _first[_s0];
        if (_x >= _as) {
            var _mask:GoInt32 = ((((_x : GoRune)) << ((31 : GoUnTypedInt))) >> ((31 : GoUnTypedInt)));
            return { _0 : (((_s[((0 : GoInt))] : GoRune)) & _mask) ^ ((-1 : GoUnTypedInt)) | runeError & _mask, _1 : ((1 : GoInt)) };
        };
        var _sz:GoInt = (((_x & ((7 : GoUInt8))) : GoInt));
        var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
        if (_n < _sz) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        var _s1:GoUInt8 = _s[((1 : GoInt))];
        if (_s1 < _accept._lo || _accept._hi < _s1) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        if (_sz <= ((2 : GoInt))) {
            return { _0 : ((((_s0 & _mask2) : GoRune)) << ((6 : GoUnTypedInt))) | (((_s1 & _maskx) : GoRune)), _1 : ((2 : GoInt)) };
        };
        var _s2:GoUInt8 = _s[((2 : GoInt))];
        if (_s2 < _locb || _hicb < _s2) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        if (_sz <= ((3 : GoInt))) {
            return { _0 : ((((_s0 & _mask3) : GoRune)) << ((12 : GoUnTypedInt))) | ((((_s1 & _maskx) : GoRune)) << ((6 : GoUnTypedInt))) | (((_s2 & _maskx) : GoRune)), _1 : ((3 : GoInt)) };
        };
        var _s3:GoUInt8 = _s[((3 : GoInt))];
        if (_s3 < _locb || _hicb < _s3) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        return { _0 : ((((_s0 & _mask4) : GoRune)) << ((18 : GoUnTypedInt))) | ((((_s1 & _maskx) : GoRune)) << ((12 : GoUnTypedInt))) | ((((_s2 & _maskx) : GoRune)) << ((6 : GoUnTypedInt))) | (((_s3 & _maskx) : GoRune)), _1 : ((4 : GoInt)) };
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
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt));
        var _end:GoInt = _p.length;
        if (_end == ((0 : GoInt))) {
            return { _0 : runeError, _1 : ((0 : GoInt)) };
        };
        var _start:GoInt = _end - ((1 : GoInt));
        _r = ((_p[_start] : GoRune));
        if (_r < runeSelf) {
            return { _0 : _r, _1 : ((1 : GoInt)) };
        };
        var _lim:GoInt = _end - utfmax;
        if (_lim < ((0 : GoInt))) {
            _lim = ((0 : GoInt));
        };
        {
            _start--;
            Go.cfor(_start >= _lim, _start--, {
                if (runeStart(_p[_start])) {
                    break;
                };
            });
        };
        if (_start < ((0 : GoInt))) {
            _start = ((0 : GoInt));
        };
        {
            var __tmp__ = decodeRune(_p.__slice__(_start, _end));
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if (_start + _size != _end) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
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
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt));
        var _end:GoInt = _s.length;
        if (_end == ((0 : GoInt))) {
            return { _0 : runeError, _1 : ((0 : GoInt)) };
        };
        var _start:GoInt = _end - ((1 : GoInt));
        _r = ((_s[_start] : GoRune));
        if (_r < runeSelf) {
            return { _0 : _r, _1 : ((1 : GoInt)) };
        };
        var _lim:GoInt = _end - utfmax;
        if (_lim < ((0 : GoInt))) {
            _lim = ((0 : GoInt));
        };
        {
            _start--;
            Go.cfor(_start >= _lim, _start--, {
                if (runeStart(_s[_start])) {
                    break;
                };
            });
        };
        if (_start < ((0 : GoInt))) {
            _start = ((0 : GoInt));
        };
        {
            var __tmp__ = decodeRuneInString(_s.__slice__(_start, _end));
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if (_start + _size != _end) {
            return { _0 : runeError, _1 : ((1 : GoInt)) };
        };
        return { _0 : _r, _1 : _size };
    }
/**
    // RuneLen returns the number of bytes required to encode the rune.
    // It returns -1 if the rune is not a valid value to encode in UTF-8.
**/
function runeLen(_r:GoRune):GoInt {
        if (_r < ((0 : GoInt32))) {
            return -((1 : GoUnTypedInt));
        } else if (_r <= _rune1Max) {
            return ((1 : GoInt));
        } else if (_r <= _rune2Max) {
            return ((2 : GoInt));
        } else if (_surrogateMin <= _r && _r <= _surrogateMax) {
            return -((1 : GoUnTypedInt));
        } else if (_r <= _rune3Max) {
            return ((3 : GoInt));
        } else if (_r <= maxRune) {
            return ((4 : GoInt));
        };
        return -((1 : GoUnTypedInt));
    }
/**
    // EncodeRune writes into p (which must be large enough) the UTF-8 encoding of the rune.
    // If the rune is out of range, it writes the encoding of RuneError.
    // It returns the number of bytes written.
**/
function encodeRune(_p:Slice<GoByte>, _r:GoRune):GoInt {
        {
            var _i:GoUInt32 = ((_r : GoUInt32));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _i <= _rune1Max)) {
                        _p[((0 : GoInt))] = ((_r : GoByte));
                        return ((1 : GoInt));
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _i <= _rune2Max)) {
                        _p[((1 : GoInt))];
                        _p[((0 : GoInt))] = _t2 | (((_r >> ((6 : GoUnTypedInt))) : GoByte));
                        _p[((1 : GoInt))] = _tx | ((_r : GoByte)) & _maskx;
                        return ((2 : GoInt));
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _i > maxRune || _surrogateMin <= _i && _i <= _surrogateMax)) {
                        _r = runeError;
                        @:fallthrough {
                            __switchIndex__ = 3;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _i <= _rune3Max)) {
                        _p[((2 : GoInt))];
                        _p[((0 : GoInt))] = _t3 | (((_r >> ((12 : GoUnTypedInt))) : GoByte));
                        _p[((1 : GoInt))] = _tx | (((_r >> ((6 : GoUnTypedInt))) : GoByte)) & _maskx;
                        _p[((2 : GoInt))] = _tx | ((_r : GoByte)) & _maskx;
                        return ((3 : GoInt));
                        break;
                        break;
                    } else {
                        _p[((3 : GoInt))];
                        _p[((0 : GoInt))] = _t4 | (((_r >> ((18 : GoUnTypedInt))) : GoByte));
                        _p[((1 : GoInt))] = _tx | (((_r >> ((12 : GoUnTypedInt))) : GoByte)) & _maskx;
                        _p[((2 : GoInt))] = _tx | (((_r >> ((6 : GoUnTypedInt))) : GoByte)) & _maskx;
                        _p[((3 : GoInt))] = _tx | ((_r : GoByte)) & _maskx;
                        return ((4 : GoInt));
                        break;
                    };
                    break;
                };
                return ((0 : GoInt));
            };
        };
    }
/**
    // RuneCount returns the number of runes in p. Erroneous and short
    // encodings are treated as single runes of width 1 byte.
**/
function runeCount(_p:Slice<GoByte>):GoInt {
        var _np:GoInt = _p.length;
        var _n:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _np) {
                _n++;
                var _c:GoUInt8 = _p[_i];
                if (_c < runeSelf) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[_c];
                if (_x == _xx) {
                    _i++;
                    continue;
                };
                var _size:GoInt = (((_x & ((7 : GoUInt8))) : GoInt));
                if (_i + _size > _np) {
                    _i++;
                    continue;
                };
                var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
                {
                    var _c:GoUInt8 = _p[_i + ((1 : GoInt))];
                    if (_c < _accept._lo || _accept._hi < _c) {
                        _size = ((1 : GoInt));
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _p[_i + ((2 : GoInt))];
                        if (_c < _locb || _hicb < _c) {
                            _size = ((1 : GoInt));
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _p[_i + ((3 : GoInt))];
                            if (_c < _locb || _hicb < _c) {
                                _size = ((1 : GoInt));
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
        var _n:GoInt = ((0 : GoInt));
        var _ns:GoInt = _s.length;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _ns, _n++, {
                var _c:GoUInt8 = _s[_i];
                if (_c < runeSelf) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[_c];
                if (_x == _xx) {
                    _i++;
                    continue;
                };
                var _size:GoInt = (((_x & ((7 : GoUInt8))) : GoInt));
                if (_i + _size > _ns) {
                    _i++;
                    continue;
                };
                var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
                {
                    var _c:GoUInt8 = _s[_i + ((1 : GoInt))];
                    if (_c < _accept._lo || _accept._hi < _c) {
                        _size = ((1 : GoInt));
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _s[_i + ((2 : GoInt))];
                        if (_c < _locb || _hicb < _c) {
                            _size = ((1 : GoInt));
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _s[_i + ((3 : GoInt))];
                            if (_c < _locb || _hicb < _c) {
                                _size = ((1 : GoInt));
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
        return _b & ((192 : GoUInt8)) != ((128 : GoUInt8));
    }
/**
    // Valid reports whether p consists entirely of valid UTF-8-encoded runes.
**/
function valid(_p:Slice<GoByte>):Bool {
        while (_p.length >= ((8 : GoInt))) {
            var _first32:GoUInt32 = ((_p[((0 : GoInt))] : GoUInt32)) | (((_p[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_p[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_p[((3 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
            var _second32:GoUInt32 = ((_p[((4 : GoInt))] : GoUInt32)) | (((_p[((5 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_p[((6 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_p[((7 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
            if ((_first32 | _second32) & (("2155905152" : GoUInt32)) != ((0 : GoUInt32))) {
                break;
            };
            _p = _p.__slice__(((8 : GoInt)));
        };
        var _n:GoInt = _p.length;
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _n) {
                var _pi:GoUInt8 = _p[_i];
                if (_pi < runeSelf) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[_pi];
                if (_x == _xx) {
                    return false;
                };
                var _size:GoInt = (((_x & ((7 : GoUInt8))) : GoInt));
                if (_i + _size > _n) {
                    return false;
                };
                var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
                {
                    var _c:GoUInt8 = _p[_i + ((1 : GoInt))];
                    if (_c < _accept._lo || _accept._hi < _c) {
                        return false;
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _p[_i + ((2 : GoInt))];
                        if (_c < _locb || _hicb < _c) {
                            return false;
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _p[_i + ((3 : GoInt))];
                            if (_c < _locb || _hicb < _c) {
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
        while (_s.length >= ((8 : GoInt))) {
            var _first32:GoUInt32 = ((_s[((0 : GoInt))] : GoUInt32)) | (((_s[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_s[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_s[((3 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
            var _second32:GoUInt32 = ((_s[((4 : GoInt))] : GoUInt32)) | (((_s[((5 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_s[((6 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_s[((7 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
            if ((_first32 | _second32) & (("2155905152" : GoUInt32)) != ((0 : GoUInt32))) {
                break;
            };
            _s = _s.__slice__(((8 : GoInt)));
        };
        var _n:GoInt = _s.length;
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _n) {
                var _si:GoUInt8 = _s[_i];
                if (_si < runeSelf) {
                    _i++;
                    continue;
                };
                var _x:GoUInt8 = _first[_si];
                if (_x == _xx) {
                    return false;
                };
                var _size:GoInt = (((_x & ((7 : GoUInt8))) : GoInt));
                if (_i + _size > _n) {
                    return false;
                };
                var _accept:T_acceptRange = _acceptRanges[(_x >> ((4 : GoUnTypedInt)))].__copy__();
                {
                    var _c:GoUInt8 = _s[_i + ((1 : GoInt))];
                    if (_c < _accept._lo || _accept._hi < _c) {
                        return false;
                    } else if (_size == ((2 : GoInt))) {} else {
                        var _c:GoUInt8 = _s[_i + ((2 : GoInt))];
                        if (_c < _locb || _hicb < _c) {
                            return false;
                        } else if (_size == ((3 : GoInt))) {} else {
                            var _c:GoUInt8 = _s[_i + ((3 : GoInt))];
                            if (_c < _locb || _hicb < _c) {
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
        if (((0 : GoInt32)) <= _r && _r < _surrogateMin) {
            return true;
        } else if (_surrogateMax < _r && _r <= maxRune) {
            return true;
        };
        return false;
    }
