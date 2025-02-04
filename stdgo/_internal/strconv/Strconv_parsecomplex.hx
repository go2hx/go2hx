package stdgo._internal.strconv;
function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoComplex128; var _1 : stdgo.Error; } {
        var _size = (64 : stdgo.GoInt);
        if (_bitSize == ((64 : stdgo.GoInt))) {
            _size = (32 : stdgo.GoInt);
        };
        var _orig = (_s?.__copy__() : stdgo.GoString);
        if (((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((40 : stdgo.GoUInt8)) : Bool) && (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (41 : stdgo.GoUInt8)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt), ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _pending:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.strconv.Strconv__parsefloatprefix._parseFloatPrefix(_s?.__copy__(), _size), _re:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__converr._convErr(_err, _orig?.__copy__());
                _err = @:tmpset0 __tmp__._0;
                _pending = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : _err };
            };
        };
        _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : new stdgo.GoComplex128(_re, (0 : stdgo.GoFloat64)), _1 : _pending };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _s[(0 : stdgo.GoInt)];
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (43 : stdgo.GoUInt8)))) {
                        if ((((_s.length) > (1 : stdgo.GoInt) : Bool) && (_s[(1 : stdgo.GoInt)] != (43 : stdgo.GoUInt8)) : Bool)) {
                            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (45 : stdgo.GoUInt8)))) {
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (105 : stdgo.GoUInt8)))) {
                        if ((_s.length) == ((1 : stdgo.GoInt))) {
                            return { _0 : new stdgo.GoComplex128((0 : stdgo.GoFloat64), _re), _1 : _pending };
                        };
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseComplex" : stdgo.GoString), _orig?.__copy__())) };
                        break;
                    };
                };
                break;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv__parsefloatprefix._parseFloatPrefix(_s?.__copy__(), _size), _im:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__converr._convErr(_err, _orig?.__copy__());
                _err = @:tmpset0 __tmp__._0;
                _pending = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : _err };
            };
        };
        _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        if (_s != (("i" : stdgo.GoString))) {
            return { _0 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseComplex" : stdgo.GoString), _orig?.__copy__())) };
        };
        return { _0 : new stdgo.GoComplex128(_re, _im), _1 : _pending };
    }
