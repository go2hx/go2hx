package stdgo._internal.time;
function parseDuration(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Error; } {
        var _orig = (_s?.__copy__() : stdgo.GoString);
        var _d:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _neg = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1596"
        if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var _c = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1598"
            if (((_c == (45 : stdgo.GoUInt8)) || (_c == (43 : stdgo.GoUInt8)) : Bool)) {
                _neg = _c == ((45 : stdgo.GoUInt8));
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1604"
        if (_s == (("0" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1605"
            return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1607"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1608"
            return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1610"
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var _v:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _f:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _scale:stdgo.GoFloat64 = (1 : stdgo.GoFloat64);
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1619"
            if (!(((_s[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1620"
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _pl = (_s.length : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.time.Time__leadingint._leadingInt(_s?.__copy__());
                _v = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1625"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1626"
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _pre = (_pl != ((_s.length)) : Bool);
            var _post = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1632"
            if (((_s != (stdgo.Go.str() : stdgo.GoString)) && (_s[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                var _pl = (_s.length : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.time.Time__leadingfraction._leadingFraction(_s?.__copy__());
                    _f = @:tmpset0 __tmp__._0;
                    _scale = @:tmpset0 __tmp__._1;
                    _s = @:tmpset0 __tmp__._2?.__copy__();
                };
                _post = _pl != ((_s.length));
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1638"
            if ((!_pre && !_post : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1640"
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _i = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1645"
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/time/format.go#L1647"
                if (((_c == (46 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1648"
                    break;
                };
                _i++;
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1651"
            if (_i == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1652"
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: missing unit in duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _u = ((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
            var __tmp__ = (stdgo._internal.time.Time__unitmap._unitMap != null && stdgo._internal.time.Time__unitmap._unitMap.__exists__(_u?.__copy__()) ? { _0 : stdgo._internal.time.Time__unitmap._unitMap[_u?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt64), _1 : false }), _unit:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1657"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1658"
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((((("time: unknown unit " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_u?.__copy__())?.__copy__() : stdgo.GoString) + (" in duration " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1660"
            if ((_v > ((-9223372036854775808i64 : stdgo.GoUInt64) / _unit : stdgo.GoUInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1662"
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            _v = (_v * (_unit) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1665"
            if ((_f > (0i64 : stdgo.GoUInt64) : Bool)) {
                _v = (_v + ((((_f : stdgo.GoFloat64) * (((_unit : stdgo.GoFloat64) / _scale : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1669"
                if ((_v > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1671"
                    return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
            };
            _d = (_d + (_v) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1675"
            if ((_d > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1676"
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1679"
        if (_neg) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1680"
            return { _0 : -(_d : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1682"
        if ((_d > (9223372036854775807i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1683"
            return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1685"
        return { _0 : (_d : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
    }
