package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Float__asInterface) class Float__static_extension {
    @:keep
    @:tdfield
    static public function _sqrtInverse( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _u = stdgo._internal.math.big.Big__newfloat._newFloat((@:checkr _z ?? throw "null pointer dereference")._prec);
        var _v = stdgo._internal.math.big.Big__newfloat._newFloat((@:checkr _z ?? throw "null pointer dereference")._prec);
        var _three = stdgo._internal.math.big.Big__three._three();
        var _ng = function(_t:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
            (@:checkr _u ?? throw "null pointer dereference")._prec = (@:checkr _t ?? throw "null pointer dereference")._prec;
            (@:checkr _v ?? throw "null pointer dereference")._prec = (@:checkr _t ?? throw "null pointer dereference")._prec;
            @:check2r _u.mul(_t, _t);
            @:check2r _u.mul(_x, _u);
            @:check2r _v.sub(_three, _u);
            @:check2r _u.mul(_t, _v);
            (@:checkr _u ?? throw "null pointer dereference")._exp--;
            return @:check2r _t.set(_u);
        };
        var __tmp__ = @:check2r _x.float64(), _xf:stdgo.GoFloat64 = __tmp__._0, __8:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
        var _sqi = stdgo._internal.math.big.Big__newfloat._newFloat((@:checkr _z ?? throw "null pointer dereference")._prec);
        @:check2r _sqi.setFloat64(((1 : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_xf) : stdgo.GoFloat64));
        {
            var _prec = ((@:checkr _z ?? throw "null pointer dereference")._prec + (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while (((@:checkr _sqi ?? throw "null pointer dereference")._prec < _prec : Bool)) {
                (@:checkr _sqi ?? throw "null pointer dereference")._prec = ((@:checkr _sqi ?? throw "null pointer dereference")._prec * ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _sqi = _ng(_sqi);
            };
        };
        @:check2r _z.mul(_x, _sqi);
    }
    @:keep
    @:tdfield
    static public function sqrt( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _x._validate();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (@:checkr _x ?? throw "null pointer dereference")._prec;
        };
        if (@:check2r _x.sign() == ((-1 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("square root of negative operand" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (@:checkr _x ?? throw "null pointer dereference")._form;
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            return _z;
        };
        var _prec = ((@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        var _b = (@:check2r _x.mantExp(_z) : stdgo.GoInt);
        (@:checkr _z ?? throw "null pointer dereference")._prec = _prec;
        {
            final __value__ = (_b % (2 : stdgo.GoInt) : stdgo.GoInt);
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._exp++;
            } else if (__value__ == ((-1 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._exp--;
            };
        };
        @:check2r _z._sqrtInverse(_z);
        return @:check2r _z.setMantExp(_z, (_b / (2 : stdgo.GoInt) : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function format( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo._internal.fmt.Fmt_state.State, _format:stdgo.GoInt32):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
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
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_s, ("%%!%c(*big.Float=%s)" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface((@:check2r _x.string() : stdgo.GoString)));
                        return;
                        break;
                    };
                };
                break;
            };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _buf = @:check2r _x.append(_buf, (_format : stdgo.GoUInt8), _prec);
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            _buf = ((("?" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
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
        if ((_s.flag((48 : stdgo.GoInt)) && !@:check2r _x.isInf() : Bool)) {
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, ("0" : stdgo.GoString), _padding);
            _s.write(_buf);
        } else if (_s.flag((45 : stdgo.GoInt))) {
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            _s.write(_buf);
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _padding);
        } else {
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _padding);
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            _s.write(_buf);
        };
    }
    @:keep
    @:tdfield
    static public function _fmtP( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            return (_buf.__append__((48 : stdgo.GoUInt8)));
        };
        if ((false && ((@:checkr _x ?? throw "null pointer dereference")._form != (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_m.length) : Bool) && (_m[(_i : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            _i++;
        };
        _m = (_m.__slice__(_i) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _buf = (_buf.__append__(...((("0x." : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = (_buf.__append__(...(stdgo._internal.bytes.Bytes_trimright.trimRight(_m._utoa((16 : stdgo.GoInt)), ("0" : stdgo.GoString)) : Array<stdgo.GoUInt8>)));
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)));
        if (((@:checkr _x ?? throw "null pointer dereference")._exp >= (0 : stdgo.GoInt32) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)));
        };
        return stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64), (10 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _fmtX( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            _buf = (_buf.__append__(...((("0x0" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            if ((_prec > (0 : stdgo.GoInt) : Bool)) {
                _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _prec : Bool)) {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
                        _i++;
                    };
                };
            };
            _buf = (_buf.__append__(...((("p+00" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            return _buf;
        };
        if ((false && ((@:checkr _x ?? throw "null pointer dereference")._form != (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            _n = ((1u32 : stdgo.GoUInt) + (((((@:check2r _x.minPrec() - (1u32 : stdgo.GoUInt) : stdgo.GoUInt) + (3u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (4u32 : stdgo.GoUInt) : stdgo.GoUInt) * (4u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
        } else {
            _n = ((1u32 : stdgo.GoUInt) + ((4u32 : stdgo.GoUInt) * (_prec : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
        };
        _x = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_n).setMode((@:checkr _x ?? throw "null pointer dereference")._mode).set(_x);
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var _w = (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if ((_w < _n : Bool)) {
                _m = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl(_m, (_n - _w : stdgo.GoUInt));
            } else if ((_w > _n : Bool)) {
                _m = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shr(_m, (_w - _n : stdgo.GoUInt));
            };
        };
        var _exp64 = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _hm = _m._utoa((16 : stdgo.GoInt));
        if ((false && (_hm[(0 : stdgo.GoInt)] != (49 : stdgo.GoUInt8)) : Bool)) {
            throw stdgo.Go.toInterface((("incorrect mantissa: " : stdgo.GoString) + (_hm : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        _buf = (_buf.__append__(...((("0x1" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
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
        return stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, _exp64, (10 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _fmtB( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            return (_buf.__append__((48 : stdgo.GoUInt8)));
        };
        if ((false && ((@:checkr _x ?? throw "null pointer dereference")._form != (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var _w = (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt32) * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((_w < (@:checkr _x ?? throw "null pointer dereference")._prec : Bool)) {
                _m = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl(_m, (((@:checkr _x ?? throw "null pointer dereference")._prec - _w : stdgo.GoUInt32) : stdgo.GoUInt));
            } else if ((_w > (@:checkr _x ?? throw "null pointer dereference")._prec : Bool)) {
                _m = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shr(_m, ((_w - (@:checkr _x ?? throw "null pointer dereference")._prec : stdgo.GoUInt32) : stdgo.GoUInt));
            };
        };
        _buf = (_buf.__append__(...(_m._utoa((10 : stdgo.GoInt)) : Array<stdgo.GoUInt8>)));
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)));
        var _e = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - ((@:checkr _x ?? throw "null pointer dereference")._prec : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_e >= (0i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)));
        };
        return stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, _e, (10 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function append( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)));
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
            if (!(@:checkr _x ?? throw "null pointer dereference")._neg) {
                _buf = (_buf.__append__((43 : stdgo.GoUInt8)));
            };
            return (_buf.__append__(...((("Inf" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        {
            final __value__ = _fmt;
            if (__value__ == ((98 : stdgo.GoUInt8))) {
                return @:check2r _x._fmtB(_buf);
            } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                return @:check2r _x._fmtP(_buf);
            } else if (__value__ == ((120 : stdgo.GoUInt8))) {
                return @:check2r _x._fmtX(_buf, _prec);
            };
        };
        var _d:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            @:check2 _d._init((@:checkr _x ?? throw "null pointer dereference")._mant, (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt) - (@:checkr _x ?? throw "null pointer dereference")._mant._bitLen() : stdgo.GoInt));
        };
        var _shortest = (false : Bool);
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            _shortest = true;
            stdgo._internal.math.big.Big__roundshortest._roundShortest((stdgo.Go.setRef(_d) : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>), _x);
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
                    @:check2 _d._round(((1 : stdgo.GoInt) + _prec : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    @:check2 _d._round((_d._exp + _prec : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    @:check2 _d._round(_prec);
                };
            };
        };
        {
            final __value__ = _fmt;
            if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                return stdgo._internal.math.big.Big__fmte._fmtE(_buf, _fmt, _prec, _d?.__copy__());
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                return stdgo._internal.math.big.Big__fmtf._fmtF(_buf, _prec, _d?.__copy__());
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
                    return stdgo._internal.math.big.Big__fmte._fmtE(_buf, ((_fmt + (101 : stdgo.GoUInt8) : stdgo.GoUInt8) - (103 : stdgo.GoUInt8) : stdgo.GoUInt8), (_prec - (1 : stdgo.GoInt) : stdgo.GoInt), _d?.__copy__());
                };
                if ((_prec > _d._exp : Bool)) {
                    _prec = (_d._mant.length);
                };
                return stdgo._internal.math.big.Big__fmtf._fmtF(_buf, stdgo._internal.math.big.Big__max._max((_prec - _d._exp : stdgo.GoInt), (0 : stdgo.GoInt)), _d?.__copy__());
            };
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _buf = (_buf.__slice__(0, ((_buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_buf.__append__((37 : stdgo.GoUInt8), _fmt));
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        return @:check2r _x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function text( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _format:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _cap = (10 : stdgo.GoInt);
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _cap = (_cap + (_prec) : stdgo.GoInt);
        };
        return (@:check2r _x.append((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _cap).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _format, _prec) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var __tmp__ = @:check2r _z.parse((_text : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt)), __8:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Float (%v)" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : ((("<nil>" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                _text = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : @:check2r _x.append(_buf, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_float_.Float_() : stdgo._internal.math.big.Big_float_.Float_);
                var x = (_z : stdgo._internal.math.big.Big_float_.Float_);
                x._prec = __tmp__?._prec;
                x._mode = __tmp__?._mode;
                x._acc = __tmp__?._acc;
                x._form = __tmp__?._form;
                x._neg = __tmp__?._neg;
                x._mant = __tmp__?._mant;
                x._exp = __tmp__?._exp;
            };
            return (null : stdgo.Error);
        };
        if (((_buf.length) < (6 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Float.GobDecode: buffer too small" : stdgo.GoString));
        };
        if (_buf[(0 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Float.GobDecode: encoding version %d not supported" : stdgo.GoString), stdgo.Go.toInterface(_buf[(0 : stdgo.GoInt)]));
        };
        var _oldPrec = ((@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        var _oldMode = ((@:checkr _z ?? throw "null pointer dereference")._mode : stdgo._internal.math.big.Big_roundingmode.RoundingMode);
        var _b = (_buf[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _z ?? throw "null pointer dereference")._mode = ((((_b >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_roundingmode.RoundingMode);
        (@:checkr _z ?? throw "null pointer dereference")._acc = (((((_b >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) - (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._form = ((((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_t_form.T_form);
        (@:checkr _z ?? throw "null pointer dereference")._neg = (_b & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_buf.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            if (((_buf.length) < (10 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.errors.Errors_new_.new_(("Float.GobDecode: buffer too small for finite form float" : stdgo.GoString));
            };
            (@:checkr _z ?? throw "null pointer dereference")._exp = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._setBytes((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_oldPrec != ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._mode = _oldMode;
            @:check2r _z.setPrec((_oldPrec : stdgo.GoUInt));
        };
        {
            var _msg = (@:check2r _z._validate0()?.__copy__() : stdgo.GoString);
            if (_msg != ((stdgo.Go.str() : stdgo.GoString))) {
                return stdgo._internal.errors.Errors_new_.new_((("Float.GobDecode: " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _sz = (6 : stdgo.GoInt);
        var _n = (0 : stdgo.GoInt);
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            _n = (((((@:checkr _x ?? throw "null pointer dereference")._prec + (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
            if ((((@:checkr _x ?? throw "null pointer dereference")._mant.length) < _n : Bool)) {
                _n = ((@:checkr _x ?? throw "null pointer dereference")._mant.length);
            };
            _sz = (_sz + (((4 : stdgo.GoInt) + (_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_sz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        var _b = ((((((@:checkr _x ?? throw "null pointer dereference")._mode & (7 : stdgo._internal.math.big.Big_roundingmode.RoundingMode) : stdgo._internal.math.big.Big_roundingmode.RoundingMode) : stdgo.GoUInt8) << (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | ((((((@:checkr _x ?? throw "null pointer dereference")._acc + (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo._internal.math.big.Big_accuracy.Accuracy)) & (3 : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo.GoUInt8) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8) | ((((@:checkr _x ?? throw "null pointer dereference")._form & (3 : stdgo._internal.math.big.Big_t_form.T_form) : stdgo._internal.math.big.Big_t_form.T_form) : stdgo.GoUInt8) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(1 : stdgo.GoInt)] = _b;
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_buf.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _x ?? throw "null pointer dereference")._prec);
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32));
            ((@:checkr _x ?? throw "null pointer dereference")._mant.__slice__((((@:checkr _x ?? throw "null pointer dereference")._mant.length) - _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._bytes((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        _s.skipSpace();
        var __tmp__ = @:check2r _z._scan(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_t_bytereader.T_byteReader(_s) : stdgo._internal.math.big.Big_t_bytereader.T_byteReader)), (0 : stdgo.GoInt)), __8:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    @:tdfield
    static public function parse( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_s.length == (3 : stdgo.GoInt)) && (((_s == ("Inf" : stdgo.GoString)) || (_s == ("inf" : stdgo.GoString)) : Bool)) : Bool)) {
            _f = @:check2r _z.setInf(false);
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if ((((_s.length) == ((4 : stdgo.GoInt)) && (((_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) : Bool) && ((((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == ("Inf" : stdgo.GoString)) || ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == ("inf" : stdgo.GoString)) : Bool)) : Bool)) {
            _f = @:check2r _z.setInf(_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _r = stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__());
        {
            {
                var __tmp__ = @:check2r _z._scan(stdgo.Go.asInterface(_r), _base);
                _f = @:tmpset0 __tmp__._0;
                _b = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _f, _1 : _b, _2 : _err };
            };
        };
        {
            var __tmp__ = @:check2r _r.readByte(), _ch:stdgo.GoUInt8 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 == null) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("expected end of string, found %q" : stdgo.GoString), stdgo.Go.toInterface(_ch));
            } else if (stdgo.Go.toInterface(_err2) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = _err2;
            };
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _pow5( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _n:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        {};
        if ((_n <= (27i64 : stdgo.GoUInt64) : Bool)) {
            return @:check2r _z.setUint64(stdgo._internal.math.big.Big__pow5tab._pow5tab[(_n : stdgo.GoInt)]);
        };
        @:check2r _z.setUint64(stdgo._internal.math.big.Big__pow5tab._pow5tab[((27i64 : stdgo.GoUInt64) : stdgo.GoInt)]);
        _n = (_n - ((27i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _f = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((@:check2r _z.prec() + (64u32 : stdgo.GoUInt) : stdgo.GoUInt)).setUint64((5i64 : stdgo.GoUInt64));
        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
            if ((_n & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                @:check2r _z.mul(_z, _f);
            };
            @:check2r _f.mul(_f, _f);
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function _scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _prec = ((@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        if (_prec == ((0u32 : stdgo.GoUInt32))) {
            _prec = (64u32 : stdgo.GoUInt32);
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scansign._scanSign(_r);
            (@:checkr _z ?? throw "null pointer dereference")._neg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _fcount:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._mant._scan(_r, _base, true);
            (@:checkr _z ?? throw "null pointer dereference")._mant = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
            _fcount = @:tmpset0 __tmp__._2;
            _err = @:tmpset0 __tmp__._3;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ebase:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scanexponent._scanExponent(_r, true, _base == ((0 : stdgo.GoInt)));
            _exp = @:tmpset0 __tmp__._0;
            _ebase = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        if (_err != null) {
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if (((@:checkr _z ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = _prec;
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            _f = _z;
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp2 = ((((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64);
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
            (@:checkr _z ?? throw "null pointer dereference")._prec = _prec;
            (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._exp = (_exp2 : stdgo.GoInt32);
            _f = _z;
        } else {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("exponent overflow" : stdgo.GoString));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        if (_exp5 == ((0i64 : stdgo.GoInt64))) {
            @:check2r _z._round((0u32 : stdgo.GoUInt));
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _p = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((@:check2r _z.prec() + (64u32 : stdgo.GoUInt) : stdgo.GoUInt));
        if ((_exp5 < (0i64 : stdgo.GoInt64) : Bool)) {
            @:check2r _z.quo(_z, @:check2r _p._pow5((-_exp5 : stdgo.GoUInt64)));
        } else {
            @:check2r _z.mul(_z, @:check2r _p._pow5((_exp5 : stdgo.GoUInt64)));
        };
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        {
            var __tmp__ = @:check2r _z.parse(_s?.__copy__(), (0 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                return { _0 : _f, _1 : true };
            };
        };
        return { _0 : null, _1 : false };
    }
    @:keep
    @:tdfield
    static public function _int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var __tmp__ = @:check2r _x.int64(), _i:stdgo.GoInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
        if (_acc != ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is not an int64" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt)))));
        };
        return _i;
    }
    @:keep
    @:tdfield
    static public function _uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var __tmp__ = @:check2r _x.uint64(), _u:stdgo.GoUInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
        if (_acc != ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is not a uint64" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt)))));
        };
        return _u;
    }
    @:keep
    @:tdfield
    static public function _ord( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                _m = (1 : stdgo.GoInt);
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                _m = (2 : stdgo.GoInt);
            };
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _m = -_m;
        };
        return _m;
    }
    @:keep
    @:tdfield
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
            @:check2r _y._validate();
        };
        var _mx = (@:check2r _x._ord() : stdgo.GoInt);
        var _my = (@:check2r _y._ord() : stdgo.GoInt);
        if ((_mx < _my : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_mx > _my : Bool)) {
            return (1 : stdgo.GoInt);
        };
        {
            final __value__ = _mx;
            if (__value__ == ((-1 : stdgo.GoInt))) {
                return @:check2r _y._ucmp(_x);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return @:check2r _x._ucmp(_y);
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function quo( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _x._validate();
            @:check2r _y._validate();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg != ((@:checkr _y ?? throw "null pointer dereference")._neg);
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            @:check2r _z._uquo(_x, _y);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("division of zero by zero or infinity by infinity" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
        return _z;
    }
    @:keep
    @:tdfield
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _x._validate();
            @:check2r _y._validate();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg != ((@:checkr _y ?? throw "null pointer dereference")._neg);
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            @:check2r _z._umul(_x, _y);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("multiplication of zero with infinity" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
        return _z;
    }
    @:keep
    @:tdfield
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _x._validate();
            @:check2r _y._validate();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            var _yneg = ((@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            if ((@:checkr _x ?? throw "null pointer dereference")._neg != (_yneg)) {
                @:check2r _z._uadd(_x, _y);
            } else {
                if ((@:check2r _x._ucmp(_y) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _z._usub(_x, _y);
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._neg = !(@:checkr _z ?? throw "null pointer dereference")._neg;
                    @:check2r _z._usub(_y, _x);
                };
            };
            if ((((@:checkr _z ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _z ?? throw "null pointer dereference")._mode == ((4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) : Bool) && ((@:checkr _z ?? throw "null pointer dereference")._acc == (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            };
            return _z;
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg == (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("subtraction of infinities with equal signs" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = ((@:checkr _x ?? throw "null pointer dereference")._neg && !(@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            return _z;
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            return @:check2r _z.set(_x);
        };
        return @:check2r _z.neg(_y);
    }
    @:keep
    @:tdfield
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _x._validate();
            @:check2r _y._validate();
        };
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            var _yneg = ((@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            if ((@:checkr _x ?? throw "null pointer dereference")._neg == (_yneg)) {
                @:check2r _z._uadd(_x, _y);
            } else {
                if ((@:check2r _x._ucmp(_y) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _z._usub(_x, _y);
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._neg = !(@:checkr _z ?? throw "null pointer dereference")._neg;
                    @:check2r _z._usub(_y, _x);
                };
            };
            if ((((@:checkr _z ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _z ?? throw "null pointer dereference")._mode == ((4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) : Bool) && ((@:checkr _z ?? throw "null pointer dereference")._acc == (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            };
            return _z;
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg != (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("addition of infinities with opposite signs" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = ((@:checkr _x ?? throw "null pointer dereference")._neg && (@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            return _z;
        };
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            return @:check2r _z.set(_x);
        };
        return @:check2r _z.set(_y);
    }
    @:keep
    @:tdfield
    static public function _ucmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        if (((@:checkr _x ?? throw "null pointer dereference")._exp < (@:checkr _y ?? throw "null pointer dereference")._exp : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if (((@:checkr _x ?? throw "null pointer dereference")._exp > (@:checkr _y ?? throw "null pointer dereference")._exp : Bool)) {
            return (1 : stdgo.GoInt);
        };
        var _i = ((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        var _j = ((@:checkr _y ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) || (_j > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var __0:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), __1:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
var _ym = __1, _xm = __0;
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _i--;
                _xm = (@:checkr _x ?? throw "null pointer dereference")._mant[(_i : stdgo.GoInt)];
            };
            if ((_j > (0 : stdgo.GoInt) : Bool)) {
                _j--;
                _ym = (@:checkr _y ?? throw "null pointer dereference")._mant[(_j : stdgo.GoInt)];
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
    @:tdfield
    static public function _uquo( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _n = ((((@:checkr _z ?? throw "null pointer dereference")._prec / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _xadj = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var _d = ((_n - ((@:checkr _x ?? throw "null pointer dereference")._mant.length) : stdgo.GoInt) + ((@:checkr _y ?? throw "null pointer dereference")._mant.length) : stdgo.GoInt);
            if ((_d > (0 : stdgo.GoInt) : Bool)) {
                _xadj = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((((@:checkr _x ?? throw "null pointer dereference")._mant.length) + _d : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
                (_xadj.__slice__(_d) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((@:checkr _x ?? throw "null pointer dereference")._mant);
            };
        };
        var _d = ((_xadj.length) - ((@:checkr _y ?? throw "null pointer dereference")._mant.length) : stdgo.GoInt);
        var _r:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._mant._div(null, _xadj, (@:checkr _y ?? throw "null pointer dereference")._mant);
            (@:checkr _z ?? throw "null pointer dereference")._mant = @:tmpset0 __tmp__._0;
            _r = @:tmpset0 __tmp__._1;
        };
        var _e = ((((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - ((@:checkr _y ?? throw "null pointer dereference")._exp : stdgo.GoInt64) : stdgo.GoInt64) - (((_d - ((@:checkr _z ?? throw "null pointer dereference")._mant.length) : stdgo.GoInt) : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _sbit:stdgo.GoUInt = (0 : stdgo.GoUInt);
        if (((_r.length) > (0 : stdgo.GoInt) : Bool)) {
            _sbit = (1u32 : stdgo.GoUInt);
        };
        @:check2r _z._setExpAndRound((_e - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), _sbit);
    }
    @:keep
    @:tdfield
    static public function _umul( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _e = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) + ((@:checkr _y ?? throw "null pointer dereference")._exp : stdgo.GoInt64) : stdgo.GoInt64);
        if (_x == (_y)) {
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._sqr((@:checkr _x ?? throw "null pointer dereference")._mant);
        } else {
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._mul((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant);
        };
        @:check2r _z._setExpAndRound((_e - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function _usub( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _ex = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _ey = (((@:checkr _y ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _y ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _al = (stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _x ?? throw "null pointer dereference")._mant) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant) : Bool);
        if ((_ex < _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._mant = _t._sub((@:checkr _x ?? throw "null pointer dereference")._mant, _t);
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt));
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._sub((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant);
            };
        } else if ((_ex > _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl((@:checkr _x ?? throw "null pointer dereference")._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._mant = _t._sub(_t, (@:checkr _y ?? throw "null pointer dereference")._mant);
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._shl((@:checkr _x ?? throw "null pointer dereference")._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt));
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._sub((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant);
            };
            _ex = _ey;
        } else {
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._sub((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant);
        };
        if (((@:checkr _z ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            return;
        };
        @:check2r _z._setExpAndRound(((_ex + (((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function _uadd( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _ex = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _ey = (((@:checkr _y ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _y ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _al = (stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _x ?? throw "null pointer dereference")._mant) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant) : Bool);
        if ((_ex < _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._add((@:checkr _x ?? throw "null pointer dereference")._mant, _t);
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt));
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._add((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant);
            };
        } else if ((_ex > _ey : Bool)) {
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl((@:checkr _x ?? throw "null pointer dereference")._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._add(_t, (@:checkr _y ?? throw "null pointer dereference")._mant);
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._shl((@:checkr _x ?? throw "null pointer dereference")._mant, ((_ex - _ey : stdgo.GoInt64) : stdgo.GoUInt));
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._add((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant);
            };
            _ex = _ey;
        } else {
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._add((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant);
        };
        @:check2r _z._setExpAndRound(((_ex + (((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        @:check2r _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = !(@:checkr _z ?? throw "null pointer dereference")._neg;
        return _z;
    }
    @:keep
    @:tdfield
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        @:check2r _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function rat( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        if (((_z == null || (_z : Dynamic).__nil__) && ((@:checkr _x ?? throw "null pointer dereference")._form <= (1 : stdgo._internal.math.big.Big_t_form.T_form) : Bool) : Bool)) {
            _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        };
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                var _allBits = (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt32) * (32 : stdgo.GoInt32) : stdgo.GoInt32);
                (@:checkr _z ?? throw "null pointer dereference")._a._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
                if (((@:checkr _x ?? throw "null pointer dereference")._exp > _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._shl((@:checkr _x ?? throw "null pointer dereference")._mant, (((@:checkr _x ?? throw "null pointer dereference")._exp - _allBits : stdgo.GoInt32) : stdgo.GoUInt));
                    (@:checkr _z ?? throw "null pointer dereference")._b._abs = ((@:checkr _z ?? throw "null pointer dereference")._b._abs.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                } else if (((@:checkr _x ?? throw "null pointer dereference")._exp < _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                    var _t = ((@:checkr _z ?? throw "null pointer dereference")._b._abs._setUint64((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    (@:checkr _z ?? throw "null pointer dereference")._b._abs = _t._shl(_t, ((_allBits - (@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt32) : stdgo.GoUInt));
                    @:check2r _z._norm();
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                    (@:checkr _z ?? throw "null pointer dereference")._b._abs = ((@:checkr _z ?? throw "null pointer dereference")._b._abs.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                };
                return { _0 : _z, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                return { _0 : @:check2r _z.setInt64((0i64 : stdgo.GoInt64)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                return { _0 : null, _1 : stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function int_( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        if (((_z == null || (_z : Dynamic).__nil__) && ((@:checkr _x ?? throw "null pointer dereference")._form <= (1 : stdgo._internal.math.big.Big_t_form.T_form) : Bool) : Bool)) {
            _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                var _acc = (stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) : stdgo._internal.math.big.Big_accuracy.Accuracy);
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    return { _0 : @:check2r _z.setInt64((0i64 : stdgo.GoInt64)), _1 : _acc };
                };
                var _allBits = (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _exp = ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt);
                if ((@:check2r _x.minPrec() <= _exp : Bool)) {
                    _acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
                };
                if ((_z == null || (_z : Dynamic).__nil__)) {
                    _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                };
                (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
                if ((_exp > _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shl((@:checkr _x ?? throw "null pointer dereference")._mant, (_exp - _allBits : stdgo.GoUInt));
                } else if ((_exp < _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shr((@:checkr _x ?? throw "null pointer dereference")._mant, (_allBits - _exp : stdgo.GoUInt));
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                };
                return { _0 : _z, _1 : _acc };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                return { _0 : @:check2r _z.setInt64((0i64 : stdgo.GoInt64)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                return { _0 : null, _1 : stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                {};
                var _e = ((@:checkr _x ?? throw "null pointer dereference")._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                var _p = (53 : stdgo.GoInt);
                if ((_e < (-1022 : stdgo.GoInt32) : Bool)) {
                    _p = ((1075 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    if (((_p < (0 : stdgo.GoInt) : Bool) || (_p == ((0 : stdgo.GoInt)) && (@:checkr _x ?? throw "null pointer dereference")._mant._sticky(((((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) == ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) {
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                            return { _0 : -_z, _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        return { _0 : (0 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    if (_p == ((0 : stdgo.GoInt))) {
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            return { _0 : (-5e-324 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        return { _0 : (5e-324 : stdgo.GoFloat64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                };
                var _r:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                _r._prec = (_p : stdgo.GoUInt32);
                @:check2 _r.set(_x);
                _e = (_r._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                if (((_r._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || (_e > (1023 : stdgo.GoInt32) : Bool) : Bool)) {
                    if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                        return { _0 : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    return { _0 : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _mant = __2, _bexp = __1, _sign = __0;
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
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
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                    return { _0 : -_z, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    return { _0 : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                return { _0 : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function float32( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoFloat32; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                {};
                var _e = ((@:checkr _x ?? throw "null pointer dereference")._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                var _p = (24 : stdgo.GoInt);
                if ((_e < (-126 : stdgo.GoInt32) : Bool)) {
                    _p = ((150 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    if (((_p < (0 : stdgo.GoInt) : Bool) || (_p == ((0 : stdgo.GoInt)) && (@:checkr _x ?? throw "null pointer dereference")._mant._sticky(((((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) == ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) {
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            var _z:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
                            return { _0 : -_z, _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        return { _0 : (0 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    if (_p == ((0 : stdgo.GoInt))) {
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            return { _0 : (-1.401298464324817e-45 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        return { _0 : (1.401298464324817e-45 : stdgo.GoFloat64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                };
                var _r:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                _r._prec = (_p : stdgo.GoUInt32);
                @:check2 _r.set(_x);
                _e = (_r._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                if (((_r._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || (_e > (127 : stdgo.GoInt32) : Bool) : Bool)) {
                    if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                        return { _0 : (stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    return { _0 : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _mant = __2, _bexp = __1, _sign = __0;
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
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
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    var _z:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
                    return { _0 : -_z, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    return { _0 : (stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                return { _0 : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoInt64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                var _acc = (stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) : stdgo._internal.math.big.Big_accuracy.Accuracy);
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : _acc };
                };
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (63 : stdgo.GoInt32) : Bool)) {
                    var _i = ((stdgo._internal.math.big.Big__msb64._msb64((@:checkr _x ?? throw "null pointer dereference")._mant) >> (((64u32 : stdgo.GoUInt32) - ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt64) : stdgo.GoInt64);
                    if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                        _i = -_i;
                    };
                    if ((@:check2r _x.minPrec() <= ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt) : Bool)) {
                        return { _0 : _i, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    return { _0 : _i, _1 : _acc };
                };
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    if ((((@:checkr _x ?? throw "null pointer dereference")._exp == (64 : stdgo.GoInt32)) && (@:check2r _x.minPrec() == (1u32 : stdgo.GoUInt)) : Bool)) {
                        _acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
                    };
                    return { _0 : (-9223372036854775808i64 : stdgo.GoInt64), _1 : _acc };
                };
                return { _0 : (9223372036854775807i64 : stdgo.GoInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    return { _0 : (-9223372036854775808i64 : stdgo.GoInt64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                return { _0 : (9223372036854775807i64 : stdgo.GoInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (64 : stdgo.GoInt32) : Bool)) {
                    var _u = (stdgo._internal.math.big.Big__msb64._msb64((@:checkr _x ?? throw "null pointer dereference")._mant) >> (((64u32 : stdgo.GoUInt32) - ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt64);
                    if ((@:check2r _x.minPrec() <= (64u32 : stdgo.GoUInt) : Bool)) {
                        return { _0 : _u, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    return { _0 : _u, _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                return { _0 : (-1i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                return { _0 : (-1i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function copy( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _x._validate();
        };
        if (_z != (_x)) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (@:checkr _x ?? throw "null pointer dereference")._prec;
            (@:checkr _z ?? throw "null pointer dereference")._mode = (@:checkr _x ?? throw "null pointer dereference")._mode;
            (@:checkr _z ?? throw "null pointer dereference")._acc = (@:checkr _x ?? throw "null pointer dereference")._acc;
            (@:checkr _z ?? throw "null pointer dereference")._form = (@:checkr _x ?? throw "null pointer dereference")._form;
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                (@:checkr _z ?? throw "null pointer dereference")._exp = (@:checkr _x ?? throw "null pointer dereference")._exp;
            };
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _x._validate();
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        if (_z != (_x)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (@:checkr _x ?? throw "null pointer dereference")._form;
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _z ?? throw "null pointer dereference")._exp = (@:checkr _x ?? throw "null pointer dereference")._exp;
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._set((@:checkr _x ?? throw "null pointer dereference")._mant);
            };
            if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
                (@:checkr _z ?? throw "null pointer dereference")._prec = (@:checkr _x ?? throw "null pointer dereference")._prec;
            } else if (((@:checkr _z ?? throw "null pointer dereference")._prec < (@:checkr _x ?? throw "null pointer dereference")._prec : Bool)) {
                @:check2r _z._round((0u32 : stdgo.GoUInt));
            };
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInf( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _signbit:Bool):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
        (@:checkr _z ?? throw "null pointer dereference")._neg = _signbit;
        return _z;
    }
    @:keep
    @:tdfield
    static public function setRat( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (@:check2r _x.isInt()) {
            return @:check2r _z.setInt(@:check2r _x.num());
        };
        var __0:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_), __1:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
var _b = __1, _a = __0;
        @:check2 _a.setInt(@:check2r _x.num());
        @:check2 _b.setInt(@:check2r _x.denom());
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32(_a._prec, _b._prec);
        };
        return @:check2r _z.quo((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
    }
    @:keep
    @:tdfield
    static public function setInt( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _bits = (@:check2r _x.bitLen() : stdgo.GoUInt32);
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32(_bits, (64u32 : stdgo.GoUInt32));
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
        if (((@:checkr _x ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._set((@:checkr _x ?? throw "null pointer dereference")._abs);
        stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant);
        @:check2r _z._setExpAndRound((_bits : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
        return _z;
    }
    @:keep
    @:tdfield
    static public function setFloat64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (53u32 : stdgo.GoUInt32);
        };
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("Float.SetFloat64(NaN)" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._neg = stdgo._internal.math.Math_signbit.signbit(_x);
        if (_x == (0 : stdgo.GoFloat64)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            return _z;
        };
        if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _fmant:stdgo.GoFloat64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1;
        (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._setUint64(((-9223372036854775808i64 : stdgo.GoUInt64) | (stdgo._internal.math.Math_float64bits.float64bits(_fmant) << (11i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._exp = (_exp : stdgo.GoInt32);
        if (((@:checkr _z ?? throw "null pointer dereference")._prec < (53u32 : stdgo.GoUInt32) : Bool)) {
            @:check2r _z._round((0u32 : stdgo.GoUInt));
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _u = (_x : stdgo.GoInt64);
        if ((_u < (0i64 : stdgo.GoInt64) : Bool)) {
            _u = -_u;
        };
        return @:check2r _z._setBits64((_x < (0i64 : stdgo.GoInt64) : Bool), (_u : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        return @:check2r _z._setBits64(false, _x);
    }
    @:keep
    @:tdfield
    static public function _setBits64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _neg:Bool, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (64u32 : stdgo.GoUInt32);
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._neg = _neg;
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
        var _s = (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_x) : stdgo.GoInt);
        (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._setUint64((_x << (_s : stdgo.GoUInt) : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._exp = (((64 : stdgo.GoInt) - _s : stdgo.GoInt) : stdgo.GoInt32);
        if (((@:checkr _z ?? throw "null pointer dereference")._prec < (64u32 : stdgo.GoUInt32) : Bool)) {
            @:check2r _z._round((0u32 : stdgo.GoUInt));
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function _round( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _sbit:stdgo.GoUInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _z._validate();
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        if ((@:checkr _z ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            return;
        };
        var _m = ((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt32);
        var _bits = (_m * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if ((_bits <= (@:checkr _z ?? throw "null pointer dereference")._prec : Bool)) {
            return;
        };
        var _r = (((_bits - (@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
        var _rbit = ((@:checkr _z ?? throw "null pointer dereference")._mant._bit(_r) & (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if (((_sbit == (0u32 : stdgo.GoUInt)) && (((_rbit == (0u32 : stdgo.GoUInt)) || ((@:checkr _z ?? throw "null pointer dereference")._mode == (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) : Bool)) : Bool)) {
            _sbit = (@:checkr _z ?? throw "null pointer dereference")._mant._sticky(_r);
        };
        _sbit = (_sbit & ((1u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var _n = ((((@:checkr _z ?? throw "null pointer dereference")._prec + (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if ((_m > _n : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._mant.__copyTo__(((@:checkr _z ?? throw "null pointer dereference")._mant.__slice__((_m - _n : stdgo.GoUInt32)) : stdgo._internal.math.big.Big_t_nat.T_nat));
            (@:checkr _z ?? throw "null pointer dereference")._mant = ((@:checkr _z ?? throw "null pointer dereference")._mant.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        var _ntz = ((_n * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) - (@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        var _lsb = ((1u32 : stdgo._internal.math.big.Big_word.Word) << _ntz : stdgo._internal.math.big.Big_word.Word);
        if ((_rbit | _sbit : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            var _inc = (false : Bool);
            {
                final __value__ = (@:checkr _z ?? throw "null pointer dereference")._mode;
                if (__value__ == ((4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                    _inc = (@:checkr _z ?? throw "null pointer dereference")._neg;
                } else if (__value__ == ((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {} else if (__value__ == ((0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                    _inc = ((_rbit != (0u32 : stdgo.GoUInt)) && (((_sbit != (0u32 : stdgo.GoUInt)) || (((@:checkr _z ?? throw "null pointer dereference")._mant[(0 : stdgo.GoInt)] & _lsb : stdgo._internal.math.big.Big_word.Word) != (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) : Bool);
                } else if (__value__ == ((1 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                    _inc = _rbit != ((0u32 : stdgo.GoUInt));
                } else if (__value__ == ((3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                    _inc = true;
                } else if (__value__ == ((5 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
                    _inc = !(@:checkr _z ?? throw "null pointer dereference")._neg;
                } else {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc(_inc != ((@:checkr _z ?? throw "null pointer dereference")._neg));
            if (_inc) {
                if (stdgo._internal.math.big.Big__addvw._addVW((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant, _lsb) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    if (((@:checkr _z ?? throw "null pointer dereference")._exp >= (2147483647 : stdgo.GoInt32) : Bool)) {
                        (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
                        return;
                    };
                    (@:checkr _z ?? throw "null pointer dereference")._exp++;
                    stdgo._internal.math.big.Big__shrvu._shrVU((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant, (1u32 : stdgo.GoUInt));
                    {};
                    (@:checkr _z ?? throw "null pointer dereference")._mant[((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._mant[((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] | ((-2147483648u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                };
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._mant[(0 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._mant[(0 : stdgo.GoInt)] & ((((_lsb - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
        if (false) {
            @:check2r _z._validate();
        };
    }
    @:keep
    @:tdfield
    static public function _validate0( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        if (_m == ((0 : stdgo.GoInt))) {
            return ("nonzero finite number with empty mantissa" : stdgo.GoString);
        };
        {};
        if (((@:checkr _x ?? throw "null pointer dereference")._mant[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("msb not set in last word %#x of %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._mant[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)]), stdgo.Go.toInterface(@:check2r _x.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))))?.__copy__();
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            return ("zero precision finite number" : stdgo.GoString);
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _validate( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (true) {
            throw stdgo.Go.toInterface(("validate called but debugFloat is not set" : stdgo.GoString));
        };
        {
            var _msg = (@:check2r _x._validate0()?.__copy__() : stdgo.GoString);
            if (_msg != ((stdgo.Go.str() : stdgo.GoString))) {
                throw stdgo.Go.toInterface(_msg);
            };
        };
    }
    @:keep
    @:tdfield
    static public function isInt( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            return (@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form));
        };
        if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
            return false;
        };
        return (((@:checkr _x ?? throw "null pointer dereference")._prec <= ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32) : Bool) || (@:check2r _x.minPrec() <= ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function isInf( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form));
    }
    @:keep
    @:tdfield
    static public function signbit( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._neg;
    }
    @:keep
    @:tdfield
    static public function setMantExp( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _mant:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _exp:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if (false) {
            @:check2r _z._validate();
            @:check2r _mant._validate();
        };
        @:check2r _z.copy(_mant);
        if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            @:check2r _z._setExpAndRound((((@:checkr _z ?? throw "null pointer dereference")._exp : stdgo.GoInt64) + (_exp : stdgo.GoInt64) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setExpAndRound( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _exp:stdgo.GoInt64, _sbit:stdgo.GoUInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        if ((_exp < (-2147483648i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _z ?? throw "null pointer dereference")._neg);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            return;
        };
        if ((_exp > (2147483647i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc(!(@:checkr _z ?? throw "null pointer dereference")._neg);
            (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
            return;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
        (@:checkr _z ?? throw "null pointer dereference")._exp = (_exp : stdgo.GoInt32);
        @:check2r _z._round(_sbit);
    }
    @:keep
    @:tdfield
    static public function mantExp( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _mant:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _exp = (0 : stdgo.GoInt);
        if (false) {
            @:check2r _x._validate();
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            _exp = ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt);
        };
        if ((_mant != null && ((_mant : Dynamic).__nil__ == null || !(_mant : Dynamic).__nil__))) {
            @:check2r _mant.copy(_x);
            if ((@:checkr _mant ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _mant ?? throw "null pointer dereference")._exp = (0 : stdgo.GoInt32);
            };
        };
        return _exp;
    }
    @:keep
    @:tdfield
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if (false) {
            @:check2r _x._validate();
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            return (0 : stdgo.GoInt);
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function acc( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo._internal.math.big.Big_accuracy.Accuracy {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._acc;
    }
    @:keep
    @:tdfield
    static public function mode( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo._internal.math.big.Big_roundingmode.RoundingMode {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._mode;
    }
    @:keep
    @:tdfield
    static public function minPrec( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            return (0u32 : stdgo.GoUInt);
        };
        return ((((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (@:checkr _x ?? throw "null pointer dereference")._mant._trailingZeroBits() : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function prec( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        return ((@:checkr _x ?? throw "null pointer dereference")._prec : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function setMode( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _mode:stdgo._internal.math.big.Big_roundingmode.RoundingMode):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        return _z;
    }
    @:keep
    @:tdfield
    static public function setPrec( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _prec:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        if (_prec == ((0u32 : stdgo.GoUInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (0u32 : stdgo.GoUInt32);
            if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _z ?? throw "null pointer dereference")._neg);
                (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            };
            return _z;
        };
        if ((_prec > (-1u32 : stdgo.GoUInt) : Bool)) {
            _prec = (-1u32 : stdgo.GoUInt);
        };
        var _old = ((@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        (@:checkr _z ?? throw "null pointer dereference")._prec = (_prec : stdgo.GoUInt32);
        if (((@:checkr _z ?? throw "null pointer dereference")._prec < _old : Bool)) {
            @:check2r _z._round((0u32 : stdgo.GoUInt));
        };
        return _z;
    }
}
