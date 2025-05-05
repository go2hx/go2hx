package stdgo._internal.strconv;
function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat32), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L464"
        if ((_mantissa >> stdgo._internal.strconv.Strconv__float32info._float32info._mantbits : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L465"
            return { _0 : _f, _1 : _ok };
        };
        _f = (_mantissa : stdgo.GoFloat32);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L468"
        if (_neg) {
            _f = -_f;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L471"
        if (_exp == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L473"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : _f, _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if (((_exp > (0 : stdgo.GoInt) : Bool) && (_exp <= (17 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L479"
            if ((_exp > (10 : stdgo.GoInt) : Bool)) {
                _f = (_f * (stdgo._internal.strconv.Strconv__float32pow10._float32pow10[((_exp - (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoFloat32);
                _exp = (10 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L483"
            if (((_f > (1e+07 : stdgo.GoFloat64) : Bool) || (_f < (-1e+07 : stdgo.GoFloat64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L485"
                return { _0 : _f, _1 : _ok };
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L487"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (_f * stdgo._internal.strconv.Strconv__float32pow10._float32pow10[(_exp : stdgo.GoInt)] : stdgo.GoFloat32), _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if (((_exp < (0 : stdgo.GoInt) : Bool) && (_exp >= (-10 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L489"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat32; var _1 : Bool; } = { _0 : (_f / stdgo._internal.strconv.Strconv__float32pow10._float32pow10[(-_exp : stdgo.GoInt)] : stdgo.GoFloat32), _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L491"
        return { _0 : _f, _1 : _ok };
    }
