package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _before_3261945:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3260454:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3263647:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3263408:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3263246:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _min_3261960:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3260434:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3263411:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3261965:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3261970:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3260546:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3260472:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3263650:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3262933:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3264072:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3260488:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3260292:stdgo.Error = (null : stdgo.Error);
            var _err_3263022:stdgo.Error = (null : stdgo.Error);
            var _rest_3263016:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3261977:Bool = false;
            var _before_3261637:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3260570:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _after_3261762:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3263417:stdgo.Error = (null : stdgo.Error);
            var _c_3263013:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3260245i32;
                        } else {
                            _gotoNext = 3260426i32;
                        };
                    } else if (__value__ == (3260245i32)) {
                        {
                            _err_3260292 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3260292 != null) {
                                _gotoNext = 3260324i32;
                            } else {
                                _gotoNext = 3260351i32;
                            };
                        };
                    } else if (__value__ == (3260324i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3260292 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3260351i32;
                    } else if (__value__ == (3260351i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3260426i32;
                    } else if (__value__ == (3260426i32)) {
                        _p_3260434._flags = _flags;
                        _p_3260434._wholeRegexp = _s?.__copy__();
                        _t_3260546 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3260554i32;
                    } else if (__value__ == (3260554i32)) {
                        if (_t_3260546 != (stdgo.Go.str())) {
                            _gotoNext = 3260566i32;
                        } else {
                            _gotoNext = 3263956i32;
                        };
                    } else if (__value__ == (3260566i32)) {
                        _repeat_3260570 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3260584i32;
                    } else if (__value__ == (3260584i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3260597i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3260546[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3260710i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3260980i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3261077i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3261173i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3261288i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3261418i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3261532i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3261614i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3261915i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3262471i32;
                                } else {
                                    _gotoNext = 3260613i32;
                                };
                            };
                        } else {
                            _gotoNext = 3263931i32;
                        };
                    } else if (__value__ == (3260613i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3260546?.__copy__());
                                _c_3260454 = __tmp__._0;
                                _t_3260546 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3260664i32;
                            } else {
                                _gotoNext = 3260694i32;
                            };
                        };
                    } else if (__value__ == (3260664i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3260694i32;
                    } else if (__value__ == (3260694i32)) {
                        _p_3260434._literal(_c_3260454);
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3260710i32)) {
                        if ((((_p_3260434._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3260546.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3260546[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3260775i32;
                        } else {
                            _gotoNext = 3260918i32;
                        };
                    } else if (__value__ == (3260775i32)) {
                        {
                            {
                                var __tmp__ = _p_3260434._parsePerlFlags(_t_3260546?.__copy__());
                                _t_3260546 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3260871i32;
                            } else {
                                _gotoNext = 3260904i32;
                            };
                        };
                    } else if (__value__ == (3260871i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3260904i32;
                    } else if (__value__ == (3260904i32)) {
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3260918i32)) {
                        _p_3260434._numCap++;
                        _p_3260434._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3260434._numCap;
                        _t_3260546 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3260980i32)) {
                        {
                            _err = _p_3260434._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3261035i32;
                            } else {
                                _gotoNext = 3261065i32;
                            };
                        };
                    } else if (__value__ == (3261035i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3261065i32;
                    } else if (__value__ == (3261065i32)) {
                        _t_3260546 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3261077i32)) {
                        {
                            _err = _p_3260434._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3261131i32;
                            } else {
                                _gotoNext = 3261161i32;
                            };
                        };
                    } else if (__value__ == (3261131i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3261161i32;
                    } else if (__value__ == (3261161i32)) {
                        _t_3260546 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3261173i32)) {
                        if ((_p_3260434._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3261210i32;
                        } else {
                            _gotoNext = 3261244i32;
                        };
                    } else if (__value__ == (3261210i32)) {
                        _p_3260434._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3261276i32;
                    } else if (__value__ == (3261244i32)) {
                        _gotoNext = 3261244i32;
                        _p_3260434._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3261276i32;
                    } else if (__value__ == (3261276i32)) {
                        _t_3260546 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3261288i32)) {
                        if ((_p_3260434._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3261325i32;
                        } else {
                            _gotoNext = 3261376i32;
                        };
                    } else if (__value__ == (3261325i32)) {
                        _p_3260434._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3260434._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3261406i32;
                    } else if (__value__ == (3261376i32)) {
                        _gotoNext = 3261376i32;
                        _p_3260434._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3261406i32;
                    } else if (__value__ == (3261406i32)) {
                        _t_3260546 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3261418i32)) {
                        if ((_p_3260434._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3261453i32;
                        } else {
                            _gotoNext = 3261485i32;
                        };
                    } else if (__value__ == (3261453i32)) {
                        _p_3260434._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3261520i32;
                    } else if (__value__ == (3261485i32)) {
                        _gotoNext = 3261485i32;
                        _p_3260434._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3261520i32;
                    } else if (__value__ == (3261520i32)) {
                        _t_3260546 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3261532i32)) {
                        {
                            {
                                var __tmp__ = _p_3260434._parseClass(_t_3260546?.__copy__());
                                _t_3260546 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3261585i32;
                            } else {
                                _gotoNext = 3263931i32;
                            };
                        };
                    } else if (__value__ == (3261585i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3261614i32)) {
                        _before_3261637 = _t_3260546?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3261652i32;
                    } else if (__value__ == (3261652i32)) {
                        {
                            final __value__ = _t_3260546[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3261669i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3261698i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3261727i32;
                            } else {
                                _gotoNext = 3261762i32;
                            };
                        };
                    } else if (__value__ == (3261669i32)) {
                        _op_3260472 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3261762i32;
                    } else if (__value__ == (3261698i32)) {
                        _op_3260472 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3261762i32;
                    } else if (__value__ == (3261727i32)) {
                        _op_3260472 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3261762i32;
                    } else if (__value__ == (3261762i32)) {
                        _after_3261762 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3260434._repeat(_op_3260472, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3261637?.__copy__(), _after_3261762?.__copy__(), _lastRepeat_3260488?.__copy__());
                                _after_3261762 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3261854i32;
                            } else {
                                _gotoNext = 3261884i32;
                            };
                        };
                    } else if (__value__ == (3261854i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3261884i32;
                    } else if (__value__ == (3261884i32)) {
                        _repeat_3260570 = _before_3261637?.__copy__();
                        _t_3260546 = _after_3261762?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3261915i32)) {
                        _op_3260472 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3261945 = _t_3260546?.__copy__();
                        {
                            var __tmp__ = _p_3260434._parseRepeat(_t_3260546?.__copy__());
                            _min_3261960 = __tmp__._0;
                            _max_3261965 = __tmp__._1;
                            _after_3261970 = __tmp__._2?.__copy__();
                            _ok_3261977 = __tmp__._3;
                        };
                        if (!_ok_3261977) {
                            _gotoNext = 3262010i32;
                        } else {
                            _gotoNext = 3262118i32;
                        };
                    } else if (__value__ == (3262010i32)) {
                        _p_3260434._literal((123 : stdgo.GoInt32));
                        _t_3260546 = (_t_3260546.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3262118i32)) {
                        if (((((_min_3261960 < (0 : stdgo.GoInt) : Bool) || (_min_3261960 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3261965 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3261965 >= (0 : stdgo.GoInt) : Bool) && (_min_3261960 > _max_3261965 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3262182i32;
                        } else {
                            _gotoNext = 3262332i32;
                        };
                    } else if (__value__ == (3262182i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3261945.__slice__(0, ((_before_3261945.length) - (_after_3261970.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3262332i32;
                    } else if (__value__ == (3262332i32)) {
                        {
                            {
                                var __tmp__ = _p_3260434._repeat(_op_3260472, _min_3261960, _max_3261965, _before_3261945?.__copy__(), _after_3261970?.__copy__(), _lastRepeat_3260488?.__copy__());
                                _after_3261970 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3262410i32;
                            } else {
                                _gotoNext = 3262440i32;
                            };
                        };
                    } else if (__value__ == (3262410i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3262440i32;
                    } else if (__value__ == (3262440i32)) {
                        _repeat_3260570 = _before_3261945?.__copy__();
                        _t_3260546 = _after_3261970?.__copy__();
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3262471i32)) {
                        if ((((_p_3260434._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3260546.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3262522i32;
                        } else {
                            _gotoNext = 3263246i32;
                        };
                    } else if (__value__ == (3262522i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3262528i32;
                    } else if (__value__ == (3262528i32)) {
                        {
                            final __value__ = _t_3260546[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3262546i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3262619i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3262695i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3262773i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3262868i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3263164i32;
                            } else {
                                _gotoNext = 3263246i32;
                            };
                        };
                    } else if (__value__ == (3262546i32)) {
                        _p_3260434._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3260546 = (_t_3260546.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3262619i32)) {
                        _p_3260434._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3260546 = (_t_3260546.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3262695i32)) {
                        _p_3260434._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3260546 = (_t_3260546.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3262773i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3260546.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3263246i32;
                    } else if (__value__ == (3262868i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3260546.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3262933 = __tmp__._0?.__copy__();
                            _t_3260546 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3262991i32;
                    } else if (__value__ == (3262991i32)) {
                        if (_lit_3262933 != (stdgo.Go.str())) {
                            _gotoNext = 3263005i32;
                        } else {
                            _gotoNext = 3263144i32;
                        };
                    } else if (__value__ == (3263005i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3262933?.__copy__());
                            _c_3263013 = __tmp__._0;
                            _rest_3263016 = __tmp__._1?.__copy__();
                            _err_3263022 = __tmp__._2;
                        };
                        if (_err_3263022 != null) {
                            _gotoNext = 3263063i32;
                        } else {
                            _gotoNext = 3263102i32;
                        };
                    } else if (__value__ == (3263063i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3263022 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3263102i32;
                    } else if (__value__ == (3263102i32)) {
                        _p_3260434._literal(_c_3263013);
                        _lit_3262933 = _rest_3263016?.__copy__();
                        _gotoNext = 3262991i32;
                    } else if (__value__ == (3263144i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3263164i32)) {
                        _p_3260434._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3260546 = (_t_3260546.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3263246i32)) {
                        _re_3263246 = _p_3260434._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3263246.flags = _p_3260434._flags;
                        if ((((_t_3260546.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3260546[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3260546[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3263402i32;
                        } else {
                            _gotoNext = 3263644i32;
                        };
                    } else if (__value__ == (3263402i32)) {
                        {
                            var __tmp__ = _p_3260434._parseUnicodeClass(_t_3260546?.__copy__(), (_re_3263246.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3263408 = __tmp__._0;
                            _rest_3263411 = __tmp__._1?.__copy__();
                            _err_3263417 = __tmp__._2;
                        };
                        if (_err_3263417 != null) {
                            _gotoNext = 3263479i32;
                        } else {
                            _gotoNext = 3263512i32;
                        };
                    } else if (__value__ == (3263479i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3263417 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3263512i32;
                    } else if (__value__ == (3263512i32)) {
                        if (_r_3263408 != null) {
                            _gotoNext = 3263524i32;
                        } else {
                            _gotoNext = 3263644i32;
                        };
                    } else if (__value__ == (3263524i32)) {
                        _re_3263246.rune = _r_3263408;
                        _t_3260546 = _rest_3263411?.__copy__();
                        _p_3260434._push(_re_3263246);
                        bigSwitchBreak = true;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3263644i32)) {
                        {
                            {
                                var __tmp__ = _p_3260434._parsePerlClassEscape(_t_3260546?.__copy__(), (_re_3263246.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3263647 = __tmp__._0;
                                _rest_3263650 = __tmp__._1?.__copy__();
                            };
                            if (_r_3263647 != null) {
                                _gotoNext = 3263708i32;
                            } else {
                                _gotoNext = 3263782i32;
                            };
                        };
                    } else if (__value__ == (3263708i32)) {
                        _re_3263246.rune = _r_3263647;
                        _t_3260546 = _rest_3263650?.__copy__();
                        _p_3260434._push(_re_3263246);
                        bigSwitchBreak = true;
                        _gotoNext = 3260597i32;
                    } else if (__value__ == (3263782i32)) {
                        _p_3260434._reuse(_re_3263246);
                        {
                            {
                                var __tmp__ = _p_3260434._parseEscape(_t_3260546?.__copy__());
                                _c_3260454 = __tmp__._0;
                                _t_3260546 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3263882i32;
                            } else {
                                _gotoNext = 3263912i32;
                            };
                        };
                    } else if (__value__ == (3263882i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3263912i32;
                    } else if (__value__ == (3263912i32)) {
                        _p_3260434._literal(_c_3260454);
                        _gotoNext = 3263931i32;
                    } else if (__value__ == (3263931i32)) {
                        _lastRepeat_3260488 = _repeat_3260570?.__copy__();
                        _gotoNext = 3260554i32;
                    } else if (__value__ == (3263956i32)) {
                        _p_3260434._concat();
                        if (_p_3260434._swapVerticalBar()) {
                            _gotoNext = 3263991i32;
                        } else {
                            _gotoNext = 3264056i32;
                        };
                    } else if (__value__ == (3263991i32)) {
                        _p_3260434._stack = (_p_3260434._stack.__slice__(0, ((_p_3260434._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3264056i32;
                    } else if (__value__ == (3264056i32)) {
                        _p_3260434._alternate();
                        _n_3264072 = (_p_3260434._stack.length);
                        if (_n_3264072 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3264101i32;
                        } else {
                            _gotoNext = 3264148i32;
                        };
                    } else if (__value__ == (3264101i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3264148i32;
                    } else if (__value__ == (3264148i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3260434._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
