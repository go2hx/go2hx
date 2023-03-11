package stdgo.time;
/**
    // Duplicates functionality in strconv, but avoids dependency.
**/
macro private function _atoi<T_bytes>(_s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : GoInt; var _1 : Error; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = {
            final t = haxe.macro.Context.typeof(_s);
            switch t {
                case TInst(_, params), TType(_, params):
                    for (i in 0 ... params.length) {
                    params[i] = switch params[i] {
                        case TMono(_.get() => mono):
                            if (mono == null) {
                            throw "Param TMONO null: " + t;
                        } else {
                            mono;
                        };
                        default:
                            params[i];
                    };
                };
                default:
                    var _ = 0;
            };
            haxe.macro.Context.toComplexType(t);
        };
        {
            return macro {
                function f(_s:$T_bytes) {
                    var _x:GoInt = (0 : GoInt), _err:Error = (null : Error);
                    var _neg:Bool = false;
                    if ((_s.length > (0 : GoInt)) && ((_s[@:param_index (0 : GoInt)] == (45 : GoUInt8)) || (_s[@:param_index (0 : GoInt)] == (43 : GoUInt8)))) {
                        _neg = _s[@:param_index (0 : GoInt)] == ((45 : GoUInt8));
                        _s = (_s.__slice__((1 : GoInt)) : $T_bytes);
                    };
                    var __tmp__ = _leadingInt(_s), _q:GoUInt64 = __tmp__._0, _rem:$T_bytes = __tmp__._1, _err:Error = __tmp__._2;
                    _x = (_q : GoInt);
                    if ((_err != null) || (_rem.length > (0 : GoInt))) {
                        return { _0 : (0 : GoInt), _1 : _atoiError };
                    };
                    if (_neg) {
                        _x = -_x;
                    };
                    return { _0 : _x, _1 : (null : Error) };
                };
                f($_s);
            };
        };
    }
/**
    // isDigit reports whether s[i] is in range and is a decimal digit.
**/
macro private function _isDigit<T_bytes>(_s:haxe.macro.Expr.ExprOf<T_bytes>, _i:haxe.macro.Expr.ExprOf<GoInt>):haxe.macro.Expr.ExprOf<Bool> {
        final T_bytes:haxe.macro.Expr.ComplexType = {
            final t = haxe.macro.Context.typeof(_s);
            switch t {
                case TInst(_, params), TType(_, params):
                    for (i in 0 ... params.length) {
                    params[i] = switch params[i] {
                        case TMono(_.get() => mono):
                            if (mono == null) {
                            throw "Param TMONO null: " + t;
                        } else {
                            mono;
                        };
                        default:
                            params[i];
                    };
                };
                default:
                    var _ = 0;
            };
            haxe.macro.Context.toComplexType(t);
        };
        {
            return macro {
                function f(_s:$T_bytes, _i:GoInt) {
                    if ((_s.length) <= _i) {
                        return false;
                    };
                    var _c:GoUInt8 = _s[@:param_index _i];
                    return ((48 : GoUInt8) <= _c) && (_c <= (57 : GoUInt8));
                };
                f($_s, $_i);
            };
        };
    }
macro private function _parseNanoseconds<T_bytes>(_value:haxe.macro.Expr.ExprOf<T_bytes>, _nbytes:haxe.macro.Expr.ExprOf<GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : GoInt; var _1 : GoString; var _2 : Error; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = {
            final t = haxe.macro.Context.typeof(_value);
            switch t {
                case TInst(_, params), TType(_, params):
                    for (i in 0 ... params.length) {
                    params[i] = switch params[i] {
                        case TMono(_.get() => mono):
                            if (mono == null) {
                            throw "Param TMONO null: " + t;
                        } else {
                            mono;
                        };
                        default:
                            params[i];
                    };
                };
                default:
                    var _ = 0;
            };
            haxe.macro.Context.toComplexType(t);
        };
        {
            return macro {
                function f(_value:$T_bytes, _nbytes:GoInt) {
                    var _ns:GoInt = (0 : GoInt), _rangeErrString:GoString = ("" : GoString), _err:Error = (null : Error);
                    if (!_commaOrPeriod(_value[@:param_index (0 : GoInt)])) {
                        _err = _errBad;
                        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                    };
                    if (_nbytes > (10 : GoInt)) {
                        _value = (_value.__slice__(0, (10 : GoInt)) : $T_bytes);
                        _nbytes = (10 : GoInt);
                    };
                    {
                        {
                            var __tmp__ = _atoi((_value.__slice__((1 : GoInt), _nbytes) : $T_bytes));
                            _ns = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                        };
                    };
                    if (_ns < (0 : GoInt)) {
                        _rangeErrString = ("fractional second" : GoString);
                        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                    };
                    var _scaleDigits:GoInt = (10 : GoInt) - _nbytes;
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _scaleDigits, _i++, {
                            _ns = _ns * ((10 : GoInt));
                        });
                    };
                    return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                };
                f($_value, $_nbytes);
            };
        };
    }
