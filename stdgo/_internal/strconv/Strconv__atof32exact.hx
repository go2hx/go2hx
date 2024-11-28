package stdgo._internal.strconv;
function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat32), _ok = false;
        if ((_mantissa >> stdgo._internal.strconv.Strconv__float32info._float32info._mantbits : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return { _0 : _f, _1 : _ok };
        };
        _f = (_mantissa : stdgo.GoFloat32);
        if (_neg) {
            _f = -_f;
        };
        if (_exp == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : _f, _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if (((_exp > (0 : stdgo.GoInt) : Bool) && (_exp <= (17 : stdgo.GoInt) : Bool) : Bool)) {
            if ((_exp > (10 : stdgo.GoInt) : Bool)) {
                _f = (_f * (stdgo._internal.strconv.Strconv__float32pow10._float32pow10[((_exp - (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoFloat32);
                _exp = (10 : stdgo.GoInt);
            };
            if (((_f > (1e+07 : stdgo.GoFloat64) : Bool) || (_f < (-1e+07 : stdgo.GoFloat64) : Bool) : Bool)) {
                return { _0 : _f, _1 : _ok };
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (_f * stdgo._internal.strconv.Strconv__float32pow10._float32pow10[(_exp : stdgo.GoInt)] : stdgo.GoFloat32), _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if (((_exp < (0 : stdgo.GoInt) : Bool) && (_exp >= (-10 : stdgo.GoInt) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (_f / stdgo._internal.strconv.Strconv__float32pow10._float32pow10[(-_exp : stdgo.GoInt)] : stdgo.GoFloat32), _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return { _0 : _f, _1 : _ok };
    }
