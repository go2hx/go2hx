package stdgo._internal.strconv;
function _special(_s:stdgo.GoString):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _n = (0 : stdgo.GoInt), _ok = false;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo.GoInt), _2 : false };
                _f = __tmp__._0;
                _n = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _sign = (1 : stdgo.GoInt);
        var _nsign = (0 : stdgo.GoInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _s[(0 : stdgo.GoInt)];
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))))) {
                        if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                            _sign = (-1 : stdgo.GoInt);
                        };
                        _nsign = (1 : stdgo.GoInt);
                        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((105 : stdgo.GoUInt8)) || __value__ == ((73 : stdgo.GoUInt8))))) {
                        var _n = (stdgo._internal.strconv.Strconv__commonprefixlenignorecase._commonPrefixLenIgnoreCase(_s?.__copy__(), ("infinity" : stdgo.GoString)) : stdgo.GoInt);
                        if ((((3 : stdgo.GoInt) < _n : Bool) && (_n < (8 : stdgo.GoInt) : Bool) : Bool)) {
                            _n = (3 : stdgo.GoInt);
                        };
                        if (((_n == (3 : stdgo.GoInt)) || (_n == (8 : stdgo.GoInt)) : Bool)) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : stdgo._internal.math.Math_inf.inf(_sign), _1 : (_nsign + _n : stdgo.GoInt), _2 : true };
                                _f = __tmp__._0;
                                _n = __tmp__._1;
                                _ok = __tmp__._2;
                                __tmp__;
                            };
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((110 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8))))) {
                        if (stdgo._internal.strconv.Strconv__commonprefixlenignorecase._commonPrefixLenIgnoreCase(_s?.__copy__(), ("nan" : stdgo.GoString)) == ((3 : stdgo.GoInt))) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : stdgo._internal.math.Math_nan.naN(), _1 : (3 : stdgo.GoInt), _2 : true };
                                _f = __tmp__._0;
                                _n = __tmp__._1;
                                _ok = __tmp__._2;
                                __tmp__;
                            };
                        };
                        break;
                        break;
                    };
                };
                break;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo.GoInt), _2 : false };
            _f = __tmp__._0;
            _n = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
