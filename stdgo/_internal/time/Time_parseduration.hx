package stdgo._internal.time;
function parseDuration(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Error; } {
        var _orig = (_s?.__copy__() : stdgo.GoString);
        var _d:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _neg = (false : Bool);
        if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var _c = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c == (45 : stdgo.GoUInt8)) || (_c == (43 : stdgo.GoUInt8)) : Bool)) {
                _neg = _c == ((45 : stdgo.GoUInt8));
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (_s == (("0" : stdgo.GoString))) {
            return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
        };
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __2:stdgo.GoFloat64 = (1 : stdgo.GoFloat64);
var _scale = __2, _f = __1, _v = __0;
            var _err:stdgo.Error = (null : stdgo.Error);
            if (!(((_s[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool))) {
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _pl = (_s.length : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.time.Time__leadingint._leadingInt(_s?.__copy__());
                _v = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _pre = (_pl != ((_s.length)) : Bool);
            var _post = (false : Bool);
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
            if ((!_pre && !_post : Bool)) {
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_c == (46 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    break;
                };
                _i++;
            };
            if (_i == ((0 : stdgo.GoInt))) {
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: missing unit in duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _u = ((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
            var __tmp__ = (stdgo._internal.time.Time__unitmap._unitMap != null && stdgo._internal.time.Time__unitmap._unitMap.__exists__(_u?.__copy__()) ? { _0 : stdgo._internal.time.Time__unitmap._unitMap[_u?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt64), _1 : false }), _unit:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((((("time: unknown unit " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_u?.__copy__())?.__copy__() : stdgo.GoString) + (" in duration " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            if ((_v > ((-9223372036854775808i64 : stdgo.GoUInt64) / _unit : stdgo.GoUInt64) : Bool)) {
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            _v = (_v * (_unit) : stdgo.GoUInt64);
            if ((_f > (0i64 : stdgo.GoUInt64) : Bool)) {
                _v = (_v + ((((_f : stdgo.GoFloat64) * (((_unit : stdgo.GoFloat64) / _scale : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                if ((_v > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                    return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
            };
            _d = (_d + (_v) : stdgo.GoUInt64);
            if ((_d > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        if (_neg) {
            return { _0 : -(_d : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
        };
        if ((_d > (9223372036854775807i64 : stdgo.GoUInt64) : Bool)) {
            return { _0 : (0i64 : stdgo._internal.time.Time_duration.Duration), _1 : stdgo._internal.errors.Errors_new_.new_((("time: invalid duration " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : (_d : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
    }
