package stdgo._internal.strconv;
function _atof32(_s:stdgo.GoString):{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _f = (0 : stdgo.GoFloat32), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv__special._special(_s?.__copy__()), _val:stdgo.GoFloat64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_val : stdgo.GoFloat32), _1 : _n, _2 : (null : stdgo.Error) };
                    _f = __tmp__._0;
                    _n = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv__readfloat._readFloat(_s?.__copy__()), _mantissa:stdgo.GoUInt64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1, _neg:Bool = __tmp__._2, _trunc:Bool = __tmp__._3, _hex:Bool = __tmp__._4, _n:stdgo.GoInt = __tmp__._5, _ok:Bool = __tmp__._6;
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
                _f = __tmp__._0;
                _n = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (_hex) {
            var __tmp__ = stdgo._internal.strconv.Strconv__atofhex._atofHex((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), (stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float32info._float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>), _mantissa, _exp, _neg, _trunc), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_f : stdgo.GoFloat32), _1 : _n, _2 : _err };
                _f = __tmp__._0;
                _n = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (stdgo._internal.strconv.Strconv__optimize._optimize) {
            if (!_trunc) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv__atof32exact._atof32exact(_mantissa, _exp, _neg), _f:stdgo.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                            _f = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
            };
            var __tmp__ = stdgo._internal.strconv.Strconv__eisellemire32._eiselLemire32(_mantissa, _exp, _neg), _f:stdgo.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (!_trunc) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                        _f = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv__eisellemire32._eiselLemire32((_mantissa + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _exp, _neg), _fUp:stdgo.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_f == _fUp) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : (null : stdgo.Error) };
                        _f = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
        };
        var _d:stdgo._internal.strconv.Strconv_t_decimal.T_decimal = ({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal);
        if (!@:check2 _d._set((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoFloat64), _1 : _n, _2 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseFloat" : stdgo.GoString), _s?.__copy__())) };
                _f = __tmp__._0;
                _n = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = @:check2 _d._floatBits((stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float32info._float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>)), _b:stdgo.GoUInt64 = __tmp__._0, _ovf:Bool = __tmp__._1;
        _f = stdgo._internal.math.Math_float32frombits.float32frombits((_b : stdgo.GoUInt32));
        if (_ovf) {
            _err = stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeerror._rangeError(("ParseFloat" : stdgo.GoString), _s?.__copy__()));
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _f, _1 : _n, _2 : _err };
            _f = __tmp__._0;
            _n = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
