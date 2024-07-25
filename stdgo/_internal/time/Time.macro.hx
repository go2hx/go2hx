package stdgo._internal.time;
macro function _atoi<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; }> {
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
                    var _x = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
                    var _neg = (false : Bool);
                    if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (((_s[@:param_index (0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[@:param_index (0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _neg = _s[@:param_index (0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
                        _s = (_s.__slice__((1 : stdgo.GoInt)) : $T_bytes);
                    };
                    var __tmp__ = @:privateAccess stdgo._internal.time.Time._leadingInt(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s), _q:stdgo.GoUInt64 = __tmp__._0, _rem:$T_bytes = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    _x = (_q : stdgo.GoInt);
                    if (((_err != null) || ((_rem.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        return { _0 : (0 : stdgo.GoInt), _1 : @:privateAccess stdgo._internal.time.Time._errAtoi };
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
macro function _isDigit<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_isDigit" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _s:$T_bytes, _i:stdgo.GoInt) {
                    if (((_s.length) <= _i : Bool)) {
                        return false;
                    };
                    var _c = (_s[@:param_index _i] : stdgo.GoUInt8);
                    return (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool);
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
macro function _parseNanoseconds<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _value:haxe.macro.Expr.ExprOf<T_bytes>, _nbytes:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_parseNanoseconds" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _value:$T_bytes, _nbytes:stdgo.GoInt) {
                    var _ns = (0 : stdgo.GoInt), _rangeErrString = ("" : stdgo.GoString), _err = (null : stdgo.Error);
                    if (!@:privateAccess stdgo._internal.time.Time._commaOrPeriod(_value[@:param_index (0 : stdgo.GoInt)])) {
                        _err = @:privateAccess stdgo._internal.time.Time._errBad;
                        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                    };
                    if ((_nbytes > (10 : stdgo.GoInt) : Bool)) {
                        _value = (_value.__slice__(0, (10 : stdgo.GoInt)) : $T_bytes);
                        _nbytes = (10 : stdgo.GoInt);
                    };
                    {
                        {
                            var __tmp__ = @:privateAccess stdgo._internal.time.Time._atoi(stdgo.Go.defaultValue((cast (null) : $T_bytes)), (_value.__slice__((1 : stdgo.GoInt), _nbytes) : $T_bytes));
                            _ns = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                        };
                    };
                    if ((_ns < (0 : stdgo.GoInt) : Bool)) {
                        _rangeErrString = ("fractional second" : stdgo.GoString);
                        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
                    };
                    var _scaleDigits = ((10 : stdgo.GoInt) - _nbytes : stdgo.GoInt);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _scaleDigits : Bool), _i++, {
                            _ns = (_ns * ((10 : stdgo.GoInt)) : stdgo.GoInt);
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
macro function _leadingInt<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoUInt64; var _1 : T_bytes; var _2 : stdgo.Error; }> {
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
                    var _x = (0 : stdgo.GoUInt64), _rem = stdgo.Go.defaultValue((cast (null) : $T_bytes)), _err = (null : stdgo.Error);
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                        var _c = (_s[@:param_index _i] : stdgo.GoUInt8);
                        if (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                            break;
                        };
                        if ((_x > (922337203685477580i64 : stdgo.GoUInt64) : Bool)) {
                            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _rem, _2 : @:privateAccess stdgo._internal.time.Time._errLeadingInt };
                        };
                        _x = (((_x * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c : stdgo.GoUInt64) : stdgo.GoUInt64) - (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                        if ((_x > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                            return { _0 : (0i64 : stdgo.GoUInt64), _1 : _rem, _2 : @:privateAccess stdgo._internal.time.Time._errLeadingInt };
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
macro function _parseRFC3339<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>, _local:haxe.macro.Expr.ExprOf<stdgo.Ref<Location>>):haxe.macro.Expr.ExprOf<{ var _0 : Time; var _1 : Bool; }> {
        final T_bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "time" + "_" + "_parseRFC3339" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_bytes, _s:$T_bytes, _local:stdgo.Ref<stdgo._internal.time.Time.Location>) {
                    var _ok = (true : Bool);
                    var _parseUint = (function(_s:$T_bytes, _min:stdgo.GoInt, _max:stdgo.GoInt):stdgo.GoInt {
                        var _x = (0 : stdgo.GoInt);
                        for (__1 => _c in (_s : stdgo.Slice<stdgo.GoByte>)) {
                            if (((_c < (48 : stdgo.GoUInt8) : Bool) || ((57 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                _ok = false;
                                return _min;
                            };
                            _x = (((_x * (10 : stdgo.GoInt) : stdgo.GoInt) + (_c : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                        };
                        if (((_x < _min : Bool) || (_max < _x : Bool) : Bool)) {
                            _ok = false;
                            return _min;
                        };
                        return _x;
                    } : ($T_bytes, stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
                    if (((_s.length) < (("2006-01-02T15:04:05" : stdgo.GoString).length) : Bool)) {
                        return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : false };
                    };
                    var _year = (_parseUint((_s.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : $T_bytes), (0 : stdgo.GoInt), (9999 : stdgo.GoInt)) : stdgo.GoInt);
                    var _month = (_parseUint((_s.__slice__((5 : stdgo.GoInt), (7 : stdgo.GoInt)) : $T_bytes), (1 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.GoInt);
                    var _day = (_parseUint((_s.__slice__((8 : stdgo.GoInt), (10 : stdgo.GoInt)) : $T_bytes), (1 : stdgo.GoInt), @:privateAccess stdgo._internal.time.Time._daysIn((_month : stdgo._internal.time.Time.Month), _year)) : stdgo.GoInt);
                    var _hour = (_parseUint((_s.__slice__((11 : stdgo.GoInt), (13 : stdgo.GoInt)) : $T_bytes), (0 : stdgo.GoInt), (23 : stdgo.GoInt)) : stdgo.GoInt);
                    var _min = (_parseUint((_s.__slice__((14 : stdgo.GoInt), (16 : stdgo.GoInt)) : $T_bytes), (0 : stdgo.GoInt), (59 : stdgo.GoInt)) : stdgo.GoInt);
                    var _sec = (_parseUint((_s.__slice__((17 : stdgo.GoInt), (19 : stdgo.GoInt)) : $T_bytes), (0 : stdgo.GoInt), (59 : stdgo.GoInt)) : stdgo.GoInt);
                    if ((!_ok || !(((((_s[@:param_index (4 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) && _s[@:param_index (7 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && _s[@:param_index (10 : stdgo.GoInt)] == ((84 : stdgo.GoUInt8)) : Bool) && _s[@:param_index (13 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8)) : Bool) && (_s[@:param_index (16 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : false };
                    };
                    _s = (_s.__slice__((19 : stdgo.GoInt)) : $T_bytes);
                    var _nsec:stdgo.GoInt = (0 : stdgo.GoInt);
                    if (((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[@:param_index (0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && @:privateAccess stdgo._internal.time.Time._isDigit(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s, (1 : stdgo.GoInt)) : Bool)) {
                        var _n = (2 : stdgo.GoInt);
                        stdgo.Go.cfor(((_n < (_s.length) : Bool) && @:privateAccess stdgo._internal.time.Time._isDigit(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s, _n) : Bool), _n++, {});
                        {
                            var __tmp__ = @:privateAccess stdgo._internal.time.Time._parseNanoseconds(stdgo.Go.defaultValue((cast (null) : $T_bytes)), _s, _n);
                            _nsec = __tmp__._0;
                        };
                        _s = (_s.__slice__(_n) : $T_bytes);
                    };
                    var _t = (@:privateAccess stdgo._internal.time.Time.date(_year, (_month : stdgo._internal.time.Time.Month), _day, _hour, _min, _sec, _nsec, @:privateAccess stdgo._internal.time.Time.utc).__copy__() : stdgo._internal.time.Time.Time);
                    if (((_s.length != (1 : stdgo.GoInt)) || (_s[@:param_index (0 : stdgo.GoInt)] != (90 : stdgo.GoUInt8)) : Bool)) {
                        if ((_s.length) != ((("-07:00" : stdgo.GoString).length))) {
                            return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : false };
                        };
                        var _hr = (_parseUint((_s.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : $T_bytes), (0 : stdgo.GoInt), (23 : stdgo.GoInt)) : stdgo.GoInt);
                        var _mm = (_parseUint((_s.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : $T_bytes), (0 : stdgo.GoInt), (59 : stdgo.GoInt)) : stdgo.GoInt);
                        if ((!_ok || !(((((_s[@:param_index (0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[@:param_index (0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) && (_s[@:param_index (3 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : false };
                        };
                        var _zoneOffset = ((((_hr * (60 : stdgo.GoInt) : stdgo.GoInt) + _mm : stdgo.GoInt)) * (60 : stdgo.GoInt) : stdgo.GoInt);
                        if (_s[@:param_index (0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                            _zoneOffset = (_zoneOffset * ((-1 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        _t._addSec(-(_zoneOffset : stdgo.GoInt64));
                        {
                            var __tmp__ = _local._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2, __3:stdgo.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
                            if (_offset == (_zoneOffset)) {
                                _t._setLoc(_local);
                            } else {
                                _t._setLoc(@:privateAccess stdgo._internal.time.Time.fixedZone(stdgo.Go.str().__copy__(), _zoneOffset));
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
