package stdgo._internal.strconv;
function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L430"
        if ((_mantissa >> stdgo._internal.strconv.Strconv__float64info._float64info._mantbits : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L431"
            return { _0 : _f, _1 : _ok };
        };
        _f = (_mantissa : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L434"
        if (_neg) {
            _f = -_f;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L437"
        if (_exp == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L440"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : _f, _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if (((_exp > (0 : stdgo.GoInt) : Bool) && (_exp <= (37 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L446"
            if ((_exp > (22 : stdgo.GoInt) : Bool)) {
                _f = (_f * (stdgo._internal.strconv.Strconv__float64pow10._float64pow10[((_exp - (22 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoFloat64);
                _exp = (22 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L450"
            if (((_f > (1e+15 : stdgo.GoFloat64) : Bool) || (_f < (-1e+15 : stdgo.GoFloat64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L452"
                return { _0 : _f, _1 : _ok };
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L454"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : (_f * stdgo._internal.strconv.Strconv__float64pow10._float64pow10[(_exp : stdgo.GoInt)] : stdgo.GoFloat64), _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if (((_exp < (0 : stdgo.GoInt) : Bool) && (_exp >= (-22 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L456"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : (_f / stdgo._internal.strconv.Strconv__float64pow10._float64pow10[(-_exp : stdgo.GoInt)] : stdgo.GoFloat64), _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L458"
        return { _0 : _f, _1 : _ok };
    }
