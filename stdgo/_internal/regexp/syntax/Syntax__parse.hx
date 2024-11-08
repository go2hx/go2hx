package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3419770:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3419375:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3418304:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3419372:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3420431:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3416793:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _re_3419605:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3416813:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3418336:Bool = false;
            var _after_3418121:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3416929:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3419776:stdgo.Error = (null : stdgo.Error);
            var _r_3419767:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3419381:stdgo.Error = (null : stdgo.Error);
            var _before_3417996:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3416831:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3416651:stdgo.Error = (null : stdgo.Error);
            var _after_3418329:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3418319:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lit_3419292:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3418324:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3416847:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3420009:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3420006:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _t_3416905:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
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
                            _gotoNext = 3416604i32;
                        } else {
                            _gotoNext = 3416785i32;
                        };
                    } else if (__value__ == (3416604i32)) {
                        {
                            _err_3416651 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3416651 != null) {
                                _gotoNext = 3416683i32;
                            } else {
                                _gotoNext = 3416710i32;
                            };
                        };
                    } else if (__value__ == (3416683i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3416651 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416710i32;
                    } else if (__value__ == (3416710i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416785i32;
                    } else if (__value__ == (3416785i32)) {
                        _p_3416793._flags = _flags;
                        _p_3416793._wholeRegexp = _s?.__copy__();
                        _t_3416905 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3416913i32;
                    } else if (__value__ == (3416913i32)) {
                        if (_t_3416905 != (stdgo.Go.str())) {
                            _gotoNext = 3416925i32;
                        } else {
                            _gotoNext = 3420315i32;
                        };
                    } else if (__value__ == (3416925i32)) {
                        _repeat_3416929 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3416943i32;
                    } else if (__value__ == (3416943i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3416956i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3416905[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417069i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417339i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417436i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417532i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417647i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417777i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417891i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417973i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3418274i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3418830i32;
                                } else {
                                    _gotoNext = 3416972i32;
                                };
                            };
                        } else {
                            _gotoNext = 3420290i32;
                        };
                    } else if (__value__ == (3416972i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3416905?.__copy__());
                                _c_3416813 = __tmp__._0;
                                _t_3416905 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3417023i32;
                            } else {
                                _gotoNext = 3417053i32;
                            };
                        };
                    } else if (__value__ == (3417023i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417053i32;
                    } else if (__value__ == (3417053i32)) {
                        _p_3416793._literal(_c_3416813);
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417069i32)) {
                        if ((((_p_3416793._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3416905.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3416905[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3417134i32;
                        } else {
                            _gotoNext = 3417277i32;
                        };
                    } else if (__value__ == (3417134i32)) {
                        {
                            {
                                var __tmp__ = _p_3416793._parsePerlFlags(_t_3416905?.__copy__());
                                _t_3416905 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3417230i32;
                            } else {
                                _gotoNext = 3417263i32;
                            };
                        };
                    } else if (__value__ == (3417230i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417263i32;
                    } else if (__value__ == (3417263i32)) {
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417277i32)) {
                        _p_3416793._numCap++;
                        _p_3416793._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3416793._numCap;
                        _t_3416905 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417339i32)) {
                        {
                            _err = _p_3416793._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3417394i32;
                            } else {
                                _gotoNext = 3417424i32;
                            };
                        };
                    } else if (__value__ == (3417394i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417424i32;
                    } else if (__value__ == (3417424i32)) {
                        _t_3416905 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417436i32)) {
                        {
                            _err = _p_3416793._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3417490i32;
                            } else {
                                _gotoNext = 3417520i32;
                            };
                        };
                    } else if (__value__ == (3417490i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417520i32;
                    } else if (__value__ == (3417520i32)) {
                        _t_3416905 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417532i32)) {
                        if ((_p_3416793._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3417569i32;
                        } else {
                            _gotoNext = 3417603i32;
                        };
                    } else if (__value__ == (3417569i32)) {
                        _p_3416793._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3417635i32;
                    } else if (__value__ == (3417603i32)) {
                        _p_3416793._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3417635i32;
                    } else if (__value__ == (3417635i32)) {
                        _t_3416905 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417647i32)) {
                        if ((_p_3416793._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3417684i32;
                        } else {
                            _gotoNext = 3417735i32;
                        };
                    } else if (__value__ == (3417684i32)) {
                        _p_3416793._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3416793._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3417765i32;
                    } else if (__value__ == (3417735i32)) {
                        _p_3416793._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3417765i32;
                    } else if (__value__ == (3417765i32)) {
                        _t_3416905 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417777i32)) {
                        if ((_p_3416793._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3417812i32;
                        } else {
                            _gotoNext = 3417844i32;
                        };
                    } else if (__value__ == (3417812i32)) {
                        _p_3416793._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3417879i32;
                    } else if (__value__ == (3417844i32)) {
                        _p_3416793._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3417879i32;
                    } else if (__value__ == (3417879i32)) {
                        _t_3416905 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417891i32)) {
                        {
                            {
                                var __tmp__ = _p_3416793._parseClass(_t_3416905?.__copy__());
                                _t_3416905 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3417944i32;
                            } else {
                                _gotoNext = 3420290i32;
                            };
                        };
                    } else if (__value__ == (3417944i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3417973i32)) {
                        _before_3417996 = _t_3416905?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3418011i32;
                    } else if (__value__ == (3418011i32)) {
                        {
                            final __value__ = _t_3416905[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3418028i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3418057i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3418086i32;
                            } else {
                                _gotoNext = 3418121i32;
                            };
                        };
                    } else if (__value__ == (3418028i32)) {
                        _op_3416831 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3418121i32;
                    } else if (__value__ == (3418057i32)) {
                        _op_3416831 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3418121i32;
                    } else if (__value__ == (3418086i32)) {
                        _op_3416831 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3418121i32;
                    } else if (__value__ == (3418121i32)) {
                        _after_3418121 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3416793._repeat(_op_3416831, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3417996?.__copy__(), _after_3418121?.__copy__(), _lastRepeat_3416847?.__copy__());
                                _after_3418121 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3418213i32;
                            } else {
                                _gotoNext = 3418243i32;
                            };
                        };
                    } else if (__value__ == (3418213i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418243i32;
                    } else if (__value__ == (3418243i32)) {
                        _repeat_3416929 = _before_3417996?.__copy__();
                        _t_3416905 = _after_3418121?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3418274i32)) {
                        _op_3416831 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3418304 = _t_3416905?.__copy__();
                        {
                            var __tmp__ = _p_3416793._parseRepeat(_t_3416905?.__copy__());
                            _min_3418319 = __tmp__._0;
                            _max_3418324 = __tmp__._1;
                            _after_3418329 = __tmp__._2?.__copy__();
                            _ok_3418336 = __tmp__._3;
                        };
                        if (!_ok_3418336) {
                            _gotoNext = 3418369i32;
                        } else {
                            _gotoNext = 3418477i32;
                        };
                    } else if (__value__ == (3418369i32)) {
                        _p_3416793._literal((123 : stdgo.GoInt32));
                        _t_3416905 = (_t_3416905.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3418477i32)) {
                        if (((((_min_3418319 < (0 : stdgo.GoInt) : Bool) || (_min_3418319 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3418324 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3418324 >= (0 : stdgo.GoInt) : Bool) && (_min_3418319 > _max_3418324 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3418541i32;
                        } else {
                            _gotoNext = 3418691i32;
                        };
                    } else if (__value__ == (3418541i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3418304.__slice__(0, ((_before_3418304.length) - (_after_3418329.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418691i32;
                    } else if (__value__ == (3418691i32)) {
                        {
                            {
                                var __tmp__ = _p_3416793._repeat(_op_3416831, _min_3418319, _max_3418324, _before_3418304?.__copy__(), _after_3418329?.__copy__(), _lastRepeat_3416847?.__copy__());
                                _after_3418329 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3418769i32;
                            } else {
                                _gotoNext = 3418799i32;
                            };
                        };
                    } else if (__value__ == (3418769i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418799i32;
                    } else if (__value__ == (3418799i32)) {
                        _repeat_3416929 = _before_3418304?.__copy__();
                        _t_3416905 = _after_3418329?.__copy__();
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3418830i32)) {
                        if ((((_p_3416793._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3416905.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3418881i32;
                        } else {
                            _gotoNext = 3419605i32;
                        };
                    } else if (__value__ == (3418881i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3418887i32;
                    } else if (__value__ == (3418887i32)) {
                        {
                            final __value__ = _t_3416905[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3418905i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3418978i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3419054i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3419132i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3419227i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3419523i32;
                            } else {
                                _gotoNext = 3419605i32;
                            };
                        };
                    } else if (__value__ == (3418905i32)) {
                        _p_3416793._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416905 = (_t_3416905.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3418978i32)) {
                        _p_3416793._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416905 = (_t_3416905.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3419054i32)) {
                        _p_3416793._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416905 = (_t_3416905.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3419132i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3416905.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419605i32;
                    } else if (__value__ == (3419227i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3416905.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3419292 = __tmp__._0?.__copy__();
                            _t_3416905 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3419350i32;
                    } else if (__value__ == (3419350i32)) {
                        if (_lit_3419292 != (stdgo.Go.str())) {
                            _gotoNext = 3419364i32;
                        } else {
                            _gotoNext = 3419503i32;
                        };
                    } else if (__value__ == (3419364i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3419292?.__copy__());
                            _c_3419372 = __tmp__._0;
                            _rest_3419375 = __tmp__._1?.__copy__();
                            _err_3419381 = __tmp__._2;
                        };
                        if (_err_3419381 != null) {
                            _gotoNext = 3419422i32;
                        } else {
                            _gotoNext = 3419461i32;
                        };
                    } else if (__value__ == (3419422i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3419381 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419461i32;
                    } else if (__value__ == (3419461i32)) {
                        _p_3416793._literal(_c_3419372);
                        _lit_3419292 = _rest_3419375?.__copy__();
                        _gotoNext = 3419350i32;
                    } else if (__value__ == (3419503i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3419523i32)) {
                        _p_3416793._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416905 = (_t_3416905.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3419605i32)) {
                        _re_3419605 = _p_3416793._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3419605.flags = _p_3416793._flags;
                        if ((((_t_3416905.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3416905[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3416905[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3419761i32;
                        } else {
                            _gotoNext = 3420003i32;
                        };
                    } else if (__value__ == (3419761i32)) {
                        {
                            var __tmp__ = _p_3416793._parseUnicodeClass(_t_3416905?.__copy__(), (_re_3419605.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3419767 = __tmp__._0;
                            _rest_3419770 = __tmp__._1?.__copy__();
                            _err_3419776 = __tmp__._2;
                        };
                        if (_err_3419776 != null) {
                            _gotoNext = 3419838i32;
                        } else {
                            _gotoNext = 3419871i32;
                        };
                    } else if (__value__ == (3419838i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3419776 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419871i32;
                    } else if (__value__ == (3419871i32)) {
                        if (_r_3419767 != null) {
                            _gotoNext = 3419883i32;
                        } else {
                            _gotoNext = 3420003i32;
                        };
                    } else if (__value__ == (3419883i32)) {
                        _re_3419605.rune = _r_3419767;
                        _t_3416905 = _rest_3419770?.__copy__();
                        _p_3416793._push(_re_3419605);
                        bigSwitchBreak = true;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3420003i32)) {
                        {
                            {
                                var __tmp__ = _p_3416793._parsePerlClassEscape(_t_3416905?.__copy__(), (_re_3419605.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3420006 = __tmp__._0;
                                _rest_3420009 = __tmp__._1?.__copy__();
                            };
                            if (_r_3420006 != null) {
                                _gotoNext = 3420067i32;
                            } else {
                                _gotoNext = 3420141i32;
                            };
                        };
                    } else if (__value__ == (3420067i32)) {
                        _re_3419605.rune = _r_3420006;
                        _t_3416905 = _rest_3420009?.__copy__();
                        _p_3416793._push(_re_3419605);
                        bigSwitchBreak = true;
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3420141i32)) {
                        _p_3416793._reuse(_re_3419605);
                        {
                            {
                                var __tmp__ = _p_3416793._parseEscape(_t_3416905?.__copy__());
                                _c_3416813 = __tmp__._0;
                                _t_3416905 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3420241i32;
                            } else {
                                _gotoNext = 3420271i32;
                            };
                        };
                    } else if (__value__ == (3420241i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3420271i32;
                    } else if (__value__ == (3420271i32)) {
                        _p_3416793._literal(_c_3416813);
                        _gotoNext = 3420290i32;
                    } else if (__value__ == (3420290i32)) {
                        _lastRepeat_3416847 = _repeat_3416929?.__copy__();
                        _gotoNext = 3416913i32;
                    } else if (__value__ == (3420315i32)) {
                        _p_3416793._concat();
                        if (_p_3416793._swapVerticalBar()) {
                            _gotoNext = 3420350i32;
                        } else {
                            _gotoNext = 3420415i32;
                        };
                    } else if (__value__ == (3420350i32)) {
                        _p_3416793._stack = (_p_3416793._stack.__slice__(0, ((_p_3416793._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3420415i32;
                    } else if (__value__ == (3420415i32)) {
                        _p_3416793._alternate();
                        _n_3420431 = (_p_3416793._stack.length);
                        if (_n_3420431 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3420460i32;
                        } else {
                            _gotoNext = 3420507i32;
                        };
                    } else if (__value__ == (3420460i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3420507i32;
                    } else if (__value__ == (3420507i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3416793._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
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