/**
    // leadingInt consumes the leading [0-9]* from s.
**/
macro private function _leadingInt<T_bytes>(_s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : GoUInt64; var _1 : T_bytes; var _2 : Error; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = {
            final t = haxe.macro.Context.typeof(_s);
            switch t {
                case TInst(_, params), TType(_, params):
                    for (i in 0 ... params.length) {
                    params[i] = switch params[i] {
                        case TMono(_.get() => mono):
                            if (mono == null) {
                            throw "Param TMONO null: " + t;
                        } else {
                            mono;
                        };
                        default:
                            params[i];
                    };
                };
                default:
                    var _ = 0;
            };
            haxe.macro.Context.toComplexType(t);
        };
        {
            return macro {
                function f(_s:$T_bytes) {
                    var _x:GoUInt64 = (0 : GoUInt64), _rem:$T_bytes = Go.expectedValue(), _err:Error = (null : Error);
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (_s.length), _i++, {
                        var _c:GoUInt8 = _s[@:param_index _i];
                        if ((_c < (48 : GoUInt8)) || (_c > (57 : GoUInt8))) {
                            break;
                        };
                        if (_x > (922337203685477580i64 : GoUInt64)) {
                            return { _0 : (0i64 : GoUInt64), _1 : _rem, _2 : _errLeadingInt };
                        };
                        _x = ((_x * (10i64 : GoUInt64)) + (_c : GoUInt64)) - (48i64 : GoUInt64);
                        if (_x > (-9223372036854775808i64 : GoUInt64)) {
                            return { _0 : (0i64 : GoUInt64), _1 : _rem, _2 : _errLeadingInt };
                        };
                    });
                    return { _0 : _x, _1 : (_s.__slice__(_i) : $T_bytes), _2 : (null : Error) };
                };
                f($_s);
            };
        };
    }
