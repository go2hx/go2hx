package stdgo.math.big;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var __Accuracy_index : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(((0 : GoUInt8)), ((5 : GoUInt8)), ((10 : GoUInt8)), ((15 : GoUInt8))) : GoArray<GoUInt8>));
var _pow5tab : GoArray<GoUInt64> = ((new GoArray<GoUInt64>(
((1 : GoUInt64)),
((5 : GoUInt64)),
((25 : GoUInt64)),
((125 : GoUInt64)),
((625 : GoUInt64)),
((3125 : GoUInt64)),
((15625 : GoUInt64)),
((78125 : GoUInt64)),
((390625 : GoUInt64)),
((1953125 : GoUInt64)),
((9765625 : GoUInt64)),
((48828125 : GoUInt64)),
((244140625 : GoUInt64)),
((1220703125 : GoUInt64)),
(("6103515625" : GoUInt64)),
(("30517578125" : GoUInt64)),
(("152587890625" : GoUInt64)),
(("762939453125" : GoUInt64)),
(("3814697265625" : GoUInt64)),
(("19073486328125" : GoUInt64)),
(("95367431640625" : GoUInt64)),
(("476837158203125" : GoUInt64)),
(("2384185791015625" : GoUInt64)),
(("11920928955078125" : GoUInt64)),
(("59604644775390625" : GoUInt64)),
(("298023223876953125" : GoUInt64)),
(("1490116119384765625" : GoUInt64)),
(("7450580596923828125" : GoUInt64))) : GoArray<GoUInt64>));
var _ : stdgo.fmt.Fmt.Scanner = ((((null : Float_)) : Float_));
var _ : stdgo.fmt.Fmt.Formatter = _floatZero;
var _natOne : T_nat = ((new Slice<Word>(((1 : GoUInt))) : T_nat));
var _intOne : Int_ = ((new Int_(false, (_natOne == null ? null : _natOne.__copy__())) : Int_));
var _ : stdgo.fmt.Fmt.Formatter = _intOne;
var _ : stdgo.fmt.Fmt.Scanner = _intOne;
var _natTwo : T_nat = ((new Slice<Word>(((2 : GoUInt))) : T_nat));
var _natFive : T_nat = ((new Slice<Word>(((5 : GoUInt))) : T_nat));
var _natTen : T_nat = ((new Slice<Word>(((10 : GoUInt))) : T_nat));
var _karatsubaThreshold : GoInt64 = ((40 : GoInt));
var _basicSqrThreshold : GoInt64 = ((20 : GoInt));
var _karatsubaSqrThreshold : GoInt64 = ((260 : GoInt));
var _errNoDigits : stdgo.Error = stdgo.errors.Errors.new_(((("number has no digits" : GoString))));
var _errInvalSep : stdgo.Error = stdgo.errors.Errors.new_(((("\'_\' must separate successive digits" : GoString))));
var _leafSize : GoInt = ((8 : GoInt));
var _ : stdgo.fmt.Fmt.Scanner = _ratZero;
var __RoundingMode_index : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(((0 : GoUInt8)), ((13 : GoUInt8)), ((26 : GoUInt8)), ((32 : GoUInt8)), ((44 : GoUInt8)), ((57 : GoUInt8)), ((70 : GoUInt8))) : GoArray<GoUInt8>));
var _floatZero : Float_ = new Float_();
var _natPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _cacheBase10 : T__struct_0 = new T__struct_0();
var _ratZero : Rat = new Rat();
var _threeOnce : T__struct_1 = new T__struct_1();
@:named typedef Word = GoUInt;
@:structInit @:using(Big.T_decimal_static_extension) class T_decimal {
    public function _roundDown(_n:GoInt):Void {
        var _x = this;
        _x;
        if ((_n < ((0 : GoInt))) || (_n >= (_x._mant != null ? _x._mant.length : ((0 : GoInt))))) {
            return;
        };
        _x._mant = _x._mant.__slice__(0, _n);
        _trim(_x);
    }
    public function _roundUp(_n:GoInt):Void {
        var _x = this;
        _x;
        if ((_n < ((0 : GoInt))) || (_n >= (_x._mant != null ? _x._mant.length : ((0 : GoInt))))) {
            return;
        };
        while ((_n > ((0 : GoInt))) && ((_x._mant != null ? _x._mant[_n - ((1 : GoInt))] : ((0 : GoUInt8))) >= ((((("9" : GoString))).code : GoRune)))) {
            _n--;
        };
        if (_n == ((0 : GoInt))) {
            if (_x._mant != null) _x._mant[((0 : GoInt))] = ((((("1" : GoString))).code : GoRune));
            _x._mant = _x._mant.__slice__(0, ((1 : GoInt)));
            _x._exp++;
            return;
        };
        (_x._mant != null ? _x._mant[_n - ((1 : GoInt))] : ((0 : GoUInt8)))++;
        _x._mant = _x._mant.__slice__(0, _n);
    }
    public function _round(_n:GoInt):Void {
        var _x = this;
        _x;
        if ((_n < ((0 : GoInt))) || (_n >= (_x._mant != null ? _x._mant.length : ((0 : GoInt))))) {
            return;
        };
        if (_shouldRoundUp(_x, _n)) {
            _x._roundUp(_n);
        } else {
            _x._roundDown(_n);
        };
    }
    public function toString():GoString {
        var _x = this;
        _x;
        if ((_x._mant != null ? _x._mant.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((("0" : GoString)));
        };
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_x._exp <= ((0 : GoInt))) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((((2 : GoInt)) + (-_x._exp)) + (_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoInt)).toBasic());
            _buf = (_buf != null ? _buf.__append__(...((("0." : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("0." : GoString))).__toArray__()));
            _buf = _appendZeros(_buf, -_x._exp);
            _buf = (_buf != null ? _buf.__append__(..._x._mant.__toArray__()) : new Slice<GoUInt8>(..._x._mant.__toArray__()));
        } else if (_x._exp < (_x._mant != null ? _x._mant.length : ((0 : GoInt)))) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1 : GoInt)) + (_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoInt)).toBasic());
            _buf = (_buf != null ? _buf.__append__(..._x._mant.__slice__(0, _x._exp).__toArray__()) : new Slice<GoUInt8>(..._x._mant.__slice__(0, _x._exp).__toArray__()));
            _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
            _buf = (_buf != null ? _buf.__append__(..._x._mant.__slice__(_x._exp).__toArray__()) : new Slice<GoUInt8>(..._x._mant.__slice__(_x._exp).__toArray__()));
        } else {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((_x._exp : GoInt)).toBasic());
            _buf = (_buf != null ? _buf.__append__(..._x._mant.__toArray__()) : new Slice<GoUInt8>(..._x._mant.__toArray__()));
            _buf = _appendZeros(_buf, _x._exp - (_x._mant != null ? _x._mant.length : ((0 : GoInt))));
        };
        return ((_buf : GoString));
    }
    public function _init(_m:T_nat, _shift:GoInt):Void {
        var _x = this;
        _x;
        if ((_m != null ? _m.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _x._mant = _x._mant.__slice__(0, ((0 : GoInt)));
            _x._exp = ((0 : GoInt));
            return;
        };
        if (_shift < ((0 : GoInt))) {
            var _ntz:GoUInt = _m._trailingZeroBits();
            var _s:GoUInt = ((-_shift : GoUInt));
            if (_s >= _ntz) {
                _s = _ntz;
            };
            _m = (((new T_nat() : T_nat))._shr((_m == null ? null : _m.__copy__()), _s) == null ? null : ((new T_nat() : T_nat))._shr((_m == null ? null : _m.__copy__()), _s).__copy__());
            _shift = _shift + (((_s : GoInt)));
        };
        if (_shift > ((0 : GoInt))) {
            _m = (((new T_nat() : T_nat))._shl((_m == null ? null : _m.__copy__()), ((_shift : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shl((_m == null ? null : _m.__copy__()), ((_shift : GoUInt))).__copy__());
            _shift = ((0 : GoInt));
        };
        var _s:Slice<GoUInt8> = _m._utoa(((10 : GoInt)));
        var _n:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
        _x._exp = _n;
        while ((_n > ((0 : GoInt))) && ((_s != null ? _s[_n - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune)))) {
            _n--;
        };
        _x._mant = (_x._mant.__slice__(0, ((0 : GoInt))) != null ? _x._mant.__slice__(0, ((0 : GoInt))).__append__(..._s.__slice__(0, _n).__toArray__()) : new Slice<GoUInt8>(..._s.__slice__(0, _n).__toArray__()));
        if (_shift < ((0 : GoInt))) {
            while (_shift < ((-28 : GoInt))) {
                _shr(_x, ((28 : GoUInt)));
                _shift = _shift + (((28 : GoInt)));
            };
            _shr(_x, ((-_shift : GoUInt)));
        };
    }
    public function _at(_i:GoInt):GoByte {
        var _d = this;
        _d;
        if ((((0 : GoInt)) <= _i) && (_i < (_d._mant != null ? _d._mant.length : ((0 : GoInt))))) {
            return (_d._mant != null ? _d._mant[_i] : ((0 : GoUInt8)));
        };
        return ((((("0" : GoString))).code : GoRune));
    }
    public var _mant : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _exp : GoInt = ((0 : GoInt));
    public function new(?_mant:Slice<GoUInt8>, ?_exp:GoInt) {
        if (_mant != null) this._mant = _mant;
        if (_exp != null) this._exp = _exp;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decimal(_mant, _exp);
    }
}
@:structInit @:using(Big.Float__static_extension) class Float_ {
    public function _sqrtInverse(_x:Float_):Void {
        var _z = this;
        _z;
        var _u:Float_ = _newFloat(_z._prec);
        var _v:Float_ = _newFloat(_z._prec);
        var _three:Float_ = _three();
        var _ng:Float_ -> Float_ = function(_t:Float_):Float_ {
            _u._prec = _t._prec;
            _v._prec = _t._prec;
            _u.mul(_t, _t);
            _u.mul(_x, _u);
            _v.sub(_three, _u);
            _u.mul(_t, _v);
            _u._exp--;
            return _t.set(_u);
        };
        var __tmp__ = _x.float64(), _xf:GoFloat64 = __tmp__._0, _:Accuracy = __tmp__._1;
        var _sqi:Float_ = _newFloat(_z._prec);
        _sqi.setFloat64(((1 : GoFloat64)) / stdgo.math.Math.sqrt(_xf));
        {
            var _prec:GoUInt32 = _z._prec + ((32 : GoUInt32));
            while (_sqi._prec < _prec) {
                _sqi._prec = _sqi._prec * (((2 : GoUInt32)));
                _sqi = _ng(_sqi);
            };
        };
        _z.mul(_x, _sqi);
    }
    public function sqrt(_x:Float_):Float_ {
        var _z = this;
        _z;
        if (false) {
            _x._validate();
        };
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = _x._prec;
        };
        if (_x.sign() == ((-1 : GoInt))) {
            throw Go.toInterface(((new ErrNaN(((("square root of negative operand" : GoString)))) : ErrNaN)));
        };
        if (_x._form != ((1 : GoUInt8))) {
            _z._acc = ((0 : GoInt8));
            _z._form = _x._form;
            _z._neg = _x._neg;
            return _z;
        };
        var _prec:GoUInt32 = _z._prec;
        var _b:GoInt = _x.mantExp(_z);
        _z._prec = _prec;
        if (_b % ((2 : GoInt)) == ((0 : GoInt))) {} else if (_b % ((2 : GoInt)) == ((1 : GoInt))) {
            _z._exp++;
        } else if (_b % ((2 : GoInt)) == ((-1 : GoInt))) {
            _z._exp--;
        };
        _z._sqrtInverse(_z);
        return _z.setMantExp(_z, _b / ((2 : GoInt)));
    }
    public function format(_s:stdgo.fmt.Fmt.State, _format:GoRune):Void {
        var _x = this;
        _x;
        var __tmp__ = _s.precision(), _prec:GoInt = __tmp__._0, _hasPrec:Bool = __tmp__._1;
        if (!_hasPrec) {
            _prec = ((6 : GoInt));
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _format == ((((("e" : GoString))).code : GoRune)) || _format == ((((("E" : GoString))).code : GoRune)) || _format == ((((("f" : GoString))).code : GoRune)) || _format == ((((("b" : GoString))).code : GoRune)) || _format == ((((("p" : GoString))).code : GoRune)) || _format == ((((("x" : GoString))).code : GoRune)))) {
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _format == ((((("F" : GoString))).code : GoRune)))) {
                    _format = ((((("f" : GoString))).code : GoRune));
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _format == ((((("v" : GoString))).code : GoRune)))) {
                    _format = ((((("g" : GoString))).code : GoRune));
                    @:fallthrough {
                        __switchIndex__ = 3;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _format == ((((("g" : GoString))).code : GoRune)) || _format == ((((("G" : GoString))).code : GoRune)))) {
                    if (!_hasPrec) {
                        _prec = ((-1 : GoInt));
                    };
                    break;
                    break;
                } else {
                    stdgo.fmt.Fmt.fprintf(_s, ((("%%!%c(*big.Float=%s)" : GoString))), Go.toInterface(_format), Go.toInterface(((_x.toString() : GoString))));
                    return;
                    break;
                };
                break;
            };
        };
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        _buf = _x.append(_buf, ((_format : GoByte)), _prec);
        if ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _buf = ((((("?" : GoString))) : Slice<GoByte>));
        };
        var _sign:GoString = (("" : GoString));
        if ((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))) {
            _sign = ((("-" : GoString)));
            _buf = _buf.__slice__(((1 : GoInt)));
        } else if ((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) {
            _sign = ((("+" : GoString)));
            if (_s.flag((((((" " : GoString))).code : GoRune)))) {
                _sign = (((" " : GoString)));
            };
            _buf = _buf.__slice__(((1 : GoInt)));
        } else if (_s.flag(((((("+" : GoString))).code : GoRune)))) {
            _sign = ((("+" : GoString)));
        } else if (_s.flag((((((" " : GoString))).code : GoRune)))) {
            _sign = (((" " : GoString)));
        };
        var _padding:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _s.width(), _width:GoInt = __tmp__._0, _hasWidth:Bool = __tmp__._1;
            if (_hasWidth && (_width > ((_sign != null ? _sign.length : ((0 : GoInt))) + (_buf != null ? _buf.length : ((0 : GoInt)))))) {
                _padding = (_width - (_sign != null ? _sign.length : ((0 : GoInt)))) - (_buf != null ? _buf.length : ((0 : GoInt)));
            };
        };
        if (_s.flag(((((("0" : GoString))).code : GoRune))) && !_x.isInf()) {
            _writeMultiple(_s, _sign, ((1 : GoInt)));
            _writeMultiple(_s, ((("0" : GoString))), _padding);
            _s.write(_buf);
        } else if (_s.flag(((((("-" : GoString))).code : GoRune)))) {
            _writeMultiple(_s, _sign, ((1 : GoInt)));
            _s.write(_buf);
            _writeMultiple(_s, (((" " : GoString))), _padding);
        } else {
            _writeMultiple(_s, (((" " : GoString))), _padding);
            _writeMultiple(_s, _sign, ((1 : GoInt)));
            _s.write(_buf);
        };
    }
    public function _fmtP(_buf:Slice<GoByte>):Slice<GoByte> {
        var _x = this;
        _x;
        if (_x._form == ((0 : GoUInt8))) {
            return (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
        };
        if (false && (_x._form != ((1 : GoUInt8)))) {
            throw Go.toInterface(((("non-finite float" : GoString))));
        };
        var _m:T_nat = (_x._mant == null ? null : _x._mant.__copy__());
        var _i:GoInt = ((0 : GoInt));
        while ((_i < (_m != null ? _m.length : ((0 : GoInt)))) && ((_m != null ? _m[_i] : new Word()) == ((0 : GoUInt)))) {
            _i++;
        };
        _m = (_m.__slice__(_i) == null ? null : _m.__slice__(_i).__copy__());
        _buf = (_buf != null ? _buf.__append__(...((("0x." : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("0x." : GoString))).__toArray__()));
        _buf = (_buf != null ? _buf.__append__(...stdgo.bytes.Bytes.trimRight(_m._utoa(((16 : GoInt))), ((("0" : GoString)))).__toArray__()) : new Slice<GoUInt8>(...stdgo.bytes.Bytes.trimRight(_m._utoa(((16 : GoInt))), ((("0" : GoString)))).__toArray__()));
        _buf = (_buf != null ? _buf.__append__(((((("p" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("p" : GoString))).code : GoRune))));
        if (_x._exp >= ((0 : GoInt32))) {
            _buf = (_buf != null ? _buf.__append__(((((("+" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("+" : GoString))).code : GoRune))));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, ((_x._exp : GoInt64)), ((10 : GoInt)));
    }
    public function _fmtX(_buf:Slice<GoByte>, _prec:GoInt):Slice<GoByte> {
        var _x = this;
        _x;
        if (_x._form == ((0 : GoUInt8))) {
            _buf = (_buf != null ? _buf.__append__(...((("0x0" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("0x0" : GoString))).__toArray__()));
            if (_prec > ((0 : GoInt))) {
                _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _prec, _i++, {
                        _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
                    });
                };
            };
            _buf = (_buf != null ? _buf.__append__(...((("p+00" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("p+00" : GoString))).__toArray__()));
            return _buf;
        };
        if (false && (_x._form != ((1 : GoUInt8)))) {
            throw Go.toInterface(((("non-finite float" : GoString))));
        };
        var _n:GoUInt = ((0 : GoUInt));
        if (_prec < ((0 : GoInt))) {
            _n = ((1 : GoUInt)) + ((((_x.minPrec() - ((1 : GoUInt))) + ((3 : GoUInt))) / ((4 : GoUInt))) * ((4 : GoUInt)));
        } else {
            _n = ((1 : GoUInt)) + (((4 : GoUInt)) * ((_prec : GoUInt)));
        };
        _x = Go.pointer(new Float_()).setPrec(_n).setMode(_x._mode).set(_x);
        var _m:T_nat = (_x._mant == null ? null : _x._mant.__copy__());
        {
            var _w:GoUInt = (((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoUInt)) * ((32 : GoUInt));
            if (_w < _n) {
                _m = (((new T_nat() : T_nat))._shl((_m == null ? null : _m.__copy__()), _n - _w) == null ? null : ((new T_nat() : T_nat))._shl((_m == null ? null : _m.__copy__()), _n - _w).__copy__());
            } else if (_w > _n) {
                _m = (((new T_nat() : T_nat))._shr((_m == null ? null : _m.__copy__()), _w - _n) == null ? null : ((new T_nat() : T_nat))._shr((_m == null ? null : _m.__copy__()), _w - _n).__copy__());
            };
        };
        var _exp64:GoInt64 = ((_x._exp : GoInt64)) - ((1 : GoInt64));
        var _hm:Slice<GoUInt8> = _m._utoa(((16 : GoInt)));
        if (false && ((_hm != null ? _hm[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("1" : GoString))).code : GoRune)))) {
            throw Go.toInterface(((("incorrect mantissa: " : GoString))) + ((_hm : GoString)));
        };
        _buf = (_buf != null ? _buf.__append__(...((("0x1" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("0x1" : GoString))).__toArray__()));
        if ((_hm != null ? _hm.length : ((0 : GoInt))) > ((1 : GoInt))) {
            _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
            _buf = (_buf != null ? _buf.__append__(..._hm.__slice__(((1 : GoInt))).__toArray__()) : new Slice<GoUInt8>(..._hm.__slice__(((1 : GoInt))).__toArray__()));
        };
        _buf = (_buf != null ? _buf.__append__(((((("p" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("p" : GoString))).code : GoRune))));
        if (_exp64 >= ((0 : GoInt64))) {
            _buf = (_buf != null ? _buf.__append__(((((("+" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("+" : GoString))).code : GoRune))));
        } else {
            _exp64 = -_exp64;
            _buf = (_buf != null ? _buf.__append__(((((("-" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("-" : GoString))).code : GoRune))));
        };
        if (_exp64 < ((10 : GoInt64))) {
            _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, _exp64, ((10 : GoInt)));
    }
    public function _fmtB(_buf:Slice<GoByte>):Slice<GoByte> {
        var _x = this;
        _x;
        if (_x._form == ((0 : GoUInt8))) {
            return (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
        };
        if (false && (_x._form != ((1 : GoUInt8)))) {
            throw Go.toInterface(((("non-finite float" : GoString))));
        };
        var _m:T_nat = (_x._mant == null ? null : _x._mant.__copy__());
        {
            var _w:GoUInt32 = (((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoUInt32)) * ((32 : GoUInt32));
            if (_w < _x._prec) {
                _m = (((new T_nat() : T_nat))._shl((_m == null ? null : _m.__copy__()), (((_x._prec - _w) : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shl((_m == null ? null : _m.__copy__()), (((_x._prec - _w) : GoUInt))).__copy__());
            } else if (_w > _x._prec) {
                _m = (((new T_nat() : T_nat))._shr((_m == null ? null : _m.__copy__()), (((_w - _x._prec) : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shr((_m == null ? null : _m.__copy__()), (((_w - _x._prec) : GoUInt))).__copy__());
            };
        };
        _buf = (_buf != null ? _buf.__append__(..._m._utoa(((10 : GoInt))).__toArray__()) : new Slice<GoUInt8>(..._m._utoa(((10 : GoInt))).__toArray__()));
        _buf = (_buf != null ? _buf.__append__(((((("p" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("p" : GoString))).code : GoRune))));
        var _e:GoInt64 = ((_x._exp : GoInt64)) - ((_x._prec : GoInt64));
        if (_e >= ((0 : GoInt64))) {
            _buf = (_buf != null ? _buf.__append__(((((("+" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("+" : GoString))).code : GoRune))));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, _e, ((10 : GoInt)));
    }
    public function append(_buf:Slice<GoByte>, _fmt:GoByte, _prec:GoInt):Slice<GoByte> {
        var _x = this;
        _x;
        if (_x._neg) {
            _buf = (_buf != null ? _buf.__append__(((((("-" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("-" : GoString))).code : GoRune))));
        };
        if (_x._form == ((2 : GoUInt8))) {
            if (!_x._neg) {
                _buf = (_buf != null ? _buf.__append__(((((("+" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("+" : GoString))).code : GoRune))));
            };
            return (_buf != null ? _buf.__append__(...((("Inf" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("Inf" : GoString))).__toArray__()));
        };
        if (_fmt == ((((("b" : GoString))).code : GoRune))) {
            return _x._fmtB(_buf);
        } else if (_fmt == ((((("p" : GoString))).code : GoRune))) {
            return _x._fmtP(_buf);
        } else if (_fmt == ((((("x" : GoString))).code : GoRune))) {
            return _x._fmtX(_buf, _prec);
        };
        var _d:T_decimal = new T_decimal();
        if (_x._form == ((1 : GoUInt8))) {
            _d._init((_x._mant == null ? null : _x._mant.__copy__()), ((_x._exp : GoInt)) - _x._mant._bitLen());
        };
        var _shortest:Bool = false;
        if (_prec < ((0 : GoInt))) {
            _shortest = true;
            _roundShortest(_d, _x);
            if (_fmt == ((((("e" : GoString))).code : GoRune)) || _fmt == ((((("E" : GoString))).code : GoRune))) {
                _prec = (_d._mant != null ? _d._mant.length : ((0 : GoInt))) - ((1 : GoInt));
            } else if (_fmt == ((((("f" : GoString))).code : GoRune))) {
                _prec = _max((_d._mant != null ? _d._mant.length : ((0 : GoInt))) - _d._exp, ((0 : GoInt)));
            } else if (_fmt == ((((("g" : GoString))).code : GoRune)) || _fmt == ((((("G" : GoString))).code : GoRune))) {
                _prec = (_d._mant != null ? _d._mant.length : ((0 : GoInt)));
            };
        } else {
            if (_fmt == ((((("e" : GoString))).code : GoRune)) || _fmt == ((((("E" : GoString))).code : GoRune))) {
                _d._round(((1 : GoInt)) + _prec);
            } else if (_fmt == ((((("f" : GoString))).code : GoRune))) {
                _d._round(_d._exp + _prec);
            } else if (_fmt == ((((("g" : GoString))).code : GoRune)) || _fmt == ((((("G" : GoString))).code : GoRune))) {
                if (_prec == ((0 : GoInt))) {
                    _prec = ((1 : GoInt));
                };
                _d._round(_prec);
            };
        };
        if (_fmt == ((((("e" : GoString))).code : GoRune)) || _fmt == ((((("E" : GoString))).code : GoRune))) {
            return _fmtE(_buf, _fmt, _prec, (_d == null ? null : _d.__copy__()));
        } else if (_fmt == ((((("f" : GoString))).code : GoRune))) {
            return _fmtF(_buf, _prec, (_d == null ? null : _d.__copy__()));
        } else if (_fmt == ((((("g" : GoString))).code : GoRune)) || _fmt == ((((("G" : GoString))).code : GoRune))) {
            var _eprec:GoInt = _prec;
            if ((_eprec > (_d._mant != null ? _d._mant.length : ((0 : GoInt)))) && ((_d._mant != null ? _d._mant.length : ((0 : GoInt))) >= _d._exp)) {
                _eprec = (_d._mant != null ? _d._mant.length : ((0 : GoInt)));
            };
            if (_shortest) {
                _eprec = ((6 : GoInt));
            };
            var _exp:GoInt = _d._exp - ((1 : GoInt));
            if ((_exp < ((-4 : GoInt))) || (_exp >= _eprec)) {
                if (_prec > (_d._mant != null ? _d._mant.length : ((0 : GoInt)))) {
                    _prec = (_d._mant != null ? _d._mant.length : ((0 : GoInt)));
                };
                return _fmtE(_buf, (_fmt + ((((("e" : GoString))).code : GoRune))) - ((((("g" : GoString))).code : GoRune)), _prec - ((1 : GoInt)), (_d == null ? null : _d.__copy__()));
            };
            if (_prec > _d._exp) {
                _prec = (_d._mant != null ? _d._mant.length : ((0 : GoInt)));
            };
            return _fmtF(_buf, _max(_prec - _d._exp, ((0 : GoInt))), (_d == null ? null : _d.__copy__()));
        };
        if (_x._neg) {
            _buf = _buf.__slice__(0, (_buf != null ? _buf.length : ((0 : GoInt))) - ((1 : GoInt)));
        };
        return (_buf != null ? _buf.__append__(((((("%" : GoString))).code : GoRune)), _fmt) : new Slice<GoUInt8>(((((("%" : GoString))).code : GoRune)), _fmt));
    }
    public function toString():GoString {
        var _x = this;
        _x;
        return _x.text(((((("g" : GoString))).code : GoRune)), ((10 : GoInt)));
    }
    public function text(_format:GoByte, _prec:GoInt):GoString {
        var _x = this;
        _x;
        var _cap:GoInt = ((10 : GoInt));
        if (_prec > ((0 : GoInt))) {
            _cap = _cap + (_prec);
        };
        return ((_x.append(new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((_cap : GoInt)).toBasic()), _format, _prec) : GoString));
    }
    public function unmarshalText(_text:Slice<GoByte>):Error {
        var _z = this;
        _z;
        var __tmp__ = _z.parse(((_text : GoString)), ((0 : GoInt))), _:Float_ = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _err = stdgo.fmt.Fmt.errorf(((("math/big: cannot unmarshal %q into a *big.Float (%v)" : GoString))), Go.toInterface(_text), Go.toInterface(_err));
        };
        return _err;
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = this;
        _x;
        var _text:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        if (_x == null) {
            return { _0 : ((((("<nil>" : GoString))) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        return { _0 : _x.append(_buf, ((((("g" : GoString))).code : GoRune)), ((-1 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_buf:Slice<GoByte>):Error {
        var _z = this;
        _z;
        if ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            {
                var __tmp__ = ((new Float_() : Float_));
                _z._prec = __tmp__._prec;
                _z._mode = __tmp__._mode;
                _z._acc = __tmp__._acc;
                _z._form = __tmp__._form;
                _z._neg = __tmp__._neg;
                _z._mant = __tmp__._mant;
                _z._exp = __tmp__._exp;
            };
            return ((null : stdgo.Error));
        };
        if ((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8))) != ((1 : GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(((("Float.GobDecode: encoding version %d not supported" : GoString))), Go.toInterface((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8)))));
        };
        var _oldPrec:GoUInt32 = _z._prec;
        var _oldMode:RoundingMode = _z._mode;
        var _b:GoUInt8 = (_buf != null ? _buf[((1 : GoInt))] : ((0 : GoUInt8)));
        _z._mode = ((((_b >> ((5 : GoUnTypedInt))) & ((7 : GoUInt8))) : RoundingMode));
        _z._acc = ((((_b >> ((3 : GoUnTypedInt))) & ((3 : GoUInt8))) : Accuracy)) - ((1 : GoInt8));
        _z._form = ((((_b >> ((1 : GoUnTypedInt))) & ((3 : GoUInt8))) : T_form));
        _z._neg = (_b & ((1 : GoUInt8))) != ((0 : GoUInt8));
        _z._prec = stdgo.encoding.binary.Binary.bigEndian.uint32(_buf.__slice__(((2 : GoInt))));
        if (_z._form == ((1 : GoUInt8))) {
            _z._exp = ((stdgo.encoding.binary.Binary.bigEndian.uint32(_buf.__slice__(((6 : GoInt)))) : GoInt32));
            _z._mant = (_z._mant._setBytes(_buf.__slice__(((10 : GoInt)))) == null ? null : _z._mant._setBytes(_buf.__slice__(((10 : GoInt)))).__copy__());
        };
        if (_oldPrec != ((0 : GoUInt32))) {
            _z._mode = _oldMode;
            _z.setPrec(((_oldPrec : GoUInt)));
        };
        return ((null : stdgo.Error));
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = this;
        _x;
        if (_x == null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
        };
        var _sz:GoInt = ((6 : GoInt));
        var _n:GoInt = ((0 : GoInt));
        if (_x._form == ((1 : GoUInt8))) {
            _n = ((((_x._prec + ((31 : GoUInt32))) / ((32 : GoUInt32))) : GoInt));
            if ((_x._mant != null ? _x._mant.length : ((0 : GoInt))) < _n) {
                _n = (_x._mant != null ? _x._mant.length : ((0 : GoInt)));
            };
            _sz = _sz + (((4 : GoInt)) + (_n * ((4 : GoInt))));
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_sz : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_buf != null) _buf[((0 : GoInt))] = ((1 : GoUInt8));
        var _b:GoUInt8 = (((((_x._mode & ((7 : GoUInt8))) : GoByte)) << ((5 : GoUnTypedInt))) | (((((_x._acc + ((1 : GoInt8))) & ((3 : GoInt8))) : GoByte)) << ((3 : GoUnTypedInt)))) | ((((_x._form & ((3 : GoUInt8))) : GoByte)) << ((1 : GoUnTypedInt)));
        if (_x._neg) {
            _b = _b | (((1 : GoUInt8)));
        };
        if (_buf != null) _buf[((1 : GoInt))] = _b;
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_buf.__slice__(((2 : GoInt))), _x._prec);
        if (_x._form == ((1 : GoUInt8))) {
            stdgo.encoding.binary.Binary.bigEndian.putUint32(_buf.__slice__(((6 : GoInt))), ((_x._exp : GoUInt32)));
            _x._mant.__slice__((_x._mant != null ? _x._mant.length : ((0 : GoInt))) - _n)._bytes(_buf.__slice__(((10 : GoInt))));
        };
        return { _0 : _buf, _1 : ((null : stdgo.Error)) };
    }
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error {
        var _z = this;
        _z;
        _s.skipSpace();
        var __tmp__ = _z._scan(((new T_byteReader(_s) : T_byteReader)), ((0 : GoInt))), _:Float_ = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    public function parse(_s:GoString, _base:GoInt):{ var _0 : Float_; var _1 : GoInt; var _2 : Error; } {
        var _z = this;
        _z;
        var _f:Float_ = ((null : Float_)), _b:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((3 : GoInt))) && ((_s == ((("Inf" : GoString)))) || (_s == ((("inf" : GoString)))))) {
            _f = _z.setInf(false);
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if ((((_s != null ? _s.length : ((0 : GoInt))) == ((4 : GoInt))) && (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))))) && ((_s.__slice__(((1 : GoInt))) == ((("Inf" : GoString)))) || (_s.__slice__(((1 : GoInt))) == ((("inf" : GoString)))))) {
            _f = _z.setInf((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _r:stdgo.strings.Strings.Reader = stdgo.strings.Strings.newReader(_s);
        {
            {
                var __tmp__ = _z._scan(_r, _base);
                _f = __tmp__._0;
                _b = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _f, _1 : _b, _2 : _err };
            };
        };
        {
            var __tmp__ = _r.readByte(), _ch:GoUInt8 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 == null) {
                _err = stdgo.fmt.Fmt.errorf(((("expected end of string, found %q" : GoString))), Go.toInterface(_ch));
            } else if (_err2 != stdgo.io.Io.eof) {
                _err = _err2;
            };
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    public function _pow5(_n:GoUInt64):Float_ {
        var _z = this;
        _z;
        {};
        if (_n <= ((27 : GoUInt64))) {
            return _z.setUint64((_pow5tab != null ? _pow5tab[_n] : ((0 : GoUInt64))));
        };
        _z.setUint64((_pow5tab != null ? _pow5tab[((27 : GoUInt64))] : ((0 : GoUInt64))));
        _n = _n - (((27 : GoUInt64)));
        var _f:Float_ = Go.pointer(new Float_()).setPrec(_z.prec() + ((64 : GoUInt))).setUint64(((5 : GoUInt64)));
        while (_n > ((0 : GoUInt64))) {
            if ((_n & ((1 : GoUInt64))) != ((0 : GoUInt64))) {
                _z.mul(_z, _f);
            };
            _f.mul(_f, _f);
            _n = _n >> (((1 : GoUnTypedInt)));
        };
        return _z;
    }
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Float_; var _1 : GoInt; var _2 : Error; } {
        var _z = this;
        _z;
        var _f:Float_ = ((null : Float_)), _b:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _prec:GoUInt32 = _z._prec;
        if (_prec == ((0 : GoUInt32))) {
            _prec = ((64 : GoUInt32));
        };
        _z._form = ((0 : GoUInt8));
        {
            var __tmp__ = _scanSign(_r);
            _z._neg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _fcount:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _z._mant._scan(_r, _base, true);
            _z._mant = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _b = __tmp__._1;
            _fcount = __tmp__._2;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp:GoInt64 = ((0 : GoInt64));
        var _ebase:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _scanExponent(_r, true, _base == ((0 : GoInt)));
            _exp = __tmp__._0;
            _ebase = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if ((_z._mant != null ? _z._mant.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _z._prec = _prec;
            _z._acc = ((0 : GoInt8));
            _z._form = ((0 : GoUInt8));
            _f = _z;
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp2:GoInt64 = ((((_z._mant != null ? _z._mant.length : ((0 : GoInt))) : GoInt64)) * ((32 : GoInt64))) - _fnorm((_z._mant == null ? null : _z._mant.__copy__()));
        var _exp5:GoInt64 = ((((0 : GoInt64)) : GoInt64));
        if (_fcount < ((0 : GoInt))) {
            var _d:GoInt64 = ((_fcount : GoInt64));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _b == ((10 : GoInt)))) {
                        _exp5 = _d;
                        @:fallthrough {
                            __switchIndex__ = 1;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _b == ((2 : GoInt)))) {
                        _exp2 = _exp2 + (_d);
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _b == ((8 : GoInt)))) {
                        _exp2 = _exp2 + (_d * ((3 : GoInt64)));
                        break;
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _b == ((16 : GoInt)))) {
                        _exp2 = _exp2 + (_d * ((4 : GoInt64)));
                        break;
                        break;
                    } else {
                        throw Go.toInterface(((("unexpected mantissa base" : GoString))));
                        break;
                    };
                    break;
                };
            };
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _ebase == ((10 : GoInt)))) {
                    _exp5 = _exp5 + (_exp);
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _ebase == ((2 : GoInt)))) {
                    _exp2 = _exp2 + (_exp);
                    break;
                    break;
                } else {
                    throw Go.toInterface(((("unexpected exponent base" : GoString))));
                    break;
                };
                break;
            };
        };
        if ((((-2147483648 : GoInt64)) <= _exp2) && (_exp2 <= ((2147483647 : GoInt64)))) {
            _z._prec = _prec;
            _z._form = ((1 : GoUInt8));
            _z._exp = ((_exp2 : GoInt32));
            _f = _z;
        } else {
            _err = stdgo.fmt.Fmt.errorf(((("exponent overflow" : GoString))));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if (_exp5 == ((0 : GoInt64))) {
            _z._round(((0 : GoUInt)));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _p:Float_ = Go.pointer(new Float_()).setPrec(_z.prec() + ((64 : GoUInt)));
        if (_exp5 < ((0 : GoInt64))) {
            _z.quo(_z, _p._pow5(((-_exp5 : GoUInt64))));
        } else {
            _z.mul(_z, _p._pow5(((_exp5 : GoUInt64))));
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    public function setString(_s:GoString):{ var _0 : Float_; var _1 : Bool; } {
        var _z = this;
        _z;
        {
            var __tmp__ = _z.parse(_s, ((0 : GoInt))), _f:Float_ = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                return { _0 : _f, _1 : true };
            };
        };
        return { _0 : null, _1 : false };
    }
    public function _ord():GoInt {
        var _x = this;
        _x;
        var _m:GoInt = ((0 : GoInt));
        if (_x._form == ((1 : GoUInt8))) {
            _m = ((1 : GoInt));
        } else if (_x._form == ((0 : GoUInt8))) {
            return ((0 : GoInt));
        } else if (_x._form == ((2 : GoUInt8))) {
            _m = ((2 : GoInt));
        };
        if (_x._neg) {
            _m = -_m;
        };
        return _m;
    }
    public function cmp(_y:Float_):GoInt {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
            _y._validate();
        };
        var _mx:GoInt = _x._ord();
        var _my:GoInt = _y._ord();
        if (_mx < _my) {
            return ((-1 : GoInt));
        } else if (_mx > _my) {
            return ((1 : GoInt));
        };
        if (_mx == ((-1 : GoInt))) {
            return _y._ucmp(_x);
        } else if (_mx == ((1 : GoInt))) {
            return _x._ucmp(_y);
        };
        return ((0 : GoInt));
    }
    public function quo(_x:Float_, _y:Float_):Float_ {
        var _z = this;
        _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = _umax32(_x._prec, _y._prec);
        };
        _z._neg = _x._neg != _y._neg;
        if ((_x._form == ((1 : GoUInt8))) && (_y._form == ((1 : GoUInt8)))) {
            _z._uquo(_x, _y);
            return _z;
        };
        _z._acc = ((0 : GoInt8));
        if (((_x._form == ((0 : GoUInt8))) && (_y._form == ((0 : GoUInt8)))) || ((_x._form == ((2 : GoUInt8))) && (_y._form == ((2 : GoUInt8))))) {
            _z._form = ((0 : GoUInt8));
            _z._neg = false;
            throw Go.toInterface(((new ErrNaN(((("division of zero by zero or infinity by infinity" : GoString)))) : ErrNaN)));
        };
        if ((_x._form == ((0 : GoUInt8))) || (_y._form == ((2 : GoUInt8)))) {
            _z._form = ((0 : GoUInt8));
            return _z;
        };
        _z._form = ((2 : GoUInt8));
        return _z;
    }
    public function mul(_x:Float_, _y:Float_):Float_ {
        var _z = this;
        _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = _umax32(_x._prec, _y._prec);
        };
        _z._neg = _x._neg != _y._neg;
        if ((_x._form == ((1 : GoUInt8))) && (_y._form == ((1 : GoUInt8)))) {
            _z._umul(_x, _y);
            return _z;
        };
        _z._acc = ((0 : GoInt8));
        if (((_x._form == ((0 : GoUInt8))) && (_y._form == ((2 : GoUInt8)))) || ((_x._form == ((2 : GoUInt8))) && (_y._form == ((0 : GoUInt8))))) {
            _z._form = ((0 : GoUInt8));
            _z._neg = false;
            throw Go.toInterface(((new ErrNaN(((("multiplication of zero with infinity" : GoString)))) : ErrNaN)));
        };
        if ((_x._form == ((2 : GoUInt8))) || (_y._form == ((2 : GoUInt8)))) {
            _z._form = ((2 : GoUInt8));
            return _z;
        };
        _z._form = ((0 : GoUInt8));
        return _z;
    }
    public function sub(_x:Float_, _y:Float_):Float_ {
        var _z = this;
        _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = _umax32(_x._prec, _y._prec);
        };
        if ((_x._form == ((1 : GoUInt8))) && (_y._form == ((1 : GoUInt8)))) {
            var _yneg:Bool = _y._neg;
            _z._neg = _x._neg;
            if (_x._neg != _yneg) {
                _z._uadd(_x, _y);
            } else {
                if (_x._ucmp(_y) > ((0 : GoInt))) {
                    _z._usub(_x, _y);
                } else {
                    _z._neg = !_z._neg;
                    _z._usub(_y, _x);
                };
            };
            if (((_z._form == ((0 : GoUInt8))) && (_z._mode == ((4 : GoUInt8)))) && (_z._acc == ((0 : GoInt8)))) {
                _z._neg = true;
            };
            return _z;
        };
        if (((_x._form == ((2 : GoUInt8))) && (_y._form == ((2 : GoUInt8)))) && (_x._neg == _y._neg)) {
            _z._acc = ((0 : GoInt8));
            _z._form = ((0 : GoUInt8));
            _z._neg = false;
            throw Go.toInterface(((new ErrNaN(((("subtraction of infinities with equal signs" : GoString)))) : ErrNaN)));
        };
        if ((_x._form == ((0 : GoUInt8))) && (_y._form == ((0 : GoUInt8)))) {
            _z._acc = ((0 : GoInt8));
            _z._form = ((0 : GoUInt8));
            _z._neg = _x._neg && !_y._neg;
            return _z;
        };
        if ((_x._form == ((2 : GoUInt8))) || (_y._form == ((0 : GoUInt8)))) {
            return _z.set(_x);
        };
        return _z.neg(_y);
    }
    public function add(_x:Float_, _y:Float_):Float_ {
        var _z = this;
        _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = _umax32(_x._prec, _y._prec);
        };
        if ((_x._form == ((1 : GoUInt8))) && (_y._form == ((1 : GoUInt8)))) {
            var _yneg:Bool = _y._neg;
            _z._neg = _x._neg;
            if (_x._neg == _yneg) {
                _z._uadd(_x, _y);
            } else {
                if (_x._ucmp(_y) > ((0 : GoInt))) {
                    _z._usub(_x, _y);
                } else {
                    _z._neg = !_z._neg;
                    _z._usub(_y, _x);
                };
            };
            if (((_z._form == ((0 : GoUInt8))) && (_z._mode == ((4 : GoUInt8)))) && (_z._acc == ((0 : GoInt8)))) {
                _z._neg = true;
            };
            return _z;
        };
        if (((_x._form == ((2 : GoUInt8))) && (_y._form == ((2 : GoUInt8)))) && (_x._neg != _y._neg)) {
            _z._acc = ((0 : GoInt8));
            _z._form = ((0 : GoUInt8));
            _z._neg = false;
            throw Go.toInterface(((new ErrNaN(((("addition of infinities with opposite signs" : GoString)))) : ErrNaN)));
        };
        if ((_x._form == ((0 : GoUInt8))) && (_y._form == ((0 : GoUInt8)))) {
            _z._acc = ((0 : GoInt8));
            _z._form = ((0 : GoUInt8));
            _z._neg = _x._neg && _y._neg;
            return _z;
        };
        if ((_x._form == ((2 : GoUInt8))) || (_y._form == ((0 : GoUInt8)))) {
            return _z.set(_x);
        };
        return _z.set(_y);
    }
    public function _ucmp(_y:Float_):GoInt {
        var _x = this;
        _x;
        if (false) {
            _validateBinaryOperands(_x, _y);
        };
        if (_x._exp < _y._exp) {
            return ((-1 : GoInt));
        } else if (_x._exp > _y._exp) {
            return ((1 : GoInt));
        };
        var _i:GoInt = (_x._mant != null ? _x._mant.length : ((0 : GoInt)));
        var _j:GoInt = (_y._mant != null ? _y._mant.length : ((0 : GoInt)));
        while ((_i > ((0 : GoInt))) || (_j > ((0 : GoInt)))) {
            var _xm:Word = new Word(), _ym:Word = new Word();
            if (_i > ((0 : GoInt))) {
                _i--;
                _xm = (_x._mant != null ? _x._mant[_i] : new Word());
            };
            if (_j > ((0 : GoInt))) {
                _j--;
                _ym = (_y._mant != null ? _y._mant[_j] : new Word());
            };
            if (_xm < _ym) {
                return ((-1 : GoInt));
            } else if (_xm > _ym) {
                return ((1 : GoInt));
            };
        };
        return ((0 : GoInt));
    }
    public function _uquo(_x:Float_, _y:Float_):Void {
        var _z = this;
        _z;
        if (false) {
            _validateBinaryOperands(_x, _y);
        };
        var _n:GoInt = (((_z._prec / ((32 : GoUInt32))) : GoInt)) + ((1 : GoInt));
        var _xadj:T_nat = (_x._mant == null ? null : _x._mant.__copy__());
        {
            var _d:GoInt = (_n - (_x._mant != null ? _x._mant.length : ((0 : GoInt)))) + (_y._mant != null ? _y._mant.length : ((0 : GoInt)));
            if (_d > ((0 : GoInt))) {
                _xadj = new Slice<Word>(...[for (i in 0 ... (((_x._mant != null ? _x._mant.length : ((0 : GoInt))) + _d : GoInt)).toBasic()) new Word()]);
                Go.copy(_xadj.__slice__(_d), _x._mant);
            };
        };
        var _d:GoInt = (_xadj != null ? _xadj.length : ((0 : GoInt))) - (_y._mant != null ? _y._mant.length : ((0 : GoInt)));
        var _r:T_nat = new T_nat();
        {
            var __tmp__ = _z._mant._div(null, (_xadj == null ? null : _xadj.__copy__()), (_y._mant == null ? null : _y._mant.__copy__()));
            _z._mant = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
        };
        var _e:GoInt64 = (((_x._exp : GoInt64)) - ((_y._exp : GoInt64))) - ((((_d - (_z._mant != null ? _z._mant.length : ((0 : GoInt)))) : GoInt64)) * ((32 : GoInt64)));
        var _sbit:GoUInt = ((0 : GoUInt));
        if ((_r != null ? _r.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _sbit = ((1 : GoUInt));
        };
        _z._setExpAndRound(_e - _fnorm((_z._mant == null ? null : _z._mant.__copy__())), _sbit);
    }
    public function _umul(_x:Float_, _y:Float_):Void {
        var _z = this;
        _z;
        if (false) {
            _validateBinaryOperands(_x, _y);
        };
        var _e:GoInt64 = ((_x._exp : GoInt64)) + ((_y._exp : GoInt64));
        if (_x == _y) {
            _z._mant = (_z._mant._sqr((_x._mant == null ? null : _x._mant.__copy__())) == null ? null : _z._mant._sqr((_x._mant == null ? null : _x._mant.__copy__())).__copy__());
        } else {
            _z._mant = (_z._mant._mul((_x._mant == null ? null : _x._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())) == null ? null : _z._mant._mul((_x._mant == null ? null : _x._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())).__copy__());
        };
        _z._setExpAndRound(_e - _fnorm((_z._mant == null ? null : _z._mant.__copy__())), ((0 : GoUInt)));
    }
    public function _usub(_x:Float_, _y:Float_):Void {
        var _z = this;
        _z;
        if (false) {
            _validateBinaryOperands(_x, _y);
        };
        var _ex:GoInt64 = ((_x._exp : GoInt64)) - ((((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoInt64)) * ((32 : GoInt64)));
        var _ey:GoInt64 = ((_y._exp : GoInt64)) - ((((_y._mant != null ? _y._mant.length : ((0 : GoInt))) : GoInt64)) * ((32 : GoInt64)));
        var _al:Bool = _alias((_z._mant == null ? null : _z._mant.__copy__()), (_x._mant == null ? null : _x._mant.__copy__())) || _alias((_z._mant == null ? null : _z._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__()));
        if (_ex < _ey) {
            if (_al) {
                var _t:T_nat = (((new T_nat() : T_nat))._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))).__copy__());
                _z._mant = (_t._sub((_x._mant == null ? null : _x._mant.__copy__()), (_t == null ? null : _t.__copy__())) == null ? null : _t._sub((_x._mant == null ? null : _x._mant.__copy__()), (_t == null ? null : _t.__copy__())).__copy__());
            } else {
                _z._mant = (_z._mant._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))) == null ? null : _z._mant._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))).__copy__());
                _z._mant = (_z._mant._sub((_x._mant == null ? null : _x._mant.__copy__()), (_z._mant == null ? null : _z._mant.__copy__())) == null ? null : _z._mant._sub((_x._mant == null ? null : _x._mant.__copy__()), (_z._mant == null ? null : _z._mant.__copy__())).__copy__());
            };
        } else if (_ex > _ey) {
            if (_al) {
                var _t:T_nat = (((new T_nat() : T_nat))._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))).__copy__());
                _z._mant = (_t._sub((_t == null ? null : _t.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())) == null ? null : _t._sub((_t == null ? null : _t.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())).__copy__());
            } else {
                _z._mant = (_z._mant._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))) == null ? null : _z._mant._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))).__copy__());
                _z._mant = (_z._mant._sub((_z._mant == null ? null : _z._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())) == null ? null : _z._mant._sub((_z._mant == null ? null : _z._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())).__copy__());
            };
            _ex = _ey;
        };
        if ((_z._mant != null ? _z._mant.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _z._acc = ((0 : GoInt8));
            _z._form = ((0 : GoUInt8));
            _z._neg = false;
            return;
        };
        _z._setExpAndRound((_ex + ((((_z._mant != null ? _z._mant.length : ((0 : GoInt))) : GoInt64)) * ((32 : GoInt64)))) - _fnorm((_z._mant == null ? null : _z._mant.__copy__())), ((0 : GoUInt)));
    }
    public function _uadd(_x:Float_, _y:Float_):Void {
        var _z = this;
        _z;
        if (false) {
            _validateBinaryOperands(_x, _y);
        };
        var _ex:GoInt64 = ((_x._exp : GoInt64)) - ((((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoInt64)) * ((32 : GoInt64)));
        var _ey:GoInt64 = ((_y._exp : GoInt64)) - ((((_y._mant != null ? _y._mant.length : ((0 : GoInt))) : GoInt64)) * ((32 : GoInt64)));
        var _al:Bool = _alias((_z._mant == null ? null : _z._mant.__copy__()), (_x._mant == null ? null : _x._mant.__copy__())) || _alias((_z._mant == null ? null : _z._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__()));
        if (_ex < _ey) {
            if (_al) {
                var _t:T_nat = (((new T_nat() : T_nat))._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))).__copy__());
                _z._mant = (_z._mant._add((_x._mant == null ? null : _x._mant.__copy__()), (_t == null ? null : _t.__copy__())) == null ? null : _z._mant._add((_x._mant == null ? null : _x._mant.__copy__()), (_t == null ? null : _t.__copy__())).__copy__());
            } else {
                _z._mant = (_z._mant._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))) == null ? null : _z._mant._shl((_y._mant == null ? null : _y._mant.__copy__()), (((_ey - _ex) : GoUInt))).__copy__());
                _z._mant = (_z._mant._add((_x._mant == null ? null : _x._mant.__copy__()), (_z._mant == null ? null : _z._mant.__copy__())) == null ? null : _z._mant._add((_x._mant == null ? null : _x._mant.__copy__()), (_z._mant == null ? null : _z._mant.__copy__())).__copy__());
            };
        } else if (_ex > _ey) {
            if (_al) {
                var _t:T_nat = (((new T_nat() : T_nat))._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))).__copy__());
                _z._mant = (_z._mant._add((_t == null ? null : _t.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())) == null ? null : _z._mant._add((_t == null ? null : _t.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())).__copy__());
            } else {
                _z._mant = (_z._mant._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))) == null ? null : _z._mant._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_ex - _ey) : GoUInt))).__copy__());
                _z._mant = (_z._mant._add((_z._mant == null ? null : _z._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())) == null ? null : _z._mant._add((_z._mant == null ? null : _z._mant.__copy__()), (_y._mant == null ? null : _y._mant.__copy__())).__copy__());
            };
            _ex = _ey;
        };
        _z._setExpAndRound((_ex + ((((_z._mant != null ? _z._mant.length : ((0 : GoInt))) : GoInt64)) * ((32 : GoInt64)))) - _fnorm((_z._mant == null ? null : _z._mant.__copy__())), ((0 : GoUInt)));
    }
    public function neg(_x:Float_):Float_ {
        var _z = this;
        _z;
        _z.set(_x);
        _z._neg = !_z._neg;
        return _z;
    }
    public function abs(_x:Float_):Float_ {
        var _z = this;
        _z;
        _z.set(_x);
        _z._neg = false;
        return _z;
    }
    public function rat(_z:Rat):{ var _0 : Rat; var _1 : Accuracy; } {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if ((_z == null) && (_x._form <= ((1 : GoUInt8)))) {
            _z = Go.pointer(new Rat());
        };
        if (_x._form == ((1 : GoUInt8))) {
            var _allBits:GoInt32 = (((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoInt32)) * ((32 : GoInt32));
            _z._a._neg = _x._neg;
            if (_x._exp > _allBits) {
                _z._a._abs = (_z._a._abs._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_x._exp - _allBits) : GoUInt))) == null ? null : _z._a._abs._shl((_x._mant == null ? null : _x._mant.__copy__()), (((_x._exp - _allBits) : GoUInt))).__copy__());
                _z._b._abs = (_z._b._abs.__slice__(0, ((0 : GoInt))) == null ? null : _z._b._abs.__slice__(0, ((0 : GoInt))).__copy__());
            } else if (_x._exp < _allBits) {
                _z._a._abs = (_z._a._abs._set((_x._mant == null ? null : _x._mant.__copy__())) == null ? null : _z._a._abs._set((_x._mant == null ? null : _x._mant.__copy__())).__copy__());
                var _t:T_nat = (_z._b._abs._setUint64(((1 : GoUInt64))) == null ? null : _z._b._abs._setUint64(((1 : GoUInt64))).__copy__());
                _z._b._abs = (_t._shl((_t == null ? null : _t.__copy__()), (((_allBits - _x._exp) : GoUInt))) == null ? null : _t._shl((_t == null ? null : _t.__copy__()), (((_allBits - _x._exp) : GoUInt))).__copy__());
                _z._norm();
            };
            return { _0 : _z, _1 : ((0 : GoInt8)) };
        } else if (_x._form == ((0 : GoUInt8))) {
            return { _0 : _z.setInt64(((0 : GoInt64))), _1 : ((0 : GoInt8)) };
        } else if (_x._form == ((2 : GoUInt8))) {
            return { _0 : null, _1 : _makeAcc(_x._neg) };
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
    public function int(_z:Int_):{ var _0 : Int_; var _1 : Accuracy; } {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if ((_z == null) && (_x._form <= ((1 : GoUInt8)))) {
            _z = Go.pointer(new Int_());
        };
        if (_x._form == ((1 : GoUInt8))) {
            var _acc:Accuracy = _makeAcc(_x._neg);
            if (_x._exp <= ((0 : GoInt32))) {
                return { _0 : _z.setInt64(((0 : GoInt64))), _1 : _acc };
            };
            var _allBits:GoUInt = (((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoUInt)) * ((32 : GoUInt));
            var _exp:GoUInt = ((_x._exp : GoUInt));
            if (_x.minPrec() <= _exp) {
                _acc = ((0 : GoInt8));
            };
            if (_z == null) {
                _z = Go.pointer(new Int_());
            };
            _z._neg = _x._neg;
            if (_exp > _allBits) {
                _z._abs = (_z._abs._shl((_x._mant == null ? null : _x._mant.__copy__()), _exp - _allBits) == null ? null : _z._abs._shl((_x._mant == null ? null : _x._mant.__copy__()), _exp - _allBits).__copy__());
            } else if (_exp < _allBits) {
                _z._abs = (_z._abs._shr((_x._mant == null ? null : _x._mant.__copy__()), _allBits - _exp) == null ? null : _z._abs._shr((_x._mant == null ? null : _x._mant.__copy__()), _allBits - _exp).__copy__());
            };
            return { _0 : _z, _1 : _acc };
        } else if (_x._form == ((0 : GoUInt8))) {
            return { _0 : _z.setInt64(((0 : GoInt64))), _1 : ((0 : GoInt8)) };
        } else if (_x._form == ((2 : GoUInt8))) {
            return { _0 : null, _1 : _makeAcc(_x._neg) };
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
    public function float64():{ var _0 : GoFloat64; var _1 : Accuracy; } {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if (_x._form == ((1 : GoUInt8))) {
            {};
            var _e:GoInt32 = _x._exp - ((1 : GoInt32));
            var _p:GoInt = ((53 : GoInt));
            if (_e < ((-1022 : GoInt32))) {
                _p = ((1075 : GoInt)) + ((_e : GoInt));
                if ((_p < ((0 : GoInt))) || ((_p == ((0 : GoInt))) && (_x._mant._sticky(((((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoUInt)) * ((32 : GoUInt))) - ((1 : GoUInt))) == ((0 : GoUInt))))) {
                    if (_x._neg) {
                        var _z:GoFloat64 = ((0 : GoFloat64));
                        return { _0 : -_z, _1 : ((1 : GoInt8)) };
                    };
                    return { _0 : ((0 : GoFloat64)), _1 : ((-1 : GoInt8)) };
                };
                if (_p == ((0 : GoInt))) {
                    if (_x._neg) {
                        return { _0 : ((-5e-324 : GoFloat64)), _1 : ((-1 : GoInt8)) };
                    };
                    return { _0 : ((5e-324 : GoFloat64)), _1 : ((1 : GoInt8)) };
                };
            };
            var _r:Float_ = new Float_();
            _r._prec = ((_p : GoUInt32));
            _r.set(_x);
            _e = _r._exp - ((1 : GoInt32));
            if ((_r._form == ((2 : GoUInt8))) || (_e > ((1023 : GoInt32)))) {
                if (_x._neg) {
                    return { _0 : stdgo.math.Math.inf(((-1 : GoInt))), _1 : ((-1 : GoInt8)) };
                };
                return { _0 : stdgo.math.Math.inf(((1 : GoInt))), _1 : ((1 : GoInt8)) };
            };
            var _sign:GoUInt64 = ((0 : GoUInt64)), _bexp:GoUInt64 = ((0 : GoUInt64)), _mant:GoUInt64 = ((0 : GoUInt64));
            if (_x._neg) {
                _sign = (("9223372036854775808" : GoUInt64));
            };
            if (_e < ((-1022 : GoInt32))) {
                _p = ((1075 : GoInt)) + ((_e : GoInt));
                _mant = _msb64((_r._mant == null ? null : _r._mant.__copy__())) >> (((((64 : GoInt)) - _p) : GoUInt));
            } else {
                _bexp = (((_e + ((1023 : GoInt32))) : GoUInt64)) << ((52 : GoUnTypedInt));
                _mant = (_msb64((_r._mant == null ? null : _r._mant.__copy__())) >> ((11 : GoUnTypedInt))) & (("4503599627370495" : GoUInt64));
            };
            return { _0 : stdgo.math.Math.float64frombits((_sign | _bexp) | _mant), _1 : _r._acc };
        } else if (_x._form == ((0 : GoUInt8))) {
            if (_x._neg) {
                var _z:GoFloat64 = ((0 : GoFloat64));
                return { _0 : -_z, _1 : ((0 : GoInt8)) };
            };
            return { _0 : ((0 : GoFloat64)), _1 : ((0 : GoInt8)) };
        } else if (_x._form == ((2 : GoUInt8))) {
            if (_x._neg) {
                return { _0 : stdgo.math.Math.inf(((-1 : GoInt))), _1 : ((0 : GoInt8)) };
            };
            return { _0 : stdgo.math.Math.inf(((1 : GoInt))), _1 : ((0 : GoInt8)) };
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
    public function float32():{ var _0 : GoFloat32; var _1 : Accuracy; } {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if (_x._form == ((1 : GoUInt8))) {
            {};
            var _e:GoInt32 = _x._exp - ((1 : GoInt32));
            var _p:GoInt = ((24 : GoInt));
            if (_e < ((-126 : GoInt32))) {
                _p = ((150 : GoInt)) + ((_e : GoInt));
                if ((_p < ((0 : GoInt))) || ((_p == ((0 : GoInt))) && (_x._mant._sticky(((((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoUInt)) * ((32 : GoUInt))) - ((1 : GoUInt))) == ((0 : GoUInt))))) {
                    if (_x._neg) {
                        var _z:GoFloat32 = ((0 : GoFloat32));
                        return { _0 : -_z, _1 : ((1 : GoInt8)) };
                    };
                    return { _0 : ((0 : GoFloat32)), _1 : ((-1 : GoInt8)) };
                };
                if (_p == ((0 : GoInt))) {
                    if (_x._neg) {
                        return { _0 : ((-1.401298464324817e-45 : GoFloat32)), _1 : ((-1 : GoInt8)) };
                    };
                    return { _0 : ((1.401298464324817e-45 : GoFloat32)), _1 : ((1 : GoInt8)) };
                };
            };
            var _r:Float_ = new Float_();
            _r._prec = ((_p : GoUInt32));
            _r.set(_x);
            _e = _r._exp - ((1 : GoInt32));
            if ((_r._form == ((2 : GoUInt8))) || (_e > ((127 : GoInt32)))) {
                if (_x._neg) {
                    return { _0 : ((stdgo.math.Math.inf(((-1 : GoInt))) : GoFloat32)), _1 : ((-1 : GoInt8)) };
                };
                return { _0 : ((stdgo.math.Math.inf(((1 : GoInt))) : GoFloat32)), _1 : ((1 : GoInt8)) };
            };
            var _sign:GoUInt32 = ((0 : GoUInt32)), _bexp:GoUInt32 = ((0 : GoUInt32)), _mant:GoUInt32 = ((0 : GoUInt32));
            if (_x._neg) {
                _sign = (("2147483648" : GoUInt32));
            };
            if (_e < ((-126 : GoInt32))) {
                _p = ((150 : GoInt)) + ((_e : GoInt));
                _mant = _msb32((_r._mant == null ? null : _r._mant.__copy__())) >> (((((32 : GoInt)) - _p) : GoUInt));
            } else {
                _bexp = (((_e + ((127 : GoInt32))) : GoUInt32)) << ((23 : GoUnTypedInt));
                _mant = (_msb32((_r._mant == null ? null : _r._mant.__copy__())) >> ((8 : GoUnTypedInt))) & ((8388607 : GoUInt32));
            };
            return { _0 : stdgo.math.Math.float32frombits((_sign | _bexp) | _mant), _1 : _r._acc };
        } else if (_x._form == ((0 : GoUInt8))) {
            if (_x._neg) {
                var _z:GoFloat32 = ((0 : GoFloat32));
                return { _0 : -_z, _1 : ((0 : GoInt8)) };
            };
            return { _0 : ((0 : GoFloat32)), _1 : ((0 : GoInt8)) };
        } else if (_x._form == ((2 : GoUInt8))) {
            if (_x._neg) {
                return { _0 : ((stdgo.math.Math.inf(((-1 : GoInt))) : GoFloat32)), _1 : ((0 : GoInt8)) };
            };
            return { _0 : ((stdgo.math.Math.inf(((1 : GoInt))) : GoFloat32)), _1 : ((0 : GoInt8)) };
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
    public function int64():{ var _0 : GoInt64; var _1 : Accuracy; } {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if (_x._form == ((1 : GoUInt8))) {
            var _acc:Accuracy = _makeAcc(_x._neg);
            if (_x._exp <= ((0 : GoInt32))) {
                return { _0 : ((0 : GoInt64)), _1 : _acc };
            };
            if (_x._exp <= ((63 : GoInt32))) {
                var _i:GoInt64 = (((_msb64((_x._mant == null ? null : _x._mant.__copy__())) >> (((64 : GoUInt32)) - ((_x._exp : GoUInt32)))) : GoInt64));
                if (_x._neg) {
                    _i = -_i;
                };
                if (_x.minPrec() <= ((_x._exp : GoUInt))) {
                    return { _0 : _i, _1 : ((0 : GoInt8)) };
                };
                return { _0 : _i, _1 : _acc };
            };
            if (_x._neg) {
                if ((_x._exp == ((64 : GoInt32))) && (_x.minPrec() == ((1 : GoUInt)))) {
                    _acc = ((0 : GoInt8));
                };
                return { _0 : (("-9223372036854775808" : GoInt64)), _1 : _acc };
            };
            return { _0 : (("9223372036854775807" : GoInt64)), _1 : ((-1 : GoInt8)) };
        } else if (_x._form == ((0 : GoUInt8))) {
            return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt8)) };
        } else if (_x._form == ((2 : GoUInt8))) {
            if (_x._neg) {
                return { _0 : (("-9223372036854775808" : GoInt64)), _1 : ((1 : GoInt8)) };
            };
            return { _0 : (("9223372036854775807" : GoInt64)), _1 : ((-1 : GoInt8)) };
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
    public function uint64():{ var _0 : GoUInt64; var _1 : Accuracy; } {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if (_x._form == ((1 : GoUInt8))) {
            if (_x._neg) {
                return { _0 : ((0 : GoUInt64)), _1 : ((1 : GoInt8)) };
            };
            if (_x._exp <= ((0 : GoInt32))) {
                return { _0 : ((0 : GoUInt64)), _1 : ((-1 : GoInt8)) };
            };
            if (_x._exp <= ((64 : GoInt32))) {
                var _u:GoUInt64 = _msb64((_x._mant == null ? null : _x._mant.__copy__())) >> (((64 : GoUInt32)) - ((_x._exp : GoUInt32)));
                if (_x.minPrec() <= ((64 : GoUInt))) {
                    return { _0 : _u, _1 : ((0 : GoInt8)) };
                };
                return { _0 : _u, _1 : ((-1 : GoInt8)) };
            };
            return { _0 : (("18446744073709551615" : GoUInt64)), _1 : ((-1 : GoInt8)) };
        } else if (_x._form == ((0 : GoUInt8))) {
            return { _0 : ((0 : GoUInt64)), _1 : ((0 : GoInt8)) };
        } else if (_x._form == ((2 : GoUInt8))) {
            if (_x._neg) {
                return { _0 : ((0 : GoUInt64)), _1 : ((1 : GoInt8)) };
            };
            return { _0 : (("18446744073709551615" : GoUInt64)), _1 : ((-1 : GoInt8)) };
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
    public function copy(_x:Float_):Float_ {
        var _z = this;
        _z;
        if (false) {
            _x._validate();
        };
        if (_z != _x) {
            _z._prec = _x._prec;
            _z._mode = _x._mode;
            _z._acc = _x._acc;
            _z._form = _x._form;
            _z._neg = _x._neg;
            if (_z._form == ((1 : GoUInt8))) {
                _z._mant = (_z._mant._set((_x._mant == null ? null : _x._mant.__copy__())) == null ? null : _z._mant._set((_x._mant == null ? null : _x._mant.__copy__())).__copy__());
                _z._exp = _x._exp;
            };
        };
        return _z;
    }
    public function set(_x:Float_):Float_ {
        var _z = this;
        _z;
        if (false) {
            _x._validate();
        };
        _z._acc = ((0 : GoInt8));
        if (_z != _x) {
            _z._form = _x._form;
            _z._neg = _x._neg;
            if (_x._form == ((1 : GoUInt8))) {
                _z._exp = _x._exp;
                _z._mant = (_z._mant._set((_x._mant == null ? null : _x._mant.__copy__())) == null ? null : _z._mant._set((_x._mant == null ? null : _x._mant.__copy__())).__copy__());
            };
            if (_z._prec == ((0 : GoUInt32))) {
                _z._prec = _x._prec;
            } else if (_z._prec < _x._prec) {
                _z._round(((0 : GoUInt)));
            };
        };
        return _z;
    }
    public function setInf(_signbit:Bool):Float_ {
        var _z = this;
        _z;
        _z._acc = ((0 : GoInt8));
        _z._form = ((2 : GoUInt8));
        _z._neg = _signbit;
        return _z;
    }
    public function setRat(_x:Rat):Float_ {
        var _z = this;
        _z;
        if (_x.isInt()) {
            return _z.setInt(_x.num());
        };
        var _a:Float_ = new Float_(), _b:Float_ = new Float_();
        _a.setInt(_x.num());
        _b.setInt(_x.denom());
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = _umax32(_a._prec, _b._prec);
        };
        return _z.quo(_a, _b);
    }
    public function setInt(_x:Int_):Float_ {
        var _z = this;
        _z;
        var _bits:GoUInt32 = ((_x.bitLen() : GoUInt32));
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = _umax32(_bits, ((64 : GoUInt32)));
        };
        _z._acc = ((0 : GoInt8));
        _z._neg = _x._neg;
        if ((_x._abs != null ? _x._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _z._form = ((0 : GoUInt8));
            return _z;
        };
        _z._mant = (_z._mant._set((_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._mant._set((_x._abs == null ? null : _x._abs.__copy__())).__copy__());
        _fnorm((_z._mant == null ? null : _z._mant.__copy__()));
        _z._setExpAndRound(((_bits : GoInt64)), ((0 : GoUInt)));
        return _z;
    }
    public function setFloat64(_x:GoFloat64):Float_ {
        var _z = this;
        _z;
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = ((53 : GoUInt32));
        };
        if (stdgo.math.Math.isNaN(_x)) {
            throw Go.toInterface(((new ErrNaN(((("Float.SetFloat64(NaN)" : GoString)))) : ErrNaN)));
        };
        _z._acc = ((0 : GoInt8));
        _z._neg = stdgo.math.Math.signbit(_x);
        if (_x == ((0 : GoFloat64))) {
            _z._form = ((0 : GoUInt8));
            return _z;
        };
        if (stdgo.math.Math.isInf(_x, ((0 : GoInt)))) {
            _z._form = ((2 : GoUInt8));
            return _z;
        };
        _z._form = ((1 : GoUInt8));
        var __tmp__ = stdgo.math.Math.frexp(_x), _fmant:GoFloat64 = __tmp__._0, _exp:GoInt = __tmp__._1;
        _z._mant = (_z._mant._setUint64((("9223372036854775808" : GoUInt64)) | (stdgo.math.Math.float64bits(_fmant) << ((11 : GoUnTypedInt)))) == null ? null : _z._mant._setUint64((("9223372036854775808" : GoUInt64)) | (stdgo.math.Math.float64bits(_fmant) << ((11 : GoUnTypedInt)))).__copy__());
        _z._exp = ((_exp : GoInt32));
        if (_z._prec < ((53 : GoUInt32))) {
            _z._round(((0 : GoUInt)));
        };
        return _z;
    }
    public function setInt64(_x:GoInt64):Float_ {
        var _z = this;
        _z;
        var _u:GoInt64 = _x;
        if (_u < ((0 : GoInt64))) {
            _u = -_u;
        };
        return _z._setBits64(_x < ((0 : GoInt64)), ((_u : GoUInt64)));
    }
    public function setUint64(_x:GoUInt64):Float_ {
        var _z = this;
        _z;
        return _z._setBits64(false, _x);
    }
    public function _setBits64(_neg:Bool, _x:GoUInt64):Float_ {
        var _z = this;
        _z;
        if (_z._prec == ((0 : GoUInt32))) {
            _z._prec = ((64 : GoUInt32));
        };
        _z._acc = ((0 : GoInt8));
        _z._neg = _neg;
        if (_x == ((0 : GoUInt64))) {
            _z._form = ((0 : GoUInt8));
            return _z;
        };
        _z._form = ((1 : GoUInt8));
        var _s:GoInt = stdgo.math.bits.Bits.leadingZeros64(_x);
        _z._mant = (_z._mant._setUint64(_x << ((_s : GoUInt))) == null ? null : _z._mant._setUint64(_x << ((_s : GoUInt))).__copy__());
        _z._exp = (((((64 : GoInt)) - _s) : GoInt32));
        if (_z._prec < ((64 : GoUInt32))) {
            _z._round(((0 : GoUInt)));
        };
        return _z;
    }
    public function _round(_sbit:GoUInt):Void {
        var _z = this;
        _z;
        if (false) {
            _z._validate();
        };
        _z._acc = ((0 : GoInt8));
        if (_z._form != ((1 : GoUInt8))) {
            return;
        };
        var _m:GoUInt32 = (((_z._mant != null ? _z._mant.length : ((0 : GoInt))) : GoUInt32));
        var _bits:GoUInt32 = _m * ((32 : GoUInt32));
        if (_bits <= _z._prec) {
            return;
        };
        var _r:GoUInt = ((((_bits - _z._prec) - ((1 : GoUInt32))) : GoUInt));
        var _rbit:GoUInt = _z._mant._bit(_r) & ((1 : GoUInt));
        if ((_sbit == ((0 : GoUInt))) && ((_rbit == ((0 : GoUInt))) || (_z._mode == ((0 : GoUInt8))))) {
            _sbit = _z._mant._sticky(_r);
        };
        _sbit = _sbit & (((1 : GoUInt)));
        var _n:GoUInt32 = (_z._prec + ((31 : GoUInt32))) / ((32 : GoUInt32));
        if (_m > _n) {
            Go.copy(_z._mant, _z._mant.__slice__(_m - _n));
            _z._mant = (_z._mant.__slice__(0, _n) == null ? null : _z._mant.__slice__(0, _n).__copy__());
        };
        var _ntz:GoUInt32 = (_n * ((32 : GoUInt32))) - _z._prec;
        var _lsb:Word = ((((1 : GoUInt)) : Word)) << _ntz;
        if ((_rbit | _sbit) != ((0 : GoUInt))) {
            var _inc:Bool = false;
            if (_z._mode == ((4 : GoUInt8))) {
                _inc = _z._neg;
            } else if (_z._mode == ((2 : GoUInt8))) {} else if (_z._mode == ((0 : GoUInt8))) {
                _inc = (_rbit != ((0 : GoUInt))) && ((_sbit != ((0 : GoUInt))) || (((_z._mant != null ? _z._mant[((0 : GoInt))] : new Word()) & _lsb) != ((0 : GoUInt))));
            } else if (_z._mode == ((1 : GoUInt8))) {
                _inc = _rbit != ((0 : GoUInt));
            } else if (_z._mode == ((3 : GoUInt8))) {
                _inc = true;
            } else if (_z._mode == ((5 : GoUInt8))) {
                _inc = !_z._neg;
            } else {
                throw Go.toInterface(((("unreachable" : GoString))));
            };
            _z._acc = _makeAcc(_inc != _z._neg);
            if (_inc) {
                if (_addVW(_z._mant, _z._mant, _lsb) != ((0 : GoUInt))) {
                    if (_z._exp >= ((2147483647 : GoInt32))) {
                        _z._form = ((2 : GoUInt8));
                        return;
                    };
                    _z._exp++;
                    _shrVU(_z._mant, _z._mant, ((1 : GoUInt)));
                    {};
                    if (_z._mant != null) (_z._mant != null ? _z._mant[_n - ((1 : GoUInt32))] : new Word()) | ((("2147483648" : GoUInt)));
                };
            };
        };
        if (_z._mant != null) (_z._mant != null ? _z._mant[((0 : GoInt))] : new Word()) & ((_lsb - ((1 : GoUInt))) ^ ((-1 : GoUnTypedInt)));
        if (false) {
            _z._validate();
        };
    }
    public function _validate():Void {
        var _x = this;
        _x;
        if (true) {
            throw Go.toInterface(((("validate called but debugFloat is not set" : GoString))));
        };
        if (_x._form != ((1 : GoUInt8))) {
            return;
        };
        var _m:GoInt = (_x._mant != null ? _x._mant.length : ((0 : GoInt)));
        if (_m == ((0 : GoInt))) {
            throw Go.toInterface(((("nonzero finite number with empty mantissa" : GoString))));
        };
        {};
        if (((_x._mant != null ? _x._mant[_m - ((1 : GoInt))] : new Word()) & (("2147483648" : GoUInt))) == ((0 : GoUInt))) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(((("msb not set in last word %#x of %s" : GoString))), Go.toInterface((_x._mant != null ? _x._mant[_m - ((1 : GoInt))] : new Word())), Go.toInterface(_x.text(((((("p" : GoString))).code : GoRune)), ((0 : GoInt))))));
        };
        if (_x._prec == ((0 : GoUInt32))) {
            throw Go.toInterface(((("zero precision finite number" : GoString))));
        };
    }
    public function isInt():Bool {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if (_x._form != ((1 : GoUInt8))) {
            return _x._form == ((0 : GoUInt8));
        };
        if (_x._exp <= ((0 : GoInt32))) {
            return false;
        };
        return (_x._prec <= ((_x._exp : GoUInt32))) || (_x.minPrec() <= ((_x._exp : GoUInt)));
    }
    public function isInf():Bool {
        var _x = this;
        _x;
        return _x._form == ((2 : GoUInt8));
    }
    public function signbit():Bool {
        var _x = this;
        _x;
        return _x._neg;
    }
    public function setMantExp(_mant:Float_, _exp:GoInt):Float_ {
        var _z = this;
        _z;
        if (false) {
            _z._validate();
            _mant._validate();
        };
        _z.copy(_mant);
        if (_z._form == ((1 : GoUInt8))) {
            _z._setExpAndRound(((_z._exp : GoInt64)) + ((_exp : GoInt64)), ((0 : GoUInt)));
        };
        return _z;
    }
    public function _setExpAndRound(_exp:GoInt64, _sbit:GoUInt):Void {
        var _z = this;
        _z;
        if (_exp < ((-2147483648 : GoInt64))) {
            _z._acc = _makeAcc(_z._neg);
            _z._form = ((0 : GoUInt8));
            return;
        };
        if (_exp > ((2147483647 : GoInt64))) {
            _z._acc = _makeAcc(!_z._neg);
            _z._form = ((2 : GoUInt8));
            return;
        };
        _z._form = ((1 : GoUInt8));
        _z._exp = ((_exp : GoInt32));
        _z._round(_sbit);
    }
    public function mantExp(_mant:Float_):GoInt {
        var _x = this;
        _x;
        var _exp:GoInt = ((0 : GoInt));
        if (false) {
            _x._validate();
        };
        if (_x._form == ((1 : GoUInt8))) {
            _exp = ((_x._exp : GoInt));
        };
        if (_mant != null) {
            _mant.copy(_x);
            if (_mant._form == ((1 : GoUInt8))) {
                _mant._exp = ((0 : GoInt32));
            };
        };
        return _exp;
    }
    public function sign():GoInt {
        var _x = this;
        _x;
        if (false) {
            _x._validate();
        };
        if (_x._form == ((0 : GoUInt8))) {
            return ((0 : GoInt));
        };
        if (_x._neg) {
            return ((-1 : GoInt));
        };
        return ((1 : GoInt));
    }
    public function acc():Accuracy {
        var _x = this;
        _x;
        return _x._acc;
    }
    public function mode():RoundingMode {
        var _x = this;
        _x;
        return _x._mode;
    }
    public function minPrec():GoUInt {
        var _x = this;
        _x;
        if (_x._form != ((1 : GoUInt8))) {
            return ((0 : GoUInt));
        };
        return ((((_x._mant != null ? _x._mant.length : ((0 : GoInt))) : GoUInt)) * ((32 : GoUInt))) - _x._mant._trailingZeroBits();
    }
    public function prec():GoUInt {
        var _x = this;
        _x;
        return ((_x._prec : GoUInt));
    }
    public function setMode(_mode:RoundingMode):Float_ {
        var _z = this;
        _z;
        _z._mode = _mode;
        _z._acc = ((0 : GoInt8));
        return _z;
    }
    public function setPrec(_prec:GoUInt):Float_ {
        var _z = this;
        _z;
        _z._acc = ((0 : GoInt8));
        if (_prec == ((0 : GoUInt))) {
            _z._prec = ((0 : GoUInt32));
            if (_z._form == ((1 : GoUInt8))) {
                _z._acc = _makeAcc(_z._neg);
                _z._form = ((0 : GoUInt8));
            };
            return _z;
        };
        if (_prec > (("4294967295" : GoUInt))) {
            _prec = (("4294967295" : GoUInt));
        };
        var _old:GoUInt32 = _z._prec;
        _z._prec = ((_prec : GoUInt32));
        if (_z._prec < _old) {
            _z._round(((0 : GoUInt)));
        };
        return _z;
    }
    public var _prec : GoUInt32 = ((0 : GoUInt32));
    public var _mode : RoundingMode = new RoundingMode();
    public var _acc : Accuracy = new Accuracy();
    public var _form : T_form = new T_form();
    public var _neg : Bool = false;
    public var _mant : T_nat = new T_nat();
    public var _exp : GoInt32 = ((0 : GoInt32));
    public function new(?_prec:GoUInt32, ?_mode:RoundingMode, ?_acc:Accuracy, ?_form:T_form, ?_neg:Bool, ?_mant:T_nat, ?_exp:GoInt32) {
        if (_prec != null) this._prec = _prec;
        if (_mode != null) this._mode = _mode;
        if (_acc != null) this._acc = _acc;
        if (_form != null) this._form = _form;
        if (_neg != null) this._neg = _neg;
        if (_mant != null) this._mant = _mant;
        if (_exp != null) this._exp = _exp;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Float_(_prec, _mode, _acc, _form, _neg, _mant, _exp);
    }
}
@:structInit @:using(Big.ErrNaN_static_extension) class ErrNaN {
    public function error():GoString {
        var _err = this;
        (_err == null ? null : _err.__copy__());
        return _err._msg;
    }
    public var _msg : GoString = (("" : GoString));
    public function new(?_msg:GoString) {
        if (_msg != null) this._msg = _msg;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ErrNaN(_msg);
    }
}
@:named typedef T_form = GoUInt8;
@:named @:using(Big.RoundingMode_static_extension) typedef RoundingMode = GoUInt8;
@:named @:using(Big.Accuracy_static_extension) typedef Accuracy = GoInt8;
@:structInit @:using(Big.Int__static_extension) class Int_ {
    public function _scaleDenom(_x:Int_, _f:T_nat):Void {
        var _z = this;
        _z;
        if ((_f != null ? _f.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _z.set(_x);
            return;
        };
        _z._abs = (_z._abs._mul((_x._abs == null ? null : _x._abs.__copy__()), (_f == null ? null : _f.__copy__())) == null ? null : _z._abs._mul((_x._abs == null ? null : _x._abs.__copy__()), (_f == null ? null : _f.__copy__())).__copy__());
        _z._neg = _x._neg;
    }
    public function probablyPrime(_n:GoInt):Bool {
        var _x = this;
        _x;
        if (_n < ((0 : GoInt))) {
            throw Go.toInterface(((("negative n for ProbablyPrime" : GoString))));
        };
        if (_x._neg || ((_x._abs != null ? _x._abs.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            return false;
        };
        {};
        var _w:Word = (_x._abs != null ? _x._abs[((0 : GoInt))] : new Word());
        if (((_x._abs != null ? _x._abs.length : ((0 : GoInt))) == ((1 : GoInt))) && (_w < ((64 : GoUInt)))) {
            return ((("2891462833508853932" : GoUInt64)) & (((1 : GoUInt64)) << _w)) != ((0 : GoUInt64));
        };
        if ((_w & ((1 : GoUInt))) == ((0 : GoUInt))) {
            return false;
        };
        {};
        {};
        var _rA:GoUInt32 = ((0 : GoUInt32)), _rB:GoUInt32 = ((0 : GoUInt32));
        if (((32 : GoInt)) == ((32 : GoInt))) {
            _rA = ((_x._abs._modW((("4127218095" : GoUInt))) : GoUInt32));
            _rB = ((_x._abs._modW((("3948078067" : GoUInt))) : GoUInt32));
        } else if (((32 : GoInt)) == ((64 : GoInt))) {
            var _r:Word = _x._abs._modW(((820596253 : GoUInt)));
            _rA = (((_r % (("4127218095" : GoUInt))) : GoUInt32));
            _rB = (((_r % (("3948078067" : GoUInt))) : GoUInt32));
        } else {
            throw Go.toInterface(((("math/big: invalid word size" : GoString))));
        };
        if ((((((((((((((((_rA % ((3 : GoUInt32))) == ((0 : GoUInt32))) || ((_rA % ((5 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rA % ((7 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rA % ((11 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rA % ((13 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rA % ((17 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rA % ((19 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rA % ((23 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rA % ((37 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rB % ((29 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rB % ((31 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rB % ((41 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rB % ((43 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rB % ((47 : GoUInt32))) == ((0 : GoUInt32)))) || ((_rB % ((53 : GoUInt32))) == ((0 : GoUInt32)))) {
            return false;
        };
        return _x._abs._probablyPrimeMillerRabin(_n + ((1 : GoInt)), true) && _x._abs._probablyPrimeLucas();
    }
    public function unmarshalJSON(_text:Slice<GoByte>):Error {
        var _z = this;
        _z;
        if (((_text : GoString)) == ((("null" : GoString)))) {
            return ((null : stdgo.Error));
        };
        return _z.unmarshalText(_text);
    }
    public function marshalJSON():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = this;
        _x;
        return _x.marshalText();
    }
    public function unmarshalText(_text:Slice<GoByte>):Error {
        var _z = this;
        _z;
        {
            var __tmp__ = _z._setFromScanner(stdgo.bytes.Bytes.newReader(_text), ((0 : GoInt))), _:Int_ = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf(((("math/big: cannot unmarshal %q into a *big.Int" : GoString))), Go.toInterface(_text));
            };
        };
        return ((null : stdgo.Error));
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = this;
        _x;
        var _text:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        if (_x == null) {
            return { _0 : ((((("<nil>" : GoString))) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : _x._abs._itoa(_x._neg, ((10 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_buf:Slice<GoByte>):Error {
        var _z = this;
        _z;
        if ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            {
                var __tmp__ = ((new Int_() : Int_));
                _z._neg = __tmp__._neg;
                _z._abs = __tmp__._abs;
            };
            return ((null : stdgo.Error));
        };
        var _b:GoUInt8 = (_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8)));
        if ((_b >> ((1 : GoUnTypedInt))) != ((1 : GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(((("Int.GobDecode: encoding version %d not supported" : GoString))), Go.toInterface(_b >> ((1 : GoUnTypedInt))));
        };
        _z._neg = (_b & ((1 : GoUInt8))) != ((0 : GoUInt8));
        _z._abs = (_z._abs._setBytes(_buf.__slice__(((1 : GoInt)))) == null ? null : _z._abs._setBytes(_buf.__slice__(((1 : GoInt)))).__copy__());
        return ((null : stdgo.Error));
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = this;
        _x;
        if (_x == null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) + ((_x._abs != null ? _x._abs.length : ((0 : GoInt))) * ((4 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _i:GoInt = _x._abs._bytes(_buf) - ((1 : GoInt));
        var _b:GoUInt8 = ((2 : GoUInt8));
        if (_x._neg) {
            _b = _b | (((1 : GoUInt8)));
        };
        if (_buf != null) _buf[_i] = _b;
        return { _0 : _buf.__slice__(_i), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error {
        var _z = this;
        _z;
        _s.skipSpace();
        var _base:GoInt = ((0 : GoInt));
        if (_ch == ((((("b" : GoString))).code : GoRune))) {
            _base = ((2 : GoInt));
        } else if (_ch == ((((("o" : GoString))).code : GoRune))) {
            _base = ((8 : GoInt));
        } else if (_ch == ((((("d" : GoString))).code : GoRune))) {
            _base = ((10 : GoInt));
        } else if (_ch == ((((("x" : GoString))).code : GoRune)) || _ch == ((((("X" : GoString))).code : GoRune))) {
            _base = ((16 : GoInt));
        } else if (_ch == ((((("s" : GoString))).code : GoRune)) || _ch == ((((("v" : GoString))).code : GoRune))) {} else {
            return stdgo.errors.Errors.new_(((("Int.Scan: invalid verb" : GoString))));
        };
        var __tmp__ = _z._scan(((new T_byteReader(_s) : T_byteReader)), _base), _:Int_ = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Int_; var _1 : GoInt; var _2 : Error; } {
        var _z = this;
        _z;
        var __tmp__ = _scanSign(_r), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : ((0 : GoInt)), _2 : _err };
        };
        {
            var __tmp__ = _z._abs._scan(_r, _base, false);
            _z._abs = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _base = __tmp__._1;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : null, _1 : _base, _2 : _err };
        };
        _z._neg = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && _neg;
        return { _0 : _z, _1 : _base, _2 : ((null : stdgo.Error)) };
    }
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoRune):Void {
        var _x = this;
        _x;
        var _base:GoInt = ((0 : GoInt));
        if (_ch == ((((("b" : GoString))).code : GoRune))) {
            _base = ((2 : GoInt));
        } else if (_ch == ((((("o" : GoString))).code : GoRune)) || _ch == ((((("O" : GoString))).code : GoRune))) {
            _base = ((8 : GoInt));
        } else if (_ch == ((((("d" : GoString))).code : GoRune)) || _ch == ((((("s" : GoString))).code : GoRune)) || _ch == ((((("v" : GoString))).code : GoRune))) {
            _base = ((10 : GoInt));
        } else if (_ch == ((((("x" : GoString))).code : GoRune)) || _ch == ((((("X" : GoString))).code : GoRune))) {
            _base = ((16 : GoInt));
        } else {
            stdgo.fmt.Fmt.fprintf(_s, ((("%%!%c(big.Int=%s)" : GoString))), Go.toInterface(_ch), Go.toInterface(((_x.toString() : GoString))));
            return;
        };
        if (_x == null) {
            stdgo.fmt.Fmt.fprint(_s, ((("<nil>" : GoString))));
            return;
        };
        var _sign:GoString = ("");
        if (_x._neg) {
            _sign = ((("-" : GoString)));
        } else if (_s.flag(((((("+" : GoString))).code : GoRune)))) {
            _sign = ((("+" : GoString)));
        } else if (_s.flag((((((" " : GoString))).code : GoRune)))) {
            _sign = (((" " : GoString)));
        };
        var _prefix:GoString = ("");
        if (_s.flag(((((("#" : GoString))).code : GoRune)))) {
            if (_ch == ((((("b" : GoString))).code : GoRune))) {
                _prefix = ((("0b" : GoString)));
            } else if (_ch == ((((("o" : GoString))).code : GoRune))) {
                _prefix = ((("0" : GoString)));
            } else if (_ch == ((((("x" : GoString))).code : GoRune))) {
                _prefix = ((("0x" : GoString)));
            } else if (_ch == ((((("X" : GoString))).code : GoRune))) {
                _prefix = ((("0X" : GoString)));
            };
        };
        if (_ch == ((((("O" : GoString))).code : GoRune))) {
            _prefix = ((("0o" : GoString)));
        };
        var _digits:Slice<GoUInt8> = _x._abs._utoa(_base);
        if (_ch == ((((("X" : GoString))).code : GoRune))) {
            for (_i => _d in _digits) {
                if ((((((("a" : GoString))).code : GoRune)) <= _d) && (_d <= ((((("z" : GoString))).code : GoRune)))) {
                    if (_digits != null) _digits[_i] = ((((("A" : GoString))).code : GoRune)) + (_d - ((((("a" : GoString))).code : GoRune)));
                };
            };
        };
        var _left:GoInt = ((0 : GoInt));
        var _zeros:GoInt = ((0 : GoInt));
        var _right:GoInt = ((0 : GoInt));
        var __tmp__ = _s.precision(), _precision:GoInt = __tmp__._0, _precisionSet:Bool = __tmp__._1;
        if (_precisionSet) {
            if ((_digits != null ? _digits.length : ((0 : GoInt))) < _precision) {
                _zeros = _precision - (_digits != null ? _digits.length : ((0 : GoInt)));
            } else if ((((_digits != null ? _digits.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_digits != null ? _digits[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune)))) && (_precision == ((0 : GoInt)))) {
                return;
            };
        };
        var _length:GoInt = (((_sign != null ? _sign.length : ((0 : GoInt))) + (_prefix != null ? _prefix.length : ((0 : GoInt)))) + _zeros) + (_digits != null ? _digits.length : ((0 : GoInt)));
        {
            var __tmp__ = _s.width(), _width:GoInt = __tmp__._0, _widthSet:Bool = __tmp__._1;
            if (_widthSet && (_length < _width)) {
                {
                    var _d:GoInt = _width - _length;
                    if (_s.flag(((((("-" : GoString))).code : GoRune)))) {
                        _right = _d;
                    } else if (_s.flag(((((("0" : GoString))).code : GoRune))) && !_precisionSet) {
                        _zeros = _d;
                    } else {
                        _left = _d;
                    };
                };
            };
        };
        _writeMultiple(_s, (((" " : GoString))), _left);
        _writeMultiple(_s, _sign, ((1 : GoInt)));
        _writeMultiple(_s, _prefix, ((1 : GoInt)));
        _writeMultiple(_s, ((("0" : GoString))), _zeros);
        _s.write(_digits);
        _writeMultiple(_s, (((" " : GoString))), _right);
    }
    public function toString():GoString {
        var _x = this;
        _x;
        return _x.text(((10 : GoInt)));
    }
    public function append(_buf:Slice<GoByte>, _base:GoInt):Slice<GoByte> {
        var _x = this;
        _x;
        if (_x == null) {
            return (_buf != null ? _buf.__append__(...((("<nil>" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("<nil>" : GoString))).__toArray__()));
        };
        return (_buf != null ? _buf.__append__(..._x._abs._itoa(_x._neg, _base).__toArray__()) : new Slice<GoUInt8>(..._x._abs._itoa(_x._neg, _base).__toArray__()));
    }
    public function text(_base:GoInt):GoString {
        var _x = this;
        _x;
        if (_x == null) {
            return ((("<nil>" : GoString)));
        };
        return ((_x._abs._itoa(_x._neg, _base) : GoString));
    }
    public function sqrt(_x:Int_):Int_ {
        var _z = this;
        _z;
        if (_x._neg) {
            throw Go.toInterface(((("square root of negative number" : GoString))));
        };
        _z._neg = false;
        _z._abs = (_z._abs._sqrt((_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._abs._sqrt((_x._abs == null ? null : _x._abs.__copy__())).__copy__());
        return _z;
    }
    public function not(_x:Int_):Int_ {
        var _z = this;
        _z;
        if (_x._neg) {
            _z._abs = (_z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            _z._neg = false;
            return _z;
        };
        _z._abs = (_z._abs._add((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._add((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        _z._neg = true;
        return _z;
    }
    public function xor(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        if (_x._neg == _y._neg) {
            if (_x._neg) {
                var _x1:T_nat = (((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                _z._abs = (_z._abs._xor((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._xor((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__());
                _z._neg = false;
                return _z;
            };
            _z._abs = (_z._abs._xor((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._xor((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
            _z._neg = false;
            return _z;
        };
        if (_x._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        _z._abs = (_z._abs._add((_z._abs._xor((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._xor((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._add((_z._abs._xor((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._xor((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        _z._neg = true;
        return _z;
    }
    public function or(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        if (_x._neg == _y._neg) {
            if (_x._neg) {
                var _x1:T_nat = (((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                _z._abs = (_z._abs._add((_z._abs._and((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._and((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._add((_z._abs._and((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._and((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                _z._neg = true;
                return _z;
            };
            _z._abs = (_z._abs._or((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._or((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
            _z._neg = false;
            return _z;
        };
        if (_x._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        _z._abs = (_z._abs._add((_z._abs._andNot((_y1 == null ? null : _y1.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._abs._andNot((_y1 == null ? null : _y1.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._add((_z._abs._andNot((_y1 == null ? null : _y1.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._abs._andNot((_y1 == null ? null : _y1.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        _z._neg = true;
        return _z;
    }
    public function andNot(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        if (_x._neg == _y._neg) {
            if (_x._neg) {
                var _x1:T_nat = (((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                _z._abs = (_z._abs._andNot((_y1 == null ? null : _y1.__copy__()), (_x1 == null ? null : _x1.__copy__())) == null ? null : _z._abs._andNot((_y1 == null ? null : _y1.__copy__()), (_x1 == null ? null : _x1.__copy__())).__copy__());
                _z._neg = false;
                return _z;
            };
            _z._abs = (_z._abs._andNot((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._andNot((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
            _z._neg = false;
            return _z;
        };
        if (_x._neg) {
            var _x1:T_nat = (((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            _z._abs = (_z._abs._add((_z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._add((_z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            _z._neg = true;
            return _z;
        };
        var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        _z._abs = (_z._abs._and((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._and((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__());
        _z._neg = false;
        return _z;
    }
    public function and(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        if (_x._neg == _y._neg) {
            if (_x._neg) {
                var _x1:T_nat = (((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                _z._abs = (_z._abs._add((_z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._add((_z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._or((_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                _z._neg = true;
                return _z;
            };
            _z._abs = (_z._abs._and((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._and((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
            _z._neg = false;
            return _z;
        };
        if (_x._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1:T_nat = (((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_y._abs == null ? null : _y._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        _z._abs = (_z._abs._andNot((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _z._abs._andNot((_x._abs == null ? null : _x._abs.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__());
        _z._neg = false;
        return _z;
    }
    public function setBit(_x:Int_, _i:GoInt, _b:GoUInt):Int_ {
        var _z = this;
        _z;
        if (_i < ((0 : GoInt))) {
            throw Go.toInterface(((("negative bit index" : GoString))));
        };
        if (_x._neg) {
            var _t:T_nat = (_z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            _t = (_t._setBit((_t == null ? null : _t.__copy__()), ((_i : GoUInt)), _b ^ ((1 : GoUInt))) == null ? null : _t._setBit((_t == null ? null : _t.__copy__()), ((_i : GoUInt)), _b ^ ((1 : GoUInt))).__copy__());
            _z._abs = (_t._add((_t == null ? null : _t.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _t._add((_t == null ? null : _t.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            _z._neg = (_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt));
            return _z;
        };
        _z._abs = (_z._abs._setBit((_x._abs == null ? null : _x._abs.__copy__()), ((_i : GoUInt)), _b) == null ? null : _z._abs._setBit((_x._abs == null ? null : _x._abs.__copy__()), ((_i : GoUInt)), _b).__copy__());
        _z._neg = false;
        return _z;
    }
    public function bit(_i:GoInt):GoUInt {
        var _x = this;
        _x;
        if (_i == ((0 : GoInt))) {
            if ((_x._abs != null ? _x._abs.length : ((0 : GoInt))) > ((0 : GoInt))) {
                return ((((_x._abs != null ? _x._abs[((0 : GoInt))] : new Word()) & ((1 : GoUInt))) : GoUInt));
            };
            return ((0 : GoUInt));
        };
        if (_i < ((0 : GoInt))) {
            throw Go.toInterface(((("negative bit index" : GoString))));
        };
        if (_x._neg) {
            var _t:T_nat = (((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            return _t._bit(((_i : GoUInt))) ^ ((1 : GoUInt));
        };
        return _x._abs._bit(((_i : GoUInt)));
    }
    public function rsh(_x:Int_, _n:GoUInt):Int_ {
        var _z = this;
        _z;
        if (_x._neg) {
            var _t:T_nat = (_z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            _t = (_t._shr((_t == null ? null : _t.__copy__()), _n) == null ? null : _t._shr((_t == null ? null : _t.__copy__()), _n).__copy__());
            _z._abs = (_t._add((_t == null ? null : _t.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _t._add((_t == null ? null : _t.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            _z._neg = true;
            return _z;
        };
        _z._abs = (_z._abs._shr((_x._abs == null ? null : _x._abs.__copy__()), _n) == null ? null : _z._abs._shr((_x._abs == null ? null : _x._abs.__copy__()), _n).__copy__());
        _z._neg = false;
        return _z;
    }
    public function lsh(_x:Int_, _n:GoUInt):Int_ {
        var _z = this;
        _z;
        _z._abs = (_z._abs._shl((_x._abs == null ? null : _x._abs.__copy__()), _n) == null ? null : _z._abs._shl((_x._abs == null ? null : _x._abs.__copy__()), _n).__copy__());
        _z._neg = _x._neg;
        return _z;
    }
    public function modSqrt(_x:Int_, _p:Int_):Int_ {
        var _z = this;
        _z;
        {
            var __switchIndex__ = -1;
            while (true) {
                if (jacobi(_x, _p) == ((-1 : GoInt))) {
                    return null;
                    break;
                } else if (jacobi(_x, _p) == ((0 : GoInt))) {
                    return _z.setInt64(((0 : GoInt64)));
                    break;
                } else if (jacobi(_x, _p) == ((1 : GoInt))) {
                    break;
                    break;
                };
                break;
            };
        };
        if (_x._neg || (_x.cmp(_p) >= ((0 : GoInt)))) {
            _x = Go.pointer(new Int_()).mod(_x, _p);
        };
        if (((_p._abs != null ? _p._abs[((0 : GoInt))] : new Word()) % ((4 : GoUInt))) == ((3 : GoUInt))) {
            return _z._modSqrt3Mod4Prime(_x, _p);
        } else if (((_p._abs != null ? _p._abs[((0 : GoInt))] : new Word()) % ((8 : GoUInt))) == ((5 : GoUInt))) {
            return _z._modSqrt5Mod8Prime(_x, _p);
        } else {
            return _z._modSqrtTonelliShanks(_x, _p);
        };
    }
    public function _modSqrtTonelliShanks(_x:Int_, _p:Int_):Int_ {
        var _z = this;
        _z;
        var _s:Int_ = new Int_();
        _s.sub(_p, _intOne);
        var _e:GoUInt = _s._abs._trailingZeroBits();
        _s.rsh(_s, _e);
        var _n:Int_ = new Int_();
        _n.setInt64(((2 : GoInt64)));
        while (jacobi(_n, _p) != ((-1 : GoInt))) {
            _n.add(_n, _intOne);
        };
        var _y:Int_ = new Int_(), _b:Int_ = new Int_(), _g:Int_ = new Int_(), _t:Int_ = new Int_();
        _y.add(_s, _intOne);
        _y.rsh(_y, ((1 : GoUInt)));
        _y.exp(_x, _y, _p);
        _b.exp(_x, _s, _p);
        _g.exp(_n, _s, _p);
        var _r:GoUInt = _e;
        while (true) {
            var _m:GoUInt = ((0 : GoUInt));
            _t.set(_b);
            while (_t.cmp(_intOne) != ((0 : GoInt))) {
                _t.mul(_t, _t).mod(_t, _p);
                _m++;
            };
            if (_m == ((0 : GoUInt))) {
                return _z.set(_y);
            };
            _t.setInt64(((0 : GoInt64))).setBit(_t, ((((_r - _m) - ((1 : GoUInt))) : GoInt)), ((1 : GoUInt))).exp(_g, _t, _p);
            _g.mul(_t, _t).mod(_g, _p);
            _y.mul(_y, _t).mod(_y, _p);
            _b.mul(_b, _g).mod(_b, _p);
            _r = _m;
        };
    }
    public function _modSqrt5Mod8Prime(_x:Int_, _p:Int_):Int_ {
        var _z = this;
        _z;
        var _e:Int_ = Go.pointer(new Int_()).rsh(_p, ((3 : GoUInt)));
        var _tx:Int_ = Go.pointer(new Int_()).lsh(_x, ((1 : GoUInt)));
        var _alpha:Int_ = Go.pointer(new Int_()).exp(_tx, _e, _p);
        var _beta:Int_ = Go.pointer(new Int_()).mul(_alpha, _alpha);
        _beta.mod(_beta, _p);
        _beta.mul(_beta, _tx);
        _beta.mod(_beta, _p);
        _beta.sub(_beta, _intOne);
        _beta.mul(_beta, _x);
        _beta.mod(_beta, _p);
        _beta.mul(_beta, _alpha);
        _z.mod(_beta, _p);
        return _z;
    }
    public function _modSqrt3Mod4Prime(_x:Int_, _p:Int_):Int_ {
        var _z = this;
        _z;
        var _e:Int_ = Go.pointer(new Int_()).add(_p, _intOne);
        _e.rsh(_e, ((2 : GoUInt)));
        _z.exp(_x, _e, _p);
        return _z;
    }
    public function modInverse(_g:Int_, _n:Int_):Int_ {
        var _z = this;
        _z;
        if (_n._neg) {
            var _n2:Int_ = new Int_();
            _n = _n2.neg(_n);
        };
        if (_g._neg) {
            var _g2:Int_ = new Int_();
            _g = _g2.mod(_g, _n);
        };
        var _d:Int_ = new Int_(), _x:Int_ = new Int_();
        _d.gcd(_x, null, _g, _n);
        if (_d.cmp(_intOne) != ((0 : GoInt))) {
            return null;
        };
        if (_x._neg) {
            _z.add(_x, _n);
        } else {
            _z.set(_x);
        };
        return _z;
    }
    public function rand(_rnd:rand.Rand.Rand, _n:Int_):Int_ {
        var _z = this;
        _z;
        _z._neg = false;
        if (_n._neg || ((_n._abs != null ? _n._abs.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            _z._abs = null;
            return _z;
        };
        _z._abs = (_z._abs._random(_rnd, (_n._abs == null ? null : _n._abs.__copy__()), _n._abs._bitLen()) == null ? null : _z._abs._random(_rnd, (_n._abs == null ? null : _n._abs.__copy__()), _n._abs._bitLen()).__copy__());
        return _z;
    }
    public function _lehmerGCD(_x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        var _z = this;
        _z;
        var a:Int_ = ((null : Int_)), b:Int_ = ((null : Int_)), ua:Int_ = ((null : Int_)), ub:Int_ = ((null : Int_));
        a = Go.pointer(new Int_()).abs(_a);
        b = Go.pointer(new Int_()).abs(_b);
        var _extended:Bool = (_x != null) || (_y != null);
        if (_extended) {
            ua = Go.pointer(new Int_()).setInt64(((1 : GoInt64)));
            ub = Go.pointer(new Int_());
        };
        var _q:Int_ = Go.pointer(new Int_());
        var _r:Int_ = Go.pointer(new Int_());
        var _s:Int_ = Go.pointer(new Int_());
        var _t:Int_ = Go.pointer(new Int_());
        if (a._abs._cmp((b._abs == null ? null : b._abs.__copy__())) < ((0 : GoInt))) {
            {
                final __tmp__0 = b;
                final __tmp__1 = a;
                a = __tmp__0;
                b = __tmp__1;
            };
            {
                final __tmp__0 = ua;
                final __tmp__1 = ub;
                ub = __tmp__0;
                ua = __tmp__1;
            };
        };
        while ((b._abs != null ? b._abs.length : ((0 : GoInt))) > ((1 : GoInt))) {
            var __tmp__ = _lehmerSimulate(a, b), _u0:Word = __tmp__._0, _u1:Word = __tmp__._1, _v0:Word = __tmp__._2, _v1:Word = __tmp__._3, _even:Bool = __tmp__._4;
            if (_v0 != ((0 : GoUInt))) {
                _lehmerUpdate(a,
b,
_q,
_r,
_s,
_t,
_u0,
_u1,
_v0,
_v1,
_even);
                if (_extended) {
                    _lehmerUpdate(ua,
ub,
_q,
_r,
_s,
_t,
_u0,
_u1,
_v0,
_v1,
_even);
                };
            } else {
                _euclidUpdate(a, b, ua, ub, _q, _r, _s, _t, _extended);
            };
        };
        if ((b._abs != null ? b._abs.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((a._abs != null ? a._abs.length : ((0 : GoInt))) > ((1 : GoInt))) {
                _euclidUpdate(a, b, ua, ub, _q, _r, _s, _t, _extended);
            };
            if ((b._abs != null ? b._abs.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _aWord:Word = (a._abs != null ? a._abs[((0 : GoInt))] : new Word()), _bWord:Word = (b._abs != null ? b._abs[((0 : GoInt))] : new Word());
                if (_extended) {
                    var _ua:Word = new Word(), _ub:Word = new Word(), _va:Word = new Word(), _vb:Word = new Word();
                    {
                        final __tmp__0 = ((1 : GoUInt));
                        final __tmp__1 = ((0 : GoUInt));
                        _ua = __tmp__0;
                        _ub = __tmp__1;
                    };
                    {
                        final __tmp__0 = ((0 : GoUInt));
                        final __tmp__1 = ((1 : GoUInt));
                        _va = __tmp__0;
                        _vb = __tmp__1;
                    };
                    var _even:Bool = true;
                    while (_bWord != ((0 : GoUInt))) {
                        var _q:Word = _aWord / _bWord, _r:Word = _aWord % _bWord;
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = _r;
                            _aWord = __tmp__0;
                            _bWord = __tmp__1;
                        };
                        {
                            final __tmp__0 = _ub;
                            final __tmp__1 = _ua + (_q * _ub);
                            _ua = __tmp__0;
                            _ub = __tmp__1;
                        };
                        {
                            final __tmp__0 = _vb;
                            final __tmp__1 = _va + (_q * _vb);
                            _va = __tmp__0;
                            _vb = __tmp__1;
                        };
                        _even = !_even;
                    };
                    _t._abs = (_t._abs._setWord(_ua) == null ? null : _t._abs._setWord(_ua).__copy__());
                    _s._abs = (_s._abs._setWord(_va) == null ? null : _s._abs._setWord(_va).__copy__());
                    _t._neg = !_even;
                    _s._neg = _even;
                    _t.mul(ua, _t);
                    _s.mul(ub, _s);
                    ua.add(_t, _s);
                } else {
                    while (_bWord != ((0 : GoUInt))) {
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = _aWord % _bWord;
                            _aWord = __tmp__0;
                            _bWord = __tmp__1;
                        };
                    };
                };
                if (a._abs != null) a._abs[((0 : GoInt))] = _aWord;
            };
        };
        var _negA:Bool = _a._neg;
        if (_y != null) {
            if (_y == _b) {
                b.set(_b);
            } else {
                b = _b;
            };
            _y.mul(_a, ua);
            if (_negA) {
                _y._neg = !_y._neg;
            };
            _y.sub(a, _y);
            _y.div(_y, b);
        };
        if (_x != null) {
            {
                var __tmp__ = (ua == null ? null : ua.__copy__());
                _x._neg = __tmp__._neg;
                _x._abs = __tmp__._abs;
            };
            if (_negA) {
                _x._neg = !_x._neg;
            };
        };
        {
            var __tmp__ = (a == null ? null : a.__copy__());
            _z._neg = __tmp__._neg;
            _z._abs = __tmp__._abs;
        };
        return _z;
    }
    public function gcd(_x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        var _z = this;
        _z;
        if (((_a._abs != null ? _a._abs.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_b._abs != null ? _b._abs.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            var _lenA:GoInt = (_a._abs != null ? _a._abs.length : ((0 : GoInt))), _lenB:GoInt = (_b._abs != null ? _b._abs.length : ((0 : GoInt))), _negA:Bool = _a._neg, _negB:Bool = _b._neg;
            if (_lenA == ((0 : GoInt))) {
                _z.set(_b);
            } else {
                _z.set(_a);
            };
            _z._neg = false;
            if (_x != null) {
                if (_lenA == ((0 : GoInt))) {
                    _x.setUint64(((0 : GoUInt64)));
                } else {
                    _x.setUint64(((1 : GoUInt64)));
                    _x._neg = _negA;
                };
            };
            if (_y != null) {
                if (_lenB == ((0 : GoInt))) {
                    _y.setUint64(((0 : GoUInt64)));
                } else {
                    _y.setUint64(((1 : GoUInt64)));
                    _y._neg = _negB;
                };
            };
            return _z;
        };
        return _z._lehmerGCD(_x, _y, _a, _b);
    }
    public function exp(_x:Int_, _y:Int_, _m:Int_):Int_ {
        var _z = this;
        _z;
        var _xWords:T_nat = (_x._abs == null ? null : _x._abs.__copy__());
        if (_y._neg) {
            if ((_m == null) || ((_m._abs != null ? _m._abs.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                return _z.setInt64(((1 : GoInt64)));
            };
            var _inverse:Int_ = Go.pointer(new Int_()).modInverse(_x, _m);
            if (_inverse == null) {
                return null;
            };
            _xWords = (_inverse._abs == null ? null : _inverse._abs.__copy__());
        };
        var _yWords:T_nat = (_y._abs == null ? null : _y._abs.__copy__());
        var _mWords:T_nat = new T_nat();
        if (_m != null) {
            _mWords = (_m._abs == null ? null : _m._abs.__copy__());
        };
        _z._abs = (_z._abs._expNN((_xWords == null ? null : _xWords.__copy__()), (_yWords == null ? null : _yWords.__copy__()), (_mWords == null ? null : _mWords.__copy__())) == null ? null : _z._abs._expNN((_xWords == null ? null : _xWords.__copy__()), (_yWords == null ? null : _yWords.__copy__()), (_mWords == null ? null : _mWords.__copy__())).__copy__());
        _z._neg = ((((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && _x._neg) && ((_yWords != null ? _yWords.length : ((0 : GoInt))) > ((0 : GoInt)))) && (((_yWords != null ? _yWords[((0 : GoInt))] : new Word()) & ((1 : GoUInt))) == ((1 : GoUInt)));
        if (_z._neg && ((_mWords != null ? _mWords.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            _z._abs = (_z._abs._sub((_mWords == null ? null : _mWords.__copy__()), (_z._abs == null ? null : _z._abs.__copy__())) == null ? null : _z._abs._sub((_mWords == null ? null : _mWords.__copy__()), (_z._abs == null ? null : _z._abs.__copy__())).__copy__());
            _z._neg = false;
        };
        return _z;
    }
    public function trailingZeroBits():GoUInt {
        var _x = this;
        _x;
        return _x._abs._trailingZeroBits();
    }
    public function bitLen():GoInt {
        var _x = this;
        _x;
        return _x._abs._bitLen();
    }
    public function fillBytes(_buf:Slice<GoByte>):Slice<GoByte> {
        var _x = this;
        _x;
        for (_i => _ in _buf) {
            if (_buf != null) _buf[_i] = ((0 : GoUInt8));
        };
        _x._abs._bytes(_buf);
        return _buf;
    }
    public function bytes():Slice<GoByte> {
        var _x = this;
        _x;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_x._abs != null ? _x._abs.length : ((0 : GoInt))) * ((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return _buf.__slice__(_x._abs._bytes(_buf));
    }
    public function setBytes(_buf:Slice<GoByte>):Int_ {
        var _z = this;
        _z;
        _z._abs = (_z._abs._setBytes(_buf) == null ? null : _z._abs._setBytes(_buf).__copy__());
        _z._neg = false;
        return _z;
    }
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Int_; var _1 : Bool; } {
        var _z = this;
        _z;
        {
            var __tmp__ = _z._scan(_r, _base), _:Int_ = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : null, _1 : false };
            };
        };
        {
            var __tmp__ = _r.readByte(), _:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != stdgo.io.Io.eof) {
                return { _0 : null, _1 : false };
            };
        };
        return { _0 : _z, _1 : true };
    }
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Int_; var _1 : Bool; } {
        var _z = this;
        _z;
        return _z._setFromScanner(stdgo.strings.Strings.newReader(_s), _base);
    }
    public function isUint64():Bool {
        var _x = this;
        _x;
        return !_x._neg && ((_x._abs != null ? _x._abs.length : ((0 : GoInt))) <= ((2 : GoInt)));
    }
    public function isInt64():Bool {
        var _x = this;
        _x;
        if ((_x._abs != null ? _x._abs.length : ((0 : GoInt))) <= ((2 : GoInt))) {
            var _w:GoInt64 = ((_low64((_x._abs == null ? null : _x._abs.__copy__())) : GoInt64));
            return (_w >= ((0 : GoInt64))) || (_x._neg && (_w == -_w));
        };
        return false;
    }
    public function uint64():GoUInt64 {
        var _x = this;
        _x;
        return _low64((_x._abs == null ? null : _x._abs.__copy__()));
    }
    public function int64():GoInt64 {
        var _x = this;
        _x;
        var _v:GoInt64 = ((_low64((_x._abs == null ? null : _x._abs.__copy__())) : GoInt64));
        if (_x._neg) {
            _v = -_v;
        };
        return _v;
    }
    public function cmpAbs(_y:Int_):GoInt {
        var _x = this;
        _x;
        return _x._abs._cmp((_y._abs == null ? null : _y._abs.__copy__()));
    }
    public function cmp(_y:Int_):GoInt {
        var _x = this;
        _x;
        var _r:GoInt = ((0 : GoInt));
        if (_x == _y) {} else if (_x._neg == _y._neg) {
            _r = _x._abs._cmp((_y._abs == null ? null : _y._abs.__copy__()));
            if (_x._neg) {
                _r = -_r;
            };
        } else if (_x._neg) {
            _r = ((-1 : GoInt));
        } else {
            _r = ((1 : GoInt));
        };
        return _r;
    }
    public function divMod(_x:Int_, _y:Int_, _m:Int_):{ var _0 : Int_; var _1 : Int_; } {
        var _z = this;
        _z;
        var _y0:Int_ = _y;
        if ((_z == _y) || _alias((_z._abs == null ? null : _z._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__()))) {
            _y0 = Go.pointer(new Int_()).set(_y);
        };
        _z.quoRem(_x, _y, _m);
        if (_m._neg) {
            if (_y0._neg) {
                _z.add(_z, _intOne);
                _m.sub(_m, _y0);
            } else {
                _z.sub(_z, _intOne);
                _m.add(_m, _y0);
            };
        };
        return { _0 : _z, _1 : _m };
    }
    public function mod(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        var _y0:Int_ = _y;
        if ((_z == _y) || _alias((_z._abs == null ? null : _z._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__()))) {
            _y0 = Go.pointer(new Int_()).set(_y);
        };
        var _q:Int_ = new Int_();
        _q.quoRem(_x, _y, _z);
        if (_z._neg) {
            if (_y0._neg) {
                _z.sub(_z, _y0);
            } else {
                _z.add(_z, _y0);
            };
        };
        return _z;
    }
    public function div(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        var _y_neg:Bool = _y._neg;
        var _r:Int_ = new Int_();
        _z.quoRem(_x, _y, _r);
        if (_r._neg) {
            if (_y_neg) {
                _z.add(_z, _intOne);
            } else {
                _z.sub(_z, _intOne);
            };
        };
        return _z;
    }
    public function quoRem(_x:Int_, _y:Int_, _r:Int_):{ var _0 : Int_; var _1 : Int_; } {
        var _z = this;
        _z;
        {
            var __tmp__ = _z._abs._div((_r._abs == null ? null : _r._abs.__copy__()), (_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__()));
            _z._abs = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _r._abs = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
        };
        {
            final __tmp__0 = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && (_x._neg != _y._neg);
            final __tmp__1 = ((_r._abs != null ? _r._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && _x._neg;
            _z._neg = __tmp__0;
            _r._neg = __tmp__1;
        };
        return { _0 : _z, _1 : _r };
    }
    public function rem(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        {
            var __tmp__ = ((new T_nat() : T_nat))._div((_z._abs == null ? null : _z._abs.__copy__()), (_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__()));
            _z._abs = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
        };
        _z._neg = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && _x._neg;
        return _z;
    }
    public function quo(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        {
            var __tmp__ = _z._abs._div(null, (_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__()));
            _z._abs = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
        };
        _z._neg = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && (_x._neg != _y._neg);
        return _z;
    }
    public function binomial(_n:GoInt64, _k:GoInt64):Int_ {
        var _z = this;
        _z;
        if (((_n / ((2 : GoInt64))) < _k) && (_k <= _n)) {
            _k = _n - _k;
        };
        var _a:Int_ = new Int_(), _b:Int_ = new Int_();
        _a.mulRange((_n - _k) + ((1 : GoInt64)), _n);
        _b.mulRange(((1 : GoInt64)), _k);
        return _z.quo(_a, _b);
    }
    public function mulRange(_a:GoInt64, _b:GoInt64):Int_ {
        var _z = this;
        _z;
        if (_a > _b) {
            return _z.setInt64(((1 : GoInt64)));
        } else if ((_a <= ((0 : GoInt64))) && (_b >= ((0 : GoInt64)))) {
            return _z.setInt64(((0 : GoInt64)));
        };
        var _neg:Bool = false;
        if (_a < ((0 : GoInt64))) {
            _neg = ((_b - _a) & ((1 : GoInt64))) == ((0 : GoInt64));
            {
                final __tmp__0 = -_b;
                final __tmp__1 = -_a;
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        _z._abs = (_z._abs._mulRange(((_a : GoUInt64)), ((_b : GoUInt64))) == null ? null : _z._abs._mulRange(((_a : GoUInt64)), ((_b : GoUInt64))).__copy__());
        _z._neg = _neg;
        return _z;
    }
    public function mul(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        if (_x == _y) {
            _z._abs = (_z._abs._sqr((_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._abs._sqr((_x._abs == null ? null : _x._abs.__copy__())).__copy__());
            _z._neg = false;
            return _z;
        };
        _z._abs = (_z._abs._mul((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._mul((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
        _z._neg = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && (_x._neg != _y._neg);
        return _z;
    }
    public function sub(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        var _neg:Bool = _x._neg;
        if (_x._neg != _y._neg) {
            _z._abs = (_z._abs._add((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._add((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
        } else {
            if (_x._abs._cmp((_y._abs == null ? null : _y._abs.__copy__())) >= ((0 : GoInt))) {
                _z._abs = (_z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
            } else {
                _neg = !_neg;
                _z._abs = (_z._abs._sub((_y._abs == null ? null : _y._abs.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._abs._sub((_y._abs == null ? null : _y._abs.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())).__copy__());
            };
        };
        _z._neg = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && _neg;
        return _z;
    }
    public function add(_x:Int_, _y:Int_):Int_ {
        var _z = this;
        _z;
        var _neg:Bool = _x._neg;
        if (_x._neg == _y._neg) {
            _z._abs = (_z._abs._add((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._add((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
        } else {
            if (_x._abs._cmp((_y._abs == null ? null : _y._abs.__copy__())) >= ((0 : GoInt))) {
                _z._abs = (_z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())) == null ? null : _z._abs._sub((_x._abs == null ? null : _x._abs.__copy__()), (_y._abs == null ? null : _y._abs.__copy__())).__copy__());
            } else {
                _neg = !_neg;
                _z._abs = (_z._abs._sub((_y._abs == null ? null : _y._abs.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._abs._sub((_y._abs == null ? null : _y._abs.__copy__()), (_x._abs == null ? null : _x._abs.__copy__())).__copy__());
            };
        };
        _z._neg = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && _neg;
        return _z;
    }
    public function neg(_x:Int_):Int_ {
        var _z = this;
        _z;
        _z.set(_x);
        _z._neg = ((_z._abs != null ? _z._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && !_z._neg;
        return _z;
    }
    public function abs(_x:Int_):Int_ {
        var _z = this;
        _z;
        _z.set(_x);
        _z._neg = false;
        return _z;
    }
    public function setBits(_abs:Slice<Word>):Int_ {
        var _z = this;
        _z;
        _z._abs = (((_abs : T_nat))._norm() == null ? null : ((_abs : T_nat))._norm().__copy__());
        _z._neg = false;
        return _z;
    }
    public function bits():Slice<Word> {
        var _x = this;
        _x;
        return _x._abs;
    }
    public function set(_x:Int_):Int_ {
        var _z = this;
        _z;
        if (_z != _x) {
            _z._abs = (_z._abs._set((_x._abs == null ? null : _x._abs.__copy__())) == null ? null : _z._abs._set((_x._abs == null ? null : _x._abs.__copy__())).__copy__());
            _z._neg = _x._neg;
        };
        return _z;
    }
    public function setUint64(_x:GoUInt64):Int_ {
        var _z = this;
        _z;
        _z._abs = (_z._abs._setUint64(_x) == null ? null : _z._abs._setUint64(_x).__copy__());
        _z._neg = false;
        return _z;
    }
    public function setInt64(_x:GoInt64):Int_ {
        var _z = this;
        _z;
        var _neg:Bool = false;
        if (_x < ((0 : GoInt64))) {
            _neg = true;
            _x = -_x;
        };
        _z._abs = (_z._abs._setUint64(((_x : GoUInt64))) == null ? null : _z._abs._setUint64(((_x : GoUInt64))).__copy__());
        _z._neg = _neg;
        return _z;
    }
    public function sign():GoInt {
        var _x = this;
        _x;
        if ((_x._abs != null ? _x._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoInt));
        };
        if (_x._neg) {
            return ((-1 : GoInt));
        };
        return ((1 : GoInt));
    }
    public var _neg : Bool = false;
    public var _abs : T_nat = new T_nat();
    public function new(?_neg:Bool, ?_abs:T_nat) {
        if (_neg != null) this._neg = _neg;
        if (_abs != null) this._abs = _abs;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Int_(_neg, _abs);
    }
}
@:structInit @:using(Big.T_byteReader_static_extension) class T_byteReader {
    public function unreadByte():Error {
        var _r = this;
        (_r == null ? null : _r.__copy__());
        return _r.unreadRune();
    }
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _r = this;
        (_r == null ? null : _r.__copy__());
        var __tmp__ = _r.readRune(), _ch:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if ((_size != ((1 : GoInt))) && (_err == null)) {
            _err = stdgo.fmt.Fmt.errorf(((("invalid rune %#U" : GoString))), Go.toInterface(_ch));
        };
        return { _0 : ((_ch : GoByte)), _1 : _err };
    }
    @:embedded
    public var scanState : stdgo.fmt.Fmt.ScanState = ((null : stdgo.fmt.Fmt.ScanState));
    public function new(?scanState:stdgo.fmt.Fmt.ScanState) {
        if (scanState != null) this.scanState = scanState;
    }
    public function read(_buf:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return scanState.read(_buf);
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return scanState.readRune();
    public function skipSpace() scanState.skipSpace();
    public function token(_skipSpace:Bool, _f:GoInt32 -> Bool):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return scanState.token(_skipSpace, _f);
    public function unreadRune():stdgo.Error return scanState.unreadRune();
    public function width():{ var _0 : GoInt; var _1 : Bool; } return scanState.width();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_byteReader(scanState);
    }
}
@:named @:using(Big.T_nat_static_extension) typedef T_nat = Slice<Word>;
@:structInit class T_divisor {
    public var _bbb : T_nat = new T_nat();
    public var _nbits : GoInt = ((0 : GoInt));
    public var _ndigits : GoInt = ((0 : GoInt));
    public function new(?_bbb:T_nat, ?_nbits:GoInt, ?_ndigits:GoInt) {
        if (_bbb != null) this._bbb = _bbb;
        if (_nbits != null) this._nbits = _nbits;
        if (_ndigits != null) this._ndigits = _ndigits;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_divisor(_bbb, _nbits, _ndigits);
    }
}
@:structInit @:using(Big.Rat_static_extension) class Rat {
    public function unmarshalText(_text:Slice<GoByte>):Error {
        var _z = this;
        _z;
        {
            var __tmp__ = _z.setString(((_text : GoString))), _:Rat = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf(((("math/big: cannot unmarshal %q into a *big.Rat" : GoString))), Go.toInterface(_text));
            };
        };
        return ((null : stdgo.Error));
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = this;
        _x;
        var _text:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        if (_x.isInt()) {
            return _x._a.marshalText();
        };
        return { _0 : _x._marshal(), _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_buf:Slice<GoByte>):Error {
        var _z = this;
        _z;
        if ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            {
                var __tmp__ = ((new Rat() : Rat));
                _z._a = __tmp__._a;
                _z._b = __tmp__._b;
            };
            return ((null : stdgo.Error));
        };
        var _b:GoUInt8 = (_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8)));
        if ((_b >> ((1 : GoUnTypedInt))) != ((1 : GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(((("Rat.GobDecode: encoding version %d not supported" : GoString))), Go.toInterface(_b >> ((1 : GoUnTypedInt))));
        };
        {};
        var _i:GoUInt32 = ((5 : GoUInt32)) + stdgo.encoding.binary.Binary.bigEndian.uint32(_buf.__slice__(((1 : GoInt)), ((5 : GoInt))));
        _z._a._neg = (_b & ((1 : GoUInt8))) != ((0 : GoUInt8));
        _z._a._abs = (_z._a._abs._setBytes(_buf.__slice__(((5 : GoInt)), _i)) == null ? null : _z._a._abs._setBytes(_buf.__slice__(((5 : GoInt)), _i)).__copy__());
        _z._b._abs = (_z._b._abs._setBytes(_buf.__slice__(_i)) == null ? null : _z._b._abs._setBytes(_buf.__slice__(_i)).__copy__());
        return ((null : stdgo.Error));
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = this;
        _x;
        if (_x == null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) + (((_x._a._abs != null ? _x._a._abs.length : ((0 : GoInt))) + (_x._b._abs != null ? _x._b._abs.length : ((0 : GoInt)))) * ((4 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _i:GoInt = _x._b._abs._bytes(_buf);
        var _j:GoInt = _x._a._abs._bytes(_buf.__slice__(0, _i));
        var _n:GoInt = _i - _j;
        if (((((_n : GoUInt32)) : GoInt)) != _n) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("Rat.GobEncode: numerator too large" : GoString)))) };
        };
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_buf.__slice__(_j - ((4 : GoInt)), _j), ((_n : GoUInt32)));
        _j = _j - (((5 : GoInt)));
        var _b:GoUInt8 = ((2 : GoUInt8));
        if (_x._a._neg) {
            _b = _b | (((1 : GoUInt8)));
        };
        if (_buf != null) _buf[_j] = _b;
        return { _0 : _buf.__slice__(_j), _1 : ((null : stdgo.Error)) };
    }
    public function floatString(_prec:GoInt):GoString {
        var _x = this;
        _x;
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_x.isInt()) {
            _buf = _x._a.append(_buf, ((10 : GoInt)));
            if (_prec > ((0 : GoInt))) {
                _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
                {
                    var _i:GoInt = _prec;
                    Go.cfor(_i > ((0 : GoInt)), _i--, {
                        _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
                    });
                };
            };
            return ((_buf : GoString));
        };
        var __tmp__ = ((new T_nat() : T_nat))._div(((new T_nat() : T_nat)), (_x._a._abs == null ? null : _x._a._abs.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__())), _q:T_nat = __tmp__._0, _r:T_nat = __tmp__._1;
        var _p:T_nat = (_natOne == null ? null : _natOne.__copy__());
        if (_prec > ((0 : GoInt))) {
            _p = (((new T_nat() : T_nat))._expNN((_natTen == null ? null : _natTen.__copy__()), (((new T_nat() : T_nat))._setUint64(((_prec : GoUInt64))) == null ? null : ((new T_nat() : T_nat))._setUint64(((_prec : GoUInt64))).__copy__()), null) == null ? null : ((new T_nat() : T_nat))._expNN((_natTen == null ? null : _natTen.__copy__()), (((new T_nat() : T_nat))._setUint64(((_prec : GoUInt64))) == null ? null : ((new T_nat() : T_nat))._setUint64(((_prec : GoUInt64))).__copy__()), null).__copy__());
        };
        _r = (_r._mul((_r == null ? null : _r.__copy__()), (_p == null ? null : _p.__copy__())) == null ? null : _r._mul((_r == null ? null : _r.__copy__()), (_p == null ? null : _p.__copy__())).__copy__());
        var __tmp__ = _r._div(((new T_nat() : T_nat)), (_r == null ? null : _r.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__())), _r:T_nat = __tmp__._0, _r2:T_nat = __tmp__._1;
        _r2 = (_r2._add((_r2 == null ? null : _r2.__copy__()), (_r2 == null ? null : _r2.__copy__())) == null ? null : _r2._add((_r2 == null ? null : _r2.__copy__()), (_r2 == null ? null : _r2.__copy__())).__copy__());
        if (_x._b._abs._cmp((_r2 == null ? null : _r2.__copy__())) <= ((0 : GoInt))) {
            _r = (_r._add((_r == null ? null : _r.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _r._add((_r == null ? null : _r.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            if (_r._cmp((_p == null ? null : _p.__copy__())) >= ((0 : GoInt))) {
                _q = (((new T_nat() : T_nat))._add((_q == null ? null : _q.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._add((_q == null ? null : _q.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
                _r = (((new T_nat() : T_nat))._sub((_r == null ? null : _r.__copy__()), (_p == null ? null : _p.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_r == null ? null : _r.__copy__()), (_p == null ? null : _p.__copy__())).__copy__());
            };
        };
        if (_x._a._neg) {
            _buf = (_buf != null ? _buf.__append__(((((("-" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("-" : GoString))).code : GoRune))));
        };
        _buf = (_buf != null ? _buf.__append__(..._q._utoa(((10 : GoInt))).__toArray__()) : new Slice<GoUInt8>(..._q._utoa(((10 : GoInt))).__toArray__()));
        if (_prec > ((0 : GoInt))) {
            _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
            var _rs:Slice<GoUInt8> = _r._utoa(((10 : GoInt)));
            {
                var _i:GoInt = _prec - (_rs != null ? _rs.length : ((0 : GoInt)));
                Go.cfor(_i > ((0 : GoInt)), _i--, {
                    _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
                });
            };
            _buf = (_buf != null ? _buf.__append__(..._rs.__toArray__()) : new Slice<GoUInt8>(..._rs.__toArray__()));
        };
        return ((_buf : GoString));
    }
    public function ratString():GoString {
        var _x = this;
        _x;
        if (_x.isInt()) {
            return ((_x._a.toString() : GoString));
        };
        return ((_x.toString() : GoString));
    }
    public function _marshal():Slice<GoByte> {
        var _x = this;
        _x;
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        _buf = _x._a.append(_buf, ((10 : GoInt)));
        _buf = (_buf != null ? _buf.__append__(((((("/" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("/" : GoString))).code : GoRune))));
        if ((_x._b._abs != null ? _x._b._abs.length : ((0 : GoInt))) != ((0 : GoInt))) {
            _buf = _x._b.append(_buf, ((10 : GoInt)));
        } else {
            _buf = (_buf != null ? _buf.__append__(((((("1" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("1" : GoString))).code : GoRune))));
        };
        return _buf;
    }
    public function toString():GoString {
        var _x = this;
        _x;
        return ((_x._marshal() : GoString));
    }
    public function setString(_s:GoString):{ var _0 : Rat; var _1 : Bool; } {
        var _z = this;
        _z;
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : null, _1 : false };
        };
        {
            var _sep:GoInt = stdgo.strings.Strings.index(_s, ((("/" : GoString))));
            if (_sep >= ((0 : GoInt))) {
                {
                    var __tmp__ = _z._a.setString(_s.__slice__(0, _sep), ((0 : GoInt))), _:Int_ = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : false };
                    };
                };
                var _r:stdgo.strings.Strings.Reader = stdgo.strings.Strings.newReader(_s.__slice__(_sep + ((1 : GoInt))));
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _z._b._abs._scan(_r, ((0 : GoInt)), false);
                        _z._b._abs = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                        _err = __tmp__._3;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : false };
                    };
                };
                {
                    {
                        var __tmp__ = _r.readByte();
                        _err = __tmp__._1;
                    };
                    if (_err != stdgo.io.Io.eof) {
                        return { _0 : null, _1 : false };
                    };
                };
                if ((_z._b._abs != null ? _z._b._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    return { _0 : null, _1 : false };
                };
                return { _0 : _z._norm(), _1 : true };
            };
        };
        var _r:stdgo.strings.Strings.Reader = stdgo.strings.Strings.newReader(_s);
        var __tmp__ = _scanSign(_r), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        var _base:GoInt = ((0 : GoInt));
        var _fcount:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _z._a._abs._scan(_r, ((0 : GoInt)), true);
            _z._a._abs = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _base = __tmp__._1;
            _fcount = __tmp__._2;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        var _exp:GoInt64 = ((0 : GoInt64));
        var _ebase:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _scanExponent(_r, true, true);
            _exp = __tmp__._0;
            _ebase = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        {
            {
                var __tmp__ = _r.readByte();
                _err = __tmp__._1;
            };
            if (_err != stdgo.io.Io.eof) {
                return { _0 : null, _1 : false };
            };
        };
        if ((_z._a._abs != null ? _z._a._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : _z, _1 : true };
        };
        var _exp2:GoInt64 = ((0 : GoInt64)), _exp5:GoInt64 = ((0 : GoInt64));
        if (_fcount < ((0 : GoInt))) {
            var _d:GoInt64 = ((_fcount : GoInt64));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _base == ((10 : GoInt)))) {
                        _exp5 = _d;
                        @:fallthrough {
                            __switchIndex__ = 1;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _base == ((2 : GoInt)))) {
                        _exp2 = _d;
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _base == ((8 : GoInt)))) {
                        _exp2 = _d * ((3 : GoInt64));
                        break;
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _base == ((16 : GoInt)))) {
                        _exp2 = _d * ((4 : GoInt64));
                        break;
                        break;
                    } else {
                        throw Go.toInterface(((("unexpected mantissa base" : GoString))));
                        break;
                    };
                    break;
                };
            };
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _ebase == ((10 : GoInt)))) {
                    _exp5 = _exp5 + (_exp);
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _ebase == ((2 : GoInt)))) {
                    _exp2 = _exp2 + (_exp);
                    break;
                    break;
                } else {
                    throw Go.toInterface(((("unexpected exponent base" : GoString))));
                    break;
                };
                break;
            };
        };
        if (_exp5 != ((0 : GoInt64))) {
            var _n:GoInt64 = _exp5;
            if (_n < ((0 : GoInt64))) {
                _n = -_n;
                if (_n < ((0 : GoInt64))) {
                    return { _0 : null, _1 : false };
                };
            };
            if (_n > ((1e+06 : GoInt64))) {
                return { _0 : null, _1 : false };
            };
            var _pow5:T_nat = (_z._b._abs._expNN((_natFive == null ? null : _natFive.__copy__()), (((new T_nat() : T_nat))._setWord(((_n : Word))) == null ? null : ((new T_nat() : T_nat))._setWord(((_n : Word))).__copy__()), null) == null ? null : _z._b._abs._expNN((_natFive == null ? null : _natFive.__copy__()), (((new T_nat() : T_nat))._setWord(((_n : Word))) == null ? null : ((new T_nat() : T_nat))._setWord(((_n : Word))).__copy__()), null).__copy__());
            if (_exp5 > ((0 : GoInt64))) {
                _z._a._abs = (_z._a._abs._mul((_z._a._abs == null ? null : _z._a._abs.__copy__()), (_pow5 == null ? null : _pow5.__copy__())) == null ? null : _z._a._abs._mul((_z._a._abs == null ? null : _z._a._abs.__copy__()), (_pow5 == null ? null : _pow5.__copy__())).__copy__());
                _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
            } else {
                _z._b._abs = (_pow5 == null ? null : _pow5.__copy__());
            };
        } else {
            _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
        };
        if ((_exp2 < ((-10000000 : GoInt64))) || (_exp2 > ((1e+07 : GoInt64)))) {
            return { _0 : null, _1 : false };
        };
        if (_exp2 > ((0 : GoInt64))) {
            _z._a._abs = (_z._a._abs._shl((_z._a._abs == null ? null : _z._a._abs.__copy__()), ((_exp2 : GoUInt))) == null ? null : _z._a._abs._shl((_z._a._abs == null ? null : _z._a._abs.__copy__()), ((_exp2 : GoUInt))).__copy__());
        } else if (_exp2 < ((0 : GoInt64))) {
            _z._b._abs = (_z._b._abs._shl((_z._b._abs == null ? null : _z._b._abs.__copy__()), ((-_exp2 : GoUInt))) == null ? null : _z._b._abs._shl((_z._b._abs == null ? null : _z._b._abs.__copy__()), ((-_exp2 : GoUInt))).__copy__());
        };
        _z._a._neg = _neg && ((_z._a._abs != null ? _z._a._abs.length : ((0 : GoInt))) > ((0 : GoInt)));
        return { _0 : _z._norm(), _1 : true };
    }
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error {
        var _z = this;
        _z;
        var __tmp__ = _s.token(true, _ratTok), _tok:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (!stdgo.strings.Strings.containsRune(((("efgEFGv" : GoString))), _ch)) {
            return stdgo.errors.Errors.new_(((("Rat.Scan: invalid verb" : GoString))));
        };
        {
            var __tmp__ = _z.setString(((_tok : GoString))), _:Rat = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo.errors.Errors.new_(((("Rat.Scan: invalid syntax" : GoString))));
            };
        };
        return ((null : stdgo.Error));
    }
    public function quo(_x:Rat, _y:Rat):Rat {
        var _z = this;
        _z;
        if ((_y._a._abs != null ? _y._a._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        };
        var _a:Int_ = new Int_(), _b:Int_ = new Int_();
        _a._scaleDenom(_x._a, (_y._b._abs == null ? null : _y._b._abs.__copy__()));
        _b._scaleDenom(_y._a, (_x._b._abs == null ? null : _x._b._abs.__copy__()));
        _z._a._abs = (_a._abs == null ? null : _a._abs.__copy__());
        _z._b._abs = (_b._abs == null ? null : _b._abs.__copy__());
        _z._a._neg = _a._neg != _b._neg;
        return _z._norm();
    }
    public function mul(_x:Rat, _y:Rat):Rat {
        var _z = this;
        _z;
        if (_x == _y) {
            _z._a._neg = false;
            _z._a._abs = (_z._a._abs._sqr((_x._a._abs == null ? null : _x._a._abs.__copy__())) == null ? null : _z._a._abs._sqr((_x._a._abs == null ? null : _x._a._abs.__copy__())).__copy__());
            if ((_x._b._abs != null ? _x._b._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
                _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
            } else {
                _z._b._abs = (_z._b._abs._sqr((_x._b._abs == null ? null : _x._b._abs.__copy__())) == null ? null : _z._b._abs._sqr((_x._b._abs == null ? null : _x._b._abs.__copy__())).__copy__());
            };
            return _z;
        };
        _z._a.mul(_x._a, _y._a);
        _z._b._abs = (_mulDenom((_z._b._abs == null ? null : _z._b._abs.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__()), (_y._b._abs == null ? null : _y._b._abs.__copy__())) == null ? null : _mulDenom((_z._b._abs == null ? null : _z._b._abs.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__()), (_y._b._abs == null ? null : _y._b._abs.__copy__())).__copy__());
        return _z._norm();
    }
    public function sub(_x:Rat, _y:Rat):Rat {
        var _z = this;
        _z;
        var _a1:Int_ = new Int_(), _a2:Int_ = new Int_();
        _a1._scaleDenom(_x._a, (_y._b._abs == null ? null : _y._b._abs.__copy__()));
        _a2._scaleDenom(_y._a, (_x._b._abs == null ? null : _x._b._abs.__copy__()));
        _z._a.sub(_a1, _a2);
        _z._b._abs = (_mulDenom((_z._b._abs == null ? null : _z._b._abs.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__()), (_y._b._abs == null ? null : _y._b._abs.__copy__())) == null ? null : _mulDenom((_z._b._abs == null ? null : _z._b._abs.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__()), (_y._b._abs == null ? null : _y._b._abs.__copy__())).__copy__());
        return _z._norm();
    }
    public function add(_x:Rat, _y:Rat):Rat {
        var _z = this;
        _z;
        var _a1:Int_ = new Int_(), _a2:Int_ = new Int_();
        _a1._scaleDenom(_x._a, (_y._b._abs == null ? null : _y._b._abs.__copy__()));
        _a2._scaleDenom(_y._a, (_x._b._abs == null ? null : _x._b._abs.__copy__()));
        _z._a.add(_a1, _a2);
        _z._b._abs = (_mulDenom((_z._b._abs == null ? null : _z._b._abs.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__()), (_y._b._abs == null ? null : _y._b._abs.__copy__())) == null ? null : _mulDenom((_z._b._abs == null ? null : _z._b._abs.__copy__()), (_x._b._abs == null ? null : _x._b._abs.__copy__()), (_y._b._abs == null ? null : _y._b._abs.__copy__())).__copy__());
        return _z._norm();
    }
    public function cmp(_y:Rat):GoInt {
        var _x = this;
        _x;
        var _a:Int_ = new Int_(), _b:Int_ = new Int_();
        _a._scaleDenom(_x._a, (_y._b._abs == null ? null : _y._b._abs.__copy__()));
        _b._scaleDenom(_y._a, (_x._b._abs == null ? null : _x._b._abs.__copy__()));
        return _a.cmp(_b);
    }
    public function _norm():Rat {
        var _z = this;
        _z;
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_z._a._abs != null ? _z._a._abs.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                    _z._a._neg = false;
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_z._b._abs != null ? _z._b._abs.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                    _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
                    break;
                    break;
                } else {
                    var _neg:Bool = _z._a._neg;
                    _z._a._neg = false;
                    _z._b._neg = false;
                    {
                        var _f:Int_ = newInt(((0 : GoInt64)))._lehmerGCD(null, null, _z._a, _z._b);
                        if (_f.cmp(_intOne) != ((0 : GoInt))) {
                            {
                                var __tmp__ = _z._a._abs._div(null, (_z._a._abs == null ? null : _z._a._abs.__copy__()), (_f._abs == null ? null : _f._abs.__copy__()));
                                _z._a._abs = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                            };
                            {
                                var __tmp__ = _z._b._abs._div(null, (_z._b._abs == null ? null : _z._b._abs.__copy__()), (_f._abs == null ? null : _f._abs.__copy__()));
                                _z._b._abs = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                            };
                        };
                    };
                    _z._a._neg = _neg;
                    break;
                };
                break;
            };
        };
        return _z;
    }
    public function denom():Int_ {
        var _x = this;
        _x;
        if ((_x._b._abs != null ? _x._b._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return (({ _abs : ((new Slice<Word>(((1 : GoUInt))) : T_nat)), _neg : false } : Int_));
        };
        return _x._b;
    }
    public function num():Int_ {
        var _x = this;
        _x;
        return _x._a;
    }
    public function isInt():Bool {
        var _x = this;
        _x;
        return ((_x._b._abs != null ? _x._b._abs.length : ((0 : GoInt))) == ((0 : GoInt))) || (_x._b._abs._cmp((_natOne == null ? null : _natOne.__copy__())) == ((0 : GoInt)));
    }
    public function sign():GoInt {
        var _x = this;
        _x;
        return _x._a.sign();
    }
    public function inv(_x:Rat):Rat {
        var _z = this;
        _z;
        if ((_x._a._abs != null ? _x._a._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        };
        _z.set(_x);
        {
            final __tmp__0 = (_z._b._abs == null ? null : _z._b._abs.__copy__());
            final __tmp__1 = (_z._a._abs == null ? null : _z._a._abs.__copy__());
            _z._a._abs = __tmp__0;
            _z._b._abs = __tmp__1;
        };
        return _z;
    }
    public function neg(_x:Rat):Rat {
        var _z = this;
        _z;
        _z.set(_x);
        _z._a._neg = ((_z._a._abs != null ? _z._a._abs.length : ((0 : GoInt))) > ((0 : GoInt))) && !_z._a._neg;
        return _z;
    }
    public function abs(_x:Rat):Rat {
        var _z = this;
        _z;
        _z.set(_x);
        _z._a._neg = false;
        return _z;
    }
    public function set(_x:Rat):Rat {
        var _z = this;
        _z;
        if (_z != _x) {
            _z._a.set(_x._a);
            _z._b.set(_x._b);
        };
        if ((_z._b._abs != null ? _z._b._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
        };
        return _z;
    }
    public function setUint64(_x:GoUInt64):Rat {
        var _z = this;
        _z;
        _z._a.setUint64(_x);
        _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
        return _z;
    }
    public function setInt64(_x:GoInt64):Rat {
        var _z = this;
        _z;
        _z._a.setInt64(_x);
        _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
        return _z;
    }
    public function setInt(_x:Int_):Rat {
        var _z = this;
        _z;
        _z._a.set(_x);
        _z._b._abs = (_z._b._abs._setWord(((1 : GoUInt))) == null ? null : _z._b._abs._setWord(((1 : GoUInt))).__copy__());
        return _z;
    }
    public function setFrac64(_a:GoInt64, _b:GoInt64):Rat {
        var _z = this;
        _z;
        if (_b == ((0 : GoInt64))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        };
        _z._a.setInt64(_a);
        if (_b < ((0 : GoInt64))) {
            _b = -_b;
            _z._a._neg = !_z._a._neg;
        };
        _z._b._abs = (_z._b._abs._setUint64(((_b : GoUInt64))) == null ? null : _z._b._abs._setUint64(((_b : GoUInt64))).__copy__());
        return _z._norm();
    }
    public function setFrac(_a:Int_, _b:Int_):Rat {
        var _z = this;
        _z;
        _z._a._neg = _a._neg != _b._neg;
        var _babs:T_nat = (_b._abs == null ? null : _b._abs.__copy__());
        if ((_babs != null ? _babs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        };
        if ((_z._a == _b) || _alias((_z._a._abs == null ? null : _z._a._abs.__copy__()), (_babs == null ? null : _babs.__copy__()))) {
            _babs = (((new T_nat() : T_nat))._set((_babs == null ? null : _babs.__copy__())) == null ? null : ((new T_nat() : T_nat))._set((_babs == null ? null : _babs.__copy__())).__copy__());
        };
        _z._a._abs = (_z._a._abs._set((_a._abs == null ? null : _a._abs.__copy__())) == null ? null : _z._a._abs._set((_a._abs == null ? null : _a._abs.__copy__())).__copy__());
        _z._b._abs = (_z._b._abs._set((_babs == null ? null : _babs.__copy__())) == null ? null : _z._b._abs._set((_babs == null ? null : _babs.__copy__())).__copy__());
        return _z._norm();
    }
    public function float64():{ var _0 : GoFloat64; var _1 : Bool; } {
        var _x = this;
        _x;
        var _f:GoFloat64 = ((0 : GoFloat64)), _exact:Bool = false;
        var _b:T_nat = (_x._b._abs == null ? null : _x._b._abs.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _b = (_natOne == null ? null : _natOne.__copy__());
        };
        {
            var __tmp__ = _quotToFloat64((_x._a._abs == null ? null : _x._a._abs.__copy__()), (_b == null ? null : _b.__copy__()));
            _f = __tmp__._0;
            _exact = __tmp__._1;
        };
        if (_x._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    public function float32():{ var _0 : GoFloat32; var _1 : Bool; } {
        var _x = this;
        _x;
        var _f:GoFloat32 = ((0 : GoFloat32)), _exact:Bool = false;
        var _b:T_nat = (_x._b._abs == null ? null : _x._b._abs.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _b = (_natOne == null ? null : _natOne.__copy__());
        };
        {
            var __tmp__ = _quotToFloat32((_x._a._abs == null ? null : _x._a._abs.__copy__()), (_b == null ? null : _b.__copy__()));
            _f = __tmp__._0;
            _exact = __tmp__._1;
        };
        if (_x._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    public function setFloat64(_f:GoFloat64):Rat {
        var _z = this;
        _z;
        {};
        var _bits:GoUInt64 = stdgo.math.Math.float64bits(_f);
        var _mantissa:GoUInt64 = _bits & (("4503599627370495" : GoUInt64));
        var _exp:GoInt = ((((_bits >> ((52 : GoUnTypedInt))) & ((2047 : GoUInt64))) : GoInt));
        if (_exp == ((2047 : GoInt))) {
            return null;
        } else if (_exp == ((0 : GoInt))) {
            _exp = _exp - (((1022 : GoInt)));
        } else {
            _mantissa = _mantissa | ((("4503599627370496" : GoUInt64)));
            _exp = _exp - (((1023 : GoInt)));
        };
        var _shift:GoInt = ((52 : GoInt)) - _exp;
        while (((_mantissa & ((1 : GoUInt64))) == ((0 : GoUInt64))) && (_shift > ((0 : GoInt)))) {
            _mantissa = _mantissa >> (((1 : GoUnTypedInt)));
            _shift--;
        };
        _z._a.setUint64(_mantissa);
        _z._a._neg = _f < ((0 : GoFloat64));
        _z._b.set(_intOne);
        if (_shift > ((0 : GoInt))) {
            _z._b.lsh(_z._b, ((_shift : GoUInt)));
        } else {
            _z._a.lsh(_z._a, ((-_shift : GoUInt)));
        };
        return _z._norm();
    }
    public var _a : Int_ = new Int_();
    public var _b : Int_ = new Int_();
    public function new(?_a:Int_, ?_b:Int_) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rat(_a, _b);
    }
}
@:structInit @:local class T__struct_0 {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _table : GoArray<T_divisor> = new GoArray<T_divisor>(...[for (i in 0 ... 64) new T_divisor()]);
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_table:GoArray<T_divisor>) {
        if (mutex != null) this.mutex = mutex;
        if (_table != null) this._table = _table;
    }
    public function lock() mutex.lock();
    public function tryLock():Bool return mutex.tryLock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_new);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(mutex, _table);
    }
}
@:structInit @:local class T__struct_1 {
    @:embedded
    public var once : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _v : Float_ = ((null : Float_));
    public function new(?once:stdgo.sync.Sync.Once, ?_v:Float_) {
        if (once != null) this.once = once;
        if (_v != null) this._v = _v;
    }
    public function do_(_f:() -> Void) once.do_(_f);
    public function _doSlow(_f:() -> Void) once._doSlow(_f);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(once, _v);
    }
}
/**
    // z1<<_W + z0 = x*y
**/
function _mulWW_g(_x:Word, _y:Word):{ var _0 : Word; var _1 : Word; } {
        var _z1:Word = new Word(), _z0:Word = new Word();
        var __tmp__ = stdgo.math.bits.Bits.mul(((_x : GoUInt)), ((_y : GoUInt))), _hi:GoUInt = __tmp__._0, _lo:GoUInt = __tmp__._1;
        return { _0 : ((_hi : Word)), _1 : ((_lo : Word)) };
    }
/**
    // z1<<_W + z0 = x*y + c
**/
function _mulAddWWW_g(_x:Word, _y:Word, _c:Word):{ var _0 : Word; var _1 : Word; } {
        var _z1:Word = new Word(), _z0:Word = new Word();
        var __tmp__ = stdgo.math.bits.Bits.mul(((_x : GoUInt)), ((_y : GoUInt))), _hi:GoUInt = __tmp__._0, _lo:GoUInt = __tmp__._1;
        var _cc:GoUInt = ((0 : GoUInt));
        {
            var __tmp__ = stdgo.math.bits.Bits.add(_lo, ((_c : GoUInt)), ((0 : GoUInt)));
            _lo = __tmp__._0;
            _cc = __tmp__._1;
        };
        return { _0 : (((_hi + _cc) : Word)), _1 : ((_lo : Word)) };
    }
/**
    // nlz returns the number of leading zeros in x.
    // Wraps bits.LeadingZeros call for convenience.
**/
function _nlz(_x:Word):GoUInt {
        return ((stdgo.math.bits.Bits.leadingZeros(((_x : GoUInt))) : GoUInt));
    }
/**
    // The resulting carry c is either 0 or 1.
**/
function _addVV_g(_z:Slice<Word>, _x:Slice<Word>, _y:Slice<Word>):Word {
        var _c:Word = new Word();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt))))) && (_i < (_y != null ? _y.length : ((0 : GoInt)))), _i++, {
                var __tmp__ = stdgo.math.bits.Bits.add((((_x != null ? _x[_i] : new Word()) : GoUInt)), (((_y != null ? _y[_i] : new Word()) : GoUInt)), ((_c : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                if (_z != null) _z[_i] = ((_zi : Word));
                _c = ((_cc : Word));
            });
        };
        return _c;
    }
/**
    // The resulting carry c is either 0 or 1.
**/
function _subVV_g(_z:Slice<Word>, _x:Slice<Word>, _y:Slice<Word>):Word {
        var _c:Word = new Word();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt))))) && (_i < (_y != null ? _y.length : ((0 : GoInt)))), _i++, {
                var __tmp__ = stdgo.math.bits.Bits.sub((((_x != null ? _x[_i] : new Word()) : GoUInt)), (((_y != null ? _y[_i] : new Word()) : GoUInt)), ((_c : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                if (_z != null) _z[_i] = ((_zi : Word));
                _c = ((_cc : Word));
            });
        };
        return _c;
    }
/**
    // The resulting carry c is either 0 or 1.
**/
function _addVW_g(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        _c = _y;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt)))), _i++, {
                var __tmp__ = stdgo.math.bits.Bits.add((((_x != null ? _x[_i] : new Word()) : GoUInt)), ((_c : GoUInt)), ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                if (_z != null) _z[_i] = ((_zi : Word));
                _c = ((_cc : Word));
            });
        };
        return _c;
    }
/**
    // addVWlarge is addVW, but intended for large z.
    // The only difference is that we check on every iteration
    // whether we are done with carries,
    // and if so, switch to a much faster copy instead.
    // This is only a good idea for large z,
    // because the overhead of the check and the function call
    // outweigh the benefits when z is small.
**/
function _addVWlarge(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        _c = _y;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt)))), _i++, {
                if (_c == ((0 : GoUInt))) {
                    Go.copy(_z.__slice__(_i), _x.__slice__(_i));
                    return _c;
                };
                var __tmp__ = stdgo.math.bits.Bits.add((((_x != null ? _x[_i] : new Word()) : GoUInt)), ((_c : GoUInt)), ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                if (_z != null) _z[_i] = ((_zi : Word));
                _c = ((_cc : Word));
            });
        };
        return _c;
    }
function _subVW_g(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        _c = _y;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt)))), _i++, {
                var __tmp__ = stdgo.math.bits.Bits.sub((((_x != null ? _x[_i] : new Word()) : GoUInt)), ((_c : GoUInt)), ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                if (_z != null) _z[_i] = ((_zi : Word));
                _c = ((_cc : Word));
            });
        };
        return _c;
    }
/**
    // subVWlarge is to subVW as addVWlarge is to addVW.
**/
function _subVWlarge(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        _c = _y;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt)))), _i++, {
                if (_c == ((0 : GoUInt))) {
                    Go.copy(_z.__slice__(_i), _x.__slice__(_i));
                    return _c;
                };
                var __tmp__ = stdgo.math.bits.Bits.sub((((_x != null ? _x[_i] : new Word()) : GoUInt)), ((_c : GoUInt)), ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                if (_z != null) _z[_i] = ((_zi : Word));
                _c = ((_cc : Word));
            });
        };
        return _c;
    }
function _shlVU_g(_z:Slice<Word>, _x:Slice<Word>, _s:GoUInt):Word {
        var _c:Word = new Word();
        if (_s == ((0 : GoUInt))) {
            Go.copy(_z, _x);
            return _c;
        };
        if ((_z != null ? _z.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return _c;
        };
        _s = _s & (((31 : GoUInt)));
        var __349:GoUInt = ((32 : GoUInt)) - _s;
        __349 = __349 & (((31 : GoUInt)));
        _c = (_x != null ? _x[(_z != null ? _z.length : ((0 : GoInt))) - ((1 : GoInt))] : new Word()) >> __349;
        {
            var _i:GoInt = (_z != null ? _z.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i > ((0 : GoInt)), _i--, {
                if (_z != null) _z[_i] = ((_x != null ? _x[_i] : new Word()) << _s) | ((_x != null ? _x[_i - ((1 : GoInt))] : new Word()) >> __349);
            });
        };
        if (_z != null) _z[((0 : GoInt))] = (_x != null ? _x[((0 : GoInt))] : new Word()) << _s;
        return _c;
    }
function _shrVU_g(_z:Slice<Word>, _x:Slice<Word>, _s:GoUInt):Word {
        var _c:Word = new Word();
        if (_s == ((0 : GoUInt))) {
            Go.copy(_z, _x);
            return _c;
        };
        if ((_z != null ? _z.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return _c;
        };
        if ((_x != null ? _x.length : ((0 : GoInt))) != (_z != null ? _z.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("len(x) != len(z)" : GoString))));
        };
        _s = _s & (((31 : GoUInt)));
        var __349:GoUInt = ((32 : GoUInt)) - _s;
        __349 = __349 & (((31 : GoUInt)));
        _c = (_x != null ? _x[((0 : GoInt))] : new Word()) << __349;
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < (_z != null ? _z.length : ((0 : GoInt))), _i++, {
                if (_z != null) _z[_i - ((1 : GoInt))] = ((_x != null ? _x[_i - ((1 : GoInt))] : new Word()) >> _s) | ((_x != null ? _x[_i] : new Word()) << __349);
            });
        };
        if (_z != null) _z[(_z != null ? _z.length : ((0 : GoInt))) - ((1 : GoInt))] = (_x != null ? _x[(_z != null ? _z.length : ((0 : GoInt))) - ((1 : GoInt))] : new Word()) >> _s;
        return _c;
    }
function _mulAddVWW_g(_z:Slice<Word>, _x:Slice<Word>, _y:Word, _r:Word):Word {
        var _c:Word = new Word();
        _c = _r;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt)))), _i++, {
                {
                    var __tmp__ = _mulAddWWW_g((_x != null ? _x[_i] : new Word()), _y, _c);
                    _c = __tmp__._0;
                    (_z != null ? _z[_i] : new Word()) = __tmp__._1;
                };
            });
        };
        return _c;
    }
function _addMulVVW_g(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < (_z != null ? _z.length : ((0 : GoInt)))) && (_i < (_x != null ? _x.length : ((0 : GoInt)))), _i++, {
                var __tmp__ = _mulAddWWW_g((_x != null ? _x[_i] : new Word()), _y, (_z != null ? _z[_i] : new Word())), _z1:Word = __tmp__._0, _z0:Word = __tmp__._1;
                var __tmp__ = stdgo.math.bits.Bits.add(((_z0 : GoUInt)), ((_c : GoUInt)), ((0 : GoUInt))), _lo:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                {
                    final __tmp__0 = ((_cc : Word));
                    _c = __tmp__0;
                    if (_z != null) _z[_i] = ((_lo : Word));
                };
                _c = _c + (_z1);
            });
        };
        return _c;
    }
/**
    // q = ( x1 << _W + x0 - r)/y. m = floor(( _B^2 - 1 ) / d - _B). Requiring x1<y.
    // An approximate reciprocal with a reference to "Improved Division by Invariant Integers
    // (IEEE Transactions on Computers, 11 Jun. 2010)"
**/
function _divWW(_x1:Word, _x0:Word, _y:Word, _m:Word):{ var _0 : Word; var _1 : Word; } {
        var _q:Word = new Word(), _r:Word = new Word();
        var _s:GoUInt = _nlz(_y);
        if (_s != ((0 : GoUInt))) {
            _x1 = (_x1 << _s) | (_x0 >> (((32 : GoUInt)) - _s));
            _x0 = _x0 << (_s);
            _y = _y << (_s);
        };
        var _d:GoUInt = ((_y : GoUInt));
        var __tmp__ = stdgo.math.bits.Bits.mul(((_m : GoUInt)), ((_x1 : GoUInt))), _t1:GoUInt = __tmp__._0, _t0:GoUInt = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add(_t0, ((_x0 : GoUInt)), ((0 : GoUInt))), _:GoUInt = __tmp__._0, _c:GoUInt = __tmp__._1;
        {
            var __tmp__ = stdgo.math.bits.Bits.add(_t1, ((_x1 : GoUInt)), _c);
            _t1 = __tmp__._0;
        };
        var _qq:GoUInt = _t1;
        var __tmp__ = stdgo.math.bits.Bits.mul(_d, _qq), _dq1:GoUInt = __tmp__._0, _dq0:GoUInt = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub(((_x0 : GoUInt)), _dq0, ((0 : GoUInt))), _r0:GoUInt = __tmp__._0, _b:GoUInt = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub(((_x1 : GoUInt)), _dq1, _b), _r1:GoUInt = __tmp__._0, _:GoUInt = __tmp__._1;
        if (_r1 != ((0 : GoUInt))) {
            _qq++;
            _r0 = _r0 - (_d);
        };
        if (_r0 >= _d) {
            _qq++;
            _r0 = _r0 - (_d);
        };
        return { _0 : ((_qq : Word)), _1 : (((_r0 >> _s) : Word)) };
    }
/**
    // reciprocalWord return the reciprocal of the divisor. rec = floor(( _B^2 - 1 ) / u - _B). u = d1 << nlz(d1).
**/
function _reciprocalWord(_d1:Word):Word {
        var _u:GoUInt = (((_d1 << _nlz(_d1)) : GoUInt));
        var _x1:GoUInt = (-1 ^ _u);
        var _x0:GoUInt = (((("4294967295" : GoUInt)) : GoUInt));
        var __tmp__ = stdgo.math.bits.Bits.div(_x1, _x0, _u), _rec:GoUInt = __tmp__._0, _:GoUInt = __tmp__._1;
        return ((_rec : Word));
    }
function _mulWW(_x:Word, _y:Word):{ var _0 : Word; var _1 : Word; } {
        var _z1:Word = new Word(), _z0:Word = new Word();
        return _mulWW_g(_x, _y);
    }
function _addVV(_z:Slice<Word>, _x:Slice<Word>, _y:Slice<Word>):Word {
        var _c:Word = new Word();
        return _addVV_g(_z, _x, _y);
    }
function _subVV(_z:Slice<Word>, _x:Slice<Word>, _y:Slice<Word>):Word {
        var _c:Word = new Word();
        return _subVV_g(_z, _x, _y);
    }
function _addVW(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        var _fn:(Slice<Word>, Slice<Word>, Word) -> Word = _addVW_g;
        if ((_z != null ? _z.length : ((0 : GoInt))) > ((32 : GoInt))) {
            _fn = _addVWlarge;
        };
        return _fn(_z, _x, _y);
    }
function _subVW(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        var _fn:(Slice<Word>, Slice<Word>, Word) -> Word = _subVW_g;
        if ((_z != null ? _z.length : ((0 : GoInt))) > ((32 : GoInt))) {
            _fn = _subVWlarge;
        };
        return _fn(_z, _x, _y);
    }
function _shlVU(_z:Slice<Word>, _x:Slice<Word>, _s:GoUInt):Word {
        var _c:Word = new Word();
        return _shlVU_g(_z, _x, _s);
    }
function _shrVU(_z:Slice<Word>, _x:Slice<Word>, _s:GoUInt):Word {
        var _c:Word = new Word();
        return _shrVU_g(_z, _x, _s);
    }
function _mulAddVWW(_z:Slice<Word>, _x:Slice<Word>, _y:Word, _r:Word):Word {
        var _c:Word = new Word();
        return _mulAddVWW_g(_z, _x, _y, _r);
    }
function _addMulVVW(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        return _addMulVVW_g(_z, _x, _y);
    }
/**
    // shr implements x >> s, for s <= maxShift.
**/
function _shr(_x:T_decimal, _s:GoUInt):Void {
        var _r:GoInt = ((0 : GoInt));
        var _n:Word = new Word();
        while (((_n >> _s) == ((0 : GoUInt))) && (_r < (_x._mant != null ? _x._mant.length : ((0 : GoInt))))) {
            var _ch:Word = (((_x._mant != null ? _x._mant[_r] : ((0 : GoUInt8))) : Word));
            _r++;
            _n = ((_n * ((10 : GoUInt))) + _ch) - ((((("0" : GoString))).code : GoRune));
        };
        if (_n == ((0 : GoUInt))) {
            _x._mant = _x._mant.__slice__(0, ((0 : GoInt)));
            return;
        };
        while ((_n >> _s) == ((0 : GoUInt))) {
            _r++;
            _n = _n * (((10 : GoUInt)));
        };
        _x._exp = _x._exp + (((1 : GoInt)) - _r);
        var _w:GoInt = ((0 : GoInt));
        var _mask:Word = (((((1 : GoUInt)) : Word)) << _s) - ((1 : GoUInt));
        while (_r < (_x._mant != null ? _x._mant.length : ((0 : GoInt)))) {
            var _ch:Word = (((_x._mant != null ? _x._mant[_r] : ((0 : GoUInt8))) : Word));
            _r++;
            var _d:Word = _n >> _s;
            _n = _n & (_mask);
            if (_x._mant != null) _x._mant[_w] = (((_d + ((((("0" : GoString))).code : GoRune))) : GoByte));
            _w++;
            _n = ((_n * ((10 : GoUInt))) + _ch) - ((((("0" : GoString))).code : GoRune));
        };
        while ((_n > ((0 : GoUInt))) && (_w < (_x._mant != null ? _x._mant.length : ((0 : GoInt))))) {
            var _d:Word = _n >> _s;
            _n = _n & (_mask);
            if (_x._mant != null) _x._mant[_w] = (((_d + ((((("0" : GoString))).code : GoRune))) : GoByte));
            _w++;
            _n = _n * ((10 : GoUInt));
        };
        _x._mant = _x._mant.__slice__(0, _w);
        while (_n > ((0 : GoUInt))) {
            var _d:Word = _n >> _s;
            _n = _n & (_mask);
            _x._mant = (_x._mant != null ? _x._mant.__append__((((_d + ((((("0" : GoString))).code : GoRune))) : GoByte))) : new Slice<GoUInt8>((((_d + ((((("0" : GoString))).code : GoRune))) : GoByte))));
            _n = _n * ((10 : GoUInt));
        };
        _trim(_x);
    }
/**
    // appendZeros appends n 0 digits to buf and returns buf.
**/
function _appendZeros(_buf:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        Go.cfor(_n > ((0 : GoInt)), _n--, {
            _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
        });
        return _buf;
    }
/**
    // shouldRoundUp reports if x should be rounded up
    // if shortened to n digits. n must be a valid index
    // for x.mant.
**/
function _shouldRoundUp(_x:T_decimal, _n:GoInt):Bool {
        if (((_x._mant != null ? _x._mant[_n] : ((0 : GoUInt8))) == ((((("5" : GoString))).code : GoRune))) && ((_n + ((1 : GoInt))) == (_x._mant != null ? _x._mant.length : ((0 : GoInt))))) {
            return (_n > ((0 : GoInt))) && ((((_x._mant != null ? _x._mant[_n - ((1 : GoInt))] : ((0 : GoUInt8))) - ((((("0" : GoString))).code : GoRune))) & ((1 : GoUInt8))) != ((0 : GoUInt8)));
        };
        return (_x._mant != null ? _x._mant[_n] : ((0 : GoUInt8))) >= ((((("5" : GoString))).code : GoRune));
    }
/**
    // trim cuts off any trailing zeros from x's mantissa;
    // they are meaningless for the value of x.
**/
function _trim(_x:T_decimal):Void {
        var _i:GoInt = (_x._mant != null ? _x._mant.length : ((0 : GoInt)));
        while ((_i > ((0 : GoInt))) && ((_x._mant != null ? _x._mant[_i - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune)))) {
            _i--;
        };
        _x._mant = _x._mant.__slice__(0, _i);
        if (_i == ((0 : GoInt))) {
            _x._exp = ((0 : GoInt));
        };
    }
/**
    // NewFloat allocates and returns a new Float set to x,
    // with precision 53 and rounding mode ToNearestEven.
    // NewFloat panics with ErrNaN if x is a NaN.
**/
function newFloat(_x:GoFloat64):Float_ {
        if (stdgo.math.Math.isNaN(_x)) {
            throw Go.toInterface(((new ErrNaN(((("NewFloat(NaN)" : GoString)))) : ErrNaN)));
        };
        return Go.pointer(new Float_()).setFloat64(_x);
    }
function _makeAcc(_above:Bool):Accuracy {
        if (_above) {
            return ((1 : GoInt8));
        };
        return ((-1 : GoInt8));
    }
/**
    // fnorm normalizes mantissa m by shifting it to the left
    // such that the msb of the most-significant word (msw) is 1.
    // It returns the shift amount. It assumes that len(m) != 0.
**/
function _fnorm(_m:T_nat):GoInt64 {
        if (false && (((_m != null ? _m.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_m != null ? _m[(_m != null ? _m.length : ((0 : GoInt))) - ((1 : GoInt))] : new Word()) == ((0 : GoUInt))))) {
            throw Go.toInterface(((("msw of mantissa is 0" : GoString))));
        };
        var _s:GoUInt = _nlz((_m != null ? _m[(_m != null ? _m.length : ((0 : GoInt))) - ((1 : GoInt))] : new Word()));
        if (_s > ((0 : GoUInt))) {
            var _c:Word = _shlVU(_m, _m, _s);
            if (false && (_c != ((0 : GoUInt)))) {
                throw Go.toInterface(((("nlz or shlVU incorrect" : GoString))));
            };
        };
        return ((_s : GoInt64));
    }
/**
    // msb32 returns the 32 most significant bits of x.
**/
function _msb32(_x:T_nat):GoUInt32 {
        var _i:GoInt = (_x != null ? _x.length : ((0 : GoInt))) - ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            return ((0 : GoUInt32));
        };
        if (false && (((_x != null ? _x[_i] : new Word()) & (("2147483648" : GoUInt))) == ((0 : GoUInt)))) {
            throw Go.toInterface(((("x not normalized" : GoString))));
        };
        if (((32 : GoInt)) == ((32 : GoInt))) {
            return (((_x != null ? _x[_i] : new Word()) : GoUInt32));
        } else if (((32 : GoInt)) == ((64 : GoInt))) {
            return ((((_x != null ? _x[_i] : new Word()) >> ((32 : GoUnTypedInt))) : GoUInt32));
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
/**
    // msb64 returns the 64 most significant bits of x.
**/
function _msb64(_x:T_nat):GoUInt64 {
        var _i:GoInt = (_x != null ? _x.length : ((0 : GoInt))) - ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            return ((0 : GoUInt64));
        };
        if (false && (((_x != null ? _x[_i] : new Word()) & (("2147483648" : GoUInt))) == ((0 : GoUInt)))) {
            throw Go.toInterface(((("x not normalized" : GoString))));
        };
        if (((32 : GoInt)) == ((32 : GoInt))) {
            var _v:GoUInt64 = (((_x != null ? _x[_i] : new Word()) : GoUInt64)) << ((32 : GoUnTypedInt));
            if (_i > ((0 : GoInt))) {
                _v = _v | ((((_x != null ? _x[_i - ((1 : GoInt))] : new Word()) : GoUInt64)));
            };
            return _v;
        } else if (((32 : GoInt)) == ((64 : GoInt))) {
            return (((_x != null ? _x[_i] : new Word()) : GoUInt64));
        };
        throw Go.toInterface(((("unreachable" : GoString))));
    }
function _validateBinaryOperands(_x:Float_, _y:Float_):Void {
        if (true) {
            throw Go.toInterface(((("validateBinaryOperands called but debugFloat is not set" : GoString))));
        };
        if ((_x._mant != null ? _x._mant.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("empty mantissa for x" : GoString))));
        };
        if ((_y._mant != null ? _y._mant.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("empty mantissa for y" : GoString))));
        };
    }
function _umax32(_x:GoUInt32, _y:GoUInt32):GoUInt32 {
        if (_x > _y) {
            return _x;
        };
        return _y;
    }
/**
    // ParseFloat is like f.Parse(s, base) with f set to the given precision
    // and rounding mode.
**/
function parseFloat(_s:GoString, _base:GoInt, _prec:GoUInt, _mode:RoundingMode):{ var _0 : Float_; var _1 : GoInt; var _2 : Error; } {
        var _f:Float_ = ((null : Float_)), _b:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return Go.pointer(new Float_()).setPrec(_prec).setMode(_mode).parse(_s, _base);
    }
function _roundShortest(_d:T_decimal, _x:Float_):Void {
        if ((_d._mant != null ? _d._mant.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        var _mant:T_nat = (((new T_nat() : T_nat))._set((_x._mant == null ? null : _x._mant.__copy__())) == null ? null : ((new T_nat() : T_nat))._set((_x._mant == null ? null : _x._mant.__copy__())).__copy__());
        var _exp:GoInt = ((_x._exp : GoInt)) - _mant._bitLen();
        var _s:GoInt = _mant._bitLen() - (((_x._prec + ((1 : GoUInt32))) : GoInt));
        if (_s < ((0 : GoInt))) {
            _mant = (_mant._shl((_mant == null ? null : _mant.__copy__()), ((-_s : GoUInt))) == null ? null : _mant._shl((_mant == null ? null : _mant.__copy__()), ((-_s : GoUInt))).__copy__());
        } else if (_s > ((0 : GoInt))) {
            _mant = (_mant._shr((_mant == null ? null : _mant.__copy__()), ((_s : GoUInt))) == null ? null : _mant._shr((_mant == null ? null : _mant.__copy__()), ((_s : GoUInt))).__copy__());
        };
        _exp = _exp + (_s);
        var _lower:T_decimal = new T_decimal();
        var _tmp:T_nat = new T_nat();
        _lower._init((_tmp._sub((_mant == null ? null : _mant.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _tmp._sub((_mant == null ? null : _mant.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__()), _exp);
        var _upper:T_decimal = new T_decimal();
        _upper._init((_tmp._add((_mant == null ? null : _mant.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : _tmp._add((_mant == null ? null : _mant.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__()), _exp);
        var _inclusive:Bool = ((_mant != null ? _mant[((0 : GoInt))] : new Word()) & ((2 : GoUInt))) == ((0 : GoUInt));
        for (_i => _m in _d._mant) {
            var _l:GoUInt8 = _lower._at(_i);
            var _u:GoUInt8 = _upper._at(_i);
            var _okdown:Bool = (_l != _m) || (_inclusive && ((_i + ((1 : GoInt))) == (_lower._mant != null ? _lower._mant.length : ((0 : GoInt)))));
            var _okup:Bool = (_m != _u) && ((_inclusive || ((_m + ((1 : GoUInt8))) < _u)) || ((_i + ((1 : GoInt))) < (_upper._mant != null ? _upper._mant.length : ((0 : GoInt)))));
            if (_okdown && _okup) {
                _d._round(_i + ((1 : GoInt)));
                return;
            } else if (_okdown) {
                _d._roundDown(_i + ((1 : GoInt)));
                return;
            } else if (_okup) {
                _d._roundUp(_i + ((1 : GoInt)));
                return;
            };
        };
    }
/**
    // %e: d.ddddde±dd
**/
function _fmtE(_buf:Slice<GoByte>, _fmt:GoByte, _prec:GoInt, _d:T_decimal):Slice<GoByte> {
        var _ch:GoUInt8 = ((((((("0" : GoString))).code : GoRune)) : GoByte));
        if ((_d._mant != null ? _d._mant.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _ch = (_d._mant != null ? _d._mant[((0 : GoInt))] : ((0 : GoUInt8)));
        };
        _buf = (_buf != null ? _buf.__append__(_ch) : new Slice<GoUInt8>(_ch));
        if (_prec > ((0 : GoInt))) {
            _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
            var _i:GoInt = ((1 : GoInt));
            var _m:GoInt = _min((_d._mant != null ? _d._mant.length : ((0 : GoInt))), _prec + ((1 : GoInt)));
            if (_i < _m) {
                _buf = (_buf != null ? _buf.__append__(..._d._mant.__slice__(_i, _m).__toArray__()) : new Slice<GoUInt8>(..._d._mant.__slice__(_i, _m).__toArray__()));
                _i = _m;
            };
            Go.cfor(_i <= _prec, _i++, {
                _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
            });
        };
        _buf = (_buf != null ? _buf.__append__(_fmt) : new Slice<GoUInt8>(_fmt));
        var _exp:GoInt64 = ((0 : GoInt64));
        if ((_d._mant != null ? _d._mant.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _exp = ((_d._exp : GoInt64)) - ((1 : GoInt64));
        };
        if (_exp < ((0 : GoInt64))) {
            _ch = ((((("-" : GoString))).code : GoRune));
            _exp = -_exp;
        } else {
            _ch = ((((("+" : GoString))).code : GoRune));
        };
        _buf = (_buf != null ? _buf.__append__(_ch) : new Slice<GoUInt8>(_ch));
        if (_exp < ((10 : GoInt64))) {
            _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, _exp, ((10 : GoInt)));
    }
/**
    // %f: ddddddd.ddddd
**/
function _fmtF(_buf:Slice<GoByte>, _prec:GoInt, _d:T_decimal):Slice<GoByte> {
        if (_d._exp > ((0 : GoInt))) {
            var _m:GoInt = _min((_d._mant != null ? _d._mant.length : ((0 : GoInt))), _d._exp);
            _buf = (_buf != null ? _buf.__append__(..._d._mant.__slice__(0, _m).__toArray__()) : new Slice<GoUInt8>(..._d._mant.__slice__(0, _m).__toArray__()));
            Go.cfor(_m < _d._exp, _m++, {
                _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
            });
        } else {
            _buf = (_buf != null ? _buf.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
        };
        if (_prec > ((0 : GoInt))) {
            _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _prec, _i++, {
                    _buf = (_buf != null ? _buf.__append__(_d._at(_d._exp + _i)) : new Slice<GoUInt8>(_d._at(_d._exp + _i)));
                });
            };
        };
        return _buf;
    }
function _min(_x:GoInt, _y:GoInt):GoInt {
        if (_x < _y) {
            return _x;
        };
        return _y;
    }
/**
    // NewInt allocates and returns a new Int set to x.
**/
function newInt(_x:GoInt64):Int_ {
        return Go.pointer(new Int_()).setInt64(_x);
    }
/**
    // low32 returns the least significant 32 bits of x.
**/
function _low32(_x:T_nat):GoUInt32 {
        if ((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoUInt32));
        };
        return (((_x != null ? _x[((0 : GoInt))] : new Word()) : GoUInt32));
    }
/**
    // low64 returns the least significant 64 bits of x.
**/
function _low64(_x:T_nat):GoUInt64 {
        if ((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoUInt64));
        };
        var _v:GoUInt64 = (((_x != null ? _x[((0 : GoInt))] : new Word()) : GoUInt64));
        if (true && ((_x != null ? _x.length : ((0 : GoInt))) > ((1 : GoInt)))) {
            return ((((_x != null ? _x[((1 : GoInt))] : new Word()) : GoUInt64)) << ((32 : GoUnTypedInt))) | _v;
        };
        return _v;
    }
/**
    // lehmerSimulate attempts to simulate several Euclidean update steps
    // using the leading digits of A and B.  It returns u0, u1, v0, v1
    // such that A and B can be updated as:
    //		A = u0*A + v0*B
    //		B = u1*A + v1*B
    // Requirements: A >= B and len(B.abs) >= 2
    // Since we are calculating with full words to avoid overflow,
    // we use 'even' to track the sign of the cosequences.
    // For even iterations: u0, v1 >= 0 && u1, v0 <= 0
    // For odd  iterations: u0, v1 <= 0 && u1, v0 >= 0
**/
function _lehmerSimulate(a:Int_, b:Int_):{ var _0 : Word; var _1 : Word; var _2 : Word; var _3 : Word; var _4 : Bool; } {
        var _u0:Word = new Word(), _u1:Word = new Word(), _v0:Word = new Word(), _v1:Word = new Word(), _even:Bool = false;
        var _a1:Word = new Word(), _a2:Word = new Word(), _u2:Word = new Word(), _v2:Word = new Word();
        var _m:GoInt = (b._abs != null ? b._abs.length : ((0 : GoInt)));
        var _n:GoInt = (a._abs != null ? a._abs.length : ((0 : GoInt)));
        var _h:GoUInt = _nlz((a._abs != null ? a._abs[_n - ((1 : GoInt))] : new Word()));
        _a1 = ((a._abs != null ? a._abs[_n - ((1 : GoInt))] : new Word()) << _h) | ((a._abs != null ? a._abs[_n - ((2 : GoInt))] : new Word()) >> (((32 : GoUInt)) - _h));
        if (_n == _m) {
            _a2 = ((b._abs != null ? b._abs[_n - ((1 : GoInt))] : new Word()) << _h) | ((b._abs != null ? b._abs[_n - ((2 : GoInt))] : new Word()) >> (((32 : GoUInt)) - _h));
        } else if (_n == (_m + ((1 : GoInt)))) {
            _a2 = (b._abs != null ? b._abs[_n - ((2 : GoInt))] : new Word()) >> (((32 : GoUInt)) - _h);
        } else {
            _a2 = ((0 : GoUInt));
        };
        _even = false;
        {
            final __tmp__0 = ((0 : GoUInt));
            final __tmp__1 = ((1 : GoUInt));
            final __tmp__2 = ((0 : GoUInt));
            _u0 = __tmp__0;
            _u1 = __tmp__1;
            _u2 = __tmp__2;
        };
        {
            final __tmp__0 = ((0 : GoUInt));
            final __tmp__1 = ((0 : GoUInt));
            final __tmp__2 = ((1 : GoUInt));
            _v0 = __tmp__0;
            _v1 = __tmp__1;
            _v2 = __tmp__2;
        };
        while ((_a2 >= _v2) && ((_a1 - _a2) >= (_v1 + _v2))) {
            var _q:Word = _a1 / _a2, _r:Word = _a1 % _a2;
            {
                final __tmp__0 = _a2;
                final __tmp__1 = _r;
                _a1 = __tmp__0;
                _a2 = __tmp__1;
            };
            {
                final __tmp__0 = _u1;
                final __tmp__1 = _u2;
                final __tmp__2 = _u1 + (_q * _u2);
                _u0 = __tmp__0;
                _u1 = __tmp__1;
                _u2 = __tmp__2;
            };
            {
                final __tmp__0 = _v1;
                final __tmp__1 = _v2;
                final __tmp__2 = _v1 + (_q * _v2);
                _v0 = __tmp__0;
                _v1 = __tmp__1;
                _v2 = __tmp__2;
            };
            _even = !_even;
        };
        return { _0 : _u0, _1 : _u1, _2 : _v0, _3 : _v1, _4 : _even };
    }
/**
    // lehmerUpdate updates the inputs A and B such that:
    //		A = u0*A + v0*B
    //		B = u1*A + v1*B
    // where the signs of u0, u1, v0, v1 are given by even
    // For even == true: u0, v1 >= 0 && u1, v0 <= 0
    // For even == false: u0, v1 <= 0 && u1, v0 >= 0
    // q, r, s, t are temporary variables to avoid allocations in the multiplication
**/
function _lehmerUpdate(a:Int_, b:Int_, _q:Int_, _r:Int_, _s:Int_, _t:Int_, _u0:Word, _u1:Word, _v0:Word, _v1:Word, _even:Bool):Void {
        _t._abs = (_t._abs._setWord(_u0) == null ? null : _t._abs._setWord(_u0).__copy__());
        _s._abs = (_s._abs._setWord(_v0) == null ? null : _s._abs._setWord(_v0).__copy__());
        _t._neg = !_even;
        _s._neg = _even;
        _t.mul(a, _t);
        _s.mul(b, _s);
        _r._abs = (_r._abs._setWord(_u1) == null ? null : _r._abs._setWord(_u1).__copy__());
        _q._abs = (_q._abs._setWord(_v1) == null ? null : _q._abs._setWord(_v1).__copy__());
        _r._neg = _even;
        _q._neg = !_even;
        _r.mul(a, _r);
        _q.mul(b, _q);
        a.add(_t, _s);
        b.add(_r, _q);
    }
/**
    // euclidUpdate performs a single step of the Euclidean GCD algorithm
    // if extended is true, it also updates the cosequence Ua, Ub
**/
function _euclidUpdate(a:Int_, b:Int_, ua:Int_, ub:Int_, _q:Int_, _r:Int_, _s:Int_, _t:Int_, _extended:Bool):Void {
        {
            var __tmp__ = _q.quoRem(a, b, _r);
            _q = __tmp__._0;
            _r = __tmp__._1;
        };
        {
            var __tmp__ = (b == null ? null : b.__copy__());
            a._neg = __tmp__._neg;
            a._abs = __tmp__._abs;
        };
        if (_extended) {
            _t.set(ub);
            _s.mul(ub, _q);
            ub.sub(ua, _s);
            ua.set(_t);
        };
    }
/**
    // Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
    // The y argument must be an odd integer.
**/
function jacobi(_x:Int_, _y:Int_):GoInt {
        if (((_y._abs != null ? _y._abs.length : ((0 : GoInt))) == ((0 : GoInt))) || (((_y._abs != null ? _y._abs[((0 : GoInt))] : new Word()) & ((1 : GoUInt))) == ((0 : GoUInt)))) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(((("big: invalid 2nd argument to Int.Jacobi: need odd integer but got %s" : GoString))), Go.toInterface(_y)));
        };
        var _a:Int_ = new Int_(), _b:Int_ = new Int_(), _c:Int_ = new Int_();
        _a.set(_x);
        _b.set(_y);
        var _j:GoInt = ((1 : GoInt));
        if (_b._neg) {
            if (_a._neg) {
                _j = ((-1 : GoInt));
            };
            _b._neg = false;
        };
        while (true) {
            if (_b.cmp(_intOne) == ((0 : GoInt))) {
                return _j;
            };
            if ((_a._abs != null ? _a._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            _a.mod(_a, _b);
            if ((_a._abs != null ? _a._abs.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            var _s:GoUInt = _a._abs._trailingZeroBits();
            if ((_s & ((1 : GoUInt))) != ((0 : GoUInt))) {
                var _bmod8:Word = (_b._abs != null ? _b._abs[((0 : GoInt))] : new Word()) & ((7 : GoUInt));
                if ((_bmod8 == ((3 : GoUInt))) || (_bmod8 == ((5 : GoUInt)))) {
                    _j = -_j;
                };
            };
            _c.rsh(_a, _s);
            if ((((_b._abs != null ? _b._abs[((0 : GoInt))] : new Word()) & ((3 : GoUInt))) == ((3 : GoUInt))) && (((_c._abs != null ? _c._abs[((0 : GoInt))] : new Word()) & ((3 : GoUInt))) == ((3 : GoUInt)))) {
                _j = -_j;
            };
            _a.set(_b);
            _b.set(_c);
        };
    }
/**
    // write count copies of text to s
**/
function _writeMultiple(_s:stdgo.fmt.Fmt.State, _text:GoString, _count:GoInt):Void {
        if ((_text != null ? _text.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _b:Slice<GoUInt8> = ((_text : Slice<GoByte>));
            Go.cfor(_count > ((0 : GoInt)), _count--, {
                _s.write(_b);
            });
        };
    }
function _scanSign(_r:stdgo.io.Io.ByteScanner):{ var _0 : Bool; var _1 : Error; } {
        var _neg:Bool = false, _err:Error = ((null : stdgo.Error));
        var _ch:GoByte = ((0 : GoUInt8));
        {
            {
                var __tmp__ = _r.readByte();
                _ch = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        if (_ch == ((((("-" : GoString))).code : GoRune))) {
            _neg = true;
        } else if (_ch == ((((("+" : GoString))).code : GoRune))) {} else {
            _r.unreadByte();
        };
        return { _0 : _neg, _1 : _err };
    }
/**
    // basicMul multiplies x and y and leaves the result in z.
    // The (non-normalized) result is placed in z[0 : len(x) + len(y)].
**/
function _basicMul(_z:T_nat, _x:T_nat, _y:T_nat):Void {
        _z.__slice__(((0 : GoInt)), (_x != null ? _x.length : ((0 : GoInt))) + (_y != null ? _y.length : ((0 : GoInt))))._clear();
        for (_i => _d in _y) {
            if (_d != ((0 : GoUInt))) {
                if (_z != null) _z[(_x != null ? _x.length : ((0 : GoInt))) + _i] = _addMulVVW(_z.__slice__(_i, _i + (_x != null ? _x.length : ((0 : GoInt)))), _x, _d);
            };
        };
    }
/**
    // Fast version of z[0:n+n>>1].add(z[0:n+n>>1], x[0:n]) w/o bounds checks.
    // Factored out for readability - do not use outside karatsuba.
**/
function _karatsubaAdd(_z:T_nat, _x:T_nat, _n:GoInt):Void {
        {
            var _c:Word = _addVV(_z.__slice__(((0 : GoInt)), _n), _z, _x);
            if (_c != ((0 : GoUInt))) {
                _addVW(_z.__slice__(_n, _n + (_n >> ((1 : GoUnTypedInt)))), _z.__slice__(_n), _c);
            };
        };
    }
/**
    // Like karatsubaAdd, but does subtract.
**/
function _karatsubaSub(_z:T_nat, _x:T_nat, _n:GoInt):Void {
        {
            var _c:Word = _subVV(_z.__slice__(((0 : GoInt)), _n), _z, _x);
            if (_c != ((0 : GoUInt))) {
                _subVW(_z.__slice__(_n, _n + (_n >> ((1 : GoUnTypedInt)))), _z.__slice__(_n), _c);
            };
        };
    }
/**
    // karatsuba multiplies x and y and leaves the result in z.
    // Both x and y must have the same length n and n must be a
    // power of 2. The result vector z must have len(z) >= 6*n.
    // The (non-normalized) result is placed in z[0 : 2*n].
**/
function _karatsuba(_z:T_nat, _x:T_nat, _y:T_nat):Void {
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        if ((((_n & ((1 : GoInt))) != ((0 : GoInt))) || (_n < _karatsubaThreshold)) || (_n < ((2 : GoInt)))) {
            _basicMul((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__()));
            return;
        };
        var _n2:GoInt = _n >> ((1 : GoUnTypedInt));
        var _x1:T_nat = (_x.__slice__(_n2) == null ? null : _x.__slice__(_n2).__copy__()), _x0:T_nat = (_x.__slice__(((0 : GoInt)), _n2) == null ? null : _x.__slice__(((0 : GoInt)), _n2).__copy__());
        var _y1:T_nat = (_y.__slice__(_n2) == null ? null : _y.__slice__(_n2).__copy__()), _y0:T_nat = (_y.__slice__(((0 : GoInt)), _n2) == null ? null : _y.__slice__(((0 : GoInt)), _n2).__copy__());
        _karatsuba((_z == null ? null : _z.__copy__()), (_x0 == null ? null : _x0.__copy__()), (_y0 == null ? null : _y0.__copy__()));
        _karatsuba((_z.__slice__(_n) == null ? null : _z.__slice__(_n).__copy__()), (_x1 == null ? null : _x1.__copy__()), (_y1 == null ? null : _y1.__copy__()));
        var _s:GoInt = ((1 : GoInt));
        var _xd:T_nat = (_z.__slice__(((2 : GoInt)) * _n, (((2 : GoInt)) * _n) + _n2) == null ? null : _z.__slice__(((2 : GoInt)) * _n, (((2 : GoInt)) * _n) + _n2).__copy__());
        if (_subVV(_xd, _x1, _x0) != ((0 : GoUInt))) {
            _s = -_s;
            _subVV(_xd, _x0, _x1);
        };
        var _yd:T_nat = (_z.__slice__((((2 : GoInt)) * _n) + _n2, ((3 : GoInt)) * _n) == null ? null : _z.__slice__((((2 : GoInt)) * _n) + _n2, ((3 : GoInt)) * _n).__copy__());
        if (_subVV(_yd, _y0, _y1) != ((0 : GoUInt))) {
            _s = -_s;
            _subVV(_yd, _y1, _y0);
        };
        var _p:T_nat = (_z.__slice__(_n * ((3 : GoInt))) == null ? null : _z.__slice__(_n * ((3 : GoInt))).__copy__());
        _karatsuba((_p == null ? null : _p.__copy__()), (_xd == null ? null : _xd.__copy__()), (_yd == null ? null : _yd.__copy__()));
        var _r:T_nat = (_z.__slice__(_n * ((4 : GoInt))) == null ? null : _z.__slice__(_n * ((4 : GoInt))).__copy__());
        Go.copy(_r, _z.__slice__(0, _n * ((2 : GoInt))));
        _karatsubaAdd((_z.__slice__(_n2) == null ? null : _z.__slice__(_n2).__copy__()), (_r == null ? null : _r.__copy__()), _n);
        _karatsubaAdd((_z.__slice__(_n2) == null ? null : _z.__slice__(_n2).__copy__()), (_r.__slice__(_n) == null ? null : _r.__slice__(_n).__copy__()), _n);
        if (_s > ((0 : GoInt))) {
            _karatsubaAdd((_z.__slice__(_n2) == null ? null : _z.__slice__(_n2).__copy__()), (_p == null ? null : _p.__copy__()), _n);
        } else {
            _karatsubaSub((_z.__slice__(_n2) == null ? null : _z.__slice__(_n2).__copy__()), (_p == null ? null : _p.__copy__()), _n);
        };
    }
/**
    // alias reports whether x and y share the same base array.
    // Note: alias assumes that the capacity of underlying arrays
    //       is never changed for nat values; i.e. that there are
    //       no 3-operand slice expressions in this code (or worse,
    //       reflect-based operations to the same effect).
**/
function _alias(_x:T_nat, _y:T_nat):Bool {
        return (((_x != null ? _x.cap() : ((0 : GoInt))) > ((0 : GoInt))) && ((_y != null ? _y.cap() : ((0 : GoInt))) > ((0 : GoInt)))) && (Go.pointer((_x.__slice__(((0 : GoInt)), (_x != null ? _x.cap() : ((0 : GoInt)))) != null ? _x.__slice__(((0 : GoInt)), (_x != null ? _x.cap() : ((0 : GoInt))))[(_x != null ? _x.cap() : ((0 : GoInt))) - ((1 : GoInt))] : new Word())) == Go.pointer((_y.__slice__(((0 : GoInt)), (_y != null ? _y.cap() : ((0 : GoInt)))) != null ? _y.__slice__(((0 : GoInt)), (_y != null ? _y.cap() : ((0 : GoInt))))[(_y != null ? _y.cap() : ((0 : GoInt))) - ((1 : GoInt))] : new Word())));
    }
/**
    // addAt implements z += x<<(_W*i); z must be long enough.
    // (we don't use nat.add because we need z to stay the same
    // slice, and we don't need to normalize z after each addition)
**/
function _addAt(_z:T_nat, _x:T_nat, _i:GoInt):Void {
        {
            var _n:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
            if (_n > ((0 : GoInt))) {
                {
                    var _c:Word = _addVV(_z.__slice__(_i, _i + _n), _z.__slice__(_i), _x);
                    if (_c != ((0 : GoUInt))) {
                        var _j:GoInt = _i + _n;
                        if (_j < (_z != null ? _z.length : ((0 : GoInt)))) {
                            _addVW(_z.__slice__(_j), _z.__slice__(_j), _c);
                        };
                    };
                };
            };
        };
    }
function _max(_x:GoInt, _y:GoInt):GoInt {
        if (_x > _y) {
            return _x;
        };
        return _y;
    }
/**
    // karatsubaLen computes an approximation to the maximum k <= n such that
    // k = p<<i for a number p <= threshold and an i >= 0. Thus, the
    // result is the largest number that can be divided repeatedly by 2 before
    // becoming about the value of threshold.
**/
function _karatsubaLen(_n:GoInt, _threshold:GoInt):GoInt {
        var _i:GoUInt = ((((0 : GoUInt)) : GoUInt));
        while (_n > _threshold) {
            _n = _n >> (((1 : GoUnTypedInt)));
            _i++;
        };
        return _n << _i;
    }
/**
    // basicSqr sets z = x*x and is asymptotically faster than basicMul
    // by about a factor of 2, but slower for small arguments due to overhead.
    // Requirements: len(x) > 0, len(z) == 2*len(x)
    // The (non-normalized) result is placed in z.
**/
function _basicSqr(_z:T_nat, _x:T_nat):Void {
        var _n:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _tp:T_nat = _getNat(((2 : GoInt)) * _n);
        var _t:T_nat = (_tp == null ? null : _tp.__copy__());
        _t._clear();
        {
            var __tmp__ = _mulWW((_x != null ? _x[((0 : GoInt))] : new Word()), (_x != null ? _x[((0 : GoInt))] : new Word()));
            (_z != null ? _z[((1 : GoInt))] : new Word()) = __tmp__._0;
            (_z != null ? _z[((0 : GoInt))] : new Word()) = __tmp__._1;
        };
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _d:Word = (_x != null ? _x[_i] : new Word());
                {
                    var __tmp__ = _mulWW(_d, _d);
                    (_z != null ? _z[(((2 : GoInt)) * _i) + ((1 : GoInt))] : new Word()) = __tmp__._0;
                    (_z != null ? _z[((2 : GoInt)) * _i] : new Word()) = __tmp__._1;
                };
                if (_t != null) _t[((2 : GoInt)) * _i] = _addMulVVW(_t.__slice__(_i, ((2 : GoInt)) * _i), _x.__slice__(((0 : GoInt)), _i), _d);
            });
        };
        if (_t != null) _t[(((2 : GoInt)) * _n) - ((1 : GoInt))] = _shlVU(_t.__slice__(((1 : GoInt)), (((2 : GoInt)) * _n) - ((1 : GoInt))), _t.__slice__(((1 : GoInt)), (((2 : GoInt)) * _n) - ((1 : GoInt))), ((1 : GoUInt)));
        _addVV(_z, _z, _t);
        _putNat(_tp);
    }
/**
    // karatsubaSqr squares x and leaves the result in z.
    // len(x) must be a power of 2 and len(z) >= 6*len(x).
    // The (non-normalized) result is placed in z[0 : 2*len(x)].
    //
    // The algorithm and the layout of z are the same as for karatsuba.
**/
function _karatsubaSqr(_z:T_nat, _x:T_nat):Void {
        var _n:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        if ((((_n & ((1 : GoInt))) != ((0 : GoInt))) || (_n < _karatsubaSqrThreshold)) || (_n < ((2 : GoInt)))) {
            _basicSqr((_z.__slice__(0, ((2 : GoInt)) * _n) == null ? null : _z.__slice__(0, ((2 : GoInt)) * _n).__copy__()), (_x == null ? null : _x.__copy__()));
            return;
        };
        var _n2:GoInt = _n >> ((1 : GoUnTypedInt));
        var _x1:T_nat = (_x.__slice__(_n2) == null ? null : _x.__slice__(_n2).__copy__()), _x0:T_nat = (_x.__slice__(((0 : GoInt)), _n2) == null ? null : _x.__slice__(((0 : GoInt)), _n2).__copy__());
        _karatsubaSqr((_z == null ? null : _z.__copy__()), (_x0 == null ? null : _x0.__copy__()));
        _karatsubaSqr((_z.__slice__(_n) == null ? null : _z.__slice__(_n).__copy__()), (_x1 == null ? null : _x1.__copy__()));
        var _xd:T_nat = (_z.__slice__(((2 : GoInt)) * _n, (((2 : GoInt)) * _n) + _n2) == null ? null : _z.__slice__(((2 : GoInt)) * _n, (((2 : GoInt)) * _n) + _n2).__copy__());
        if (_subVV(_xd, _x1, _x0) != ((0 : GoUInt))) {
            _subVV(_xd, _x0, _x1);
        };
        var _p:T_nat = (_z.__slice__(_n * ((3 : GoInt))) == null ? null : _z.__slice__(_n * ((3 : GoInt))).__copy__());
        _karatsubaSqr((_p == null ? null : _p.__copy__()), (_xd == null ? null : _xd.__copy__()));
        var _r:T_nat = (_z.__slice__(_n * ((4 : GoInt))) == null ? null : _z.__slice__(_n * ((4 : GoInt))).__copy__());
        Go.copy(_r, _z.__slice__(0, _n * ((2 : GoInt))));
        _karatsubaAdd((_z.__slice__(_n2) == null ? null : _z.__slice__(_n2).__copy__()), (_r == null ? null : _r.__copy__()), _n);
        _karatsubaAdd((_z.__slice__(_n2) == null ? null : _z.__slice__(_n2).__copy__()), (_r.__slice__(_n) == null ? null : _r.__slice__(_n).__copy__()), _n);
        _karatsubaSub((_z.__slice__(_n2) == null ? null : _z.__slice__(_n2).__copy__()), (_p == null ? null : _p.__copy__()), _n);
    }
/**
    // getNat returns a *nat of len n. The contents may not be zero.
    // The pool holds *nat to avoid allocation when converting to interface{}.
**/
function _getNat(_n:GoInt):T_nat {
        var _z:T_nat = ((null : T_nat));
        {
            var _v:AnyInterface = Go.toInterface(_natPool.get());
            if (_v != null) {
                _z = ((_v.value : T_nat));
            };
        };
        if (_z == null) {
            _z = Go.pointer(new T_nat());
        };
        _z = (_z._make(_n) == null ? null : _z._make(_n).__copy__());
        return _z;
    }
function _putNat(_x:T_nat):Void {
        _natPool.put(Go.toInterface(_x));
    }
function _same(_x:T_nat, _y:T_nat):Bool {
        return (((_x != null ? _x.length : ((0 : GoInt))) == (_y != null ? _y.length : ((0 : GoInt)))) && ((_x != null ? _x.length : ((0 : GoInt))) > ((0 : GoInt)))) && (Go.pointer((_x != null ? _x[((0 : GoInt))] : new Word())) == Go.pointer((_y != null ? _y[((0 : GoInt))] : new Word())));
    }
/**
    // bigEndianWord returns the contents of buf interpreted as a big-endian encoded Word value.
**/
function _bigEndianWord(_buf:Slice<GoByte>):Word {
        if (false) {
            return ((stdgo.encoding.binary.Binary.bigEndian.uint64(_buf) : Word));
        };
        return ((stdgo.encoding.binary.Binary.bigEndian.uint32(_buf) : Word));
    }
/**
    // maxPow returns (b**n, n) such that b**n is the largest power b**n <= _M.
    // For instance maxPow(10) == (1e19, 19) for 19 decimal digits in a 64bit Word.
    // In other words, at most n digits in base b fit into a Word.
    // TODO(gri) replace this with a table, generated at build time.
**/
function _maxPow(_b:Word):{ var _0 : Word; var _1 : GoInt; } {
        var _p:Word = new Word(), _n:GoInt = ((0 : GoInt));
        {
            final __tmp__0 = _b;
            final __tmp__1 = ((1 : GoInt));
            _p = __tmp__0;
            _n = __tmp__1;
        };
        {
            var _max:Word = (("4294967295" : GoUInt)) / _b;
            while (_p <= _max) {
                _p = _p * (_b);
                _n++;
            };
        };
        return { _0 : _p, _1 : _n };
    }
/**
    // pow returns x**n for n > 0, and 1 otherwise.
**/
function _pow(_x:Word, _n:GoInt):Word {
        var _p:Word = new Word();
        _p = ((1 : GoUInt));
        while (_n > ((0 : GoInt))) {
            if ((_n & ((1 : GoInt))) != ((0 : GoInt))) {
                _p = _p * (_x);
            };
            _x = _x * (_x);
            _n = _n >> (((1 : GoUnTypedInt)));
        };
        return _p;
    }
/**
    // construct table of powers of bb*leafSize to use in subdivisions
**/
function _divisors(_m:GoInt, _b:Word, _ndigits:GoInt, _bb:Word):Slice<T_divisor> {
        if ((_leafSize == ((0 : GoInt))) || (_m <= _leafSize)) {
            return ((null : Slice<T_divisor>));
        };
        var _k:GoInt = ((1 : GoInt));
        {
            var _words:GoInt = _leafSize;
            Go.cfor((_words < (_m >> ((1 : GoUnTypedInt)))) && (_k < (_cacheBase10._table != null ? _cacheBase10._table.length : ((0 : GoInt)))), _words = _words << (((1 : GoUnTypedInt))), {
                _k++;
            });
        };
        var _table:Slice<T_divisor> = ((null : Slice<T_divisor>));
        if (_b == ((10 : GoUInt))) {
            _cacheBase10.lock();
            _table = _cacheBase10._table.__slice__(((0 : GoInt)), _k);
        } else {
            _table = new Slice<T_divisor>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) new T_divisor()]);
        };
        if ((_table != null ? _table[_k - ((1 : GoInt))] : new T_divisor())._ndigits == ((0 : GoInt))) {
            var _larger:T_nat = new T_nat();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _k, _i++, {
                    if ((_table != null ? _table[_i] : new T_divisor())._ndigits == ((0 : GoInt))) {
                        if (_i == ((0 : GoInt))) {
                            (_table != null ? _table[((0 : GoInt))] : new T_divisor())._bbb = (((new T_nat() : T_nat))._expWW(_bb, ((_leafSize : Word))) == null ? null : ((new T_nat() : T_nat))._expWW(_bb, ((_leafSize : Word))).__copy__());
                            (_table != null ? _table[((0 : GoInt))] : new T_divisor())._ndigits = _ndigits * _leafSize;
                        } else {
                            (_table != null ? _table[_i] : new T_divisor())._bbb = (((new T_nat() : T_nat))._sqr(((_table != null ? _table[_i - ((1 : GoInt))] : new T_divisor())._bbb == null ? null : (_table != null ? _table[_i - ((1 : GoInt))] : new T_divisor())._bbb.__copy__())) == null ? null : ((new T_nat() : T_nat))._sqr(((_table != null ? _table[_i - ((1 : GoInt))] : new T_divisor())._bbb == null ? null : (_table != null ? _table[_i - ((1 : GoInt))] : new T_divisor())._bbb.__copy__())).__copy__());
                            (_table != null ? _table[_i] : new T_divisor())._ndigits = ((2 : GoInt)) * (_table != null ? _table[_i - ((1 : GoInt))] : new T_divisor())._ndigits;
                        };
                        _larger = (((new T_nat() : T_nat))._set(((_table != null ? _table[_i] : new T_divisor())._bbb == null ? null : (_table != null ? _table[_i] : new T_divisor())._bbb.__copy__())) == null ? null : ((new T_nat() : T_nat))._set(((_table != null ? _table[_i] : new T_divisor())._bbb == null ? null : (_table != null ? _table[_i] : new T_divisor())._bbb.__copy__())).__copy__());
                        while (_mulAddVWW(_larger, _larger, _b, ((0 : GoUInt))) == ((0 : GoUInt))) {
                            (_table != null ? _table[_i] : new T_divisor())._bbb = ((_table != null ? _table[_i] : new T_divisor())._bbb._set((_larger == null ? null : _larger.__copy__())) == null ? null : (_table != null ? _table[_i] : new T_divisor())._bbb._set((_larger == null ? null : _larger.__copy__())).__copy__());
                            (_table != null ? _table[_i] : new T_divisor())._ndigits++;
                        };
                        (_table != null ? _table[_i] : new T_divisor())._nbits = (_table != null ? _table[_i] : new T_divisor())._bbb._bitLen();
                    };
                });
            };
        };
        if (_b == ((10 : GoUInt))) {
            _cacheBase10.unlock();
        };
        return _table;
    }
/**
    // divWVW overwrites z with ⌊x/y⌋, returning the remainder r.
    // The caller must ensure that len(z) = len(x).
**/
function _divWVW(_z:Slice<Word>, _xn:Word, _x:Slice<Word>, _y:Word):Word {
        var _r:Word = new Word();
        _r = _xn;
        if ((_x != null ? _x.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var __tmp__ = stdgo.math.bits.Bits.div(((_r : GoUInt)), (((_x != null ? _x[((0 : GoInt))] : new Word()) : GoUInt)), ((_y : GoUInt))), _qq:GoUInt = __tmp__._0, _rr:GoUInt = __tmp__._1;
            if (_z != null) _z[((0 : GoInt))] = ((_qq : Word));
            return ((_rr : Word));
        };
        var _rec:Word = _reciprocalWord(_y);
        {
            var _i:GoInt = (_z != null ? _z.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                {
                    var __tmp__ = _divWW(_r, (_x != null ? _x[_i] : new Word()), _y, _rec);
                    (_z != null ? _z[_i] : new Word()) = __tmp__._0;
                    _r = __tmp__._1;
                };
            });
        };
        return _r;
    }
/**
    // greaterThan reports whether the two digit numbers x1 x2 > y1 y2.
    // TODO(rsc): In contradiction to most of this file, x1 is the high
    // digit and x2 is the low digit. This should be fixed.
**/
function _greaterThan(_x1:Word, _x2:Word, _y1:Word, _y2:Word):Bool {
        return (_x1 > _y1) || ((_x1 == _y1) && (_x2 > _y2));
    }
/**
    // NewRat creates a new Rat with numerator a and denominator b.
**/
function newRat(_a:GoInt64, _b:GoInt64):Rat {
        return Go.pointer(new Rat()).setFrac64(_a, _b);
    }
/**
    // quotToFloat32 returns the non-negative float32 value
    // nearest to the quotient a/b, using round-to-even in
    // halfway cases. It does not mutate its arguments.
    // Preconditions: b is non-zero; a and b have no common factors.
**/
function _quotToFloat32(_a:T_nat, _b:T_nat):{ var _0 : GoFloat32; var _1 : Bool; } {
        var _f:GoFloat32 = ((0 : GoFloat32)), _exact:Bool = false;
        {};
        var _alen:GoInt = _a._bitLen();
        if (_alen == ((0 : GoInt))) {
            return { _0 : ((0 : GoFloat32)), _1 : true };
        };
        var _blen:GoInt = _b._bitLen();
        if (_blen == ((0 : GoInt))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        };
        var _exp:GoInt = _alen - _blen;
        var _a2:T_nat = new T_nat(), _b2:T_nat = new T_nat();
        _a2 = (_a2._set((_a == null ? null : _a.__copy__())) == null ? null : _a2._set((_a == null ? null : _a.__copy__())).__copy__());
        _b2 = (_b2._set((_b == null ? null : _b.__copy__())) == null ? null : _b2._set((_b == null ? null : _b.__copy__())).__copy__());
        {
            var _shift:GoInt = ((25 : GoInt)) - _exp;
            if (_shift > ((0 : GoInt))) {
                _a2 = (_a2._shl((_a2 == null ? null : _a2.__copy__()), ((_shift : GoUInt))) == null ? null : _a2._shl((_a2 == null ? null : _a2.__copy__()), ((_shift : GoUInt))).__copy__());
            } else if (_shift < ((0 : GoInt))) {
                _b2 = (_b2._shl((_b2 == null ? null : _b2.__copy__()), ((-_shift : GoUInt))) == null ? null : _b2._shl((_b2 == null ? null : _b2.__copy__()), ((-_shift : GoUInt))).__copy__());
            };
        };
        var _q:T_nat = new T_nat();
        var __tmp__ = _q._div((_a2 == null ? null : _a2.__copy__()), (_a2 == null ? null : _a2.__copy__()), (_b2 == null ? null : _b2.__copy__())), _q:T_nat = __tmp__._0, _r:T_nat = __tmp__._1;
        var _mantissa:GoUInt32 = _low32((_q == null ? null : _q.__copy__()));
        var _haveRem:Bool = (_r != null ? _r.length : ((0 : GoInt))) > ((0 : GoInt));
        if ((_mantissa >> ((25 : GoUnTypedInt))) == ((1 : GoUInt32))) {
            if ((_mantissa & ((1 : GoUInt32))) == ((1 : GoUInt32))) {
                _haveRem = true;
            };
            _mantissa = _mantissa >> (((1 : GoUnTypedInt)));
            _exp++;
        };
        if ((_mantissa >> ((24 : GoUnTypedInt))) != ((1 : GoUInt32))) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(((("expected exactly %d bits of result" : GoString))), Go.toInterface(((25 : GoInt)))));
        };
        if ((((-149 : GoInt)) <= _exp) && (_exp <= ((-126 : GoInt)))) {
            var _shift:GoUInt = (((((-126 : GoInt)) - (_exp - ((1 : GoInt)))) : GoUInt));
            var _lostbits:GoUInt32 = _mantissa & ((((1 : GoUInt32)) << _shift) - ((1 : GoUInt32)));
            _haveRem = _haveRem || (_lostbits != ((0 : GoUInt32)));
            _mantissa = _mantissa >> (_shift);
            _exp = ((-125 : GoInt));
        };
        _exact = !_haveRem;
        if ((_mantissa & ((1 : GoUInt32))) != ((0 : GoUInt32))) {
            _exact = false;
            if (_haveRem || ((_mantissa & ((2 : GoUInt32))) != ((0 : GoUInt32)))) {
                {
                    _mantissa++;
                    if (_mantissa >= ((33554432 : GoUInt32))) {
                        _mantissa = _mantissa >> (((1 : GoUnTypedInt)));
                        _exp++;
                    };
                };
            };
        };
        _mantissa = _mantissa >> (((1 : GoUnTypedInt)));
        _f = ((stdgo.math.Math.ldexp(((_mantissa : GoFloat64)), _exp - ((24 : GoInt))) : GoFloat32));
        if (stdgo.math.Math.isInf(((_f : GoFloat64)), ((0 : GoInt)))) {
            _exact = false;
        };
        return { _0 : _f, _1 : _exact };
    }
/**
    // quotToFloat64 returns the non-negative float64 value
    // nearest to the quotient a/b, using round-to-even in
    // halfway cases. It does not mutate its arguments.
    // Preconditions: b is non-zero; a and b have no common factors.
**/
function _quotToFloat64(_a:T_nat, _b:T_nat):{ var _0 : GoFloat64; var _1 : Bool; } {
        var _f:GoFloat64 = ((0 : GoFloat64)), _exact:Bool = false;
        {};
        var _alen:GoInt = _a._bitLen();
        if (_alen == ((0 : GoInt))) {
            return { _0 : ((0 : GoFloat64)), _1 : true };
        };
        var _blen:GoInt = _b._bitLen();
        if (_blen == ((0 : GoInt))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        };
        var _exp:GoInt = _alen - _blen;
        var _a2:T_nat = new T_nat(), _b2:T_nat = new T_nat();
        _a2 = (_a2._set((_a == null ? null : _a.__copy__())) == null ? null : _a2._set((_a == null ? null : _a.__copy__())).__copy__());
        _b2 = (_b2._set((_b == null ? null : _b.__copy__())) == null ? null : _b2._set((_b == null ? null : _b.__copy__())).__copy__());
        {
            var _shift:GoInt = ((54 : GoInt)) - _exp;
            if (_shift > ((0 : GoInt))) {
                _a2 = (_a2._shl((_a2 == null ? null : _a2.__copy__()), ((_shift : GoUInt))) == null ? null : _a2._shl((_a2 == null ? null : _a2.__copy__()), ((_shift : GoUInt))).__copy__());
            } else if (_shift < ((0 : GoInt))) {
                _b2 = (_b2._shl((_b2 == null ? null : _b2.__copy__()), ((-_shift : GoUInt))) == null ? null : _b2._shl((_b2 == null ? null : _b2.__copy__()), ((-_shift : GoUInt))).__copy__());
            };
        };
        var _q:T_nat = new T_nat();
        var __tmp__ = _q._div((_a2 == null ? null : _a2.__copy__()), (_a2 == null ? null : _a2.__copy__()), (_b2 == null ? null : _b2.__copy__())), _q:T_nat = __tmp__._0, _r:T_nat = __tmp__._1;
        var _mantissa:GoUInt64 = _low64((_q == null ? null : _q.__copy__()));
        var _haveRem:Bool = (_r != null ? _r.length : ((0 : GoInt))) > ((0 : GoInt));
        if ((_mantissa >> ((54 : GoUnTypedInt))) == ((1 : GoUInt64))) {
            if ((_mantissa & ((1 : GoUInt64))) == ((1 : GoUInt64))) {
                _haveRem = true;
            };
            _mantissa = _mantissa >> (((1 : GoUnTypedInt)));
            _exp++;
        };
        if ((_mantissa >> ((53 : GoUnTypedInt))) != ((1 : GoUInt64))) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(((("expected exactly %d bits of result" : GoString))), Go.toInterface(((54 : GoInt)))));
        };
        if ((((-1074 : GoInt)) <= _exp) && (_exp <= ((-1022 : GoInt)))) {
            var _shift:GoUInt = (((((-1022 : GoInt)) - (_exp - ((1 : GoInt)))) : GoUInt));
            var _lostbits:GoUInt64 = _mantissa & ((((1 : GoUInt64)) << _shift) - ((1 : GoUInt64)));
            _haveRem = _haveRem || (_lostbits != ((0 : GoUInt64)));
            _mantissa = _mantissa >> (_shift);
            _exp = ((-1021 : GoInt));
        };
        _exact = !_haveRem;
        if ((_mantissa & ((1 : GoUInt64))) != ((0 : GoUInt64))) {
            _exact = false;
            if (_haveRem || ((_mantissa & ((2 : GoUInt64))) != ((0 : GoUInt64)))) {
                {
                    _mantissa++;
                    if (_mantissa >= (("18014398509481984" : GoUInt64))) {
                        _mantissa = _mantissa >> (((1 : GoUnTypedInt)));
                        _exp++;
                    };
                };
            };
        };
        _mantissa = _mantissa >> (((1 : GoUnTypedInt)));
        _f = stdgo.math.Math.ldexp(((_mantissa : GoFloat64)), _exp - ((53 : GoInt)));
        if (stdgo.math.Math.isInf(_f, ((0 : GoInt)))) {
            _exact = false;
        };
        return { _0 : _f, _1 : _exact };
    }
/**
    // mulDenom sets z to the denominator product x*y (by taking into
    // account that 0 values for x or y must be interpreted as 1) and
    // returns z.
**/
function _mulDenom(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        if (((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_y != null ? _y.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            return (_z._setWord(((1 : GoUInt))) == null ? null : _z._setWord(((1 : GoUInt))).__copy__());
        } else if ((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return (_z._set((_y == null ? null : _y.__copy__())) == null ? null : _z._set((_y == null ? null : _y.__copy__())).__copy__());
        } else if ((_y != null ? _y.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
        };
        return (_z._mul((_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__())) == null ? null : _z._mul((_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__())).__copy__());
    }
function _ratTok(_ch:GoRune):Bool {
        return stdgo.strings.Strings.containsRune(((("+-/0123456789.eE" : GoString))), _ch);
    }
/**
    // scanExponent scans the longest possible prefix of r representing a base 10
    // (``e'', ``E'') or a base 2 (``p'', ``P'') exponent, if any. It returns the
    // exponent, the exponent base (10 or 2), or a read or syntax error, if any.
    //
    // If sepOk is set, an underscore character ``_'' may appear between successive
    // exponent digits; such underscores do not change the value of the exponent.
    // Incorrect placement of underscores is reported as an error if there are no
    // other errors. If sepOk is not set, underscores are not recognized and thus
    // terminate scanning like any other character that is not a valid digit.
    //
    //	exponent = ( "e" | "E" | "p" | "P" ) [ sign ] digits .
    //	sign     = "+" | "-" .
    //	digits   = digit { [ '_' ] digit } .
    //	digit    = "0" ... "9" .
    //
    // A base 2 exponent is only permitted if base2ok is set.
**/
function _scanExponent(_r:stdgo.io.Io.ByteScanner, _base2ok:Bool, _sepOk:Bool):{ var _0 : GoInt64; var _1 : GoInt; var _2 : Error; } {
        var _exp:GoInt64 = ((0 : GoInt64)), _base:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _r.readByte(), _ch:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (_err == stdgo.io.Io.eof) {
                _err = ((null : stdgo.Error));
            };
            return { _0 : ((0 : GoInt64)), _1 : ((10 : GoInt)), _2 : _err };
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _ch == ((((("e" : GoString))).code : GoRune)) || _ch == ((((("E" : GoString))).code : GoRune)))) {
                    _base = ((10 : GoInt));
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _ch == ((((("p" : GoString))).code : GoRune)) || _ch == ((((("P" : GoString))).code : GoRune)))) {
                    if (_base2ok) {
                        _base = ((2 : GoInt));
                        break;
                    };
                    @:fallthrough {
                        __switchIndex__ = 2;
                        continue;
                    };
                    break;
                } else {
                    _r.unreadByte();
                    return { _0 : ((0 : GoInt64)), _1 : ((10 : GoInt)), _2 : ((null : stdgo.Error)) };
                    break;
                };
                break;
            };
        };
        var _digits:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var __tmp__ = _r.readByte();
            _ch = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_err == null) && ((_ch == ((((("+" : GoString))).code : GoRune))) || (_ch == ((((("-" : GoString))).code : GoRune))))) {
            if (_ch == ((((("-" : GoString))).code : GoRune))) {
                _digits = (_digits != null ? _digits.__append__(((((("-" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("-" : GoString))).code : GoRune))));
            };
            {
                var __tmp__ = _r.readByte();
                _ch = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        var _prev:GoInt32 = ((((("." : GoString))).code : GoRune));
        var _invalSep:Bool = false;
        var _hasDigits:Bool = false;
        while (_err == null) {
            if ((((((("0" : GoString))).code : GoRune)) <= _ch) && (_ch <= ((((("9" : GoString))).code : GoRune)))) {
                _digits = (_digits != null ? _digits.__append__(_ch) : new Slice<GoUInt8>(_ch));
                _prev = ((((("0" : GoString))).code : GoRune));
                _hasDigits = true;
            } else if ((_ch == ((((("_" : GoString))).code : GoRune))) && _sepOk) {
                if (_prev != ((((("0" : GoString))).code : GoRune))) {
                    _invalSep = true;
                };
                _prev = ((((("_" : GoString))).code : GoRune));
            } else {
                _r.unreadByte();
                break;
            };
            {
                var __tmp__ = _r.readByte();
                _ch = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err == stdgo.io.Io.eof) {
            _err = ((null : stdgo.Error));
        };
        if ((_err == null) && !_hasDigits) {
            _err = _errNoDigits;
        };
        if (_err == null) {
            {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(((_digits : GoString)), ((10 : GoInt)), ((64 : GoInt)));
                _exp = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if ((_err == null) && (_invalSep || (_prev == ((((("_" : GoString))).code : GoRune))))) {
            _err = _errInvalSep;
        };
        return { _0 : _exp, _1 : _base, _2 : _err };
    }
function _three():Float_ {
        _threeOnce.do_(function():Void {
            _threeOnce._v = newFloat(((3 : GoFloat64)));
        });
        return _threeOnce._v;
    }
/**
    // newFloat returns a new *Float with space for twice the given
    // precision.
**/
function _newFloat(_prec2:GoUInt32):Float_ {
        var _z:Float_ = Go.pointer(new Float_());
        _z._mant = (_z._mant._make((((_prec2 / ((32 : GoUInt32))) : GoInt)) * ((2 : GoInt))) == null ? null : _z._mant._make((((_prec2 / ((32 : GoUInt32))) : GoInt)) * ((2 : GoInt))).__copy__());
        return _z;
    }
@:build(stdgo.internal.Macro.wrapper(T_decimal)) class T_decimal_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(Float_)) class Float__static_extension {

}
@:build(stdgo.internal.Macro.wrapper(ErrNaN)) class ErrNaN_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(RoundingMode)) class RoundingMode_static_extension {
    public static function toString(_i:RoundingMode):GoString {
        _i;
        if (_i >= ((((6 : GoInt)) : RoundingMode))) {
            return (((("RoundingMode(" : GoString))) + stdgo.strconv.Strconv.formatInt(((_i : GoInt64)), ((10 : GoInt)))) + (((")" : GoString)));
        };
        return ((("ToNearestEvenToNearestAwayToZeroAwayFromZeroToNegativeInfToPositiveInf" : GoString))).__slice__((__RoundingMode_index != null ? __RoundingMode_index[_i] : ((0 : GoUInt8))), (__RoundingMode_index != null ? __RoundingMode_index[_i + ((1 : GoUInt8))] : ((0 : GoUInt8))));
    }
}
@:build(stdgo.internal.Macro.wrapper(Accuracy)) class Accuracy_static_extension {
    public static function toString(_i:Accuracy):GoString {
        _i;
        _i = _i - (((-1 : GoInt8)));
        if ((_i < ((0 : GoInt8))) || (_i >= ((((3 : GoInt)) : Accuracy)))) {
            return (((("Accuracy(" : GoString))) + stdgo.strconv.Strconv.formatInt((((_i + ((-1 : GoInt8))) : GoInt64)), ((10 : GoInt)))) + (((")" : GoString)));
        };
        return ((("BelowExactAbove" : GoString))).__slice__((__Accuracy_index != null ? __Accuracy_index[_i] : ((0 : GoUInt8))), (__Accuracy_index != null ? __Accuracy_index[_i + ((1 : GoInt8))] : ((0 : GoUInt8))));
    }
}
@:build(stdgo.internal.Macro.wrapper(Int_)) class Int__static_extension {

}
@:build(stdgo.internal.Macro.wrapper(T_byteReader)) class T_byteReader_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(T_nat)) class T_nat_static_extension {
    public static function _probablyPrimeLucas(_n:T_nat):Bool {
        (_n == null ? null : _n.__copy__());
        if (((_n != null ? _n.length : ((0 : GoInt))) == ((0 : GoInt))) || (_n._cmp((_natOne == null ? null : _natOne.__copy__())) == ((0 : GoInt)))) {
            return false;
        };
        if (((_n != null ? _n[((0 : GoInt))] : new Word()) & ((1 : GoUInt))) == ((0 : GoUInt))) {
            return _n._cmp((_natTwo == null ? null : _natTwo.__copy__())) == ((0 : GoInt));
        };
        var _p:Word = ((((3 : GoUInt)) : Word));
        var _d:T_nat = ((new Slice<Word>(((1 : GoUInt))) : T_nat));
        var _t1:T_nat = ((new T_nat() : T_nat));
        var _intD:Int_ = (({ _abs : (_d == null ? null : _d.__copy__()), _neg : false } : Int_));
        var _intN:Int_ = (({ _abs : (_n == null ? null : _n.__copy__()), _neg : false } : Int_));
        Go.cfor(true, _p++, {
            if (_p > ((10000 : GoUInt))) {
                throw Go.toInterface(((("math/big: internal error: cannot find (D/n) = -1 for " : GoString))) + ((_intN.toString() : GoString)));
            };
            if (_d != null) _d[((0 : GoInt))] = (_p * _p) - ((4 : GoUInt));
            var _j:GoInt = jacobi(_intD, _intN);
            if (_j == ((-1 : GoInt))) {
                break;
            };
            if (_j == ((0 : GoInt))) {
                return ((_n != null ? _n.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_n != null ? _n[((0 : GoInt))] : new Word()) == (_p + ((2 : GoUInt))));
            };
            if (_p == ((40 : GoUInt))) {
                _t1 = (_t1._sqrt((_n == null ? null : _n.__copy__())) == null ? null : _t1._sqrt((_n == null ? null : _n.__copy__())).__copy__());
                _t1 = (_t1._sqr((_t1 == null ? null : _t1.__copy__())) == null ? null : _t1._sqr((_t1 == null ? null : _t1.__copy__())).__copy__());
                if (_t1._cmp((_n == null ? null : _n.__copy__())) == ((0 : GoInt))) {
                    return false;
                };
            };
        });
        var _s:T_nat = (((new T_nat() : T_nat))._add((_n == null ? null : _n.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._add((_n == null ? null : _n.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
        var _r:GoInt = ((_s._trailingZeroBits() : GoInt));
        _s = (_s._shr((_s == null ? null : _s.__copy__()), ((_r : GoUInt))) == null ? null : _s._shr((_s == null ? null : _s.__copy__()), ((_r : GoUInt))).__copy__());
        var _nm2:T_nat = (((new T_nat() : T_nat))._sub((_n == null ? null : _n.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_n == null ? null : _n.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())).__copy__());
        var _natP:T_nat = (((new T_nat() : T_nat))._setWord(_p) == null ? null : ((new T_nat() : T_nat))._setWord(_p).__copy__());
        var _vk:T_nat = (((new T_nat() : T_nat))._setWord(((2 : GoUInt))) == null ? null : ((new T_nat() : T_nat))._setWord(((2 : GoUInt))).__copy__());
        var _vk1:T_nat = (((new T_nat() : T_nat))._setWord(_p) == null ? null : ((new T_nat() : T_nat))._setWord(_p).__copy__());
        var _t2:T_nat = ((new T_nat() : T_nat));
        {
            var _i:GoInt = ((_s._bitLen() : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (_s._bit(((_i : GoUInt))) != ((0 : GoUInt))) {
                    _t1 = (_t1._mul((_vk == null ? null : _vk.__copy__()), (_vk1 == null ? null : _vk1.__copy__())) == null ? null : _t1._mul((_vk == null ? null : _vk.__copy__()), (_vk1 == null ? null : _vk1.__copy__())).__copy__());
                    _t1 = (_t1._add((_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__())) == null ? null : _t1._add((_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__())).__copy__());
                    _t1 = (_t1._sub((_t1 == null ? null : _t1.__copy__()), (_natP == null ? null : _natP.__copy__())) == null ? null : _t1._sub((_t1 == null ? null : _t1.__copy__()), (_natP == null ? null : _natP.__copy__())).__copy__());
                    {
                        var __tmp__ = _t2._div((_vk == null ? null : _vk.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__()));
                        _t2 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                        _vk = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                    };
                    _t1 = (_t1._sqr((_vk1 == null ? null : _vk1.__copy__())) == null ? null : _t1._sqr((_vk1 == null ? null : _vk1.__copy__())).__copy__());
                    _t1 = (_t1._add((_t1 == null ? null : _t1.__copy__()), (_nm2 == null ? null : _nm2.__copy__())) == null ? null : _t1._add((_t1 == null ? null : _t1.__copy__()), (_nm2 == null ? null : _nm2.__copy__())).__copy__());
                    {
                        var __tmp__ = _t2._div((_vk1 == null ? null : _vk1.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__()));
                        _t2 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                        _vk1 = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                    };
                } else {
                    _t1 = (_t1._mul((_vk == null ? null : _vk.__copy__()), (_vk1 == null ? null : _vk1.__copy__())) == null ? null : _t1._mul((_vk == null ? null : _vk.__copy__()), (_vk1 == null ? null : _vk1.__copy__())).__copy__());
                    _t1 = (_t1._add((_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__())) == null ? null : _t1._add((_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__())).__copy__());
                    _t1 = (_t1._sub((_t1 == null ? null : _t1.__copy__()), (_natP == null ? null : _natP.__copy__())) == null ? null : _t1._sub((_t1 == null ? null : _t1.__copy__()), (_natP == null ? null : _natP.__copy__())).__copy__());
                    {
                        var __tmp__ = _t2._div((_vk1 == null ? null : _vk1.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__()));
                        _t2 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                        _vk1 = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                    };
                    _t1 = (_t1._sqr((_vk == null ? null : _vk.__copy__())) == null ? null : _t1._sqr((_vk == null ? null : _vk.__copy__())).__copy__());
                    _t1 = (_t1._add((_t1 == null ? null : _t1.__copy__()), (_nm2 == null ? null : _nm2.__copy__())) == null ? null : _t1._add((_t1 == null ? null : _t1.__copy__()), (_nm2 == null ? null : _nm2.__copy__())).__copy__());
                    {
                        var __tmp__ = _t2._div((_vk == null ? null : _vk.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__()));
                        _t2 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                        _vk = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                    };
                };
            });
        };
        if ((_vk._cmp((_natTwo == null ? null : _natTwo.__copy__())) == ((0 : GoInt))) || (_vk._cmp((_nm2 == null ? null : _nm2.__copy__())) == ((0 : GoInt)))) {
            var _t1:T_nat = (_t1._mul((_vk == null ? null : _vk.__copy__()), (_natP == null ? null : _natP.__copy__())) == null ? null : _t1._mul((_vk == null ? null : _vk.__copy__()), (_natP == null ? null : _natP.__copy__())).__copy__());
            var _t2:T_nat = (_t2._shl((_vk1 == null ? null : _vk1.__copy__()), ((1 : GoUInt))) == null ? null : _t2._shl((_vk1 == null ? null : _vk1.__copy__()), ((1 : GoUInt))).__copy__());
            if (_t1._cmp((_t2 == null ? null : _t2.__copy__())) < ((0 : GoInt))) {
                {
                    final __tmp__0 = (_t2 == null ? null : _t2.__copy__());
                    final __tmp__1 = (_t1 == null ? null : _t1.__copy__());
                    _t1 = __tmp__0;
                    _t2 = __tmp__1;
                };
            };
            _t1 = (_t1._sub((_t1 == null ? null : _t1.__copy__()), (_t2 == null ? null : _t2.__copy__())) == null ? null : _t1._sub((_t1 == null ? null : _t1.__copy__()), (_t2 == null ? null : _t2.__copy__())).__copy__());
            var _t3:T_nat = (_vk1 == null ? null : _vk1.__copy__());
            _vk1 = null;
            _vk1;
            {
                var __tmp__ = _t2._div((_t3 == null ? null : _t3.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__()));
                _t2 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _t3 = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
            };
            if ((_t3 != null ? _t3.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return true;
            };
        };
        {
            var _t:GoInt = ((0 : GoInt));
            Go.cfor(_t < (_r - ((1 : GoInt))), _t++, {
                if ((_vk != null ? _vk.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    return true;
                };
                if (((_vk != null ? _vk.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_vk != null ? _vk[((0 : GoInt))] : new Word()) == ((2 : GoUInt)))) {
                    return false;
                };
                _t1 = (_t1._sqr((_vk == null ? null : _vk.__copy__())) == null ? null : _t1._sqr((_vk == null ? null : _vk.__copy__())).__copy__());
                _t1 = (_t1._sub((_t1 == null ? null : _t1.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())) == null ? null : _t1._sub((_t1 == null ? null : _t1.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())).__copy__());
                {
                    var __tmp__ = _t2._div((_vk == null ? null : _vk.__copy__()), (_t1 == null ? null : _t1.__copy__()), (_n == null ? null : _n.__copy__()));
                    _t2 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _vk = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                };
            });
        };
        return false;
    }
    public static function _probablyPrimeMillerRabin(_n:T_nat, _reps:GoInt, _force2:Bool):Bool {
        (_n == null ? null : _n.__copy__());
        return stdgo.internal.Macro.controlFlow({
            var _nm1:T_nat = (((new T_nat() : T_nat))._sub((_n == null ? null : _n.__copy__()), (_natOne == null ? null : _natOne.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_n == null ? null : _n.__copy__()), (_natOne == null ? null : _natOne.__copy__())).__copy__());
            var _k:GoUInt = _nm1._trailingZeroBits();
            var _q:T_nat = (((new T_nat() : T_nat))._shr((_nm1 == null ? null : _nm1.__copy__()), _k) == null ? null : ((new T_nat() : T_nat))._shr((_nm1 == null ? null : _nm1.__copy__()), _k).__copy__());
            var _nm3:T_nat = (((new T_nat() : T_nat))._sub((_nm1 == null ? null : _nm1.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())) == null ? null : ((new T_nat() : T_nat))._sub((_nm1 == null ? null : _nm1.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())).__copy__());
            var _rand:stdgo.math.rand.Rand.Rand = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource((((_n != null ? _n[((0 : GoInt))] : new Word()) : GoInt64))));
            var _x:T_nat = new T_nat(), _y:T_nat = new T_nat(), _quotient:T_nat = new T_nat();
            var _nm3Len:GoInt = _nm3._bitLen();
            @:label("NextRandom") {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _reps, _i++, {
                    if ((_i == (_reps - ((1 : GoInt)))) && _force2) {
                        _x = (_x._set((_natTwo == null ? null : _natTwo.__copy__())) == null ? null : _x._set((_natTwo == null ? null : _natTwo.__copy__())).__copy__());
                    } else {
                        _x = (_x._random(_rand, (_nm3 == null ? null : _nm3.__copy__()), _nm3Len) == null ? null : _x._random(_rand, (_nm3 == null ? null : _nm3.__copy__()), _nm3Len).__copy__());
                        _x = (_x._add((_x == null ? null : _x.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())) == null ? null : _x._add((_x == null ? null : _x.__copy__()), (_natTwo == null ? null : _natTwo.__copy__())).__copy__());
                    };
                    _y = (_y._expNN((_x == null ? null : _x.__copy__()), (_q == null ? null : _q.__copy__()), (_n == null ? null : _n.__copy__())) == null ? null : _y._expNN((_x == null ? null : _x.__copy__()), (_q == null ? null : _q.__copy__()), (_n == null ? null : _n.__copy__())).__copy__());
                    if ((_y._cmp((_natOne == null ? null : _natOne.__copy__())) == ((0 : GoInt))) || (_y._cmp((_nm1 == null ? null : _nm1.__copy__())) == ((0 : GoInt)))) {
                        continue;
                    };
                    {
                        var _j:GoUInt = ((((1 : GoUInt)) : GoUInt));
                        Go.cfor(_j < _k, _j++, {
                            _y = (_y._sqr((_y == null ? null : _y.__copy__())) == null ? null : _y._sqr((_y == null ? null : _y.__copy__())).__copy__());
                            {
                                var __tmp__ = _quotient._div((_y == null ? null : _y.__copy__()), (_y == null ? null : _y.__copy__()), (_n == null ? null : _n.__copy__()));
                                _quotient = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                                _y = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                            };
                            if (_y._cmp((_nm1 == null ? null : _nm1.__copy__())) == ((0 : GoInt))) {
                                continue;
                            };
                            if (_y._cmp((_natOne == null ? null : _natOne.__copy__())) == ((0 : GoInt))) {
                                return false;
                            };
                        });
                    };
                    return false;
                });
            };
            return true;
        });
    }
    public static function _divRecursiveStep(_z:T_nat, _u:T_nat, _v:T_nat, _depth:GoInt, _tmp:T_nat, _temps:Slice<T_nat>):Void {
        (_z == null ? null : _z.__copy__());
        _u = (_u._norm() == null ? null : _u._norm().__copy__());
        _v = (_v._norm() == null ? null : _v._norm().__copy__());
        if ((_u != null ? _u.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _z._clear();
            return;
        };
        var _n:GoInt = (_v != null ? _v.length : ((0 : GoInt)));
        if (_n < ((100 : GoInt))) {
            _z._divBasic((_u == null ? null : _u.__copy__()), (_v == null ? null : _v.__copy__()));
            return;
        };
        var _m:GoInt = (_u != null ? _u.length : ((0 : GoInt))) - _n;
        if (_m < ((0 : GoInt))) {
            return;
        };
        var b:GoInt = _n / ((2 : GoInt));
        if ((_temps != null ? _temps[_depth] : ((null : T_nat))) == null) {
            if (_temps != null) _temps[_depth] = _getNat(_n);
        } else {
            (_temps != null ? _temps[_depth] : ((null : T_nat))) = ((_temps != null ? _temps[_depth] : ((null : T_nat)))._make(b + ((1 : GoInt))) == null ? null : (_temps != null ? _temps[_depth] : ((null : T_nat)))._make(b + ((1 : GoInt))).__copy__());
        };
        var _j:GoInt = _m;
        while (_j > b) {
            var _s:GoInt = (b - ((1 : GoInt)));
            var _uu:T_nat = (_u.__slice__(_j - b) == null ? null : _u.__slice__(_j - b).__copy__());
            var _qhat:T_nat = ((_temps != null ? _temps[_depth] : ((null : T_nat))) == null ? null : (_temps != null ? _temps[_depth] : ((null : T_nat))).__copy__());
            _qhat._clear();
            _qhat._divRecursiveStep((_uu.__slice__(_s, b + _n) == null ? null : _uu.__slice__(_s, b + _n).__copy__()), (_v.__slice__(_s) == null ? null : _v.__slice__(_s).__copy__()), _depth + ((1 : GoInt)), _tmp, _temps);
            _qhat = (_qhat._norm() == null ? null : _qhat._norm().__copy__());
            var _qhatv:T_nat = (_tmp._make(((3 : GoInt)) * _n) == null ? null : _tmp._make(((3 : GoInt)) * _n).__copy__());
            _qhatv._clear();
            _qhatv = (_qhatv._mul((_qhat == null ? null : _qhat.__copy__()), (_v.__slice__(0, _s) == null ? null : _v.__slice__(0, _s).__copy__())) == null ? null : _qhatv._mul((_qhat == null ? null : _qhat.__copy__()), (_v.__slice__(0, _s) == null ? null : _v.__slice__(0, _s).__copy__())).__copy__());
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((2 : GoInt)), _i++, {
                    var _e:GoInt = _qhatv._cmp((_uu._norm() == null ? null : _uu._norm().__copy__()));
                    if (_e <= ((0 : GoInt))) {
                        break;
                    };
                    _subVW(_qhat, _qhat, ((1 : GoUInt)));
                    var _c:Word = _subVV(_qhatv.__slice__(0, _s), _qhatv.__slice__(0, _s), _v.__slice__(0, _s));
                    if ((_qhatv != null ? _qhatv.length : ((0 : GoInt))) > _s) {
                        _subVW(_qhatv.__slice__(_s), _qhatv.__slice__(_s), _c);
                    };
                    _addAt((_uu.__slice__(_s) == null ? null : _uu.__slice__(_s).__copy__()), (_v.__slice__(_s) == null ? null : _v.__slice__(_s).__copy__()), ((0 : GoInt)));
                });
            };
            if (_qhatv._cmp((_uu._norm() == null ? null : _uu._norm().__copy__())) > ((0 : GoInt))) {
                throw Go.toInterface(((("impossible" : GoString))));
            };
            var _c:Word = _subVV(_uu.__slice__(0, (_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _uu.__slice__(0, (_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _qhatv);
            if (_c > ((0 : GoUInt))) {
                _subVW(_uu.__slice__((_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _uu.__slice__((_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _c);
            };
            _addAt((_z == null ? null : _z.__copy__()), (_qhat == null ? null : _qhat.__copy__()), _j - b);
            _j = _j - (b);
        };
        var _s:GoInt = b - ((1 : GoInt));
        var _qhat:T_nat = ((_temps != null ? _temps[_depth] : ((null : T_nat))) == null ? null : (_temps != null ? _temps[_depth] : ((null : T_nat))).__copy__());
        _qhat._clear();
        _qhat._divRecursiveStep((_u.__slice__(_s)._norm() == null ? null : _u.__slice__(_s)._norm().__copy__()), (_v.__slice__(_s) == null ? null : _v.__slice__(_s).__copy__()), _depth + ((1 : GoInt)), _tmp, _temps);
        _qhat = (_qhat._norm() == null ? null : _qhat._norm().__copy__());
        var _qhatv:T_nat = (_tmp._make(((3 : GoInt)) * _n) == null ? null : _tmp._make(((3 : GoInt)) * _n).__copy__());
        _qhatv._clear();
        _qhatv = (_qhatv._mul((_qhat == null ? null : _qhat.__copy__()), (_v.__slice__(0, _s) == null ? null : _v.__slice__(0, _s).__copy__())) == null ? null : _qhatv._mul((_qhat == null ? null : _qhat.__copy__()), (_v.__slice__(0, _s) == null ? null : _v.__slice__(0, _s).__copy__())).__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                {
                    var _e:GoInt = _qhatv._cmp((_u._norm() == null ? null : _u._norm().__copy__()));
                    if (_e > ((0 : GoInt))) {
                        _subVW(_qhat, _qhat, ((1 : GoUInt)));
                        var _c:Word = _subVV(_qhatv.__slice__(0, _s), _qhatv.__slice__(0, _s), _v.__slice__(0, _s));
                        if ((_qhatv != null ? _qhatv.length : ((0 : GoInt))) > _s) {
                            _subVW(_qhatv.__slice__(_s), _qhatv.__slice__(_s), _c);
                        };
                        _addAt((_u.__slice__(_s) == null ? null : _u.__slice__(_s).__copy__()), (_v.__slice__(_s) == null ? null : _v.__slice__(_s).__copy__()), ((0 : GoInt)));
                    };
                };
            });
        };
        if (_qhatv._cmp((_u._norm() == null ? null : _u._norm().__copy__())) > ((0 : GoInt))) {
            throw Go.toInterface(((("impossible" : GoString))));
        };
        var _c:Word = _subVV(_u.__slice__(((0 : GoInt)), (_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _u.__slice__(((0 : GoInt)), (_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _qhatv);
        if (_c > ((0 : GoUInt))) {
            _c = _subVW(_u.__slice__((_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _u.__slice__((_qhatv != null ? _qhatv.length : ((0 : GoInt)))), _c);
        };
        if (_c > ((0 : GoUInt))) {
            throw Go.toInterface(((("impossible" : GoString))));
        };
        _addAt((_z == null ? null : _z.__copy__()), (_qhat._norm() == null ? null : _qhat._norm().__copy__()), ((0 : GoInt)));
    }
    public static function _divRecursive(_z:T_nat, _u:T_nat, _v:T_nat):Void {
        (_z == null ? null : _z.__copy__());
        var _recDepth:GoInt = ((2 : GoInt)) * stdgo.math.bits.Bits.len((((_v != null ? _v.length : ((0 : GoInt))) : GoUInt)));
        var _tmp:T_nat = _getNat(((3 : GoInt)) * (_v != null ? _v.length : ((0 : GoInt))));
        var _temps:Slice<T_nat> = new Slice<T_nat>(...[for (i in 0 ... ((_recDepth : GoInt)).toBasic()) ((null : T_nat))]);
        _z._clear();
        _z._divRecursiveStep((_u == null ? null : _u.__copy__()), (_v == null ? null : _v.__copy__()), ((0 : GoInt)), _tmp, _temps);
        for (_ => _n in _temps) {
            if (_n != null) {
                _putNat(_n);
            };
        };
        _putNat(_tmp);
    }
    public static function _divBasic(_q:T_nat, _u:T_nat, _v:T_nat):Void {
        (_q == null ? null : _q.__copy__());
        var _n:GoInt = (_v != null ? _v.length : ((0 : GoInt)));
        var _m:GoInt = (_u != null ? _u.length : ((0 : GoInt))) - _n;
        var _qhatvp:T_nat = _getNat(_n + ((1 : GoInt)));
        var _qhatv:T_nat = (_qhatvp == null ? null : _qhatvp.__copy__());
        var _vn1:Word = (_v != null ? _v[_n - ((1 : GoInt))] : new Word());
        var _rec:Word = _reciprocalWord(_vn1);
        {
            var _j:GoInt = _m;
            Go.cfor(_j >= ((0 : GoInt)), _j--, {
                var _qhat:Word = (((("4294967295" : GoUInt)) : Word));
                var _ujn:Word = new Word();
                if ((_j + _n) < (_u != null ? _u.length : ((0 : GoInt)))) {
                    _ujn = (_u != null ? _u[_j + _n] : new Word());
                };
                if (_ujn != _vn1) {
                    var _rhat:Word = new Word();
                    {
                        var __tmp__ = _divWW(_ujn, (_u != null ? _u[(_j + _n) - ((1 : GoInt))] : new Word()), _vn1, _rec);
                        _qhat = __tmp__._0;
                        _rhat = __tmp__._1;
                    };
                    var _vn2:Word = (_v != null ? _v[_n - ((2 : GoInt))] : new Word());
                    var __tmp__ = _mulWW(_qhat, _vn2), _x1:Word = __tmp__._0, _x2:Word = __tmp__._1;
                    var _ujn2:Word = (_u != null ? _u[(_j + _n) - ((2 : GoInt))] : new Word());
                    while (_greaterThan(_x1, _x2, _rhat, _ujn2)) {
                        _qhat--;
                        var _prevRhat:Word = _rhat;
                        _rhat = _rhat + (_vn1);
                        if (_rhat < _prevRhat) {
                            break;
                        };
                        {
                            var __tmp__ = _mulWW(_qhat, _vn2);
                            _x1 = __tmp__._0;
                            _x2 = __tmp__._1;
                        };
                    };
                };
                if (_qhatv != null) _qhatv[_n] = _mulAddVWW(_qhatv.__slice__(((0 : GoInt)), _n), _v, _qhat, ((0 : GoUInt)));
                var _qhl:GoInt = (_qhatv != null ? _qhatv.length : ((0 : GoInt)));
                if (((_j + _qhl) > (_u != null ? _u.length : ((0 : GoInt)))) && ((_qhatv != null ? _qhatv[_n] : new Word()) == ((0 : GoUInt)))) {
                    _qhl--;
                };
                var _c:Word = _subVV(_u.__slice__(_j, _j + _qhl), _u.__slice__(_j), _qhatv);
                if (_c != ((0 : GoUInt))) {
                    var _c:Word = _addVV(_u.__slice__(_j, _j + _n), _u.__slice__(_j), _v);
                    if (_n < _qhl) {
                        if (_u != null) (_u != null ? _u[_j + _n] : new Word()) + (_c);
                    };
                    _qhat--;
                };
                if (((_j == _m) && (_m == (_q != null ? _q.length : ((0 : GoInt))))) && (_qhat == ((0 : GoUInt)))) {
                    continue;
                };
                if (_q != null) _q[_j] = _qhat;
            });
        };
        _putNat(_qhatvp);
    }
    public static function _divLarge(_z:T_nat, _u:T_nat, _uIn:T_nat, _vIn:T_nat):{ var _0 : T_nat; var _1 : T_nat; } {
        (_z == null ? null : _z.__copy__());
        var _q:T_nat = new T_nat(), _r:T_nat = new T_nat();
        var _n:GoInt = (_vIn != null ? _vIn.length : ((0 : GoInt)));
        var _m:GoInt = (_uIn != null ? _uIn.length : ((0 : GoInt))) - _n;
        var _shift:GoUInt = _nlz((_vIn != null ? _vIn[_n - ((1 : GoInt))] : new Word()));
        var _vp:T_nat = _getNat(_n);
        var _v:T_nat = (_vp == null ? null : _vp.__copy__());
        _shlVU(_v, _vIn, _shift);
        _u = (_u._make((_uIn != null ? _uIn.length : ((0 : GoInt))) + ((1 : GoInt))) == null ? null : _u._make((_uIn != null ? _uIn.length : ((0 : GoInt))) + ((1 : GoInt))).__copy__());
        if (_u != null) _u[(_uIn != null ? _uIn.length : ((0 : GoInt)))] = _shlVU(_u.__slice__(((0 : GoInt)), (_uIn != null ? _uIn.length : ((0 : GoInt)))), _uIn, _shift);
        if (_alias((_z == null ? null : _z.__copy__()), (_u == null ? null : _u.__copy__()))) {
            _z = null;
        };
        _q = (_z._make(_m + ((1 : GoInt))) == null ? null : _z._make(_m + ((1 : GoInt))).__copy__());
        if (_n < ((100 : GoInt))) {
            _q._divBasic((_u == null ? null : _u.__copy__()), (_v == null ? null : _v.__copy__()));
        } else {
            _q._divRecursive((_u == null ? null : _u.__copy__()), (_v == null ? null : _v.__copy__()));
        };
        _putNat(_vp);
        _q = (_q._norm() == null ? null : _q._norm().__copy__());
        _shrVU(_u, _u, _shift);
        _r = (_u._norm() == null ? null : _u._norm().__copy__());
        return { _0 : (_q == null ? null : _q.__copy__()), _1 : (_r == null ? null : _r.__copy__()) };
    }
    public static function _modW(_x:T_nat, _d:Word):Word {
        (_x == null ? null : _x.__copy__());
        var _r:Word = new Word();
        var _q:T_nat = new T_nat();
        _q = (_q._make((_x != null ? _x.length : ((0 : GoInt)))) == null ? null : _q._make((_x != null ? _x.length : ((0 : GoInt)))).__copy__());
        return _divWVW(_q, ((0 : GoUInt)), _x, _d);
    }
    public static function _divW(_z:T_nat, _x:T_nat, _y:Word):{ var _0 : T_nat; var _1 : Word; } {
        (_z == null ? null : _z.__copy__());
        var _q:T_nat = new T_nat(), _r:Word = new Word();
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        if (_y == ((0 : GoUInt))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        } else if (_y == ((1 : GoUInt))) {
            _q = (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
            return { _0 : _q, _1 : _r };
        } else if (_m == ((0 : GoInt))) {
            _q = (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
            return { _0 : _q, _1 : _r };
        };
        _z = (_z._make(_m) == null ? null : _z._make(_m).__copy__());
        _r = _divWVW(_z, ((0 : GoUInt)), _x, _y);
        _q = (_z._norm() == null ? null : _z._norm().__copy__());
        return { _0 : _q, _1 : _r };
    }
    public static function _div(_z:T_nat, _z2:T_nat, _u:T_nat, _v:T_nat):{ var _0 : T_nat; var _1 : T_nat; } {
        (_z == null ? null : _z.__copy__());
        var _q:T_nat = new T_nat(), _r:T_nat = new T_nat();
        if ((_v != null ? _v.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("division by zero" : GoString))));
        };
        if (_u._cmp((_v == null ? null : _v.__copy__())) < ((0 : GoInt))) {
            _q = (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
            _r = (_z2._set((_u == null ? null : _u.__copy__())) == null ? null : _z2._set((_u == null ? null : _u.__copy__())).__copy__());
            return { _0 : _q, _1 : _r };
        };
        if ((_v != null ? _v.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r2:Word = new Word();
            {
                var __tmp__ = _z._divW((_u == null ? null : _u.__copy__()), (_v != null ? _v[((0 : GoInt))] : new Word()));
                _q = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _r2 = __tmp__._1;
            };
            _r = (_z2._setWord(_r2) == null ? null : _z2._setWord(_r2).__copy__());
            return { _0 : _q, _1 : _r };
        };
        {
            var __tmp__ = _z._divLarge((_z2 == null ? null : _z2.__copy__()), (_u == null ? null : _u.__copy__()), (_v == null ? null : _v.__copy__()));
            _q = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
        };
        return { _0 : _q, _1 : _r };
    }
    public static function _expWW(_z:T_nat, _x:Word, _y:Word):T_nat {
        (_z == null ? null : _z.__copy__());
        return (_z._expNN((((new T_nat() : T_nat))._setWord(_x) == null ? null : ((new T_nat() : T_nat))._setWord(_x).__copy__()), (((new T_nat() : T_nat))._setWord(_y) == null ? null : ((new T_nat() : T_nat))._setWord(_y).__copy__()), null) == null ? null : _z._expNN((((new T_nat() : T_nat))._setWord(_x) == null ? null : ((new T_nat() : T_nat))._setWord(_x).__copy__()), (((new T_nat() : T_nat))._setWord(_y) == null ? null : ((new T_nat() : T_nat))._setWord(_y).__copy__()), null).__copy__());
    }
    public static function _convertWords(_q:T_nat, _s:Slice<GoByte>, _b:Word, _ndigits:GoInt, _bb:Word, _table:Slice<T_divisor>):Void {
        (_q == null ? null : _q.__copy__());
        if (_table != null) {
            var _r:T_nat = new T_nat();
            var _index:GoInt = (_table != null ? _table.length : ((0 : GoInt))) - ((1 : GoInt));
            while ((_q != null ? _q.length : ((0 : GoInt))) > _leafSize) {
                var _maxLength:GoInt = _q._bitLen();
                var _minLength:GoInt = _maxLength >> ((1 : GoUnTypedInt));
                while ((_index > ((0 : GoInt))) && ((_table != null ? _table[_index - ((1 : GoInt))] : new T_divisor())._nbits > _minLength)) {
                    _index--;
                };
                if (((_table != null ? _table[_index] : new T_divisor())._nbits >= _maxLength) && ((_table != null ? _table[_index] : new T_divisor())._bbb._cmp((_q == null ? null : _q.__copy__())) >= ((0 : GoInt)))) {
                    _index--;
                    if (_index < ((0 : GoInt))) {
                        throw Go.toInterface(((("internal inconsistency" : GoString))));
                    };
                };
                {
                    var __tmp__ = _q._div((_r == null ? null : _r.__copy__()), (_q == null ? null : _q.__copy__()), ((_table != null ? _table[_index] : new T_divisor())._bbb == null ? null : (_table != null ? _table[_index] : new T_divisor())._bbb.__copy__()));
                    _q = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                };
                var _h:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - (_table != null ? _table[_index] : new T_divisor())._ndigits;
                _r._convertWords(_s.__slice__(_h), _b, _ndigits, _bb, _table.__slice__(((0 : GoInt)), _index));
                _s = _s.__slice__(0, _h);
            };
        };
        var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
        var _r:Word = new Word();
        if (_b == ((10 : GoUInt))) {
            while ((_q != null ? _q.length : ((0 : GoInt))) > ((0 : GoInt))) {
                {
                    var __tmp__ = _q._divW((_q == null ? null : _q.__copy__()), _bb);
                    _q = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _r = __tmp__._1;
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor((_j < _ndigits) && (_i > ((0 : GoInt))), _j++, {
                        _i--;
                        var _t:Word = _r / ((10 : GoUInt));
                        if (_s != null) _s[_i] = ((((("0" : GoString))).code : GoRune)) + (((_r - (_t * ((10 : GoUInt)))) : GoByte));
                        _r = _t;
                    });
                };
            };
        } else {
            while ((_q != null ? _q.length : ((0 : GoInt))) > ((0 : GoInt))) {
                {
                    var __tmp__ = _q._divW((_q == null ? null : _q.__copy__()), _bb);
                    _q = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _r = __tmp__._1;
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor((_j < _ndigits) && (_i > ((0 : GoInt))), _j++, {
                        _i--;
                        if (_s != null) _s[_i] = (((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString))) != null ? ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString)))[_r % _b] : ((0 : GoUInt8)));
                        _r = _r / (_b);
                    });
                };
            };
        };
        while (_i > ((0 : GoInt))) {
            _i--;
            if (_s != null) _s[_i] = ((((("0" : GoString))).code : GoRune));
        };
    }
    public static function _itoa(_x:T_nat, _neg:Bool, _base:GoInt):Slice<GoByte> {
        (_x == null ? null : _x.__copy__());
        if ((_base < ((2 : GoInt))) || (_base > ((62 : GoInt)))) {
            throw Go.toInterface(((("invalid base" : GoString))));
        };
        if ((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((((("0" : GoString))) : Slice<GoByte>));
        };
        var _i:GoInt = (((((_x._bitLen() : GoFloat64)) / stdgo.math.Math.log2(((_base : GoFloat64)))) : GoInt)) + ((1 : GoInt));
        if (_neg) {
            _i++;
        };
        var _s:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_i : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _b:Word = ((_base : Word));
            if (_b == (_b & -_b)) {
                var _shift:GoUInt = ((stdgo.math.bits.Bits.trailingZeros(((_b : GoUInt))) : GoUInt));
                var _mask:Word = ((((((1 : GoUInt)) << _shift) - ((1 : GoUInt))) : Word));
                var _w:Word = (_x != null ? _x[((0 : GoInt))] : new Word());
                var _nbits:GoUInt = ((((32 : GoUInt)) : GoUInt));
                {
                    var _k:GoInt = ((1 : GoInt));
                    Go.cfor(_k < (_x != null ? _x.length : ((0 : GoInt))), _k++, {
                        while (_nbits >= _shift) {
                            _i--;
                            if (_s != null) _s[_i] = (((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString))) != null ? ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString)))[_w & _mask] : ((0 : GoUInt8)));
                            _w = _w >> (_shift);
                            _nbits = _nbits - (_shift);
                        };
                        if (_nbits == ((0 : GoUInt))) {
                            _w = (_x != null ? _x[_k] : new Word());
                            _nbits = ((32 : GoUInt));
                        } else {
                            _w = _w | ((_x != null ? _x[_k] : new Word()) << _nbits);
                            _i--;
                            if (_s != null) _s[_i] = (((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString))) != null ? ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString)))[_w & _mask] : ((0 : GoUInt8)));
                            _w = (_x != null ? _x[_k] : new Word()) >> (_shift - _nbits);
                            _nbits = ((32 : GoUInt)) - (_shift - _nbits);
                        };
                    });
                };
                while (_w != ((0 : GoUInt))) {
                    _i--;
                    if (_s != null) _s[_i] = (((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString))) != null ? ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString)))[_w & _mask] : ((0 : GoUInt8)));
                    _w = _w >> (_shift);
                };
            } else {
                var __tmp__ = _maxPow(_b), _bb:Word = __tmp__._0, _ndigits:GoInt = __tmp__._1;
                var _table:Slice<T_divisor> = _divisors((_x != null ? _x.length : ((0 : GoInt))), _b, _ndigits, _bb);
                var _q:T_nat = (((new T_nat() : T_nat))._set((_x == null ? null : _x.__copy__())) == null ? null : ((new T_nat() : T_nat))._set((_x == null ? null : _x.__copy__())).__copy__());
                _q._convertWords(_s, _b, _ndigits, _bb, _table);
                _i = ((0 : GoInt));
                while ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune))) {
                    _i++;
                };
            };
        };
        if (_neg) {
            _i--;
            if (_s != null) _s[_i] = ((((("-" : GoString))).code : GoRune));
        };
        return _s.__slice__(_i);
    }
    public static function _utoa(_x:T_nat, _base:GoInt):Slice<GoByte> {
        (_x == null ? null : _x.__copy__());
        return _x._itoa(false, _base);
    }
    public static function _scan(_z:T_nat, _r:stdgo.io.Io.ByteScanner, _base:GoInt, _fracOk:Bool):{ var _0 : T_nat; var _1 : GoInt; var _2 : GoInt; var _3 : Error; } {
        (_z == null ? null : _z.__copy__());
        var _res:T_nat = new T_nat(), _b:GoInt = ((0 : GoInt)), _count:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _baseOk:Bool = ((_base == ((0 : GoInt))) || ((!_fracOk && (((2 : GoInt)) <= _base)) && (_base <= ((62 : GoInt))))) || (_fracOk && ((((_base == ((2 : GoInt))) || (_base == ((8 : GoInt)))) || (_base == ((10 : GoInt)))) || (_base == ((16 : GoInt)))));
        if (!_baseOk) {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(((("invalid number base %d" : GoString))), Go.toInterface(_base)));
        };
        var _prev:GoInt32 = ((((("." : GoString))).code : GoRune));
        var _invalSep:Bool = false;
        var __tmp__ = _r.readByte(), _ch:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _b:GoInt = _base, _prefix:GoInt = ((0 : GoInt));
        if (_base == ((0 : GoInt))) {
            _b = ((10 : GoInt));
            if ((_err == null) && (_ch == ((((("0" : GoString))).code : GoRune)))) {
                _prev = ((((("0" : GoString))).code : GoRune));
                _count = ((1 : GoInt));
                {
                    var __tmp__ = _r.readByte();
                    _ch = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    if (_ch == ((((("b" : GoString))).code : GoRune)) || _ch == ((((("B" : GoString))).code : GoRune))) {
                        {
                            final __tmp__0 = ((2 : GoInt));
                            final __tmp__1 = ((((("b" : GoString))).code : GoRune));
                            _b = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (_ch == ((((("o" : GoString))).code : GoRune)) || _ch == ((((("O" : GoString))).code : GoRune))) {
                        {
                            final __tmp__0 = ((8 : GoInt));
                            final __tmp__1 = ((((("o" : GoString))).code : GoRune));
                            _b = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (_ch == ((((("x" : GoString))).code : GoRune)) || _ch == ((((("X" : GoString))).code : GoRune))) {
                        {
                            final __tmp__0 = ((16 : GoInt));
                            final __tmp__1 = ((((("x" : GoString))).code : GoRune));
                            _b = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else {
                        if (!_fracOk) {
                            {
                                final __tmp__0 = ((8 : GoInt));
                                final __tmp__1 = ((((("0" : GoString))).code : GoRune));
                                _b = __tmp__0;
                                _prefix = __tmp__1;
                            };
                        };
                    };
                    if (_prefix != ((0 : GoInt))) {
                        _count = ((0 : GoInt));
                        if (_prefix != ((((("0" : GoString))).code : GoRune))) {
                            {
                                var __tmp__ = _r.readByte();
                                _ch = __tmp__._0;
                                _err = __tmp__._1;
                            };
                        };
                    };
                };
            };
        };
        _z = (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        var _b1:Word = ((_b : Word));
        var __tmp__ = _maxPow(_b1), _bn:Word = __tmp__._0, _n:GoInt = __tmp__._1;
        var _di:Word = ((((0 : GoUInt)) : Word));
        var _i:GoInt = ((0 : GoInt));
        var _dp:GoInt = ((-1 : GoInt));
        while (_err == null) {
            if ((_ch == ((((("." : GoString))).code : GoRune))) && _fracOk) {
                _fracOk = false;
                if (_prev == ((((("_" : GoString))).code : GoRune))) {
                    _invalSep = true;
                };
                _prev = ((((("." : GoString))).code : GoRune));
                _dp = _count;
            } else if ((_ch == ((((("_" : GoString))).code : GoRune))) && (_base == ((0 : GoInt)))) {
                if (_prev != ((((("0" : GoString))).code : GoRune))) {
                    _invalSep = true;
                };
                _prev = ((((("_" : GoString))).code : GoRune));
            } else {
                var _d1:Word = new Word();
                if ((((((("0" : GoString))).code : GoRune)) <= _ch) && (_ch <= ((((("9" : GoString))).code : GoRune)))) {
                    _d1 = (((_ch - ((((("0" : GoString))).code : GoRune))) : Word));
                } else if ((((((("a" : GoString))).code : GoRune)) <= _ch) && (_ch <= ((((("z" : GoString))).code : GoRune)))) {
                    _d1 = ((((_ch - ((((("a" : GoString))).code : GoRune))) + ((10 : GoUInt8))) : Word));
                } else if ((((((("A" : GoString))).code : GoRune)) <= _ch) && (_ch <= ((((("Z" : GoString))).code : GoRune)))) {
                    if (_b <= ((36 : GoInt))) {
                        _d1 = ((((_ch - ((((("A" : GoString))).code : GoRune))) + ((10 : GoUInt8))) : Word));
                    } else {
                        _d1 = ((((_ch - ((((("A" : GoString))).code : GoRune))) + ((36 : GoUInt8))) : Word));
                    };
                } else {
                    _d1 = ((63 : GoUInt));
                };
                if (_d1 >= _b1) {
                    _r.unreadByte();
                    break;
                };
                _prev = ((((("0" : GoString))).code : GoRune));
                _count++;
                _di = (_di * _b1) + _d1;
                _i++;
                if (_i == _n) {
                    _z = (_z._mulAddWW((_z == null ? null : _z.__copy__()), _bn, _di) == null ? null : _z._mulAddWW((_z == null ? null : _z.__copy__()), _bn, _di).__copy__());
                    _di = ((0 : GoUInt));
                    _i = ((0 : GoInt));
                };
            };
            {
                var __tmp__ = _r.readByte();
                _ch = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err == stdgo.io.Io.eof) {
            _err = ((null : stdgo.Error));
        };
        if ((_err == null) && (_invalSep || (_prev == ((((("_" : GoString))).code : GoRune))))) {
            _err = _errInvalSep;
        };
        if (_count == ((0 : GoInt))) {
            if (_prefix == ((((("0" : GoString))).code : GoRune))) {
                return { _0 : (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__()), _1 : ((10 : GoInt)), _2 : ((1 : GoInt)), _3 : _err };
            };
            _err = _errNoDigits;
        };
        if (_i > ((0 : GoInt))) {
            _z = (_z._mulAddWW((_z == null ? null : _z.__copy__()), _pow(_b1, _i), _di) == null ? null : _z._mulAddWW((_z == null ? null : _z.__copy__()), _pow(_b1, _i), _di).__copy__());
        };
        _res = (_z._norm() == null ? null : _z._norm().__copy__());
        if (_dp >= ((0 : GoInt))) {
            _count = _dp - _count;
        };
        return { _0 : _res, _1 : _b, _2 : _count, _3 : _err };
    }
    public static function _sqrt(_z:T_nat, _x:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_x._cmp((_natOne == null ? null : _natOne.__copy__())) <= ((0 : GoInt))) {
            return (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
        };
        if (_alias((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()))) {
            _z = null;
        };
        var _z1:T_nat = new T_nat(), _z2:T_nat = new T_nat();
        _z1 = (_z == null ? null : _z.__copy__());
        _z1 = (_z1._setUint64(((1 : GoUInt64))) == null ? null : _z1._setUint64(((1 : GoUInt64))).__copy__());
        _z1 = (_z1._shl((_z1 == null ? null : _z1.__copy__()), (((_x._bitLen() + ((1 : GoInt))) : GoUInt)) / ((2 : GoUInt))) == null ? null : _z1._shl((_z1 == null ? null : _z1.__copy__()), (((_x._bitLen() + ((1 : GoInt))) : GoUInt)) / ((2 : GoUInt))).__copy__());
        {
            var _n:GoInt = ((0 : GoInt));
            Go.cfor(true, _n++, {
                {
                    var __tmp__ = _z2._div(null, (_x == null ? null : _x.__copy__()), (_z1 == null ? null : _z1.__copy__()));
                    _z2 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                };
                _z2 = (_z2._add((_z2 == null ? null : _z2.__copy__()), (_z1 == null ? null : _z1.__copy__())) == null ? null : _z2._add((_z2 == null ? null : _z2.__copy__()), (_z1 == null ? null : _z1.__copy__())).__copy__());
                _z2 = (_z2._shr((_z2 == null ? null : _z2.__copy__()), ((1 : GoUInt))) == null ? null : _z2._shr((_z2 == null ? null : _z2.__copy__()), ((1 : GoUInt))).__copy__());
                if (_z2._cmp((_z1 == null ? null : _z1.__copy__())) >= ((0 : GoInt))) {
                    if ((_n & ((1 : GoInt))) == ((0 : GoInt))) {
                        return (_z1 == null ? null : _z1.__copy__());
                    };
                    return (_z._set((_z1 == null ? null : _z1.__copy__())) == null ? null : _z._set((_z1 == null ? null : _z1.__copy__())).__copy__());
                };
                {
                    final __tmp__0 = (_z2 == null ? null : _z2.__copy__());
                    final __tmp__1 = (_z1 == null ? null : _z1.__copy__());
                    _z1 = __tmp__0;
                    _z2 = __tmp__1;
                };
            });
        };
    }
    public static function _setBytes(_z:T_nat, _buf:Slice<GoByte>):T_nat {
        (_z == null ? null : _z.__copy__());
        _z = (_z._make((((_buf != null ? _buf.length : ((0 : GoInt))) + ((4 : GoInt))) - ((1 : GoInt))) / ((4 : GoInt))) == null ? null : _z._make((((_buf != null ? _buf.length : ((0 : GoInt))) + ((4 : GoInt))) - ((1 : GoInt))) / ((4 : GoInt))).__copy__());
        var _i:GoInt = (_buf != null ? _buf.length : ((0 : GoInt)));
        {
            var _k:GoInt = ((0 : GoInt));
            Go.cfor(_i >= ((4 : GoInt)), _k++, {
                if (_z != null) _z[_k] = _bigEndianWord(_buf.__slice__(_i - ((4 : GoInt)), _i));
                _i = _i - (((4 : GoInt)));
            });
        };
        if (_i > ((0 : GoInt))) {
            var _d:Word = new Word();
            {
                var _s:GoUInt = ((((0 : GoUInt)) : GoUInt));
                Go.cfor(_i > ((0 : GoInt)), _s = _s + (((8 : GoUInt))), {
                    _d = _d | ((((_buf != null ? _buf[_i - ((1 : GoInt))] : ((0 : GoUInt8))) : Word)) << _s);
                    _i--;
                });
            };
            if (_z != null) _z[(_z != null ? _z.length : ((0 : GoInt))) - ((1 : GoInt))] = _d;
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _bytes(_z:T_nat, _buf:Slice<GoByte>):GoInt {
        (_z == null ? null : _z.__copy__());
        var _i:GoInt = ((0 : GoInt));
        _i = (_buf != null ? _buf.length : ((0 : GoInt)));
        for (_ => _d in _z) {
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j < ((4 : GoInt)), _j++, {
                    _i--;
                    if (_i >= ((0 : GoInt))) {
                        if (_buf != null) _buf[_i] = ((_d : GoByte));
                    } else if (((_d : GoByte)) != ((0 : GoUInt8))) {
                        throw Go.toInterface(((("math/big: buffer too small to fit value" : GoString))));
                    };
                    _d = _d >> (((8 : GoUnTypedInt)));
                });
            };
        };
        if (_i < ((0 : GoInt))) {
            _i = ((0 : GoInt));
        };
        while ((_i < (_buf != null ? _buf.length : ((0 : GoInt)))) && ((_buf != null ? _buf[_i] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            _i++;
        };
        return _i;
    }
    public static function _expNNMontgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _numWords:GoInt = (_m != null ? _m.length : ((0 : GoInt)));
        if ((_x != null ? _x.length : ((0 : GoInt))) > _numWords) {
            {
                var __tmp__ = ((new T_nat() : T_nat))._div(null, (_x == null ? null : _x.__copy__()), (_m == null ? null : _m.__copy__()));
                _x = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
            };
        };
        if ((_x != null ? _x.length : ((0 : GoInt))) < _numWords) {
            var _rr:T_nat = new Slice<Word>(...[for (i in 0 ... ((_numWords : GoInt)).toBasic()) new Word()]);
            Go.copy(_rr, _x);
            _x = (_rr == null ? null : _rr.__copy__());
        };
        var _k0:Word = ((2 : GoUInt)) - (_m != null ? _m[((0 : GoInt))] : new Word());
        var _t:Word = (_m != null ? _m[((0 : GoInt))] : new Word()) - ((1 : GoUInt));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((32 : GoInt)), _i = _i << (((1 : GoUnTypedInt))), {
                _t = _t * (_t);
                _k0 = _k0 * ((_t + ((1 : GoUInt))));
            });
        };
        _k0 = -_k0;
        var rr:T_nat = (((new T_nat() : T_nat))._setWord(((1 : GoUInt))) == null ? null : ((new T_nat() : T_nat))._setWord(((1 : GoUInt))).__copy__());
        var _zz:T_nat = (((new T_nat() : T_nat))._shl((rr == null ? null : rr.__copy__()), ((((((2 : GoInt)) * _numWords) * ((32 : GoInt))) : GoUInt))) == null ? null : ((new T_nat() : T_nat))._shl((rr == null ? null : rr.__copy__()), ((((((2 : GoInt)) * _numWords) * ((32 : GoInt))) : GoUInt))).__copy__());
        {
            var __tmp__ = ((new T_nat() : T_nat))._div((rr == null ? null : rr.__copy__()), (_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__()));
            rr = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
        };
        if ((rr != null ? rr.length : ((0 : GoInt))) < _numWords) {
            _zz = (_zz._make(_numWords) == null ? null : _zz._make(_numWords).__copy__());
            Go.copy(_zz, rr);
            rr = (_zz == null ? null : _zz.__copy__());
        };
        var _one:T_nat = new Slice<Word>(...[for (i in 0 ... ((_numWords : GoInt)).toBasic()) new Word()]);
        if (_one != null) _one[((0 : GoInt))] = ((1 : GoUInt));
        {};
        var _powers:GoArray<T_nat> = new GoArray<T_nat>(...[for (i in 0 ... 16) new T_nat()]);
        if (_powers != null) _powers[((0 : GoInt))] = ((_powers != null ? _powers[((0 : GoInt))] : new T_nat())._montgomery((_one == null ? null : _one.__copy__()), (rr == null ? null : rr.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : (_powers != null ? _powers[((0 : GoInt))] : new T_nat())._montgomery((_one == null ? null : _one.__copy__()), (rr == null ? null : rr.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
        if (_powers != null) _powers[((1 : GoInt))] = ((_powers != null ? _powers[((1 : GoInt))] : new T_nat())._montgomery((_x == null ? null : _x.__copy__()), (rr == null ? null : rr.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : (_powers != null ? _powers[((1 : GoInt))] : new T_nat())._montgomery((_x == null ? null : _x.__copy__()), (rr == null ? null : rr.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                if (_powers != null) _powers[_i] = ((_powers != null ? _powers[_i] : new T_nat())._montgomery(((_powers != null ? _powers[_i - ((1 : GoInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[_i - ((1 : GoInt))] : new T_nat()).__copy__()), ((_powers != null ? _powers[((1 : GoInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[((1 : GoInt))] : new T_nat()).__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : (_powers != null ? _powers[_i] : new T_nat())._montgomery(((_powers != null ? _powers[_i - ((1 : GoInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[_i - ((1 : GoInt))] : new T_nat()).__copy__()), ((_powers != null ? _powers[((1 : GoInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[((1 : GoInt))] : new T_nat()).__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
            });
        };
        _z = (_z._make(_numWords) == null ? null : _z._make(_numWords).__copy__());
        Go.copy(_z, (_powers != null ? _powers[((0 : GoInt))] : new T_nat()));
        _zz = (_zz._make(_numWords) == null ? null : _zz._make(_numWords).__copy__());
        {
            var _i:GoInt = (_y != null ? _y.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                var _yi:Word = (_y != null ? _y[_i] : new Word());
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((32 : GoInt)), _j = _j + (((4 : GoInt))), {
                        if ((_i != ((_y != null ? _y.length : ((0 : GoInt))) - ((1 : GoInt)))) || (_j != ((0 : GoInt)))) {
                            _zz = (_zz._montgomery((_z == null ? null : _z.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : _zz._montgomery((_z == null ? null : _z.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
                            _z = (_z._montgomery((_zz == null ? null : _zz.__copy__()), (_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : _z._montgomery((_zz == null ? null : _zz.__copy__()), (_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
                            _zz = (_zz._montgomery((_z == null ? null : _z.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : _zz._montgomery((_z == null ? null : _z.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
                            _z = (_z._montgomery((_zz == null ? null : _zz.__copy__()), (_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : _z._montgomery((_zz == null ? null : _zz.__copy__()), (_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
                        };
                        _zz = (_zz._montgomery((_z == null ? null : _z.__copy__()), ((_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()).__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : _zz._montgomery((_z == null ? null : _z.__copy__()), ((_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()).__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
                        {
                            final __tmp__0 = (_zz == null ? null : _zz.__copy__());
                            final __tmp__1 = (_z == null ? null : _z.__copy__());
                            _z = __tmp__0;
                            _zz = __tmp__1;
                        };
                        _yi = _yi << (((4 : GoUnTypedInt)));
                    });
                };
            });
        };
        _zz = (_zz._montgomery((_z == null ? null : _z.__copy__()), (_one == null ? null : _one.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords) == null ? null : _zz._montgomery((_z == null ? null : _z.__copy__()), (_one == null ? null : _one.__copy__()), (_m == null ? null : _m.__copy__()), _k0, _numWords).__copy__());
        if (_zz._cmp((_m == null ? null : _m.__copy__())) >= ((0 : GoInt))) {
            _zz = (_zz._sub((_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__())) == null ? null : _zz._sub((_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__())).__copy__());
            if (_zz._cmp((_m == null ? null : _m.__copy__())) >= ((0 : GoInt))) {
                {
                    var __tmp__ = ((new T_nat() : T_nat))._div(null, (_zz == null ? null : _zz.__copy__()), (_m == null ? null : _m.__copy__()));
                    _zz = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                };
            };
        };
        return (_zz._norm() == null ? null : _zz._norm().__copy__());
    }
    public static function _expNNWindowed(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _zz:T_nat = new T_nat(), _r:T_nat = new T_nat();
        {};
        var _powers:GoArray<T_nat> = new GoArray<T_nat>(...[for (i in 0 ... 16) new T_nat()]);
        if (_powers != null) _powers[((0 : GoInt))] = (_natOne == null ? null : _natOne.__copy__());
        if (_powers != null) _powers[((1 : GoInt))] = (_x == null ? null : _x.__copy__());
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i = _i + (((2 : GoInt))), {
                var _p2:T_nat = (_powers != null ? _powers[_i / ((2 : GoInt))] : new T_nat()), _p:T_nat = (_powers != null ? _powers[_i] : new T_nat()), _p1:T_nat = (_powers != null ? _powers[_i + ((1 : GoInt))] : new T_nat());
                _p = (_p._sqr((_p2 == null ? null : _p2.__copy__())) == null ? null : _p._sqr((_p2 == null ? null : _p2.__copy__())).__copy__());
                {
                    var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_p == null ? null : _p.__copy__()), (_m == null ? null : _m.__copy__()));
                    _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                };
                {
                    final __tmp__0 = (_r == null ? null : _r.__copy__());
                    final __tmp__1 = (_p == null ? null : _p.__copy__());
                    _p = __tmp__0;
                    _r = __tmp__1;
                };
                _p1 = (_p1._mul((_p == null ? null : _p.__copy__()), (_x == null ? null : _x.__copy__())) == null ? null : _p1._mul((_p == null ? null : _p.__copy__()), (_x == null ? null : _x.__copy__())).__copy__());
                {
                    var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_p1 == null ? null : _p1.__copy__()), (_m == null ? null : _m.__copy__()));
                    _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                };
                {
                    final __tmp__0 = (_r == null ? null : _r.__copy__());
                    final __tmp__1 = (_p1 == null ? null : _p1.__copy__());
                    _p1 = __tmp__0;
                    _r = __tmp__1;
                };
            });
        };
        _z = (_z._setWord(((1 : GoUInt))) == null ? null : _z._setWord(((1 : GoUInt))).__copy__());
        {
            var _i:GoInt = (_y != null ? _y.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                var _yi:Word = (_y != null ? _y[_i] : new Word());
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((32 : GoInt)), _j = _j + (((4 : GoInt))), {
                        if ((_i != ((_y != null ? _y.length : ((0 : GoInt))) - ((1 : GoInt)))) || (_j != ((0 : GoInt)))) {
                            _zz = (_zz._sqr((_z == null ? null : _z.__copy__())) == null ? null : _zz._sqr((_z == null ? null : _z.__copy__())).__copy__());
                            {
                                final __tmp__0 = (_z == null ? null : _z.__copy__());
                                final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()));
                                _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                                _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                            };
                            {
                                final __tmp__0 = (_r == null ? null : _r.__copy__());
                                final __tmp__1 = (_z == null ? null : _z.__copy__());
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                            _zz = (_zz._sqr((_z == null ? null : _z.__copy__())) == null ? null : _zz._sqr((_z == null ? null : _z.__copy__())).__copy__());
                            {
                                final __tmp__0 = (_z == null ? null : _z.__copy__());
                                final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()));
                                _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                                _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                            };
                            {
                                final __tmp__0 = (_r == null ? null : _r.__copy__());
                                final __tmp__1 = (_z == null ? null : _z.__copy__());
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                            _zz = (_zz._sqr((_z == null ? null : _z.__copy__())) == null ? null : _zz._sqr((_z == null ? null : _z.__copy__())).__copy__());
                            {
                                final __tmp__0 = (_z == null ? null : _z.__copy__());
                                final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()));
                                _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                                _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                            };
                            {
                                final __tmp__0 = (_r == null ? null : _r.__copy__());
                                final __tmp__1 = (_z == null ? null : _z.__copy__());
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                            _zz = (_zz._sqr((_z == null ? null : _z.__copy__())) == null ? null : _zz._sqr((_z == null ? null : _z.__copy__())).__copy__());
                            {
                                final __tmp__0 = (_z == null ? null : _z.__copy__());
                                final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()));
                                _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                                _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                            };
                            {
                                final __tmp__0 = (_r == null ? null : _r.__copy__());
                                final __tmp__1 = (_z == null ? null : _z.__copy__());
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                        };
                        _zz = (_zz._mul((_z == null ? null : _z.__copy__()), ((_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()).__copy__())) == null ? null : _zz._mul((_z == null ? null : _z.__copy__()), ((_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()) == null ? null : (_powers != null ? _powers[_yi >> ((28 : GoUnTypedInt))] : new T_nat()).__copy__())).__copy__());
                        {
                            final __tmp__0 = (_z == null ? null : _z.__copy__());
                            final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        {
                            var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()));
                            _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                            _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                        };
                        {
                            final __tmp__0 = (_r == null ? null : _r.__copy__());
                            final __tmp__1 = (_z == null ? null : _z.__copy__());
                            _z = __tmp__0;
                            _r = __tmp__1;
                        };
                        _yi = _yi << (((4 : GoUnTypedInt)));
                    });
                };
            });
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _expNN(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_alias((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__())) || _alias((_z == null ? null : _z.__copy__()), (_y == null ? null : _y.__copy__()))) {
            _z = null;
        };
        if (((_m != null ? _m.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_m != null ? _m[((0 : GoInt))] : new Word()) == ((1 : GoUInt)))) {
            return (_z._setWord(((0 : GoUInt))) == null ? null : _z._setWord(((0 : GoUInt))).__copy__());
        };
        if ((_y != null ? _y.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return (_z._setWord(((1 : GoUInt))) == null ? null : _z._setWord(((1 : GoUInt))).__copy__());
        };
        if ((((_y != null ? _y.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_y != null ? _y[((0 : GoInt))] : new Word()) == ((1 : GoUInt)))) && ((_m != null ? _m.length : ((0 : GoInt))) != ((0 : GoInt)))) {
            {
                var __tmp__ = ((new T_nat() : T_nat))._div((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()), (_m == null ? null : _m.__copy__()));
                _z = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
            };
            return (_z == null ? null : _z.__copy__());
        };
        if ((_m != null ? _m.length : ((0 : GoInt))) != ((0 : GoInt))) {
            _z = (_z._make((_m != null ? _m.length : ((0 : GoInt)))) == null ? null : _z._make((_m != null ? _m.length : ((0 : GoInt)))).__copy__());
        };
        _z = (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
        if (((_x._cmp((_natOne == null ? null : _natOne.__copy__())) > ((0 : GoInt))) && ((_y != null ? _y.length : ((0 : GoInt))) > ((1 : GoInt)))) && ((_m != null ? _m.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            if (((_m != null ? _m[((0 : GoInt))] : new Word()) & ((1 : GoUInt))) == ((1 : GoUInt))) {
                return (_z._expNNMontgomery((_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__()), (_m == null ? null : _m.__copy__())) == null ? null : _z._expNNMontgomery((_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__()), (_m == null ? null : _m.__copy__())).__copy__());
            };
            return (_z._expNNWindowed((_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__()), (_m == null ? null : _m.__copy__())) == null ? null : _z._expNNWindowed((_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__()), (_m == null ? null : _m.__copy__())).__copy__());
        };
        var _v:Word = (_y != null ? _y[(_y != null ? _y.length : ((0 : GoInt))) - ((1 : GoInt))] : new Word());
        var _shift:GoUInt = _nlz(_v) + ((1 : GoUInt));
        _v = _v << (_shift);
        var _q:T_nat = new T_nat();
        {};
        var _w:GoInt = ((32 : GoInt)) - ((_shift : GoInt));
        var _zz:T_nat = new T_nat(), _r:T_nat = new T_nat();
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _w, _j++, {
                _zz = (_zz._sqr((_z == null ? null : _z.__copy__())) == null ? null : _zz._sqr((_z == null ? null : _z.__copy__())).__copy__());
                {
                    final __tmp__0 = (_z == null ? null : _z.__copy__());
                    final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                    _zz = __tmp__0;
                    _z = __tmp__1;
                };
                if ((_v & (("2147483648" : GoUInt))) != ((0 : GoUInt))) {
                    _zz = (_zz._mul((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__())) == null ? null : _zz._mul((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__())).__copy__());
                    {
                        final __tmp__0 = (_z == null ? null : _z.__copy__());
                        final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                        _zz = __tmp__0;
                        _z = __tmp__1;
                    };
                };
                if ((_m != null ? _m.length : ((0 : GoInt))) != ((0 : GoInt))) {
                    {
                        var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()));
                        _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                        _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                    };
                    {
                        final __tmp__0 = (_q == null ? null : _q.__copy__());
                        final __tmp__1 = (_z == null ? null : _z.__copy__());
                        final __tmp__2 = (_zz == null ? null : _zz.__copy__());
                        final __tmp__3 = (_r == null ? null : _r.__copy__());
                        _zz = __tmp__0;
                        _r = __tmp__1;
                        _q = __tmp__2;
                        _z = __tmp__3;
                    };
                };
                _v = _v << (((1 : GoUnTypedInt)));
            });
        };
        {
            var _i:GoInt = (_y != null ? _y.length : ((0 : GoInt))) - ((2 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _v = (_y != null ? _y[_i] : new Word());
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((32 : GoInt)), _j++, {
                        _zz = (_zz._sqr((_z == null ? null : _z.__copy__())) == null ? null : _zz._sqr((_z == null ? null : _z.__copy__())).__copy__());
                        {
                            final __tmp__0 = (_z == null ? null : _z.__copy__());
                            final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        if ((_v & (("2147483648" : GoUInt))) != ((0 : GoUInt))) {
                            _zz = (_zz._mul((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__())) == null ? null : _zz._mul((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__())).__copy__());
                            {
                                final __tmp__0 = (_z == null ? null : _z.__copy__());
                                final __tmp__1 = (_zz == null ? null : _zz.__copy__());
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                        };
                        if ((_m != null ? _m.length : ((0 : GoInt))) != ((0 : GoInt))) {
                            {
                                var __tmp__ = _zz._div((_r == null ? null : _r.__copy__()), (_z == null ? null : _z.__copy__()), (_m == null ? null : _m.__copy__()));
                                _zz = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                                _r = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
                            };
                            {
                                final __tmp__0 = (_q == null ? null : _q.__copy__());
                                final __tmp__1 = (_z == null ? null : _z.__copy__());
                                final __tmp__2 = (_zz == null ? null : _zz.__copy__());
                                final __tmp__3 = (_r == null ? null : _r.__copy__());
                                _zz = __tmp__0;
                                _r = __tmp__1;
                                _q = __tmp__2;
                                _z = __tmp__3;
                            };
                        };
                        _v = _v << (((1 : GoUnTypedInt)));
                    });
                };
            });
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _random(_z:T_nat, _rand:rand.Rand.Rand, _limit:T_nat, _n:GoInt):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_alias((_z == null ? null : _z.__copy__()), (_limit == null ? null : _limit.__copy__()))) {
            _z = null;
        };
        _z = (_z._make((_limit != null ? _limit.length : ((0 : GoInt)))) == null ? null : _z._make((_limit != null ? _limit.length : ((0 : GoInt)))).__copy__());
        var _bitLengthOfMSW:GoUInt = (((_n % ((32 : GoInt))) : GoUInt));
        if (_bitLengthOfMSW == ((0 : GoUInt))) {
            _bitLengthOfMSW = ((32 : GoUInt));
        };
        var _mask:Word = ((((((1 : GoUInt)) << _bitLengthOfMSW) - ((1 : GoUInt))) : Word));
        while (true) {
            if (((32 : GoInt)) == ((32 : GoInt))) {
                for (_i => _ in _z) {
                    if (_z != null) _z[_i] = ((_rand.uint32() : Word));
                };
            } else if (((32 : GoInt)) == ((64 : GoInt))) {
                for (_i => _ in _z) {
                    if (_z != null) _z[_i] = ((_rand.uint32() : Word)) | (((_rand.uint32() : Word)) << ((32 : GoUnTypedInt)));
                };
            } else {
                throw Go.toInterface(((("unknown word size" : GoString))));
            };
            if (_z != null) (_z != null ? _z[(_limit != null ? _limit.length : ((0 : GoInt))) - ((1 : GoInt))] : new Word()) & (_mask);
            if (_z._cmp((_limit == null ? null : _limit.__copy__())) < ((0 : GoInt))) {
                break;
            };
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _xor(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        var _s:T_nat = (_x == null ? null : _x.__copy__());
        if (_m < _n) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = __tmp__0;
                _m = __tmp__1;
            };
            _s = (_y == null ? null : _y.__copy__());
        };
        _z = (_z._make(_m) == null ? null : _z._make(_m).__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                if (_z != null) _z[_i] = (_x != null ? _x[_i] : new Word()) ^ (_y != null ? _y[_i] : new Word());
            });
        };
        Go.copy(_z.__slice__(_n, _m), _s.__slice__(_n, _m));
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _or(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        var _s:T_nat = (_x == null ? null : _x.__copy__());
        if (_m < _n) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = __tmp__0;
                _m = __tmp__1;
            };
            _s = (_y == null ? null : _y.__copy__());
        };
        _z = (_z._make(_m) == null ? null : _z._make(_m).__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                if (_z != null) _z[_i] = (_x != null ? _x[_i] : new Word()) | (_y != null ? _y[_i] : new Word());
            });
        };
        Go.copy(_z.__slice__(_n, _m), _s.__slice__(_n, _m));
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _andNot(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        if (_n > _m) {
            _n = _m;
        };
        _z = (_z._make(_m) == null ? null : _z._make(_m).__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                if (_z != null) _z[_i] = (_x != null ? _x[_i] : new Word()) & ((_y != null ? _y[_i] : new Word()) ^ ((-1 : GoUnTypedInt)));
            });
        };
        Go.copy(_z.__slice__(_n, _m), _x.__slice__(_n, _m));
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _and(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        if (_m > _n) {
            _m = _n;
        };
        _z = (_z._make(_m) == null ? null : _z._make(_m).__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _m, _i++, {
                if (_z != null) _z[_i] = (_x != null ? _x[_i] : new Word()) & (_y != null ? _y[_i] : new Word());
            });
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _sticky(_x:T_nat, _i:GoUInt):GoUInt {
        (_x == null ? null : _x.__copy__());
        var _j:GoUInt = _i / ((32 : GoUInt));
        if (_j >= (((_x != null ? _x.length : ((0 : GoInt))) : GoUInt))) {
            if ((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return ((0 : GoUInt));
            };
            return ((1 : GoUInt));
        };
        for (_ => _x in _x.__slice__(0, _j)) {
            if (_x != ((0 : GoUInt))) {
                return ((1 : GoUInt));
            };
        };
        if (((_x != null ? _x[_j] : new Word()) << (((32 : GoUInt)) - (_i % ((32 : GoUInt))))) != ((0 : GoUInt))) {
            return ((1 : GoUInt));
        };
        return ((0 : GoUInt));
    }
    public static function _bit(_x:T_nat, _i:GoUInt):GoUInt {
        (_x == null ? null : _x.__copy__());
        var _j:GoUInt = _i / ((32 : GoUInt));
        if (_j >= (((_x != null ? _x.length : ((0 : GoInt))) : GoUInt))) {
            return ((0 : GoUInt));
        };
        return (((((_x != null ? _x[_j] : new Word()) >> (_i % ((32 : GoUInt)))) & ((1 : GoUInt))) : GoUInt));
    }
    public static function _setBit(_z:T_nat, _x:T_nat, _i:GoUInt, _b:GoUInt):T_nat {
        (_z == null ? null : _z.__copy__());
        var _j:GoInt = (((_i / ((32 : GoUInt))) : GoInt));
        var _m:Word = ((((1 : GoUInt)) : Word)) << (_i % ((32 : GoUInt)));
        var _n:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        if (_b == ((0 : GoUInt))) {
            _z = (_z._make(_n) == null ? null : _z._make(_n).__copy__());
            Go.copy(_z, _x);
            if (_j >= _n) {
                return (_z == null ? null : _z.__copy__());
            };
            if (_z != null) (_z != null ? _z[_j] : new Word()) & ((_m) ^ ((-1 : GoUnTypedInt)));
            return (_z._norm() == null ? null : _z._norm().__copy__());
        } else if (_b == ((1 : GoUInt))) {
            if (_j >= _n) {
                _z = (_z._make(_j + ((1 : GoInt))) == null ? null : _z._make(_j + ((1 : GoInt))).__copy__());
                _z.__slice__(_n)._clear();
            } else {
                _z = (_z._make(_n) == null ? null : _z._make(_n).__copy__());
            };
            Go.copy(_z, _x);
            if (_z != null) (_z != null ? _z[_j] : new Word()) | (_m);
            return (_z == null ? null : _z.__copy__());
        };
        throw Go.toInterface(((("set bit is not 0 or 1" : GoString))));
    }
    public static function _shr(_z:T_nat, _x:T_nat, _s:GoUInt):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_s == ((0 : GoUInt))) {
            if (_same((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()))) {
                return (_z == null ? null : _z.__copy__());
            };
            if (!_alias((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()))) {
                return (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
            };
        };
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = _m - (((_s / ((32 : GoUInt))) : GoInt));
        if (_n <= ((0 : GoInt))) {
            return (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        };
        _z = (_z._make(_n) == null ? null : _z._make(_n).__copy__());
        _shrVU(_z, _x.__slice__(_m - _n), _s % ((32 : GoUInt)));
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _shl(_z:T_nat, _x:T_nat, _s:GoUInt):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_s == ((0 : GoUInt))) {
            if (_same((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()))) {
                return (_z == null ? null : _z.__copy__());
            };
            if (!_alias((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()))) {
                return (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
            };
        };
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        if (_m == ((0 : GoInt))) {
            return (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        };
        var _n:GoInt = _m + (((_s / ((32 : GoUInt))) : GoInt));
        _z = (_z._make(_n + ((1 : GoInt))) == null ? null : _z._make(_n + ((1 : GoInt))).__copy__());
        if (_z != null) _z[_n] = _shlVU(_z.__slice__(_n - _m, _n), _x, _s % ((32 : GoUInt)));
        _z.__slice__(((0 : GoInt)), _n - _m)._clear();
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _trailingZeroBits(_x:T_nat):GoUInt {
        (_x == null ? null : _x.__copy__());
        if ((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoUInt));
        };
        var _i:GoUInt = ((0 : GoUInt));
        while ((_x != null ? _x[_i] : new Word()) == ((0 : GoUInt))) {
            _i++;
        };
        return (_i * ((32 : GoUInt))) + ((stdgo.math.bits.Bits.trailingZeros((((_x != null ? _x[_i] : new Word()) : GoUInt))) : GoUInt));
    }
    public static function _bitLen(_x:T_nat):GoInt {
        (_x == null ? null : _x.__copy__());
        {
            var _i:GoInt = (_x != null ? _x.length : ((0 : GoInt))) - ((1 : GoInt));
            if (_i >= ((0 : GoInt))) {
                return (_i * ((32 : GoInt))) + stdgo.math.bits.Bits.len((((_x != null ? _x[_i] : new Word()) : GoUInt)));
            };
        };
        return ((0 : GoInt));
    }
    public static function _mulRange(_z:T_nat, _a:GoUInt64, _b:GoUInt64):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_a == ((0 : GoUInt64))) {
            return (_z._setUint64(((0 : GoUInt64))) == null ? null : _z._setUint64(((0 : GoUInt64))).__copy__());
        } else if (_a > _b) {
            return (_z._setUint64(((1 : GoUInt64))) == null ? null : _z._setUint64(((1 : GoUInt64))).__copy__());
        } else if (_a == _b) {
            return (_z._setUint64(_a) == null ? null : _z._setUint64(_a).__copy__());
        } else if ((_a + ((1 : GoUInt64))) == _b) {
            return (_z._mul((((new T_nat() : T_nat))._setUint64(_a) == null ? null : ((new T_nat() : T_nat))._setUint64(_a).__copy__()), (((new T_nat() : T_nat))._setUint64(_b) == null ? null : ((new T_nat() : T_nat))._setUint64(_b).__copy__())) == null ? null : _z._mul((((new T_nat() : T_nat))._setUint64(_a) == null ? null : ((new T_nat() : T_nat))._setUint64(_a).__copy__()), (((new T_nat() : T_nat))._setUint64(_b) == null ? null : ((new T_nat() : T_nat))._setUint64(_b).__copy__())).__copy__());
        };
        var _m:GoUInt64 = (_a + _b) / ((2 : GoUInt64));
        return (_z._mul((((new T_nat() : T_nat))._mulRange(_a, _m) == null ? null : ((new T_nat() : T_nat))._mulRange(_a, _m).__copy__()), (((new T_nat() : T_nat))._mulRange(_m + ((1 : GoUInt64)), _b) == null ? null : ((new T_nat() : T_nat))._mulRange(_m + ((1 : GoUInt64)), _b).__copy__())) == null ? null : _z._mul((((new T_nat() : T_nat))._mulRange(_a, _m) == null ? null : ((new T_nat() : T_nat))._mulRange(_a, _m).__copy__()), (((new T_nat() : T_nat))._mulRange(_m + ((1 : GoUInt64)), _b) == null ? null : ((new T_nat() : T_nat))._mulRange(_m + ((1 : GoUInt64)), _b).__copy__())).__copy__());
    }
    public static function _sqr(_z:T_nat, _x:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _n:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        if (_n == ((0 : GoInt))) {
            return (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        } else if (_n == ((1 : GoInt))) {
            var _d:Word = (_x != null ? _x[((0 : GoInt))] : new Word());
            _z = (_z._make(((2 : GoInt))) == null ? null : _z._make(((2 : GoInt))).__copy__());
            {
                var __tmp__ = _mulWW(_d, _d);
                (_z != null ? _z[((1 : GoInt))] : new Word()) = __tmp__._0;
                (_z != null ? _z[((0 : GoInt))] : new Word()) = __tmp__._1;
            };
            return (_z._norm() == null ? null : _z._norm().__copy__());
        };
        if (_alias((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()))) {
            _z = null;
        };
        if (_n < _basicSqrThreshold) {
            _z = (_z._make(((2 : GoInt)) * _n) == null ? null : _z._make(((2 : GoInt)) * _n).__copy__());
            _basicMul((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()), (_x == null ? null : _x.__copy__()));
            return (_z._norm() == null ? null : _z._norm().__copy__());
        };
        if (_n < _karatsubaSqrThreshold) {
            _z = (_z._make(((2 : GoInt)) * _n) == null ? null : _z._make(((2 : GoInt)) * _n).__copy__());
            _basicSqr((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()));
            return (_z._norm() == null ? null : _z._norm().__copy__());
        };
        var _k:GoInt = _karatsubaLen(_n, _karatsubaSqrThreshold);
        var _x0:T_nat = (_x.__slice__(((0 : GoInt)), _k) == null ? null : _x.__slice__(((0 : GoInt)), _k).__copy__());
        _z = (_z._make(_max(((6 : GoInt)) * _k, ((2 : GoInt)) * _n)) == null ? null : _z._make(_max(((6 : GoInt)) * _k, ((2 : GoInt)) * _n)).__copy__());
        _karatsubaSqr((_z == null ? null : _z.__copy__()), (_x0 == null ? null : _x0.__copy__()));
        _z = (_z.__slice__(((0 : GoInt)), ((2 : GoInt)) * _n) == null ? null : _z.__slice__(((0 : GoInt)), ((2 : GoInt)) * _n).__copy__());
        _z.__slice__(((2 : GoInt)) * _k)._clear();
        if (_k < _n) {
            var _tp:T_nat = _getNat(((2 : GoInt)) * _k);
            var _t:T_nat = (_tp == null ? null : _tp.__copy__());
            var _x0:T_nat = (_x0._norm() == null ? null : _x0._norm().__copy__());
            var _x1:T_nat = (_x.__slice__(_k) == null ? null : _x.__slice__(_k).__copy__());
            _t = (_t._mul((_x0 == null ? null : _x0.__copy__()), (_x1 == null ? null : _x1.__copy__())) == null ? null : _t._mul((_x0 == null ? null : _x0.__copy__()), (_x1 == null ? null : _x1.__copy__())).__copy__());
            _addAt((_z == null ? null : _z.__copy__()), (_t == null ? null : _t.__copy__()), _k);
            _addAt((_z == null ? null : _z.__copy__()), (_t == null ? null : _t.__copy__()), _k);
            _t = (_t._sqr((_x1 == null ? null : _x1.__copy__())) == null ? null : _t._sqr((_x1 == null ? null : _x1.__copy__())).__copy__());
            _addAt((_z == null ? null : _z.__copy__()), (_t == null ? null : _t.__copy__()), ((2 : GoInt)) * _k);
            _putNat(_tp);
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _mul(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        if (_m < _n) {
            return (_z._mul((_y == null ? null : _y.__copy__()), (_x == null ? null : _x.__copy__())) == null ? null : _z._mul((_y == null ? null : _y.__copy__()), (_x == null ? null : _x.__copy__())).__copy__());
        } else if ((_m == ((0 : GoInt))) || (_n == ((0 : GoInt)))) {
            return (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        } else if (_n == ((1 : GoInt))) {
            return (_z._mulAddWW((_x == null ? null : _x.__copy__()), (_y != null ? _y[((0 : GoInt))] : new Word()), ((0 : GoUInt))) == null ? null : _z._mulAddWW((_x == null ? null : _x.__copy__()), (_y != null ? _y[((0 : GoInt))] : new Word()), ((0 : GoUInt))).__copy__());
        };
        if (_alias((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__())) || _alias((_z == null ? null : _z.__copy__()), (_y == null ? null : _y.__copy__()))) {
            _z = null;
        };
        if (_n < _karatsubaThreshold) {
            _z = (_z._make(_m + _n) == null ? null : _z._make(_m + _n).__copy__());
            _basicMul((_z == null ? null : _z.__copy__()), (_x == null ? null : _x.__copy__()), (_y == null ? null : _y.__copy__()));
            return (_z._norm() == null ? null : _z._norm().__copy__());
        };
        var _k:GoInt = _karatsubaLen(_n, _karatsubaThreshold);
        var _x0:T_nat = (_x.__slice__(((0 : GoInt)), _k) == null ? null : _x.__slice__(((0 : GoInt)), _k).__copy__());
        var _y0:T_nat = (_y.__slice__(((0 : GoInt)), _k) == null ? null : _y.__slice__(((0 : GoInt)), _k).__copy__());
        _z = (_z._make(_max(((6 : GoInt)) * _k, _m + _n)) == null ? null : _z._make(_max(((6 : GoInt)) * _k, _m + _n)).__copy__());
        _karatsuba((_z == null ? null : _z.__copy__()), (_x0 == null ? null : _x0.__copy__()), (_y0 == null ? null : _y0.__copy__()));
        _z = (_z.__slice__(((0 : GoInt)), _m + _n) == null ? null : _z.__slice__(((0 : GoInt)), _m + _n).__copy__());
        _z.__slice__(((2 : GoInt)) * _k)._clear();
        if ((_k < _n) || (_m != _n)) {
            var _tp:T_nat = _getNat(((3 : GoInt)) * _k);
            var _t:T_nat = (_tp == null ? null : _tp.__copy__());
            var _x0:T_nat = (_x0._norm() == null ? null : _x0._norm().__copy__());
            var _y1:T_nat = (_y.__slice__(_k) == null ? null : _y.__slice__(_k).__copy__());
            _t = (_t._mul((_x0 == null ? null : _x0.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _t._mul((_x0 == null ? null : _x0.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__());
            _addAt((_z == null ? null : _z.__copy__()), (_t == null ? null : _t.__copy__()), _k);
            var _y0:T_nat = (_y0._norm() == null ? null : _y0._norm().__copy__());
            {
                var _i:GoInt = _k;
                Go.cfor(_i < (_x != null ? _x.length : ((0 : GoInt))), _i = _i + (_k), {
                    var _xi:T_nat = (_x.__slice__(_i) == null ? null : _x.__slice__(_i).__copy__());
                    if ((_xi != null ? _xi.length : ((0 : GoInt))) > _k) {
                        _xi = (_xi.__slice__(0, _k) == null ? null : _xi.__slice__(0, _k).__copy__());
                    };
                    _xi = (_xi._norm() == null ? null : _xi._norm().__copy__());
                    _t = (_t._mul((_xi == null ? null : _xi.__copy__()), (_y0 == null ? null : _y0.__copy__())) == null ? null : _t._mul((_xi == null ? null : _xi.__copy__()), (_y0 == null ? null : _y0.__copy__())).__copy__());
                    _addAt((_z == null ? null : _z.__copy__()), (_t == null ? null : _t.__copy__()), _i);
                    _t = (_t._mul((_xi == null ? null : _xi.__copy__()), (_y1 == null ? null : _y1.__copy__())) == null ? null : _t._mul((_xi == null ? null : _xi.__copy__()), (_y1 == null ? null : _y1.__copy__())).__copy__());
                    _addAt((_z == null ? null : _z.__copy__()), (_t == null ? null : _t.__copy__()), _i + _k);
                });
            };
            _putNat(_tp);
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _montgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat, _k:Word, _n:GoInt):T_nat {
        (_z == null ? null : _z.__copy__());
        if ((((_x != null ? _x.length : ((0 : GoInt))) != _n) || ((_y != null ? _y.length : ((0 : GoInt))) != _n)) || ((_m != null ? _m.length : ((0 : GoInt))) != _n)) {
            throw Go.toInterface(((("math/big: mismatched montgomery number lengths" : GoString))));
        };
        _z = (_z._make(_n * ((2 : GoInt))) == null ? null : _z._make(_n * ((2 : GoInt))).__copy__());
        _z._clear();
        var _c:Word = new Word();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _d:Word = (_y != null ? _y[_i] : new Word());
                var _c2:Word = _addMulVVW(_z.__slice__(_i, _n + _i), _x, _d);
                var _t:Word = (_z != null ? _z[_i] : new Word()) * _k;
                var _c3:Word = _addMulVVW(_z.__slice__(_i, _n + _i), _m, _t);
                var _cx:Word = _c + _c2;
                var _cy:Word = _cx + _c3;
                if (_z != null) _z[_n + _i] = _cy;
                if ((_cx < _c2) || (_cy < _c3)) {
                    _c = ((1 : GoUInt));
                } else {
                    _c = ((0 : GoUInt));
                };
            });
        };
        if (_c != ((0 : GoUInt))) {
            _subVV(_z.__slice__(0, _n), _z.__slice__(_n), _m);
        } else {
            Go.copy(_z.__slice__(0, _n), _z.__slice__(_n));
        };
        return (_z.__slice__(0, _n) == null ? null : _z.__slice__(0, _n).__copy__());
    }
    public static function _mulAddWW(_z:T_nat, _x:T_nat, _y:Word, _r:Word):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        if ((_m == ((0 : GoInt))) || (_y == ((0 : GoUInt)))) {
            return (_z._setWord(_r) == null ? null : _z._setWord(_r).__copy__());
        };
        _z = (_z._make(_m + ((1 : GoInt))) == null ? null : _z._make(_m + ((1 : GoInt))).__copy__());
        if (_z != null) _z[_m] = _mulAddVWW(_z.__slice__(((0 : GoInt)), _m), _x, _y, _r);
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _cmp(_x:T_nat, _y:T_nat):GoInt {
        (_x == null ? null : _x.__copy__());
        var _r:GoInt = ((0 : GoInt));
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        if ((_m != _n) || (_m == ((0 : GoInt)))) {
            if (_m < _n) {
                _r = ((-1 : GoInt));
            } else if (_m > _n) {
                _r = ((1 : GoInt));
            };
            return _r;
        };
        var _i:GoInt = _m - ((1 : GoInt));
        while ((_i > ((0 : GoInt))) && ((_x != null ? _x[_i] : new Word()) == (_y != null ? _y[_i] : new Word()))) {
            _i--;
        };
        if ((_x != null ? _x[_i] : new Word()) < (_y != null ? _y[_i] : new Word())) {
            _r = ((-1 : GoInt));
        } else if ((_x != null ? _x[_i] : new Word()) > (_y != null ? _y[_i] : new Word())) {
            _r = ((1 : GoInt));
        };
        return _r;
    }
    public static function _sub(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        if (_m < _n) {
            throw Go.toInterface(((("underflow" : GoString))));
        } else if (_m == ((0 : GoInt))) {
            return (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        } else if (_n == ((0 : GoInt))) {
            return (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
        };
        _z = (_z._make(_m) == null ? null : _z._make(_m).__copy__());
        var _c:Word = _subVV(_z.__slice__(((0 : GoInt)), _n), _x, _y);
        if (_m > _n) {
            _c = _subVW(_z.__slice__(_n), _x.__slice__(_n), _c);
        };
        if (_c != ((0 : GoUInt))) {
            throw Go.toInterface(((("underflow" : GoString))));
        };
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _add(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _m:GoInt = (_x != null ? _x.length : ((0 : GoInt)));
        var _n:GoInt = (_y != null ? _y.length : ((0 : GoInt)));
        if (_m < _n) {
            return (_z._add((_y == null ? null : _y.__copy__()), (_x == null ? null : _x.__copy__())) == null ? null : _z._add((_y == null ? null : _y.__copy__()), (_x == null ? null : _x.__copy__())).__copy__());
        } else if (_m == ((0 : GoInt))) {
            return (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        } else if (_n == ((0 : GoInt))) {
            return (_z._set((_x == null ? null : _x.__copy__())) == null ? null : _z._set((_x == null ? null : _x.__copy__())).__copy__());
        };
        _z = (_z._make(_m + ((1 : GoInt))) == null ? null : _z._make(_m + ((1 : GoInt))).__copy__());
        var _c:Word = _addVV(_z.__slice__(((0 : GoInt)), _n), _x, _y);
        if (_m > _n) {
            _c = _addVW(_z.__slice__(_n, _m), _x.__slice__(_n), _c);
        };
        if (_z != null) _z[_m] = _c;
        return (_z._norm() == null ? null : _z._norm().__copy__());
    }
    public static function _set(_z:T_nat, _x:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        _z = (_z._make((_x != null ? _x.length : ((0 : GoInt)))) == null ? null : _z._make((_x != null ? _x.length : ((0 : GoInt)))).__copy__());
        Go.copy(_z, _x);
        return (_z == null ? null : _z.__copy__());
    }
    public static function _setUint64(_z:T_nat, _x:GoUInt64):T_nat {
        (_z == null ? null : _z.__copy__());
        {
            var _w:Word = ((_x : Word));
            if (((_w : GoUInt64)) == _x) {
                return (_z._setWord(_w) == null ? null : _z._setWord(_w).__copy__());
            };
        };
        _z = (_z._make(((2 : GoInt))) == null ? null : _z._make(((2 : GoInt))).__copy__());
        if (_z != null) _z[((1 : GoInt))] = (((_x >> ((32 : GoUnTypedInt))) : Word));
        if (_z != null) _z[((0 : GoInt))] = ((_x : Word));
        return (_z == null ? null : _z.__copy__());
    }
    public static function _setWord(_z:T_nat, _x:Word):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_x == ((0 : GoUInt))) {
            return (_z.__slice__(0, ((0 : GoInt))) == null ? null : _z.__slice__(0, ((0 : GoInt))).__copy__());
        };
        _z = (_z._make(((1 : GoInt))) == null ? null : _z._make(((1 : GoInt))).__copy__());
        if (_z != null) _z[((0 : GoInt))] = _x;
        return (_z == null ? null : _z.__copy__());
    }
    public static function _make(_z:T_nat, _n:GoInt):T_nat {
        (_z == null ? null : _z.__copy__());
        if (_n <= (_z != null ? _z.cap() : ((0 : GoInt)))) {
            return (_z.__slice__(0, _n) == null ? null : _z.__slice__(0, _n).__copy__());
        };
        if (_n == ((1 : GoInt))) {
            return new Slice<Word>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new Word()]);
        };
        {};
        return (new Slice<Word>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) new Word()]).__setCap__(((_n + ((4 : GoInt)) : GoInt)).toBasic()) == null ? null : new Slice<Word>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) new Word()]).__setCap__(((_n + ((4 : GoInt)) : GoInt)).toBasic()).__copy__());
    }
    public static function _norm(_z:T_nat):T_nat {
        (_z == null ? null : _z.__copy__());
        var _i:GoInt = (_z != null ? _z.length : ((0 : GoInt)));
        while ((_i > ((0 : GoInt))) && ((_z != null ? _z[_i - ((1 : GoInt))] : new Word()) == ((0 : GoUInt)))) {
            _i--;
        };
        return (_z.__slice__(((0 : GoInt)), _i) == null ? null : _z.__slice__(((0 : GoInt)), _i).__copy__());
    }
    public static function _clear(_z:T_nat):Void {
        (_z == null ? null : _z.__copy__());
        for (_i => _ in _z) {
            if (_z != null) _z[_i] = ((0 : GoUInt));
        };
    }
}
@:build(stdgo.internal.Macro.wrapper(Rat)) class Rat_static_extension {

}
