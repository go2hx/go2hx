package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Float__asInterface) class Float__static_extension {
    @:keep
    static public function _sqrtInverse( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        var _u = stdgo._internal.math.big.Big__newFloat._newFloat(_z._prec);
        var _v = stdgo._internal.math.big.Big__newFloat._newFloat(_z._prec);
        var _three = stdgo._internal.math.big.Big__three._three();
        var _ng = function(_t:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
            _u._prec = _t._prec;
            _v._prec = _t._prec;
            _u.mul(_t, _t);
            _u.mul(_x, _u);
            _v.sub(_three, _u);
            _u.mul(_t, _v);
            _u._exp--;
            return _t.set(_u);
        };
        var __tmp__ = _x.float64(), _xf:stdgo.GoFloat64 = __tmp__._0, __14:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
        var _sqi = stdgo._internal.math.big.Big__newFloat._newFloat(_z._prec);
        _sqi.setFloat64(((1 : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_xf) : stdgo.GoFloat64));
        {
            var _prec = (_z._prec + (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_sqi._prec < _prec : Bool)) {
                _sqi._prec = (_sqi._prec * ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _sqi = _ng(_sqi);
            };
        };
        _z.mul(_x, _sqi);
    }
    @:keep
    static public function sqrt( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _x._validate();
        };
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = _x._prec;
        };
        if (_x.sign() == ((-1 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_ErrNaN.ErrNaN(("square root of negative operand" : stdgo.GoString)) : stdgo._internal.math.big.Big_ErrNaN.ErrNaN)));
        };
        if (_x._form != ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
            _z._form = _x._form;
            _z._neg = _x._neg;
            return _z;
        };
        var _prec = (_z._prec : stdgo.GoUInt32);
        var _b = (_x.mantExp(_z) : stdgo.GoInt);
        _z._prec = _prec;
        {
            final __value__ = (_b % (2 : stdgo.GoInt) : stdgo.GoInt);
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                _z._exp++;
            } else if (__value__ == ((-1 : stdgo.GoInt))) {
                _z._exp--;
            };
        };
        _z._sqrtInverse(_z);
        return _z.setMantExp(_z, (_b / (2 : stdgo.GoInt) : stdgo.GoInt));
    }
    @:keep
    static public function format( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _s:stdgo._internal.fmt.Fmt_State.State, _format:stdgo.GoInt32):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        var __tmp__ = _s.precision(), _prec:stdgo.GoInt = __tmp__._0, _hasPrec:Bool = __tmp__._1;
        if (!_hasPrec) {
            _prec = (6 : stdgo.GoInt);
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _format;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((112 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32))))) {
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (70 : stdgo.GoInt32)))) {
                        _format = (102 : stdgo.GoInt32);
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (118 : stdgo.GoInt32)))) {
                        _format = (103 : stdgo.GoInt32);
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32))))) {
                        if (!_hasPrec) {
                            _prec = (-1 : stdgo.GoInt);
                        };
                        break;
                        break;
                    } else {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_s, ("%%!%c(*big.Float=%s)" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface((_x.string() : stdgo.GoString)));
                        return;
                        break;
                    };
                };
                break;
            };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _buf = _x.append(_buf, (_format : stdgo.GoUInt8), _prec);
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            _buf = (("?" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _sign:stdgo.GoString = ("" : stdgo.GoString);
        if (_buf[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _sign = ("-" : stdgo.GoString);
            _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else if (_buf[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _sign = ("+" : stdgo.GoString);
            if (_s.flag((32 : stdgo.GoInt))) {
                _sign = (" " : stdgo.GoString);
            };
            _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else if (_s.flag((43 : stdgo.GoInt))) {
            _sign = ("+" : stdgo.GoString);
        } else if (_s.flag((32 : stdgo.GoInt))) {
            _sign = (" " : stdgo.GoString);
        };
        var _padding:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _s.width(), _width:stdgo.GoInt = __tmp__._0, _hasWidth:Bool = __tmp__._1;
            if ((_hasWidth && (_width > ((_sign.length) + (_buf.length) : stdgo.GoInt) : Bool) : Bool)) {
                _padding = ((_width - (_sign.length) : stdgo.GoInt) - (_buf.length) : stdgo.GoInt);
            };
        };
        if ((_s.flag((48 : stdgo.GoInt)) && !_x.isInf() : Bool)) {
            stdgo._internal.math.big.Big__writeMultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            stdgo._internal.math.big.Big__writeMultiple._writeMultiple(_s, ("0" : stdgo.GoString), _padding);
            _s.write(_buf);
        } else if (_s.flag((45 : stdgo.GoInt))) {
            stdgo._internal.math.big.Big__writeMultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            _s.write(_buf);
            stdgo._internal.math.big.Big__writeMultiple._writeMultiple(_s, (" " : stdgo.GoString), _padding);
        } else {
            stdgo._internal.math.big.Big__writeMultiple._writeMultiple(_s, (" " : stdgo.GoString), _padding);
            stdgo._internal.math.big.Big__writeMultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            _s.write(_buf);
        };
    }
    @:keep
    static public function _fmtP( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (_x._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
            return (_buf.__append__((48 : stdgo.GoUInt8)));
        };
        if ((false && (_x._form != (1 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _m = (_x._mant : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_m.length) : Bool) && (_m[(_i : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
            _i++;
        };
        _m = (_m.__slice__(_i) : stdgo._internal.math.big.Big_T_nat.T_nat);
        _buf = (_buf.__append__(...(("0x." : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = (_buf.__append__(...(stdgo._internal.bytes.Bytes_trimRight.trimRight(_m._utoa((16 : stdgo.GoInt)), ("0" : stdgo.GoString)) : Array<stdgo.GoUInt8>)));
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)));
        if ((_x._exp >= (0 : stdgo.GoInt32) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)));
        };
        return stdgo._internal.strconv.Strconv_appendInt.appendInt(_buf, (_x._exp : stdgo.GoInt64), (10 : stdgo.GoInt));
    }
    @:keep
    static public function _fmtX( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (_x._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
            _buf = (_buf.__append__(...(("0x0" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            if ((_prec > (0 : stdgo.GoInt) : Bool)) {
                _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _prec : Bool), _i++, {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
                    });
                };
            };
            _buf = (_buf.__append__(...(("p+00" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            return _buf;
        };
        if ((false && (_x._form != (1 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            _n = ((1u32 : stdgo.GoUInt) + (((((_x.minPrec() - (1u32 : stdgo.GoUInt) : stdgo.GoUInt) + (3u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (4u32 : stdgo.GoUInt) : stdgo.GoUInt) * (4u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
        } else {
            _n = ((1u32 : stdgo.GoUInt) + ((4u32 : stdgo.GoUInt) * (_prec : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
        };
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_n).setMode(_x._mode).set(_x);
        var _m = (_x._mant : stdgo._internal.math.big.Big_T_nat.T_nat);
        {
            var _w = ((_x._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if ((_w < _n : Bool)) {
                _m = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shl(_m, (_n - _w : stdgo.GoUInt));
            } else if ((_w > _n : Bool)) {
                _m = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shr(_m, (_w - _n : stdgo.GoUInt));
            };
        };
        var _exp64 = ((_x._exp : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _hm = _m._utoa((16 : stdgo.GoInt));
        if ((false && (_hm[(0 : stdgo.GoInt)] != (49 : stdgo.GoUInt8)) : Bool)) {
            throw stdgo.Go.toInterface((("incorrect mantissa: " : stdgo.GoString) + (_hm : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        _buf = (_buf.__append__(...(("0x1" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        if (((_hm.length) > (1 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            _buf = (_buf.__append__(...((_hm.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)));
        if ((_exp64 >= (0i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)));
        } else {
            _exp64 = -_exp64;
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)));
        };
        if ((_exp64 < (10i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
        };
        return stdgo._internal.strconv.Strconv_appendInt.appendInt(_buf, _exp64, (10 : stdgo.GoInt));
    }
    @:keep
    static public function _fmtB( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (_x._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
            return (_buf.__append__((48 : stdgo.GoUInt8)));
        };
        if ((false && (_x._form != (1 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _m = (_x._mant : stdgo._internal.math.big.Big_T_nat.T_nat);
        {
            var _w = ((_x._mant.length : stdgo.GoUInt32) * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((_w < _x._prec : Bool)) {
                _m = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shl(_m, ((_x._prec - _w : stdgo.GoUInt32) : stdgo.GoUInt));
            } else if ((_w > _x._prec : Bool)) {
                _m = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shr(_m, ((_w - _x._prec : stdgo.GoUInt32) : stdgo.GoUInt));
            };
        };
        _buf = (_buf.__append__(...(_m._utoa((10 : stdgo.GoInt)) : Array<stdgo.GoUInt8>)));
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)));
        var _e = ((_x._exp : stdgo.GoInt64) - (_x._prec : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_e >= (0i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)));
        };
        return stdgo._internal.strconv.Strconv_appendInt.appendInt(_buf, _e, (10 : stdgo.GoInt));
    }
    @:keep
    static public function append( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (_x._neg) {
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)));
        };
        if (_x._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
            if (!_x._neg) {
                _buf = (_buf.__append__((43 : stdgo.GoUInt8)));
            };
            return (_buf.__append__(...(("Inf" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        {
            final __value__ = _fmt;
            if (__value__ == ((98 : stdgo.GoUInt8))) {
                return _x._fmtB(_buf);
            } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                return _x._fmtP(_buf);
            } else if (__value__ == ((120 : stdgo.GoUInt8))) {
                return _x._fmtX(_buf, _prec);
            };
        };
        var _d:stdgo._internal.math.big.Big_T_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal);
        if (_x._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            _d._init(_x._mant, ((_x._exp : stdgo.GoInt) - _x._mant._bitLen() : stdgo.GoInt));
        };
        var _shortest = (false : Bool);
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            _shortest = true;
            stdgo._internal.math.big.Big__roundShortest._roundShortest((stdgo.Go.setRef(_d) : stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>), _x);
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _prec = ((_d._mant.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _prec = stdgo._internal.math.big.Big__max._max(((_d._mant.length) - _d._exp : stdgo.GoInt), (0 : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    _prec = (_d._mant.length);
                };
            };
        } else {
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _d._round(((1 : stdgo.GoInt) + _prec : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _d._round((_d._exp + _prec : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    _d._round(_prec);
                };
            };
        };
        {
            final __value__ = _fmt;
            if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                return stdgo._internal.math.big.Big__fmtE._fmtE(_buf, _fmt, _prec, _d?.__copy__());
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                return stdgo._internal.math.big.Big__fmtF._fmtF(_buf, _prec, _d?.__copy__());
            } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                var _eprec = (_prec : stdgo.GoInt);
                if (((_eprec > (_d._mant.length) : Bool) && ((_d._mant.length) >= _d._exp : Bool) : Bool)) {
                    _eprec = (_d._mant.length);
                };
                if (_shortest) {
                    _eprec = (6 : stdgo.GoInt);
                };
                var _exp = (_d._exp - (1 : stdgo.GoInt) : stdgo.GoInt);
                if (((_exp < (-4 : stdgo.GoInt) : Bool) || (_exp >= _eprec : Bool) : Bool)) {
                    if ((_prec > (_d._mant.length) : Bool)) {
                        _prec = (_d._mant.length);
                    };
                    return stdgo._internal.math.big.Big__fmtE._fmtE(_buf, ((_fmt + (101 : stdgo.GoUInt8) : stdgo.GoUInt8) - (103 : stdgo.GoUInt8) : stdgo.GoUInt8), (_prec - (1 : stdgo.GoInt) : stdgo.GoInt), _d?.__copy__());
                };
                if ((_prec > _d._exp : Bool)) {
                    _prec = (_d._mant.length);
                };
                return stdgo._internal.math.big.Big__fmtF._fmtF(_buf, stdgo._internal.math.big.Big__max._max((_prec - _d._exp : stdgo.GoInt), (0 : stdgo.GoInt)), _d?.__copy__());
            };
        };
        if (_x._neg) {
            _buf = (_buf.__slice__(0, ((_buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_buf.__append__((37 : stdgo.GoUInt8), _fmt));
    }
    @:keep
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        return _x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function text( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _format:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        var _cap = (10 : stdgo.GoInt);
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _cap = (_cap + (_prec) : stdgo.GoInt);
        };
        return (_x.append((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _cap).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _format, _prec) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        var __tmp__ = _z.parse((_text : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt)), __14:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __15:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Float (%v)" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
        };
        return _err;
    }
    @:keep
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (_x == null || (_x : Dynamic).__nil__) {
            return { _0 : (("<nil>" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _x.append(_buf, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_Float_.Float_() : stdgo._internal.math.big.Big_Float_.Float_);
                (_z : stdgo._internal.math.big.Big_Float_.Float_)._prec = __tmp__._prec;
                (_z : stdgo._internal.math.big.Big_Float_.Float_)._mode = __tmp__._mode;
                (_z : stdgo._internal.math.big.Big_Float_.Float_)._acc = __tmp__._acc;
                (_z : stdgo._internal.math.big.Big_Float_.Float_)._form = __tmp__._form;
                (_z : stdgo._internal.math.big.Big_Float_.Float_)._neg = __tmp__._neg;
                (_z : stdgo._internal.math.big.Big_Float_.Float_)._mant = __tmp__._mant;
                (_z : stdgo._internal.math.big.Big_Float_.Float_)._exp = __tmp__._exp;
            };
            return (null : stdgo.Error);
        };
        if (((_buf.length) < (6 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Float.GobDecode: buffer too small" : stdgo.GoString));
        };
        if (_buf[(0 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Float.GobDecode: encoding version %d not supported" : stdgo.GoString), stdgo.Go.toInterface(_buf[(0 : stdgo.GoInt)]));
        };
        var _oldPrec = (_z._prec : stdgo.GoUInt32);
        var _oldMode = (_z._mode : stdgo._internal.math.big.Big_RoundingMode.RoundingMode);
        var _b = (_buf[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        _z._mode = ((((_b >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_RoundingMode.RoundingMode);
        _z._acc = (((((_b >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_Accuracy.Accuracy) - (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        _z._form = ((((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_T_form.T_form);
        _z._neg = (_b & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        _z._prec = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_buf.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if (_z._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            if (((_buf.length) < (10 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.errors.Errors_new_.new_(("Float.GobDecode: buffer too small for finite form float" : stdgo.GoString));
            };
            _z._exp = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
            _z._mant = _z._mant._setBytes((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_oldPrec != ((0u32 : stdgo.GoUInt32))) {
            _z._mode = _oldMode;
            _z.setPrec((_oldPrec : stdgo.GoUInt));
        };
        {
            var _msg = (_z._validate0()?.__copy__() : stdgo.GoString);
            if (_msg != (stdgo.Go.str())) {
                return stdgo._internal.errors.Errors_new_.new_((("Float.GobDecode: " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (_x == null || (_x : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _sz = (6 : stdgo.GoInt);
        var _n = (0 : stdgo.GoInt);
        if (_x._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            _n = ((((_x._prec + (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
            if (((_x._mant.length) < _n : Bool)) {
                _n = (_x._mant.length);
            };
            _sz = (_sz + (((4 : stdgo.GoInt) + (_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_sz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        var _b = (((((_x._mode & (7 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode) : stdgo._internal.math.big.Big_RoundingMode.RoundingMode) : stdgo.GoUInt8) << (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | (((((_x._acc + (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo._internal.math.big.Big_Accuracy.Accuracy)) & (3 : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo.GoUInt8) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8) | (((_x._form & (3 : stdgo._internal.math.big.Big_T_form.T_form) : stdgo._internal.math.big.Big_T_form.T_form) : stdgo.GoUInt8) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
        if (_x._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(1 : stdgo.GoInt)] = _b;
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_buf.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x._prec);
        if (_x._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x._exp : stdgo.GoUInt32));
            (_x._mant.__slice__(((_x._mant.length) - _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat)._bytes((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        _s.skipSpace();
        var __tmp__ = _z._scan(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_T_byteReader.T_byteReader(_s) : stdgo._internal.math.big.Big_T_byteReader.T_byteReader)), (0 : stdgo.GoInt)), __14:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __15:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    static public function parse( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_s.length == (3 : stdgo.GoInt)) && (((_s == ("Inf" : stdgo.GoString)) || (_s == ("inf" : stdgo.GoString)) : Bool)) : Bool)) {
            _f = _z.setInf(false);
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if ((((_s.length) == ((4 : stdgo.GoInt)) && (((_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) : Bool) && ((((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == ("Inf" : stdgo.GoString)) || ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == ("inf" : stdgo.GoString)) : Bool)) : Bool)) {
            _f = _z.setInf(_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _r = stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__());
        {
            {
                var __tmp__ = _z._scan(stdgo.Go.asInterface(_r), _base);
                _f = __tmp__._0;
                _b = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _f, _1 : _b, _2 : _err };
            };
        };
        {
            var __tmp__ = _r.readByte(), _ch:stdgo.GoUInt8 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 == null) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("expected end of string, found %q" : stdgo.GoString), stdgo.Go.toInterface(_ch));
            } else if (stdgo.Go.toInterface(_err2) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _err = _err2;
            };
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    @:keep
    static public function _pow5( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _n:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        {};
        if ((_n <= (27i64 : stdgo.GoUInt64) : Bool)) {
            return _z.setUint64(stdgo._internal.math.big.Big__pow5tab._pow5tab[(_n : stdgo.GoInt)]);
        };
        _z.setUint64(stdgo._internal.math.big.Big__pow5tab._pow5tab[((27i64 : stdgo.GoUInt64) : stdgo.GoInt)]);
        _n = (_n - ((27i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((_z.prec() + (64u32 : stdgo.GoUInt) : stdgo.GoUInt)).setUint64((5i64 : stdgo.GoUInt64));
        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
            if ((_n & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                _z.mul(_z, _f);
            };
            _f.mul(_f, _f);
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return _z;
    }
    @:keep
    static public function _scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _prec = (_z._prec : stdgo.GoUInt32);
        if (_prec == ((0u32 : stdgo.GoUInt32))) {
            _prec = (64u32 : stdgo.GoUInt32);
        };
        _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scanSign._scanSign(_r);
            _z._neg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _fcount:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _z._mant._scan(_r, _base, true);
            _z._mant = __tmp__._0;
            _b = __tmp__._1;
            _fcount = __tmp__._2;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ebase:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scanExponent._scanExponent(_r, true, _base == ((0 : stdgo.GoInt)));
            _exp = __tmp__._0;
            _ebase = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if ((_z._mant.length) == ((0 : stdgo.GoInt))) {
            _z._prec = _prec;
            _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _f = _z;
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp2 = (((_z._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm(_z._mant) : stdgo.GoInt64);
        var _exp5 = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_fcount < (0 : stdgo.GoInt) : Bool)) {
            var _d = (_fcount : stdgo.GoInt64);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _b;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                            _exp5 = _d;
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _exp2 = (_exp2 + (_d) : stdgo.GoInt64);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (8 : stdgo.GoInt)))) {
                            _exp2 = (_exp2 + ((_d * (3i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (16 : stdgo.GoInt)))) {
                            _exp2 = (_exp2 + ((_d * (4i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                            break;
                            break;
                        } else {
                            throw stdgo.Go.toInterface(("unexpected mantissa base" : stdgo.GoString));
                            break;
                        };
                    };
                    break;
                };
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _ebase;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                        _exp5 = (_exp5 + (_exp) : stdgo.GoInt64);
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _exp2 = (_exp2 + (_exp) : stdgo.GoInt64);
                        break;
                        break;
                    } else {
                        throw stdgo.Go.toInterface(("unexpected exponent base" : stdgo.GoString));
                        break;
                    };
                };
                break;
            };
        };
        if ((((-2147483648i64 : stdgo.GoInt64) <= _exp2 : Bool) && (_exp2 <= (2147483647i64 : stdgo.GoInt64) : Bool) : Bool)) {
            _z._prec = _prec;
            _z._form = (1 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._exp = (_exp2 : stdgo.GoInt32);
            _f = _z;
        } else {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("exponent overflow" : stdgo.GoString));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if (_exp5 == ((0i64 : stdgo.GoInt64))) {
            _z._round((0u32 : stdgo.GoUInt));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((_z.prec() + (64u32 : stdgo.GoUInt) : stdgo.GoUInt));
        if ((_exp5 < (0i64 : stdgo.GoInt64) : Bool)) {
            _z.quo(_z, _p._pow5((-_exp5 : stdgo.GoUInt64)));
        } else {
            _z.mul(_z, _p._pow5((_exp5 : stdgo.GoUInt64)));
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    @:keep
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        {
            var __tmp__ = _z.parse(_s?.__copy__(), (0 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __14:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                return { _0 : _f, _1 : true };
            };
        };
        return { _0 : null, _1 : false };
    }
    @:keep
    static public function _int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        var __tmp__ = _x.int64(), _i:stdgo.GoInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
        if (_acc != ((0 : stdgo._internal.math.big.Big_Accuracy.Accuracy))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is not an int64" : stdgo.GoString), stdgo.Go.toInterface(_x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt)))));
        };
        return _i;
    }
    @:keep
    static public function _uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        var __tmp__ = _x.uint64(), _u:stdgo.GoUInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
        if (_acc != ((0 : stdgo._internal.math.big.Big_Accuracy.Accuracy))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is not a uint64" : stdgo.GoString), stdgo.Go.toInterface(_x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt)))));
        };
        return _u;
    }
    @:keep
    static public function _ord( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = _x._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                _m = (1 : stdgo.GoInt);
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
                _m = (2 : stdgo.GoInt);
            };
        };
        if (_x._neg) {
            _m = -_m;
        };
        return _m;
    }
    @:keep
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
            _y._validate();
        };
        var _mx = (_x._ord() : stdgo.GoInt);
        var _my = (_y._ord() : stdgo.GoInt);
        if ((_mx < _my : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_mx > _my : Bool)) {
            return (1 : stdgo.GoInt);
        };
        {
            final __value__ = _mx;
            if (__value__ == ((-1 : stdgo.GoInt))) {
                return _y._ucmp(_x);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return _x._ucmp(_y);
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    static public function quo( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = stdgo._internal.math.big.Big__umax32._umax32(_x._prec, _y._prec);
        };
        _z._neg = _x._neg != (_y._neg);
        if (((_x._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) && (_y._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            _z._uquo(_x, _y);
            return _z;
        };
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        if (((_x._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form)) && _y._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool) || (_x._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) && _y._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool) : Bool)) {
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_ErrNaN.ErrNaN(("division of zero by zero or infinity by infinity" : stdgo.GoString)) : stdgo._internal.math.big.Big_ErrNaN.ErrNaN)));
        };
        if (((_x._form == (0 : stdgo._internal.math.big.Big_T_form.T_form)) || (_y._form == (2 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            return _z;
        };
        _z._form = (2 : stdgo._internal.math.big.Big_T_form.T_form);
        return _z;
    }
    @:keep
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = stdgo._internal.math.big.Big__umax32._umax32(_x._prec, _y._prec);
        };
        _z._neg = _x._neg != (_y._neg);
        if (((_x._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) && (_y._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            _z._umul(_x, _y);
            return _z;
        };
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        if (((_x._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form)) && _y._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool) || (_x._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) && _y._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool) : Bool)) {
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_ErrNaN.ErrNaN(("multiplication of zero with infinity" : stdgo.GoString)) : stdgo._internal.math.big.Big_ErrNaN.ErrNaN)));
        };
        if (((_x._form == (2 : stdgo._internal.math.big.Big_T_form.T_form)) || (_y._form == (2 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            _z._form = (2 : stdgo._internal.math.big.Big_T_form.T_form);
            return _z;
        };
        _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
        return _z;
    }
    @:keep
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = stdgo._internal.math.big.Big__umax32._umax32(_x._prec, _y._prec);
        };
        if (((_x._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) && (_y._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            var _yneg = (_y._neg : Bool);
            _z._neg = _x._neg;
            if (_x._neg != (_yneg)) {
                _z._uadd(_x, _y);
            } else {
                if ((_x._ucmp(_y) > (0 : stdgo.GoInt) : Bool)) {
                    _z._usub(_x, _y);
                } else {
                    _z._neg = !_z._neg;
                    _z._usub(_y, _x);
                };
            };
            if (((_z._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form)) && _z._mode == ((4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)) : Bool) && (_z._acc == (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy)) : Bool)) {
                _z._neg = true;
            };
            return _z;
        };
        if (((_x._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) && _y._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool) && (_x._neg == _y._neg) : Bool)) {
            _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_ErrNaN.ErrNaN(("subtraction of infinities with equal signs" : stdgo.GoString)) : stdgo._internal.math.big.Big_ErrNaN.ErrNaN)));
        };
        if (((_x._form == (0 : stdgo._internal.math.big.Big_T_form.T_form)) && (_y._form == (0 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._neg = (_x._neg && !_y._neg : Bool);
            return _z;
        };
        if (((_x._form == (2 : stdgo._internal.math.big.Big_T_form.T_form)) || (_y._form == (0 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            return _z.set(_x);
        };
        return _z.neg(_y);
    }
    @:keep
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _x._validate();
            _y._validate();
        };
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = stdgo._internal.math.big.Big__umax32._umax32(_x._prec, _y._prec);
        };
        if (((_x._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) && (_y._form == (1 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            var _yneg = (_y._neg : Bool);
            _z._neg = _x._neg;
            if (_x._neg == (_yneg)) {
                _z._uadd(_x, _y);
            } else {
                if ((_x._ucmp(_y) > (0 : stdgo.GoInt) : Bool)) {
                    _z._usub(_x, _y);
                } else {
                    _z._neg = !_z._neg;
                    _z._usub(_y, _x);
                };
            };
            if (((_z._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form)) && _z._mode == ((4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)) : Bool) && (_z._acc == (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy)) : Bool)) {
                _z._neg = true;
            };
            return _z;
        };
        if (((_x._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) && _y._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool) && (_x._neg != _y._neg) : Bool)) {
            _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_ErrNaN.ErrNaN(("addition of infinities with opposite signs" : stdgo.GoString)) : stdgo._internal.math.big.Big_ErrNaN.ErrNaN)));
        };
        if (((_x._form == (0 : stdgo._internal.math.big.Big_T_form.T_form)) && (_y._form == (0 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._neg = (_x._neg && _y._neg : Bool);
            return _z;
        };
        if (((_x._form == (2 : stdgo._internal.math.big.Big_T_form.T_form)) || (_y._form == (0 : stdgo._internal.math.big.Big_T_form.T_form)) : Bool)) {
            return _z.set(_x);
        };
        return _z.set(_y);
    }
    @:keep
    static public function _ucmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            stdgo._internal.math.big.Big__validateBinaryOperands._validateBinaryOperands(_x, _y);
        };
        if ((_x._exp < _y._exp : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_x._exp > _y._exp : Bool)) {
            return (1 : stdgo.GoInt);
        };
        var _i = (_x._mant.length : stdgo.GoInt);
        var _j = (_y._mant.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) || (_j > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var __0:stdgo._internal.math.big.Big_Word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word), __1:stdgo._internal.math.big.Big_Word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
var _ym = __1, _xm = __0;
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _i--;
                _xm = _x._mant[(_i : stdgo.GoInt)];
            };
            if ((_j > (0 : stdgo.GoInt) : Bool)) {
                _j--;
                _ym = _y._mant[(_j : stdgo.GoInt)];
            };
            if ((_xm < _ym : Bool)) {
                return (-1 : stdgo.GoInt);
            } else if ((_xm > _ym : Bool)) {
                return (1 : stdgo.GoInt);
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    static public function _uquo( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validateBinaryOperands._validateBinaryOperands(_x, _y);
        };
        var _n = (((_z._prec / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _xadj = (_x._mant : stdgo._internal.math.big.Big_T_nat.T_nat);
        {
            var _d = ((_n - (_x._mant.length) : stdgo.GoInt) + (_y._mant.length) : stdgo.GoInt);
            if ((_d > (0 : stdgo.GoInt) : Bool)) {
                _xadj = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(((_x._mant.length) + _d : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
                stdgo.Go.copySlice((_xadj.__slice__(_d) : stdgo._internal.math.big.Big_T_nat.T_nat), _x._mant);
            };
        };
        var _d = ((_xadj.length) - (_y._mant.length) : stdgo.GoInt);
        var _r:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        {
            var __tmp__ = _z._mant._div(null, _xadj, _y._mant);
            _z._mant = __tmp__._0;
            _r = __tmp__._1;
        };
        var _e = (((_x._exp : stdgo.GoInt64) - (_y._exp : stdgo.GoInt64) : stdgo.GoInt64) - (((_d - (_z._mant.length) : stdgo.GoInt) : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _sbit:stdgo.GoUInt = (0 : stdgo.GoUInt);
        if (((_r.length) > (0 : stdgo.GoInt) : Bool)) {
            _sbit = (1u32 : stdgo.GoUInt);
        };
        _z._setExpAndRound((_e - stdgo._internal.math.big.Big__fnorm._fnorm(_z._mant) : stdgo.GoInt64), _sbit);
    }
    @:keep
    static public function _umul( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validateBinaryOperands._validateBinaryOperands(_x, _y);
        };
        var _e = ((_x._exp : stdgo.GoInt64) + (_y._exp : stdgo.GoInt64) : stdgo.GoInt64);
        if (_x == (_y)) {
            _z._mant = _z._mant._sqr(_x._mant);
        } else {
            _z._mant = _z._mant._mul(_x._mant, _y._mant);
        };
        _z._setExpAndRound((_e - stdgo._internal.math.big.Big__fnorm._fnorm(_z._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    static public function _usub( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validateBinaryOperands._validateBinaryOperands(_x, _y);
        };
        var _ex = ((_x._exp : stdgo.GoInt64) - ((_x._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _ey = ((_y._exp : stdgo.GoInt64) - ((_y._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _al = (stdgo._internal.math.big.Big__alias._alias(_z._mant, _x._mant) || stdgo._internal.math.big.Big__alias._alias(_z._mant, _y._mant) : Bool);
        if ((_ex < _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shl(_y._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
                _z._mant = _t._sub(_x._mant, _t);
            } else {
                _z._mant = _z._mant._shl(_y._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt));
                _z._mant = _z._mant._sub(_x._mant, _z._mant);
            };
        } else if ((_ex > _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shl(_x._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
                _z._mant = _t._sub(_t, _y._mant);
            } else {
                _z._mant = _z._mant._shl(_x._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt));
                _z._mant = _z._mant._sub(_z._mant, _y._mant);
            };
            _ex = _ey;
        } else {
            _z._mant = _z._mant._sub(_x._mant, _y._mant);
        };
        if ((_z._mant.length) == ((0 : stdgo.GoInt))) {
            _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            _z._neg = false;
            return;
        };
        _z._setExpAndRound(((_ex + ((_z._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm(_z._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    static public function _uadd( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validateBinaryOperands._validateBinaryOperands(_x, _y);
        };
        var _ex = ((_x._exp : stdgo.GoInt64) - ((_x._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _ey = ((_y._exp : stdgo.GoInt64) - ((_y._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _al = (stdgo._internal.math.big.Big__alias._alias(_z._mant, _x._mant) || stdgo._internal.math.big.Big__alias._alias(_z._mant, _y._mant) : Bool);
        if ((_ex < _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shl(_y._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
                _z._mant = _z._mant._add(_x._mant, _t);
            } else {
                _z._mant = _z._mant._shl(_y._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt));
                _z._mant = _z._mant._add(_x._mant, _z._mant);
            };
        } else if ((_ex > _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shl(_x._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
                _z._mant = _z._mant._add(_t, _y._mant);
            } else {
                _z._mant = _z._mant._shl(_x._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt));
                _z._mant = _z._mant._add(_z._mant, _y._mant);
            };
            _ex = _ey;
        } else {
            _z._mant = _z._mant._add(_x._mant, _y._mant);
        };
        _z._setExpAndRound(((_ex + ((_z._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm(_z._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        _z.set(_x);
        _z._neg = !_z._neg;
        return _z;
    }
    @:keep
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        _z.set(_x);
        _z._neg = false;
        return _z;
    }
    @:keep
    static public function rat( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        if (((_z == null) || (_z : Dynamic).__nil__ && (_x._form <= (1 : stdgo._internal.math.big.Big_T_form.T_form) : Bool) : Bool)) {
            _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        };
        {
            final __value__ = _x._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                var _allBits = ((_x._mant.length : stdgo.GoInt32) * (32 : stdgo.GoInt32) : stdgo.GoInt32);
                _z._a._neg = _x._neg;
                if ((_x._exp > _allBits : Bool)) {
                    _z._a._abs = _z._a._abs._shl(_x._mant, ((_x._exp - _allBits : stdgo.GoInt32) : stdgo.GoUInt));
                    _z._b._abs = (_z._b._abs.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
                } else if ((_x._exp < _allBits : Bool)) {
                    _z._a._abs = _z._a._abs._set(_x._mant);
                    var _t = (_z._b._abs._setUint64((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_T_nat.T_nat);
                    _z._b._abs = _t._shl(_t, ((_allBits - _x._exp : stdgo.GoInt32) : stdgo.GoUInt));
                    _z._norm();
                } else {
                    _z._a._abs = _z._a._abs._set(_x._mant);
                    _z._b._abs = (_z._b._abs.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
                };
                return { _0 : _z, _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
                return { _0 : _z.setInt64((0i64 : stdgo.GoInt64)), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
                return { _0 : null, _1 : stdgo._internal.math.big.Big__makeAcc._makeAcc(_x._neg) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    static public function int_( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        if (((_z == null) || (_z : Dynamic).__nil__ && (_x._form <= (1 : stdgo._internal.math.big.Big_T_form.T_form) : Bool) : Bool)) {
            _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        };
        {
            final __value__ = _x._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                var _acc = (stdgo._internal.math.big.Big__makeAcc._makeAcc(_x._neg) : stdgo._internal.math.big.Big_Accuracy.Accuracy);
                if ((_x._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    return { _0 : _z.setInt64((0i64 : stdgo.GoInt64)), _1 : _acc };
                };
                var _allBits = ((_x._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _exp = (_x._exp : stdgo.GoUInt);
                if ((_x.minPrec() <= _exp : Bool)) {
                    _acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
                };
                if (_z == null || (_z : Dynamic).__nil__) {
                    _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                };
                _z._neg = _x._neg;
                if ((_exp > _allBits : Bool)) {
                    _z._abs = _z._abs._shl(_x._mant, (_exp - _allBits : stdgo.GoUInt));
                } else if ((_exp < _allBits : Bool)) {
                    _z._abs = _z._abs._shr(_x._mant, (_allBits - _exp : stdgo.GoUInt));
                } else {
                    _z._abs = _z._abs._set(_x._mant);
                };
                return { _0 : _z, _1 : _acc };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
                return { _0 : _z.setInt64((0i64 : stdgo.GoInt64)), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
                return { _0 : null, _1 : stdgo._internal.math.big.Big__makeAcc._makeAcc(_x._neg) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        {
            final __value__ = _x._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                {};
                var _e = (_x._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                var _p = (53 : stdgo.GoInt);
                if ((_e < (-1022 : stdgo.GoInt32) : Bool)) {
                    _p = ((1075 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    if (((_p < (0 : stdgo.GoInt) : Bool) || (_p == ((0 : stdgo.GoInt)) && _x._mant._sticky((((_x._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) == ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) {
                        if (_x._neg) {
                            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                            return { _0 : -_z, _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                        };
                        return { _0 : (0 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                    if (_p == ((0 : stdgo.GoInt))) {
                        if (_x._neg) {
                            return { _0 : (-5e-324 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                        };
                        return { _0 : (5e-324 : stdgo.GoFloat64), _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                };
                var _r:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                _r._prec = (_p : stdgo.GoUInt32);
                _r.set(_x);
                _e = (_r._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                if (((_r._form == (2 : stdgo._internal.math.big.Big_T_form.T_form)) || (_e > (1023 : stdgo.GoInt32) : Bool) : Bool)) {
                    if (_x._neg) {
                        return { _0 : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                    return { _0 : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _mant = __2, _bexp = __1, _sign = __0;
                if (_x._neg) {
                    _sign = (-9223372036854775808i64 : stdgo.GoUInt64);
                };
                if ((_e < (-1022 : stdgo.GoInt32) : Bool)) {
                    _p = ((1075 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    _mant = (stdgo._internal.math.big.Big__msb64._msb64(_r._mant) >> (((64 : stdgo.GoInt) - _p : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64);
                } else {
                    _bexp = (((_e + (1023 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _mant = ((stdgo._internal.math.big.Big__msb64._msb64(_r._mant) >> (11i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                };
                return { _0 : stdgo._internal.math.Math_float64frombits.float64frombits(((_sign | _bexp : stdgo.GoUInt64) | _mant : stdgo.GoUInt64)), _1 : _r._acc };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
                if (_x._neg) {
                    var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                    return { _0 : -_z, _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
                if (_x._neg) {
                    return { _0 : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                return { _0 : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    static public function float32( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):{ var _0 : stdgo.GoFloat32; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        {
            final __value__ = _x._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                {};
                var _e = (_x._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                var _p = (24 : stdgo.GoInt);
                if ((_e < (-126 : stdgo.GoInt32) : Bool)) {
                    _p = ((150 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    if (((_p < (0 : stdgo.GoInt) : Bool) || (_p == ((0 : stdgo.GoInt)) && _x._mant._sticky((((_x._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) == ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) {
                        if (_x._neg) {
                            var _z:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
                            return { _0 : -_z, _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                        };
                        return { _0 : (0 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                    if (_p == ((0 : stdgo.GoInt))) {
                        if (_x._neg) {
                            return { _0 : (-1.401298464324817e-45 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                        };
                        return { _0 : (1.401298464324817e-45 : stdgo.GoFloat64), _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                };
                var _r:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                _r._prec = (_p : stdgo.GoUInt32);
                _r.set(_x);
                _e = (_r._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                if (((_r._form == (2 : stdgo._internal.math.big.Big_T_form.T_form)) || (_e > (127 : stdgo.GoInt32) : Bool) : Bool)) {
                    if (_x._neg) {
                        return { _0 : (stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                    return { _0 : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _mant = __2, _bexp = __1, _sign = __0;
                if (_x._neg) {
                    _sign = (-2147483648u32 : stdgo.GoUInt32);
                };
                if ((_e < (-126 : stdgo.GoInt32) : Bool)) {
                    _p = ((150 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    _mant = (stdgo._internal.math.big.Big__msb32._msb32(_r._mant) >> (((32 : stdgo.GoInt) - _p : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32);
                } else {
                    _bexp = (((_e + (127 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32) << (23i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _mant = ((stdgo._internal.math.big.Big__msb32._msb32(_r._mant) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (8388607u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                };
                return { _0 : stdgo._internal.math.Math_float32frombits.float32frombits(((_sign | _bexp : stdgo.GoUInt32) | _mant : stdgo.GoUInt32)), _1 : _r._acc };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
                if (_x._neg) {
                    var _z:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
                    return { _0 : -_z, _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
                if (_x._neg) {
                    return { _0 : (stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                return { _0 : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    static public function int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):{ var _0 : stdgo.GoInt64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        {
            final __value__ = _x._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                var _acc = (stdgo._internal.math.big.Big__makeAcc._makeAcc(_x._neg) : stdgo._internal.math.big.Big_Accuracy.Accuracy);
                if ((_x._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : _acc };
                };
                if ((_x._exp <= (63 : stdgo.GoInt32) : Bool)) {
                    var _i = ((stdgo._internal.math.big.Big__msb64._msb64(_x._mant) >> (((64u32 : stdgo.GoUInt32) - (_x._exp : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt64) : stdgo.GoInt64);
                    if (_x._neg) {
                        _i = -_i;
                    };
                    if ((_x.minPrec() <= (_x._exp : stdgo.GoUInt) : Bool)) {
                        return { _0 : _i, _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                    return { _0 : _i, _1 : _acc };
                };
                if (_x._neg) {
                    if (((_x._exp == (64 : stdgo.GoInt32)) && (_x.minPrec() == (1u32 : stdgo.GoUInt)) : Bool)) {
                        _acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
                    };
                    return { _0 : (-9223372036854775808i64 : stdgo.GoInt64), _1 : _acc };
                };
                return { _0 : (9223372036854775807i64 : stdgo.GoInt64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
                if (_x._neg) {
                    return { _0 : (-9223372036854775808i64 : stdgo.GoInt64), _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                return { _0 : (9223372036854775807i64 : stdgo.GoInt64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    static public function uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        {
            final __value__ = _x._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                if (_x._neg) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                if ((_x._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                if ((_x._exp <= (64 : stdgo.GoInt32) : Bool)) {
                    var _u = (stdgo._internal.math.big.Big__msb64._msb64(_x._mant) >> (((64u32 : stdgo.GoUInt32) - (_x._exp : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt64);
                    if ((_x.minPrec() <= (64u32 : stdgo.GoUInt) : Bool)) {
                        return { _0 : _u, _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                    };
                    return { _0 : _u, _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                return { _0 : (-1i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_T_form.T_form))) {
                if (_x._neg) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
                };
                return { _0 : (-1i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    static public function copy( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _x._validate();
        };
        if (_z != (_x)) {
            _z._prec = _x._prec;
            _z._mode = _x._mode;
            _z._acc = _x._acc;
            _z._form = _x._form;
            _z._neg = _x._neg;
            if (_z._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                _z._mant = _z._mant._set(_x._mant);
                _z._exp = _x._exp;
            };
        };
        return _z;
    }
    @:keep
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _x._validate();
        };
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        if (_z != (_x)) {
            _z._form = _x._form;
            _z._neg = _x._neg;
            if (_x._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                _z._exp = _x._exp;
                _z._mant = _z._mant._set(_x._mant);
            };
            if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
                _z._prec = _x._prec;
            } else if ((_z._prec < _x._prec : Bool)) {
                _z._round((0u32 : stdgo.GoUInt));
            };
        };
        return _z;
    }
    @:keep
    static public function setInf( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _signbit:Bool):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        _z._form = (2 : stdgo._internal.math.big.Big_T_form.T_form);
        _z._neg = _signbit;
        return _z;
    }
    @:keep
    static public function setRat( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (_x.isInt()) {
            return _z.setInt(_x.num());
        };
        var __0:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_), __1:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
var _b = __1, _a = __0;
        _a.setInt(_x.num());
        _b.setInt(_x.denom());
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = stdgo._internal.math.big.Big__umax32._umax32(_a._prec, _b._prec);
        };
        return _z.quo((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>));
    }
    @:keep
    static public function setInt( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        var _bits = (_x.bitLen() : stdgo.GoUInt32);
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = stdgo._internal.math.big.Big__umax32._umax32(_bits, (64u32 : stdgo.GoUInt32));
        };
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        _z._neg = _x._neg;
        if ((_x._abs.length) == ((0 : stdgo.GoInt))) {
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            return _z;
        };
        _z._mant = _z._mant._set(_x._abs);
        stdgo._internal.math.big.Big__fnorm._fnorm(_z._mant);
        _z._setExpAndRound((_bits : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
        return _z;
    }
    @:keep
    static public function setFloat64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = (53u32 : stdgo.GoUInt32);
        };
        if (stdgo._internal.math.Math_isNaN.isNaN(_x)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_ErrNaN.ErrNaN(("Float.SetFloat64(NaN)" : stdgo.GoString)) : stdgo._internal.math.big.Big_ErrNaN.ErrNaN)));
        };
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        _z._neg = stdgo._internal.math.Math_signbit.signbit(_x);
        if (_x == (0 : stdgo.GoFloat64)) {
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            return _z;
        };
        if (stdgo._internal.math.Math_isInf.isInf(_x, (0 : stdgo.GoInt))) {
            _z._form = (2 : stdgo._internal.math.big.Big_T_form.T_form);
            return _z;
        };
        _z._form = (1 : stdgo._internal.math.big.Big_T_form.T_form);
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _fmant:stdgo.GoFloat64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1;
        _z._mant = _z._mant._setUint64(((-9223372036854775808i64 : stdgo.GoUInt64) | (stdgo._internal.math.Math_float64bits.float64bits(_fmant) << (11i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
        _z._exp = (_exp : stdgo.GoInt32);
        if ((_z._prec < (53u32 : stdgo.GoUInt32) : Bool)) {
            _z._round((0u32 : stdgo.GoUInt));
        };
        return _z;
    }
    @:keep
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        var _u = (_x : stdgo.GoInt64);
        if ((_u < (0i64 : stdgo.GoInt64) : Bool)) {
            _u = -_u;
        };
        return _z._setBits64((_x < (0i64 : stdgo.GoInt64) : Bool), (_u : stdgo.GoUInt64));
    }
    @:keep
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        return _z._setBits64(false, _x);
    }
    @:keep
    static public function _setBits64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _neg:Bool, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (_z._prec == ((0u32 : stdgo.GoUInt32))) {
            _z._prec = (64u32 : stdgo.GoUInt32);
        };
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        _z._neg = _neg;
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            return _z;
        };
        _z._form = (1 : stdgo._internal.math.big.Big_T_form.T_form);
        var _s = (stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64(_x) : stdgo.GoInt);
        _z._mant = _z._mant._setUint64((_x << (_s : stdgo.GoUInt) : stdgo.GoUInt64));
        _z._exp = (((64 : stdgo.GoInt) - _s : stdgo.GoInt) : stdgo.GoInt32);
        if ((_z._prec < (64u32 : stdgo.GoUInt32) : Bool)) {
            _z._round((0u32 : stdgo.GoUInt));
        };
        return _z;
    }
    @:keep
    static public function _round( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _sbit:stdgo.GoUInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _z._validate();
        };
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        if (_z._form != ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            return;
        };
        var _m = (_z._mant.length : stdgo.GoUInt32);
        var _bits = (_m * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if ((_bits <= _z._prec : Bool)) {
            return;
        };
        var _r = (((_bits - _z._prec : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
        var _rbit = (_z._mant._bit(_r) & (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if (((_sbit == (0u32 : stdgo.GoUInt)) && (((_rbit == (0u32 : stdgo.GoUInt)) || (_z._mode == (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)) : Bool)) : Bool)) {
            _sbit = _z._mant._sticky(_r);
        };
        _sbit = (_sbit & ((1u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var _n = (((_z._prec + (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if ((_m > _n : Bool)) {
            stdgo.Go.copySlice(_z._mant, (_z._mant.__slice__((_m - _n : stdgo.GoUInt32)) : stdgo._internal.math.big.Big_T_nat.T_nat));
            _z._mant = (_z._mant.__slice__(0, _n) : stdgo._internal.math.big.Big_T_nat.T_nat);
        };
        var _ntz = ((_n * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) - _z._prec : stdgo.GoUInt32);
        var _lsb = ((1u32 : stdgo._internal.math.big.Big_Word.Word) << _ntz : stdgo._internal.math.big.Big_Word.Word);
        if ((_rbit | _sbit : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            var _inc = (false : Bool);
            {
                final __value__ = _z._mode;
                if (__value__ == ((4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
                    _inc = _z._neg;
                } else if (__value__ == ((2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {} else if (__value__ == ((0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
                    _inc = ((_rbit != (0u32 : stdgo.GoUInt)) && (((_sbit != (0u32 : stdgo.GoUInt)) || ((_z._mant[(0 : stdgo.GoInt)] & _lsb : stdgo._internal.math.big.Big_Word.Word) != (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) : Bool);
                } else if (__value__ == ((1 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
                    _inc = _rbit != ((0u32 : stdgo.GoUInt));
                } else if (__value__ == ((3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
                    _inc = true;
                } else if (__value__ == ((5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
                    _inc = !_z._neg;
                } else {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            _z._acc = stdgo._internal.math.big.Big__makeAcc._makeAcc(_inc != (_z._neg));
            if (_inc) {
                if (stdgo._internal.math.big.Big__addVW._addVW(_z._mant, _z._mant, _lsb) != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                    if ((_z._exp >= (2147483647 : stdgo.GoInt32) : Bool)) {
                        _z._form = (2 : stdgo._internal.math.big.Big_T_form.T_form);
                        return;
                    };
                    _z._exp++;
                    stdgo._internal.math.big.Big__shrVU._shrVU(_z._mant, _z._mant, (1u32 : stdgo.GoUInt));
                    {};
                    _z._mant[((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = (_z._mant[((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] | ((-2147483648u32 : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_Word.Word);
                };
            };
        };
        _z._mant[(0 : stdgo.GoInt)] = (_z._mant[(0 : stdgo.GoInt)] & ((((_lsb - (1u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_Word.Word);
        if (false) {
            _z._validate();
        };
    }
    @:keep
    static public function _validate0( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (_x._form != ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _m = (_x._mant.length : stdgo.GoInt);
        if (_m == ((0 : stdgo.GoInt))) {
            return ("nonzero finite number with empty mantissa" : stdgo.GoString);
        };
        {};
        if ((_x._mant[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("msb not set in last word %#x of %s" : stdgo.GoString), stdgo.Go.toInterface(_x._mant[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)]), stdgo.Go.toInterface(_x.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))))?.__copy__();
        };
        if (_x._prec == ((0u32 : stdgo.GoUInt32))) {
            return ("zero precision finite number" : stdgo.GoString);
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function _validate( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (true) {
            throw stdgo.Go.toInterface(("validate called but debugFloat is not set" : stdgo.GoString));
        };
        {
            var _msg = (_x._validate0()?.__copy__() : stdgo.GoString);
            if (_msg != (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(_msg);
            };
        };
    }
    @:keep
    static public function isInt( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        if (_x._form != ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            return _x._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form));
        };
        if ((_x._exp <= (0 : stdgo.GoInt32) : Bool)) {
            return false;
        };
        return ((_x._prec <= (_x._exp : stdgo.GoUInt32) : Bool) || (_x.minPrec() <= (_x._exp : stdgo.GoUInt) : Bool) : Bool);
    }
    @:keep
    static public function isInf( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        return _x._form == ((2 : stdgo._internal.math.big.Big_T_form.T_form));
    }
    @:keep
    static public function signbit( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        return _x._neg;
    }
    @:keep
    static public function setMantExp( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _mant:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _exp:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if (false) {
            _z._validate();
            _mant._validate();
        };
        _z.copy(_mant);
        if (_z._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            _z._setExpAndRound(((_z._exp : stdgo.GoInt64) + (_exp : stdgo.GoInt64) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
        };
        return _z;
    }
    @:keep
    static public function _setExpAndRound( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _exp:stdgo.GoInt64, _sbit:stdgo.GoUInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        if ((_exp < (-2147483648i64 : stdgo.GoInt64) : Bool)) {
            _z._acc = stdgo._internal.math.big.Big__makeAcc._makeAcc(_z._neg);
            _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            return;
        };
        if ((_exp > (2147483647i64 : stdgo.GoInt64) : Bool)) {
            _z._acc = stdgo._internal.math.big.Big__makeAcc._makeAcc(!_z._neg);
            _z._form = (2 : stdgo._internal.math.big.Big_T_form.T_form);
            return;
        };
        _z._form = (1 : stdgo._internal.math.big.Big_T_form.T_form);
        _z._exp = (_exp : stdgo.GoInt32);
        _z._round(_sbit);
    }
    @:keep
    static public function mantExp( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _mant:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        var _exp = (0 : stdgo.GoInt);
        if (false) {
            _x._validate();
        };
        if (_x._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            _exp = (_x._exp : stdgo.GoInt);
        };
        if (_mant != null && ((_mant : Dynamic).__nil__ == null || !(_mant : Dynamic).__nil__)) {
            _mant.copy(_x);
            if (_mant._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                _mant._exp = (0 : stdgo.GoInt32);
            };
        };
        return _exp;
    }
    @:keep
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (false) {
            _x._validate();
        };
        if (_x._form == ((0 : stdgo._internal.math.big.Big_T_form.T_form))) {
            return (0 : stdgo.GoInt);
        };
        if (_x._neg) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }
    @:keep
    static public function acc( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo._internal.math.big.Big_Accuracy.Accuracy {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        return _x._acc;
    }
    @:keep
    static public function mode( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo._internal.math.big.Big_RoundingMode.RoundingMode {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        return _x._mode;
    }
    @:keep
    static public function minPrec( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        if (_x._form != ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
            return (0u32 : stdgo.GoUInt);
        };
        return (((_x._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - _x._mant._trailingZeroBits() : stdgo.GoUInt);
    }
    @:keep
    static public function prec( _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _x;
        return (_x._prec : stdgo.GoUInt);
    }
    @:keep
    static public function setMode( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _mode:stdgo._internal.math.big.Big_RoundingMode.RoundingMode):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        _z._mode = _mode;
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        return _z;
    }
    @:keep
    static public function setPrec( _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _prec:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = _z;
        _z._acc = (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        if (_prec == ((0u32 : stdgo.GoUInt))) {
            _z._prec = (0u32 : stdgo.GoUInt32);
            if (_z._form == ((1 : stdgo._internal.math.big.Big_T_form.T_form))) {
                _z._acc = stdgo._internal.math.big.Big__makeAcc._makeAcc(_z._neg);
                _z._form = (0 : stdgo._internal.math.big.Big_T_form.T_form);
            };
            return _z;
        };
        if ((_prec > (-1u32 : stdgo.GoUInt) : Bool)) {
            _prec = (-1u32 : stdgo.GoUInt);
        };
        var _old = (_z._prec : stdgo.GoUInt32);
        _z._prec = (_prec : stdgo.GoUInt32);
        if ((_z._prec < _old : Bool)) {
            _z._round((0u32 : stdgo.GoUInt));
        };
        return _z;
    }
}