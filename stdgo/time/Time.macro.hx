package stdgo.time;
/**
    // Duplicates functionality in strconv, but avoids dependency.
**/
macro function _atoi<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_atoi" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _s:$T_bytes) {
                    var _x:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
                    var _neg:Bool = false;
                    if ((_s.length > (0 : stdgo.StdGoTypes.GoInt)) && ((_s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8)) || (_s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] == (43 : stdgo.StdGoTypes.GoUInt8)))) {
                        _neg = _s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] == ((45 : stdgo.StdGoTypes.GoUInt8));
                        _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : $T_bytes);
                    };
                    var __tmp__ = @:privateAccess stdgo.time.Time._leadingInt(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s), _q:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _rem:$T_bytes = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    _x = (_q : stdgo.StdGoTypes.GoInt);
                    if ((_err != null) || (_rem.length > (0 : stdgo.StdGoTypes.GoInt))) {
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : @:privateAccess stdgo.time.Time._errAtoi };
                    };
                    if (_neg) {
                        _x = -_x;
                    };
                    return { _0 : _x, _1 : (null : stdgo.Error) };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_s));
        };
    }
/**
    // isDigit reports whether s[i] is in range and is a decimal digit.
**/
macro function _isDigit<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>, _i:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.GoInt>):haxe.macro.Expr.ExprOf<Bool> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_isDigit" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _s:$T_bytes, _i:stdgo.StdGoTypes.GoInt) {
                    if ((_s.length) <= _i) {
                        return false;
                    };
                    var _c:stdgo.StdGoTypes.GoUInt8 = _s[@:param_index _i];
                    return ((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8));
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_s, $_i));
        };
    }
macro function _parseNanoseconds<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _value:haxe.macro.Expr.ExprOf<T_bytes>, _nbytes:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_parseNanoseconds" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _value:$T_bytes, _nbytes:stdgo.StdGoTypes.GoInt) {
                    var _ns:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _rangeErrString:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
                    if (!@:privateAccess stdgo.time.Time._commaOrPeriod(_value[@:param_index (0 : stdgo.StdGoTypes.GoInt)])) {
                        _err = @:privateAccess stdgo.time.Time._errBad;
                        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                    };
                    if (_nbytes > (10 : stdgo.StdGoTypes.GoInt)) {
                        _value = (_value.__slice__(0, (10 : stdgo.StdGoTypes.GoInt)) : $T_bytes);
                        _nbytes = (10 : stdgo.StdGoTypes.GoInt);
                    };
                    {
                        {
                            var __tmp__ = @:privateAccess stdgo.time.Time._atoi(stdgo.Go.defaultValue((cast (null) : $T_bytes)), (_value.__slice__((1 : stdgo.StdGoTypes.GoInt), _nbytes) : $T_bytes));
                            _ns = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                        };
                    };
                    if (_ns < (0 : stdgo.StdGoTypes.GoInt)) {
                        _rangeErrString = ("fractional second" : stdgo.GoString);
                        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                    };
                    var _scaleDigits:stdgo.StdGoTypes.GoInt = (10 : stdgo.StdGoTypes.GoInt) - _nbytes;
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _scaleDigits, _i++, {
                            _ns = _ns * ((10 : stdgo.StdGoTypes.GoInt));
                        });
                    };
                    return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_value, $_nbytes));
        };
    }
/**
    // leadingInt consumes the leading [0-9]* from s.
**/
macro function _leadingInt<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : T_bytes; var _2 : stdgo.Error; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_leadingInt" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _s:$T_bytes) {
                    var _x:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64), _rem:$T_bytes = stdgo.Go.defaultValue((cast (null) : $T_bytes)), _err:stdgo.Error = (null : stdgo.Error);
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (_s.length), _i++, {
                        var _c:stdgo.StdGoTypes.GoUInt8 = _s[@:param_index _i];
                        if ((_c < (48 : stdgo.StdGoTypes.GoUInt8)) || (_c > (57 : stdgo.StdGoTypes.GoUInt8))) {
                            break;
                        };
                        if (_x > (922337203685477580i64 : stdgo.StdGoTypes.GoUInt64)) {
                            return { _0 : (0i64 : stdgo.StdGoTypes.GoUInt64), _1 : _rem, _2 : @:privateAccess stdgo.time.Time._errLeadingInt };
                        };
                        _x = ((_x * (10i64 : stdgo.StdGoTypes.GoUInt64)) + (_c : stdgo.StdGoTypes.GoUInt64)) - (48i64 : stdgo.StdGoTypes.GoUInt64);
                        if (_x > (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) {
                            return { _0 : (0i64 : stdgo.StdGoTypes.GoUInt64), _1 : _rem, _2 : @:privateAccess stdgo.time.Time._errLeadingInt };
                        };
                    });
                    return { _0 : _x, _1 : (_s.__slice__(_i) : $T_bytes), _2 : (null : stdgo.Error) };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_s));
        };
    }
