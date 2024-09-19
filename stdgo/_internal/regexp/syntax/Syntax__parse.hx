package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        stdgo._internal.internal.Macro.controlFlow({
            var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            {
                                final __value__ = _r;
                                if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                } else {
                                    throw stdgo.Go.toInterface(_r);
                                };
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                {
                    var _err = (stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var __0:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser), __1:stdgo.GoInt32 = (0 : stdgo.GoInt32), __2:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op), __3:stdgo.GoString = ("" : stdgo.GoString);
var _lastRepeat = __3, _op = __2, _c = __1, _p = __0;
            _p._flags = _flags;
            _p._wholeRegexp = _s?.__copy__();
            var _t = (_s?.__copy__() : stdgo.GoString);
            while (_t != (stdgo.Go.str())) {
                var _repeat = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                @:label("BigSwitch") {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _t[(0 : stdgo.GoInt)];
                            if (__value__ == ((40 : stdgo.GoUInt8))) {
                                if ((((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                                    {
                                        {
                                            var __tmp__ = _p._parsePerlFlags(_t?.__copy__());
                                            _t = __tmp__._0?.__copy__();
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            {
                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                    break;
                                };
                                _p._numCap++;
                                _p._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p._numCap;
                                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                {
                                    _err = _p._parseVerticalBar();
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                {
                                    _err = _p._parseRightParen();
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                if ((_p._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                                    _p._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                } else {
                                    _p._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                };
                                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                if ((_p._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                                    _p._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                                } else {
                                    _p._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                };
                                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                if ((_p._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                                    _p._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                } else {
                                    _p._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                };
                                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                {
                                    {
                                        var __tmp__ = _p._parseClass(_t?.__copy__());
                                        _t = __tmp__._0?.__copy__();
                                        _err = __tmp__._1;
                                    };
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                break;
                            } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                var _before = (_t?.__copy__() : stdgo.GoString);
                                {
                                    final __value__ = _t[(0 : stdgo.GoInt)];
                                    if (__value__ == ((42 : stdgo.GoUInt8))) {
                                        _op = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                                    } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                        _op = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                                    } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                        _op = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                                    };
                                };
                                var _after = ((_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                {
                                    {
                                        var __tmp__ = _p._repeat(_op, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before?.__copy__(), _after?.__copy__(), _lastRepeat?.__copy__());
                                        _after = __tmp__._0?.__copy__();
                                        _err = __tmp__._1;
                                    };
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                _repeat = _before?.__copy__();
                                _t = _after?.__copy__();
                                break;
                            } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                _op = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                                var _before = (_t?.__copy__() : stdgo.GoString);
                                var __tmp__ = _p._parseRepeat(_t?.__copy__()), _min:stdgo.GoInt = __tmp__._0, _max:stdgo.GoInt = __tmp__._1, _after:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
                                if (!_ok) {
                                    _p._literal((123 : stdgo.GoInt32));
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                };
                                if (((((_min < (0 : stdgo.GoInt) : Bool) || (_min > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max >= (0 : stdgo.GoInt) : Bool) && (_min > _max : Bool) : Bool) : Bool)) {
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                                {
                                    {
                                        var __tmp__ = _p._repeat(_op, _min, _max, _before?.__copy__(), _after?.__copy__(), _lastRepeat?.__copy__());
                                        _after = __tmp__._0?.__copy__();
                                        _err = __tmp__._1;
                                    };
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                _repeat = _before?.__copy__();
                                _t = _after?.__copy__();
                                break;
                            } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                if ((((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                                    {
                                        var __switchIndex__ = -1;
                                        var __run__ = true;
                                        while (__run__) {
                                            __run__ = false;
                                            {
                                                final __value__ = _t[(1 : stdgo.GoInt)];
                                                if (__value__ == ((65 : stdgo.GoUInt8))) {
                                                    _p._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                                    _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                    @:jump("BigSwitch") break;
                                                    break;
                                                } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                                    _p._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                                    _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                    @:jump("BigSwitch") break;
                                                    break;
                                                } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                                    _p._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                                    _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                    @:jump("BigSwitch") break;
                                                    break;
                                                } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                                    {
                                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return __ret__;
                                                    };
                                                    break;
                                                } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                                    var _lit:stdgo.GoString = ("" : stdgo.GoString);
                                                    {
                                                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                                                        _lit = __tmp__._0?.__copy__();
                                                        _t = __tmp__._1?.__copy__();
                                                    };
                                                    while (_lit != (stdgo.Go.str())) {
                                                        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                                                        if (_err != null) {
                                                            {
                                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                return __ret__;
                                                            };
                                                        };
                                                        _p._literal(_c);
                                                        _lit = _rest?.__copy__();
                                                    };
                                                    @:jump("BigSwitch") break;
                                                    break;
                                                } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                                    _p._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                                    _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                    @:jump("BigSwitch") break;
                                                    break;
                                                };
                                            };
                                            break;
                                        };
                                    };
                                };
                                var _re = _p._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                                _re.flags = _p._flags;
                                if ((((_t.length) >= (2 : stdgo.GoInt) : Bool) && (((_t[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                                    var __tmp__ = _p._parseUnicodeClass(_t?.__copy__(), (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)), _r:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    if (_r != null) {
                                        _re.rune = _r;
                                        _t = _rest?.__copy__();
                                        _p._push(_re);
                                        @:jump("BigSwitch") break;
                                    };
                                };
                                {
                                    var __tmp__ = _p._parsePerlClassEscape(_t?.__copy__(), (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)), _r:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
                                    if (_r != null) {
                                        _re.rune = _r;
                                        _t = _rest?.__copy__();
                                        _p._push(_re);
                                        @:jump("BigSwitch") break;
                                    };
                                };
                                _p._reuse(_re);
                                {
                                    {
                                        var __tmp__ = _p._parseEscape(_t?.__copy__());
                                        _c = __tmp__._0;
                                        _t = __tmp__._1?.__copy__();
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                _p._literal(_c);
                                break;
                            } else {
                                {
                                    {
                                        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t?.__copy__());
                                        _c = __tmp__._0;
                                        _t = __tmp__._1?.__copy__();
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                _p._literal(_c);
                            };
                        };
                        break;
                    };
                };
                _lastRepeat = _repeat?.__copy__();
            };
            _p._concat();
            if (_p._swapVerticalBar()) {
                _p._stack = (_p._stack.__slice__(0, ((_p._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
            };
            _p._alternate();
            var _n = (_p._stack.length : stdgo.GoInt);
            if (_n != ((1 : stdgo.GoInt))) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
        });
        try {
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
