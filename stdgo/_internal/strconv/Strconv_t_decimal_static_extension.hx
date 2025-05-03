package stdgo._internal.strconv;
@:keep @:allow(stdgo._internal.strconv.Strconv.T_decimal_asInterface) class T_decimal_static_extension {
    @:keep
    @:tdfield
    static public function roundedInteger( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>):stdgo.GoUInt64 {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L400"
        if (((@:checkr _a ?? throw "null pointer dereference")._dp > (20 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L401"
            return (-1i64 : stdgo.GoUInt64);
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L405"
        {
            _i = (0 : stdgo.GoInt);
            while (((_i < (@:checkr _a ?? throw "null pointer dereference")._dp : Bool) && (_i < (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
                _n = ((_n * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (((@:checkr _a ?? throw "null pointer dereference")._d[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) : stdgo.GoUInt64);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L408"
        while ((_i < (@:checkr _a ?? throw "null pointer dereference")._dp : Bool)) {
            _n = (_n * ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L411"
        if (stdgo._internal.strconv.Strconv__shouldroundup._shouldRoundUp(_a, (@:checkr _a ?? throw "null pointer dereference")._dp)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L412"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L414"
        return _n;
    }
    @:keep
    @:tdfield
    static public function roundUp( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L376"
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L377"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L381"
        {
            var _i = (_nd - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _c = ((@:checkr _a ?? throw "null pointer dereference")._d[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L383"
                if ((_c < (57 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L384"
                    (@:checkr _a ?? throw "null pointer dereference")._d[(_i : stdgo.GoInt)]++;
                    (@:checkr _a ?? throw "null pointer dereference")._nd = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L386"
                    return;
                };
                _i--;
            };
        };
        (@:checkr _a ?? throw "null pointer dereference")._d[(0 : stdgo.GoInt)] = (49 : stdgo.GoUInt8);
        (@:checkr _a ?? throw "null pointer dereference")._nd = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L394"
        (@:checkr _a ?? throw "null pointer dereference")._dp++;
    }
    @:keep
    @:tdfield
    static public function roundDown( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L367"
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L368"
            return;
        };
        (@:checkr _a ?? throw "null pointer dereference")._nd = _nd;
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L371"
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
    @:keep
    @:tdfield
    static public function round( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L355"
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L356"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L358"
        if (stdgo._internal.strconv.Strconv__shouldroundup._shouldRoundUp(_a, _nd)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L359"
            _a.roundUp(_nd);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L361"
            _a.roundDown(_nd);
        };
    }
    @:keep
    @:tdfield
    static public function shift( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _k:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L316"
        if ((@:checkr _a ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {} else if ((_k > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L320"
            while ((_k > (28 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L321"
                stdgo._internal.strconv.Strconv__leftshift._leftShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k - ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L324"
            stdgo._internal.strconv.Strconv__leftshift._leftShift(_a, (_k : stdgo.GoUInt));
        } else if ((_k < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L326"
            while ((_k < (-28 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L327"
                stdgo._internal.strconv.Strconv__rightshift._rightShift(_a, (28u32 : stdgo.GoUInt));
                _k = (_k + ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L330"
            stdgo._internal.strconv.Strconv__rightshift._rightShift(_a, (-_k : stdgo.GoUInt));
        };
    }
    @:keep
    @:tdfield
    static public function assign( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _v:stdgo.GoUInt64):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24).__setNumber32__();
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L86"
        while ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _v1 = (_v / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _v = (_v - (((10i64 : stdgo.GoUInt64) * _v1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _buf[(_n : stdgo.GoInt)] = ((_v + (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L90"
            _n++;
            _v = _v1;
        };
        (@:checkr _a ?? throw "null pointer dereference")._nd = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L96"
        {
            _n--;
            while ((_n >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _a ?? throw "null pointer dereference")._d[((@:checkr _a ?? throw "null pointer dereference")._nd : stdgo.GoInt)] = _buf[(_n : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L98"
                (@:checkr _a ?? throw "null pointer dereference")._nd++;
                _n--;
            };
        };
        (@:checkr _a ?? throw "null pointer dereference")._dp = (@:checkr _a ?? throw "null pointer dereference")._nd;
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L101"
        stdgo._internal.strconv.Strconv__trim._trim(_a);
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _a;
        var _n = ((10 : stdgo.GoInt) + (@:checkr _a ?? throw "null pointer dereference")._nd : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L24"
        if (((@:checkr _a ?? throw "null pointer dereference")._dp > (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + ((@:checkr _a ?? throw "null pointer dereference")._dp) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L27"
        if (((@:checkr _a ?? throw "null pointer dereference")._dp < (0 : stdgo.GoInt) : Bool)) {
            _n = (_n + (-(@:checkr _a ?? throw "null pointer dereference")._dp) : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L33"
        if ((@:checkr _a ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L35"
            return ("0" : stdgo.GoString);
        } else if (((@:checkr _a ?? throw "null pointer dereference")._dp <= (0 : stdgo.GoInt) : Bool)) {
            _buf[(_w : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L40"
            _w++;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L42"
            _w++;
            _w = (_w + (stdgo._internal.strconv.Strconv__digitzero._digitZero((_buf.__slice__(_w, (_w + -(@:checkr _a ?? throw "null pointer dereference")._dp : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw "null pointer dereference")._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else if (((@:checkr _a ?? throw "null pointer dereference")._dp < (@:checkr _a ?? throw "null pointer dereference")._nd : Bool)) {
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw "null pointer dereference")._dp) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L50"
            _w++;
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((@:checkr _a ?? throw "null pointer dereference")._dp, (@:checkr _a ?? throw "null pointer dereference")._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        } else {
            _w = (_w + ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _a ?? throw "null pointer dereference")._d.__slice__((0 : stdgo.GoInt), (@:checkr _a ?? throw "null pointer dereference")._nd) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _w = (_w + (stdgo._internal.strconv.Strconv__digitzero._digitZero((_buf.__slice__(_w, ((_w + (@:checkr _a ?? throw "null pointer dereference")._dp : stdgo.GoInt) - (@:checkr _a ?? throw "null pointer dereference")._nd : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L58"
        return ((_buf.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _floatBits( _d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _d;
        var _b = (0 : stdgo.GoUInt64), _overflow = false;
        var _n_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mant_13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _exp_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _bits_17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_15:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L319"
                    if ((@:checkr _d ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2678469i64;
                    } else {
                        _gotoNext = 2678662i64;
                    };
                } else if (__value__ == (2678469i64)) {
                    _mant_13 = (0i64 : stdgo.GoUInt64);
                    _exp_12 = (@:checkr _flt ?? throw "null pointer dereference")._bias;
                    _gotoNext = 2679871i64;
                } else if (__value__ == (2678662i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L328"
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp > (310 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2678676i64;
                    } else {
                        _gotoNext = 2678698i64;
                    };
                } else if (__value__ == (2678676i64)) {
                    _gotoNext = 2679786i64;
                } else if (__value__ == (2678698i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L331"
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp < (-330 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2678713i64;
                    } else {
                        _gotoNext = 2678822i64;
                    };
                } else if (__value__ == (2678713i64)) {
                    _mant_13 = (0i64 : stdgo.GoUInt64);
                    _exp_12 = (@:checkr _flt ?? throw "null pointer dereference")._bias;
                    _gotoNext = 2679871i64;
                } else if (__value__ == (2678822i64)) {
                    _exp_12 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 2678831i64;
                } else if (__value__ == (2678831i64)) {
                    //"file://#L0"
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2678844i64;
                    } else {
                        _gotoNext = 2678959i64;
                    };
                } else if (__value__ == (2678844i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L342"
                    if (((@:checkr _d ?? throw "null pointer dereference")._dp >= (stdgo._internal.strconv.Strconv__powtab._powtab.length) : Bool)) {
                        _gotoNext = 2678883i64;
                    } else {
                        _gotoNext = 2678904i64;
                    };
                } else if (__value__ == (2678883i64)) {
                    _n_14 = (27 : stdgo.GoInt);
                    _gotoNext = 2678932i64;
                } else if (__value__ == (2678904i64)) {
                    _gotoNext = 2678904i64;
                    _n_14 = stdgo._internal.strconv.Strconv__powtab._powtab[((@:checkr _d ?? throw "null pointer dereference")._dp : stdgo.GoInt)];
                    0i64;
                    _gotoNext = 2678932i64;
                } else if (__value__ == (2678932i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L347"
                    _d.shift(-_n_14);
                    _exp_12 = (_exp_12 + (_n_14) : stdgo.GoInt);
                    _gotoNext = 2678831i64;
                } else if (__value__ == (2678959i64)) {
                    0i64;
                    _gotoNext = 2678959i64;
                    //"file://#L0"
                    if ((((@:checkr _d ?? throw "null pointer dereference")._dp < (0 : stdgo.GoInt) : Bool) || ((@:checkr _d ?? throw "null pointer dereference")._dp == ((0 : stdgo.GoInt)) && ((@:checkr _d ?? throw "null pointer dereference")._d[(0 : stdgo.GoInt)] < (53 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 2679001i64;
                    } else {
                        _gotoNext = 2679178i64;
                    };
                } else if (__value__ == (2679001i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L352"
                    if ((-(@:checkr _d ?? throw "null pointer dereference")._dp >= (stdgo._internal.strconv.Strconv__powtab._powtab.length) : Bool)) {
                        _gotoNext = 2679041i64;
                    } else {
                        _gotoNext = 2679062i64;
                    };
                } else if (__value__ == (2679041i64)) {
                    _n_15 = (27 : stdgo.GoInt);
                    _gotoNext = 2679091i64;
                } else if (__value__ == (2679062i64)) {
                    _gotoNext = 2679062i64;
                    _n_15 = stdgo._internal.strconv.Strconv__powtab._powtab[(-(@:checkr _d ?? throw "null pointer dereference")._dp : stdgo.GoInt)];
                    0i64;
                    _gotoNext = 2679091i64;
                } else if (__value__ == (2679091i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L357"
                    _d.shift(_n_15);
                    _exp_12 = (_exp_12 - (_n_15) : stdgo.GoInt);
                    _gotoNext = 2678959i64;
                } else if (__value__ == (2679178i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L362"
                    _exp_12--;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L367"
                    if ((_exp_12 < ((@:checkr _flt ?? throw "null pointer dereference")._bias + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2679329i64;
                    } else {
                        _gotoNext = 2679387i64;
                    };
                } else if (__value__ == (2679329i64)) {
                    _n_16 = (((@:checkr _flt ?? throw "null pointer dereference")._bias + (1 : stdgo.GoInt) : stdgo.GoInt) - _exp_12 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L369"
                    _d.shift(-_n_16);
                    _exp_12 = (_exp_12 + (_n_16) : stdgo.GoInt);
                    _gotoNext = 2679387i64;
                } else if (__value__ == (2679387i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L373"
                    if (((_exp_12 - (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2679423i64;
                    } else {
                        _gotoNext = 2679479i64;
                    };
                } else if (__value__ == (2679423i64)) {
                    _gotoNext = 2679786i64;
                } else if (__value__ == (2679479i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L378"
                    _d.shift((((1u32 : stdgo.GoUInt) + (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt) : stdgo.GoInt));
                    _mant_13 = _d.roundedInteger();
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L382"
                    if (_mant_13 == (((2i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64))) {
                        _gotoNext = 2679615i64;
                    } else {
                        _gotoNext = 2679722i64;
                    };
                } else if (__value__ == (2679615i64)) {
                    _mant_13 = (_mant_13 >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L384"
                    _exp_12++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L385"
                    if (((_exp_12 - (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt) >= (((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2679676i64;
                    } else {
                        _gotoNext = 2679722i64;
                    };
                } else if (__value__ == (2679676i64)) {
                    _gotoNext = 2679786i64;
                } else if (__value__ == (2679722i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L391"
                    if ((_mant_13 & (((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2679753i64;
                    } else {
                        _gotoNext = 2679776i64;
                    };
                } else if (__value__ == (2679753i64)) {
                    _exp_12 = (@:checkr _flt ?? throw "null pointer dereference")._bias;
                    _gotoNext = 2679776i64;
                } else if (__value__ == (2679776i64)) {
                    _gotoNext = 2679871i64;
                } else if (__value__ == (2679786i64)) {
                    _mant_13 = (0i64 : stdgo.GoUInt64);
                    _exp_12 = ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) + (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt);
                    _overflow = true;
                    _gotoNext = 2679871i64;
                } else if (__value__ == (2679871i64)) {
                    _bits_17 = (_mant_13 & ((((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _bits_17 = (_bits_17 | ((((((_exp_12 - (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt)) & ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L406"
                    if ((@:checkr _d ?? throw "null pointer dereference")._neg) {
                        _gotoNext = 2680018i64;
                    } else {
                        _gotoNext = 2680067i64;
                    };
                } else if (__value__ == (2680018i64)) {
                    _bits_17 = (_bits_17 | ((((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _gotoNext = 2680067i64;
                } else if (__value__ == (2680067i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L409"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : _bits_17, _1 : _overflow };
                        _b = __tmp__._0;
                        _overflow = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _set( _b:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _s:stdgo.GoString):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> = _b;
        var _ok = false;
        var _i = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._neg = false;
        (@:checkr _b ?? throw "null pointer dereference")._trunc = false;
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L80"
        if ((_i >= (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L81"
            return _ok;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L83"
        if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L85"
            _i++;
        } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            (@:checkr _b ?? throw "null pointer dereference")._neg = true;
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L88"
            _i++;
        };
        var _sawdot = (false : Bool);
        var _sawdigits = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L94"
        while ((_i < (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L95"
            if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L98"
                {
                    _i++;
                    continue;
                };
            } else if (_s[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L100"
                if (_sawdot) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L101"
                    return _ok;
                };
                _sawdot = true;
                (@:checkr _b ?? throw "null pointer dereference")._dp = (@:checkr _b ?? throw "null pointer dereference")._nd;
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L105"
                {
                    _i++;
                    continue;
                };
            } else if ((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _sawdigits = true;
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L109"
                if (((_s[(_i : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) && ((@:checkr _b ?? throw "null pointer dereference")._nd == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L110"
                    (@:checkr _b ?? throw "null pointer dereference")._dp--;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L111"
                    {
                        _i++;
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L113"
                if (((@:checkr _b ?? throw "null pointer dereference")._nd < ((@:checkr _b ?? throw "null pointer dereference")._d.length) : Bool)) {
                    (@:checkr _b ?? throw "null pointer dereference")._d[((@:checkr _b ?? throw "null pointer dereference")._nd : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L115"
                    (@:checkr _b ?? throw "null pointer dereference")._nd++;
                } else if (_s[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                    (@:checkr _b ?? throw "null pointer dereference")._trunc = true;
                };
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L119"
                {
                    _i++;
                    continue;
                };
            };
//"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L121"
            break;
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L123"
        if (!_sawdigits) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L124"
            return _ok;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L126"
        if (!_sawdot) {
            (@:checkr _b ?? throw "null pointer dereference")._dp = (@:checkr _b ?? throw "null pointer dereference")._nd;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L135"
        if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == (101 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L136"
            _i++;
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L137"
            if ((_i >= (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L138"
                return _ok;
            };
            var _esign = (1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L141"
            if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L142"
                _i++;
            } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L144"
                _i++;
                _esign = (-1 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L147"
            if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L148"
                return _ok;
            };
            var _e = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L151"
            while (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L152"
                if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L154"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L156"
                if ((_e < (10000 : stdgo.GoInt) : Bool)) {
                    _e = (((_e * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
            (@:checkr _b ?? throw "null pointer dereference")._dp = ((@:checkr _b ?? throw "null pointer dereference")._dp + ((_e * _esign : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L163"
        if (_i != ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L164"
            return _ok;
        };
        _ok = true;
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L168"
        return _ok;
    }
}