macro function _parseRFC3339<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>, _local:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Location>>):haxe.macro.Expr.ExprOf<{ var _0 : Time; var _1 : Bool; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_parseRFC3339" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _s:$T_bytes, _local:stdgo.StdGoTypes.Ref<stdgo.time.Time.Location>) {
                    var _ok:Bool = true;
                    var _parseUint:($T_bytes, stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt) -> stdgo.StdGoTypes.GoInt = function(_s:$T_bytes, _min:stdgo.StdGoTypes.GoInt, _max:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
                        var _x:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        for (__1 => _c in (_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) {
                            if ((_c < (48 : stdgo.StdGoTypes.GoUInt8)) || ((57 : stdgo.StdGoTypes.GoUInt8) < _c)) {
                                _ok = false;
                                return _min;
                            };
                            _x = ((_x * (10 : stdgo.StdGoTypes.GoInt)) + (_c : stdgo.StdGoTypes.GoInt)) - (48 : stdgo.StdGoTypes.GoInt);
                        };
                        if ((_x < _min) || (_max < _x)) {
                            _ok = false;
                            return _min;
                        };
                        return _x;
                    };
                    if ((_s.length) < (("2006-01-02T15:04:05" : stdgo.GoString).length)) {
                        return { _0 : (new stdgo.time.Time.Time() : stdgo.time.Time.Time), _1 : false };
                    };
                    var _year:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((0 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (0 : stdgo.StdGoTypes.GoInt), (9999 : stdgo.StdGoTypes.GoInt));
                    var _month:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((5 : stdgo.StdGoTypes.GoInt), (7 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (1 : stdgo.StdGoTypes.GoInt), (12 : stdgo.StdGoTypes.GoInt));
                    var _day:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((8 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (1 : stdgo.StdGoTypes.GoInt), @:privateAccess stdgo.time.Time._daysIn((_month : stdgo.time.Time.Month), _year));
                    var _hour:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((11 : stdgo.StdGoTypes.GoInt), (13 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (0 : stdgo.StdGoTypes.GoInt), (23 : stdgo.StdGoTypes.GoInt));
                    var _min:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((14 : stdgo.StdGoTypes.GoInt), (16 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (0 : stdgo.StdGoTypes.GoInt), (59 : stdgo.StdGoTypes.GoInt));
                    var _sec:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((17 : stdgo.StdGoTypes.GoInt), (19 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (0 : stdgo.StdGoTypes.GoInt), (59 : stdgo.StdGoTypes.GoInt));
                    if (!_ok || !(((((_s[@:param_index (4 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8)) && (_s[@:param_index (7 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) && (_s[@:param_index (10 : stdgo.StdGoTypes.GoInt)] == (84 : stdgo.StdGoTypes.GoUInt8))) && (_s[@:param_index (13 : stdgo.StdGoTypes.GoInt)] == (58 : stdgo.StdGoTypes.GoUInt8))) && (_s[@:param_index (16 : stdgo.StdGoTypes.GoInt)] == (58 : stdgo.StdGoTypes.GoUInt8)))) {
                        return { _0 : (new stdgo.time.Time.Time() : stdgo.time.Time.Time), _1 : false };
                    };
                    _s = (_s.__slice__((19 : stdgo.StdGoTypes.GoInt)) : $T_bytes);
                    var _nsec:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    if (((_s.length >= (2 : stdgo.StdGoTypes.GoInt)) && (_s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8))) && @:privateAccess stdgo.time.Time._isDigit(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s, (1 : stdgo.StdGoTypes.GoInt))) {
                        var _n:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor((_n < _s.length) && @:privateAccess stdgo.time.Time._isDigit(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s, _n), _n++, {});
                        {
                            var __tmp__ = @:privateAccess stdgo.time.Time._parseNanoseconds(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s, _n);
                            _nsec = __tmp__._0;
                        };
                        _s = (_s.__slice__(_n) : $T_bytes);
                    };
                    var _t:stdgo.time.Time.Time = @:privateAccess stdgo.time.Time.date(_year, (_month : stdgo.time.Time.Month), _day, _hour, _min, _sec, _nsec, @:privateAccess stdgo.time.Time.utc).__copy__();
                    if ((_s.length != (1 : stdgo.StdGoTypes.GoInt)) || (_s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] != (90 : stdgo.StdGoTypes.GoUInt8))) {
                        if ((_s.length) != ((("-07:00" : stdgo.GoString).length))) {
                            return { _0 : (new stdgo.time.Time.Time() : stdgo.time.Time.Time), _1 : false };
                        };
                        var _hr:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((1 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (0 : stdgo.StdGoTypes.GoInt), (23 : stdgo.StdGoTypes.GoInt));
                        var _mm:stdgo.StdGoTypes.GoInt = _parseUint((_s.__slice__((4 : stdgo.StdGoTypes.GoInt), (6 : stdgo.StdGoTypes.GoInt)) : $T_bytes), (0 : stdgo.StdGoTypes.GoInt), (59 : stdgo.StdGoTypes.GoInt));
                        if (!_ok || !(((_s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8)) || (_s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] == (43 : stdgo.StdGoTypes.GoUInt8))) && (_s[@:param_index (3 : stdgo.StdGoTypes.GoInt)] == (58 : stdgo.StdGoTypes.GoUInt8)))) {
                            return { _0 : (new stdgo.time.Time.Time() : stdgo.time.Time.Time), _1 : false };
                        };
                        var _zoneOffset:stdgo.StdGoTypes.GoInt = ((_hr * (60 : stdgo.StdGoTypes.GoInt)) + _mm) * (60 : stdgo.StdGoTypes.GoInt);
                        if (_s[@:param_index (0 : stdgo.StdGoTypes.GoInt)] == ((45 : stdgo.StdGoTypes.GoUInt8))) {
                            _zoneOffset = _zoneOffset * ((-1 : stdgo.StdGoTypes.GoInt));
                        };
                        _t._addSec(-(_zoneOffset : stdgo.StdGoTypes.GoInt64));
                        {
                            var __tmp__ = _local._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.StdGoTypes.GoInt = __tmp__._1, __2:stdgo.StdGoTypes.GoInt64 = __tmp__._2, __3:stdgo.StdGoTypes.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
                            if (_offset == (_zoneOffset)) {
                                _t._setLoc(_local);
                            } else {
                                _t._setLoc(@:privateAccess stdgo.time.Time.fixedZone(stdgo.Go.str().__copy__(), _zoneOffset));
                            };
                        };
                    };
                    return { _0 : _t?.__copy__(), _1 : true };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_s, $_local));
        };
    }