macro private function _parseRFC3339<T_bytes>(_s:haxe.macro.Expr.ExprOf<T_bytes>, _local:haxe.macro.Expr.ExprOf<Ref<Location>>):haxe.macro.Expr.ExprOf<{ var _0 : Time; var _1 : Bool; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = {
            final t = haxe.macro.Context.typeof(_s);
            switch t {
                case TInst(_, params), TType(_, params):
                    for (i in 0 ... params.length) {
                    params[i] = switch params[i] {
                        case TMono(_.get() => mono):
                            if (mono == null) {
                            throw "Param TMONO null: " + t;
                        } else {
                            mono;
                        };
                        default:
                            params[i];
                    };
                };
                default:
                    var _ = 0;
            };
            haxe.macro.Context.toComplexType(t);
        };
        {
            return macro {
                function f(_s:$T_bytes, _local:Ref<Location>) {
                    var _ok:Bool = true;
                    var _parseUint:($T_bytes, GoInt, GoInt) -> GoInt = function(_s:$T_bytes, _min:GoInt, _max:GoInt):GoInt {
                        var _x:GoInt = (0 : GoInt);
                        for (__0 => _c in (_s : Slice<GoByte>)) {
                            if ((_c < (48 : GoUInt8)) || ((57 : GoUInt8) < _c)) {
                                _ok = false;
                                return _min;
                            };
                            _x = ((_x * (10 : GoInt)) + (_c : GoInt)) - (48 : GoInt);
                        };
                        if ((_x < _min) || (_max < _x)) {
                            _ok = false;
                            return _min;
                        };
                        return _x;
                    };
                    if ((_s.length) < (("2006-01-02T15:04:05" : GoString).length)) {
                        return { _0 : (new Time() : Time), _1 : false };
                    };
                    var _year:GoInt = _parseUint((_s.__slice__((0 : GoInt), (4 : GoInt)) : $T_bytes), (0 : GoInt), (9999 : GoInt));
                    var _month:GoInt = _parseUint((_s.__slice__((5 : GoInt), (7 : GoInt)) : $T_bytes), (1 : GoInt), (12 : GoInt));
                    var _day:GoInt = _parseUint((_s.__slice__((8 : GoInt), (10 : GoInt)) : $T_bytes), (1 : GoInt), _daysIn((_month : Month), _year));
                    var _hour:GoInt = _parseUint((_s.__slice__((11 : GoInt), (13 : GoInt)) : $T_bytes), (0 : GoInt), (23 : GoInt));
                    var _min:GoInt = _parseUint((_s.__slice__((14 : GoInt), (16 : GoInt)) : $T_bytes), (0 : GoInt), (59 : GoInt));
                    var _sec:GoInt = _parseUint((_s.__slice__((17 : GoInt), (19 : GoInt)) : $T_bytes), (0 : GoInt), (59 : GoInt));
                    if (!_ok || !(((((_s[@:param_index (4 : GoInt)] == (45 : GoUInt8)) && (_s[@:param_index (7 : GoInt)] == (45 : GoUInt8))) && (_s[@:param_index (10 : GoInt)] == (84 : GoUInt8))) && (_s[@:param_index (13 : GoInt)] == (58 : GoUInt8))) && (_s[@:param_index (16 : GoInt)] == (58 : GoUInt8)))) {
                        return { _0 : (new Time() : Time), _1 : false };
                    };
                    _s = (_s.__slice__((19 : GoInt)) : $T_bytes);
                    var _nsec:GoInt = (0 : GoInt);
                    if (((_s.length >= (2 : GoInt)) && (_s[@:param_index (0 : GoInt)] == (46 : GoUInt8))) && _isDigit(_s, (1 : GoInt))) {
                        var _n:GoInt = (2 : GoInt);
                        Go.cfor((_n < _s.length) && _isDigit(_s, _n), _n++, {});
                        {
                            var __tmp__ = _parseNanoseconds(_s, _n);
                            _nsec = __tmp__._0;
                        };
                        _s = (_s.__slice__(_n) : $T_bytes);
                    };
                    var _t:stdgo.time.Time.Time = date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, utc).__copy__();
                    if ((_s.length != (1 : GoInt)) || (_s[@:param_index (0 : GoInt)] != (90 : GoUInt8))) {
                        if ((_s.length) != ((("-07:00" : GoString).length))) {
                            return { _0 : (new Time() : Time), _1 : false };
                        };
                        var _hr:GoInt = _parseUint((_s.__slice__((1 : GoInt), (3 : GoInt)) : $T_bytes), (0 : GoInt), (23 : GoInt));
                        var _mm:GoInt = _parseUint((_s.__slice__((4 : GoInt), (6 : GoInt)) : $T_bytes), (0 : GoInt), (59 : GoInt));
                        if (!_ok || !(((_s[@:param_index (0 : GoInt)] == (45 : GoUInt8)) || (_s[@:param_index (0 : GoInt)] == (43 : GoUInt8))) && (_s[@:param_index (3 : GoInt)] == (58 : GoUInt8)))) {
                            return { _0 : (new Time() : Time), _1 : false };
                        };
                        var _zoneOffset:GoInt = ((_hr * (60 : GoInt)) + _mm) * (60 : GoInt);
                        if (_s[@:param_index (0 : GoInt)] == ((45 : GoUInt8))) {
                            _zoneOffset = _zoneOffset * ((-1 : GoInt));
                        };
                        _t._addSec(-(_zoneOffset : GoInt64));
                        {
                            var __tmp__ = _local._lookup(_t._unixSec()), __0:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, __1:GoInt64 = __tmp__._2, __2:GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
                            if (_offset == (_zoneOffset)) {
                                _t._setLoc(_local);
                            } else {
                                _t._setLoc(fixedZone(Go.str(), _zoneOffset));
                            };
                        };
                    };
                    return { _0 : _t.__copy__(), _1 : true };
                };
                f($_s, $_local);
            };
        };
    }
