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
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L102"
            _u.mul(_t, _t);
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L103"
            _u.mul(_x, _u);
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L104"
            _v.sub(_three, _u);
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L105"
            _u.mul(_t, _v);
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L106"
            (@:checkr _u ?? throw "null pointer dereference")._exp--;
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L107"
            return _t.set(_u);
        };
        var __tmp__ = _x.float64(), _xf:stdgo.GoFloat64 = __tmp__._0, __8:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
        var _sqi = stdgo._internal.math.big.Big__newfloat._newFloat((@:checkr _z ?? throw "null pointer dereference")._prec);
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L112"
        _sqi.setFloat64(((1 : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_xf) : stdgo.GoFloat64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L113"
        {
            var _prec = ((@:checkr _z ?? throw "null pointer dereference")._prec + (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while (((@:checkr _sqi ?? throw "null pointer dereference")._prec < _prec : Bool)) {
                (@:checkr _sqi ?? throw "null pointer dereference")._prec = ((@:checkr _sqi ?? throw "null pointer dereference")._prec * ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _sqi = _ng(_sqi);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L120"
        _z.mul(_x, _sqi);
    }
    @:keep
    @:tdfield
    static public function sqrt( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L34"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L35"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L38"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (@:checkr _x ?? throw "null pointer dereference")._prec;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L42"
        if (_x.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L44"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("square root of negative operand" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L48"
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (@:checkr _x ?? throw "null pointer dereference")._form;
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L52"
            return _z;
        };
        var _prec = ((@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        var _b = (_x.mantExp(_z) : stdgo.GoInt);
        (@:checkr _z ?? throw "null pointer dereference")._prec = _prec;
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L66"
        {
            final __value__ = (_b % (2 : stdgo.GoInt) : stdgo.GoInt);
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L70"
                (@:checkr _z ?? throw "null pointer dereference")._exp++;
            } else if (__value__ == ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L72"
                (@:checkr _z ?? throw "null pointer dereference")._exp--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L78"
        _z._sqrtInverse(_z);
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt.go#L81"
        return _z.setMantExp(_z, (_b / (2 : stdgo.GoInt) : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function format( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo._internal.fmt.Fmt_state.State, _format:stdgo.GoInt32):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var __tmp__ = _s.precision(), _prec:stdgo.GoInt = __tmp__._0, _hasPrec:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L467"
        if (!_hasPrec) {
            _prec = (6 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L471"
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
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L480"
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32))))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L482"
                        if (!_hasPrec) {
                            _prec = (-1 : stdgo.GoInt);
                        };
                        break;
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L486"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_s, ("%%!%c(*big.Float=%s)" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface((_x.string() : stdgo.GoString)));
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L487"
                        return;
                        break;
                    };
                };
                break;
            };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _buf = _x.append(_buf, (_format : stdgo.GoUInt8), _prec);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L491"
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            _buf = ((("?" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _sign:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L497"
        if (_buf[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _sign = ("-" : stdgo.GoString);
            _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else if (_buf[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _sign = ("+" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L504"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L515"
        {
            var __tmp__ = _s.width(), _width:stdgo.GoInt = __tmp__._0, _hasWidth:Bool = __tmp__._1;
            if ((_hasWidth && (_width > ((_sign.length) + (_buf.length) : stdgo.GoInt) : Bool) : Bool)) {
                _padding = ((_width - (_sign.length) : stdgo.GoInt) - (_buf.length) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L519"
        if ((_s.flag((48 : stdgo.GoInt)) && !_x.isInf() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L522"
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L523"
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, ("0" : stdgo.GoString), _padding);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L524"
            _s.write(_buf);
        } else if (_s.flag((45 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L527"
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L528"
            _s.write(_buf);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L529"
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _padding);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L532"
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _padding);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L533"
            stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L534"
            _s.write(_buf);
        };
    }
    @:keep
    @:tdfield
    static public function _fmtP( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L420"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L421"
            return (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L424"
        if ((false && ((@:checkr _x ?? throw "null pointer dereference")._form != (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L425"
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L433"
        while (((_i < (_m.length) : Bool) && (_m[(_i : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L434"
            _i++;
        };
        _m = (_m.__slice__(_i) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _buf = (_buf.__append__(...((("0x." : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(stdgo._internal.bytes.Bytes_trimright.trimRight(_m._utoa((16 : stdgo.GoInt)), ("0" : stdgo.GoString)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L441"
        if (((@:checkr _x ?? throw "null pointer dereference")._exp >= (0 : stdgo.GoInt32) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L444"
        return stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64), (10 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _fmtX( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L353"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            _buf = (_buf.__append__(...((("0x0" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L355"
            if ((_prec > (0 : stdgo.GoInt) : Bool)) {
                _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L357"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _prec : Bool)) {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                        _i++;
                    };
                };
            };
            _buf = (_buf.__append__(...((("p+00" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L362"
            return _buf;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L365"
        if ((false && ((@:checkr _x ?? throw "null pointer dereference")._form != (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L366"
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L371"
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            _n = ((1u32 : stdgo.GoUInt) + (((((_x.minPrec() - (1u32 : stdgo.GoUInt) : stdgo.GoUInt) + (3u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (4u32 : stdgo.GoUInt) : stdgo.GoUInt) * (4u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
        } else {
            _n = ((1u32 : stdgo.GoUInt) + ((4u32 : stdgo.GoUInt) * (_prec : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
        };
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_n).setMode((@:checkr _x ?? throw "null pointer dereference")._mode).set(_x);
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L381"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L390"
        if ((false && (_hm[(0 : stdgo.GoInt)] != (49 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L391"
            throw stdgo.Go.toInterface((("incorrect mantissa: " : stdgo.GoString) + (_hm : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        _buf = (_buf.__append__(...((("0x1" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L394"
        if (((_hm.length) > (1 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...((_hm.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L400"
        if ((_exp64 >= (0i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _exp64 = -_exp64;
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L407"
        if ((_exp64 < (10i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L410"
        return stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, _exp64, (10 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _fmtB( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L319"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L320"
            return (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L323"
        if ((false && ((@:checkr _x ?? throw "null pointer dereference")._form != (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L324"
            throw stdgo.Go.toInterface(("non-finite float" : stdgo.GoString));
        };
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L330"
        {
            var _w = (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt32) * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((_w < (@:checkr _x ?? throw "null pointer dereference")._prec : Bool)) {
                _m = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl(_m, (((@:checkr _x ?? throw "null pointer dereference")._prec - _w : stdgo.GoUInt32) : stdgo.GoUInt));
            } else if ((_w > (@:checkr _x ?? throw "null pointer dereference")._prec : Bool)) {
                _m = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shr(_m, ((_w - (@:checkr _x ?? throw "null pointer dereference")._prec : stdgo.GoUInt32) : stdgo.GoUInt));
            };
        };
        _buf = (_buf.__append__(...(_m._utoa((10 : stdgo.GoInt)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__((112 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _e = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - ((@:checkr _x ?? throw "null pointer dereference")._prec : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L340"
        if ((_e >= (0i64 : stdgo.GoInt64) : Bool)) {
            _buf = (_buf.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L343"
        return stdgo._internal.strconv.Strconv_appendint.appendInt(_buf, _e, (10 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function append( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L65"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L70"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L71"
            if (!(@:checkr _x ?? throw "null pointer dereference")._neg) {
                _buf = (_buf.__append__((43 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L74"
            return (_buf.__append__(...((("Inf" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L78"
        {
            final __value__ = _fmt;
            if (__value__ == ((98 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L80"
                return _x._fmtB(_buf);
            } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L82"
                return _x._fmtP(_buf);
            } else if (__value__ == ((120 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L84"
                return _x._fmtX(_buf, _prec);
            };
        };
        var _d:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L94"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L96"
            _d._init((@:checkr _x ?? throw "null pointer dereference")._mant, (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt) - (@:checkr _x ?? throw "null pointer dereference")._mant._bitLen() : stdgo.GoInt));
        };
        var _shortest = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L101"
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            _shortest = true;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L103"
            stdgo._internal.math.big.Big__roundshortest._roundShortest((stdgo.Go.setRef(_d) : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>), _x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L105"
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
            //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L115"
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L118"
                    _d._round(((1 : stdgo.GoInt) + _prec : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L121"
                    _d._round((_d._exp + _prec : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L123"
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L126"
                    _d._round(_prec);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L131"
        {
            final __value__ = _fmt;
            if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L133"
                return stdgo._internal.math.big.Big__fmte._fmtE(_buf, _fmt, _prec, _d?.__copy__());
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L135"
                return stdgo._internal.math.big.Big__fmtf._fmtF(_buf, _prec, _d?.__copy__());
            } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                var _eprec = (_prec : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L139"
                if (((_eprec > (_d._mant.length) : Bool) && ((_d._mant.length) >= _d._exp : Bool) : Bool)) {
                    _eprec = (_d._mant.length);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L146"
                if (_shortest) {
                    _eprec = (6 : stdgo.GoInt);
                };
                var _exp = (_d._exp - (1 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L150"
                if (((_exp < (-4 : stdgo.GoInt) : Bool) || (_exp >= _eprec : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L151"
                    if ((_prec > (_d._mant.length) : Bool)) {
                        _prec = (_d._mant.length);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L154"
                    return stdgo._internal.math.big.Big__fmte._fmtE(_buf, ((_fmt + (101 : stdgo.GoUInt8) : stdgo.GoUInt8) - (103 : stdgo.GoUInt8) : stdgo.GoUInt8), (_prec - (1 : stdgo.GoInt) : stdgo.GoInt), _d?.__copy__());
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L156"
                if ((_prec > _d._exp : Bool)) {
                    _prec = (_d._mant.length);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L159"
                return stdgo._internal.math.big.Big__fmtf._fmtF(_buf, stdgo._internal.math.big.Big__max._max((_prec - _d._exp : stdgo.GoInt), (0 : stdgo.GoInt)), _d?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L163"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _buf = (_buf.__slice__(0, ((_buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L166"
        return (_buf.__append__((37 : stdgo.GoUInt8), _fmt) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L58"
        return _x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function text( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _format:stdgo.GoUInt8, _prec:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _cap = (10 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L49"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _cap = (_cap + (_prec) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ftoa.go#L52"
        return (_x.append((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _cap).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _format, _prec) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var __tmp__ = _z.parse((_text : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt)), __8:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L127"
        if (_err != null) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Float (%v)" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L130"
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L113"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L114"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : ((("<nil>" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                _text = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L117"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _x.append(_buf, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L66"
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
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L69"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L71"
        if (((_buf.length) < (6 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L72"
            return stdgo._internal.errors.Errors_new_.new_(("Float.GobDecode: buffer too small" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L75"
        if (_buf[(0 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L76"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L89"
        if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L90"
            if (((_buf.length) < (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L91"
                return stdgo._internal.errors.Errors_new_.new_(("Float.GobDecode: buffer too small for finite form float" : stdgo.GoString));
            };
            (@:checkr _z ?? throw "null pointer dereference")._exp = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._setBytes((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L97"
        if (_oldPrec != ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._mode = _oldMode;
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L99"
            _z.setPrec((_oldPrec : stdgo.GoUInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L102"
        {
            var _msg = (_z._validate0()?.__copy__() : stdgo.GoString);
            if (_msg != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L103"
                return stdgo._internal.errors.Errors_new_.new_((("Float.GobDecode: " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L106"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L22"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L23"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _sz = (6 : stdgo.GoInt);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L29"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            _n = (((((@:checkr _x ?? throw "null pointer dereference")._prec + (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L37"
            if ((((@:checkr _x ?? throw "null pointer dereference")._mant.length) < _n : Bool)) {
                _n = ((@:checkr _x ?? throw "null pointer dereference")._mant.length);
            };
            _sz = (_sz + (((4 : stdgo.GoInt) + (_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_sz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        var _b = ((((((@:checkr _x ?? throw "null pointer dereference")._mode & (7 : stdgo._internal.math.big.Big_roundingmode.RoundingMode) : stdgo._internal.math.big.Big_roundingmode.RoundingMode) : stdgo.GoUInt8) << (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | ((((((@:checkr _x ?? throw "null pointer dereference")._acc + (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo._internal.math.big.Big_accuracy.Accuracy)) & (3 : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo._internal.math.big.Big_accuracy.Accuracy) : stdgo.GoUInt8) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8) | ((((@:checkr _x ?? throw "null pointer dereference")._form & (3 : stdgo._internal.math.big.Big_t_form.T_form) : stdgo._internal.math.big.Big_t_form.T_form) : stdgo.GoUInt8) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L47"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(1 : stdgo.GoInt)] = _b;
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L51"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_buf.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _x ?? throw "null pointer dereference")._prec);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L53"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L54"
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_buf.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L55"
            ((@:checkr _x ?? throw "null pointer dereference")._mant.__slice__((((@:checkr _x ?? throw "null pointer dereference")._mant.length) - _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._bytes((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatmarsh.go#L58"
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L299"
        _s.skipSpace();
        var __tmp__ = _z._scan(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_t_bytereader.T_byteReader(_s) : stdgo._internal.math.big.Big_t_bytereader.T_byteReader)), (0 : stdgo.GoInt)), __8:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L301"
        return _err;
    }
    @:keep
    @:tdfield
    static public function parse( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L261"
        if (((_s.length == (3 : stdgo.GoInt)) && (((_s == ("Inf" : stdgo.GoString)) || (_s == ("inf" : stdgo.GoString)) : Bool)) : Bool)) {
            _f = _z.setInf(false);
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L263"
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L265"
        if ((((_s.length) == ((4 : stdgo.GoInt)) && (((_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) : Bool) && ((((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == ("Inf" : stdgo.GoString)) || ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == ("inf" : stdgo.GoString)) : Bool)) : Bool)) {
            _f = _z.setInf(_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L267"
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _r = stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L271"
        {
            {
                var __tmp__ = _z._scan(stdgo.Go.asInterface(_r), _base);
                _f = @:tmpset0 __tmp__._0;
                _b = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L272"
                return { _0 : _f, _1 : _b, _2 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L276"
        {
            var __tmp__ = _r.readByte(), _ch:stdgo.GoUInt8 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 == null) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("expected end of string, found %q" : stdgo.GoString), stdgo.Go.toInterface(_ch));
            } else if (stdgo.Go.toInterface(_err2) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = _err2;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L282"
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _pow5( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _n:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L191"
        if ((_n <= (27i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L192"
            return _z.setUint64(stdgo._internal.math.big.Big__pow5tab._pow5tab[(_n : stdgo.GoInt)]);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L196"
        _z.setUint64(stdgo._internal.math.big.Big__pow5tab._pow5tab[((27i64 : stdgo.GoUInt64) : stdgo.GoInt)]);
        _n = (_n - ((27i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((_z.prec() + (64u32 : stdgo.GoUInt) : stdgo.GoUInt)).setUint64((5i64 : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L203"
        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L204"
            if ((_n & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L205"
                _z.mul(_z, _f);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L207"
            _f.mul(_f, _f);
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L211"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _prec = ((@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L35"
        if (_prec == ((0u32 : stdgo.GoUInt32))) {
            _prec = (64u32 : stdgo.GoUInt32);
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scansign._scanSign(_r);
            (@:checkr _z ?? throw "null pointer dereference")._neg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L44"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L45"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L51"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L52"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L59"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L60"
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L64"
        if (((@:checkr _z ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = _prec;
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            _f = _z;
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L69"
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _exp2 = ((((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64);
        var _exp5 = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L89"
        if ((_fcount < (0 : stdgo.GoInt) : Bool)) {
            var _d = (_fcount : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L94"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _b;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                            _exp5 = _d;
                            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L97"
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
                            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L105"
                            throw stdgo.Go.toInterface(("unexpected mantissa base" : stdgo.GoString));
                            break;
                        };
                    };
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L111"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _ebase;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                        _exp5 = (_exp5 + (_exp) : stdgo.GoInt64);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L114"
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
                        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L118"
                        throw stdgo.Go.toInterface(("unexpected exponent base" : stdgo.GoString));
                        break;
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L123"
        if ((((-2147483648i64 : stdgo.GoInt64) <= _exp2 : Bool) && (_exp2 <= (2147483647i64 : stdgo.GoInt64) : Bool) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = _prec;
            (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._exp = (_exp2 : stdgo.GoInt32);
            _f = _z;
        } else {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("exponent overflow" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L130"
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L133"
        if (_exp5 == ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L135"
            _z._round((0u32 : stdgo.GoUInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L136"
            return { _0 : _f, _1 : _b, _2 : _err };
        };
        var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((_z.prec() + (64u32 : stdgo.GoUInt) : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L142"
        if ((_exp5 < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L143"
            _z.quo(_z, _p._pow5((-_exp5 : stdgo.GoUInt64)));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L145"
            _z.mul(_z, _p._pow5((_exp5 : stdgo.GoUInt64)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L148"
        return { _0 : _f, _1 : _b, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L23"
        {
            var __tmp__ = _z.parse(_s?.__copy__(), (0 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L24"
                return { _0 : _f, _1 : true };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv.go#L26"
        return { _0 : null, _1 : false };
    }
    @:keep
    @:tdfield
    static public function _int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var __tmp__ = _x.int64(), _i:stdgo.GoInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L29"
        if (_acc != ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L30"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is not an int64" : stdgo.GoString), stdgo.Go.toInterface(_x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt)))));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L32"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var __tmp__ = _x.uint64(), _u:stdgo.GoUInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L21"
        if (_acc != ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L22"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is not a uint64" : stdgo.GoString), stdgo.Go.toInterface(_x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt)))));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L24"
        return _u;
    }
    @:keep
    @:tdfield
    static public function _ord( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1717"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                _m = (1 : stdgo.GoInt);
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1721"
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                _m = (2 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1725"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _m = -_m;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1728"
        return _m;
    }
    @:keep
    @:tdfield
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1682"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1683"
            _x._validate();
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1684"
            _y._validate();
        };
        var _mx = (_x._ord() : stdgo.GoInt);
        var _my = (_y._ord() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1689"
        if ((_mx < _my : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1691"
            return (-1 : stdgo.GoInt);
        } else if ((_mx > _my : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1693"
            return (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1698"
        {
            final __value__ = _mx;
            if (__value__ == ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1700"
                return _y._ucmp(_x);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1702"
                return _x._ucmp(_y);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1705"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function quo( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1636"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1637"
            _x._validate();
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1638"
            _y._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1641"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg != ((@:checkr _y ?? throw "null pointer dereference")._neg);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1647"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1649"
            _z._uquo(_x, _y);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1650"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1654"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1660"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("division of zero by zero or infinity by infinity" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1663"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1667"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1673"
        return _z;
    }
    @:keep
    @:tdfield
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1591"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1592"
            _x._validate();
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1593"
            _y._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1596"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg != ((@:checkr _y ?? throw "null pointer dereference")._neg);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1602"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1604"
            _z._umul(_x, _y);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1605"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1609"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1615"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("multiplication of zero with infinity" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1618"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1622"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1628"
        return _z;
    }
    @:keep
    @:tdfield
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1524"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1525"
            _x._validate();
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1526"
            _y._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1529"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1533"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            var _yneg = ((@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1537"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg != (_yneg)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1540"
                _z._uadd(_x, _y);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1544"
                if ((_x._ucmp(_y) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1545"
                    _z._usub(_x, _y);
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._neg = !(@:checkr _z ?? throw "null pointer dereference")._neg;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1548"
                    _z._usub(_y, _x);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1551"
            if ((((@:checkr _z ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _z ?? throw "null pointer dereference")._mode == ((4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) : Bool) && ((@:checkr _z ?? throw "null pointer dereference")._acc == (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1554"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1557"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg == (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1564"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("subtraction of infinities with equal signs" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1567"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = ((@:checkr _x ?? throw "null pointer dereference")._neg && !(@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1572"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1575"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1578"
            return _z.set(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1583"
        return _z.neg(_y);
    }
    @:keep
    @:tdfield
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1450"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1451"
            _x._validate();
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1452"
            _y._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1455"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32((@:checkr _x ?? throw "null pointer dereference")._prec, (@:checkr _y ?? throw "null pointer dereference")._prec);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1459"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (1 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            var _yneg = ((@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1470"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg == (_yneg)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1473"
                _z._uadd(_x, _y);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1477"
                if ((_x._ucmp(_y) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1478"
                    _z._usub(_x, _y);
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._neg = !(@:checkr _z ?? throw "null pointer dereference")._neg;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1481"
                    _z._usub(_y, _x);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1484"
            if ((((@:checkr _z ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _z ?? throw "null pointer dereference")._mode == ((4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) : Bool) && ((@:checkr _z ?? throw "null pointer dereference")._acc == (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1487"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1490"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) && (@:checkr _y ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg != (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1497"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("addition of infinities with opposite signs" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1500"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) && ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = ((@:checkr _x ?? throw "null pointer dereference")._neg && (@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1505"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1508"
        if ((((@:checkr _x ?? throw "null pointer dereference")._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || ((@:checkr _y ?? throw "null pointer dereference")._form == (0 : stdgo._internal.math.big.Big_t_form.T_form)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1511"
            return _z.set(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1516"
        return _z.set(_y);
    }
    @:keep
    @:tdfield
    static public function _ucmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1388"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1389"
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1392"
        if (((@:checkr _x ?? throw "null pointer dereference")._exp < (@:checkr _y ?? throw "null pointer dereference")._exp : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1394"
            return (-1 : stdgo.GoInt);
        } else if (((@:checkr _x ?? throw "null pointer dereference")._exp > (@:checkr _y ?? throw "null pointer dereference")._exp : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1396"
            return (1 : stdgo.GoInt);
        };
        var _i = ((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        var _j = ((@:checkr _y ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1403"
        while (((_i > (0 : stdgo.GoInt) : Bool) || (_j > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _xm:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _ym:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1405"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1406"
                _i--;
                _xm = (@:checkr _x ?? throw "null pointer dereference")._mant[(_i : stdgo.GoInt)];
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1409"
            if ((_j > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1410"
                _j--;
                _ym = (@:checkr _y ?? throw "null pointer dereference")._mant[(_j : stdgo.GoInt)];
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1413"
            if ((_xm < _ym : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1415"
                return (-1 : stdgo.GoInt);
            } else if ((_xm > _ym : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1417"
                return (1 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1421"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uquo( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1343"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1344"
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _n = ((((@:checkr _z ?? throw "null pointer dereference")._prec / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _xadj = ((@:checkr _x ?? throw "null pointer dereference")._mant : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1354"
        {
            var _d = ((_n - ((@:checkr _x ?? throw "null pointer dereference")._mant.length) : stdgo.GoInt) + ((@:checkr _y ?? throw "null pointer dereference")._mant.length) : stdgo.GoInt);
            if ((_d > (0 : stdgo.GoInt) : Bool)) {
                _xadj = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((((@:checkr _x ?? throw "null pointer dereference")._mant.length) + _d : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1357"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1377"
        if (((_r.length) > (0 : stdgo.GoInt) : Bool)) {
            _sbit = (1u32 : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1381"
        _z._setExpAndRound((_e - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), _sbit);
    }
    @:keep
    @:tdfield
    static public function _umul( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1320"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1321"
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _e = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) + ((@:checkr _y ?? throw "null pointer dereference")._exp : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1331"
        if (_x == (_y)) {
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._sqr((@:checkr _x ?? throw "null pointer dereference")._mant);
        } else {
            (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._mul((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1336"
        _z._setExpAndRound((_e - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function _usub( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1272"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1273"
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _ex = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _ey = (((@:checkr _y ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _y ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _al = (stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _x ?? throw "null pointer dereference")._mant) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1281"
        if ((_ex < _ey : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1283"
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._mant = _t._sub((@:checkr _x ?? throw "null pointer dereference")._mant, _t);
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt));
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._sub((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant);
            };
        } else if ((_ex > _ey : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1294"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1305"
        if (((@:checkr _z ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1309"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1313"
        _z._setExpAndRound(((_ex + (((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function _uadd( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1223"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1224"
            stdgo._internal.math.big.Big__validatebinaryoperands._validateBinaryOperands(_x, _y);
        };
        var _ex = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _ey = (((@:checkr _y ?? throw "null pointer dereference")._exp : stdgo.GoInt64) - (((@:checkr _y ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _al = (stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _x ?? throw "null pointer dereference")._mant) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _y ?? throw "null pointer dereference")._mant) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1236"
        if ((_ex < _ey : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1238"
            if (_al) {
                var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._add((@:checkr _x ?? throw "null pointer dereference")._mant, _t);
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._shl((@:checkr _y ?? throw "null pointer dereference")._mant, ((_ey - _ex : stdgo.GoInt64) : stdgo.GoUInt));
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._add((@:checkr _x ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant);
            };
        } else if ((_ex > _ey : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1249"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1260"
        _z._setExpAndRound(((_ex + (((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoInt64) * (32i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) - stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1191"
        _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = !(@:checkr _z ?? throw "null pointer dereference")._neg;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1193"
        return _z;
    }
    @:keep
    @:tdfield
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1183"
        _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1185"
        return _z;
    }
    @:keep
    @:tdfield
    static public function rat( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1139"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1140"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1143"
        if ((({
            final value = _z;
            (value == null || (value : Dynamic).__nil__);
        }) && ((@:checkr _x ?? throw "null pointer dereference")._form <= (1 : stdgo._internal.math.big.Big_t_form.T_form) : Bool) : Bool)) {
            _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1147"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                var _allBits = (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt32) * (32 : stdgo.GoInt32) : stdgo.GoInt32);
                (@:checkr _z ?? throw "null pointer dereference")._a._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1153"
                if (((@:checkr _x ?? throw "null pointer dereference")._exp > _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._shl((@:checkr _x ?? throw "null pointer dereference")._mant, (((@:checkr _x ?? throw "null pointer dereference")._exp - _allBits : stdgo.GoInt32) : stdgo.GoUInt));
                    (@:checkr _z ?? throw "null pointer dereference")._b._abs = ((@:checkr _z ?? throw "null pointer dereference")._b._abs.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                } else if (((@:checkr _x ?? throw "null pointer dereference")._exp < _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                    var _t = ((@:checkr _z ?? throw "null pointer dereference")._b._abs._setUint64((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    (@:checkr _z ?? throw "null pointer dereference")._b._abs = _t._shl(_t, ((_allBits - (@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt32) : stdgo.GoUInt));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1166"
                    _z._norm();
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                    (@:checkr _z ?? throw "null pointer dereference")._b._abs = ((@:checkr _z ?? throw "null pointer dereference")._b._abs.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1168"
                return { _0 : _z, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1171"
                return { _0 : _z.setInt64((0i64 : stdgo.GoInt64)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1174"
                return { _0 : null, _1 : stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1177"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function int_( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1083"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1084"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1087"
        if ((({
            final value = _z;
            (value == null || (value : Dynamic).__nil__);
        }) && ((@:checkr _x ?? throw "null pointer dereference")._form <= (1 : stdgo._internal.math.big.Big_t_form.T_form) : Bool) : Bool)) {
            _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1091"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                var _acc = (stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) : stdgo._internal.math.big.Big_accuracy.Accuracy);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1095"
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1097"
                    return { _0 : _z.setInt64((0i64 : stdgo.GoInt64)), _1 : _acc };
                };
                var _allBits = (((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _exp = ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1105"
                if ((_x.minPrec() <= _exp : Bool)) {
                    _acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1109"
                if (({
                    final value = _z;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                };
                (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1113"
                if ((_exp > _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shl((@:checkr _x ?? throw "null pointer dereference")._mant, (_exp - _allBits : stdgo.GoUInt));
                } else if ((_exp < _allBits : Bool)) {
                    (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shr((@:checkr _x ?? throw "null pointer dereference")._mant, (_allBits - _exp : stdgo.GoUInt));
                } else {
                    (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1121"
                return { _0 : _z, _1 : _acc };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1124"
                return { _0 : _z.setInt64((0i64 : stdgo.GoInt64)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1127"
                return { _0 : null, _1 : stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1130"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L962"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L963"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L966"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                {};
                var _e = ((@:checkr _x ?? throw "null pointer dereference")._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                var _p = (53 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L988"
                if ((_e < (-1022 : stdgo.GoInt32) : Bool)) {
                    _p = ((1075 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L998"
                    if (((_p < (0 : stdgo.GoInt) : Bool) || (_p == ((0 : stdgo.GoInt)) && (@:checkr _x ?? throw "null pointer dereference")._mant._sticky(((((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) == ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1000"
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1002"
                            return { _0 : -_z, _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1004"
                        return { _0 : (0 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1009"
                    if (_p == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1010"
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1011"
                            return { _0 : (-5e-324 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1013"
                        return { _0 : (5e-324 : stdgo.GoFloat64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                };
                var _r:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                _r._prec = (_p : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1021"
                _r.set(_x);
                _e = (_r._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1027"
                if (((_r._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || (_e > (1023 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1029"
                    if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1030"
                        return { _0 : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1032"
                    return { _0 : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                var _sign:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _bexp:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _mant:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1038"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    _sign = (-9223372036854775808i64 : stdgo.GoUInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1044"
                if ((_e < (-1022 : stdgo.GoInt32) : Bool)) {
                    _p = ((1075 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    _mant = (stdgo._internal.math.big.Big__msb64._msb64(_r._mant) >> (((64 : stdgo.GoInt) - _p : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64);
                } else {
                    _bexp = (((_e + (1023 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _mant = ((stdgo._internal.math.big.Big__msb64._msb64(_r._mant) >> (11i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1057"
                return { _0 : stdgo._internal.math.Math_float64frombits.float64frombits(((_sign | _bexp : stdgo.GoUInt64) | _mant : stdgo.GoUInt64)), _1 : _r._acc };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1060"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1062"
                    return { _0 : -_z, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1064"
                return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1067"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1068"
                    return { _0 : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1070"
                return { _0 : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1073"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function float32( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoFloat32; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L842"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L843"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L846"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                {};
                var _e = ((@:checkr _x ?? throw "null pointer dereference")._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                var _p = (24 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L868"
                if ((_e < (-126 : stdgo.GoInt32) : Bool)) {
                    _p = ((150 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L878"
                    if (((_p < (0 : stdgo.GoInt) : Bool) || (_p == ((0 : stdgo.GoInt)) && (@:checkr _x ?? throw "null pointer dereference")._mant._sticky(((((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) == ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L880"
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            var _z:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L882"
                            return { _0 : -_z, _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L884"
                        return { _0 : (0 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L889"
                    if (_p == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L890"
                        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L891"
                            return { _0 : (-1.401298464324817e-45 : stdgo.GoFloat64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L893"
                        return { _0 : (1.401298464324817e-45 : stdgo.GoFloat64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                };
                var _r:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                _r._prec = (_p : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L901"
                _r.set(_x);
                _e = (_r._exp - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L907"
                if (((_r._form == (2 : stdgo._internal.math.big.Big_t_form.T_form)) || (_e > (127 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L909"
                    if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L910"
                        return { _0 : (stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L912"
                    return { _0 : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                var _sign:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _bexp:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _mant:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L918"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    _sign = (-2147483648u32 : stdgo.GoUInt32);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L924"
                if ((_e < (-126 : stdgo.GoInt32) : Bool)) {
                    _p = ((150 : stdgo.GoInt) + (_e : stdgo.GoInt) : stdgo.GoInt);
                    _mant = (stdgo._internal.math.big.Big__msb32._msb32(_r._mant) >> (((32 : stdgo.GoInt) - _p : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32);
                } else {
                    _bexp = (((_e + (127 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32) << (23i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _mant = ((stdgo._internal.math.big.Big__msb32._msb32(_r._mant) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (8388607u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L937"
                return { _0 : stdgo._internal.math.Math_float32frombits.float32frombits(((_sign | _bexp : stdgo.GoUInt32) | _mant : stdgo.GoUInt32)), _1 : _r._acc };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L940"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    var _z:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L942"
                    return { _0 : -_z, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L944"
                return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L947"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L948"
                    return { _0 : (stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L950"
                return { _0 : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L953"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoInt64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L787"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L788"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L791"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                var _acc = (stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _x ?? throw "null pointer dereference")._neg) : stdgo._internal.math.big.Big_accuracy.Accuracy);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L795"
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L797"
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : _acc };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L802"
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (63 : stdgo.GoInt32) : Bool)) {
                    var _i = ((stdgo._internal.math.big.Big__msb64._msb64((@:checkr _x ?? throw "null pointer dereference")._mant) >> (((64u32 : stdgo.GoUInt32) - ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt64) : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L805"
                    if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                        _i = -_i;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L808"
                    if ((_x.minPrec() <= ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L809"
                        return { _0 : _i, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L811"
                    return { _0 : _i, _1 : _acc };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L813"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L815"
                    if ((((@:checkr _x ?? throw "null pointer dereference")._exp == (64 : stdgo.GoInt32)) && (_x.minPrec() == (1u32 : stdgo.GoUInt)) : Bool)) {
                        _acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L818"
                    return { _0 : (-9223372036854775808i64 : stdgo.GoInt64), _1 : _acc };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L821"
                return { _0 : (9223372036854775807i64 : stdgo.GoInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L824"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L827"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L828"
                    return { _0 : (-9223372036854775808i64 : stdgo.GoInt64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L830"
                return { _0 : (9223372036854775807i64 : stdgo.GoInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L833"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L742"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L743"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L746"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference")._form;
            if (__value__ == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L748"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L749"
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L752"
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L754"
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L757"
                if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (64 : stdgo.GoInt32) : Bool)) {
                    var _u = (stdgo._internal.math.big.Big__msb64._msb64((@:checkr _x ?? throw "null pointer dereference")._mant) >> (((64u32 : stdgo.GoUInt32) - ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L760"
                    if ((_x.minPrec() <= (64u32 : stdgo.GoUInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L761"
                        return { _0 : _u, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L763"
                    return { _0 : _u, _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L766"
                return { _0 : (-1i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L769"
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            } else if (__value__ == ((2 : stdgo._internal.math.big.Big_t_form.T_form))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L772"
                if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L773"
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L775"
                return { _0 : (-1i64 : stdgo.GoUInt64), _1 : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L778"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function copy( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L679"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L680"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L682"
        if (_z != (_x)) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (@:checkr _x ?? throw "null pointer dereference")._prec;
            (@:checkr _z ?? throw "null pointer dereference")._mode = (@:checkr _x ?? throw "null pointer dereference")._mode;
            (@:checkr _z ?? throw "null pointer dereference")._acc = (@:checkr _x ?? throw "null pointer dereference")._acc;
            (@:checkr _z ?? throw "null pointer dereference")._form = (@:checkr _x ?? throw "null pointer dereference")._form;
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L688"
            if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._set((@:checkr _x ?? throw "null pointer dereference")._mant);
                (@:checkr _z ?? throw "null pointer dereference")._exp = (@:checkr _x ?? throw "null pointer dereference")._exp;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L693"
        return _z;
    }
    @:keep
    @:tdfield
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L655"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L656"
            _x._validate();
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L659"
        if (_z != (_x)) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (@:checkr _x ?? throw "null pointer dereference")._form;
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L662"
            if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _z ?? throw "null pointer dereference")._exp = (@:checkr _x ?? throw "null pointer dereference")._exp;
                (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._set((@:checkr _x ?? throw "null pointer dereference")._mant);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L666"
            if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
                (@:checkr _z ?? throw "null pointer dereference")._prec = (@:checkr _x ?? throw "null pointer dereference")._prec;
            } else if (((@:checkr _z ?? throw "null pointer dereference")._prec < (@:checkr _x ?? throw "null pointer dereference")._prec : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L669"
                _z._round((0u32 : stdgo.GoUInt));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L672"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInf( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _signbit:Bool):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
        (@:checkr _z ?? throw "null pointer dereference")._neg = _signbit;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L645"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setRat( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L625"
        if (_x.isInt()) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L626"
            return _z.setInt(_x.num());
        };
        var _a:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_), _b:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L629"
        _a.setInt(_x.num());
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L630"
        _b.setInt(_x.denom());
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L631"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32(_a._prec, _b._prec);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L634"
        return _z.quo((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
    }
    @:keep
    @:tdfield
    static public function setInt( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _bits = (_x.bitLen() : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L605"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = stdgo._internal.math.big.Big__umax32._umax32(_bits, (64u32 : stdgo.GoUInt32));
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L610"
        if (((@:checkr _x ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L612"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._set((@:checkr _x ?? throw "null pointer dereference")._abs);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L616"
        stdgo._internal.math.big.Big__fnorm._fnorm((@:checkr _z ?? throw "null pointer dereference")._mant);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L617"
        _z._setExpAndRound((_bits : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L618"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setFloat64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L553"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (53u32 : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L556"
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L557"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("Float.SetFloat64(NaN)" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._neg = stdgo._internal.math.Math_signbit.signbit(_x);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L561"
        if (_x == ((0 : stdgo.GoFloat64))) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L563"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L565"
        if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L567"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _fmant:stdgo.GoFloat64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1;
        (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._setUint64(((-9223372036854775808i64 : stdgo.GoUInt64) | (stdgo._internal.math.Math_float64bits.float64bits(_fmant) << (11i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._exp = (_exp : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L574"
        if (((@:checkr _z ?? throw "null pointer dereference")._prec < (53u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L575"
            _z._round((0u32 : stdgo.GoUInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L577"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        var _u = (_x : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L541"
        if ((_u < (0i64 : stdgo.GoInt64) : Bool)) {
            _u = -_u;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L546"
        return _z._setBits64((_x < (0i64 : stdgo.GoInt64) : Bool), (_u : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L533"
        return _z._setBits64(false, _x);
    }
    @:keep
    @:tdfield
    static public function _setBits64( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _neg:Bool, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L509"
        if ((@:checkr _z ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (64u32 : stdgo.GoUInt32);
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        (@:checkr _z ?? throw "null pointer dereference")._neg = _neg;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L514"
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L516"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
        var _s = (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_x) : stdgo.GoInt);
        (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._setUint64((_x << (_s : stdgo.GoUInt) : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._exp = (((64 : stdgo.GoInt) - _s : stdgo.GoInt) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L523"
        if (((@:checkr _z ?? throw "null pointer dereference")._prec < (64u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L524"
            _z._round((0u32 : stdgo.GoUInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L526"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _round( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _sbit:stdgo.GoUInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L400"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L401"
            _z._validate();
        };
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L405"
        if ((@:checkr _z ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L407"
            return;
        };
        var _m = ((@:checkr _z ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt32);
        var _bits = (_m * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L414"
        if ((_bits <= (@:checkr _z ?? throw "null pointer dereference")._prec : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L416"
            return;
        };
        var _r = (((_bits - (@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
        var _rbit = ((@:checkr _z ?? throw "null pointer dereference")._mant._bit(_r) & (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L437"
        if (((_sbit == (0u32 : stdgo.GoUInt)) && (((_rbit == (0u32 : stdgo.GoUInt)) || ((@:checkr _z ?? throw "null pointer dereference")._mode == (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) : Bool)) : Bool)) {
            _sbit = (@:checkr _z ?? throw "null pointer dereference")._mant._sticky(_r);
        };
        _sbit = (_sbit & ((1u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var _n = ((((@:checkr _z ?? throw "null pointer dereference")._prec + (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L444"
        if ((_m > _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L445"
            (@:checkr _z ?? throw "null pointer dereference")._mant.__copyTo__(((@:checkr _z ?? throw "null pointer dereference")._mant.__slice__((_m - _n : stdgo.GoUInt32)) : stdgo._internal.math.big.Big_t_nat.T_nat));
            (@:checkr _z ?? throw "null pointer dereference")._mant = ((@:checkr _z ?? throw "null pointer dereference")._mant.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        var _ntz = ((_n * (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) - (@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        var _lsb = ((1u32 : stdgo._internal.math.big.Big_word.Word) << _ntz : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L454"
        if ((_rbit | _sbit : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            var _inc = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L459"
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
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L473"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc(_inc != ((@:checkr _z ?? throw "null pointer dereference")._neg));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L481"
            if (_inc) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L483"
                if (stdgo._internal.math.big.Big__addvw._addVW((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant, _lsb) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L485"
                    if (((@:checkr _z ?? throw "null pointer dereference")._exp >= (2147483647 : stdgo.GoInt32) : Bool)) {
                        (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L488"
                        return;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L490"
                    (@:checkr _z ?? throw "null pointer dereference")._exp++;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L492"
                    stdgo._internal.math.big.Big__shrvu._shrVU((@:checkr _z ?? throw "null pointer dereference")._mant, (@:checkr _z ?? throw "null pointer dereference")._mant, (1u32 : stdgo.GoUInt));
                    {};
                    (@:checkr _z ?? throw "null pointer dereference")._mant[((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._mant[((_n - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] | ((-2147483648u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                };
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._mant[(0 : stdgo.GoInt)] = ((@:checkr _z ?? throw "null pointer dereference")._mant[(0 : stdgo.GoInt)] & ((((_lsb - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L503"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L504"
            _z._validate();
        };
    }
    @:keep
    @:tdfield
    static public function _validate0( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L374"
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L375"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _m = ((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L378"
        if (_m == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L379"
            return ("nonzero finite number with empty mantissa" : stdgo.GoString);
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L382"
        if (((@:checkr _x ?? throw "null pointer dereference")._mant[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L383"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("msb not set in last word %#x of %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._mant[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)]), stdgo.Go.toInterface(_x.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L385"
        if ((@:checkr _x ?? throw "null pointer dereference")._prec == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L386"
            return ("zero precision finite number" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L388"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _validate( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L364"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L366"
            throw stdgo.Go.toInterface(("validate called but debugFloat is not set" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L368"
        {
            var _msg = (_x._validate0()?.__copy__() : stdgo.GoString);
            if (_msg != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L369"
                throw stdgo.Go.toInterface(_msg);
            };
        };
    }
    @:keep
    @:tdfield
    static public function isInt( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L347"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L348"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L351"
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L352"
            return (@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L355"
        if (((@:checkr _x ?? throw "null pointer dereference")._exp <= (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L356"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L359"
        return (((@:checkr _x ?? throw "null pointer dereference")._prec <= ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt32) : Bool) || (_x.minPrec() <= ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoUInt) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function isInf( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L341"
        return (@:checkr _x ?? throw "null pointer dereference")._form == ((2 : stdgo._internal.math.big.Big_t_form.T_form));
    }
    @:keep
    @:tdfield
    static public function signbit( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L336"
        return (@:checkr _x ?? throw "null pointer dereference")._neg;
    }
    @:keep
    @:tdfield
    static public function setMantExp( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _mant:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _exp:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L321"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L322"
            _z._validate();
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L323"
            _mant._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L325"
        _z.copy(_mant);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L327"
        if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L329"
            _z._setExpAndRound((((@:checkr _z ?? throw "null pointer dereference")._exp : stdgo.GoInt64) + (_exp : stdgo.GoInt64) : stdgo.GoInt64), (0u32 : stdgo.GoUInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L331"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setExpAndRound( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _exp:stdgo.GoInt64, _sbit:stdgo.GoUInt):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L284"
        if ((_exp < (-2147483648i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _z ?? throw "null pointer dereference")._neg);
            (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L288"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L291"
        if ((_exp > (2147483647i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc(!(@:checkr _z ?? throw "null pointer dereference")._neg);
            (@:checkr _z ?? throw "null pointer dereference")._form = (2 : stdgo._internal.math.big.Big_t_form.T_form);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L295"
            return;
        };
        (@:checkr _z ?? throw "null pointer dereference")._form = (1 : stdgo._internal.math.big.Big_t_form.T_form);
        (@:checkr _z ?? throw "null pointer dereference")._exp = (_exp : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L300"
        _z._round(_sbit);
    }
    @:keep
    @:tdfield
    static public function mantExp( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _mant:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        var _exp = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L268"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L269"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L271"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            _exp = ((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L274"
        if (({
            final value = _mant;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L275"
            _mant.copy(_x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L276"
            if ((@:checkr _mant ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _mant ?? throw "null pointer dereference")._exp = (0 : stdgo.GoInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L280"
        return _exp;
    }
    @:keep
    @:tdfield
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L240"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L241"
            _x._validate();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L243"
        if ((@:checkr _x ?? throw "null pointer dereference")._form == ((0 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L244"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L246"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L247"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L249"
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function acc( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo._internal.math.big.Big_accuracy.Accuracy {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L231"
        return (@:checkr _x ?? throw "null pointer dereference")._acc;
    }
    @:keep
    @:tdfield
    static public function mode( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo._internal.math.big.Big_roundingmode.RoundingMode {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L224"
        return (@:checkr _x ?? throw "null pointer dereference")._mode;
    }
    @:keep
    @:tdfield
    static public function minPrec( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L216"
        if ((@:checkr _x ?? throw "null pointer dereference")._form != ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L217"
            return (0u32 : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L219"
        return ((((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (@:checkr _x ?? throw "null pointer dereference")._mant._trailingZeroBits() : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function prec( _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L209"
        return ((@:checkr _x ?? throw "null pointer dereference")._prec : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function setMode( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _mode:stdgo._internal.math.big.Big_roundingmode.RoundingMode):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L203"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setPrec( _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _prec:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._acc = (0 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L168"
        if (_prec == ((0u32 : stdgo.GoUInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._prec = (0u32 : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L170"
            if ((@:checkr _z ?? throw "null pointer dereference")._form == ((1 : stdgo._internal.math.big.Big_t_form.T_form))) {
                (@:checkr _z ?? throw "null pointer dereference")._acc = stdgo._internal.math.big.Big__makeacc._makeAcc((@:checkr _z ?? throw "null pointer dereference")._neg);
                (@:checkr _z ?? throw "null pointer dereference")._form = (0 : stdgo._internal.math.big.Big_t_form.T_form);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L175"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L179"
        if ((_prec > (-1u32 : stdgo.GoUInt) : Bool)) {
            _prec = (-1u32 : stdgo.GoUInt);
        };
        var _old = ((@:checkr _z ?? throw "null pointer dereference")._prec : stdgo.GoUInt32);
        (@:checkr _z ?? throw "null pointer dereference")._prec = (_prec : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L184"
        if (((@:checkr _z ?? throw "null pointer dereference")._prec < _old : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L185"
            _z._round((0u32 : stdgo.GoUInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L187"
        return _z;
    }
}
