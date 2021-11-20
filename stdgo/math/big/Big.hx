package stdgo.math.big;
import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;
@:named class Word {
    public var __t__ : GoUInt;
    public function new(?t:GoUInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Word(__t__);
}
@:structInit class T_decimal {
    public function _roundDown(_n:GoInt):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt)) || _n >= _x.value._mant.length) {
            return;
        };
        _x.value._mant = _x.value._mant.__slice__(0, _n);
        _trim(_x);
    }
    public function _roundUp(_n:GoInt):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt)) || _n >= _x.value._mant.length) {
            return;
        };
        while (_n > ((0 : GoInt)) && _x.value._mant[_n - ((1 : GoInt))] >= (("9".code : GoRune))) {
            _n--;
        };
        if (_n == ((0 : GoInt))) {
            _x.value._mant[((0 : GoInt))] = (("1".code : GoRune));
            _x.value._mant = _x.value._mant.__slice__(0, ((1 : GoInt)));
            _x.value._exp++;
            return;
        };
        _x.value._mant[_n - ((1 : GoInt))]++;
        _x.value._mant = _x.value._mant.__slice__(0, _n);
    }
    public function _round(_n:GoInt):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt)) || _n >= _x.value._mant.length) {
            return;
        };
        if (_shouldRoundUp(_x, _n)) {
            _x.value._roundUp(_n);
        } else {
            _x.value._roundDown(_n);
        };
    }
    public function toString():GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._mant.length == ((0 : GoInt))) {
            return "0";
        };
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_x.value._exp <= ((0 : GoInt))) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((((2 : GoInt)) + (-_x.value._exp) + _x.value._mant.length : GoInt)).toBasic());
            _buf = _buf.__append__(...(("0." : GoString)).toArray());
            _buf = _appendZeros(_buf, -_x.value._exp);
            _buf = _buf.__append__(..._x.value._mant.toArray());
        } else if (_x.value._exp < _x.value._mant.length) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((((1 : GoInt)) + _x.value._mant.length : GoInt)).toBasic());
            _buf = _buf.__append__(..._x.value._mant.__slice__(0, _x.value._exp).toArray());
            _buf = _buf.__append__(((".".code : GoRune)));
            _buf = _buf.__append__(..._x.value._mant.__slice__(_x.value._exp).toArray());
        } else {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_x.value._exp : GoInt)).toBasic());
            _buf = _buf.__append__(..._x.value._mant.toArray());
            _buf = _appendZeros(_buf, _x.value._exp - _x.value._mant.length);
        };
        return ((_buf : GoString));
    }
    public function _init(_m:T_nat, _shift:GoInt):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.__t__.length == ((0 : GoInt))) {
            _x.value._mant = _x.value._mant.__slice__(0, ((0 : GoInt)));
            _x.value._exp = ((0 : GoInt));
            return;
        };
        if (_shift < ((0 : GoInt))) {
            var _ntz:GoUInt = _m._trailingZeroBits();
            var _s:GoUInt = ((-_shift : GoUInt));
            if (_s >= _ntz) {
                _s = _ntz;
            };
            _m = ((new T_nat() : T_nat))._shr(_m.__copy__(), _s).__copy__();
            _shift = _shift + (((_s : GoInt)));
        };
        if (_shift > ((0 : GoInt))) {
            _m = ((new T_nat() : T_nat))._shl(_m.__copy__(), ((_shift : GoUInt))).__copy__();
            _shift = ((0 : GoInt));
        };
        var _s:Slice<GoUInt8> = _m._utoa(((10 : GoInt)));
        var _n:GoInt = _s.length;
        _x.value._exp = _n;
        while (_n > ((0 : GoInt)) && _s[_n - ((1 : GoInt))] == (("0".code : GoRune))) {
            _n--;
        };
        _x.value._mant = _x.value._mant.__slice__(0, ((0 : GoInt))).__append__(..._s.__slice__(0, _n).toArray());
        if (_shift < ((0 : GoInt))) {
            while (_shift < -_maxShift) {
                _shr(_x, _maxShift);
                _shift = _shift + (_maxShift);
            };
            _shr(_x, ((-_shift : GoUInt)));
        };
    }
    public function _at(_i:GoInt):GoByte {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (((0 : GoInt)) <= _i && _i < _d.value._mant.length) {
            return _d.value._mant[_i];
        };
        return (("0".code : GoRune));
    }
    public var _mant : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _exp : GoInt = ((0 : GoInt));
    public function new(?_mant:Slice<GoUInt8>, ?_exp:GoInt) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decimal(_mant, _exp);
    }
    public function __set__(__tmp__) {
        this._mant = __tmp__._mant;
        this._exp = __tmp__._exp;
        return this;
    }
}
@:structInit class Float_ {
    public function _sqrtInverse(_x:Pointer<Float_>):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _u:Pointer<Float_> = _newFloat(_z.value._prec);
        var _v:Pointer<Float_> = _newFloat(_z.value._prec);
        var _three:Pointer<Float_> = _three();
        var _ng:Pointer<Float_> -> Pointer<Float_> = function(_t:Pointer<Float_>):Pointer<Float_> {
            _u.value._prec = _t.value._prec;
            _v.value._prec = _t.value._prec;
            _u.value.mul(_t, _t);
            _u.value.mul(_x, _u);
            _v.value.sub(_three, _u);
            _u.value.mul(_t, _v);
            _u.value._exp--;
            return _t.value.set(_u);
        };
        var __tmp__ = _x.value.float64(), _xf:GoFloat64 = __tmp__._0, _:Accuracy = __tmp__._1;
        var _sqi:Pointer<Float_> = _newFloat(_z.value._prec);
        _sqi.value.setFloat64(((1 : GoFloat64)) / stdgo.math.Math.sqrt(_xf));
        {
            var _prec:GoUInt32 = _z.value._prec + ((32 : GoUInt32));
            while (_sqi.value._prec < _prec) {
                _sqi.value._prec = _sqi.value._prec * (((2 : GoUInt32)));
                _sqi = _ng(_sqi);
            };
        };
        _z.value.mul(_x, _sqi);
    }
    public function sqrt(_x:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = _x.value._prec;
        };
        if (_x.value.sign() == -((1 : GoUnTypedInt))) {
            throw new ErrNaN("square root of negative operand");
        };
        if (_x.value._form.__t__ != _finite.__t__) {
            _z.value._acc = exact;
            _z.value._form = _x.value._form;
            _z.value._neg = _x.value._neg;
            return _z;
        };
        var _prec:GoUInt32 = _z.value._prec;
        var _b:GoInt = _x.value.mantExp(_z);
        _z.value._prec = _prec;
        if (_b % ((2 : GoInt)) == ((0 : GoInt))) {} else if (_b % ((2 : GoInt)) == ((1 : GoInt))) {
            _z.value._exp++;
        } else if (_b % ((2 : GoInt)) == -((1 : GoUnTypedInt))) {
            _z.value._exp--;
        };
        _z.value._sqrtInverse(_z);
        return _z.value.setMantExp(_z, _b / ((2 : GoInt)));
    }
    public function format(_s:stdgo.fmt.Fmt.State, _format:GoRune):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _s.precision(), _prec:GoInt = __tmp__._0, _hasPrec:Bool = __tmp__._1;
        if (!_hasPrec) {
            _prec = ((6 : GoInt));
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _format == (("e".code : GoRune)) || _format == (("E".code : GoRune)) || _format == (("f".code : GoRune)) || _format == (("b".code : GoRune)) || _format == (("p".code : GoRune)) || _format == (("x".code : GoRune)))) {
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _format == (("F".code : GoRune)))) {
                    _format = (("f".code : GoRune));
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _format == (("v".code : GoRune)))) {
                    _format = (("g".code : GoRune));
                    @:fallthrough {
                        __switchIndex__ = 3;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _format == (("g".code : GoRune)) || _format == (("G".code : GoRune)))) {
                    if (!_hasPrec) {
                        _prec = -((1 : GoUnTypedInt));
                    };
                    break;
                    break;
                } else {
                    stdgo.fmt.Fmt.fprintf(_s, "%%!%c(*big.Float=%s)", Go.toInterface(_format), Go.toInterface(_x.value.toString()));
                    return;
                    break;
                };
                break;
            };
        };
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        _buf = _x.value.append(_buf, ((_format : GoByte)), _prec);
        if (_buf.length == ((0 : GoInt))) {
            _buf = (("?" : Slice<GoByte>));
        };
        var _sign:GoString = (("" : GoString));
        if (_buf[((0 : GoInt))] == (("-".code : GoRune))) {
            _sign = "-";
            _buf = _buf.__slice__(((1 : GoInt)));
        } else if (_buf[((0 : GoInt))] == (("+".code : GoRune))) {
            _sign = "+";
            if (_s.flag(((" ".code : GoRune)))) {
                _sign = " ";
            };
            _buf = _buf.__slice__(((1 : GoInt)));
        } else if (_s.flag((("+".code : GoRune)))) {
            _sign = "+";
        } else if (_s.flag(((" ".code : GoRune)))) {
            _sign = " ";
        };
        var _padding:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _s.width(), _width:GoInt = __tmp__._0, _hasWidth:Bool = __tmp__._1;
            if (_hasWidth && _width > _sign.length + _buf.length) {
                _padding = _width - _sign.length - _buf.length;
            };
        };
        if (_s.flag((("0".code : GoRune))) && !_x.value.isInf()) {
            _writeMultiple(_s, _sign, ((1 : GoInt)));
            _writeMultiple(_s, "0", _padding);
            _s.write(_buf);
        } else if (_s.flag((("-".code : GoRune)))) {
            _writeMultiple(_s, _sign, ((1 : GoInt)));
            _s.write(_buf);
            _writeMultiple(_s, " ", _padding);
        } else {
            _writeMultiple(_s, " ", _padding);
            _writeMultiple(_s, _sign, ((1 : GoInt)));
            _s.write(_buf);
        };
    }
    public function _fmtP(_buf:Slice<GoByte>):Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._form.__t__ == _zero.__t__) {
            return _buf.__append__((("0".code : GoRune)));
        };
        if (_debugFloat && _x.value._form.__t__ != _finite.__t__) {
            throw "non-finite float";
        };
        var _m:T_nat = _x.value._mant.__copy__();
        var _i:GoInt = ((0 : GoInt));
        while (_i < _m.__t__.length && _m.__t__[_i].__t__ == ((0 : GoUInt))) {
            _i++;
        };
        _m = _m.__slice__(_i).__copy__();
        _buf = _buf.__append__(...(("0x." : GoString)).toArray());
        _buf = _buf.__append__(...stdgo.bytes.Bytes.trimRight(_m._utoa(((16 : GoInt))), "0").toArray());
        _buf = _buf.__append__((("p".code : GoRune)));
        if (_x.value._exp >= ((0 : GoInt32))) {
            _buf = _buf.__append__((("+".code : GoRune)));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, ((_x.value._exp : GoInt64)), ((10 : GoInt)));
    }
    public function _fmtX(_buf:Slice<GoByte>, _prec:GoInt):Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._form.__t__ == _zero.__t__) {
            _buf = _buf.__append__(...(("0x0" : GoString)).toArray());
            if (_prec > ((0 : GoInt))) {
                _buf = _buf.__append__(((".".code : GoRune)));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _prec, _i++, {
                        _buf = _buf.__append__((("0".code : GoRune)));
                    });
                };
            };
            _buf = _buf.__append__(...(("p+00" : GoString)).toArray());
            return _buf;
        };
        if (_debugFloat && _x.value._form.__t__ != _finite.__t__) {
            throw "non-finite float";
        };
        var _n:GoUInt = ((0 : GoUInt));
        if (_prec < ((0 : GoInt))) {
            _n = ((1 : GoUInt)) + (_x.value.minPrec() - ((1 : GoUInt)) + ((3 : GoUInt))) / ((4 : GoUInt)) * ((4 : GoUInt));
        } else {
            _n = ((1 : GoUInt)) + ((4 : GoUInt)) * ((_prec : GoUInt));
        };
        _x = Go.pointer(new Float_()).value.setPrec(_n).value.setMode(_x.value._mode).value.set(_x);
        var _m:T_nat = _x.value._mant.__copy__();
        {
            var _w:GoUInt = ((_x.value._mant.__t__.length : GoUInt)) * __W;
            if (_w < _n) {
                _m = ((new T_nat() : T_nat))._shl(_m.__copy__(), _n - _w).__copy__();
            } else if (_w > _n) {
                _m = ((new T_nat() : T_nat))._shr(_m.__copy__(), _w - _n).__copy__();
            };
        };
        var _exp64:GoInt64 = ((_x.value._exp : GoInt64)) - ((1 : GoInt64));
        var _hm:Slice<GoUInt8> = _m._utoa(((16 : GoInt)));
        if (_debugFloat && _hm[((0 : GoInt))] != (("1".code : GoRune))) {
            throw (("incorrect mantissa: " : GoString)) + ((_hm : GoString));
        };
        _buf = _buf.__append__(...(("0x1" : GoString)).toArray());
        if (_hm.length > ((1 : GoInt))) {
            _buf = _buf.__append__(((".".code : GoRune)));
            _buf = _buf.__append__(..._hm.__slice__(((1 : GoInt))).toArray());
        };
        _buf = _buf.__append__((("p".code : GoRune)));
        if (_exp64 >= ((0 : GoInt64))) {
            _buf = _buf.__append__((("+".code : GoRune)));
        } else {
            _exp64 = -_exp64;
            _buf = _buf.__append__((("-".code : GoRune)));
        };
        if (_exp64 < ((10 : GoInt64))) {
            _buf = _buf.__append__((("0".code : GoRune)));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, _exp64, ((10 : GoInt)));
    }
    public function _fmtB(_buf:Slice<GoByte>):Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._form.__t__ == _zero.__t__) {
            return _buf.__append__((("0".code : GoRune)));
        };
        if (_debugFloat && _x.value._form.__t__ != _finite.__t__) {
            throw "non-finite float";
        };
        var _m:T_nat = _x.value._mant.__copy__();
        {
            var _w:GoUInt32 = ((_x.value._mant.__t__.length : GoUInt32)) * __W;
            if (_w < _x.value._prec) {
                _m = ((new T_nat() : T_nat))._shl(_m.__copy__(), (((_x.value._prec - _w) : GoUInt))).__copy__();
            } else if (_w > _x.value._prec) {
                _m = ((new T_nat() : T_nat))._shr(_m.__copy__(), (((_w - _x.value._prec) : GoUInt))).__copy__();
            };
        };
        _buf = _buf.__append__(..._m._utoa(((10 : GoInt))).toArray());
        _buf = _buf.__append__((("p".code : GoRune)));
        var _e:GoInt64 = ((_x.value._exp : GoInt64)) - ((_x.value._prec : GoInt64));
        if (_e >= ((0 : GoInt64))) {
            _buf = _buf.__append__((("+".code : GoRune)));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, _e, ((10 : GoInt)));
    }
    public function append(_buf:Slice<GoByte>, _fmt:GoByte, _prec:GoInt):Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg) {
            _buf = _buf.__append__((("-".code : GoRune)));
        };
        if (_x.value._form.__t__ == _inf.__t__) {
            if (!_x.value._neg) {
                _buf = _buf.__append__((("+".code : GoRune)));
            };
            return _buf.__append__(...(("Inf" : GoString)).toArray());
        };
        if (_fmt == (("b".code : GoRune))) {
            return _x.value._fmtB(_buf);
        } else if (_fmt == (("p".code : GoRune))) {
            return _x.value._fmtP(_buf);
        } else if (_fmt == (("x".code : GoRune))) {
            return _x.value._fmtX(_buf, _prec);
        };
        var _d:T_decimal = new T_decimal();
        if (_x.value._form.__t__ == _finite.__t__) {
            _d._init(_x.value._mant.__copy__(), ((_x.value._exp : GoInt)) - _x.value._mant._bitLen());
        };
        var _shortest:Bool = false;
        if (_prec < ((0 : GoInt))) {
            _shortest = true;
            _roundShortest(Go.pointer(_d), _x);
            if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
                _prec = _d._mant.length - ((1 : GoInt));
            } else if (_fmt == (("f".code : GoRune))) {
                _prec = _max(_d._mant.length - _d._exp, ((0 : GoInt)));
            } else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
                _prec = _d._mant.length;
            };
        } else {
            if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
                _d._round(((1 : GoInt)) + _prec);
            } else if (_fmt == (("f".code : GoRune))) {
                _d._round(_d._exp + _prec);
            } else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
                if (_prec == ((0 : GoInt))) {
                    _prec = ((1 : GoInt));
                };
                _d._round(_prec);
            };
        };
        if (_fmt == (("e".code : GoRune)) || _fmt == (("E".code : GoRune))) {
            return _fmtE(_buf, _fmt, _prec, _d.__copy__());
        } else if (_fmt == (("f".code : GoRune))) {
            return _fmtF(_buf, _prec, _d.__copy__());
        } else if (_fmt == (("g".code : GoRune)) || _fmt == (("G".code : GoRune))) {
            var _eprec:GoInt = _prec;
            if (_eprec > _d._mant.length && _d._mant.length >= _d._exp) {
                _eprec = _d._mant.length;
            };
            if (_shortest) {
                _eprec = ((6 : GoInt));
            };
            var _exp:GoInt = _d._exp - ((1 : GoInt));
            if (_exp < -((4 : GoUnTypedInt)) || _exp >= _eprec) {
                if (_prec > _d._mant.length) {
                    _prec = _d._mant.length;
                };
                return _fmtE(_buf, _fmt + (("e".code : GoRune)) - (("g".code : GoRune)), _prec - ((1 : GoInt)), _d.__copy__());
            };
            if (_prec > _d._exp) {
                _prec = _d._mant.length;
            };
            return _fmtF(_buf, _max(_prec - _d._exp, ((0 : GoInt))), _d.__copy__());
        };
        if (_x.value._neg) {
            _buf = _buf.__slice__(0, _buf.length - ((1 : GoInt)));
        };
        return _buf.__append__((("%".code : GoRune)), _fmt);
    }
    public function toString():GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value.text((("g".code : GoRune)), ((10 : GoInt)));
    }
    public function text(_format:GoByte, _prec:GoInt):GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _cap:GoInt = ((10 : GoInt));
        if (_prec > ((0 : GoInt))) {
            _cap = _cap + (_prec);
        };
        return ((_x.value.append(new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_cap : GoInt)).toBasic()), _format, _prec) : GoString));
    }
    public function unmarshalText(_text:Slice<GoByte>):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _z.value.parse(((_text : GoString)), ((0 : GoInt))), _:Pointer<Float_> = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _err = stdgo.fmt.Fmt.errorf("math/big: cannot unmarshal %q into a *big.Float (%v)", Go.toInterface(_text), Go.toInterface(_err));
        };
        return _err;
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _text:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_x == null || _x.isNil()) {
            return { _0 : (("<nil>" : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        return { _0 : _x.value.append(_buf, (("g".code : GoRune)), -((1 : GoUnTypedInt))), _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_buf:Slice<GoByte>):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_buf.length == ((0 : GoInt))) {
            _z.value = new Float_().__copy__();
            return ((null : stdgo.Error));
        };
        if (_buf[((0 : GoInt))] != _floatGobVersion) {
            return stdgo.fmt.Fmt.errorf("Float.GobDecode: encoding version %d not supported", Go.toInterface(_buf[((0 : GoInt))]));
        };
        var _oldPrec:GoUInt32 = _z.value._prec;
        var _oldMode:RoundingMode = _z.value._mode;
        var _b:GoUInt8 = _buf[((1 : GoInt))];
        _z.value._mode = new RoundingMode((((_b >> ((5 : GoUnTypedInt)))) & ((7 : GoUInt8))));
        _z.value._acc = new Accuracy(new Accuracy((((_b >> ((3 : GoUnTypedInt)))) & ((3 : GoUInt8)))).__t__ - ((1 : GoInt8)));
        _z.value._form = new T_form((((_b >> ((1 : GoUnTypedInt)))) & ((3 : GoUInt8))));
        _z.value._neg = _b & ((1 : GoUInt8)) != ((0 : GoUInt8));
        _z.value._prec = stdgo.encoding.binary.Binary.bigEndian.uint32(_buf.__slice__(((2 : GoInt))));
        if (_z.value._form.__t__ == _finite.__t__) {
            _z.value._exp = ((stdgo.encoding.binary.Binary.bigEndian.uint32(_buf.__slice__(((6 : GoInt)))) : GoInt32));
            _z.value._mant = _z.value._mant._setBytes(_buf.__slice__(((10 : GoInt)))).__copy__();
        };
        if (_oldPrec != ((0 : GoUInt32))) {
            _z.value._mode = _oldMode;
            _z.value.setPrec(((_oldPrec : GoUInt)));
        };
        return ((null : stdgo.Error));
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == null || _x.isNil()) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var _sz:GoInt = ((1 : GoUnTypedInt)) + ((1 : GoUnTypedInt)) + ((4 : GoUnTypedInt));
        var _n:GoInt = ((0 : GoInt));
        if (_x.value._form.__t__ == _finite.__t__) {
            _n = ((((_x.value._prec + (__W - ((1 : GoUnTypedInt)))) / __W) : GoInt));
            if (_x.value._mant.__t__.length < _n) {
                _n = _x.value._mant.__t__.length;
            };
            _sz = _sz + (((4 : GoInt)) + _n * __S);
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_sz : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _buf[((0 : GoInt))] = _floatGobVersion;
        var _b:GoUInt8 = (new RoundingMode(_x.value._mode.__t__ & ((7 : GoUInt8))).__t__ << ((5 : GoUnTypedInt))) | (new Accuracy((new Accuracy(_x.value._acc.__t__ + ((1 : GoInt8)))).__t__ & ((3 : GoInt8))).__t__ << ((3 : GoUnTypedInt))) | (new T_form(_x.value._form.__t__ & ((3 : GoUInt8))).__t__ << ((1 : GoUnTypedInt)));
        if (_x.value._neg) {
            _b = _b | (((1 : GoUInt8)));
        };
        _buf[((1 : GoInt))] = _b;
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_buf.__slice__(((2 : GoInt))), _x.value._prec);
        if (_x.value._form.__t__ == _finite.__t__) {
            stdgo.encoding.binary.Binary.bigEndian.putUint32(_buf.__slice__(((6 : GoInt))), ((_x.value._exp : GoUInt32)));
            _x.value._mant.__slice__(_x.value._mant.__t__.length - _n)._bytes(_buf.__slice__(((10 : GoInt))));
        };
        return { _0 : _buf, _1 : ((null : stdgo.Error)) };
    }
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _s.skipSpace();
        var __tmp__ = _z.value._scan(new T_byteReader(_s).__copy__(), ((0 : GoInt))), _:Pointer<Float_> = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    public function parse(_s:GoString, _base:GoInt):{ var _0 : Pointer<Float_>; var _1 : GoInt; var _2 : Error; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _f:Pointer<Float_> = new Pointer<Float_>().nil(), _b:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_s.length == ((3 : GoInt)) && (_s == (("Inf" : GoString)) || _s == (("inf" : GoString)))) {
            _f = _z.value.setInf(false);
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if (_s.length == ((4 : GoInt)) && (_s[((0 : GoInt))] == (("+".code : GoRune)) || _s[((0 : GoInt))] == (("-".code : GoRune))) && (_s.__slice__(((1 : GoInt))) == (("Inf" : GoString)) || _s.__slice__(((1 : GoInt))) == (("inf" : GoString)))) {
            _f = _z.value.setInf(_s[((0 : GoInt))] == (("-".code : GoRune)));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _r:Pointer<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_s);
        {
            {
                var __tmp__ = _z.value._scan(_r.value, _base);
                _f = __tmp__._0;
                _b = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _f, _1 : _b, _2 : _err };
            };
        };
        {
            var __tmp__ = _r.value.readByte(), _ch:GoUInt8 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 == null) {
                _err = stdgo.fmt.Fmt.errorf("expected end of string, found %q", Go.toInterface(_ch));
            } else if (Go.toInterface(_err2) != Go.toInterface(stdgo.io.Io.eof)) {
                _err = _err2;
            };
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    public function _pow5(_n:GoUInt64):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _m:GoUInt64 = (((_pow5tab.length - ((1 : GoInt))) : GoUInt64));
        if (_n <= _m) {
            return _z.value.setUint64(_pow5tab[_n]);
        };
        _z.value.setUint64(_pow5tab[_m]);
        _n = _n - (_m);
        var _f:Pointer<Float_> = Go.pointer(new Float_()).value.setPrec(_z.value.prec() + ((64 : GoUInt))).value.setUint64(((5 : GoUInt64)));
        while (_n > ((0 : GoUInt64))) {
            if (_n & ((1 : GoUInt64)) != ((0 : GoUInt64))) {
                _z.value.mul(_z, _f);
            };
            _f.value.mul(_f, _f);
            _n = (_n >> (((1 : GoUnTypedInt))));
        };
        return _z;
    }
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Pointer<Float_>; var _1 : GoInt; var _2 : Error; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _f:Pointer<Float_> = new Pointer<Float_>().nil(), _b:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _prec:GoUInt32 = _z.value._prec;
        if (_prec == ((0 : GoUInt32))) {
            _prec = ((64 : GoUInt32));
        };
        _z.value._form = _zero;
        {
            var __tmp__ = _scanSign(_r);
            _z.value._neg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _fcount:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _z.value._mant._scan(_r, _base, true);
            _z.value._mant = __tmp__._0.__copy__();
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
        if (_z.value._mant.__t__.length == ((0 : GoInt))) {
            _z.value._prec = _prec;
            _z.value._acc = exact;
            _z.value._form = _zero;
            _f = _z;
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp2:GoInt64 = ((_z.value._mant.__t__.length : GoInt64)) * __W - _fnorm(_z.value._mant.__copy__());
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
                        throw "unexpected mantissa base";
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
                    throw "unexpected exponent base";
                    break;
                };
                break;
            };
        };
        if (minExp <= _exp2 && _exp2 <= maxExp) {
            _z.value._prec = _prec;
            _z.value._form = _finite;
            _z.value._exp = ((_exp2 : GoInt32));
            _f = _z;
        } else {
            _err = stdgo.fmt.Fmt.errorf("exponent overflow");
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if (_exp5 == ((0 : GoInt64))) {
            _z.value._round(((0 : GoUInt)));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _p:Pointer<Float_> = Go.pointer(new Float_()).value.setPrec(_z.value.prec() + ((64 : GoUInt)));
        if (_exp5 < ((0 : GoInt64))) {
            _z.value.quo(_z, _p.value._pow5(((-_exp5 : GoUInt64))));
        } else {
            _z.value.mul(_z, _p.value._pow5(((_exp5 : GoUInt64))));
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    public function setString(_s:GoString):{ var _0 : Pointer<Float_>; var _1 : Bool; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _z.value.parse(_s, ((0 : GoInt))), _f:Pointer<Float_> = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                return { _0 : _f, _1 : true };
            };
        };
        return { _0 : new Pointer<Float_>().nil(), _1 : false };
    }
    public function _ord():GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _m:GoInt = ((0 : GoInt));
        if (_x.value._form.__t__ == _finite.__t__) {
            _m = ((1 : GoInt));
        } else if (_x.value._form.__t__ == _zero.__t__) {
            return ((0 : GoInt));
        } else if (_x.value._form.__t__ == _inf.__t__) {
            _m = ((2 : GoInt));
        };
        if (_x.value._neg) {
            _m = -_m;
        };
        return _m;
    }
    public function cmp(_y:Pointer<Float_>):GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
            _y.value._validate();
        };
        var _mx:GoInt = _x.value._ord();
        var _my:GoInt = _y.value._ord();
        if (_mx < _my) {
            return -((1 : GoUnTypedInt));
        } else if (_mx > _my) {
            return ((1 : GoUnTypedInt));
        };
        if (_mx == -((1 : GoUnTypedInt))) {
            return _y.value._ucmp(_x);
        } else if (_mx == ((1 : GoUnTypedInt))) {
            return _x.value._ucmp(_y);
        };
        return ((0 : GoInt));
    }
    public function quo(_x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
            _y.value._validate();
        };
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = _umax32(_x.value._prec, _y.value._prec);
        };
        _z.value._neg = _x.value._neg != _y.value._neg;
        if (_x.value._form.__t__ == _finite.__t__ && _y.value._form.__t__ == _finite.__t__) {
            _z.value._uquo(_x, _y);
            return _z;
        };
        _z.value._acc = exact;
        if (_x.value._form.__t__ == _zero.__t__ && _y.value._form.__t__ == _zero.__t__ || _x.value._form.__t__ == _inf.__t__ && _y.value._form.__t__ == _inf.__t__) {
            _z.value._form = _zero;
            _z.value._neg = false;
            throw new ErrNaN("division of zero by zero or infinity by infinity");
        };
        if (_x.value._form.__t__ == _zero.__t__ || _y.value._form.__t__ == _inf.__t__) {
            _z.value._form = _zero;
            return _z;
        };
        _z.value._form = _inf;
        return _z;
    }
    public function mul(_x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
            _y.value._validate();
        };
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = _umax32(_x.value._prec, _y.value._prec);
        };
        _z.value._neg = _x.value._neg != _y.value._neg;
        if (_x.value._form.__t__ == _finite.__t__ && _y.value._form.__t__ == _finite.__t__) {
            _z.value._umul(_x, _y);
            return _z;
        };
        _z.value._acc = exact;
        if (_x.value._form.__t__ == _zero.__t__ && _y.value._form.__t__ == _inf.__t__ || _x.value._form.__t__ == _inf.__t__ && _y.value._form.__t__ == _zero.__t__) {
            _z.value._form = _zero;
            _z.value._neg = false;
            throw new ErrNaN("multiplication of zero with infinity");
        };
        if (_x.value._form.__t__ == _inf.__t__ || _y.value._form.__t__ == _inf.__t__) {
            _z.value._form = _inf;
            return _z;
        };
        _z.value._form = _zero;
        return _z;
    }
    public function sub(_x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
            _y.value._validate();
        };
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = _umax32(_x.value._prec, _y.value._prec);
        };
        if (_x.value._form.__t__ == _finite.__t__ && _y.value._form.__t__ == _finite.__t__) {
            var _yneg:Bool = _y.value._neg;
            _z.value._neg = _x.value._neg;
            if (_x.value._neg != _yneg) {
                _z.value._uadd(_x, _y);
            } else {
                if (_x.value._ucmp(_y) > ((0 : GoInt))) {
                    _z.value._usub(_x, _y);
                } else {
                    _z.value._neg = !_z.value._neg;
                    _z.value._usub(_y, _x);
                };
            };
            if (_z.value._form.__t__ == _zero.__t__ && _z.value._mode.__t__ == toNegativeInf.__t__ && _z.value._acc.__t__ == exact.__t__) {
                _z.value._neg = true;
            };
            return _z;
        };
        if (_x.value._form.__t__ == _inf.__t__ && _y.value._form.__t__ == _inf.__t__ && _x.value._neg == _y.value._neg) {
            _z.value._acc = exact;
            _z.value._form = _zero;
            _z.value._neg = false;
            throw new ErrNaN("subtraction of infinities with equal signs");
        };
        if (_x.value._form.__t__ == _zero.__t__ && _y.value._form.__t__ == _zero.__t__) {
            _z.value._acc = exact;
            _z.value._form = _zero;
            _z.value._neg = _x.value._neg && !_y.value._neg;
            return _z;
        };
        if (_x.value._form.__t__ == _inf.__t__ || _y.value._form.__t__ == _zero.__t__) {
            return _z.value.set(_x);
        };
        return _z.value.neg(_y);
    }
    public function add(_x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
            _y.value._validate();
        };
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = _umax32(_x.value._prec, _y.value._prec);
        };
        if (_x.value._form.__t__ == _finite.__t__ && _y.value._form.__t__ == _finite.__t__) {
            var _yneg:Bool = _y.value._neg;
            _z.value._neg = _x.value._neg;
            if (_x.value._neg == _yneg) {
                _z.value._uadd(_x, _y);
            } else {
                if (_x.value._ucmp(_y) > ((0 : GoInt))) {
                    _z.value._usub(_x, _y);
                } else {
                    _z.value._neg = !_z.value._neg;
                    _z.value._usub(_y, _x);
                };
            };
            if (_z.value._form.__t__ == _zero.__t__ && _z.value._mode.__t__ == toNegativeInf.__t__ && _z.value._acc.__t__ == exact.__t__) {
                _z.value._neg = true;
            };
            return _z;
        };
        if (_x.value._form.__t__ == _inf.__t__ && _y.value._form.__t__ == _inf.__t__ && _x.value._neg != _y.value._neg) {
            _z.value._acc = exact;
            _z.value._form = _zero;
            _z.value._neg = false;
            throw new ErrNaN("addition of infinities with opposite signs");
        };
        if (_x.value._form.__t__ == _zero.__t__ && _y.value._form.__t__ == _zero.__t__) {
            _z.value._acc = exact;
            _z.value._form = _zero;
            _z.value._neg = _x.value._neg && _y.value._neg;
            return _z;
        };
        if (_x.value._form.__t__ == _inf.__t__ || _y.value._form.__t__ == _zero.__t__) {
            return _z.value.set(_x);
        };
        return _z.value.set(_y);
    }
    public function _ucmp(_y:Pointer<Float_>):GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _validateBinaryOperands(_x, _y);
        };
        if (_x.value._exp < _y.value._exp) {
            return -((1 : GoUnTypedInt));
        } else if (_x.value._exp > _y.value._exp) {
            return ((1 : GoUnTypedInt));
        };
        var _i:GoInt = _x.value._mant.__t__.length;
        var _j:GoInt = _y.value._mant.__t__.length;
        while (_i > ((0 : GoInt)) || _j > ((0 : GoInt))) {
            var _xm:Word = new Word(), _ym:Word = new Word();
            if (_i > ((0 : GoInt))) {
                _i--;
                _xm = _x.value._mant.__t__[_i];
            };
            if (_j > ((0 : GoInt))) {
                _j--;
                _ym = _y.value._mant.__t__[_j];
            };
            if (_xm.__t__ < _ym.__t__) {
                return -((1 : GoUnTypedInt));
            } else if (_xm.__t__ > _ym.__t__) {
                return ((1 : GoUnTypedInt));
            };
        };
        return ((0 : GoInt));
    }
    public function _uquo(_x:Pointer<Float_>, _y:Pointer<Float_>):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _validateBinaryOperands(_x, _y);
        };
        var _n:GoInt = (((_z.value._prec / __W) : GoInt)) + ((1 : GoInt));
        var _xadj:T_nat = _x.value._mant.__copy__();
        {
            var _d:GoInt = _n - _x.value._mant.__t__.length + _y.value._mant.__t__.length;
            if (_d > ((0 : GoInt))) {
                _xadj = new T_nat(new Slice<Word>(...[for (i in 0 ... ((_x.value._mant.__t__.length + _d : GoInt)).toBasic()) new Word()])).__copy__();
                Go.copy(_xadj.__slice__(_d), _x.value._mant);
            };
        };
        var _d:GoInt = _xadj.__t__.length - _y.value._mant.__t__.length;
        var _r:T_nat = new T_nat();
        {
            var __tmp__ = _z.value._mant._div(new T_nat(), _xadj.__copy__(), _y.value._mant.__copy__());
            _z.value._mant = __tmp__._0.__copy__();
            _r = __tmp__._1.__copy__();
        };
        var _e:GoInt64 = ((_x.value._exp : GoInt64)) - ((_y.value._exp : GoInt64)) - (((_d - _z.value._mant.__t__.length) : GoInt64)) * __W;
        var _sbit:GoUInt = ((0 : GoUInt));
        if (_r.__t__.length > ((0 : GoInt))) {
            _sbit = ((1 : GoUInt));
        };
        _z.value._setExpAndRound(_e - _fnorm(_z.value._mant.__copy__()), _sbit);
    }
    public function _umul(_x:Pointer<Float_>, _y:Pointer<Float_>):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _validateBinaryOperands(_x, _y);
        };
        var _e:GoInt64 = ((_x.value._exp : GoInt64)) + ((_y.value._exp : GoInt64));
        if (_x == _y) {
            _z.value._mant = _z.value._mant._sqr(_x.value._mant.__copy__()).__copy__();
        } else {
            _z.value._mant = _z.value._mant._mul(_x.value._mant.__copy__(), _y.value._mant.__copy__()).__copy__();
        };
        _z.value._setExpAndRound(_e - _fnorm(_z.value._mant.__copy__()), ((0 : GoUInt)));
    }
    public function _usub(_x:Pointer<Float_>, _y:Pointer<Float_>):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _validateBinaryOperands(_x, _y);
        };
        var _ex:GoInt64 = ((_x.value._exp : GoInt64)) - ((_x.value._mant.__t__.length : GoInt64)) * __W;
        var _ey:GoInt64 = ((_y.value._exp : GoInt64)) - ((_y.value._mant.__t__.length : GoInt64)) * __W;
        var _al:Bool = _alias(_z.value._mant.__copy__(), _x.value._mant.__copy__()) || _alias(_z.value._mant.__copy__(), _y.value._mant.__copy__());
        if (_ex < _ey) {
            if (_al) {
                var _t:T_nat = ((new T_nat() : T_nat))._shl(_y.value._mant.__copy__(), (((_ey - _ex) : GoUInt))).__copy__();
                _z.value._mant = _t._sub(_x.value._mant.__copy__(), _t.__copy__()).__copy__();
            } else {
                _z.value._mant = _z.value._mant._shl(_y.value._mant.__copy__(), (((_ey - _ex) : GoUInt))).__copy__();
                _z.value._mant = _z.value._mant._sub(_x.value._mant.__copy__(), _z.value._mant.__copy__()).__copy__();
            };
        } else if (_ex > _ey) {
            if (_al) {
                var _t:T_nat = ((new T_nat() : T_nat))._shl(_x.value._mant.__copy__(), (((_ex - _ey) : GoUInt))).__copy__();
                _z.value._mant = _t._sub(_t.__copy__(), _y.value._mant.__copy__()).__copy__();
            } else {
                _z.value._mant = _z.value._mant._shl(_x.value._mant.__copy__(), (((_ex - _ey) : GoUInt))).__copy__();
                _z.value._mant = _z.value._mant._sub(_z.value._mant.__copy__(), _y.value._mant.__copy__()).__copy__();
            };
            _ex = _ey;
        };
        if (_z.value._mant.__t__.length == ((0 : GoInt))) {
            _z.value._acc = exact;
            _z.value._form = _zero;
            _z.value._neg = false;
            return;
        };
        _z.value._setExpAndRound(_ex + ((_z.value._mant.__t__.length : GoInt64)) * __W - _fnorm(_z.value._mant.__copy__()), ((0 : GoUInt)));
    }
    public function _uadd(_x:Pointer<Float_>, _y:Pointer<Float_>):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _validateBinaryOperands(_x, _y);
        };
        var _ex:GoInt64 = ((_x.value._exp : GoInt64)) - ((_x.value._mant.__t__.length : GoInt64)) * __W;
        var _ey:GoInt64 = ((_y.value._exp : GoInt64)) - ((_y.value._mant.__t__.length : GoInt64)) * __W;
        var _al:Bool = _alias(_z.value._mant.__copy__(), _x.value._mant.__copy__()) || _alias(_z.value._mant.__copy__(), _y.value._mant.__copy__());
        if (_ex < _ey) {
            if (_al) {
                var _t:T_nat = ((new T_nat() : T_nat))._shl(_y.value._mant.__copy__(), (((_ey - _ex) : GoUInt))).__copy__();
                _z.value._mant = _z.value._mant._add(_x.value._mant.__copy__(), _t.__copy__()).__copy__();
            } else {
                _z.value._mant = _z.value._mant._shl(_y.value._mant.__copy__(), (((_ey - _ex) : GoUInt))).__copy__();
                _z.value._mant = _z.value._mant._add(_x.value._mant.__copy__(), _z.value._mant.__copy__()).__copy__();
            };
        } else if (_ex > _ey) {
            if (_al) {
                var _t:T_nat = ((new T_nat() : T_nat))._shl(_x.value._mant.__copy__(), (((_ex - _ey) : GoUInt))).__copy__();
                _z.value._mant = _z.value._mant._add(_t.__copy__(), _y.value._mant.__copy__()).__copy__();
            } else {
                _z.value._mant = _z.value._mant._shl(_x.value._mant.__copy__(), (((_ex - _ey) : GoUInt))).__copy__();
                _z.value._mant = _z.value._mant._add(_z.value._mant.__copy__(), _y.value._mant.__copy__()).__copy__();
            };
            _ex = _ey;
        };
        _z.value._setExpAndRound(_ex + ((_z.value._mant.__t__.length : GoInt64)) * __W - _fnorm(_z.value._mant.__copy__()), ((0 : GoUInt)));
    }
    public function neg(_x:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value.set(_x);
        _z.value._neg = !_z.value._neg;
        return _z;
    }
    public function abs(_x:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value.set(_x);
        _z.value._neg = false;
        return _z;
    }
    public function rat(_z:Pointer<Rat>):{ var _0 : Pointer<Rat>; var _1 : Accuracy; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_z == null || _z.isNil() && _x.value._form.__t__ <= _finite.__t__) {
            _z = Go.pointer(new Rat());
        };
        if (_x.value._form.__t__ == _finite.__t__) {
            var _allBits:GoInt32 = ((_x.value._mant.__t__.length : GoInt32)) * __W;
            _z.value._a._neg = _x.value._neg;
            if (_x.value._exp > _allBits) {
                _z.value._a._abs = _z.value._a._abs._shl(_x.value._mant.__copy__(), (((_x.value._exp - _allBits) : GoUInt))).__copy__();
                _z.value._b._abs = _z.value._b._abs.__slice__(0, ((0 : GoInt))).__copy__();
            } else if (_x.value._exp < _allBits) {
                _z.value._a._abs = _z.value._a._abs._set(_x.value._mant.__copy__()).__copy__();
                var _t:T_nat = _z.value._b._abs._setUint64(((1 : GoUInt64))).__copy__();
                _z.value._b._abs = _t._shl(_t.__copy__(), (((_allBits - _x.value._exp) : GoUInt))).__copy__();
                _z.value._norm();
            };
            return { _0 : _z, _1 : exact };
        } else if (_x.value._form.__t__ == _zero.__t__) {
            return { _0 : _z.value.setInt64(((0 : GoInt64))), _1 : exact };
        } else if (_x.value._form.__t__ == _inf.__t__) {
            return { _0 : new Pointer<Rat>().nil(), _1 : _makeAcc(_x.value._neg) };
        };
        throw "unreachable";
    }
    public function int(_z:Pointer<Int_>):{ var _0 : Pointer<Int_>; var _1 : Accuracy; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_z == null || _z.isNil() && _x.value._form.__t__ <= _finite.__t__) {
            _z = Go.pointer(new Int_());
        };
        if (_x.value._form.__t__ == _finite.__t__) {
            var _acc:Accuracy = _makeAcc(_x.value._neg);
            if (_x.value._exp <= ((0 : GoInt32))) {
                return { _0 : _z.value.setInt64(((0 : GoInt64))), _1 : _acc };
            };
            var _allBits:GoUInt = ((_x.value._mant.__t__.length : GoUInt)) * __W;
            var _exp:GoUInt = ((_x.value._exp : GoUInt));
            if (_x.value.minPrec() <= _exp) {
                _acc = exact;
            };
            if (_z == null || _z.isNil()) {
                _z = Go.pointer(new Int_());
            };
            _z.value._neg = _x.value._neg;
            if (_exp > _allBits) {
                _z.value._abs = _z.value._abs._shl(_x.value._mant.__copy__(), _exp - _allBits).__copy__();
            } else if (_exp < _allBits) {
                _z.value._abs = _z.value._abs._shr(_x.value._mant.__copy__(), _allBits - _exp).__copy__();
            };
            return { _0 : _z, _1 : _acc };
        } else if (_x.value._form.__t__ == _zero.__t__) {
            return { _0 : _z.value.setInt64(((0 : GoInt64))), _1 : exact };
        } else if (_x.value._form.__t__ == _inf.__t__) {
            return { _0 : new Pointer<Int_>().nil(), _1 : _makeAcc(_x.value._neg) };
        };
        throw "unreachable";
    }
    public function float64():{ var _0 : GoFloat64; var _1 : Accuracy; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_x.value._form.__t__ == _finite.__t__) {
            final _fbits:GoUnTypedInt = ((64 : GoUnTypedInt)), _mbits:GoUnTypedInt = ((52 : GoUnTypedInt)), _ebits:GoUnTypedInt = _fbits - _mbits - ((1 : GoUnTypedInt)), _bias:GoUnTypedInt = (((1 : GoUnTypedInt)) << (_ebits - ((1 : GoUnTypedInt)))) - ((1 : GoUnTypedInt)), _dmin:GoUnTypedInt = ((1 : GoUnTypedInt)) - _bias - _mbits, _emin:GoUnTypedInt = ((1 : GoUnTypedInt)) - _bias, _emax:GoUnTypedInt = _bias;
            var _e:GoInt32 = _x.value._exp - ((1 : GoInt32));
            var _p:GoInt = _mbits + ((1 : GoUnTypedInt));
            if (_e < _emin) {
                _p = _mbits + ((1 : GoUnTypedInt)) - _emin + ((_e : GoInt));
                if (_p < ((0 : GoInt)) || _p == ((0 : GoInt)) && _x.value._mant._sticky(((_x.value._mant.__t__.length : GoUInt)) * __W - ((1 : GoUInt))) == ((0 : GoUInt))) {
                    if (_x.value._neg) {
                        var _z:GoFloat64 = ((0 : GoFloat64));
                        return { _0 : -_z, _1 : above };
                    };
                    return { _0 : ((0 : GoFloat64)), _1 : below };
                };
                if (_p == ((0 : GoInt))) {
                    if (_x.value._neg) {
                        return { _0 : -stdgo.math.Math.smallestNonzeroFloat64, _1 : below };
                    };
                    return { _0 : stdgo.math.Math.smallestNonzeroFloat64, _1 : above };
                };
            };
            var _r:Float_ = new Float_();
            _r._prec = ((_p : GoUInt32));
            _r.set(_x);
            _e = _r._exp - ((1 : GoInt32));
            if (_r._form.__t__ == _inf.__t__ || _e > _emax) {
                if (_x.value._neg) {
                    return { _0 : stdgo.math.Math.inf(-((1 : GoUnTypedInt))), _1 : below };
                };
                return { _0 : stdgo.math.Math.inf(((1 : GoUnTypedInt))), _1 : above };
            };
            var _sign:GoUInt64 = ((0 : GoUInt64)), _bexp:GoUInt64 = ((0 : GoUInt64)), _mant:GoUInt64 = ((0 : GoUInt64));
            if (_x.value._neg) {
                _sign = (((1 : GoUnTypedInt)) << (_fbits - ((1 : GoUnTypedInt))));
            };
            if (_e < _emin) {
                _p = _mbits + ((1 : GoUnTypedInt)) - _emin + ((_e : GoInt));
                _mant = (_msb64(_r._mant.__copy__()) >> (((_fbits - _p) : GoUInt)));
            } else {
                _bexp = ((((_e + _bias) : GoUInt64)) << _mbits);
                _mant = (_msb64(_r._mant.__copy__()) >> _ebits) & ((((1 : GoUnTypedInt)) << _mbits) - ((1 : GoUnTypedInt)));
            };
            return { _0 : stdgo.math.Math.float64frombits(_sign | _bexp | _mant), _1 : _r._acc };
        } else if (_x.value._form.__t__ == _zero.__t__) {
            if (_x.value._neg) {
                var _z:GoFloat64 = ((0 : GoFloat64));
                return { _0 : -_z, _1 : exact };
            };
            return { _0 : ((0 : GoFloat64)), _1 : exact };
        } else if (_x.value._form.__t__ == _inf.__t__) {
            if (_x.value._neg) {
                return { _0 : stdgo.math.Math.inf(-((1 : GoUnTypedInt))), _1 : exact };
            };
            return { _0 : stdgo.math.Math.inf(((1 : GoUnTypedInt))), _1 : exact };
        };
        throw "unreachable";
    }
    public function float32():{ var _0 : GoFloat32; var _1 : Accuracy; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_x.value._form.__t__ == _finite.__t__) {
            final _fbits:GoUnTypedInt = ((32 : GoUnTypedInt)), _mbits:GoUnTypedInt = ((23 : GoUnTypedInt)), _ebits:GoUnTypedInt = _fbits - _mbits - ((1 : GoUnTypedInt)), _bias:GoUnTypedInt = (((1 : GoUnTypedInt)) << (_ebits - ((1 : GoUnTypedInt)))) - ((1 : GoUnTypedInt)), _dmin:GoUnTypedInt = ((1 : GoUnTypedInt)) - _bias - _mbits, _emin:GoUnTypedInt = ((1 : GoUnTypedInt)) - _bias, _emax:GoUnTypedInt = _bias;
            var _e:GoInt32 = _x.value._exp - ((1 : GoInt32));
            var _p:GoInt = _mbits + ((1 : GoUnTypedInt));
            if (_e < _emin) {
                _p = _mbits + ((1 : GoUnTypedInt)) - _emin + ((_e : GoInt));
                if (_p < ((0 : GoInt)) || _p == ((0 : GoInt)) && _x.value._mant._sticky(((_x.value._mant.__t__.length : GoUInt)) * __W - ((1 : GoUInt))) == ((0 : GoUInt))) {
                    if (_x.value._neg) {
                        var _z:GoFloat32 = ((0 : GoFloat32));
                        return { _0 : -_z, _1 : above };
                    };
                    return { _0 : ((0 : GoFloat32)), _1 : below };
                };
                if (_p == ((0 : GoInt))) {
                    if (_x.value._neg) {
                        return { _0 : -stdgo.math.Math.smallestNonzeroFloat32, _1 : below };
                    };
                    return { _0 : stdgo.math.Math.smallestNonzeroFloat32, _1 : above };
                };
            };
            var _r:Float_ = new Float_();
            _r._prec = ((_p : GoUInt32));
            _r.set(_x);
            _e = _r._exp - ((1 : GoInt32));
            if (_r._form.__t__ == _inf.__t__ || _e > _emax) {
                if (_x.value._neg) {
                    return { _0 : ((stdgo.math.Math.inf(-((1 : GoUnTypedInt))) : GoFloat32)), _1 : below };
                };
                return { _0 : ((stdgo.math.Math.inf(((1 : GoUnTypedInt))) : GoFloat32)), _1 : above };
            };
            var _sign:GoUInt32 = ((0 : GoUInt32)), _bexp:GoUInt32 = ((0 : GoUInt32)), _mant:GoUInt32 = ((0 : GoUInt32));
            if (_x.value._neg) {
                _sign = (((1 : GoUnTypedInt)) << (_fbits - ((1 : GoUnTypedInt))));
            };
            if (_e < _emin) {
                _p = _mbits + ((1 : GoUnTypedInt)) - _emin + ((_e : GoInt));
                _mant = (_msb32(_r._mant.__copy__()) >> (((_fbits - _p) : GoUInt)));
            } else {
                _bexp = ((((_e + _bias) : GoUInt32)) << _mbits);
                _mant = (_msb32(_r._mant.__copy__()) >> _ebits) & ((((1 : GoUnTypedInt)) << _mbits) - ((1 : GoUnTypedInt)));
            };
            return { _0 : stdgo.math.Math.float32frombits(_sign | _bexp | _mant), _1 : _r._acc };
        } else if (_x.value._form.__t__ == _zero.__t__) {
            if (_x.value._neg) {
                var _z:GoFloat32 = ((0 : GoFloat32));
                return { _0 : -_z, _1 : exact };
            };
            return { _0 : ((0 : GoFloat32)), _1 : exact };
        } else if (_x.value._form.__t__ == _inf.__t__) {
            if (_x.value._neg) {
                return { _0 : ((stdgo.math.Math.inf(-((1 : GoUnTypedInt))) : GoFloat32)), _1 : exact };
            };
            return { _0 : ((stdgo.math.Math.inf(((1 : GoUnTypedInt))) : GoFloat32)), _1 : exact };
        };
        throw "unreachable";
    }
    public function int64():{ var _0 : GoInt64; var _1 : Accuracy; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_x.value._form.__t__ == _finite.__t__) {
            var _acc:Accuracy = _makeAcc(_x.value._neg);
            if (_x.value._exp <= ((0 : GoInt32))) {
                return { _0 : ((0 : GoInt64)), _1 : _acc };
            };
            if (_x.value._exp <= ((63 : GoInt32))) {
                var _i:GoInt64 = (((_msb64(_x.value._mant.__copy__()) >> (((64 : GoUInt32)) - ((_x.value._exp : GoUInt32)))) : GoInt64));
                if (_x.value._neg) {
                    _i = -_i;
                };
                if (_x.value.minPrec() <= ((_x.value._exp : GoUInt))) {
                    return { _0 : _i, _1 : exact };
                };
                return { _0 : _i, _1 : _acc };
            };
            if (_x.value._neg) {
                if (_x.value._exp == ((64 : GoInt32)) && _x.value.minPrec() == ((1 : GoUInt))) {
                    _acc = exact;
                };
                return { _0 : stdgo.math.Math.minInt64, _1 : _acc };
            };
            return { _0 : stdgo.math.Math.maxInt64, _1 : below };
        } else if (_x.value._form.__t__ == _zero.__t__) {
            return { _0 : ((0 : GoInt64)), _1 : exact };
        } else if (_x.value._form.__t__ == _inf.__t__) {
            if (_x.value._neg) {
                return { _0 : stdgo.math.Math.minInt64, _1 : above };
            };
            return { _0 : stdgo.math.Math.maxInt64, _1 : below };
        };
        throw "unreachable";
    }
    public function uint64():{ var _0 : GoUInt64; var _1 : Accuracy; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_x.value._form.__t__ == _finite.__t__) {
            if (_x.value._neg) {
                return { _0 : ((0 : GoUInt64)), _1 : above };
            };
            if (_x.value._exp <= ((0 : GoInt32))) {
                return { _0 : ((0 : GoUInt64)), _1 : below };
            };
            if (_x.value._exp <= ((64 : GoInt32))) {
                var _u:GoUInt64 = (_msb64(_x.value._mant.__copy__()) >> (((64 : GoUInt32)) - ((_x.value._exp : GoUInt32))));
                if (_x.value.minPrec() <= ((64 : GoUInt))) {
                    return { _0 : _u, _1 : exact };
                };
                return { _0 : _u, _1 : below };
            };
            return { _0 : stdgo.math.Math.maxUint64, _1 : below };
        } else if (_x.value._form.__t__ == _zero.__t__) {
            return { _0 : ((0 : GoUInt64)), _1 : exact };
        } else if (_x.value._form.__t__ == _inf.__t__) {
            if (_x.value._neg) {
                return { _0 : ((0 : GoUInt64)), _1 : above };
            };
            return { _0 : stdgo.math.Math.maxUint64, _1 : below };
        };
        throw "unreachable";
    }
    public function copy(_x:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_z != _x) {
            _z.value._prec = _x.value._prec;
            _z.value._mode = _x.value._mode;
            _z.value._acc = _x.value._acc;
            _z.value._form = _x.value._form;
            _z.value._neg = _x.value._neg;
            if (_z.value._form.__t__ == _finite.__t__) {
                _z.value._mant = _z.value._mant._set(_x.value._mant.__copy__()).__copy__();
                _z.value._exp = _x.value._exp;
            };
        };
        return _z;
    }
    public function set(_x:Pointer<Float_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        _z.value._acc = exact;
        if (_z != _x) {
            _z.value._form = _x.value._form;
            _z.value._neg = _x.value._neg;
            if (_x.value._form.__t__ == _finite.__t__) {
                _z.value._exp = _x.value._exp;
                _z.value._mant = _z.value._mant._set(_x.value._mant.__copy__()).__copy__();
            };
            if (_z.value._prec == ((0 : GoUInt32))) {
                _z.value._prec = _x.value._prec;
            } else if (_z.value._prec < _x.value._prec) {
                _z.value._round(((0 : GoUInt)));
            };
        };
        return _z;
    }
    public function setInf(_signbit:Bool):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._acc = exact;
        _z.value._form = _inf;
        _z.value._neg = _signbit;
        return _z;
    }
    public function setRat(_x:Pointer<Rat>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value.isInt()) {
            return _z.value.setInt(_x.value.num());
        };
        var _a:Float_ = new Float_(), _b:Float_ = new Float_();
        _a.setInt(_x.value.num());
        _b.setInt(_x.value.denom());
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = _umax32(_a._prec, _b._prec);
        };
        return _z.value.quo(Go.pointer(_a), Go.pointer(_b));
    }
    public function setInt(_x:Pointer<Int_>):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _bits:GoUInt32 = ((_x.value.bitLen() : GoUInt32));
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = _umax32(_bits, ((64 : GoUInt32)));
        };
        _z.value._acc = exact;
        _z.value._neg = _x.value._neg;
        if (_x.value._abs.__t__.length == ((0 : GoInt))) {
            _z.value._form = _zero;
            return _z;
        };
        _z.value._mant = _z.value._mant._set(_x.value._abs.__copy__()).__copy__();
        _fnorm(_z.value._mant.__copy__());
        _z.value._setExpAndRound(((_bits : GoInt64)), ((0 : GoUInt)));
        return _z;
    }
    public function setFloat64(_x:GoFloat64):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = ((53 : GoUInt32));
        };
        if (stdgo.math.Math.isNaN(_x)) {
            throw new ErrNaN("Float.SetFloat64(NaN)");
        };
        _z.value._acc = exact;
        _z.value._neg = stdgo.math.Math.signbit(_x);
        if (_x == ((0 : GoFloat64))) {
            _z.value._form = _zero;
            return _z;
        };
        if (stdgo.math.Math.isInf(_x, ((0 : GoInt)))) {
            _z.value._form = _inf;
            return _z;
        };
        _z.value._form = _finite;
        var __tmp__ = stdgo.math.Math.frexp(_x), _fmant:GoFloat64 = __tmp__._0, _exp:GoInt = __tmp__._1;
        _z.value._mant = _z.value._mant._setUint64((((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) | (stdgo.math.Math.float64bits(_fmant) << ((11 : GoUnTypedInt)))).__copy__();
        _z.value._exp = ((_exp : GoInt32));
        if (_z.value._prec < ((53 : GoUInt32))) {
            _z.value._round(((0 : GoUInt)));
        };
        return _z;
    }
    public function setInt64(_x:GoInt64):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _u:GoInt64 = _x;
        if (_u < ((0 : GoInt64))) {
            _u = -_u;
        };
        return _z.value._setBits64(_x < ((0 : GoInt64)), ((_u : GoUInt64)));
    }
    public function setUint64(_x:GoUInt64):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _z.value._setBits64(false, _x);
    }
    public function _setBits64(_neg:Bool, _x:GoUInt64):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_z.value._prec == ((0 : GoUInt32))) {
            _z.value._prec = ((64 : GoUInt32));
        };
        _z.value._acc = exact;
        _z.value._neg = _neg;
        if (_x == ((0 : GoUInt64))) {
            _z.value._form = _zero;
            return _z;
        };
        _z.value._form = _finite;
        var _s:GoInt = stdgo.math.bits.Bits.leadingZeros64(_x);
        _z.value._mant = _z.value._mant._setUint64((_x << ((_s : GoUInt)))).__copy__();
        _z.value._exp = (((((64 : GoInt)) - _s) : GoInt32));
        if (_z.value._prec < ((64 : GoUInt32))) {
            _z.value._round(((0 : GoUInt)));
        };
        return _z;
    }
    public function _round(_sbit:GoUInt):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _z.value._validate();
        };
        _z.value._acc = exact;
        if (_z.value._form.__t__ != _finite.__t__) {
            return;
        };
        var _m:GoUInt32 = ((_z.value._mant.__t__.length : GoUInt32));
        var _bits:GoUInt32 = _m * __W;
        if (_bits <= _z.value._prec) {
            return;
        };
        var _r:GoUInt = (((_bits - _z.value._prec - ((1 : GoUInt32))) : GoUInt));
        var _rbit:GoUInt = _z.value._mant._bit(_r) & ((1 : GoUInt));
        if (_sbit == ((0 : GoUInt)) && (_rbit == ((0 : GoUInt)) || _z.value._mode.__t__ == toNearestEven.__t__)) {
            _sbit = _z.value._mant._sticky(_r);
        };
        _sbit = _sbit & (((1 : GoUInt)));
        var _n:GoUInt32 = (_z.value._prec + (__W - ((1 : GoUnTypedInt)))) / __W;
        if (_m > _n) {
            Go.copy(_z.value._mant, _z.value._mant.__slice__(_m - _n));
            _z.value._mant = _z.value._mant.__slice__(0, _n).__copy__();
        };
        var _ntz:GoUInt32 = _n * __W - _z.value._prec;
        var _lsb:Word = (new Word(new Word(((1 : GoUInt))).__t__ << _ntz));
        if (_rbit | _sbit != ((0 : GoUInt))) {
            var _inc:Bool = false;
            if (_z.value._mode.__t__ == toNegativeInf.__t__) {
                _inc = _z.value._neg;
            } else if (_z.value._mode.__t__ == toZero.__t__) {} else if (_z.value._mode.__t__ == toNearestEven.__t__) {
                _inc = _rbit != ((0 : GoUInt)) && (_sbit != ((0 : GoUInt)) || new Word(_z.value._mant.__t__[((0 : GoInt))].__t__ & _lsb.__t__).__t__ != ((0 : GoUInt)));
            } else if (_z.value._mode.__t__ == toNearestAway.__t__) {
                _inc = _rbit != ((0 : GoUInt));
            } else if (_z.value._mode.__t__ == awayFromZero.__t__) {
                _inc = true;
            } else if (_z.value._mode.__t__ == toPositiveInf.__t__) {
                _inc = !_z.value._neg;
            } else {
                throw "unreachable";
            };
            _z.value._acc = _makeAcc(_inc != _z.value._neg);
            if (_inc) {
                if (_addVW(_z.value._mant.__copy__().__t__, _z.value._mant.__copy__().__t__, _lsb).__t__ != ((0 : GoUInt))) {
                    if (_z.value._exp >= maxExp) {
                        _z.value._form = _inf;
                        return;
                    };
                    _z.value._exp++;
                    _shrVU(_z.value._mant.__copy__().__t__, _z.value._mant.__copy__().__t__, ((1 : GoUInt)));
                    final _msb:GoUnTypedInt = (((1 : GoUnTypedInt)) << (__W - ((1 : GoUnTypedInt))));
                    _z.value._mant.__t__[_n - ((1 : GoUInt32))] = new Word(_z.value._mant.__t__[_n - ((1 : GoUInt32))].__t__ | (_msb));
                };
            };
        };
        _z.value._mant.__t__[((0 : GoInt))] = new Word((new Word(_z.value._mant.__t__[((0 : GoInt))].__t__ & (new Word(_lsb.__t__ - ((1 : GoUInt)))).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
        if (_debugFloat) {
            _z.value._validate();
        };
    }
    public function _validate():Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_debugFloat) {
            throw "validate called but debugFloat is not set";
        };
        if (_x.value._form.__t__ != _finite.__t__) {
            return;
        };
        var _m:GoInt = _x.value._mant.__t__.length;
        if (_m == ((0 : GoInt))) {
            throw "nonzero finite number with empty mantissa";
        };
        final _msb:GoUnTypedInt = (((1 : GoUnTypedInt)) << (__W - ((1 : GoUnTypedInt))));
        if (new Word(_x.value._mant.__t__[_m - ((1 : GoInt))].__t__ & _msb).__t__ == ((0 : GoUInt))) {
            throw stdgo.fmt.Fmt.sprintf("msb not set in last word %#x of %s", Go.toInterface(_x.value._mant.__t__[_m - ((1 : GoInt))]), Go.toInterface(_x.value.text((("p".code : GoRune)), ((0 : GoInt)))));
        };
        if (_x.value._prec == ((0 : GoUInt32))) {
            throw "zero precision finite number";
        };
    }
    public function isInt():Bool {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_x.value._form.__t__ != _finite.__t__) {
            return _x.value._form.__t__ == _zero.__t__;
        };
        if (_x.value._exp <= ((0 : GoInt32))) {
            return false;
        };
        return _x.value._prec <= ((_x.value._exp : GoUInt32)) || _x.value.minPrec() <= ((_x.value._exp : GoUInt));
    }
    public function isInf():Bool {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._form.__t__ == _inf.__t__;
    }
    public function signbit():Bool {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._neg;
    }
    public function setMantExp(_mant:Pointer<Float_>, _exp:GoInt):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _z.value._validate();
            _mant.value._validate();
        };
        _z.value.copy(_mant);
        if (_z.value._form.__t__ == _finite.__t__) {
            _z.value._setExpAndRound(((_z.value._exp : GoInt64)) + ((_exp : GoInt64)), ((0 : GoUInt)));
        };
        return _z;
    }
    public function _setExpAndRound(_exp:GoInt64, _sbit:GoUInt):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_exp < minExp) {
            _z.value._acc = _makeAcc(_z.value._neg);
            _z.value._form = _zero;
            return;
        };
        if (_exp > maxExp) {
            _z.value._acc = _makeAcc(!_z.value._neg);
            _z.value._form = _inf;
            return;
        };
        _z.value._form = _finite;
        _z.value._exp = ((_exp : GoInt32));
        _z.value._round(_sbit);
    }
    public function mantExp(_mant:Pointer<Float_>):GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _exp:GoInt = ((0 : GoInt));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_x.value._form.__t__ == _finite.__t__) {
            _exp = ((_x.value._exp : GoInt));
        };
        if (_mant != null && !_mant.isNil()) {
            _mant.value.copy(_x);
            if (_mant.value._form.__t__ == _finite.__t__) {
                _mant.value._exp = ((0 : GoInt32));
            };
        };
        return _exp;
    }
    public function sign():GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_debugFloat) {
            _x.value._validate();
        };
        if (_x.value._form.__t__ == _zero.__t__) {
            return ((0 : GoInt));
        };
        if (_x.value._neg) {
            return -((1 : GoUnTypedInt));
        };
        return ((1 : GoInt));
    }
    public function acc():Accuracy {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._acc;
    }
    public function mode():RoundingMode {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._mode;
    }
    public function minPrec():GoUInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._form.__t__ != _finite.__t__) {
            return ((0 : GoUInt));
        };
        return ((_x.value._mant.__t__.length : GoUInt)) * __W - _x.value._mant._trailingZeroBits();
    }
    public function prec():GoUInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((_x.value._prec : GoUInt));
    }
    public function setMode(_mode:RoundingMode):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._mode = _mode;
        _z.value._acc = exact;
        return _z;
    }
    public function setPrec(_prec:GoUInt):Pointer<Float_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._acc = exact;
        if (_prec == ((0 : GoUInt))) {
            _z.value._prec = ((0 : GoUInt32));
            if (_z.value._form.__t__ == _finite.__t__) {
                _z.value._acc = _makeAcc(_z.value._neg);
                _z.value._form = _zero;
            };
            return _z;
        };
        if (_prec > maxPrec) {
            _prec = maxPrec;
        };
        var _old:GoUInt32 = _z.value._prec;
        _z.value._prec = ((_prec : GoUInt32));
        if (_z.value._prec < _old) {
            _z.value._round(((0 : GoUInt)));
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
    public function new(?_prec:GoUInt32, ?_mode:RoundingMode, ?_acc:Accuracy, ?_form:T_form, ?_neg:Bool, ?_mant:T_nat, ?_exp:GoInt32) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Float_(_prec, _mode, _acc, _form, _neg, _mant, _exp);
    }
    public function __set__(__tmp__) {
        this._prec = __tmp__._prec;
        this._mode = __tmp__._mode;
        this._acc = __tmp__._acc;
        this._form = __tmp__._form;
        this._neg = __tmp__._neg;
        this._mant = __tmp__._mant;
        this._exp = __tmp__._exp;
        return this;
    }
}
@:structInit class ErrNaN {
    public function error():GoString {
        var _err = this.__copy__();
        return _err._msg;
    }
    public var _msg : GoString = (("" : GoString));
    public function new(?_msg:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_msg) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ErrNaN(_msg);
    }
    public function __set__(__tmp__) {
        this._msg = __tmp__._msg;
        return this;
    }
}
@:named class T_form {
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_form(__t__);
}
@:named class RoundingMode {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ >= new RoundingMode((__RoundingMode_index.length - ((1 : GoInt)))).__t__) {
            return (("RoundingMode(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __RoundingMode_name.__slice__(__RoundingMode_index[_i.__t__], __RoundingMode_index[new RoundingMode(_i.__t__ + ((1 : GoUInt8))).__t__]);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new RoundingMode(__t__);
}
@:named class Accuracy {
    public function toString():GoString {
        var _i = this.__copy__();
        _i = new Accuracy(_i.__t__ - (-((1 : GoUnTypedInt))));
        if (_i.__t__ < ((0 : GoInt8)) || _i.__t__ >= new Accuracy((__Accuracy_index.length - ((1 : GoInt)))).__t__) {
            return (("Accuracy(" : GoString)) + stdgo.strconv.Strconv.formatInt(new Accuracy(_i.__t__ + -((1 : GoUnTypedInt))).__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __Accuracy_name.__slice__(__Accuracy_index[_i.__t__], __Accuracy_index[new Accuracy(_i.__t__ + ((1 : GoInt8))).__t__]);
    }
    public var __t__ : GoInt8;
    public function new(?t:GoInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Accuracy(__t__);
}
@:structInit class Int_ {
    public function _scaleDenom(_x:Pointer<Int_>, _f:T_nat):Void {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.__t__.length == ((0 : GoInt))) {
            _z.value.set(_x);
            return;
        };
        _z.value._abs = _z.value._abs._mul(_x.value._abs.__copy__(), _f.__copy__()).__copy__();
        _z.value._neg = _x.value._neg;
    }
    public function probablyPrime(_n:GoInt):Bool {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            throw "negative n for ProbablyPrime";
        };
        if (_x.value._neg || _x.value._abs.__t__.length == ((0 : GoInt))) {
            return false;
        };
        final _primeBitMask:GoUInt64 = (((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((3 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((5 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((11 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((13 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((17 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((19 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((23 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((29 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((37 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((41 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((43 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((47 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((53 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((59 : GoUnTypedInt))) | (((1 : GoUnTypedInt)) << ((61 : GoUnTypedInt)));
        var _w:Word = _x.value._abs.__t__[((0 : GoInt))];
        if (_x.value._abs.__t__.length == ((1 : GoInt)) && _w.__t__ < ((64 : GoUInt))) {
            return _primeBitMask & ((((1 : GoUInt64)) << _w.__t__)) != ((0 : GoUInt64));
        };
        if (new Word(_w.__t__ & ((1 : GoUInt))).__t__ == ((0 : GoUInt))) {
            return false;
        };
        final _primesA:GoUnTypedInt = ((3 : GoUnTypedInt)) * ((5 : GoUnTypedInt)) * ((7 : GoUnTypedInt)) * ((11 : GoUnTypedInt)) * ((13 : GoUnTypedInt)) * ((17 : GoUnTypedInt)) * ((19 : GoUnTypedInt)) * ((23 : GoUnTypedInt)) * ((37 : GoUnTypedInt));
        final _primesB:GoUnTypedInt = ((29 : GoUnTypedInt)) * ((31 : GoUnTypedInt)) * ((41 : GoUnTypedInt)) * ((43 : GoUnTypedInt)) * ((47 : GoUnTypedInt)) * ((53 : GoUnTypedInt));
        var _rA:GoUInt32 = ((0 : GoUInt32)), _rB:GoUInt32 = ((0 : GoUInt32));
        if (__W == ((32 : GoInt))) {
            _rA = _x.value._abs._modW(new Word(_primesA)).__t__;
            _rB = _x.value._abs._modW(new Word(_primesB)).__t__;
        } else if (__W == ((64 : GoInt))) {
            var _r:Word = _x.value._abs._modW(new Word((_primesA * _primesB) & __M));
            _rA = new Word(_r.__t__ % _primesA).__t__;
            _rB = new Word(_r.__t__ % _primesB).__t__;
        } else {
            throw "math/big: invalid word size";
        };
        if (_rA % ((3 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((5 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((7 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((11 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((13 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((17 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((19 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((23 : GoUInt32)) == ((0 : GoUInt32)) || _rA % ((37 : GoUInt32)) == ((0 : GoUInt32)) || _rB % ((29 : GoUInt32)) == ((0 : GoUInt32)) || _rB % ((31 : GoUInt32)) == ((0 : GoUInt32)) || _rB % ((41 : GoUInt32)) == ((0 : GoUInt32)) || _rB % ((43 : GoUInt32)) == ((0 : GoUInt32)) || _rB % ((47 : GoUInt32)) == ((0 : GoUInt32)) || _rB % ((53 : GoUInt32)) == ((0 : GoUInt32))) {
            return false;
        };
        return _x.value._abs._probablyPrimeMillerRabin(_n + ((1 : GoInt)), true) && _x.value._abs._probablyPrimeLucas();
    }
    public function unmarshalJSON(_text:Slice<GoByte>):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (((_text : GoString)) == (("null" : GoString))) {
            return ((null : stdgo.Error));
        };
        return _z.value.unmarshalText(_text);
    }
    public function marshalJSON():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value.marshalText();
    }
    public function unmarshalText(_text:Slice<GoByte>):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _z.value._setFromScanner(stdgo.bytes.Bytes.newReader(_text).value, ((0 : GoInt))), _:Pointer<Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf("math/big: cannot unmarshal %q into a *big.Int", Go.toInterface(_text));
            };
        };
        return ((null : stdgo.Error));
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _text:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_x == null || _x.isNil()) {
            return { _0 : (("<nil>" : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : _x.value._abs._itoa(_x.value._neg, ((10 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_buf:Slice<GoByte>):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_buf.length == ((0 : GoInt))) {
            _z.value = new Int_().__copy__();
            return ((null : stdgo.Error));
        };
        var _b:GoUInt8 = _buf[((0 : GoInt))];
        if ((_b >> ((1 : GoUnTypedInt))) != _intGobVersion) {
            return stdgo.fmt.Fmt.errorf("Int.GobDecode: encoding version %d not supported", Go.toInterface((_b >> ((1 : GoUnTypedInt)))));
        };
        _z.value._neg = _b & ((1 : GoUInt8)) != ((0 : GoUInt8));
        _z.value._abs = _z.value._abs._setBytes(_buf.__slice__(((1 : GoInt)))).__copy__();
        return ((null : stdgo.Error));
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == null || _x.isNil()) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) + _x.value._abs.__t__.length * __S : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _i:GoInt = _x.value._abs._bytes(_buf) - ((1 : GoInt));
        var _b:GoUInt8 = (_intGobVersion << ((1 : GoUnTypedInt)));
        if (_x.value._neg) {
            _b = _b | (((1 : GoUInt8)));
        };
        _buf[_i] = _b;
        return { _0 : _buf.__slice__(_i), _1 : ((null : stdgo.Error)) };
    }
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _s.skipSpace();
        var _base:GoInt = ((0 : GoInt));
        if (_ch == (("b".code : GoRune))) {
            _base = ((2 : GoInt));
        } else if (_ch == (("o".code : GoRune))) {
            _base = ((8 : GoInt));
        } else if (_ch == (("d".code : GoRune))) {
            _base = ((10 : GoInt));
        } else if (_ch == (("x".code : GoRune)) || _ch == (("X".code : GoRune))) {
            _base = ((16 : GoInt));
        } else if (_ch == (("s".code : GoRune)) || _ch == (("v".code : GoRune))) {} else {
            return stdgo.errors.Errors.new_("Int.Scan: invalid verb");
        };
        var __tmp__ = _z.value._scan(new T_byteReader(_s).__copy__(), _base), _:Pointer<Int_> = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Pointer<Int_>; var _1 : GoInt; var _2 : Error; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _scanSign(_r), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Int_>().nil(), _1 : ((0 : GoInt)), _2 : _err };
        };
        {
            var __tmp__ = _z.value._abs._scan(_r, _base, false);
            _z.value._abs = __tmp__._0.__copy__();
            _base = __tmp__._1;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : new Pointer<Int_>().nil(), _1 : _base, _2 : _err };
        };
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && _neg;
        return { _0 : _z, _1 : _base, _2 : ((null : stdgo.Error)) };
    }
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoRune):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _base:GoInt = ((0 : GoInt));
        if (_ch == (("b".code : GoRune))) {
            _base = ((2 : GoInt));
        } else if (_ch == (("o".code : GoRune)) || _ch == (("O".code : GoRune))) {
            _base = ((8 : GoInt));
        } else if (_ch == (("d".code : GoRune)) || _ch == (("s".code : GoRune)) || _ch == (("v".code : GoRune))) {
            _base = ((10 : GoInt));
        } else if (_ch == (("x".code : GoRune)) || _ch == (("X".code : GoRune))) {
            _base = ((16 : GoInt));
        } else {
            stdgo.fmt.Fmt.fprintf(_s, "%%!%c(big.Int=%s)", Go.toInterface(_ch), Go.toInterface(_x.value.toString()));
            return;
        };
        if (_x == null || _x.isNil()) {
            stdgo.fmt.Fmt.fprint(_s, "<nil>");
            return;
        };
        var _sign:GoString = "";
        if (_x.value._neg) {
            _sign = "-";
        } else if (_s.flag((("+".code : GoRune)))) {
            _sign = "+";
        } else if (_s.flag(((" ".code : GoRune)))) {
            _sign = " ";
        };
        var _prefix:GoString = "";
        if (_s.flag((("#".code : GoRune)))) {
            if (_ch == (("b".code : GoRune))) {
                _prefix = "0b";
            } else if (_ch == (("o".code : GoRune))) {
                _prefix = "0";
            } else if (_ch == (("x".code : GoRune))) {
                _prefix = "0x";
            } else if (_ch == (("X".code : GoRune))) {
                _prefix = "0X";
            };
        };
        if (_ch == (("O".code : GoRune))) {
            _prefix = "0o";
        };
        var _digits:Slice<GoUInt8> = _x.value._abs._utoa(_base);
        if (_ch == (("X".code : GoRune))) {
            {
                var _i;
                var _d;
                for (_obj in _digits.keyValueIterator()) {
                    _i = _obj.key;
                    _d = _obj.value;
                    if ((("a".code : GoRune)) <= _d && _d <= (("z".code : GoRune))) {
                        _digits[_i] = (("A".code : GoRune)) + (_d - (("a".code : GoRune)));
                    };
                };
            };
        };
        var _left:GoInt = ((0 : GoInt));
        var _zeros:GoInt = ((0 : GoInt));
        var _right:GoInt = ((0 : GoInt));
        var __tmp__ = _s.precision(), _precision:GoInt = __tmp__._0, _precisionSet:Bool = __tmp__._1;
        if (_precisionSet) {
            if (_digits.length < _precision) {
                _zeros = _precision - _digits.length;
            } else if (_digits.length == ((1 : GoInt)) && _digits[((0 : GoInt))] == (("0".code : GoRune)) && _precision == ((0 : GoInt))) {
                return;
            };
        };
        var _length:GoInt = _sign.length + _prefix.length + _zeros + _digits.length;
        {
            var __tmp__ = _s.width(), _width:GoInt = __tmp__._0, _widthSet:Bool = __tmp__._1;
            if (_widthSet && _length < _width) {
                {
                    var _d:GoInt = _width - _length;
                    if (_s.flag((("-".code : GoRune)))) {
                        _right = _d;
                    } else if (_s.flag((("0".code : GoRune))) && !_precisionSet) {
                        _zeros = _d;
                    } else {
                        _left = _d;
                    };
                };
            };
        };
        _writeMultiple(_s, " ", _left);
        _writeMultiple(_s, _sign, ((1 : GoInt)));
        _writeMultiple(_s, _prefix, ((1 : GoInt)));
        _writeMultiple(_s, "0", _zeros);
        _s.write(_digits);
        _writeMultiple(_s, " ", _right);
    }
    public function toString():GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value.text(((10 : GoInt)));
    }
    public function append(_buf:Slice<GoByte>, _base:GoInt):Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == null || _x.isNil()) {
            return _buf.__append__(...(("<nil>" : GoString)).toArray());
        };
        return _buf.__append__(..._x.value._abs._itoa(_x.value._neg, _base).toArray());
    }
    public function text(_base:GoInt):GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == null || _x.isNil()) {
            return "<nil>";
        };
        return ((_x.value._abs._itoa(_x.value._neg, _base) : GoString));
    }
    public function sqrt(_x:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg) {
            throw "square root of negative number";
        };
        _z.value._neg = false;
        _z.value._abs = _z.value._abs._sqrt(_x.value._abs.__copy__()).__copy__();
        return _z;
    }
    public function not(_x:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg) {
            _z.value._abs = _z.value._abs._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
            _z.value._neg = false;
            return _z;
        };
        _z.value._abs = _z.value._abs._add(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
        _z.value._neg = true;
        return _z;
    }
    public function xor(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg == _y.value._neg) {
            if (_x.value._neg) {
                var _x1:T_nat = ((new T_nat() : T_nat))._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                _z.value._abs = _z.value._abs._xor(_x1.__copy__(), _y1.__copy__()).__copy__();
                _z.value._neg = false;
                return _z;
            };
            _z.value._abs = _z.value._abs._xor(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
            _z.value._neg = false;
            return _z;
        };
        if (_x.value._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
        _z.value._abs = _z.value._abs._add(_z.value._abs._xor(_x.value._abs.__copy__(), _y1.__copy__()).__copy__(), _natOne.__copy__()).__copy__();
        _z.value._neg = true;
        return _z;
    }
    public function or(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg == _y.value._neg) {
            if (_x.value._neg) {
                var _x1:T_nat = ((new T_nat() : T_nat))._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                _z.value._abs = _z.value._abs._add(_z.value._abs._and(_x1.__copy__(), _y1.__copy__()).__copy__(), _natOne.__copy__()).__copy__();
                _z.value._neg = true;
                return _z;
            };
            _z.value._abs = _z.value._abs._or(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
            _z.value._neg = false;
            return _z;
        };
        if (_x.value._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
        _z.value._abs = _z.value._abs._add(_z.value._abs._andNot(_y1.__copy__(), _x.value._abs.__copy__()).__copy__(), _natOne.__copy__()).__copy__();
        _z.value._neg = true;
        return _z;
    }
    public function andNot(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg == _y.value._neg) {
            if (_x.value._neg) {
                var _x1:T_nat = ((new T_nat() : T_nat))._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                _z.value._abs = _z.value._abs._andNot(_y1.__copy__(), _x1.__copy__()).__copy__();
                _z.value._neg = false;
                return _z;
            };
            _z.value._abs = _z.value._abs._andNot(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
            _z.value._neg = false;
            return _z;
        };
        if (_x.value._neg) {
            var _x1:T_nat = ((new T_nat() : T_nat))._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
            _z.value._abs = _z.value._abs._add(_z.value._abs._or(_x1.__copy__(), _y.value._abs.__copy__()).__copy__(), _natOne.__copy__()).__copy__();
            _z.value._neg = true;
            return _z;
        };
        var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
        _z.value._abs = _z.value._abs._and(_x.value._abs.__copy__(), _y1.__copy__()).__copy__();
        _z.value._neg = false;
        return _z;
    }
    public function and(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg == _y.value._neg) {
            if (_x.value._neg) {
                var _x1:T_nat = ((new T_nat() : T_nat))._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
                _z.value._abs = _z.value._abs._add(_z.value._abs._or(_x1.__copy__(), _y1.__copy__()).__copy__(), _natOne.__copy__()).__copy__();
                _z.value._neg = true;
                return _z;
            };
            _z.value._abs = _z.value._abs._and(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
            _z.value._neg = false;
            return _z;
        };
        if (_x.value._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1:T_nat = ((new T_nat() : T_nat))._sub(_y.value._abs.__copy__(), _natOne.__copy__()).__copy__();
        _z.value._abs = _z.value._abs._andNot(_x.value._abs.__copy__(), _y1.__copy__()).__copy__();
        _z.value._neg = false;
        return _z;
    }
    public function setBit(_x:Pointer<Int_>, _i:GoInt, _b:GoUInt):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_i < ((0 : GoInt))) {
            throw "negative bit index";
        };
        if (_x.value._neg) {
            var _t:T_nat = _z.value._abs._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
            _t = _t._setBit(_t.__copy__(), ((_i : GoUInt)), _b ^ ((1 : GoUInt))).__copy__();
            _z.value._abs = _t._add(_t.__copy__(), _natOne.__copy__()).__copy__();
            _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt));
            return _z;
        };
        _z.value._abs = _z.value._abs._setBit(_x.value._abs.__copy__(), ((_i : GoUInt)), _b).__copy__();
        _z.value._neg = false;
        return _z;
    }
    public function bit(_i:GoInt):GoUInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_i == ((0 : GoInt))) {
            if (_x.value._abs.__t__.length > ((0 : GoInt))) {
                return new Word(_x.value._abs.__t__[((0 : GoInt))].__t__ & ((1 : GoUInt))).__t__;
            };
            return ((0 : GoUInt));
        };
        if (_i < ((0 : GoInt))) {
            throw "negative bit index";
        };
        if (_x.value._neg) {
            var _t:T_nat = ((new T_nat() : T_nat))._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
            return _t._bit(((_i : GoUInt))) ^ ((1 : GoUInt));
        };
        return _x.value._abs._bit(((_i : GoUInt)));
    }
    public function rsh(_x:Pointer<Int_>, _n:GoUInt):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._neg) {
            var _t:T_nat = _z.value._abs._sub(_x.value._abs.__copy__(), _natOne.__copy__()).__copy__();
            _t = _t._shr(_t.__copy__(), _n).__copy__();
            _z.value._abs = _t._add(_t.__copy__(), _natOne.__copy__()).__copy__();
            _z.value._neg = true;
            return _z;
        };
        _z.value._abs = _z.value._abs._shr(_x.value._abs.__copy__(), _n).__copy__();
        _z.value._neg = false;
        return _z;
    }
    public function lsh(_x:Pointer<Int_>, _n:GoUInt):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._abs = _z.value._abs._shl(_x.value._abs.__copy__(), _n).__copy__();
        _z.value._neg = _x.value._neg;
        return _z;
    }
    public function modSqrt(_x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __switchIndex__ = -1;
            while (true) {
                if (jacobi(_x, _p) == -((1 : GoUnTypedInt))) {
                    return new Pointer<Int_>().nil();
                    break;
                } else if (jacobi(_x, _p) == ((0 : GoInt))) {
                    return _z.value.setInt64(((0 : GoInt64)));
                    break;
                } else if (jacobi(_x, _p) == ((1 : GoInt))) {
                    break;
                    break;
                };
                break;
            };
        };
        if (_x.value._neg || _x.value.cmp(_p) >= ((0 : GoInt))) {
            _x = Go.pointer(new Int_()).value.mod(_x, _p);
        };
        if (new Word(_p.value._abs.__t__[((0 : GoInt))].__t__ % ((4 : GoUInt))).__t__ == ((3 : GoUInt))) {
            return _z.value._modSqrt3Mod4Prime(_x, _p);
        } else if (new Word(_p.value._abs.__t__[((0 : GoInt))].__t__ % ((8 : GoUInt))).__t__ == ((5 : GoUInt))) {
            return _z.value._modSqrt5Mod8Prime(_x, _p);
        } else {
            return _z.value._modSqrtTonelliShanks(_x, _p);
        };
    }
    public function _modSqrtTonelliShanks(_x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:Int_ = new Int_();
        _s.sub(_p, _intOne);
        var _e:GoUInt = _s._abs._trailingZeroBits();
        _s.rsh(Go.pointer(_s), _e);
        var _n:Int_ = new Int_();
        _n.setInt64(((2 : GoInt64)));
        while (jacobi(Go.pointer(_n), _p) != -((1 : GoUnTypedInt))) {
            _n.add(Go.pointer(_n), _intOne);
        };
        var _y:Int_ = new Int_(), _b:Int_ = new Int_(), _g:Int_ = new Int_(), _t:Int_ = new Int_();
        _y.add(Go.pointer(_s), _intOne);
        _y.rsh(Go.pointer(_y), ((1 : GoUInt)));
        _y.exp(_x, Go.pointer(_y), _p);
        _b.exp(_x, Go.pointer(_s), _p);
        _g.exp(Go.pointer(_n), Go.pointer(_s), _p);
        var _r:GoUInt = _e;
        while (true) {
            var _m:GoUInt = ((0 : GoUInt));
            _t.set(Go.pointer(_b));
            while (_t.cmp(_intOne) != ((0 : GoInt))) {
                _t.mul(Go.pointer(_t), Go.pointer(_t)).value.mod(Go.pointer(_t), _p);
                _m++;
            };
            if (_m == ((0 : GoUInt))) {
                return _z.value.set(Go.pointer(_y));
            };
            _t.setInt64(((0 : GoInt64))).value.setBit(Go.pointer(_t), (((_r - _m - ((1 : GoUInt))) : GoInt)), ((1 : GoUInt))).value.exp(Go.pointer(_g), Go.pointer(_t), _p);
            _g.mul(Go.pointer(_t), Go.pointer(_t)).value.mod(Go.pointer(_g), _p);
            _y.mul(Go.pointer(_y), Go.pointer(_t)).value.mod(Go.pointer(_y), _p);
            _b.mul(Go.pointer(_b), Go.pointer(_g)).value.mod(Go.pointer(_b), _p);
            _r = _m;
        };
    }
    public function _modSqrt5Mod8Prime(_x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _e:Pointer<Int_> = Go.pointer(new Int_()).value.rsh(_p, ((3 : GoUInt)));
        var _tx:Pointer<Int_> = Go.pointer(new Int_()).value.lsh(_x, ((1 : GoUInt)));
        var _alpha:Pointer<Int_> = Go.pointer(new Int_()).value.exp(_tx, _e, _p);
        var _beta:Pointer<Int_> = Go.pointer(new Int_()).value.mul(_alpha, _alpha);
        _beta.value.mod(_beta, _p);
        _beta.value.mul(_beta, _tx);
        _beta.value.mod(_beta, _p);
        _beta.value.sub(_beta, _intOne);
        _beta.value.mul(_beta, _x);
        _beta.value.mod(_beta, _p);
        _beta.value.mul(_beta, _alpha);
        _z.value.mod(_beta, _p);
        return _z;
    }
    public function _modSqrt3Mod4Prime(_x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _e:Pointer<Int_> = Go.pointer(new Int_()).value.add(_p, _intOne);
        _e.value.rsh(_e, ((2 : GoUInt)));
        _z.value.exp(_x, _e, _p);
        return _z;
    }
    public function modInverse(_g:Pointer<Int_>, _n:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n.value._neg) {
            var _n2:Int_ = new Int_();
            _n = _n2.neg(_n);
        };
        if (_g.value._neg) {
            var _g2:Int_ = new Int_();
            _g = _g2.mod(_g, _n);
        };
        var _d:Int_ = new Int_(), _x:Int_ = new Int_();
        _d.gcd(Go.pointer(_x), new Pointer<Int_>().nil(), _g, _n);
        if (_d.cmp(_intOne) != ((0 : GoInt))) {
            return new Pointer<Int_>().nil();
        };
        if (_x._neg) {
            _z.value.add(Go.pointer(_x), _n);
        } else {
            _z.value.set(Go.pointer(_x));
        };
        return _z;
    }
    public function rand(_rnd:Pointer<stdgo.math.rand.Rand.Rand>, _n:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._neg = false;
        if (_n.value._neg || _n.value._abs.__t__.length == ((0 : GoInt))) {
            _z.value._abs = new T_nat();
            return _z;
        };
        _z.value._abs = _z.value._abs._random(_rnd, _n.value._abs.__copy__(), _n.value._abs._bitLen()).__copy__();
        return _z;
    }
    public function _lehmerGCD(_x:Pointer<Int_>, _y:Pointer<Int_>, _a:Pointer<Int_>, _b:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var a:Pointer<Int_> = new Pointer<Int_>().nil(), b:Pointer<Int_> = new Pointer<Int_>().nil(), ua:Pointer<Int_> = new Pointer<Int_>().nil(), ub:Pointer<Int_> = new Pointer<Int_>().nil();
        a = Go.pointer(new Int_()).value.abs(_a);
        b = Go.pointer(new Int_()).value.abs(_b);
        var _extended:Bool = _x != null && !_x.isNil() || _y != null && !_y.isNil();
        if (_extended) {
            ua = Go.pointer(new Int_()).value.setInt64(((1 : GoInt64)));
            ub = Go.pointer(new Int_());
        };
        var _q:Pointer<Int_> = Go.pointer(new Int_());
        var _r:Pointer<Int_> = Go.pointer(new Int_());
        var _s:Pointer<Int_> = Go.pointer(new Int_());
        var _t:Pointer<Int_> = Go.pointer(new Int_());
        if (a.value._abs._cmp(b.value._abs.__copy__()) < ((0 : GoInt))) {
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
        while (b.value._abs.__t__.length > ((1 : GoInt))) {
            var __tmp__ = _lehmerSimulate(a, b), _u0:Word = __tmp__._0, _u1:Word = __tmp__._1, _v0:Word = __tmp__._2, _v1:Word = __tmp__._3, _even:Bool = __tmp__._4;
            if (_v0.__t__ != ((0 : GoUInt))) {
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
        if (b.value._abs.__t__.length > ((0 : GoInt))) {
            if (a.value._abs.__t__.length > ((1 : GoInt))) {
                _euclidUpdate(a, b, ua, ub, _q, _r, _s, _t, _extended);
            };
            if (b.value._abs.__t__.length > ((0 : GoInt))) {
                var _aWord:Word = a.value._abs.__t__[((0 : GoInt))], _bWord:Word = b.value._abs.__t__[((0 : GoInt))];
                if (_extended) {
                    var _ua:Word = new Word(), _ub:Word = new Word(), _va:Word = new Word(), _vb:Word = new Word();
                    {
                        final __tmp__0 = new Word(((1 : GoUInt)));
                        final __tmp__1 = new Word(((0 : GoUInt)));
                        _ua = __tmp__0;
                        _ub = __tmp__1;
                    };
                    {
                        final __tmp__0 = new Word(((0 : GoUInt)));
                        final __tmp__1 = new Word(((1 : GoUInt)));
                        _va = __tmp__0;
                        _vb = __tmp__1;
                    };
                    var _even:Bool = true;
                    while (_bWord.__t__ != ((0 : GoUInt))) {
                        var _q:Word = new Word(_aWord.__t__ / _bWord.__t__), _r:Word = new Word(_aWord.__t__ % _bWord.__t__);
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = _r;
                            _aWord = __tmp__0;
                            _bWord = __tmp__1;
                        };
                        {
                            final __tmp__0 = _ub;
                            final __tmp__1 = new Word(_ua.__t__ + new Word(_q.__t__ * _ub.__t__).__t__);
                            _ua = __tmp__0;
                            _ub = __tmp__1;
                        };
                        {
                            final __tmp__0 = _vb;
                            final __tmp__1 = new Word(_va.__t__ + new Word(_q.__t__ * _vb.__t__).__t__);
                            _va = __tmp__0;
                            _vb = __tmp__1;
                        };
                        _even = !_even;
                    };
                    _t.value._abs = _t.value._abs._setWord(_ua).__copy__();
                    _s.value._abs = _s.value._abs._setWord(_va).__copy__();
                    _t.value._neg = !_even;
                    _s.value._neg = _even;
                    _t.value.mul(ua, _t);
                    _s.value.mul(ub, _s);
                    ua.value.add(_t, _s);
                } else {
                    while (_bWord.__t__ != ((0 : GoUInt))) {
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = new Word(_aWord.__t__ % _bWord.__t__);
                            _aWord = __tmp__0;
                            _bWord = __tmp__1;
                        };
                    };
                };
                a.value._abs.__t__[((0 : GoInt))] = _aWord;
            };
        };
        var _negA:Bool = _a.value._neg;
        if (_y != null && !_y.isNil()) {
            if (_y == _b) {
                b.value.set(_b);
            } else {
                b = _b;
            };
            _y.value.mul(_a, ua);
            if (_negA) {
                _y.value._neg = !_y.value._neg;
            };
            _y.value.sub(a, _y);
            _y.value.div(_y, b);
        };
        if (_x != null && !_x.isNil()) {
            _x.value = ua.value.__copy__();
            if (_negA) {
                _x.value._neg = !_x.value._neg;
            };
        };
        _z.value = a.value.__copy__();
        return _z;
    }
    public function gcd(_x:Pointer<Int_>, _y:Pointer<Int_>, _a:Pointer<Int_>, _b:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_a.value._abs.__t__.length == ((0 : GoInt)) || _b.value._abs.__t__.length == ((0 : GoInt))) {
            var _lenA:GoInt = _a.value._abs.__t__.length, _lenB:GoInt = _b.value._abs.__t__.length, _negA:Bool = _a.value._neg, _negB:Bool = _b.value._neg;
            if (_lenA == ((0 : GoInt))) {
                _z.value.set(_b);
            } else {
                _z.value.set(_a);
            };
            _z.value._neg = false;
            if (_x != null && !_x.isNil()) {
                if (_lenA == ((0 : GoInt))) {
                    _x.value.setUint64(((0 : GoUInt64)));
                } else {
                    _x.value.setUint64(((1 : GoUInt64)));
                    _x.value._neg = _negA;
                };
            };
            if (_y != null && !_y.isNil()) {
                if (_lenB == ((0 : GoInt))) {
                    _y.value.setUint64(((0 : GoUInt64)));
                } else {
                    _y.value.setUint64(((1 : GoUInt64)));
                    _y.value._neg = _negB;
                };
            };
            return _z;
        };
        return _z.value._lehmerGCD(_x, _y, _a, _b);
    }
    public function exp(_x:Pointer<Int_>, _y:Pointer<Int_>, _m:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _xWords:T_nat = _x.value._abs.__copy__();
        if (_y.value._neg) {
            if (_m == null || _m.isNil() || _m.value._abs.__t__.length == ((0 : GoInt))) {
                return _z.value.setInt64(((1 : GoInt64)));
            };
            var _inverse:Pointer<Int_> = Go.pointer(new Int_()).value.modInverse(_x, _m);
            if (_inverse == null || _inverse.isNil()) {
                return new Pointer<Int_>().nil();
            };
            _xWords = _inverse.value._abs.__copy__();
        };
        var _yWords:T_nat = _y.value._abs.__copy__();
        var _mWords:T_nat = new T_nat();
        if (_m != null && !_m.isNil()) {
            _mWords = _m.value._abs.__copy__();
        };
        _z.value._abs = _z.value._abs._expNN(_xWords.__copy__(), _yWords.__copy__(), _mWords.__copy__()).__copy__();
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && _x.value._neg && _yWords.__t__.length > ((0 : GoInt)) && new Word(_yWords.__t__[((0 : GoInt))].__t__ & ((1 : GoUInt))).__t__ == ((1 : GoUInt));
        if (_z.value._neg && _mWords.__t__.length > ((0 : GoInt))) {
            _z.value._abs = _z.value._abs._sub(_mWords.__copy__(), _z.value._abs.__copy__()).__copy__();
            _z.value._neg = false;
        };
        return _z;
    }
    public function trailingZeroBits():GoUInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._abs._trailingZeroBits();
    }
    public function bitLen():GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._abs._bitLen();
    }
    public function fillBytes(_buf:Slice<GoByte>):Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            for (_obj in _buf.keyValueIterator()) {
                _i = _obj.key;
                _buf[_i] = ((0 : GoUInt8));
            };
        };
        _x.value._abs._bytes(_buf);
        return _buf;
    }
    public function bytes():Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_x.value._abs.__t__.length * __S : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return _buf.__slice__(_x.value._abs._bytes(_buf));
    }
    public function setBytes(_buf:Slice<GoByte>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._abs = _z.value._abs._setBytes(_buf).__copy__();
        _z.value._neg = false;
        return _z;
    }
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Pointer<Int_>; var _1 : Bool; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _z.value._scan(_r, _base), _:Pointer<Int_> = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : new Pointer<Int_>().nil(), _1 : false };
            };
        };
        {
            var __tmp__ = _r.readByte(), _:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                return { _0 : new Pointer<Int_>().nil(), _1 : false };
            };
        };
        return { _0 : _z, _1 : true };
    }
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Pointer<Int_>; var _1 : Bool; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _z.value._setFromScanner(stdgo.strings.Strings.newReader(_s).value, _base);
    }
    public function isUint64():Bool {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return !_x.value._neg && _x.value._abs.__t__.length <= ((64 : GoUnTypedInt)) / __W;
    }
    public function isInt64():Bool {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._abs.__t__.length <= ((64 : GoUnTypedInt)) / __W) {
            var _w:GoInt64 = ((_low64(_x.value._abs.__copy__()) : GoInt64));
            return _w >= ((0 : GoInt64)) || _x.value._neg && _w == -_w;
        };
        return false;
    }
    public function uint64():GoUInt64 {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _low64(_x.value._abs.__copy__());
    }
    public function int64():GoInt64 {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _v:GoInt64 = ((_low64(_x.value._abs.__copy__()) : GoInt64));
        if (_x.value._neg) {
            _v = -_v;
        };
        return _v;
    }
    public function cmpAbs(_y:Pointer<Int_>):GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._abs._cmp(_y.value._abs.__copy__());
    }
    public function cmp(_y:Pointer<Int_>):GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:GoInt = ((0 : GoInt));
        if (_x == _y) {} else if (_x.value._neg == _y.value._neg) {
            _r = _x.value._abs._cmp(_y.value._abs.__copy__());
            if (_x.value._neg) {
                _r = -_r;
            };
        } else if (_x.value._neg) {
            _r = -((1 : GoUnTypedInt));
        } else {
            _r = ((1 : GoInt));
        };
        return _r;
    }
    public function divMod(_x:Pointer<Int_>, _y:Pointer<Int_>, _m:Pointer<Int_>):{ var _0 : Pointer<Int_>; var _1 : Pointer<Int_>; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _y0:Pointer<Int_> = _y;
        if (_z == _y || _alias(_z.value._abs.__copy__(), _y.value._abs.__copy__())) {
            _y0 = Go.pointer(new Int_()).value.set(_y);
        };
        _z.value.quoRem(_x, _y, _m);
        if (_m.value._neg) {
            if (_y0.value._neg) {
                _z.value.add(_z, _intOne);
                _m.value.sub(_m, _y0);
            } else {
                _z.value.sub(_z, _intOne);
                _m.value.add(_m, _y0);
            };
        };
        return { _0 : _z, _1 : _m };
    }
    public function mod(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _y0:Pointer<Int_> = _y;
        if (_z == _y || _alias(_z.value._abs.__copy__(), _y.value._abs.__copy__())) {
            _y0 = Go.pointer(new Int_()).value.set(_y);
        };
        var _q:Int_ = new Int_();
        _q.quoRem(_x, _y, _z);
        if (_z.value._neg) {
            if (_y0.value._neg) {
                _z.value.sub(_z, _y0);
            } else {
                _z.value.add(_z, _y0);
            };
        };
        return _z;
    }
    public function div(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _y_neg:Bool = _y.value._neg;
        var _r:Int_ = new Int_();
        _z.value.quoRem(_x, _y, Go.pointer(_r));
        if (_r._neg) {
            if (_y_neg) {
                _z.value.add(_z, _intOne);
            } else {
                _z.value.sub(_z, _intOne);
            };
        };
        return _z;
    }
    public function quoRem(_x:Pointer<Int_>, _y:Pointer<Int_>, _r:Pointer<Int_>):{ var _0 : Pointer<Int_>; var _1 : Pointer<Int_>; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _z.value._abs._div(_r.value._abs.__copy__(), _x.value._abs.__copy__(), _y.value._abs.__copy__());
            _z.value._abs = __tmp__._0.__copy__();
            _r.value._abs = __tmp__._1.__copy__();
        };
        {
            final __tmp__0 = _z.value._abs.__t__.length > ((0 : GoInt)) && _x.value._neg != _y.value._neg;
            final __tmp__1 = _r.value._abs.__t__.length > ((0 : GoInt)) && _x.value._neg;
            _z.value._neg = __tmp__0;
            _r.value._neg = __tmp__1;
        };
        return { _0 : _z, _1 : _r };
    }
    public function rem(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = ((new T_nat() : T_nat))._div(_z.value._abs.__copy__(), _x.value._abs.__copy__(), _y.value._abs.__copy__());
            _z.value._abs = __tmp__._1.__copy__();
        };
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && _x.value._neg;
        return _z;
    }
    public function quo(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _z.value._abs._div(new T_nat(), _x.value._abs.__copy__(), _y.value._abs.__copy__());
            _z.value._abs = __tmp__._0.__copy__();
        };
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && _x.value._neg != _y.value._neg;
        return _z;
    }
    public function binomial(_n:GoInt64, _k:GoInt64):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n / ((2 : GoInt64)) < _k && _k <= _n) {
            _k = _n - _k;
        };
        var _a:Int_ = new Int_(), _b:Int_ = new Int_();
        _a.mulRange(_n - _k + ((1 : GoInt64)), _n);
        _b.mulRange(((1 : GoInt64)), _k);
        return _z.value.quo(Go.pointer(_a), Go.pointer(_b));
    }
    public function mulRange(_a:GoInt64, _b:GoInt64):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_a > _b) {
            return _z.value.setInt64(((1 : GoInt64)));
        } else if (_a <= ((0 : GoInt64)) && _b >= ((0 : GoInt64))) {
            return _z.value.setInt64(((0 : GoInt64)));
        };
        var _neg:Bool = false;
        if (_a < ((0 : GoInt64))) {
            _neg = (_b - _a) & ((1 : GoInt64)) == ((0 : GoInt64));
            {
                final __tmp__0 = -_b;
                final __tmp__1 = -_a;
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        _z.value._abs = _z.value._abs._mulRange(((_a : GoUInt64)), ((_b : GoUInt64))).__copy__();
        _z.value._neg = _neg;
        return _z;
    }
    public function mul(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == _y) {
            _z.value._abs = _z.value._abs._sqr(_x.value._abs.__copy__()).__copy__();
            _z.value._neg = false;
            return _z;
        };
        _z.value._abs = _z.value._abs._mul(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && _x.value._neg != _y.value._neg;
        return _z;
    }
    public function sub(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _neg:Bool = _x.value._neg;
        if (_x.value._neg != _y.value._neg) {
            _z.value._abs = _z.value._abs._add(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
        } else {
            if (_x.value._abs._cmp(_y.value._abs.__copy__()) >= ((0 : GoInt))) {
                _z.value._abs = _z.value._abs._sub(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
            } else {
                _neg = !_neg;
                _z.value._abs = _z.value._abs._sub(_y.value._abs.__copy__(), _x.value._abs.__copy__()).__copy__();
            };
        };
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && _neg;
        return _z;
    }
    public function add(_x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _neg:Bool = _x.value._neg;
        if (_x.value._neg == _y.value._neg) {
            _z.value._abs = _z.value._abs._add(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
        } else {
            if (_x.value._abs._cmp(_y.value._abs.__copy__()) >= ((0 : GoInt))) {
                _z.value._abs = _z.value._abs._sub(_x.value._abs.__copy__(), _y.value._abs.__copy__()).__copy__();
            } else {
                _neg = !_neg;
                _z.value._abs = _z.value._abs._sub(_y.value._abs.__copy__(), _x.value._abs.__copy__()).__copy__();
            };
        };
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && _neg;
        return _z;
    }
    public function neg(_x:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value.set(_x);
        _z.value._neg = _z.value._abs.__t__.length > ((0 : GoInt)) && !_z.value._neg;
        return _z;
    }
    public function abs(_x:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value.set(_x);
        _z.value._neg = false;
        return _z;
    }
    public function setBits(_abs:Slice<Word>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._abs = new T_nat(_abs)._norm().__copy__();
        _z.value._neg = false;
        return _z;
    }
    public function bits():Slice<Word> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._abs.__copy__().__t__;
    }
    public function set(_x:Pointer<Int_>):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_z != _x) {
            _z.value._abs = _z.value._abs._set(_x.value._abs.__copy__()).__copy__();
            _z.value._neg = _x.value._neg;
        };
        return _z;
    }
    public function setUint64(_x:GoUInt64):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._abs = _z.value._abs._setUint64(_x).__copy__();
        _z.value._neg = false;
        return _z;
    }
    public function setInt64(_x:GoInt64):Pointer<Int_> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _neg:Bool = false;
        if (_x < ((0 : GoInt64))) {
            _neg = true;
            _x = -_x;
        };
        _z.value._abs = _z.value._abs._setUint64(((_x : GoUInt64))).__copy__();
        _z.value._neg = _neg;
        return _z;
    }
    public function sign():GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._abs.__t__.length == ((0 : GoInt))) {
            return ((0 : GoInt));
        };
        if (_x.value._neg) {
            return -((1 : GoUnTypedInt));
        };
        return ((1 : GoInt));
    }
    public var _neg : Bool = false;
    public var _abs : T_nat = new T_nat();
    public function new(?_neg:Bool, ?_abs:T_nat) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Int_(_neg, _abs);
    }
    public function __set__(__tmp__) {
        this._neg = __tmp__._neg;
        this._abs = __tmp__._abs;
        return this;
    }
}
@:structInit class T_byteReader {
    public function unreadByte():Error {
        var _r = this.__copy__();
        return _r.unreadRune();
    }
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _r = this.__copy__();
        var __tmp__ = _r.readRune(), _ch:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_size != ((1 : GoInt)) && _err == null) {
            _err = stdgo.fmt.Fmt.errorf("invalid rune %#U", Go.toInterface(_ch));
        };
        return { _0 : ((_ch : GoByte)), _1 : _err };
    }
    @:embedded
    public var scanState : stdgo.fmt.Fmt.ScanState = ((null : stdgo.fmt.Fmt.ScanState));
    public function new(?scanState:stdgo.fmt.Fmt.ScanState) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(scanState) + "}";
    }
    public function read(_buf:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return scanState.read(_0);
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return scanState.readRune();
    public function skipSpace() scanState.skipSpace();
    public function token(_skipSpace:Bool, _f:GoInt32 -> Bool):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return scanState.token(_0, _1);
    public function unreadRune():stdgo.Error return scanState.unreadRune();
    public function width():{ var _0 : GoInt; var _1 : Bool; } return scanState.width();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_byteReader(scanState);
    }
    public function __set__(__tmp__) {
        this.scanState = __tmp__.scanState;
        return this;
    }
}
@:named class T_nat {
    public function _probablyPrimeLucas():Bool {
        var _n = this.__copy__();
        if (_n.__t__.length == ((0 : GoInt)) || _n._cmp(_natOne.__copy__()) == ((0 : GoInt))) {
            return false;
        };
        if (new Word(_n.__t__[((0 : GoInt))].__t__ & ((1 : GoUInt))).__t__ == ((0 : GoUInt))) {
            return _n._cmp(_natTwo.__copy__()) == ((0 : GoInt));
        };
        var _p:Word = new Word(((3 : GoUInt)));
        var _d:T_nat = new T_nat(new Slice<Word>(new Word(((1 : GoUInt))))).__copy__();
        var _t1:T_nat = ((new T_nat() : T_nat)).__copy__();
        var _intD:Pointer<Int_> = Go.pointer((({ _abs : _d.__copy__(), _neg : false } : Int_)));
        var _intN:Pointer<Int_> = Go.pointer((({ _abs : _n.__copy__(), _neg : false } : Int_)));
        Go.cfor(true, _p.__t__++, {
            if (_p.__t__ > ((10000 : GoUInt))) {
                throw (("math/big: internal error: cannot find (D/n) = -1 for " : GoString)) + _intN.value.toString();
            };
            _d.__t__[((0 : GoInt))] = new Word(new Word(_p.__t__ * _p.__t__).__t__ - ((4 : GoUInt)));
            var _j:GoInt = jacobi(_intD, _intN);
            if (_j == -((1 : GoUnTypedInt))) {
                break;
            };
            if (_j == ((0 : GoInt))) {
                return _n.__t__.length == ((1 : GoInt)) && _n.__t__[((0 : GoInt))].__t__ == new Word(_p.__t__ + ((2 : GoUInt))).__t__;
            };
            if (_p.__t__ == ((40 : GoUInt))) {
                _t1 = _t1._sqrt(_n.__copy__()).__copy__();
                _t1 = _t1._sqr(_t1.__copy__()).__copy__();
                if (_t1._cmp(_n.__copy__()) == ((0 : GoInt))) {
                    return false;
                };
            };
        });
        var _s:T_nat = ((new T_nat() : T_nat))._add(_n.__copy__(), _natOne.__copy__()).__copy__();
        var _r:GoInt = ((_s._trailingZeroBits() : GoInt));
        _s = _s._shr(_s.__copy__(), ((_r : GoUInt))).__copy__();
        var _nm2:T_nat = ((new T_nat() : T_nat))._sub(_n.__copy__(), _natTwo.__copy__()).__copy__();
        var _natP:T_nat = ((new T_nat() : T_nat))._setWord(_p).__copy__();
        var _vk:T_nat = ((new T_nat() : T_nat))._setWord(new Word(((2 : GoUInt)))).__copy__();
        var _vk1:T_nat = ((new T_nat() : T_nat))._setWord(_p).__copy__();
        var _t2:T_nat = ((new T_nat() : T_nat)).__copy__();
        {
            var _i:GoInt = ((_s._bitLen() : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (_s._bit(((_i : GoUInt))) != ((0 : GoUInt))) {
                    _t1 = _t1._mul(_vk.__copy__(), _vk1.__copy__()).__copy__();
                    _t1 = _t1._add(_t1.__copy__(), _n.__copy__()).__copy__();
                    _t1 = _t1._sub(_t1.__copy__(), _natP.__copy__()).__copy__();
                    {
                        var __tmp__ = _t2._div(_vk.__copy__(), _t1.__copy__(), _n.__copy__());
                        _t2 = __tmp__._0.__copy__();
                        _vk = __tmp__._1.__copy__();
                    };
                    _t1 = _t1._sqr(_vk1.__copy__()).__copy__();
                    _t1 = _t1._add(_t1.__copy__(), _nm2.__copy__()).__copy__();
                    {
                        var __tmp__ = _t2._div(_vk1.__copy__(), _t1.__copy__(), _n.__copy__());
                        _t2 = __tmp__._0.__copy__();
                        _vk1 = __tmp__._1.__copy__();
                    };
                } else {
                    _t1 = _t1._mul(_vk.__copy__(), _vk1.__copy__()).__copy__();
                    _t1 = _t1._add(_t1.__copy__(), _n.__copy__()).__copy__();
                    _t1 = _t1._sub(_t1.__copy__(), _natP.__copy__()).__copy__();
                    {
                        var __tmp__ = _t2._div(_vk1.__copy__(), _t1.__copy__(), _n.__copy__());
                        _t2 = __tmp__._0.__copy__();
                        _vk1 = __tmp__._1.__copy__();
                    };
                    _t1 = _t1._sqr(_vk.__copy__()).__copy__();
                    _t1 = _t1._add(_t1.__copy__(), _nm2.__copy__()).__copy__();
                    {
                        var __tmp__ = _t2._div(_vk.__copy__(), _t1.__copy__(), _n.__copy__());
                        _t2 = __tmp__._0.__copy__();
                        _vk = __tmp__._1.__copy__();
                    };
                };
            });
        };
        if (_vk._cmp(_natTwo.__copy__()) == ((0 : GoInt)) || _vk._cmp(_nm2.__copy__()) == ((0 : GoInt))) {
            var _t1:T_nat = _t1._mul(_vk.__copy__(), _natP.__copy__()).__copy__();
            var _t2:T_nat = _t2._shl(_vk1.__copy__(), ((1 : GoUInt))).__copy__();
            if (_t1._cmp(_t2.__copy__()) < ((0 : GoInt))) {
                {
                    final __tmp__0 = _t2.__copy__();
                    final __tmp__1 = _t1.__copy__();
                    _t1 = __tmp__0;
                    _t2 = __tmp__1;
                };
            };
            _t1 = _t1._sub(_t1.__copy__(), _t2.__copy__()).__copy__();
            var _t3:T_nat = _vk1.__copy__();
            _vk1 = new T_nat();
            _vk1;
            {
                var __tmp__ = _t2._div(_t3.__copy__(), _t1.__copy__(), _n.__copy__());
                _t2 = __tmp__._0.__copy__();
                _t3 = __tmp__._1.__copy__();
            };
            if (_t3.__t__.length == ((0 : GoInt))) {
                return true;
            };
        };
        {
            var _t:GoInt = ((0 : GoInt));
            Go.cfor(_t < _r - ((1 : GoInt)), _t++, {
                if (_vk.__t__.length == ((0 : GoInt))) {
                    return true;
                };
                if (_vk.__t__.length == ((1 : GoInt)) && _vk.__t__[((0 : GoInt))].__t__ == ((2 : GoUInt))) {
                    return false;
                };
                _t1 = _t1._sqr(_vk.__copy__()).__copy__();
                _t1 = _t1._sub(_t1.__copy__(), _natTwo.__copy__()).__copy__();
                {
                    var __tmp__ = _t2._div(_vk.__copy__(), _t1.__copy__(), _n.__copy__());
                    _t2 = __tmp__._0.__copy__();
                    _vk = __tmp__._1.__copy__();
                };
            });
        };
        return false;
    }
    public function _probablyPrimeMillerRabin(_reps:GoInt, _force2:Bool):Bool {
        var _n = this.__copy__();
        return stdgo.internal.Macro.controlFlow({
            var _nm1:T_nat = ((new T_nat() : T_nat))._sub(_n.__copy__(), _natOne.__copy__()).__copy__();
            var _k:GoUInt = _nm1._trailingZeroBits();
            var _q:T_nat = ((new T_nat() : T_nat))._shr(_nm1.__copy__(), _k).__copy__();
            var _nm3:T_nat = ((new T_nat() : T_nat))._sub(_nm1.__copy__(), _natTwo.__copy__()).__copy__();
            var _rand:Pointer<stdgo.math.rand.Rand.Rand> = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_n.__t__[((0 : GoInt))].__t__));
            var _x:T_nat = new T_nat(), _y:T_nat = new T_nat(), _quotient:T_nat = new T_nat();
            var _nm3Len:GoInt = _nm3._bitLen();
            @:label("NextRandom") {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _reps, _i++, {
                    if (_i == _reps - ((1 : GoInt)) && _force2) {
                        _x = _x._set(_natTwo.__copy__()).__copy__();
                    } else {
                        _x = _x._random(_rand, _nm3.__copy__(), _nm3Len).__copy__();
                        _x = _x._add(_x.__copy__(), _natTwo.__copy__()).__copy__();
                    };
                    _y = _y._expNN(_x.__copy__(), _q.__copy__(), _n.__copy__()).__copy__();
                    if (_y._cmp(_natOne.__copy__()) == ((0 : GoInt)) || _y._cmp(_nm1.__copy__()) == ((0 : GoInt))) {
                        continue;
                    };
                    {
                        var _j:GoUInt = ((((1 : GoUInt)) : GoUInt));
                        Go.cfor(_j < _k, _j++, {
                            _y = _y._sqr(_y.__copy__()).__copy__();
                            {
                                var __tmp__ = _quotient._div(_y.__copy__(), _y.__copy__(), _n.__copy__());
                                _quotient = __tmp__._0.__copy__();
                                _y = __tmp__._1.__copy__();
                            };
                            if (_y._cmp(_nm1.__copy__()) == ((0 : GoInt))) {
                                continue;
                            };
                            if (_y._cmp(_natOne.__copy__()) == ((0 : GoInt))) {
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
    public function _divRecursiveStep(_u:T_nat, _v:T_nat, _depth:GoInt, _tmp:Pointer<T_nat>, _temps:Slice<Pointer<T_nat>>):Void {
        var _z = this.__copy__();
        _u = _u._norm().__copy__();
        _v = _v._norm().__copy__();
        if (_u.__t__.length == ((0 : GoInt))) {
            _z._clear();
            return;
        };
        var _n:GoInt = _v.__t__.length;
        if (_n < _divRecursiveThreshold) {
            _z._divBasic(_u.__copy__(), _v.__copy__());
            return;
        };
        var _m:GoInt = _u.__t__.length - _n;
        if (_m < ((0 : GoInt))) {
            return;
        };
        var b:GoInt = _n / ((2 : GoInt));
        if (_temps[_depth] == null || _temps[_depth].isNil()) {
            _temps[_depth] = _getNat(_n);
        } else {
            _temps[_depth].value = _temps[_depth].value._make(b + ((1 : GoInt))).__copy__();
        };
        var _j:GoInt = _m;
        while (_j > b) {
            var _s:GoInt = (b - ((1 : GoInt)));
            var _uu:T_nat = _u.__slice__(_j - b).__copy__();
            var _qhat:T_nat = _temps[_depth].value.__copy__();
            _qhat._clear();
            _qhat._divRecursiveStep(_uu.__slice__(_s, b + _n).__copy__(), _v.__slice__(_s).__copy__(), _depth + ((1 : GoInt)), _tmp, _temps);
            _qhat = _qhat._norm().__copy__();
            var _qhatv:T_nat = _tmp.value._make(((3 : GoInt)) * _n).__copy__();
            _qhatv._clear();
            _qhatv = _qhatv._mul(_qhat.__copy__(), _v.__slice__(0, _s).__copy__()).__copy__();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((2 : GoInt)), _i++, {
                    var _e:GoInt = _qhatv._cmp(_uu._norm().__copy__());
                    if (_e <= ((0 : GoInt))) {
                        break;
                    };
                    _subVW(_qhat.__copy__().__t__, _qhat.__copy__().__t__, new Word(((1 : GoUInt))));
                    var _c:Word = _subVV(_qhatv.__slice__(0, _s).__copy__().__t__, _qhatv.__slice__(0, _s).__copy__().__t__, _v.__slice__(0, _s).__copy__().__t__);
                    if (_qhatv.__t__.length > _s) {
                        _subVW(_qhatv.__slice__(_s).__copy__().__t__, _qhatv.__slice__(_s).__copy__().__t__, _c);
                    };
                    _addAt(_uu.__slice__(_s).__copy__(), _v.__slice__(_s).__copy__(), ((0 : GoInt)));
                });
            };
            if (_qhatv._cmp(_uu._norm().__copy__()) > ((0 : GoInt))) {
                throw "impossible";
            };
            var _c:Word = _subVV(_uu.__slice__(0, _qhatv.__t__.length).__copy__().__t__, _uu.__slice__(0, _qhatv.__t__.length).__copy__().__t__, _qhatv.__copy__().__t__);
            if (_c.__t__ > ((0 : GoUInt))) {
                _subVW(_uu.__slice__(_qhatv.__t__.length).__copy__().__t__, _uu.__slice__(_qhatv.__t__.length).__copy__().__t__, _c);
            };
            _addAt(_z.__copy__(), _qhat.__copy__(), _j - b);
            _j = _j - (b);
        };
        var _s:GoInt = b - ((1 : GoInt));
        var _qhat:T_nat = _temps[_depth].value.__copy__();
        _qhat._clear();
        _qhat._divRecursiveStep(_u.__slice__(_s)._norm().__copy__(), _v.__slice__(_s).__copy__(), _depth + ((1 : GoInt)), _tmp, _temps);
        _qhat = _qhat._norm().__copy__();
        var _qhatv:T_nat = _tmp.value._make(((3 : GoInt)) * _n).__copy__();
        _qhatv._clear();
        _qhatv = _qhatv._mul(_qhat.__copy__(), _v.__slice__(0, _s).__copy__()).__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                {
                    var _e:GoInt = _qhatv._cmp(_u._norm().__copy__());
                    if (_e > ((0 : GoInt))) {
                        _subVW(_qhat.__copy__().__t__, _qhat.__copy__().__t__, new Word(((1 : GoUInt))));
                        var _c:Word = _subVV(_qhatv.__slice__(0, _s).__copy__().__t__, _qhatv.__slice__(0, _s).__copy__().__t__, _v.__slice__(0, _s).__copy__().__t__);
                        if (_qhatv.__t__.length > _s) {
                            _subVW(_qhatv.__slice__(_s).__copy__().__t__, _qhatv.__slice__(_s).__copy__().__t__, _c);
                        };
                        _addAt(_u.__slice__(_s).__copy__(), _v.__slice__(_s).__copy__(), ((0 : GoInt)));
                    };
                };
            });
        };
        if (_qhatv._cmp(_u._norm().__copy__()) > ((0 : GoInt))) {
            throw "impossible";
        };
        var _c:Word = _subVV(_u.__slice__(((0 : GoInt)), _qhatv.__t__.length).__copy__().__t__, _u.__slice__(((0 : GoInt)), _qhatv.__t__.length).__copy__().__t__, _qhatv.__copy__().__t__);
        if (_c.__t__ > ((0 : GoUInt))) {
            _c = _subVW(_u.__slice__(_qhatv.__t__.length).__copy__().__t__, _u.__slice__(_qhatv.__t__.length).__copy__().__t__, _c);
        };
        if (_c.__t__ > ((0 : GoUInt))) {
            throw "impossible";
        };
        _addAt(_z.__copy__(), _qhat._norm().__copy__(), ((0 : GoInt)));
    }
    public function _divRecursive(_u:T_nat, _v:T_nat):Void {
        var _z = this.__copy__();
        var _recDepth:GoInt = ((2 : GoInt)) * stdgo.math.bits.Bits.len(((_v.__t__.length : GoUInt)));
        var _tmp:Pointer<T_nat> = _getNat(((3 : GoInt)) * _v.__t__.length);
        var _temps:Slice<Pointer<T_nat>> = new Slice<Pointer<T_nat>>(...[for (i in 0 ... ((_recDepth : GoInt)).toBasic()) new Pointer<T_nat>().nil()]);
        _z._clear();
        _z._divRecursiveStep(_u.__copy__(), _v.__copy__(), ((0 : GoInt)), _tmp, _temps);
        for (_n in _temps) {
            if (_n != null && !_n.isNil()) {
                _putNat(_n);
            };
        };
        _putNat(_tmp);
    }
    public function _divBasic(_u:T_nat, _v:T_nat):Void {
        var _q = this.__copy__();
        var _n:GoInt = _v.__t__.length;
        var _m:GoInt = _u.__t__.length - _n;
        var _qhatvp:Pointer<T_nat> = _getNat(_n + ((1 : GoInt)));
        var _qhatv:T_nat = _qhatvp.value.__copy__();
        var _vn1:Word = _v.__t__[_n - ((1 : GoInt))];
        var _rec:Word = _reciprocalWord(_vn1);
        {
            var _j:GoInt = _m;
            Go.cfor(_j >= ((0 : GoInt)), _j--, {
                var _qhat:Word = new Word(__M);
                var _ujn:Word = new Word();
                if (_j + _n < _u.__t__.length) {
                    _ujn = _u.__t__[_j + _n];
                };
                if (_ujn.__t__ != _vn1.__t__) {
                    var _rhat:Word = new Word();
                    {
                        var __tmp__ = _divWW(_ujn, _u.__t__[_j + _n - ((1 : GoInt))], _vn1, _rec);
                        _qhat = __tmp__._0;
                        _rhat = __tmp__._1;
                    };
                    var _vn2:Word = _v.__t__[_n - ((2 : GoInt))];
                    var __tmp__ = _mulWW(_qhat, _vn2), _x1:Word = __tmp__._0, _x2:Word = __tmp__._1;
                    var _ujn2:Word = _u.__t__[_j + _n - ((2 : GoInt))];
                    while (_greaterThan(_x1, _x2, _rhat, _ujn2)) {
                        _qhat.__t__--;
                        var _prevRhat:Word = _rhat;
                        _rhat = new Word(_rhat.__t__ + (_vn1).__t__);
                        if (_rhat.__t__ < _prevRhat.__t__) {
                            break;
                        };
                        {
                            var __tmp__ = _mulWW(_qhat, _vn2);
                            _x1 = __tmp__._0;
                            _x2 = __tmp__._1;
                        };
                    };
                };
                _qhatv.__t__[_n] = _mulAddVWW(_qhatv.__slice__(((0 : GoInt)), _n).__copy__().__t__, _v.__copy__().__t__, _qhat, new Word(((0 : GoUInt))));
                var _qhl:GoInt = _qhatv.__t__.length;
                if (_j + _qhl > _u.__t__.length && _qhatv.__t__[_n].__t__ == ((0 : GoUInt))) {
                    _qhl--;
                };
                var _c:Word = _subVV(_u.__slice__(_j, _j + _qhl).__copy__().__t__, _u.__slice__(_j).__copy__().__t__, _qhatv.__copy__().__t__);
                if (_c.__t__ != ((0 : GoUInt))) {
                    var _c:Word = _addVV(_u.__slice__(_j, _j + _n).__copy__().__t__, _u.__slice__(_j).__copy__().__t__, _v.__copy__().__t__);
                    if (_n < _qhl) {
                        _u.__t__[_j + _n] = new Word(_u.__t__[_j + _n].__t__ + (_c).__t__);
                    };
                    _qhat.__t__--;
                };
                if (_j == _m && _m == _q.__t__.length && _qhat.__t__ == ((0 : GoUInt))) {
                    continue;
                };
                _q.__t__[_j] = _qhat;
            });
        };
        _putNat(_qhatvp);
    }
    public function _divLarge(_u:T_nat, _uIn:T_nat, _vIn:T_nat):{ var _0 : T_nat; var _1 : T_nat; } {
        var _z = this.__copy__();
        var _q:T_nat = new T_nat(), _r:T_nat = new T_nat();
        var _n:GoInt = _vIn.__t__.length;
        var _m:GoInt = _uIn.__t__.length - _n;
        var _shift:GoUInt = _nlz(_vIn.__t__[_n - ((1 : GoInt))]);
        var _vp:Pointer<T_nat> = _getNat(_n);
        var _v:T_nat = _vp.value.__copy__();
        _shlVU(_v.__copy__().__t__, _vIn.__copy__().__t__, _shift);
        _u = _u._make(_uIn.__t__.length + ((1 : GoInt))).__copy__();
        _u.__t__[_uIn.__t__.length] = _shlVU(_u.__slice__(((0 : GoInt)), _uIn.__t__.length).__copy__().__t__, _uIn.__copy__().__t__, _shift);
        if (_alias(_z.__copy__(), _u.__copy__())) {
            _z = new T_nat();
        };
        _q = _z._make(_m + ((1 : GoInt))).__copy__();
        if (_n < _divRecursiveThreshold) {
            _q._divBasic(_u.__copy__(), _v.__copy__());
        } else {
            _q._divRecursive(_u.__copy__(), _v.__copy__());
        };
        _putNat(_vp);
        _q = _q._norm().__copy__();
        _shrVU(_u.__copy__().__t__, _u.__copy__().__t__, _shift);
        _r = _u._norm().__copy__();
        return { _0 : _q.__copy__(), _1 : _r.__copy__() };
    }
    public function _modW(_d:Word):Word {
        var _x = this.__copy__();
        var _r:Word = new Word();
        var _q:T_nat = new T_nat();
        _q = _q._make(_x.__t__.length).__copy__();
        return _divWVW(_q.__copy__().__t__, new Word(((0 : GoUInt))), _x.__copy__().__t__, _d);
    }
    public function _divW(_x:T_nat, _y:Word):{ var _0 : T_nat; var _1 : Word; } {
        var _z = this.__copy__();
        var _q:T_nat = new T_nat(), _r:Word = new Word();
        var _m:GoInt = _x.__t__.length;
        if (_y.__t__ == ((0 : GoUInt))) {
            throw "division by zero";
        } else if (_y.__t__ == ((1 : GoUInt))) {
            _q = _z._set(_x.__copy__()).__copy__();
            return { _0 : _q, _1 : _r };
        } else if (_m == ((0 : GoInt))) {
            _q = _z.__slice__(0, ((0 : GoInt))).__copy__();
            return { _0 : _q, _1 : _r };
        };
        _z = _z._make(_m).__copy__();
        _r = _divWVW(_z.__copy__().__t__, new Word(((0 : GoUInt))), _x.__copy__().__t__, _y);
        _q = _z._norm().__copy__();
        return { _0 : _q, _1 : _r };
    }
    public function _div(_z2:T_nat, _u:T_nat, _v:T_nat):{ var _0 : T_nat; var _1 : T_nat; } {
        var _z = this.__copy__();
        var _q:T_nat = new T_nat(), _r:T_nat = new T_nat();
        if (_v.__t__.length == ((0 : GoInt))) {
            throw "division by zero";
        };
        if (_u._cmp(_v.__copy__()) < ((0 : GoInt))) {
            _q = _z.__slice__(0, ((0 : GoInt))).__copy__();
            _r = _z2._set(_u.__copy__()).__copy__();
            return { _0 : _q, _1 : _r };
        };
        if (_v.__t__.length == ((1 : GoInt))) {
            var _r2:Word = new Word();
            {
                var __tmp__ = _z._divW(_u.__copy__(), _v.__t__[((0 : GoInt))]);
                _q = __tmp__._0.__copy__();
                _r2 = __tmp__._1;
            };
            _r = _z2._setWord(_r2).__copy__();
            return { _0 : _q, _1 : _r };
        };
        {
            var __tmp__ = _z._divLarge(_z2.__copy__(), _u.__copy__(), _v.__copy__());
            _q = __tmp__._0.__copy__();
            _r = __tmp__._1.__copy__();
        };
        return { _0 : _q, _1 : _r };
    }
    public function _expWW(_x:Word, _y:Word):T_nat {
        var _z = this.__copy__();
        return _z._expNN(((new T_nat() : T_nat))._setWord(_x).__copy__(), ((new T_nat() : T_nat))._setWord(_y).__copy__(), new T_nat()).__copy__();
    }
    public function _convertWords(_s:Slice<GoByte>, _b:Word, _ndigits:GoInt, _bb:Word, _table:Slice<T_divisor>):Void {
        var _q = this.__copy__();
        if (_table != null && !_table.isNil()) {
            var _r:T_nat = new T_nat();
            var _index:GoInt = _table.length - ((1 : GoInt));
            while (_q.__t__.length > _leafSize) {
                var _maxLength:GoInt = _q._bitLen();
                var _minLength:GoInt = (_maxLength >> ((1 : GoUnTypedInt)));
                while (_index > ((0 : GoInt)) && _table[_index - ((1 : GoInt))]._nbits > _minLength) {
                    _index--;
                };
                if (_table[_index]._nbits >= _maxLength && _table[_index]._bbb._cmp(_q.__copy__()) >= ((0 : GoInt))) {
                    _index--;
                    if (_index < ((0 : GoInt))) {
                        throw "internal inconsistency";
                    };
                };
                {
                    var __tmp__ = _q._div(_r.__copy__(), _q.__copy__(), _table[_index]._bbb.__copy__());
                    _q = __tmp__._0.__copy__();
                    _r = __tmp__._1.__copy__();
                };
                var _h:GoInt = _s.length - _table[_index]._ndigits;
                _r._convertWords(_s.__slice__(_h), _b, _ndigits, _bb, _table.__slice__(((0 : GoInt)), _index));
                _s = _s.__slice__(0, _h);
            };
        };
        var _i:GoInt = _s.length;
        var _r:Word = new Word();
        if (_b.__t__ == ((10 : GoUInt))) {
            while (_q.__t__.length > ((0 : GoInt))) {
                {
                    var __tmp__ = _q._divW(_q.__copy__(), _bb);
                    _q = __tmp__._0.__copy__();
                    _r = __tmp__._1;
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _ndigits && _i > ((0 : GoInt)), _j++, {
                        _i--;
                        var _t:Word = new Word(_r.__t__ / ((10 : GoUInt)));
                        _s[_i] = (("0".code : GoRune)) + new Word(_r.__t__ - new Word(_t.__t__ * ((10 : GoUInt))).__t__).__t__;
                        _r = _t;
                    });
                };
            };
        } else {
            while (_q.__t__.length > ((0 : GoInt))) {
                {
                    var __tmp__ = _q._divW(_q.__copy__(), _bb);
                    _q = __tmp__._0.__copy__();
                    _r = __tmp__._1;
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _ndigits && _i > ((0 : GoInt)), _j++, {
                        _i--;
                        _s[_i] = _digits[new Word(_r.__t__ % _b.__t__).__t__];
                        _r = new Word(_r.__t__ / (_b).__t__);
                    });
                };
            };
        };
        while (_i > ((0 : GoInt))) {
            _i--;
            _s[_i] = (("0".code : GoRune));
        };
    }
    public function _itoa(_neg:Bool, _base:GoInt):Slice<GoByte> {
        var _x = this.__copy__();
        if (_base < ((2 : GoInt)) || _base > maxBase) {
            throw "invalid base";
        };
        if (_x.__t__.length == ((0 : GoInt))) {
            return (("0" : Slice<GoByte>));
        };
        var _i:GoInt = (((((_x._bitLen() : GoFloat64)) / stdgo.math.Math.log2(((_base : GoFloat64)))) : GoInt)) + ((1 : GoInt));
        if (_neg) {
            _i++;
        };
        var _s:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_i : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _b:Word = new Word(_base);
            if (_b.__t__ == new Word(_b.__t__ & new Word(-_b.__t__).__t__).__t__) {
                var _shift:GoUInt = ((stdgo.math.bits.Bits.trailingZeros(_b.__t__) : GoUInt));
                var _mask:Word = new Word(new Word((new Word(((1 : GoUInt)) << _shift)).__t__ - ((1 : GoUInt))).__t__);
                var _w:Word = _x.__t__[((0 : GoInt))];
                var _nbits:GoUInt = ((__W : GoUInt));
                {
                    var _k:GoInt = ((1 : GoInt));
                    Go.cfor(_k < _x.__t__.length, _k++, {
                        while (_nbits >= _shift) {
                            _i--;
                            _s[_i] = _digits[new Word(_w.__t__ & _mask.__t__).__t__];
                            _w = (new Word(_w.__t__ >> (_shift)));
                            _nbits = _nbits - (_shift);
                        };
                        if (_nbits == ((0 : GoUInt))) {
                            _w = _x.__t__[_k];
                            _nbits = __W;
                        } else {
                            _w = new Word(_w.__t__ | ((new Word(_x.__t__[_k].__t__ << _nbits))).__t__);
                            _i--;
                            _s[_i] = _digits[new Word(_w.__t__ & _mask.__t__).__t__];
                            _w = (new Word(_x.__t__[_k].__t__ >> (_shift - _nbits)));
                            _nbits = __W - (_shift - _nbits);
                        };
                    });
                };
                while (_w.__t__ != ((0 : GoUInt))) {
                    _i--;
                    _s[_i] = _digits[new Word(_w.__t__ & _mask.__t__).__t__];
                    _w = (new Word(_w.__t__ >> (_shift)));
                };
            } else {
                var __tmp__ = _maxPow(_b), _bb:Word = __tmp__._0, _ndigits:GoInt = __tmp__._1;
                var _table:Slice<T_divisor> = _divisors(_x.__t__.length, _b, _ndigits, _bb);
                var _q:T_nat = ((new T_nat() : T_nat))._set(_x.__copy__()).__copy__();
                _q._convertWords(_s, _b, _ndigits, _bb, _table);
                _i = ((0 : GoInt));
                while (_s[_i] == (("0".code : GoRune))) {
                    _i++;
                };
            };
        };
        if (_neg) {
            _i--;
            _s[_i] = (("-".code : GoRune));
        };
        return _s.__slice__(_i);
    }
    public function _utoa(_base:GoInt):Slice<GoByte> {
        var _x = this.__copy__();
        return _x._itoa(false, _base);
    }
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt, _fracOk:Bool):{ var _0 : T_nat; var _1 : GoInt; var _2 : GoInt; var _3 : Error; } {
        var _z = this.__copy__();
        var _res:T_nat = new T_nat(), _b:GoInt = ((0 : GoInt)), _count:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _baseOk:Bool = _base == ((0 : GoInt)) || !_fracOk && ((2 : GoInt)) <= _base && _base <= maxBase || _fracOk && (_base == ((2 : GoInt)) || _base == ((8 : GoInt)) || _base == ((10 : GoInt)) || _base == ((16 : GoInt)));
        if (!_baseOk) {
            throw stdgo.fmt.Fmt.sprintf("invalid number base %d", Go.toInterface(_base));
        };
        var _prev:GoInt32 = ((".".code : GoRune));
        var _invalSep:Bool = false;
        var __tmp__ = _r.readByte(), _ch:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _b:GoInt = _base, _prefix:GoInt = ((0 : GoInt));
        if (_base == ((0 : GoInt))) {
            _b = ((10 : GoInt));
            if (_err == null && _ch == (("0".code : GoRune))) {
                _prev = (("0".code : GoRune));
                _count = ((1 : GoInt));
                {
                    var __tmp__ = _r.readByte();
                    _ch = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    if (_ch == (("b".code : GoRune)) || _ch == (("B".code : GoRune))) {
                        {
                            final __tmp__0 = ((2 : GoInt));
                            final __tmp__1 = (("b".code : GoRune));
                            _b = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (_ch == (("o".code : GoRune)) || _ch == (("O".code : GoRune))) {
                        {
                            final __tmp__0 = ((8 : GoInt));
                            final __tmp__1 = (("o".code : GoRune));
                            _b = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (_ch == (("x".code : GoRune)) || _ch == (("X".code : GoRune))) {
                        {
                            final __tmp__0 = ((16 : GoInt));
                            final __tmp__1 = (("x".code : GoRune));
                            _b = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else {
                        if (!_fracOk) {
                            {
                                final __tmp__0 = ((8 : GoInt));
                                final __tmp__1 = (("0".code : GoRune));
                                _b = __tmp__0;
                                _prefix = __tmp__1;
                            };
                        };
                    };
                    if (_prefix != ((0 : GoInt))) {
                        _count = ((0 : GoInt));
                        if (_prefix != (("0".code : GoRune))) {
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
        _z = _z.__slice__(0, ((0 : GoInt))).__copy__();
        var _b1:Word = new Word(_b);
        var __tmp__ = _maxPow(_b1), _bn:Word = __tmp__._0, _n:GoInt = __tmp__._1;
        var _di:Word = new Word(((0 : GoUInt)));
        var _i:GoInt = ((0 : GoInt));
        var _dp:GoInt = -((1 : GoUnTypedInt));
        while (_err == null) {
            if (_ch == ((".".code : GoRune)) && _fracOk) {
                _fracOk = false;
                if (_prev == (("_".code : GoRune))) {
                    _invalSep = true;
                };
                _prev = ((".".code : GoRune));
                _dp = _count;
            } else if (_ch == (("_".code : GoRune)) && _base == ((0 : GoInt))) {
                if (_prev != (("0".code : GoRune))) {
                    _invalSep = true;
                };
                _prev = (("_".code : GoRune));
            } else {
                var _d1:Word = new Word();
                if ((("0".code : GoRune)) <= _ch && _ch <= (("9".code : GoRune))) {
                    _d1 = new Word((_ch - (("0".code : GoRune))));
                } else if ((("a".code : GoRune)) <= _ch && _ch <= (("z".code : GoRune))) {
                    _d1 = new Word((_ch - (("a".code : GoRune)) + ((10 : GoUInt8))));
                } else if ((("A".code : GoRune)) <= _ch && _ch <= (("Z".code : GoRune))) {
                    if (_b <= _maxBaseSmall) {
                        _d1 = new Word((_ch - (("A".code : GoRune)) + ((10 : GoUInt8))));
                    } else {
                        _d1 = new Word((_ch - (("A".code : GoRune)) + _maxBaseSmall));
                    };
                } else {
                    _d1 = new Word(maxBase + ((1 : GoInt32)));
                };
                if (_d1.__t__ >= _b1.__t__) {
                    _r.unreadByte();
                    break;
                };
                _prev = (("0".code : GoRune));
                _count++;
                _di = new Word(new Word(_di.__t__ * _b1.__t__).__t__ + _d1.__t__);
                _i++;
                if (_i == _n) {
                    _z = _z._mulAddWW(_z.__copy__(), _bn, _di).__copy__();
                    _di = new Word(((0 : GoUInt)));
                    _i = ((0 : GoInt));
                };
            };
            {
                var __tmp__ = _r.readByte();
                _ch = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            _err = ((null : stdgo.Error));
        };
        if (_err == null && (_invalSep || _prev == (("_".code : GoRune)))) {
            _err = _errInvalSep;
        };
        if (_count == ((0 : GoInt))) {
            if (_prefix == (("0".code : GoRune))) {
                return { _0 : _z.__slice__(0, ((0 : GoInt))).__copy__(), _1 : ((10 : GoInt)), _2 : ((1 : GoInt)), _3 : _err };
            };
            _err = _errNoDigits;
        };
        if (_i > ((0 : GoInt))) {
            _z = _z._mulAddWW(_z.__copy__(), _pow(_b1, _i), _di).__copy__();
        };
        _res = _z._norm().__copy__();
        if (_dp >= ((0 : GoInt))) {
            _count = _dp - _count;
        };
        return { _0 : _res, _1 : _b, _2 : _count, _3 : _err };
    }
    public function _sqrt(_x:T_nat):T_nat {
        var _z = this.__copy__();
        if (_x._cmp(_natOne.__copy__()) <= ((0 : GoInt))) {
            return _z._set(_x.__copy__()).__copy__();
        };
        if (_alias(_z.__copy__(), _x.__copy__())) {
            _z = new T_nat();
        };
        var _z1:T_nat = new T_nat(), _z2:T_nat = new T_nat();
        _z1 = _z.__copy__();
        _z1 = _z1._setUint64(((1 : GoUInt64))).__copy__();
        _z1 = _z1._shl(_z1.__copy__(), (((_x._bitLen() + ((1 : GoInt))) : GoUInt)) / ((2 : GoUInt))).__copy__();
        {
            var _n:GoInt = ((0 : GoInt));
            Go.cfor(true, _n++, {
                {
                    var __tmp__ = _z2._div(new T_nat(), _x.__copy__(), _z1.__copy__());
                    _z2 = __tmp__._0.__copy__();
                };
                _z2 = _z2._add(_z2.__copy__(), _z1.__copy__()).__copy__();
                _z2 = _z2._shr(_z2.__copy__(), ((1 : GoUInt))).__copy__();
                if (_z2._cmp(_z1.__copy__()) >= ((0 : GoInt))) {
                    if (_n & ((1 : GoInt)) == ((0 : GoInt))) {
                        return _z1.__copy__();
                    };
                    return _z._set(_z1.__copy__()).__copy__();
                };
                {
                    final __tmp__0 = _z2.__copy__();
                    final __tmp__1 = _z1.__copy__();
                    _z1 = __tmp__0;
                    _z2 = __tmp__1;
                };
            });
        };
    }
    public function _setBytes(_buf:Slice<GoByte>):T_nat {
        var _z = this.__copy__();
        _z = _z._make((_buf.length + __S - ((1 : GoInt))) / __S).__copy__();
        var _i:GoInt = _buf.length;
        {
            var _k:GoInt = ((0 : GoInt));
            Go.cfor(_i >= __S, _k++, {
                _z.__t__[_k] = _bigEndianWord(_buf.__slice__(_i - __S, _i));
                _i = _i - (__S);
            });
        };
        if (_i > ((0 : GoInt))) {
            var _d:Word = new Word();
            {
                var _s:GoUInt = ((((0 : GoUInt)) : GoUInt));
                Go.cfor(_i > ((0 : GoInt)), _s = _s + (((8 : GoUInt))), {
                    _d = new Word(_d.__t__ | ((new Word(new Word(_buf[_i - ((1 : GoInt))]).__t__ << _s))).__t__);
                    _i--;
                });
            };
            _z.__t__[_z.__t__.length - ((1 : GoInt))] = _d;
        };
        return _z._norm().__copy__();
    }
    public function _bytes(_buf:Slice<GoByte>):GoInt {
        var _z = this.__copy__();
        var _i:GoInt = ((0 : GoInt));
        _i = _buf.length;
        for (_d in _z.__t__) {
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j < __S, _j++, {
                    _i--;
                    if (_i >= ((0 : GoInt))) {
                        _buf[_i] = _d.__t__;
                    } else if (_d.__t__ != ((0 : GoUInt8))) {
                        throw "math/big: buffer too small to fit value";
                    };
                    _d = (new Word(_d.__t__ >> (((8 : GoUnTypedInt)))));
                });
            };
        };
        if (_i < ((0 : GoInt))) {
            _i = ((0 : GoInt));
        };
        while (_i < _buf.length && _buf[_i] == ((0 : GoUInt8))) {
            _i++;
        };
        return _i;
    }
    public function _expNNMontgomery(_x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        var _z = this.__copy__();
        var _numWords:GoInt = _m.__t__.length;
        if (_x.__t__.length > _numWords) {
            {
                var __tmp__ = ((new T_nat() : T_nat))._div(new T_nat(), _x.__copy__(), _m.__copy__());
                _x = __tmp__._1.__copy__();
            };
        };
        if (_x.__t__.length < _numWords) {
            var _rr:T_nat = new T_nat(new Slice<Word>(...[for (i in 0 ... ((_numWords : GoInt)).toBasic()) new Word()])).__copy__();
            Go.copy(_rr, _x);
            _x = _rr.__copy__();
        };
        var _k0:Word = new Word(((2 : GoUInt)) - _m.__t__[((0 : GoInt))].__t__);
        var _t:Word = new Word(_m.__t__[((0 : GoInt))].__t__ - ((1 : GoUInt)));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < __W, _i = (_i << (((1 : GoUnTypedInt)))), {
                _t = new Word(_t.__t__ * (_t).__t__);
                _k0 = new Word(_k0.__t__ * ((new Word(_t.__t__ + ((1 : GoUInt))))).__t__);
            });
        };
        _k0 = new Word(-_k0.__t__);
        var rr:T_nat = ((new T_nat() : T_nat))._setWord(new Word(((1 : GoUInt)))).__copy__();
        var _zz:T_nat = ((new T_nat() : T_nat))._shl(rr.__copy__(), (((((2 : GoInt)) * _numWords * __W) : GoUInt))).__copy__();
        {
            var __tmp__ = ((new T_nat() : T_nat))._div(rr.__copy__(), _zz.__copy__(), _m.__copy__());
            rr = __tmp__._1.__copy__();
        };
        if (rr.__t__.length < _numWords) {
            _zz = _zz._make(_numWords).__copy__();
            Go.copy(_zz, rr);
            rr = _zz.__copy__();
        };
        var _one:T_nat = new T_nat(new Slice<Word>(...[for (i in 0 ... ((_numWords : GoInt)).toBasic()) new Word()])).__copy__();
        _one.__t__[((0 : GoInt))] = new Word(((1 : GoUInt)));
        final _n:GoUnTypedInt = ((4 : GoUnTypedInt));
        var _powers:GoArray<T_nat> = new GoArray<T_nat>(...[for (i in 0 ... 16) new T_nat()]);
        _powers[((0 : GoInt))] = _powers[((0 : GoInt))]._montgomery(_one.__copy__(), rr.__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
        _powers[((1 : GoInt))] = _powers[((1 : GoInt))]._montgomery(_x.__copy__(), rr.__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < (((1 : GoUnTypedInt)) << _n), _i++, {
                _powers[_i] = _powers[_i]._montgomery(_powers[_i - ((1 : GoInt))].__copy__(), _powers[((1 : GoInt))].__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
            });
        };
        _z = _z._make(_numWords).__copy__();
        Go.copy(_z, _powers[((0 : GoInt))]);
        _zz = _zz._make(_numWords).__copy__();
        {
            var _i:GoInt = _y.__t__.length - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                var _yi:Word = _y.__t__[_i];
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < __W, _j = _j + (_n), {
                        if (_i != _y.__t__.length - ((1 : GoInt)) || _j != ((0 : GoInt))) {
                            _zz = _zz._montgomery(_z.__copy__(), _z.__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
                            _z = _z._montgomery(_zz.__copy__(), _zz.__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
                            _zz = _zz._montgomery(_z.__copy__(), _z.__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
                            _z = _z._montgomery(_zz.__copy__(), _zz.__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
                        };
                        _zz = _zz._montgomery(_z.__copy__(), _powers[(new Word(_yi.__t__ >> (__W - _n))).__t__].__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
                        {
                            final __tmp__0 = _zz.__copy__();
                            final __tmp__1 = _z.__copy__();
                            _z = __tmp__0;
                            _zz = __tmp__1;
                        };
                        _yi = (new Word(_yi.__t__ << (_n)));
                    });
                };
            });
        };
        _zz = _zz._montgomery(_z.__copy__(), _one.__copy__(), _m.__copy__(), _k0, _numWords).__copy__();
        if (_zz._cmp(_m.__copy__()) >= ((0 : GoInt))) {
            _zz = _zz._sub(_zz.__copy__(), _m.__copy__()).__copy__();
            if (_zz._cmp(_m.__copy__()) >= ((0 : GoInt))) {
                {
                    var __tmp__ = ((new T_nat() : T_nat))._div(new T_nat(), _zz.__copy__(), _m.__copy__());
                    _zz = __tmp__._1.__copy__();
                };
            };
        };
        return _zz._norm().__copy__();
    }
    public function _expNNWindowed(_x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        var _z = this.__copy__();
        var _zz:T_nat = new T_nat(), _r:T_nat = new T_nat();
        final _n:GoUnTypedInt = ((4 : GoUnTypedInt));
        var _powers:GoArray<T_nat> = new GoArray<T_nat>(...[for (i in 0 ... 16) new T_nat()]);
        _powers[((0 : GoInt))] = _natOne.__copy__();
        _powers[((1 : GoInt))] = _x.__copy__();
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < (((1 : GoUnTypedInt)) << _n), _i = _i + (((2 : GoInt))), {
                var _p2:Pointer<T_nat> = Go.pointer(_powers[_i / ((2 : GoInt))]), _p:Pointer<T_nat> = Go.pointer(_powers[_i]), _p1:Pointer<T_nat> = Go.pointer(_powers[_i + ((1 : GoInt))]);
                _p.value = _p.value._sqr(_p2.value.__copy__()).__copy__();
                {
                    var __tmp__ = _zz._div(_r.__copy__(), _p.value.__copy__(), _m.__copy__());
                    _zz = __tmp__._0.__copy__();
                    _r = __tmp__._1.__copy__();
                };
                {
                    final __tmp__0 = _r.__copy__();
                    final __tmp__1 = _p.value.__copy__();
                    _p.value = __tmp__0;
                    _r = __tmp__1;
                };
                _p1.value = _p1.value._mul(_p.value.__copy__(), _x.__copy__()).__copy__();
                {
                    var __tmp__ = _zz._div(_r.__copy__(), _p1.value.__copy__(), _m.__copy__());
                    _zz = __tmp__._0.__copy__();
                    _r = __tmp__._1.__copy__();
                };
                {
                    final __tmp__0 = _r.__copy__();
                    final __tmp__1 = _p1.value.__copy__();
                    _p1.value = __tmp__0;
                    _r = __tmp__1;
                };
            });
        };
        _z = _z._setWord(new Word(((1 : GoUInt)))).__copy__();
        {
            var _i:GoInt = _y.__t__.length - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                var _yi:Word = _y.__t__[_i];
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < __W, _j = _j + (_n), {
                        if (_i != _y.__t__.length - ((1 : GoInt)) || _j != ((0 : GoInt))) {
                            _zz = _zz._sqr(_z.__copy__()).__copy__();
                            {
                                final __tmp__0 = _z.__copy__();
                                final __tmp__1 = _zz.__copy__();
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div(_r.__copy__(), _z.__copy__(), _m.__copy__());
                                _zz = __tmp__._0.__copy__();
                                _r = __tmp__._1.__copy__();
                            };
                            {
                                final __tmp__0 = _r.__copy__();
                                final __tmp__1 = _z.__copy__();
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                            _zz = _zz._sqr(_z.__copy__()).__copy__();
                            {
                                final __tmp__0 = _z.__copy__();
                                final __tmp__1 = _zz.__copy__();
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div(_r.__copy__(), _z.__copy__(), _m.__copy__());
                                _zz = __tmp__._0.__copy__();
                                _r = __tmp__._1.__copy__();
                            };
                            {
                                final __tmp__0 = _r.__copy__();
                                final __tmp__1 = _z.__copy__();
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                            _zz = _zz._sqr(_z.__copy__()).__copy__();
                            {
                                final __tmp__0 = _z.__copy__();
                                final __tmp__1 = _zz.__copy__();
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div(_r.__copy__(), _z.__copy__(), _m.__copy__());
                                _zz = __tmp__._0.__copy__();
                                _r = __tmp__._1.__copy__();
                            };
                            {
                                final __tmp__0 = _r.__copy__();
                                final __tmp__1 = _z.__copy__();
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                            _zz = _zz._sqr(_z.__copy__()).__copy__();
                            {
                                final __tmp__0 = _z.__copy__();
                                final __tmp__1 = _zz.__copy__();
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                            {
                                var __tmp__ = _zz._div(_r.__copy__(), _z.__copy__(), _m.__copy__());
                                _zz = __tmp__._0.__copy__();
                                _r = __tmp__._1.__copy__();
                            };
                            {
                                final __tmp__0 = _r.__copy__();
                                final __tmp__1 = _z.__copy__();
                                _z = __tmp__0;
                                _r = __tmp__1;
                            };
                        };
                        _zz = _zz._mul(_z.__copy__(), _powers[(new Word(_yi.__t__ >> (__W - _n))).__t__].__copy__()).__copy__();
                        {
                            final __tmp__0 = _z.__copy__();
                            final __tmp__1 = _zz.__copy__();
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        {
                            var __tmp__ = _zz._div(_r.__copy__(), _z.__copy__(), _m.__copy__());
                            _zz = __tmp__._0.__copy__();
                            _r = __tmp__._1.__copy__();
                        };
                        {
                            final __tmp__0 = _r.__copy__();
                            final __tmp__1 = _z.__copy__();
                            _z = __tmp__0;
                            _r = __tmp__1;
                        };
                        _yi = (new Word(_yi.__t__ << (_n)));
                    });
                };
            });
        };
        return _z._norm().__copy__();
    }
    public function _expNN(_x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        var _z = this.__copy__();
        if (_alias(_z.__copy__(), _x.__copy__()) || _alias(_z.__copy__(), _y.__copy__())) {
            _z = new T_nat();
        };
        if (_m.__t__.length == ((1 : GoInt)) && _m.__t__[((0 : GoInt))].__t__ == ((1 : GoUInt))) {
            return _z._setWord(new Word(((0 : GoUInt)))).__copy__();
        };
        if (_y.__t__.length == ((0 : GoInt))) {
            return _z._setWord(new Word(((1 : GoUInt)))).__copy__();
        };
        if (_y.__t__.length == ((1 : GoInt)) && _y.__t__[((0 : GoInt))].__t__ == ((1 : GoUInt)) && _m.__t__.length != ((0 : GoInt))) {
            {
                var __tmp__ = ((new T_nat() : T_nat))._div(_z.__copy__(), _x.__copy__(), _m.__copy__());
                _z = __tmp__._1.__copy__();
            };
            return _z.__copy__();
        };
        if (_m.__t__.length != ((0 : GoInt))) {
            _z = _z._make(_m.__t__.length).__copy__();
        };
        _z = _z._set(_x.__copy__()).__copy__();
        if (_x._cmp(_natOne.__copy__()) > ((0 : GoInt)) && _y.__t__.length > ((1 : GoInt)) && _m.__t__.length > ((0 : GoInt))) {
            if (new Word(_m.__t__[((0 : GoInt))].__t__ & ((1 : GoUInt))).__t__ == ((1 : GoUInt))) {
                return _z._expNNMontgomery(_x.__copy__(), _y.__copy__(), _m.__copy__()).__copy__();
            };
            return _z._expNNWindowed(_x.__copy__(), _y.__copy__(), _m.__copy__()).__copy__();
        };
        var _v:Word = _y.__t__[_y.__t__.length - ((1 : GoInt))];
        var _shift:GoUInt = _nlz(_v) + ((1 : GoUInt));
        _v = (new Word(_v.__t__ << (_shift)));
        var _q:T_nat = new T_nat();
        final _mask:GoUnTypedInt = (((1 : GoUnTypedInt)) << (__W - ((1 : GoUnTypedInt))));
        var _w:GoInt = __W - ((_shift : GoInt));
        var _zz:T_nat = new T_nat(), _r:T_nat = new T_nat();
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _w, _j++, {
                _zz = _zz._sqr(_z.__copy__()).__copy__();
                {
                    final __tmp__0 = _z.__copy__();
                    final __tmp__1 = _zz.__copy__();
                    _zz = __tmp__0;
                    _z = __tmp__1;
                };
                if (new Word(_v.__t__ & _mask).__t__ != ((0 : GoUInt))) {
                    _zz = _zz._mul(_z.__copy__(), _x.__copy__()).__copy__();
                    {
                        final __tmp__0 = _z.__copy__();
                        final __tmp__1 = _zz.__copy__();
                        _zz = __tmp__0;
                        _z = __tmp__1;
                    };
                };
                if (_m.__t__.length != ((0 : GoInt))) {
                    {
                        var __tmp__ = _zz._div(_r.__copy__(), _z.__copy__(), _m.__copy__());
                        _zz = __tmp__._0.__copy__();
                        _r = __tmp__._1.__copy__();
                    };
                    {
                        final __tmp__0 = _q.__copy__();
                        final __tmp__1 = _z.__copy__();
                        final __tmp__2 = _zz.__copy__();
                        final __tmp__3 = _r.__copy__();
                        _zz = __tmp__0;
                        _r = __tmp__1;
                        _q = __tmp__2;
                        _z = __tmp__3;
                    };
                };
                _v = (new Word(_v.__t__ << (((1 : GoUnTypedInt)))));
            });
        };
        {
            var _i:GoInt = _y.__t__.length - ((2 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _v = _y.__t__[_i];
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < __W, _j++, {
                        _zz = _zz._sqr(_z.__copy__()).__copy__();
                        {
                            final __tmp__0 = _z.__copy__();
                            final __tmp__1 = _zz.__copy__();
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        if (new Word(_v.__t__ & _mask).__t__ != ((0 : GoUInt))) {
                            _zz = _zz._mul(_z.__copy__(), _x.__copy__()).__copy__();
                            {
                                final __tmp__0 = _z.__copy__();
                                final __tmp__1 = _zz.__copy__();
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                        };
                        if (_m.__t__.length != ((0 : GoInt))) {
                            {
                                var __tmp__ = _zz._div(_r.__copy__(), _z.__copy__(), _m.__copy__());
                                _zz = __tmp__._0.__copy__();
                                _r = __tmp__._1.__copy__();
                            };
                            {
                                final __tmp__0 = _q.__copy__();
                                final __tmp__1 = _z.__copy__();
                                final __tmp__2 = _zz.__copy__();
                                final __tmp__3 = _r.__copy__();
                                _zz = __tmp__0;
                                _r = __tmp__1;
                                _q = __tmp__2;
                                _z = __tmp__3;
                            };
                        };
                        _v = (new Word(_v.__t__ << (((1 : GoUnTypedInt)))));
                    });
                };
            });
        };
        return _z._norm().__copy__();
    }
    public function _random(_rand:Pointer<stdgo.math.rand.Rand.Rand>, _limit:T_nat, _n:GoInt):T_nat {
        var _z = this.__copy__();
        if (_alias(_z.__copy__(), _limit.__copy__())) {
            _z = new T_nat();
        };
        _z = _z._make(_limit.__t__.length).__copy__();
        var _bitLengthOfMSW:GoUInt = (((_n % __W) : GoUInt));
        if (_bitLengthOfMSW == ((0 : GoUInt))) {
            _bitLengthOfMSW = __W;
        };
        var _mask:Word = new Word(new Word(((new Word(((1 : GoUInt)) << _bitLengthOfMSW))).__t__ - ((1 : GoUInt))).__t__);
        while (true) {
            if (__W == ((32 : GoInt))) {
                {
                    var _i;
                    for (_obj in _z.__t__.keyValueIterator()) {
                        _i = _obj.key;
                        _z.__t__[_i] = new Word(_rand.value.uint32());
                    };
                };
            } else if (__W == ((64 : GoInt))) {
                {
                    var _i;
                    for (_obj in _z.__t__.keyValueIterator()) {
                        _i = _obj.key;
                        _z.__t__[_i] = new Word(new Word(_rand.value.uint32()).__t__ | (new Word(new Word(_rand.value.uint32()).__t__ << ((32 : GoUnTypedInt)))).__t__);
                    };
                };
            } else {
                throw "unknown word size";
            };
            _z.__t__[_limit.__t__.length - ((1 : GoInt))] = new Word(_z.__t__[_limit.__t__.length - ((1 : GoInt))].__t__ & (_mask).__t__);
            if (_z._cmp(_limit.__copy__()) < ((0 : GoInt))) {
                break;
            };
        };
        return _z._norm().__copy__();
    }
    public function _xor(_x:T_nat, _y:T_nat):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        var _s:T_nat = _x.__copy__();
        if (_m < _n) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = __tmp__0;
                _m = __tmp__1;
            };
            _s = _y.__copy__();
        };
        _z = _z._make(_m).__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _z.__t__[_i] = new Word(_x.__t__[_i].__t__ ^ _y.__t__[_i].__t__);
            });
        };
        Go.copy(_z.__slice__(_n, _m), _s.__slice__(_n, _m));
        return _z._norm().__copy__();
    }
    public function _or(_x:T_nat, _y:T_nat):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        var _s:T_nat = _x.__copy__();
        if (_m < _n) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = __tmp__0;
                _m = __tmp__1;
            };
            _s = _y.__copy__();
        };
        _z = _z._make(_m).__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _z.__t__[_i] = new Word(_x.__t__[_i].__t__ | _y.__t__[_i].__t__);
            });
        };
        Go.copy(_z.__slice__(_n, _m), _s.__slice__(_n, _m));
        return _z._norm().__copy__();
    }
    public function _andNot(_x:T_nat, _y:T_nat):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        if (_n > _m) {
            _n = _m;
        };
        _z = _z._make(_m).__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _z.__t__[_i] = new Word((new Word(_x.__t__[_i].__t__ & _y.__t__[_i].__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
            });
        };
        Go.copy(_z.__slice__(_n, _m), _x.__slice__(_n, _m));
        return _z._norm().__copy__();
    }
    public function _and(_x:T_nat, _y:T_nat):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        if (_m > _n) {
            _m = _n;
        };
        _z = _z._make(_m).__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _m, _i++, {
                _z.__t__[_i] = new Word(_x.__t__[_i].__t__ & _y.__t__[_i].__t__);
            });
        };
        return _z._norm().__copy__();
    }
    public function _sticky(_i:GoUInt):GoUInt {
        var _x = this.__copy__();
        var _j:GoUInt = _i / __W;
        if (_j >= ((_x.__t__.length : GoUInt))) {
            if (_x.__t__.length == ((0 : GoInt))) {
                return ((0 : GoUInt));
            };
            return ((1 : GoUInt));
        };
        for (_x in _x.__slice__(0, _j).__t__) {
            if (_x.__t__ != ((0 : GoUInt))) {
                return ((1 : GoUInt));
            };
        };
        if ((new Word(_x.__t__[_j].__t__ << (__W - _i % __W))).__t__ != ((0 : GoUInt))) {
            return ((1 : GoUInt));
        };
        return ((0 : GoUInt));
    }
    public function _bit(_i:GoUInt):GoUInt {
        var _x = this.__copy__();
        var _j:GoUInt = _i / __W;
        if (_j >= ((_x.__t__.length : GoUInt))) {
            return ((0 : GoUInt));
        };
        return new Word((new Word(_x.__t__[_j].__t__ >> (_i % __W))).__t__ & ((1 : GoUInt))).__t__;
    }
    public function _setBit(_x:T_nat, _i:GoUInt, _b:GoUInt):T_nat {
        var _z = this.__copy__();
        var _j:GoInt = (((_i / __W) : GoInt));
        var _m:Word = (new Word(new Word(((1 : GoUInt))).__t__ << (_i % __W)));
        var _n:GoInt = _x.__t__.length;
        if (_b == ((0 : GoUInt))) {
            _z = _z._make(_n).__copy__();
            Go.copy(_z, _x);
            if (_j >= _n) {
                return _z.__copy__();
            };
            _z.__t__[_j] = new Word((new Word(_z.__t__[_j].__t__ & (_m).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
            return _z._norm().__copy__();
        } else if (_b == ((1 : GoUInt))) {
            if (_j >= _n) {
                _z = _z._make(_j + ((1 : GoInt))).__copy__();
                _z.__slice__(_n)._clear();
            } else {
                _z = _z._make(_n).__copy__();
            };
            Go.copy(_z, _x);
            _z.__t__[_j] = new Word(_z.__t__[_j].__t__ | (_m).__t__);
            return _z.__copy__();
        };
        throw "set bit is not 0 or 1";
    }
    public function _shr(_x:T_nat, _s:GoUInt):T_nat {
        var _z = this.__copy__();
        if (_s == ((0 : GoUInt))) {
            if (_same(_z.__copy__(), _x.__copy__())) {
                return _z.__copy__();
            };
            if (!_alias(_z.__copy__(), _x.__copy__())) {
                return _z._set(_x.__copy__()).__copy__();
            };
        };
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _m - (((_s / __W) : GoInt));
        if (_n <= ((0 : GoInt))) {
            return _z.__slice__(0, ((0 : GoInt))).__copy__();
        };
        _z = _z._make(_n).__copy__();
        _shrVU(_z.__copy__().__t__, _x.__slice__(_m - _n).__copy__().__t__, _s % __W);
        return _z._norm().__copy__();
    }
    public function _shl(_x:T_nat, _s:GoUInt):T_nat {
        var _z = this.__copy__();
        if (_s == ((0 : GoUInt))) {
            if (_same(_z.__copy__(), _x.__copy__())) {
                return _z.__copy__();
            };
            if (!_alias(_z.__copy__(), _x.__copy__())) {
                return _z._set(_x.__copy__()).__copy__();
            };
        };
        var _m:GoInt = _x.__t__.length;
        if (_m == ((0 : GoInt))) {
            return _z.__slice__(0, ((0 : GoInt))).__copy__();
        };
        var _n:GoInt = _m + (((_s / __W) : GoInt));
        _z = _z._make(_n + ((1 : GoInt))).__copy__();
        _z.__t__[_n] = _shlVU(_z.__slice__(_n - _m, _n).__copy__().__t__, _x.__copy__().__t__, _s % __W);
        _z.__slice__(((0 : GoInt)), _n - _m)._clear();
        return _z._norm().__copy__();
    }
    public function _trailingZeroBits():GoUInt {
        var _x = this.__copy__();
        if (_x.__t__.length == ((0 : GoInt))) {
            return ((0 : GoUInt));
        };
        var _i:GoUInt = ((0 : GoUInt));
        while (_x.__t__[_i].__t__ == ((0 : GoUInt))) {
            _i++;
        };
        return _i * __W + ((stdgo.math.bits.Bits.trailingZeros(_x.__t__[_i].__t__) : GoUInt));
    }
    public function _bitLen():GoInt {
        var _x = this.__copy__();
        {
            var _i:GoInt = _x.__t__.length - ((1 : GoInt));
            if (_i >= ((0 : GoInt))) {
                return _i * __W + stdgo.math.bits.Bits.len(_x.__t__[_i].__t__);
            };
        };
        return ((0 : GoInt));
    }
    public function _mulRange(_a:GoUInt64, _b:GoUInt64):T_nat {
        var _z = this.__copy__();
        if (_a == ((0 : GoUInt64))) {
            return _z._setUint64(((0 : GoUInt64))).__copy__();
        } else if (_a > _b) {
            return _z._setUint64(((1 : GoUInt64))).__copy__();
        } else if (_a == _b) {
            return _z._setUint64(_a).__copy__();
        } else if (_a + ((1 : GoUInt64)) == _b) {
            return _z._mul(((new T_nat() : T_nat))._setUint64(_a).__copy__(), ((new T_nat() : T_nat))._setUint64(_b).__copy__()).__copy__();
        };
        var _m:GoUInt64 = (_a + _b) / ((2 : GoUInt64));
        return _z._mul(((new T_nat() : T_nat))._mulRange(_a, _m).__copy__(), ((new T_nat() : T_nat))._mulRange(_m + ((1 : GoUInt64)), _b).__copy__()).__copy__();
    }
    public function _sqr(_x:T_nat):T_nat {
        var _z = this.__copy__();
        var _n:GoInt = _x.__t__.length;
        if (_n == ((0 : GoInt))) {
            return _z.__slice__(0, ((0 : GoInt))).__copy__();
        } else if (_n == ((1 : GoInt))) {
            var _d:Word = _x.__t__[((0 : GoInt))];
            _z = _z._make(((2 : GoInt))).__copy__();
            {
                var __tmp__ = _mulWW(_d, _d);
                _z.__t__[((1 : GoInt))] = __tmp__._0;
                _z.__t__[((0 : GoInt))] = __tmp__._1;
            };
            return _z._norm().__copy__();
        };
        if (_alias(_z.__copy__(), _x.__copy__())) {
            _z = new T_nat();
        };
        if (_n < _basicSqrThreshold) {
            _z = _z._make(((2 : GoInt)) * _n).__copy__();
            _basicMul(_z.__copy__(), _x.__copy__(), _x.__copy__());
            return _z._norm().__copy__();
        };
        if (_n < _karatsubaSqrThreshold) {
            _z = _z._make(((2 : GoInt)) * _n).__copy__();
            _basicSqr(_z.__copy__(), _x.__copy__());
            return _z._norm().__copy__();
        };
        var _k:GoInt = _karatsubaLen(_n, _karatsubaSqrThreshold);
        var _x0:T_nat = _x.__slice__(((0 : GoInt)), _k).__copy__();
        _z = _z._make(_max(((6 : GoInt)) * _k, ((2 : GoInt)) * _n)).__copy__();
        _karatsubaSqr(_z.__copy__(), _x0.__copy__());
        _z = _z.__slice__(((0 : GoInt)), ((2 : GoInt)) * _n).__copy__();
        _z.__slice__(((2 : GoInt)) * _k)._clear();
        if (_k < _n) {
            var _tp:Pointer<T_nat> = _getNat(((2 : GoInt)) * _k);
            var _t:T_nat = _tp.value.__copy__();
            var _x0:T_nat = _x0._norm().__copy__();
            var _x1:T_nat = _x.__slice__(_k).__copy__();
            _t = _t._mul(_x0.__copy__(), _x1.__copy__()).__copy__();
            _addAt(_z.__copy__(), _t.__copy__(), _k);
            _addAt(_z.__copy__(), _t.__copy__(), _k);
            _t = _t._sqr(_x1.__copy__()).__copy__();
            _addAt(_z.__copy__(), _t.__copy__(), ((2 : GoInt)) * _k);
            _putNat(_tp);
        };
        return _z._norm().__copy__();
    }
    public function _mul(_x:T_nat, _y:T_nat):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        if (_m < _n) {
            return _z._mul(_y.__copy__(), _x.__copy__()).__copy__();
        } else if (_m == ((0 : GoInt)) || _n == ((0 : GoInt))) {
            return _z.__slice__(0, ((0 : GoInt))).__copy__();
        } else if (_n == ((1 : GoInt))) {
            return _z._mulAddWW(_x.__copy__(), _y.__t__[((0 : GoInt))], new Word(((0 : GoUInt)))).__copy__();
        };
        if (_alias(_z.__copy__(), _x.__copy__()) || _alias(_z.__copy__(), _y.__copy__())) {
            _z = new T_nat();
        };
        if (_n < _karatsubaThreshold) {
            _z = _z._make(_m + _n).__copy__();
            _basicMul(_z.__copy__(), _x.__copy__(), _y.__copy__());
            return _z._norm().__copy__();
        };
        var _k:GoInt = _karatsubaLen(_n, _karatsubaThreshold);
        var _x0:T_nat = _x.__slice__(((0 : GoInt)), _k).__copy__();
        var _y0:T_nat = _y.__slice__(((0 : GoInt)), _k).__copy__();
        _z = _z._make(_max(((6 : GoInt)) * _k, _m + _n)).__copy__();
        _karatsuba(_z.__copy__(), _x0.__copy__(), _y0.__copy__());
        _z = _z.__slice__(((0 : GoInt)), _m + _n).__copy__();
        _z.__slice__(((2 : GoInt)) * _k)._clear();
        if (_k < _n || _m != _n) {
            var _tp:Pointer<T_nat> = _getNat(((3 : GoInt)) * _k);
            var _t:T_nat = _tp.value.__copy__();
            var _x0:T_nat = _x0._norm().__copy__();
            var _y1:T_nat = _y.__slice__(_k).__copy__();
            _t = _t._mul(_x0.__copy__(), _y1.__copy__()).__copy__();
            _addAt(_z.__copy__(), _t.__copy__(), _k);
            var _y0:T_nat = _y0._norm().__copy__();
            {
                var _i:GoInt = _k;
                Go.cfor(_i < _x.__t__.length, _i = _i + (_k), {
                    var _xi:T_nat = _x.__slice__(_i).__copy__();
                    if (_xi.__t__.length > _k) {
                        _xi = _xi.__slice__(0, _k).__copy__();
                    };
                    _xi = _xi._norm().__copy__();
                    _t = _t._mul(_xi.__copy__(), _y0.__copy__()).__copy__();
                    _addAt(_z.__copy__(), _t.__copy__(), _i);
                    _t = _t._mul(_xi.__copy__(), _y1.__copy__()).__copy__();
                    _addAt(_z.__copy__(), _t.__copy__(), _i + _k);
                });
            };
            _putNat(_tp);
        };
        return _z._norm().__copy__();
    }
    public function _montgomery(_x:T_nat, _y:T_nat, _m:T_nat, _k:Word, _n:GoInt):T_nat {
        var _z = this.__copy__();
        if (_x.__t__.length != _n || _y.__t__.length != _n || _m.__t__.length != _n) {
            throw "math/big: mismatched montgomery number lengths";
        };
        _z = _z._make(_n * ((2 : GoInt))).__copy__();
        _z._clear();
        var _c:Word = new Word();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _d:Word = _y.__t__[_i];
                var _c2:Word = _addMulVVW(_z.__slice__(_i, _n + _i).__copy__().__t__, _x.__copy__().__t__, _d);
                var _t:Word = new Word(_z.__t__[_i].__t__ * _k.__t__);
                var _c3:Word = _addMulVVW(_z.__slice__(_i, _n + _i).__copy__().__t__, _m.__copy__().__t__, _t);
                var _cx:Word = new Word(_c.__t__ + _c2.__t__);
                var _cy:Word = new Word(_cx.__t__ + _c3.__t__);
                _z.__t__[_n + _i] = _cy;
                if (_cx.__t__ < _c2.__t__ || _cy.__t__ < _c3.__t__) {
                    _c = new Word(((1 : GoUInt)));
                } else {
                    _c = new Word(((0 : GoUInt)));
                };
            });
        };
        if (_c.__t__ != ((0 : GoUInt))) {
            _subVV(_z.__slice__(0, _n).__copy__().__t__, _z.__slice__(_n).__copy__().__t__, _m.__copy__().__t__);
        } else {
            Go.copy(_z.__slice__(0, _n), _z.__slice__(_n));
        };
        return _z.__slice__(0, _n).__copy__();
    }
    public function _mulAddWW(_x:T_nat, _y:Word, _r:Word):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        if (_m == ((0 : GoInt)) || _y.__t__ == ((0 : GoUInt))) {
            return _z._setWord(_r).__copy__();
        };
        _z = _z._make(_m + ((1 : GoInt))).__copy__();
        _z.__t__[_m] = _mulAddVWW(_z.__slice__(((0 : GoInt)), _m).__copy__().__t__, _x.__copy__().__t__, _y, _r);
        return _z._norm().__copy__();
    }
    public function _cmp(_y:T_nat):GoInt {
        var _x = this.__copy__();
        var _r:GoInt = ((0 : GoInt));
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        if (_m != _n || _m == ((0 : GoInt))) {
            if (_m < _n) {
                _r = -((1 : GoUnTypedInt));
            } else if (_m > _n) {
                _r = ((1 : GoInt));
            };
            return _r;
        };
        var _i:GoInt = _m - ((1 : GoInt));
        while (_i > ((0 : GoInt)) && _x.__t__[_i].__t__ == _y.__t__[_i].__t__) {
            _i--;
        };
        if (_x.__t__[_i].__t__ < _y.__t__[_i].__t__) {
            _r = -((1 : GoUnTypedInt));
        } else if (_x.__t__[_i].__t__ > _y.__t__[_i].__t__) {
            _r = ((1 : GoInt));
        };
        return _r;
    }
    public function _sub(_x:T_nat, _y:T_nat):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        if (_m < _n) {
            throw "underflow";
        } else if (_m == ((0 : GoInt))) {
            return _z.__slice__(0, ((0 : GoInt))).__copy__();
        } else if (_n == ((0 : GoInt))) {
            return _z._set(_x.__copy__()).__copy__();
        };
        _z = _z._make(_m).__copy__();
        var _c:Word = _subVV(_z.__slice__(((0 : GoInt)), _n).__copy__().__t__, _x.__copy__().__t__, _y.__copy__().__t__);
        if (_m > _n) {
            _c = _subVW(_z.__slice__(_n).__copy__().__t__, _x.__slice__(_n).__copy__().__t__, _c);
        };
        if (_c.__t__ != ((0 : GoUInt))) {
            throw "underflow";
        };
        return _z._norm().__copy__();
    }
    public function _add(_x:T_nat, _y:T_nat):T_nat {
        var _z = this.__copy__();
        var _m:GoInt = _x.__t__.length;
        var _n:GoInt = _y.__t__.length;
        if (_m < _n) {
            return _z._add(_y.__copy__(), _x.__copy__()).__copy__();
        } else if (_m == ((0 : GoInt))) {
            return _z.__slice__(0, ((0 : GoInt))).__copy__();
        } else if (_n == ((0 : GoInt))) {
            return _z._set(_x.__copy__()).__copy__();
        };
        _z = _z._make(_m + ((1 : GoInt))).__copy__();
        var _c:Word = _addVV(_z.__slice__(((0 : GoInt)), _n).__copy__().__t__, _x.__copy__().__t__, _y.__copy__().__t__);
        if (_m > _n) {
            _c = _addVW(_z.__slice__(_n, _m).__copy__().__t__, _x.__slice__(_n).__copy__().__t__, _c);
        };
        _z.__t__[_m] = _c;
        return _z._norm().__copy__();
    }
    public function _set(_x:T_nat):T_nat {
        var _z = this.__copy__();
        _z = _z._make(_x.__t__.length).__copy__();
        Go.copy(_z, _x);
        return _z.__copy__();
    }
    public function _setUint64(_x:GoUInt64):T_nat {
        var _z = this.__copy__();
        {
            var _w:Word = new Word(_x);
            if (_w.__t__ == _x) {
                return _z._setWord(_w).__copy__();
            };
        };
        _z = _z._make(((2 : GoInt))).__copy__();
        _z.__t__[((1 : GoInt))] = new Word((_x >> ((32 : GoUnTypedInt))));
        _z.__t__[((0 : GoInt))] = new Word(_x);
        return _z.__copy__();
    }
    public function _setWord(_x:Word):T_nat {
        var _z = this.__copy__();
        if (_x.__t__ == ((0 : GoUInt))) {
            return _z.__slice__(0, ((0 : GoInt))).__copy__();
        };
        _z = _z._make(((1 : GoInt))).__copy__();
        _z.__t__[((0 : GoInt))] = _x;
        return _z.__copy__();
    }
    public function _make(_n:GoInt):T_nat {
        var _z = this.__copy__();
        if (_n <= _z.__t__.cap()) {
            return _z.__slice__(0, _n).__copy__();
        };
        if (_n == ((1 : GoInt))) {
            return new T_nat(new Slice<Word>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new Word()])).__copy__();
        };
        final _e:GoUnTypedInt = ((4 : GoUnTypedInt));
        return new T_nat(new Slice<Word>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) new Word()]).setCap(((_n + _e : GoInt)).toBasic())).__copy__();
    }
    public function _norm():T_nat {
        var _z = this.__copy__();
        var _i:GoInt = _z.__t__.length;
        while (_i > ((0 : GoInt)) && _z.__t__[_i - ((1 : GoInt))].__t__ == ((0 : GoUInt))) {
            _i--;
        };
        return _z.__slice__(((0 : GoInt)), _i).__copy__();
    }
    public function _clear():Void {
        var _z = this.__copy__();
        {
            var _i;
            for (_obj in _z.__t__.keyValueIterator()) {
                _i = _obj.key;
                _z.__t__[_i] = new Word(((0 : GoUInt)));
            };
        };
    }
    public var __t__ : Slice<Word>;
    public function new(?t:Slice<Word>) {
        __t__ = t == null ? new Slice<Word>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_nat(__t__);
    public function __append__(args:haxe.Rest<Word>) return new T_nat(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_nat(this.__t__.__slice__(low, high));
}
@:structInit class T_divisor {
    public var _bbb : T_nat = new T_nat();
    public var _nbits : GoInt = ((0 : GoInt));
    public var _ndigits : GoInt = ((0 : GoInt));
    public function new(?_bbb:T_nat, ?_nbits:GoInt, ?_ndigits:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_bbb) + " " + Go.string(_nbits) + " " + Go.string(_ndigits) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_divisor(_bbb, _nbits, _ndigits);
    }
    public function __set__(__tmp__) {
        this._bbb = __tmp__._bbb;
        this._nbits = __tmp__._nbits;
        this._ndigits = __tmp__._ndigits;
        return this;
    }
}
@:structInit class Rat {
    public function unmarshalText(_text:Slice<GoByte>):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _z.value.setString(((_text : GoString))), _:Pointer<Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf("math/big: cannot unmarshal %q into a *big.Rat", Go.toInterface(_text));
            };
        };
        return ((null : stdgo.Error));
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _text:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_x.value.isInt()) {
            return _x.value._a.marshalText();
        };
        return { _0 : _x.value._marshal(), _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_buf:Slice<GoByte>):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_buf.length == ((0 : GoInt))) {
            _z.value = new Rat().__copy__();
            return ((null : stdgo.Error));
        };
        var _b:GoUInt8 = _buf[((0 : GoInt))];
        if ((_b >> ((1 : GoUnTypedInt))) != _ratGobVersion) {
            return stdgo.fmt.Fmt.errorf("Rat.GobDecode: encoding version %d not supported", Go.toInterface((_b >> ((1 : GoUnTypedInt)))));
        };
        final _j:GoUnTypedInt = ((1 : GoUnTypedInt)) + ((4 : GoUnTypedInt));
        var _i:GoUInt32 = _j + stdgo.encoding.binary.Binary.bigEndian.uint32(_buf.__slice__(_j - ((4 : GoUnTypedInt)), _j));
        _z.value._a._neg = _b & ((1 : GoUInt8)) != ((0 : GoUInt8));
        _z.value._a._abs = _z.value._a._abs._setBytes(_buf.__slice__(_j, _i)).__copy__();
        _z.value._b._abs = _z.value._b._abs._setBytes(_buf.__slice__(_i)).__copy__();
        return ((null : stdgo.Error));
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == null || _x.isNil()) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoUnTypedInt)) + ((4 : GoUnTypedInt)) + (_x.value._a._abs.__t__.length + _x.value._b._abs.__t__.length) * __S : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _i:GoInt = _x.value._b._abs._bytes(_buf);
        var _j:GoInt = _x.value._a._abs._bytes(_buf.__slice__(0, _i));
        var _n:GoInt = _i - _j;
        if (((((_n : GoUInt32)) : GoInt)) != _n) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("Rat.GobEncode: numerator too large") };
        };
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_buf.__slice__(_j - ((4 : GoInt)), _j), ((_n : GoUInt32)));
        _j = _j - (((1 : GoUnTypedInt)) + ((4 : GoUnTypedInt)));
        var _b:GoUInt8 = (_ratGobVersion << ((1 : GoUnTypedInt)));
        if (_x.value._a._neg) {
            _b = _b | (((1 : GoUInt8)));
        };
        _buf[_j] = _b;
        return { _0 : _buf.__slice__(_j), _1 : ((null : stdgo.Error)) };
    }
    public function floatString(_prec:GoInt):GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_x.value.isInt()) {
            _buf = _x.value._a.append(_buf, ((10 : GoInt)));
            if (_prec > ((0 : GoInt))) {
                _buf = _buf.__append__(((".".code : GoRune)));
                {
                    var _i:GoInt = _prec;
                    Go.cfor(_i > ((0 : GoInt)), _i--, {
                        _buf = _buf.__append__((("0".code : GoRune)));
                    });
                };
            };
            return ((_buf : GoString));
        };
        var __tmp__ = ((new T_nat() : T_nat))._div(((new T_nat() : T_nat)).__copy__(), _x.value._a._abs.__copy__(), _x.value._b._abs.__copy__()), _q:T_nat = __tmp__._0, _r:T_nat = __tmp__._1;
        var _p:T_nat = _natOne.__copy__();
        if (_prec > ((0 : GoInt))) {
            _p = ((new T_nat() : T_nat))._expNN(_natTen.__copy__(), ((new T_nat() : T_nat))._setUint64(((_prec : GoUInt64))).__copy__(), new T_nat()).__copy__();
        };
        _r = _r._mul(_r.__copy__(), _p.__copy__()).__copy__();
        var __tmp__ = _r._div(((new T_nat() : T_nat)).__copy__(), _r.__copy__(), _x.value._b._abs.__copy__()), _r:T_nat = __tmp__._0, _r2:T_nat = __tmp__._1;
        _r2 = _r2._add(_r2.__copy__(), _r2.__copy__()).__copy__();
        if (_x.value._b._abs._cmp(_r2.__copy__()) <= ((0 : GoInt))) {
            _r = _r._add(_r.__copy__(), _natOne.__copy__()).__copy__();
            if (_r._cmp(_p.__copy__()) >= ((0 : GoInt))) {
                _q = ((new T_nat() : T_nat))._add(_q.__copy__(), _natOne.__copy__()).__copy__();
                _r = ((new T_nat() : T_nat))._sub(_r.__copy__(), _p.__copy__()).__copy__();
            };
        };
        if (_x.value._a._neg) {
            _buf = _buf.__append__((("-".code : GoRune)));
        };
        _buf = _buf.__append__(..._q._utoa(((10 : GoInt))).toArray());
        if (_prec > ((0 : GoInt))) {
            _buf = _buf.__append__(((".".code : GoRune)));
            var _rs:Slice<GoUInt8> = _r._utoa(((10 : GoInt)));
            {
                var _i:GoInt = _prec - _rs.length;
                Go.cfor(_i > ((0 : GoInt)), _i--, {
                    _buf = _buf.__append__((("0".code : GoRune)));
                });
            };
            _buf = _buf.__append__(..._rs.toArray());
        };
        return ((_buf : GoString));
    }
    public function ratString():GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value.isInt()) {
            return _x.value._a.toString();
        };
        return _x.value.toString();
    }
    public function _marshal():Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        _buf = _x.value._a.append(_buf, ((10 : GoInt)));
        _buf = _buf.__append__((("/".code : GoRune)));
        if (_x.value._b._abs.__t__.length != ((0 : GoInt))) {
            _buf = _x.value._b.append(_buf, ((10 : GoInt)));
        } else {
            _buf = _buf.__append__((("1".code : GoRune)));
        };
        return _buf;
    }
    public function toString():GoString {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((_x.value._marshal() : GoString));
    }
    public function setString(_s:GoString):{ var _0 : Pointer<Rat>; var _1 : Bool; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Rat>().nil(), _1 : false };
        };
        {
            var _sep:GoInt = stdgo.strings.Strings.index(_s, "/");
            if (_sep >= ((0 : GoInt))) {
                {
                    var __tmp__ = _z.value._a.setString(_s.__slice__(0, _sep), ((0 : GoInt))), _:Pointer<Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : new Pointer<Rat>().nil(), _1 : false };
                    };
                };
                var _r:Pointer<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_s.__slice__(_sep + ((1 : GoInt))));
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _z.value._b._abs._scan(_r.value, ((0 : GoInt)), false);
                        _z.value._b._abs = __tmp__._0.__copy__();
                        _err = __tmp__._3;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Rat>().nil(), _1 : false };
                    };
                };
                {
                    {
                        var __tmp__ = _r.value.readByte();
                        _err = __tmp__._1;
                    };
                    if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                        return { _0 : new Pointer<Rat>().nil(), _1 : false };
                    };
                };
                if (_z.value._b._abs.__t__.length == ((0 : GoInt))) {
                    return { _0 : new Pointer<Rat>().nil(), _1 : false };
                };
                return { _0 : _z.value._norm(), _1 : true };
            };
        };
        var _r:Pointer<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_s);
        var __tmp__ = _scanSign(_r.value), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Rat>().nil(), _1 : false };
        };
        var _base:GoInt = ((0 : GoInt));
        var _fcount:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _z.value._a._abs._scan(_r.value, ((0 : GoInt)), true);
            _z.value._a._abs = __tmp__._0.__copy__();
            _base = __tmp__._1;
            _fcount = __tmp__._2;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : new Pointer<Rat>().nil(), _1 : false };
        };
        var _exp:GoInt64 = ((0 : GoInt64));
        var _ebase:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _scanExponent(_r.value, true, true);
            _exp = __tmp__._0;
            _ebase = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : new Pointer<Rat>().nil(), _1 : false };
        };
        {
            {
                var __tmp__ = _r.value.readByte();
                _err = __tmp__._1;
            };
            if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                return { _0 : new Pointer<Rat>().nil(), _1 : false };
            };
        };
        if (_z.value._a._abs.__t__.length == ((0 : GoInt))) {
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
                        throw "unexpected mantissa base";
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
                    throw "unexpected exponent base";
                    break;
                };
                break;
            };
        };
        if (_exp5 != ((0 : GoInt64))) {
            var _n:GoInt64 = _exp5;
            if (_n < ((0 : GoInt64))) {
                _n = -_n;
            };
            if (_n > ((1e+06 : GoInt64))) {
                return { _0 : new Pointer<Rat>().nil(), _1 : false };
            };
            var _pow5:T_nat = _z.value._b._abs._expNN(_natFive.__copy__(), ((new T_nat() : T_nat))._setWord(new Word(_n)).__copy__(), new T_nat()).__copy__();
            if (_exp5 > ((0 : GoInt64))) {
                _z.value._a._abs = _z.value._a._abs._mul(_z.value._a._abs.__copy__(), _pow5.__copy__()).__copy__();
                _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
            } else {
                _z.value._b._abs = _pow5.__copy__();
            };
        } else {
            _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
        };
        if (_exp2 < -((1e+07 : GoUnTypedFloat)) || _exp2 > ((1e+07 : GoInt64))) {
            return { _0 : new Pointer<Rat>().nil(), _1 : false };
        };
        if (_exp2 > ((0 : GoInt64))) {
            _z.value._a._abs = _z.value._a._abs._shl(_z.value._a._abs.__copy__(), ((_exp2 : GoUInt))).__copy__();
        } else if (_exp2 < ((0 : GoInt64))) {
            _z.value._b._abs = _z.value._b._abs._shl(_z.value._b._abs.__copy__(), ((-_exp2 : GoUInt))).__copy__();
        };
        _z.value._a._neg = _neg && _z.value._a._abs.__t__.length > ((0 : GoInt));
        return { _0 : _z.value._norm(), _1 : true };
    }
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _s.token(true, _ratTok), _tok:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (!stdgo.strings.Strings.containsRune("efgEFGv", _ch)) {
            return stdgo.errors.Errors.new_("Rat.Scan: invalid verb");
        };
        {
            var __tmp__ = _z.value.setString(((_tok : GoString))), _:Pointer<Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo.errors.Errors.new_("Rat.Scan: invalid syntax");
            };
        };
        return ((null : stdgo.Error));
    }
    public function quo(_x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_y.value._a._abs.__t__.length == ((0 : GoInt))) {
            throw "division by zero";
        };
        var _a:Int_ = new Int_(), _b:Int_ = new Int_();
        _a._scaleDenom(Go.pointer(_x.value._a), _y.value._b._abs.__copy__());
        _b._scaleDenom(Go.pointer(_y.value._a), _x.value._b._abs.__copy__());
        _z.value._a._abs = _a._abs.__copy__();
        _z.value._b._abs = _b._abs.__copy__();
        _z.value._a._neg = _a._neg != _b._neg;
        return _z.value._norm();
    }
    public function mul(_x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x == _y) {
            _z.value._a._neg = false;
            _z.value._a._abs = _z.value._a._abs._sqr(_x.value._a._abs.__copy__()).__copy__();
            if (_x.value._b._abs.__t__.length == ((0 : GoInt))) {
                _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
            } else {
                _z.value._b._abs = _z.value._b._abs._sqr(_x.value._b._abs.__copy__()).__copy__();
            };
            return _z;
        };
        _z.value._a.mul(Go.pointer(_x.value._a), Go.pointer(_y.value._a));
        _z.value._b._abs = _mulDenom(_z.value._b._abs.__copy__(), _x.value._b._abs.__copy__(), _y.value._b._abs.__copy__()).__copy__();
        return _z.value._norm();
    }
    public function sub(_x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a1:Int_ = new Int_(), _a2:Int_ = new Int_();
        _a1._scaleDenom(Go.pointer(_x.value._a), _y.value._b._abs.__copy__());
        _a2._scaleDenom(Go.pointer(_y.value._a), _x.value._b._abs.__copy__());
        _z.value._a.sub(Go.pointer(_a1), Go.pointer(_a2));
        _z.value._b._abs = _mulDenom(_z.value._b._abs.__copy__(), _x.value._b._abs.__copy__(), _y.value._b._abs.__copy__()).__copy__();
        return _z.value._norm();
    }
    public function add(_x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a1:Int_ = new Int_(), _a2:Int_ = new Int_();
        _a1._scaleDenom(Go.pointer(_x.value._a), _y.value._b._abs.__copy__());
        _a2._scaleDenom(Go.pointer(_y.value._a), _x.value._b._abs.__copy__());
        _z.value._a.add(Go.pointer(_a1), Go.pointer(_a2));
        _z.value._b._abs = _mulDenom(_z.value._b._abs.__copy__(), _x.value._b._abs.__copy__(), _y.value._b._abs.__copy__()).__copy__();
        return _z.value._norm();
    }
    public function cmp(_y:Pointer<Rat>):GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a:Int_ = new Int_(), _b:Int_ = new Int_();
        _a._scaleDenom(Go.pointer(_x.value._a), _y.value._b._abs.__copy__());
        _b._scaleDenom(Go.pointer(_y.value._a), _x.value._b._abs.__copy__());
        return _a.cmp(Go.pointer(_b));
    }
    public function _norm():Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _z.value._a._abs.__t__.length == ((0 : GoInt)))) {
                    _z.value._a._neg = false;
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _z.value._b._abs.__t__.length == ((0 : GoInt)))) {
                    _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
                    break;
                    break;
                } else {
                    var _neg:Bool = _z.value._a._neg;
                    _z.value._a._neg = false;
                    _z.value._b._neg = false;
                    {
                        var _f:Pointer<Int_> = newInt(((0 : GoInt64))).value._lehmerGCD(new Pointer<Int_>().nil(), new Pointer<Int_>().nil(), Go.pointer(_z.value._a), Go.pointer(_z.value._b));
                        if (_f.value.cmp(_intOne) != ((0 : GoInt))) {
                            {
                                var __tmp__ = _z.value._a._abs._div(new T_nat(), _z.value._a._abs.__copy__(), _f.value._abs.__copy__());
                                _z.value._a._abs = __tmp__._0.__copy__();
                            };
                            {
                                var __tmp__ = _z.value._b._abs._div(new T_nat(), _z.value._b._abs.__copy__(), _f.value._abs.__copy__());
                                _z.value._b._abs = __tmp__._0.__copy__();
                            };
                        };
                    };
                    _z.value._a._neg = _neg;
                    break;
                };
                break;
            };
        };
        return _z;
    }
    public function denom():Pointer<Int_> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _x.value._b._neg = false;
        if (_x.value._b._abs.__t__.length == ((0 : GoInt))) {
            return Go.pointer((({ _abs : new T_nat(new Slice<Word>(new Word(((1 : GoUInt))))).__copy__(), _neg : false } : Int_)));
        };
        return Go.pointer(_x.value._b);
    }
    public function num():Pointer<Int_> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Go.pointer(_x.value._a);
    }
    public function isInt():Bool {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._b._abs.__t__.length == ((0 : GoInt)) || _x.value._b._abs._cmp(_natOne.__copy__()) == ((0 : GoInt));
    }
    public function sign():GoInt {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _x.value._a.sign();
    }
    public function inv(_x:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.value._a._abs.__t__.length == ((0 : GoInt))) {
            throw "division by zero";
        };
        _z.value.set(_x);
        {
            final __tmp__0 = _z.value._b._abs.__copy__();
            final __tmp__1 = _z.value._a._abs.__copy__();
            _z.value._a._abs = __tmp__0;
            _z.value._b._abs = __tmp__1;
        };
        return _z;
    }
    public function neg(_x:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value.set(_x);
        _z.value._a._neg = _z.value._a._abs.__t__.length > ((0 : GoInt)) && !_z.value._a._neg;
        return _z;
    }
    public function abs(_x:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value.set(_x);
        _z.value._a._neg = false;
        return _z;
    }
    public function set(_x:Pointer<Rat>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_z != _x) {
            _z.value._a.set(Go.pointer(_x.value._a));
            _z.value._b.set(Go.pointer(_x.value._b));
        };
        if (_z.value._b._abs.__t__.length == ((0 : GoInt))) {
            _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
        };
        return _z;
    }
    public function setUint64(_x:GoUInt64):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._a.setUint64(_x);
        _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
        return _z;
    }
    public function setInt64(_x:GoInt64):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._a.setInt64(_x);
        _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
        return _z;
    }
    public function setInt(_x:Pointer<Int_>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._a.set(_x);
        _z.value._b._abs = _z.value._b._abs._setWord(new Word(((1 : GoUInt)))).__copy__();
        return _z;
    }
    public function setFrac64(_a:GoInt64, _b:GoInt64):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b == ((0 : GoInt64))) {
            throw "division by zero";
        };
        _z.value._a.setInt64(_a);
        if (_b < ((0 : GoInt64))) {
            _b = -_b;
            _z.value._a._neg = !_z.value._a._neg;
        };
        _z.value._b._abs = _z.value._b._abs._setUint64(((_b : GoUInt64))).__copy__();
        return _z.value._norm();
    }
    public function setFrac(_a:Pointer<Int_>, _b:Pointer<Int_>):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _z.value._a._neg = _a.value._neg != _b.value._neg;
        var _babs:T_nat = _b.value._abs.__copy__();
        if (_babs.__t__.length == ((0 : GoInt))) {
            throw "division by zero";
        };
        if (Go.pointer(_z.value._a) == _b || _alias(_z.value._a._abs.__copy__(), _babs.__copy__())) {
            _babs = ((new T_nat() : T_nat))._set(_babs.__copy__()).__copy__();
        };
        _z.value._a._abs = _z.value._a._abs._set(_a.value._abs.__copy__()).__copy__();
        _z.value._b._abs = _z.value._b._abs._set(_babs.__copy__()).__copy__();
        return _z.value._norm();
    }
    public function float64():{ var _0 : GoFloat64; var _1 : Bool; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _f:GoFloat64 = ((0 : GoFloat64)), _exact:Bool = false;
        var _b:T_nat = _x.value._b._abs.__copy__();
        if (_b.__t__.length == ((0 : GoInt))) {
            _b = _natOne.__copy__();
        };
        {
            var __tmp__ = _quotToFloat64(_x.value._a._abs.__copy__(), _b.__copy__());
            _f = __tmp__._0;
            _exact = __tmp__._1;
        };
        if (_x.value._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    public function float32():{ var _0 : GoFloat32; var _1 : Bool; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _f:GoFloat32 = ((0 : GoFloat32)), _exact:Bool = false;
        var _b:T_nat = _x.value._b._abs.__copy__();
        if (_b.__t__.length == ((0 : GoInt))) {
            _b = _natOne.__copy__();
        };
        {
            var __tmp__ = _quotToFloat32(_x.value._a._abs.__copy__(), _b.__copy__());
            _f = __tmp__._0;
            _exact = __tmp__._1;
        };
        if (_x.value._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    public function setFloat64(_f:GoFloat64):Pointer<Rat> {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _expMask:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((11 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
        var _bits:GoUInt64 = stdgo.math.Math.float64bits(_f);
        var _mantissa:GoUInt64 = _bits & ((((1 : GoUnTypedInt)) << ((52 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
        var _exp:GoInt = (((((_bits >> ((52 : GoUnTypedInt)))) & _expMask) : GoInt));
        if (_exp == _expMask) {
            return new Pointer<Rat>().nil();
        } else if (_exp == ((0 : GoInt))) {
            _exp = _exp - (((1022 : GoInt)));
        } else {
            _mantissa = _mantissa | ((((1 : GoUnTypedInt)) << ((52 : GoUnTypedInt))));
            _exp = _exp - (((1023 : GoInt)));
        };
        var _shift:GoInt = ((52 : GoInt)) - _exp;
        while (_mantissa & ((1 : GoUInt64)) == ((0 : GoUInt64)) && _shift > ((0 : GoInt))) {
            _mantissa = (_mantissa >> (((1 : GoUnTypedInt))));
            _shift--;
        };
        _z.value._a.setUint64(_mantissa);
        _z.value._a._neg = _f < ((0 : GoFloat64));
        _z.value._b.set(_intOne);
        if (_shift > ((0 : GoInt))) {
            _z.value._b.lsh(Go.pointer(_z.value._b), ((_shift : GoUInt)));
        } else {
            _z.value._a.lsh(Go.pointer(_z.value._a), ((-_shift : GoUInt)));
        };
        return _z.value._norm();
    }
    public var _a : Int_ = new Int_();
    public var _b : Int_ = new Int_();
    public function new(?_a:Int_, ?_b:Int_) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rat(_a, _b);
    }
    public function __set__(__tmp__) {
        this._a = __tmp__._a;
        this._b = __tmp__._b;
        return this;
    }
}
@:structInit @:local class T__struct_43 {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _table : GoArray<T_divisor> = new GoArray<T_divisor>(...[for (i in 0 ... 64) new T_divisor()]);
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_table:GoArray<T_divisor>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(mutex) + " " + Go.string(_table) + "}";
    }
    public function lock() mutex.lock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_43(mutex, _table);
    }
    public function __set__(__tmp__) {
        this.mutex = __tmp__.mutex;
        this._table = __tmp__._table;
        return this;
    }
}
@:structInit @:local class T__struct_44 {
    @:embedded
    public var once : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _v : Pointer<Float_> = new Pointer<Float_>().nil();
    public function new(?once:stdgo.sync.Sync.Once, ?_v:Pointer<Float_>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(once) + " " + Go.string(_v) + "}";
    }
    public function do_(_f:() -> Void) once.do_(_0);
    public function _doSlow(_f:() -> Void) once._doSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_44(once, _v);
    }
    public function __set__(__tmp__) {
        this.once = __tmp__.once;
        this._v = __tmp__._v;
        return this;
    }
}
var _0 : stdgo.fmt.Fmt.Scanner = ((new Pointer<Float_>().nil() : Pointer<Float_>)).value;
var _ratZero : Rat = new Rat();
var _floatZero : Float_ = new Float_();
var _1 : stdgo.fmt.Fmt.Formatter = Go.pointer(_floatZero).value;
final __RoundingMode_name : GoString = "ToNearestEvenToNearestAwayToZeroAwayFromZeroToNegativeInfToPositiveInf";
final _divRecursiveThreshold : GoInt64 = ((100 : GoUnTypedInt));
final below : Accuracy = new Accuracy(-((1 : GoUnTypedInt)));
final above : Accuracy = new Accuracy(((1 : GoUnTypedInt)));
final __W : GoUnTypedInt = stdgo.math.bits.Bits.uintSize;
final __B : GoUnTypedInt = (((1 : GoUnTypedInt)) << __W);
final __M : GoUnTypedInt = __B - ((1 : GoUnTypedInt));
var _natOne : T_nat = new T_nat(new Slice<Word>(new Word(((1 : GoUInt))))).__copy__();
var _intOne : Pointer<Int_> = Go.pointer(new Int_(false, _natOne.__copy__()));
var _2 : stdgo.fmt.Fmt.Formatter = _intOne.value;
var _natPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _natTwo : T_nat = new T_nat(new Slice<Word>(new Word(((2 : GoUInt))))).__copy__();
var _3 : stdgo.fmt.Fmt.Scanner = _intOne.value;
final toZero : RoundingMode = new RoundingMode((2 : GoUnTypedInt));
var _4 : stdgo.fmt.Fmt.Scanner = Go.pointer(_ratZero).value;
final _maxBaseSmall : GoInt32 = ((10 : GoInt32)) + ((("z".code : GoRune)) - (("a".code : GoRune)) + ((1 : GoInt32)));
final exact : Accuracy = new Accuracy(((0 : GoInt8)));
final _maxShift : GoUnTypedInt = __W - ((4 : GoUnTypedInt));
final toNearestAway : RoundingMode = new RoundingMode((1 : GoUnTypedInt));
final _zero : T_form = new T_form((0 : GoUnTypedInt));
final _inf : T_form = new T_form((2 : GoUnTypedInt));
final toPositiveInf : RoundingMode = new RoundingMode((5 : GoUnTypedInt));
final awayFromZero : RoundingMode = new RoundingMode((3 : GoUnTypedInt));
var _errInvalSep : stdgo.Error = stdgo.errors.Errors.new_("\'_\' must separate successive digits");
var _basicSqrThreshold : GoInt64 = ((20 : GoInt));
final maxPrec : GoUnTypedInt = stdgo.math.Math.maxUint32;
final __Accuracy_name : GoString = "BelowExactAbove";
final __S : GoUnTypedInt = __W / ((8 : GoUnTypedInt));
var _pow5tab : GoArray<GoUInt64> = new GoArray<GoUInt64>(
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
(("7450580596923828125" : GoUInt64))).copy();
var _errNoDigits : stdgo.Error = stdgo.errors.Errors.new_("number has no digits");
var _natFive : T_nat = new T_nat(new Slice<Word>(new Word(((5 : GoUInt))))).__copy__();
final maxExp : GoUnTypedInt = stdgo.math.Math.maxInt32;
final maxBase : GoInt32 = ((10 : GoInt32)) + ((("z".code : GoRune)) - (("a".code : GoRune)) + ((1 : GoInt32))) + ((("Z".code : GoRune)) - (("A".code : GoRune)) + ((1 : GoInt32)));
final _digits : GoString = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
final _intGobVersion : GoByte = ((1 : GoUInt8));
var _cacheBase10 : T__struct_43 = new T__struct_43();
final _debugFloat : Bool = false;
final toNearestEven : RoundingMode = new RoundingMode((0 : GoUnTypedInt));
var _threeOnce : T__struct_44 = new T__struct_44();
var _karatsubaThreshold : GoInt64 = ((40 : GoInt));
final toNegativeInf : RoundingMode = new RoundingMode((4 : GoUnTypedInt));
final _finite : T_form = new T_form((1 : GoUnTypedInt));
final minExp : GoUnTypedInt = stdgo.math.Math.minInt32;
var __RoundingMode_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((13 : GoUInt8)), ((26 : GoUInt8)), ((32 : GoUInt8)), ((44 : GoUInt8)), ((57 : GoUInt8)), ((70 : GoUInt8))).copy();
final _ratGobVersion : GoByte = ((1 : GoUInt8));
var _leafSize : GoInt = ((8 : GoInt));
var _karatsubaSqrThreshold : GoInt64 = ((260 : GoInt));
var __Accuracy_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((5 : GoUInt8)), ((10 : GoUInt8)), ((15 : GoUInt8))).copy();
final _floatGobVersion : GoByte = ((1 : GoUInt8));
var _natTen : T_nat = new T_nat(new Slice<Word>(new Word(((10 : GoUInt))))).__copy__();
/**
    // z1<<_W + z0 = x*y
**/
function _mulWW_g(_x:Word, _y:Word):{ var _0 : Word; var _1 : Word; } {
        var _z1:Word = new Word(), _z0:Word = new Word();
        var __tmp__ = stdgo.math.bits.Bits.mul(_x.__t__, _y.__t__), _hi:GoUInt = __tmp__._0, _lo:GoUInt = __tmp__._1;
        return { _0 : new Word(_hi), _1 : new Word(_lo) };
    }
/**
    // z1<<_W + z0 = x*y + c
**/
function _mulAddWWW_g(_x:Word, _y:Word, _c:Word):{ var _0 : Word; var _1 : Word; } {
        var _z1:Word = new Word(), _z0:Word = new Word();
        var __tmp__ = stdgo.math.bits.Bits.mul(_x.__t__, _y.__t__), _hi:GoUInt = __tmp__._0, _lo:GoUInt = __tmp__._1;
        var _cc:GoUInt = ((0 : GoUInt));
        {
            var __tmp__ = stdgo.math.bits.Bits.add(_lo, _c.__t__, ((0 : GoUInt)));
            _lo = __tmp__._0;
            _cc = __tmp__._1;
        };
        return { _0 : new Word((_hi + _cc)), _1 : new Word(_lo) };
    }
/**
    // nlz returns the number of leading zeros in x.
    // Wraps bits.LeadingZeros call for convenience.
**/
function _nlz(_x:Word):GoUInt {
        return ((stdgo.math.bits.Bits.leadingZeros(_x.__t__) : GoUInt));
    }
/**
    // The resulting carry c is either 0 or 1.
**/
function _addVV_g(_z:Slice<Word>, _x:Slice<Word>, _y:Slice<Word>):Word {
        var _c:Word = new Word();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _z.length && _i < _x.length && _i < _y.length, _i++, {
                var __tmp__ = stdgo.math.bits.Bits.add(_x[_i].__t__, _y[_i].__t__, _c.__t__), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                _z[_i] = new Word(_zi);
                _c = new Word(_cc);
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
            Go.cfor(_i < _z.length && _i < _x.length && _i < _y.length, _i++, {
                var __tmp__ = stdgo.math.bits.Bits.sub(_x[_i].__t__, _y[_i].__t__, _c.__t__), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                _z[_i] = new Word(_zi);
                _c = new Word(_cc);
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
            Go.cfor(_i < _z.length && _i < _x.length, _i++, {
                var __tmp__ = stdgo.math.bits.Bits.add(_x[_i].__t__, _c.__t__, ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                _z[_i] = new Word(_zi);
                _c = new Word(_cc);
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
            Go.cfor(_i < _z.length && _i < _x.length, _i++, {
                if (_c.__t__ == ((0 : GoUInt))) {
                    Go.copy(_z.__slice__(_i), _x.__slice__(_i));
                    return _c;
                };
                var __tmp__ = stdgo.math.bits.Bits.add(_x[_i].__t__, _c.__t__, ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                _z[_i] = new Word(_zi);
                _c = new Word(_cc);
            });
        };
        return _c;
    }
function _subVW_g(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        _c = _y;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _z.length && _i < _x.length, _i++, {
                var __tmp__ = stdgo.math.bits.Bits.sub(_x[_i].__t__, _c.__t__, ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                _z[_i] = new Word(_zi);
                _c = new Word(_cc);
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
            Go.cfor(_i < _z.length && _i < _x.length, _i++, {
                if (_c.__t__ == ((0 : GoUInt))) {
                    Go.copy(_z.__slice__(_i), _x.__slice__(_i));
                    return _c;
                };
                var __tmp__ = stdgo.math.bits.Bits.sub(_x[_i].__t__, _c.__t__, ((0 : GoUInt))), _zi:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                _z[_i] = new Word(_zi);
                _c = new Word(_cc);
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
        if (_z.length == ((0 : GoInt))) {
            return _c;
        };
        _s = _s & (__W - ((1 : GoUnTypedInt)));
        var __349:GoUInt = __W - _s;
        __349 = __349 & (__W - ((1 : GoUnTypedInt)));
        _c = (new Word(_x[_z.length - ((1 : GoInt))].__t__ >> __349));
        {
            var _i:GoInt = _z.length - ((1 : GoInt));
            Go.cfor(_i > ((0 : GoInt)), _i--, {
                _z[_i] = new Word((new Word(_x[_i].__t__ << _s)).__t__ | (new Word(_x[_i - ((1 : GoInt))].__t__ >> __349)).__t__);
            });
        };
        _z[((0 : GoInt))] = (new Word(_x[((0 : GoInt))].__t__ << _s));
        return _c;
    }
function _shrVU_g(_z:Slice<Word>, _x:Slice<Word>, _s:GoUInt):Word {
        var _c:Word = new Word();
        if (_s == ((0 : GoUInt))) {
            Go.copy(_z, _x);
            return _c;
        };
        if (_z.length == ((0 : GoInt))) {
            return _c;
        };
        if (_x.length != _z.length) {
            throw "len(x) != len(z)";
        };
        _s = _s & (__W - ((1 : GoUnTypedInt)));
        var __349:GoUInt = __W - _s;
        __349 = __349 & (__W - ((1 : GoUnTypedInt)));
        _c = (new Word(_x[((0 : GoInt))].__t__ << __349));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _z.length, _i++, {
                _z[_i - ((1 : GoInt))] = new Word((new Word(_x[_i - ((1 : GoInt))].__t__ >> _s)).__t__ | (new Word(_x[_i].__t__ << __349)).__t__);
            });
        };
        _z[_z.length - ((1 : GoInt))] = (new Word(_x[_z.length - ((1 : GoInt))].__t__ >> _s));
        return _c;
    }
function _mulAddVWW_g(_z:Slice<Word>, _x:Slice<Word>, _y:Word, _r:Word):Word {
        var _c:Word = new Word();
        _c = _r;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _z.length && _i < _x.length, _i++, {
                {
                    var __tmp__ = _mulAddWWW_g(_x[_i], _y, _c);
                    _c = __tmp__._0;
                    _z[_i] = __tmp__._1;
                };
            });
        };
        return _c;
    }
function _addMulVVW_g(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word {
        var _c:Word = new Word();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _z.length && _i < _x.length, _i++, {
                var __tmp__ = _mulAddWWW_g(_x[_i], _y, _z[_i]), _z1:Word = __tmp__._0, _z0:Word = __tmp__._1;
                var __tmp__ = stdgo.math.bits.Bits.add(_z0.__t__, _c.__t__, ((0 : GoUInt))), _lo:GoUInt = __tmp__._0, _cc:GoUInt = __tmp__._1;
                {
                    final __tmp__0 = new Word(_cc);
                    final __tmp__1 = new Word(_lo);
                    _c = __tmp__0;
                    _z[_i] = __tmp__1;
                };
                _c = new Word(_c.__t__ + (_z1).__t__);
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
            _x1 = new Word((new Word(_x1.__t__ << _s)).__t__ | (new Word(_x0.__t__ >> (__W - _s))).__t__);
            _x0 = (new Word(_x0.__t__ << (_s)));
            _y = (new Word(_y.__t__ << (_s)));
        };
        var _d:GoUInt = _y.__t__;
        var __tmp__ = stdgo.math.bits.Bits.mul(_m.__t__, _x1.__t__), _t1:GoUInt = __tmp__._0, _t0:GoUInt = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add(_t0, _x0.__t__, ((0 : GoUInt))), _:GoUInt = __tmp__._0, _c:GoUInt = __tmp__._1;
        {
            var __tmp__ = stdgo.math.bits.Bits.add(_t1, _x1.__t__, _c);
            _t1 = __tmp__._0;
        };
        var _qq:GoUInt = _t1;
        var __tmp__ = stdgo.math.bits.Bits.mul(_d, _qq), _dq1:GoUInt = __tmp__._0, _dq0:GoUInt = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub(_x0.__t__, _dq0, ((0 : GoUInt))), _r0:GoUInt = __tmp__._0, _b:GoUInt = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub(_x1.__t__, _dq1, _b), _r1:GoUInt = __tmp__._0, _:GoUInt = __tmp__._1;
        if (_r1 != ((0 : GoUInt))) {
            _qq++;
            _r0 = _r0 - (_d);
        };
        if (_r0 >= _d) {
            _qq++;
            _r0 = _r0 - (_d);
        };
        return { _0 : new Word(_qq), _1 : new Word((_r0 >> _s)) };
    }
/**
    // reciprocalWord return the reciprocal of the divisor. rec = floor(( _B^2 - 1 ) / u - _B). u = d1 << nlz(d1).
**/
function _reciprocalWord(_d1:Word):Word {
        var _u:GoUInt = (new Word(_d1.__t__ << _nlz(_d1))).__t__;
        var _x1:GoUInt = -1 ^ _u;
        var _x0:GoUInt = ((__M : GoUInt));
        var __tmp__ = stdgo.math.bits.Bits.div(_x1, _x0, _u), _rec:GoUInt = __tmp__._0, _:GoUInt = __tmp__._1;
        return new Word(_rec);
    }
/**
    // implemented in arith_$GOARCH.s
**/
function _mulWW(_x:Word, _y:Word):{ var _0 : Word; var _1 : Word; } throw "not implemeneted";
function _addVV(_z:Slice<Word>, _x:Slice<Word>, _y:Slice<Word>):Word throw "not implemeneted";
function _subVV(_z:Slice<Word>, _x:Slice<Word>, _y:Slice<Word>):Word throw "not implemeneted";
function _addVW(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word throw "not implemeneted";
function _subVW(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word throw "not implemeneted";
function _shlVU(_z:Slice<Word>, _x:Slice<Word>, _s:GoUInt):Word throw "not implemeneted";
function _shrVU(_z:Slice<Word>, _x:Slice<Word>, _s:GoUInt):Word throw "not implemeneted";
function _mulAddVWW(_z:Slice<Word>, _x:Slice<Word>, _y:Word, _r:Word):Word throw "not implemeneted";
function _addMulVVW(_z:Slice<Word>, _x:Slice<Word>, _y:Word):Word throw "not implemeneted";
/**
    // shr implements x >> s, for s <= maxShift.
**/
function _shr(_x:Pointer<T_decimal>, _s:GoUInt):Void {
        var _r:GoInt = ((0 : GoInt));
        var _n:Word = new Word();
        while ((new Word(_n.__t__ >> _s)).__t__ == ((0 : GoUInt)) && _r < _x.value._mant.length) {
            var _ch:Word = new Word(_x.value._mant[_r]);
            _r++;
            _n = new Word(new Word(new Word(_n.__t__ * ((10 : GoUInt))).__t__ + _ch.__t__).__t__ - (("0".code : GoRune)));
        };
        if (_n.__t__ == ((0 : GoUInt))) {
            _x.value._mant = _x.value._mant.__slice__(0, ((0 : GoInt)));
            return;
        };
        while ((new Word(_n.__t__ >> _s)).__t__ == ((0 : GoUInt))) {
            _r++;
            _n = new Word(_n.__t__ * (((10 : GoUInt))));
        };
        _x.value._exp = _x.value._exp + (((1 : GoInt)) - _r);
        var _w:GoInt = ((0 : GoInt));
        var _mask:Word = new Word((new Word(new Word(((1 : GoUInt))).__t__ << _s)).__t__ - ((1 : GoUInt)));
        while (_r < _x.value._mant.length) {
            var _ch:Word = new Word(_x.value._mant[_r]);
            _r++;
            var _d:Word = (new Word(_n.__t__ >> _s));
            _n = new Word(_n.__t__ & (_mask).__t__);
            _x.value._mant[_w] = new Word(_d.__t__ + (("0".code : GoRune))).__t__;
            _w++;
            _n = new Word(new Word(new Word(_n.__t__ * ((10 : GoUInt))).__t__ + _ch.__t__).__t__ - (("0".code : GoRune)));
        };
        while (_n.__t__ > ((0 : GoUInt)) && _w < _x.value._mant.length) {
            var _d:Word = (new Word(_n.__t__ >> _s));
            _n = new Word(_n.__t__ & (_mask).__t__);
            _x.value._mant[_w] = new Word(_d.__t__ + (("0".code : GoRune))).__t__;
            _w++;
            _n = new Word(_n.__t__ * ((10 : GoUInt)));
        };
        _x.value._mant = _x.value._mant.__slice__(0, _w);
        while (_n.__t__ > ((0 : GoUInt))) {
            var _d:Word = (new Word(_n.__t__ >> _s));
            _n = new Word(_n.__t__ & (_mask).__t__);
            _x.value._mant = _x.value._mant.__append__(new Word(_d.__t__ + (("0".code : GoRune))).__t__);
            _n = new Word(_n.__t__ * ((10 : GoUInt)));
        };
        _trim(_x);
    }
/**
    // appendZeros appends n 0 digits to buf and returns buf.
**/
function _appendZeros(_buf:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        Go.cfor(_n > ((0 : GoInt)), _n--, {
            _buf = _buf.__append__((("0".code : GoRune)));
        });
        return _buf;
    }
/**
    // shouldRoundUp reports if x should be rounded up
    // if shortened to n digits. n must be a valid index
    // for x.mant.
**/
function _shouldRoundUp(_x:Pointer<T_decimal>, _n:GoInt):Bool {
        if (_x.value._mant[_n] == (("5".code : GoRune)) && _n + ((1 : GoInt)) == _x.value._mant.length) {
            return _n > ((0 : GoInt)) && (_x.value._mant[_n - ((1 : GoInt))] - (("0".code : GoRune))) & ((1 : GoUInt8)) != ((0 : GoUInt8));
        };
        return _x.value._mant[_n] >= (("5".code : GoRune));
    }
/**
    // trim cuts off any trailing zeros from x's mantissa;
    // they are meaningless for the value of x.
**/
function _trim(_x:Pointer<T_decimal>):Void {
        var _i:GoInt = _x.value._mant.length;
        while (_i > ((0 : GoInt)) && _x.value._mant[_i - ((1 : GoInt))] == (("0".code : GoRune))) {
            _i--;
        };
        _x.value._mant = _x.value._mant.__slice__(0, _i);
        if (_i == ((0 : GoInt))) {
            _x.value._exp = ((0 : GoInt));
        };
    }
/**
    // NewFloat allocates and returns a new Float set to x,
    // with precision 53 and rounding mode ToNearestEven.
    // NewFloat panics with ErrNaN if x is a NaN.
**/
function newFloat(_x:GoFloat64):Pointer<Float_> {
        if (stdgo.math.Math.isNaN(_x)) {
            throw new ErrNaN("NewFloat(NaN)");
        };
        return Go.pointer(new Float_()).value.setFloat64(_x);
    }
function _makeAcc(_above:Bool):Accuracy {
        if (_above) {
            return above;
        };
        return below;
    }
/**
    // fnorm normalizes mantissa m by shifting it to the left
    // such that the msb of the most-significant word (msw) is 1.
    // It returns the shift amount. It assumes that len(m) != 0.
**/
function _fnorm(_m:T_nat):GoInt64 {
        if (_debugFloat && (_m.__t__.length == ((0 : GoInt)) || _m.__t__[_m.__t__.length - ((1 : GoInt))].__t__ == ((0 : GoUInt)))) {
            throw "msw of mantissa is 0";
        };
        var _s:GoUInt = _nlz(_m.__t__[_m.__t__.length - ((1 : GoInt))]);
        if (_s > ((0 : GoUInt))) {
            var _c:Word = _shlVU(_m.__copy__().__t__, _m.__copy__().__t__, _s);
            if (_debugFloat && _c.__t__ != ((0 : GoUInt))) {
                throw "nlz or shlVU incorrect";
            };
        };
        return ((_s : GoInt64));
    }
/**
    // msb32 returns the 32 most significant bits of x.
**/
function _msb32(_x:T_nat):GoUInt32 {
        var _i:GoInt = _x.__t__.length - ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            return ((0 : GoUInt32));
        };
        if (_debugFloat && new Word(_x.__t__[_i].__t__ & ((new Word(((1 : GoUnTypedInt)) << (__W - ((1 : GoUnTypedInt)))))).__t__).__t__ == ((0 : GoUInt))) {
            throw "x not normalized";
        };
        if (__W == ((32 : GoInt))) {
            return _x.__t__[_i].__t__;
        } else if (__W == ((64 : GoInt))) {
            return (new Word(_x.__t__[_i].__t__ >> ((32 : GoUnTypedInt)))).__t__;
        };
        throw "unreachable";
    }
/**
    // msb64 returns the 64 most significant bits of x.
**/
function _msb64(_x:T_nat):GoUInt64 {
        var _i:GoInt = _x.__t__.length - ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            return ((0 : GoUInt64));
        };
        if (_debugFloat && new Word(_x.__t__[_i].__t__ & ((new Word(((1 : GoUnTypedInt)) << (__W - ((1 : GoUnTypedInt)))))).__t__).__t__ == ((0 : GoUInt))) {
            throw "x not normalized";
        };
        if (__W == ((32 : GoInt))) {
            var _v:GoUInt64 = (_x.__t__[_i].__t__ << ((32 : GoUnTypedInt)));
            if (_i > ((0 : GoInt))) {
                _v = _v | (_x.__t__[_i - ((1 : GoInt))].__t__);
            };
            return _v;
        } else if (__W == ((64 : GoInt))) {
            return _x.__t__[_i].__t__;
        };
        throw "unreachable";
    }
function _validateBinaryOperands(_x:Pointer<Float_>, _y:Pointer<Float_>):Void {
        if (!_debugFloat) {
            throw "validateBinaryOperands called but debugFloat is not set";
        };
        if (_x.value._mant.__t__.length == ((0 : GoInt))) {
            throw "empty mantissa for x";
        };
        if (_y.value._mant.__t__.length == ((0 : GoInt))) {
            throw "empty mantissa for y";
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
function parseFloat(_s:GoString, _base:GoInt, _prec:GoUInt, _mode:RoundingMode):{ var _0 : Pointer<Float_>; var _1 : GoInt; var _2 : Error; } {
        var _f:Pointer<Float_> = new Pointer<Float_>().nil(), _b:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return Go.pointer(new Float_()).value.setPrec(_prec).value.setMode(_mode).value.parse(_s, _base);
    }
function _roundShortest(_d:Pointer<T_decimal>, _x:Pointer<Float_>):Void {
        if (_d.value._mant.length == ((0 : GoInt))) {
            return;
        };
        var _mant:T_nat = ((new T_nat() : T_nat))._set(_x.value._mant.__copy__()).__copy__();
        var _exp:GoInt = ((_x.value._exp : GoInt)) - _mant._bitLen();
        var _s:GoInt = _mant._bitLen() - (((_x.value._prec + ((1 : GoUInt32))) : GoInt));
        if (_s < ((0 : GoInt))) {
            _mant = _mant._shl(_mant.__copy__(), ((-_s : GoUInt))).__copy__();
        } else if (_s > ((0 : GoInt))) {
            _mant = _mant._shr(_mant.__copy__(), ((_s : GoUInt))).__copy__();
        };
        _exp = _exp + (_s);
        var _lower:T_decimal = new T_decimal();
        var _tmp:T_nat = new T_nat();
        _lower._init(_tmp._sub(_mant.__copy__(), _natOne.__copy__()).__copy__(), _exp);
        var _upper:T_decimal = new T_decimal();
        _upper._init(_tmp._add(_mant.__copy__(), _natOne.__copy__()).__copy__(), _exp);
        var _inclusive:Bool = new Word(_mant.__t__[((0 : GoInt))].__t__ & ((2 : GoUInt))).__t__ == ((0 : GoUInt));
        {
            var _i;
            var _m;
            for (_obj in _d.value._mant.keyValueIterator()) {
                _i = _obj.key;
                _m = _obj.value;
                var _l:GoUInt8 = _lower._at(_i);
                var _u:GoUInt8 = _upper._at(_i);
                var _okdown:Bool = _l != _m || _inclusive && _i + ((1 : GoInt)) == _lower._mant.length;
                var _okup:Bool = _m != _u && (_inclusive || _m + ((1 : GoUInt8)) < _u || _i + ((1 : GoInt)) < _upper._mant.length);
                if (_okdown && _okup) {
                    _d.value._round(_i + ((1 : GoInt)));
                    return;
                } else if (_okdown) {
                    _d.value._roundDown(_i + ((1 : GoInt)));
                    return;
                } else if (_okup) {
                    _d.value._roundUp(_i + ((1 : GoInt)));
                    return;
                };
            };
        };
    }
/**
    // %e: d.ddddde±dd
**/
function _fmtE(_buf:Slice<GoByte>, _fmt:GoByte, _prec:GoInt, _d:T_decimal):Slice<GoByte> {
        var _ch:GoUInt8 = (((("0".code : GoRune)) : GoByte));
        if (_d._mant.length > ((0 : GoInt))) {
            _ch = _d._mant[((0 : GoInt))];
        };
        _buf = _buf.__append__(_ch);
        if (_prec > ((0 : GoInt))) {
            _buf = _buf.__append__(((".".code : GoRune)));
            var _i:GoInt = ((1 : GoInt));
            var _m:GoInt = _min(_d._mant.length, _prec + ((1 : GoInt)));
            if (_i < _m) {
                _buf = _buf.__append__(..._d._mant.__slice__(_i, _m).toArray());
                _i = _m;
            };
            Go.cfor(_i <= _prec, _i++, {
                _buf = _buf.__append__((("0".code : GoRune)));
            });
        };
        _buf = _buf.__append__(_fmt);
        var _exp:GoInt64 = ((0 : GoInt64));
        if (_d._mant.length > ((0 : GoInt))) {
            _exp = ((_d._exp : GoInt64)) - ((1 : GoInt64));
        };
        if (_exp < ((0 : GoInt64))) {
            _ch = (("-".code : GoRune));
            _exp = -_exp;
        } else {
            _ch = (("+".code : GoRune));
        };
        _buf = _buf.__append__(_ch);
        if (_exp < ((10 : GoInt64))) {
            _buf = _buf.__append__((("0".code : GoRune)));
        };
        return stdgo.strconv.Strconv.appendInt(_buf, _exp, ((10 : GoInt)));
    }
/**
    // %f: ddddddd.ddddd
**/
function _fmtF(_buf:Slice<GoByte>, _prec:GoInt, _d:T_decimal):Slice<GoByte> {
        if (_d._exp > ((0 : GoInt))) {
            var _m:GoInt = _min(_d._mant.length, _d._exp);
            _buf = _buf.__append__(..._d._mant.__slice__(0, _m).toArray());
            Go.cfor(_m < _d._exp, _m++, {
                _buf = _buf.__append__((("0".code : GoRune)));
            });
        } else {
            _buf = _buf.__append__((("0".code : GoRune)));
        };
        if (_prec > ((0 : GoInt))) {
            _buf = _buf.__append__(((".".code : GoRune)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _prec, _i++, {
                    _buf = _buf.__append__(_d._at(_d._exp + _i));
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
function newInt(_x:GoInt64):Pointer<Int_> {
        return Go.pointer(new Int_()).value.setInt64(_x);
    }
/**
    // low32 returns the least significant 32 bits of x.
**/
function _low32(_x:T_nat):GoUInt32 {
        if (_x.__t__.length == ((0 : GoInt))) {
            return ((0 : GoUInt32));
        };
        return _x.__t__[((0 : GoInt))].__t__;
    }
/**
    // low64 returns the least significant 64 bits of x.
**/
function _low64(_x:T_nat):GoUInt64 {
        if (_x.__t__.length == ((0 : GoInt))) {
            return ((0 : GoUInt64));
        };
        var _v:GoUInt64 = _x.__t__[((0 : GoInt))].__t__;
        if (__W == ((32 : GoUnTypedInt)) && _x.__t__.length > ((1 : GoInt))) {
            return (_x.__t__[((1 : GoInt))].__t__ << ((32 : GoUnTypedInt))) | _v;
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
function _lehmerSimulate(a:Pointer<Int_>, b:Pointer<Int_>):{ var _0 : Word; var _1 : Word; var _2 : Word; var _3 : Word; var _4 : Bool; } {
        var _u0:Word = new Word(), _u1:Word = new Word(), _v0:Word = new Word(), _v1:Word = new Word(), _even:Bool = false;
        var _a1:Word = new Word(), _a2:Word = new Word(), _u2:Word = new Word(), _v2:Word = new Word();
        var _m:GoInt = b.value._abs.__t__.length;
        var _n:GoInt = a.value._abs.__t__.length;
        var _h:GoUInt = _nlz(a.value._abs.__t__[_n - ((1 : GoInt))]);
        _a1 = new Word((new Word(a.value._abs.__t__[_n - ((1 : GoInt))].__t__ << _h)).__t__ | (new Word(a.value._abs.__t__[_n - ((2 : GoInt))].__t__ >> (__W - _h))).__t__);
        if (_n == _m) {
            _a2 = new Word((new Word(b.value._abs.__t__[_n - ((1 : GoInt))].__t__ << _h)).__t__ | (new Word(b.value._abs.__t__[_n - ((2 : GoInt))].__t__ >> (__W - _h))).__t__);
        } else if (_n == _m + ((1 : GoInt))) {
            _a2 = (new Word(b.value._abs.__t__[_n - ((2 : GoInt))].__t__ >> (__W - _h)));
        } else {
            _a2 = new Word(((0 : GoUInt)));
        };
        _even = false;
        {
            final __tmp__0 = new Word(((0 : GoUInt)));
            final __tmp__1 = new Word(((1 : GoUInt)));
            final __tmp__2 = new Word(((0 : GoUInt)));
            _u0 = __tmp__0;
            _u1 = __tmp__1;
            _u2 = __tmp__2;
        };
        {
            final __tmp__0 = new Word(((0 : GoUInt)));
            final __tmp__1 = new Word(((0 : GoUInt)));
            final __tmp__2 = new Word(((1 : GoUInt)));
            _v0 = __tmp__0;
            _v1 = __tmp__1;
            _v2 = __tmp__2;
        };
        while (_a2.__t__ >= _v2.__t__ && new Word(_a1.__t__ - _a2.__t__).__t__ >= new Word(_v1.__t__ + _v2.__t__).__t__) {
            var _q:Word = new Word(_a1.__t__ / _a2.__t__), _r:Word = new Word(_a1.__t__ % _a2.__t__);
            {
                final __tmp__0 = _a2;
                final __tmp__1 = _r;
                _a1 = __tmp__0;
                _a2 = __tmp__1;
            };
            {
                final __tmp__0 = _u1;
                final __tmp__1 = _u2;
                final __tmp__2 = new Word(_u1.__t__ + new Word(_q.__t__ * _u2.__t__).__t__);
                _u0 = __tmp__0;
                _u1 = __tmp__1;
                _u2 = __tmp__2;
            };
            {
                final __tmp__0 = _v1;
                final __tmp__1 = _v2;
                final __tmp__2 = new Word(_v1.__t__ + new Word(_q.__t__ * _v2.__t__).__t__);
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
function _lehmerUpdate(a:Pointer<Int_>, b:Pointer<Int_>, _q:Pointer<Int_>, _r:Pointer<Int_>, _s:Pointer<Int_>, _t:Pointer<Int_>, _u0:Word, _u1:Word, _v0:Word, _v1:Word, _even:Bool):Void {
        _t.value._abs = _t.value._abs._setWord(_u0).__copy__();
        _s.value._abs = _s.value._abs._setWord(_v0).__copy__();
        _t.value._neg = !_even;
        _s.value._neg = _even;
        _t.value.mul(a, _t);
        _s.value.mul(b, _s);
        _r.value._abs = _r.value._abs._setWord(_u1).__copy__();
        _q.value._abs = _q.value._abs._setWord(_v1).__copy__();
        _r.value._neg = _even;
        _q.value._neg = !_even;
        _r.value.mul(a, _r);
        _q.value.mul(b, _q);
        a.value.add(_t, _s);
        b.value.add(_r, _q);
    }
/**
    // euclidUpdate performs a single step of the Euclidean GCD algorithm
    // if extended is true, it also updates the cosequence Ua, Ub
**/
function _euclidUpdate(a:Pointer<Int_>, b:Pointer<Int_>, ua:Pointer<Int_>, ub:Pointer<Int_>, _q:Pointer<Int_>, _r:Pointer<Int_>, _s:Pointer<Int_>, _t:Pointer<Int_>, _extended:Bool):Void {
        {
            var __tmp__ = _q.value.quoRem(a, b, _r);
            _q = __tmp__._0;
            _r = __tmp__._1;
        };
        {
            final __tmp__0 = b.value.__copy__();
            final __tmp__1 = _r.value.__copy__();
            final __tmp__2 = a.value.__copy__();
            a.value = __tmp__0;
            b.value = __tmp__1;
            _r.value = __tmp__2;
        };
        if (_extended) {
            _t.value.set(ub);
            _s.value.mul(ub, _q);
            ub.value.sub(ua, _s);
            ua.value.set(_t);
        };
    }
/**
    // Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
    // The y argument must be an odd integer.
**/
function jacobi(_x:Pointer<Int_>, _y:Pointer<Int_>):GoInt {
        if (_y.value._abs.__t__.length == ((0 : GoInt)) || new Word(_y.value._abs.__t__[((0 : GoInt))].__t__ & ((1 : GoUInt))).__t__ == ((0 : GoUInt))) {
            throw stdgo.fmt.Fmt.sprintf("big: invalid 2nd argument to Int.Jacobi: need odd integer but got %s", Go.toInterface(_y));
        };
        var _a:Int_ = new Int_(), _b:Int_ = new Int_(), _c:Int_ = new Int_();
        _a.set(_x);
        _b.set(_y);
        var _j:GoInt = ((1 : GoInt));
        if (_b._neg) {
            if (_a._neg) {
                _j = -((1 : GoUnTypedInt));
            };
            _b._neg = false;
        };
        while (true) {
            if (_b.cmp(_intOne) == ((0 : GoInt))) {
                return _j;
            };
            if (_a._abs.__t__.length == ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            _a.mod(Go.pointer(_a), Go.pointer(_b));
            if (_a._abs.__t__.length == ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            var _s:GoUInt = _a._abs._trailingZeroBits();
            if (_s & ((1 : GoUInt)) != ((0 : GoUInt))) {
                var _bmod8:Word = new Word(_b._abs.__t__[((0 : GoInt))].__t__ & ((7 : GoUInt)));
                if (_bmod8.__t__ == ((3 : GoUInt)) || _bmod8.__t__ == ((5 : GoUInt))) {
                    _j = -_j;
                };
            };
            _c.rsh(Go.pointer(_a), _s);
            if (new Word(_b._abs.__t__[((0 : GoInt))].__t__ & ((3 : GoUInt))).__t__ == ((3 : GoUInt)) && new Word(_c._abs.__t__[((0 : GoInt))].__t__ & ((3 : GoUInt))).__t__ == ((3 : GoUInt))) {
                _j = -_j;
            };
            _a.set(Go.pointer(_b));
            _b.set(Go.pointer(_c));
        };
    }
/**
    // write count copies of text to s
**/
function _writeMultiple(_s:stdgo.fmt.Fmt.State, _text:GoString, _count:GoInt):Void {
        if (_text.length > ((0 : GoInt))) {
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
        if (_ch == (("-".code : GoRune))) {
            _neg = true;
        } else if (_ch == (("+".code : GoRune))) {} else {
            _r.unreadByte();
        };
        return { _0 : _neg, _1 : _err };
    }
/**
    // basicMul multiplies x and y and leaves the result in z.
    // The (non-normalized) result is placed in z[0 : len(x) + len(y)].
**/
function _basicMul(_z:T_nat, _x:T_nat, _y:T_nat):Void {
        _z.__slice__(((0 : GoInt)), _x.__t__.length + _y.__t__.length)._clear();
        {
            var _i;
            var _d;
            for (_obj in _y.__t__.keyValueIterator()) {
                _i = _obj.key;
                _d = _obj.value;
                if (_d.__t__ != ((0 : GoUInt))) {
                    _z.__t__[_x.__t__.length + _i] = _addMulVVW(_z.__slice__(_i, _i + _x.__t__.length).__copy__().__t__, _x.__copy__().__t__, _d);
                };
            };
        };
    }
/**
    // Fast version of z[0:n+n>>1].add(z[0:n+n>>1], x[0:n]) w/o bounds checks.
    // Factored out for readability - do not use outside karatsuba.
**/
function _karatsubaAdd(_z:T_nat, _x:T_nat, _n:GoInt):Void {
        {
            var _c:Word = _addVV(_z.__slice__(((0 : GoInt)), _n).__copy__().__t__, _z.__copy__().__t__, _x.__copy__().__t__);
            if (_c.__t__ != ((0 : GoUInt))) {
                _addVW(_z.__slice__(_n, _n + (_n >> ((1 : GoUnTypedInt)))).__copy__().__t__, _z.__slice__(_n).__copy__().__t__, _c);
            };
        };
    }
/**
    // Like karatsubaAdd, but does subtract.
**/
function _karatsubaSub(_z:T_nat, _x:T_nat, _n:GoInt):Void {
        {
            var _c:Word = _subVV(_z.__slice__(((0 : GoInt)), _n).__copy__().__t__, _z.__copy__().__t__, _x.__copy__().__t__);
            if (_c.__t__ != ((0 : GoUInt))) {
                _subVW(_z.__slice__(_n, _n + (_n >> ((1 : GoUnTypedInt)))).__copy__().__t__, _z.__slice__(_n).__copy__().__t__, _c);
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
        var _n:GoInt = _y.__t__.length;
        if (_n & ((1 : GoInt)) != ((0 : GoInt)) || _n < _karatsubaThreshold || _n < ((2 : GoInt))) {
            _basicMul(_z.__copy__(), _x.__copy__(), _y.__copy__());
            return;
        };
        var _n2:GoInt = (_n >> ((1 : GoUnTypedInt)));
        var _x1:T_nat = _x.__slice__(_n2).__copy__(), _x0:T_nat = _x.__slice__(((0 : GoInt)), _n2).__copy__();
        var _y1:T_nat = _y.__slice__(_n2).__copy__(), _y0:T_nat = _y.__slice__(((0 : GoInt)), _n2).__copy__();
        _karatsuba(_z.__copy__(), _x0.__copy__(), _y0.__copy__());
        _karatsuba(_z.__slice__(_n).__copy__(), _x1.__copy__(), _y1.__copy__());
        var _s:GoInt = ((1 : GoInt));
        var _xd:T_nat = _z.__slice__(((2 : GoInt)) * _n, ((2 : GoInt)) * _n + _n2).__copy__();
        if (_subVV(_xd.__copy__().__t__, _x1.__copy__().__t__, _x0.__copy__().__t__).__t__ != ((0 : GoUInt))) {
            _s = -_s;
            _subVV(_xd.__copy__().__t__, _x0.__copy__().__t__, _x1.__copy__().__t__);
        };
        var _yd:T_nat = _z.__slice__(((2 : GoInt)) * _n + _n2, ((3 : GoInt)) * _n).__copy__();
        if (_subVV(_yd.__copy__().__t__, _y0.__copy__().__t__, _y1.__copy__().__t__).__t__ != ((0 : GoUInt))) {
            _s = -_s;
            _subVV(_yd.__copy__().__t__, _y1.__copy__().__t__, _y0.__copy__().__t__);
        };
        var _p:T_nat = _z.__slice__(_n * ((3 : GoInt))).__copy__();
        _karatsuba(_p.__copy__(), _xd.__copy__(), _yd.__copy__());
        var _r:T_nat = _z.__slice__(_n * ((4 : GoInt))).__copy__();
        Go.copy(_r, _z.__slice__(0, _n * ((2 : GoInt))));
        _karatsubaAdd(_z.__slice__(_n2).__copy__(), _r.__copy__(), _n);
        _karatsubaAdd(_z.__slice__(_n2).__copy__(), _r.__slice__(_n).__copy__(), _n);
        if (_s > ((0 : GoInt))) {
            _karatsubaAdd(_z.__slice__(_n2).__copy__(), _p.__copy__(), _n);
        } else {
            _karatsubaSub(_z.__slice__(_n2).__copy__(), _p.__copy__(), _n);
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
        return _x.__t__.cap() > ((0 : GoInt)) && _y.__t__.cap() > ((0 : GoInt)) && Go.pointer(_x.__slice__(((0 : GoInt)), _x.__t__.cap()).__t__[_x.__t__.cap() - ((1 : GoInt))]) == Go.pointer(_y.__slice__(((0 : GoInt)), _y.__t__.cap()).__t__[_y.__t__.cap() - ((1 : GoInt))]);
    }
/**
    // addAt implements z += x<<(_W*i); z must be long enough.
    // (we don't use nat.add because we need z to stay the same
    // slice, and we don't need to normalize z after each addition)
**/
function _addAt(_z:T_nat, _x:T_nat, _i:GoInt):Void {
        {
            var _n:GoInt = _x.__t__.length;
            if (_n > ((0 : GoInt))) {
                {
                    var _c:Word = _addVV(_z.__slice__(_i, _i + _n).__copy__().__t__, _z.__slice__(_i).__copy__().__t__, _x.__copy__().__t__);
                    if (_c.__t__ != ((0 : GoUInt))) {
                        var _j:GoInt = _i + _n;
                        if (_j < _z.__t__.length) {
                            _addVW(_z.__slice__(_j).__copy__().__t__, _z.__slice__(_j).__copy__().__t__, _c);
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
            _n = (_n >> (((1 : GoUnTypedInt))));
            _i++;
        };
        return (_n << _i);
    }
/**
    // basicSqr sets z = x*x and is asymptotically faster than basicMul
    // by about a factor of 2, but slower for small arguments due to overhead.
    // Requirements: len(x) > 0, len(z) == 2*len(x)
    // The (non-normalized) result is placed in z.
**/
function _basicSqr(_z:T_nat, _x:T_nat):Void {
        var _n:GoInt = _x.__t__.length;
        var _tp:Pointer<T_nat> = _getNat(((2 : GoInt)) * _n);
        var _t:T_nat = _tp.value.__copy__();
        _t._clear();
        {
            var __tmp__ = _mulWW(_x.__t__[((0 : GoInt))], _x.__t__[((0 : GoInt))]);
            _z.__t__[((1 : GoInt))] = __tmp__._0;
            _z.__t__[((0 : GoInt))] = __tmp__._1;
        };
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _d:Word = _x.__t__[_i];
                {
                    var __tmp__ = _mulWW(_d, _d);
                    _z.__t__[((2 : GoInt)) * _i + ((1 : GoInt))] = __tmp__._0;
                    _z.__t__[((2 : GoInt)) * _i] = __tmp__._1;
                };
                _t.__t__[((2 : GoInt)) * _i] = _addMulVVW(_t.__slice__(_i, ((2 : GoInt)) * _i).__copy__().__t__, _x.__slice__(((0 : GoInt)), _i).__copy__().__t__, _d);
            });
        };
        _t.__t__[((2 : GoInt)) * _n - ((1 : GoInt))] = _shlVU(_t.__slice__(((1 : GoInt)), ((2 : GoInt)) * _n - ((1 : GoInt))).__copy__().__t__, _t.__slice__(((1 : GoInt)), ((2 : GoInt)) * _n - ((1 : GoInt))).__copy__().__t__, ((1 : GoUInt)));
        _addVV(_z.__copy__().__t__, _z.__copy__().__t__, _t.__copy__().__t__);
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
        var _n:GoInt = _x.__t__.length;
        if (_n & ((1 : GoInt)) != ((0 : GoInt)) || _n < _karatsubaSqrThreshold || _n < ((2 : GoInt))) {
            _basicSqr(_z.__slice__(0, ((2 : GoInt)) * _n).__copy__(), _x.__copy__());
            return;
        };
        var _n2:GoInt = (_n >> ((1 : GoUnTypedInt)));
        var _x1:T_nat = _x.__slice__(_n2).__copy__(), _x0:T_nat = _x.__slice__(((0 : GoInt)), _n2).__copy__();
        _karatsubaSqr(_z.__copy__(), _x0.__copy__());
        _karatsubaSqr(_z.__slice__(_n).__copy__(), _x1.__copy__());
        var _xd:T_nat = _z.__slice__(((2 : GoInt)) * _n, ((2 : GoInt)) * _n + _n2).__copy__();
        if (_subVV(_xd.__copy__().__t__, _x1.__copy__().__t__, _x0.__copy__().__t__).__t__ != ((0 : GoUInt))) {
            _subVV(_xd.__copy__().__t__, _x0.__copy__().__t__, _x1.__copy__().__t__);
        };
        var _p:T_nat = _z.__slice__(_n * ((3 : GoInt))).__copy__();
        _karatsubaSqr(_p.__copy__(), _xd.__copy__());
        var _r:T_nat = _z.__slice__(_n * ((4 : GoInt))).__copy__();
        Go.copy(_r, _z.__slice__(0, _n * ((2 : GoInt))));
        _karatsubaAdd(_z.__slice__(_n2).__copy__(), _r.__copy__(), _n);
        _karatsubaAdd(_z.__slice__(_n2).__copy__(), _r.__slice__(_n).__copy__(), _n);
        _karatsubaSub(_z.__slice__(_n2).__copy__(), _p.__copy__(), _n);
    }
/**
    // getNat returns a *nat of len n. The contents may not be zero.
    // The pool holds *nat to avoid allocation when converting to interface{}.
**/
function _getNat(_n:GoInt):Pointer<T_nat> {
        var _z:Pointer<T_nat> = new Pointer<T_nat>().nil();
        {
            var _v:AnyInterface = Go.toInterface(_natPool.get());
            if (_v != null) {
                _z = ((_v.value : Pointer<T_nat>));
            };
        };
        if (_z == null || _z.isNil()) {
            _z = Go.pointer(new T_nat());
        };
        _z.value = _z.value._make(_n).__copy__();
        return _z;
    }
function _putNat(_x:Pointer<T_nat>):Void {
        _natPool.put(Go.toInterface(_x));
    }
function _same(_x:T_nat, _y:T_nat):Bool {
        return _x.__t__.length == _y.__t__.length && _x.__t__.length > ((0 : GoInt)) && Go.pointer(_x.__t__[((0 : GoInt))]) == Go.pointer(_y.__t__[((0 : GoInt))]);
    }
/**
    // bigEndianWord returns the contents of buf interpreted as a big-endian encoded Word value.
**/
function _bigEndianWord(_buf:Slice<GoByte>):Word {
        if (__W == ((64 : GoUnTypedInt))) {
            return new Word(stdgo.encoding.binary.Binary.bigEndian.uint64(_buf));
        };
        return new Word(stdgo.encoding.binary.Binary.bigEndian.uint32(_buf));
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
            var _max:Word = new Word(__M / _b.__t__);
            while (_p.__t__ <= _max.__t__) {
                _p = new Word(_p.__t__ * (_b).__t__);
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
        _p = new Word(((1 : GoUInt)));
        while (_n > ((0 : GoInt))) {
            if (_n & ((1 : GoInt)) != ((0 : GoInt))) {
                _p = new Word(_p.__t__ * (_x).__t__);
            };
            _x = new Word(_x.__t__ * (_x).__t__);
            _n = (_n >> (((1 : GoUnTypedInt))));
        };
        return _p;
    }
/**
    // construct table of powers of bb*leafSize to use in subdivisions
**/
function _divisors(_m:GoInt, _b:Word, _ndigits:GoInt, _bb:Word):Slice<T_divisor> {
        if (_leafSize == ((0 : GoInt)) || _m <= _leafSize) {
            return new Slice<T_divisor>().nil();
        };
        var _k:GoInt = ((1 : GoInt));
        {
            var _words:GoInt = _leafSize;
            Go.cfor(_words < (_m >> ((1 : GoUnTypedInt))) && _k < _cacheBase10._table.length, _words = (_words << (((1 : GoUnTypedInt)))), {
                _k++;
            });
        };
        var _table:Slice<T_divisor> = new Slice<T_divisor>().nil();
        if (_b.__t__ == ((10 : GoUInt))) {
            _cacheBase10.lock();
            _table = _cacheBase10._table.__slice__(((0 : GoInt)), _k);
        } else {
            _table = new Slice<T_divisor>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) new T_divisor()]);
        };
        if (_table[_k - ((1 : GoInt))]._ndigits == ((0 : GoInt))) {
            var _larger:T_nat = new T_nat();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _k, _i++, {
                    if (_table[_i]._ndigits == ((0 : GoInt))) {
                        if (_i == ((0 : GoInt))) {
                            _table[((0 : GoInt))]._bbb = ((new T_nat() : T_nat))._expWW(_bb, new Word(_leafSize)).__copy__();
                            _table[((0 : GoInt))]._ndigits = _ndigits * _leafSize;
                        } else {
                            _table[_i]._bbb = ((new T_nat() : T_nat))._sqr(_table[_i - ((1 : GoInt))]._bbb.__copy__()).__copy__();
                            _table[_i]._ndigits = ((2 : GoInt)) * _table[_i - ((1 : GoInt))]._ndigits;
                        };
                        _larger = ((new T_nat() : T_nat))._set(_table[_i]._bbb.__copy__()).__copy__();
                        while (_mulAddVWW(_larger.__copy__().__t__, _larger.__copy__().__t__, _b, new Word(((0 : GoUInt)))).__t__ == ((0 : GoUInt))) {
                            _table[_i]._bbb = _table[_i]._bbb._set(_larger.__copy__()).__copy__();
                            _table[_i]._ndigits++;
                        };
                        _table[_i]._nbits = _table[_i]._bbb._bitLen();
                    };
                });
            };
        };
        if (_b.__t__ == ((10 : GoUInt))) {
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
        if (_x.length == ((1 : GoInt))) {
            var __tmp__ = stdgo.math.bits.Bits.div(_r.__t__, _x[((0 : GoInt))].__t__, _y.__t__), _qq:GoUInt = __tmp__._0, _rr:GoUInt = __tmp__._1;
            _z[((0 : GoInt))] = new Word(_qq);
            return new Word(_rr);
        };
        var _rec:Word = _reciprocalWord(_y);
        {
            var _i:GoInt = _z.length - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                {
                    var __tmp__ = _divWW(_r, _x[_i], _y, _rec);
                    _z[_i] = __tmp__._0;
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
        return _x1.__t__ > _y1.__t__ || _x1.__t__ == _y1.__t__ && _x2.__t__ > _y2.__t__;
    }
/**
    // NewRat creates a new Rat with numerator a and denominator b.
**/
function newRat(_a:GoInt64, _b:GoInt64):Pointer<Rat> {
        return Go.pointer(new Rat()).value.setFrac64(_a, _b);
    }
/**
    // quotToFloat32 returns the non-negative float32 value
    // nearest to the quotient a/b, using round-to-even in
    // halfway cases. It does not mutate its arguments.
    // Preconditions: b is non-zero; a and b have no common factors.
**/
function _quotToFloat32(_a:T_nat, _b:T_nat):{ var _0 : GoFloat32; var _1 : Bool; } {
        var _f:GoFloat32 = ((0 : GoFloat32)), _exact:Bool = false;
        final fsize:GoUnTypedInt = ((32 : GoUnTypedInt)), msize:GoUnTypedInt = ((23 : GoUnTypedInt)), msize1:GoUnTypedInt = msize + ((1 : GoUnTypedInt)), msize2:GoUnTypedInt = msize1 + ((1 : GoUnTypedInt)), esize:GoUnTypedInt = fsize - msize1, ebias:GoUnTypedInt = (((1 : GoUnTypedInt)) << (esize - ((1 : GoUnTypedInt)))) - ((1 : GoUnTypedInt)), emin:GoUnTypedInt = ((1 : GoUnTypedInt)) - ebias, emax:GoUnTypedInt = ebias;
        var _alen:GoInt = _a._bitLen();
        if (_alen == ((0 : GoInt))) {
            return { _0 : ((0 : GoFloat32)), _1 : true };
        };
        var _blen:GoInt = _b._bitLen();
        if (_blen == ((0 : GoInt))) {
            throw "division by zero";
        };
        var _exp:GoInt = _alen - _blen;
        var _a2:T_nat = new T_nat(), _b2:T_nat = new T_nat();
        _a2 = _a2._set(_a.__copy__()).__copy__();
        _b2 = _b2._set(_b.__copy__()).__copy__();
        {
            var _shift:GoInt = msize2 - _exp;
            if (_shift > ((0 : GoInt))) {
                _a2 = _a2._shl(_a2.__copy__(), ((_shift : GoUInt))).__copy__();
            } else if (_shift < ((0 : GoInt))) {
                _b2 = _b2._shl(_b2.__copy__(), ((-_shift : GoUInt))).__copy__();
            };
        };
        var _q:T_nat = new T_nat();
        var __tmp__ = _q._div(_a2.__copy__(), _a2.__copy__(), _b2.__copy__()), _q:T_nat = __tmp__._0, _r:T_nat = __tmp__._1;
        var _mantissa:GoUInt32 = _low32(_q.__copy__());
        var _haveRem:Bool = _r.__t__.length > ((0 : GoInt));
        if ((_mantissa >> msize2) == ((1 : GoUInt32))) {
            if (_mantissa & ((1 : GoUInt32)) == ((1 : GoUInt32))) {
                _haveRem = true;
            };
            _mantissa = (_mantissa >> (((1 : GoUnTypedInt))));
            _exp++;
        };
        if ((_mantissa >> msize1) != ((1 : GoUInt32))) {
            throw stdgo.fmt.Fmt.sprintf("expected exactly %d bits of result", Go.toInterface(msize2));
        };
        if (emin - msize <= _exp && _exp <= emin) {
            var _shift:GoUInt = (((emin - (_exp - ((1 : GoInt)))) : GoUInt));
            var _lostbits:GoUInt32 = _mantissa & ((((1 : GoUInt32)) << _shift) - ((1 : GoUInt32)));
            _haveRem = _haveRem || _lostbits != ((0 : GoUInt32));
            _mantissa = (_mantissa >> (_shift));
            _exp = ((2 : GoUnTypedInt)) - ebias;
        };
        _exact = !_haveRem;
        if (_mantissa & ((1 : GoUInt32)) != ((0 : GoUInt32))) {
            _exact = false;
            if (_haveRem || _mantissa & ((2 : GoUInt32)) != ((0 : GoUInt32))) {
                {
                    _mantissa++;
                    if (_mantissa >= (((1 : GoUnTypedInt)) << msize2)) {
                        _mantissa = (_mantissa >> (((1 : GoUnTypedInt))));
                        _exp++;
                    };
                };
            };
        };
        _mantissa = (_mantissa >> (((1 : GoUnTypedInt))));
        _f = ((stdgo.math.Math.ldexp(((_mantissa : GoFloat64)), _exp - msize1) : GoFloat32));
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
        final fsize:GoUnTypedInt = ((64 : GoUnTypedInt)), msize:GoUnTypedInt = ((52 : GoUnTypedInt)), msize1:GoUnTypedInt = msize + ((1 : GoUnTypedInt)), msize2:GoUnTypedInt = msize1 + ((1 : GoUnTypedInt)), esize:GoUnTypedInt = fsize - msize1, ebias:GoUnTypedInt = (((1 : GoUnTypedInt)) << (esize - ((1 : GoUnTypedInt)))) - ((1 : GoUnTypedInt)), emin:GoUnTypedInt = ((1 : GoUnTypedInt)) - ebias, emax:GoUnTypedInt = ebias;
        var _alen:GoInt = _a._bitLen();
        if (_alen == ((0 : GoInt))) {
            return { _0 : ((0 : GoFloat64)), _1 : true };
        };
        var _blen:GoInt = _b._bitLen();
        if (_blen == ((0 : GoInt))) {
            throw "division by zero";
        };
        var _exp:GoInt = _alen - _blen;
        var _a2:T_nat = new T_nat(), _b2:T_nat = new T_nat();
        _a2 = _a2._set(_a.__copy__()).__copy__();
        _b2 = _b2._set(_b.__copy__()).__copy__();
        {
            var _shift:GoInt = msize2 - _exp;
            if (_shift > ((0 : GoInt))) {
                _a2 = _a2._shl(_a2.__copy__(), ((_shift : GoUInt))).__copy__();
            } else if (_shift < ((0 : GoInt))) {
                _b2 = _b2._shl(_b2.__copy__(), ((-_shift : GoUInt))).__copy__();
            };
        };
        var _q:T_nat = new T_nat();
        var __tmp__ = _q._div(_a2.__copy__(), _a2.__copy__(), _b2.__copy__()), _q:T_nat = __tmp__._0, _r:T_nat = __tmp__._1;
        var _mantissa:GoUInt64 = _low64(_q.__copy__());
        var _haveRem:Bool = _r.__t__.length > ((0 : GoInt));
        if ((_mantissa >> msize2) == ((1 : GoUInt64))) {
            if (_mantissa & ((1 : GoUInt64)) == ((1 : GoUInt64))) {
                _haveRem = true;
            };
            _mantissa = (_mantissa >> (((1 : GoUnTypedInt))));
            _exp++;
        };
        if ((_mantissa >> msize1) != ((1 : GoUInt64))) {
            throw stdgo.fmt.Fmt.sprintf("expected exactly %d bits of result", Go.toInterface(msize2));
        };
        if (emin - msize <= _exp && _exp <= emin) {
            var _shift:GoUInt = (((emin - (_exp - ((1 : GoInt)))) : GoUInt));
            var _lostbits:GoUInt64 = _mantissa & ((((1 : GoUInt64)) << _shift) - ((1 : GoUInt64)));
            _haveRem = _haveRem || _lostbits != ((0 : GoUInt64));
            _mantissa = (_mantissa >> (_shift));
            _exp = ((2 : GoUnTypedInt)) - ebias;
        };
        _exact = !_haveRem;
        if (_mantissa & ((1 : GoUInt64)) != ((0 : GoUInt64))) {
            _exact = false;
            if (_haveRem || _mantissa & ((2 : GoUInt64)) != ((0 : GoUInt64))) {
                {
                    _mantissa++;
                    if (_mantissa >= (((1 : GoUnTypedInt)) << msize2)) {
                        _mantissa = (_mantissa >> (((1 : GoUnTypedInt))));
                        _exp++;
                    };
                };
            };
        };
        _mantissa = (_mantissa >> (((1 : GoUnTypedInt))));
        _f = stdgo.math.Math.ldexp(((_mantissa : GoFloat64)), _exp - msize1);
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
        if (_x.__t__.length == ((0 : GoInt)) && _y.__t__.length == ((0 : GoInt))) {
            return _z._setWord(new Word(((1 : GoUInt)))).__copy__();
        } else if (_x.__t__.length == ((0 : GoInt))) {
            return _z._set(_y.__copy__()).__copy__();
        } else if (_y.__t__.length == ((0 : GoInt))) {
            return _z._set(_x.__copy__()).__copy__();
        };
        return _z._mul(_x.__copy__(), _y.__copy__()).__copy__();
    }
function _ratTok(_ch:GoRune):Bool {
        return stdgo.strings.Strings.containsRune("+-/0123456789.eE", _ch);
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
            if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                _err = ((null : stdgo.Error));
            };
            return { _0 : ((0 : GoInt64)), _1 : ((10 : GoInt)), _2 : _err };
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _ch == (("e".code : GoRune)) || _ch == (("E".code : GoRune)))) {
                    _base = ((10 : GoInt));
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _ch == (("p".code : GoRune)) || _ch == (("P".code : GoRune)))) {
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
        var _digits:Slice<GoByte> = new Slice<GoUInt8>().nil();
        {
            var __tmp__ = _r.readByte();
            _ch = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err == null && (_ch == (("+".code : GoRune)) || _ch == (("-".code : GoRune)))) {
            if (_ch == (("-".code : GoRune))) {
                _digits = _digits.__append__((("-".code : GoRune)));
            };
            {
                var __tmp__ = _r.readByte();
                _ch = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        var _prev:GoInt32 = ((".".code : GoRune));
        var _invalSep:Bool = false;
        var _hasDigits:Bool = false;
        while (_err == null) {
            if ((("0".code : GoRune)) <= _ch && _ch <= (("9".code : GoRune))) {
                _digits = _digits.__append__(_ch);
                _prev = (("0".code : GoRune));
                _hasDigits = true;
            } else if (_ch == (("_".code : GoRune)) && _sepOk) {
                if (_prev != (("0".code : GoRune))) {
                    _invalSep = true;
                };
                _prev = (("_".code : GoRune));
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
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            _err = ((null : stdgo.Error));
        };
        if (_err == null && !_hasDigits) {
            _err = _errNoDigits;
        };
        if (_err == null) {
            {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(((_digits : GoString)), ((10 : GoInt)), ((64 : GoInt)));
                _exp = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err == null && (_invalSep || _prev == (("_".code : GoRune)))) {
            _err = _errInvalSep;
        };
        return { _0 : _exp, _1 : _base, _2 : _err };
    }
function _three():Pointer<Float_> {
        _threeOnce.do_(function():Void {
            _threeOnce._v = newFloat(((3 : GoFloat64)));
        });
        return _threeOnce._v;
    }
/**
    // newFloat returns a new *Float with space for twice the given
    // precision.
**/
function _newFloat(_prec2:GoUInt32):Pointer<Float_> {
        var _z:Pointer<Float_> = Go.pointer(new Float_());
        _z.value._mant = _z.value._mant._make((((_prec2 / __W) : GoInt)) * ((2 : GoInt))).__copy__();
        return _z;
    }
class T_decimal_extension_fields {
    public function _at(__tmp__, _i:GoInt):GoByte return __tmp__._at(_i);
    public function _init(__tmp__, _m:T_nat, _shift:GoInt):Void __tmp__._init(_m, _shift);
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function _round(__tmp__, _n:GoInt):Void __tmp__._round(_n);
    public function _roundUp(__tmp__, _n:GoInt):Void __tmp__._roundUp(_n);
    public function _roundDown(__tmp__, _n:GoInt):Void __tmp__._roundDown(_n);
}
class Float__extension_fields {
    public function setPrec(__tmp__, _prec:GoUInt):Pointer<Float_> return __tmp__.setPrec(_prec);
    public function setMode(__tmp__, _mode:RoundingMode):Pointer<Float_> return __tmp__.setMode(_mode);
    public function prec(__tmp__):GoUInt return __tmp__.prec();
    public function minPrec(__tmp__):GoUInt return __tmp__.minPrec();
    public function mode(__tmp__):RoundingMode return __tmp__.mode();
    public function acc(__tmp__):Accuracy return __tmp__.acc();
    public function sign(__tmp__):GoInt return __tmp__.sign();
    public function mantExp(__tmp__, _mant:Pointer<Float_>):GoInt return __tmp__.mantExp(_mant);
    public function _setExpAndRound(__tmp__, _exp:GoInt64, _sbit:GoUInt):Void __tmp__._setExpAndRound(_exp, _sbit);
    public function setMantExp(__tmp__, _mant:Pointer<Float_>, _exp:GoInt):Pointer<Float_> return __tmp__.setMantExp(_mant, _exp);
    public function signbit(__tmp__):Bool return __tmp__.signbit();
    public function isInf(__tmp__):Bool return __tmp__.isInf();
    public function isInt(__tmp__):Bool return __tmp__.isInt();
    public function _validate(__tmp__):Void __tmp__._validate();
    public function _round(__tmp__, _sbit:GoUInt):Void __tmp__._round(_sbit);
    public function _setBits64(__tmp__, _neg:Bool, _x:GoUInt64):Pointer<Float_> return __tmp__._setBits64(_neg, _x);
    public function setUint64(__tmp__, _x:GoUInt64):Pointer<Float_> return __tmp__.setUint64(_x);
    public function setInt64(__tmp__, _x:GoInt64):Pointer<Float_> return __tmp__.setInt64(_x);
    public function setFloat64(__tmp__, _x:GoFloat64):Pointer<Float_> return __tmp__.setFloat64(_x);
    public function setInt(__tmp__, _x:Pointer<Int_>):Pointer<Float_> return __tmp__.setInt(_x);
    public function setRat(__tmp__, _x:Pointer<Rat>):Pointer<Float_> return __tmp__.setRat(_x);
    public function setInf(__tmp__, _signbit:Bool):Pointer<Float_> return __tmp__.setInf(_signbit);
    public function set(__tmp__, _x:Pointer<Float_>):Pointer<Float_> return __tmp__.set(_x);
    public function copy(__tmp__, _x:Pointer<Float_>):Pointer<Float_> return __tmp__.copy(_x);
    public function uint64(__tmp__):{ var _0 : GoUInt64; var _1 : Accuracy; } return __tmp__.uint64();
    public function int64(__tmp__):{ var _0 : GoInt64; var _1 : Accuracy; } return __tmp__.int64();
    public function float32(__tmp__):{ var _0 : GoFloat32; var _1 : Accuracy; } return __tmp__.float32();
    public function float64(__tmp__):{ var _0 : GoFloat64; var _1 : Accuracy; } return __tmp__.float64();
    public function int(__tmp__, _z:Pointer<Int_>):{ var _0 : Pointer<Int_>; var _1 : Accuracy; } return __tmp__.int(_z);
    public function rat(__tmp__, _z:Pointer<Rat>):{ var _0 : Pointer<Rat>; var _1 : Accuracy; } return __tmp__.rat(_z);
    public function abs(__tmp__, _x:Pointer<Float_>):Pointer<Float_> return __tmp__.abs(_x);
    public function neg(__tmp__, _x:Pointer<Float_>):Pointer<Float_> return __tmp__.neg(_x);
    public function _uadd(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Void __tmp__._uadd(_x, _y);
    public function _usub(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Void __tmp__._usub(_x, _y);
    public function _umul(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Void __tmp__._umul(_x, _y);
    public function _uquo(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Void __tmp__._uquo(_x, _y);
    public function _ucmp(__tmp__, _y:Pointer<Float_>):GoInt return __tmp__._ucmp(_y);
    public function add(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> return __tmp__.add(_x, _y);
    public function sub(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> return __tmp__.sub(_x, _y);
    public function mul(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> return __tmp__.mul(_x, _y);
    public function quo(__tmp__, _x:Pointer<Float_>, _y:Pointer<Float_>):Pointer<Float_> return __tmp__.quo(_x, _y);
    public function cmp(__tmp__, _y:Pointer<Float_>):GoInt return __tmp__.cmp(_y);
    public function _ord(__tmp__):GoInt return __tmp__._ord();
    public function setString(__tmp__, _s:GoString):{ var _0 : Pointer<Float_>; var _1 : Bool; } return __tmp__.setString(_s);
    public function _scan(__tmp__, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Pointer<Float_>; var _1 : GoInt; var _2 : Error; } return __tmp__._scan(_r, _base);
    public function _pow5(__tmp__, _n:GoUInt64):Pointer<Float_> return __tmp__._pow5(_n);
    public function parse(__tmp__, _s:GoString, _base:GoInt):{ var _0 : Pointer<Float_>; var _1 : GoInt; var _2 : Error; } return __tmp__.parse(_s, _base);
    public function scan(__tmp__, _s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error return __tmp__.scan(_s, _ch);
    public function gobEncode(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.gobEncode();
    public function gobDecode(__tmp__, _buf:Slice<GoByte>):Error return __tmp__.gobDecode(_buf);
    public function marshalText(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalText();
    public function unmarshalText(__tmp__, _text:Slice<GoByte>):Error return __tmp__.unmarshalText(_text);
    public function text(__tmp__, _format:GoByte, _prec:GoInt):GoString return __tmp__.text(_format, _prec);
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function append(__tmp__, _buf:Slice<GoByte>, _fmt:GoByte, _prec:GoInt):Slice<GoByte> return __tmp__.append(_buf, _fmt, _prec);
    public function _fmtB(__tmp__, _buf:Slice<GoByte>):Slice<GoByte> return __tmp__._fmtB(_buf);
    public function _fmtX(__tmp__, _buf:Slice<GoByte>, _prec:GoInt):Slice<GoByte> return __tmp__._fmtX(_buf, _prec);
    public function _fmtP(__tmp__, _buf:Slice<GoByte>):Slice<GoByte> return __tmp__._fmtP(_buf);
    public function format(__tmp__, _s:stdgo.fmt.Fmt.State, _format:GoRune):Void __tmp__.format(_s, _format);
    public function sqrt(__tmp__, _x:Pointer<Float_>):Pointer<Float_> return __tmp__.sqrt(_x);
    public function _sqrtInverse(__tmp__, _x:Pointer<Float_>):Void __tmp__._sqrtInverse(_x);
}
class ErrNaN_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class RoundingMode_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class Accuracy_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class Int__extension_fields {
    public function sign(__tmp__):GoInt return __tmp__.sign();
    public function setInt64(__tmp__, _x:GoInt64):Pointer<Int_> return __tmp__.setInt64(_x);
    public function setUint64(__tmp__, _x:GoUInt64):Pointer<Int_> return __tmp__.setUint64(_x);
    public function set(__tmp__, _x:Pointer<Int_>):Pointer<Int_> return __tmp__.set(_x);
    public function bits(__tmp__):Slice<Word> return __tmp__.bits();
    public function setBits(__tmp__, _abs:Slice<Word>):Pointer<Int_> return __tmp__.setBits(_abs);
    public function abs(__tmp__, _x:Pointer<Int_>):Pointer<Int_> return __tmp__.abs(_x);
    public function neg(__tmp__, _x:Pointer<Int_>):Pointer<Int_> return __tmp__.neg(_x);
    public function add(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.add(_x, _y);
    public function sub(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.sub(_x, _y);
    public function mul(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.mul(_x, _y);
    public function mulRange(__tmp__, _a:GoInt64, _b:GoInt64):Pointer<Int_> return __tmp__.mulRange(_a, _b);
    public function binomial(__tmp__, _n:GoInt64, _k:GoInt64):Pointer<Int_> return __tmp__.binomial(_n, _k);
    public function quo(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.quo(_x, _y);
    public function rem(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.rem(_x, _y);
    public function quoRem(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>, _r:Pointer<Int_>):{ var _0 : Pointer<Int_>; var _1 : Pointer<Int_>; } return __tmp__.quoRem(_x, _y, _r);
    public function div(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.div(_x, _y);
    public function mod(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.mod(_x, _y);
    public function divMod(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>, _m:Pointer<Int_>):{ var _0 : Pointer<Int_>; var _1 : Pointer<Int_>; } return __tmp__.divMod(_x, _y, _m);
    public function cmp(__tmp__, _y:Pointer<Int_>):GoInt return __tmp__.cmp(_y);
    public function cmpAbs(__tmp__, _y:Pointer<Int_>):GoInt return __tmp__.cmpAbs(_y);
    public function int64(__tmp__):GoInt64 return __tmp__.int64();
    public function uint64(__tmp__):GoUInt64 return __tmp__.uint64();
    public function isInt64(__tmp__):Bool return __tmp__.isInt64();
    public function isUint64(__tmp__):Bool return __tmp__.isUint64();
    public function setString(__tmp__, _s:GoString, _base:GoInt):{ var _0 : Pointer<Int_>; var _1 : Bool; } return __tmp__.setString(_s, _base);
    public function _setFromScanner(__tmp__, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Pointer<Int_>; var _1 : Bool; } return __tmp__._setFromScanner(_r, _base);
    public function setBytes(__tmp__, _buf:Slice<GoByte>):Pointer<Int_> return __tmp__.setBytes(_buf);
    public function bytes(__tmp__):Slice<GoByte> return __tmp__.bytes();
    public function fillBytes(__tmp__, _buf:Slice<GoByte>):Slice<GoByte> return __tmp__.fillBytes(_buf);
    public function bitLen(__tmp__):GoInt return __tmp__.bitLen();
    public function trailingZeroBits(__tmp__):GoUInt return __tmp__.trailingZeroBits();
    public function exp(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>, _m:Pointer<Int_>):Pointer<Int_> return __tmp__.exp(_x, _y, _m);
    public function gcd(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>, _a:Pointer<Int_>, _b:Pointer<Int_>):Pointer<Int_> return __tmp__.gcd(_x, _y, _a, _b);
    public function _lehmerGCD(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>, _a:Pointer<Int_>, _b:Pointer<Int_>):Pointer<Int_> return __tmp__._lehmerGCD(_x, _y, _a, _b);
    public function rand(__tmp__, _rnd:Pointer<stdgo.math.rand.Rand.Rand>, _n:Pointer<Int_>):Pointer<Int_> return __tmp__.rand(_rnd, _n);
    public function modInverse(__tmp__, _g:Pointer<Int_>, _n:Pointer<Int_>):Pointer<Int_> return __tmp__.modInverse(_g, _n);
    public function _modSqrt3Mod4Prime(__tmp__, _x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> return __tmp__._modSqrt3Mod4Prime(_x, _p);
    public function _modSqrt5Mod8Prime(__tmp__, _x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> return __tmp__._modSqrt5Mod8Prime(_x, _p);
    public function _modSqrtTonelliShanks(__tmp__, _x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> return __tmp__._modSqrtTonelliShanks(_x, _p);
    public function modSqrt(__tmp__, _x:Pointer<Int_>, _p:Pointer<Int_>):Pointer<Int_> return __tmp__.modSqrt(_x, _p);
    public function lsh(__tmp__, _x:Pointer<Int_>, _n:GoUInt):Pointer<Int_> return __tmp__.lsh(_x, _n);
    public function rsh(__tmp__, _x:Pointer<Int_>, _n:GoUInt):Pointer<Int_> return __tmp__.rsh(_x, _n);
    public function bit(__tmp__, _i:GoInt):GoUInt return __tmp__.bit(_i);
    public function setBit(__tmp__, _x:Pointer<Int_>, _i:GoInt, _b:GoUInt):Pointer<Int_> return __tmp__.setBit(_x, _i, _b);
    public function and(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.and(_x, _y);
    public function andNot(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.andNot(_x, _y);
    public function or(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.or(_x, _y);
    public function xor(__tmp__, _x:Pointer<Int_>, _y:Pointer<Int_>):Pointer<Int_> return __tmp__.xor(_x, _y);
    public function not(__tmp__, _x:Pointer<Int_>):Pointer<Int_> return __tmp__.not(_x);
    public function sqrt(__tmp__, _x:Pointer<Int_>):Pointer<Int_> return __tmp__.sqrt(_x);
    public function text(__tmp__, _base:GoInt):GoString return __tmp__.text(_base);
    public function append(__tmp__, _buf:Slice<GoByte>, _base:GoInt):Slice<GoByte> return __tmp__.append(_buf, _base);
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function format(__tmp__, _s:stdgo.fmt.Fmt.State, _ch:GoRune):Void __tmp__.format(_s, _ch);
    public function _scan(__tmp__, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Pointer<Int_>; var _1 : GoInt; var _2 : Error; } return __tmp__._scan(_r, _base);
    public function scan(__tmp__, _s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error return __tmp__.scan(_s, _ch);
    public function gobEncode(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.gobEncode();
    public function gobDecode(__tmp__, _buf:Slice<GoByte>):Error return __tmp__.gobDecode(_buf);
    public function marshalText(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalText();
    public function unmarshalText(__tmp__, _text:Slice<GoByte>):Error return __tmp__.unmarshalText(_text);
    public function marshalJSON(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalJSON();
    public function unmarshalJSON(__tmp__, _text:Slice<GoByte>):Error return __tmp__.unmarshalJSON(_text);
    public function probablyPrime(__tmp__, _n:GoInt):Bool return __tmp__.probablyPrime(_n);
    public function _scaleDenom(__tmp__, _x:Pointer<Int_>, _f:T_nat):Void __tmp__._scaleDenom(_x, _f);
}
class T_byteReader_extension_fields {
    public function readByte(__tmp__):{ var _0 : GoByte; var _1 : Error; } return __tmp__.readByte();
    public function unreadByte(__tmp__):Error return __tmp__.unreadByte();
}
class T_nat_extension_fields {
    public function _clear(__tmp__):Void __tmp__._clear();
    public function _norm(__tmp__):T_nat return __tmp__._norm();
    public function _make(__tmp__, _n:GoInt):T_nat return __tmp__._make(_n);
    public function _setWord(__tmp__, _x:Word):T_nat return __tmp__._setWord(_x);
    public function _setUint64(__tmp__, _x:GoUInt64):T_nat return __tmp__._setUint64(_x);
    public function _set(__tmp__, _x:T_nat):T_nat return __tmp__._set(_x);
    public function _add(__tmp__, _x:T_nat, _y:T_nat):T_nat return __tmp__._add(_x, _y);
    public function _sub(__tmp__, _x:T_nat, _y:T_nat):T_nat return __tmp__._sub(_x, _y);
    public function _cmp(__tmp__, _y:T_nat):GoInt return __tmp__._cmp(_y);
    public function _mulAddWW(__tmp__, _x:T_nat, _y:Word, _r:Word):T_nat return __tmp__._mulAddWW(_x, _y, _r);
    public function _montgomery(__tmp__, _x:T_nat, _y:T_nat, _m:T_nat, _k:Word, _n:GoInt):T_nat return __tmp__._montgomery(_x, _y, _m, _k, _n);
    public function _mul(__tmp__, _x:T_nat, _y:T_nat):T_nat return __tmp__._mul(_x, _y);
    public function _sqr(__tmp__, _x:T_nat):T_nat return __tmp__._sqr(_x);
    public function _mulRange(__tmp__, _a:GoUInt64, _b:GoUInt64):T_nat return __tmp__._mulRange(_a, _b);
    public function _bitLen(__tmp__):GoInt return __tmp__._bitLen();
    public function _trailingZeroBits(__tmp__):GoUInt return __tmp__._trailingZeroBits();
    public function _shl(__tmp__, _x:T_nat, _s:GoUInt):T_nat return __tmp__._shl(_x, _s);
    public function _shr(__tmp__, _x:T_nat, _s:GoUInt):T_nat return __tmp__._shr(_x, _s);
    public function _setBit(__tmp__, _x:T_nat, _i:GoUInt, _b:GoUInt):T_nat return __tmp__._setBit(_x, _i, _b);
    public function _bit(__tmp__, _i:GoUInt):GoUInt return __tmp__._bit(_i);
    public function _sticky(__tmp__, _i:GoUInt):GoUInt return __tmp__._sticky(_i);
    public function _and(__tmp__, _x:T_nat, _y:T_nat):T_nat return __tmp__._and(_x, _y);
    public function _andNot(__tmp__, _x:T_nat, _y:T_nat):T_nat return __tmp__._andNot(_x, _y);
    public function _or(__tmp__, _x:T_nat, _y:T_nat):T_nat return __tmp__._or(_x, _y);
    public function _xor(__tmp__, _x:T_nat, _y:T_nat):T_nat return __tmp__._xor(_x, _y);
    public function _random(__tmp__, _rand:Pointer<stdgo.math.rand.Rand.Rand>, _limit:T_nat, _n:GoInt):T_nat return __tmp__._random(_rand, _limit, _n);
    public function _expNN(__tmp__, _x:T_nat, _y:T_nat, _m:T_nat):T_nat return __tmp__._expNN(_x, _y, _m);
    public function _expNNWindowed(__tmp__, _x:T_nat, _y:T_nat, _m:T_nat):T_nat return __tmp__._expNNWindowed(_x, _y, _m);
    public function _expNNMontgomery(__tmp__, _x:T_nat, _y:T_nat, _m:T_nat):T_nat return __tmp__._expNNMontgomery(_x, _y, _m);
    public function _bytes(__tmp__, _buf:Slice<GoByte>):GoInt return __tmp__._bytes(_buf);
    public function _setBytes(__tmp__, _buf:Slice<GoByte>):T_nat return __tmp__._setBytes(_buf);
    public function _sqrt(__tmp__, _x:T_nat):T_nat return __tmp__._sqrt(_x);
    public function _scan(__tmp__, _r:stdgo.io.Io.ByteScanner, _base:GoInt, _fracOk:Bool):{ var _0 : T_nat; var _1 : GoInt; var _2 : GoInt; var _3 : Error; } return __tmp__._scan(_r, _base, _fracOk);
    public function _utoa(__tmp__, _base:GoInt):Slice<GoByte> return __tmp__._utoa(_base);
    public function _itoa(__tmp__, _neg:Bool, _base:GoInt):Slice<GoByte> return __tmp__._itoa(_neg, _base);
    public function _convertWords(__tmp__, _s:Slice<GoByte>, _b:Word, _ndigits:GoInt, _bb:Word, _table:Slice<T_divisor>):Void __tmp__._convertWords(_s, _b, _ndigits, _bb, _table);
    public function _expWW(__tmp__, _x:Word, _y:Word):T_nat return __tmp__._expWW(_x, _y);
    public function _div(__tmp__, _z2:T_nat, _u:T_nat, _v:T_nat):{ var _0 : T_nat; var _1 : T_nat; } return __tmp__._div(_z2, _u, _v);
    public function _divW(__tmp__, _x:T_nat, _y:Word):{ var _0 : T_nat; var _1 : Word; } return __tmp__._divW(_x, _y);
    public function _modW(__tmp__, _d:Word):Word return __tmp__._modW(_d);
    public function _divLarge(__tmp__, _u:T_nat, _uIn:T_nat, _vIn:T_nat):{ var _0 : T_nat; var _1 : T_nat; } return __tmp__._divLarge(_u, _uIn, _vIn);
    public function _divBasic(__tmp__, _u:T_nat, _v:T_nat):Void __tmp__._divBasic(_u, _v);
    public function _divRecursive(__tmp__, _u:T_nat, _v:T_nat):Void __tmp__._divRecursive(_u, _v);
    public function _divRecursiveStep(__tmp__, _u:T_nat, _v:T_nat, _depth:GoInt, _tmp:Pointer<T_nat>, _temps:Slice<Pointer<T_nat>>):Void __tmp__._divRecursiveStep(_u, _v, _depth, _tmp, _temps);
    public function _probablyPrimeMillerRabin(__tmp__, _reps:GoInt, _force2:Bool):Bool return __tmp__._probablyPrimeMillerRabin(_reps, _force2);
    public function _probablyPrimeLucas(__tmp__):Bool return __tmp__._probablyPrimeLucas();
}
class Rat_extension_fields {
    public function setFloat64(__tmp__, _f:GoFloat64):Pointer<Rat> return __tmp__.setFloat64(_f);
    public function float32(__tmp__):{ var _0 : GoFloat32; var _1 : Bool; } return __tmp__.float32();
    public function float64(__tmp__):{ var _0 : GoFloat64; var _1 : Bool; } return __tmp__.float64();
    public function setFrac(__tmp__, _a:Pointer<Int_>, _b:Pointer<Int_>):Pointer<Rat> return __tmp__.setFrac(_a, _b);
    public function setFrac64(__tmp__, _a:GoInt64, _b:GoInt64):Pointer<Rat> return __tmp__.setFrac64(_a, _b);
    public function setInt(__tmp__, _x:Pointer<Int_>):Pointer<Rat> return __tmp__.setInt(_x);
    public function setInt64(__tmp__, _x:GoInt64):Pointer<Rat> return __tmp__.setInt64(_x);
    public function setUint64(__tmp__, _x:GoUInt64):Pointer<Rat> return __tmp__.setUint64(_x);
    public function set(__tmp__, _x:Pointer<Rat>):Pointer<Rat> return __tmp__.set(_x);
    public function abs(__tmp__, _x:Pointer<Rat>):Pointer<Rat> return __tmp__.abs(_x);
    public function neg(__tmp__, _x:Pointer<Rat>):Pointer<Rat> return __tmp__.neg(_x);
    public function inv(__tmp__, _x:Pointer<Rat>):Pointer<Rat> return __tmp__.inv(_x);
    public function sign(__tmp__):GoInt return __tmp__.sign();
    public function isInt(__tmp__):Bool return __tmp__.isInt();
    public function num(__tmp__):Pointer<Int_> return __tmp__.num();
    public function denom(__tmp__):Pointer<Int_> return __tmp__.denom();
    public function _norm(__tmp__):Pointer<Rat> return __tmp__._norm();
    public function cmp(__tmp__, _y:Pointer<Rat>):GoInt return __tmp__.cmp(_y);
    public function add(__tmp__, _x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> return __tmp__.add(_x, _y);
    public function sub(__tmp__, _x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> return __tmp__.sub(_x, _y);
    public function mul(__tmp__, _x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> return __tmp__.mul(_x, _y);
    public function quo(__tmp__, _x:Pointer<Rat>, _y:Pointer<Rat>):Pointer<Rat> return __tmp__.quo(_x, _y);
    public function scan(__tmp__, _s:stdgo.fmt.Fmt.ScanState, _ch:GoRune):Error return __tmp__.scan(_s, _ch);
    public function setString(__tmp__, _s:GoString):{ var _0 : Pointer<Rat>; var _1 : Bool; } return __tmp__.setString(_s);
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function ratString(__tmp__):GoString return __tmp__.ratString();
    public function floatString(__tmp__, _prec:GoInt):GoString return __tmp__.floatString(_prec);
    public function gobEncode(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.gobEncode();
    public function gobDecode(__tmp__, _buf:Slice<GoByte>):Error return __tmp__.gobDecode(_buf);
    public function marshalText(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalText();
    public function unmarshalText(__tmp__, _text:Slice<GoByte>):Error return __tmp__.unmarshalText(_text);
}
