package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_3223586:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3225271:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3225032:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _lit_3224554:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3222191:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3222167:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3222055:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _op_3222093:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3224634:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3223598:Bool = false;
            var _r_3225268:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3224643:stdgo.Error = (null : stdgo.Error);
            var _after_3223383:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3224637:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3223258:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3222109:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3225693:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3225029:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3224867:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _min_3223581:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3223591:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3223566:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3222075:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3221913:stdgo.Error = (null : stdgo.Error);
            var _err_3225038:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3221866i32;
                        } else {
                            _gotoNext = 3222047i32;
                        };
                    } else if (__value__ == (3221866i32)) {
                        {
                            _err_3221913 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3221913 != null) {
                                _gotoNext = 3221945i32;
                            } else {
                                _gotoNext = 3221972i32;
                            };
                        };
                    } else if (__value__ == (3221945i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3221913 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3221972i32;
                    } else if (__value__ == (3221972i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3222047i32;
                    } else if (__value__ == (3222047i32)) {
                        _p_3222055._flags = _flags;
                        _p_3222055._wholeRegexp = _s?.__copy__();
                        _t_3222167 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3222175i32;
                    } else if (__value__ == (3222175i32)) {
                        if (_t_3222167 != (stdgo.Go.str())) {
                            _gotoNext = 3222187i32;
                        } else {
                            _gotoNext = 3225577i32;
                        };
                    } else if (__value__ == (3222187i32)) {
                        _repeat_3222191 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3222205i32;
                    } else if (__value__ == (3222205i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3222218i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3222167[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3222331i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3222601i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3222698i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3222794i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3222909i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3223039i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3223153i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3223235i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3223536i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3224092i32;
                                } else {
                                    _gotoNext = 3222234i32;
                                };
                            };
                        } else {
                            _gotoNext = 3225552i32;
                        };
                    } else if (__value__ == (3222234i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3222167?.__copy__());
                                _c_3222075 = __tmp__._0;
                                _t_3222167 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3222285i32;
                            } else {
                                _gotoNext = 3222315i32;
                            };
                        };
                    } else if (__value__ == (3222285i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3222315i32;
                    } else if (__value__ == (3222315i32)) {
                        _p_3222055._literal(_c_3222075);
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3222331i32)) {
                        if ((((_p_3222055._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3222167.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3222167[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3222396i32;
                        } else {
                            _gotoNext = 3222539i32;
                        };
                    } else if (__value__ == (3222396i32)) {
                        {
                            {
                                var __tmp__ = _p_3222055._parsePerlFlags(_t_3222167?.__copy__());
                                _t_3222167 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3222492i32;
                            } else {
                                _gotoNext = 3222525i32;
                            };
                        };
                    } else if (__value__ == (3222492i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3222525i32;
                    } else if (__value__ == (3222525i32)) {
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3222539i32)) {
                        _p_3222055._numCap++;
                        _p_3222055._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3222055._numCap;
                        _t_3222167 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3222601i32)) {
                        {
                            _err = _p_3222055._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3222656i32;
                            } else {
                                _gotoNext = 3222686i32;
                            };
                        };
                    } else if (__value__ == (3222656i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3222686i32;
                    } else if (__value__ == (3222686i32)) {
                        _t_3222167 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3222698i32)) {
                        {
                            _err = _p_3222055._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3222752i32;
                            } else {
                                _gotoNext = 3222782i32;
                            };
                        };
                    } else if (__value__ == (3222752i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3222782i32;
                    } else if (__value__ == (3222782i32)) {
                        _t_3222167 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3222794i32)) {
                        if ((_p_3222055._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3222831i32;
                        } else {
                            _gotoNext = 3222865i32;
                        };
                    } else if (__value__ == (3222831i32)) {
                        _p_3222055._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3222897i32;
                    } else if (__value__ == (3222865i32)) {
                        _gotoNext = 3222865i32;
                        _p_3222055._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3222897i32;
                    } else if (__value__ == (3222897i32)) {
                        _t_3222167 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3222909i32)) {
                        if ((_p_3222055._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3222946i32;
                        } else {
                            _gotoNext = 3222997i32;
                        };
                    } else if (__value__ == (3222946i32)) {
                        _p_3222055._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3222055._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3223027i32;
                    } else if (__value__ == (3222997i32)) {
                        _gotoNext = 3222997i32;
                        _p_3222055._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3223027i32;
                    } else if (__value__ == (3223027i32)) {
                        _t_3222167 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3223039i32)) {
                        if ((_p_3222055._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3223074i32;
                        } else {
                            _gotoNext = 3223106i32;
                        };
                    } else if (__value__ == (3223074i32)) {
                        _p_3222055._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3223141i32;
                    } else if (__value__ == (3223106i32)) {
                        _gotoNext = 3223106i32;
                        _p_3222055._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3223141i32;
                    } else if (__value__ == (3223141i32)) {
                        _t_3222167 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3223153i32)) {
                        {
                            {
                                var __tmp__ = _p_3222055._parseClass(_t_3222167?.__copy__());
                                _t_3222167 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3223206i32;
                            } else {
                                _gotoNext = 3225552i32;
                            };
                        };
                    } else if (__value__ == (3223206i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3223235i32)) {
                        _before_3223258 = _t_3222167?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3223273i32;
                    } else if (__value__ == (3223273i32)) {
                        {
                            final __value__ = _t_3222167[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3223290i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3223319i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3223348i32;
                            } else {
                                _gotoNext = 3223383i32;
                            };
                        };
                    } else if (__value__ == (3223290i32)) {
                        _op_3222093 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3223383i32;
                    } else if (__value__ == (3223319i32)) {
                        _op_3222093 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3223383i32;
                    } else if (__value__ == (3223348i32)) {
                        _op_3222093 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3223383i32;
                    } else if (__value__ == (3223383i32)) {
                        _after_3223383 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3222055._repeat(_op_3222093, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3223258?.__copy__(), _after_3223383?.__copy__(), _lastRepeat_3222109?.__copy__());
                                _after_3223383 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3223475i32;
                            } else {
                                _gotoNext = 3223505i32;
                            };
                        };
                    } else if (__value__ == (3223475i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3223505i32;
                    } else if (__value__ == (3223505i32)) {
                        _repeat_3222191 = _before_3223258?.__copy__();
                        _t_3222167 = _after_3223383?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3223536i32)) {
                        _op_3222093 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3223566 = _t_3222167?.__copy__();
                        {
                            var __tmp__ = _p_3222055._parseRepeat(_t_3222167?.__copy__());
                            _min_3223581 = __tmp__._0;
                            _max_3223586 = __tmp__._1;
                            _after_3223591 = __tmp__._2?.__copy__();
                            _ok_3223598 = __tmp__._3;
                        };
                        if (!_ok_3223598) {
                            _gotoNext = 3223631i32;
                        } else {
                            _gotoNext = 3223739i32;
                        };
                    } else if (__value__ == (3223631i32)) {
                        _p_3222055._literal((123 : stdgo.GoInt32));
                        _t_3222167 = (_t_3222167.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3223739i32)) {
                        if (((((_min_3223581 < (0 : stdgo.GoInt) : Bool) || (_min_3223581 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3223586 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3223586 >= (0 : stdgo.GoInt) : Bool) && (_min_3223581 > _max_3223586 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3223803i32;
                        } else {
                            _gotoNext = 3223953i32;
                        };
                    } else if (__value__ == (3223803i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3223566.__slice__(0, ((_before_3223566.length) - (_after_3223591.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3223953i32;
                    } else if (__value__ == (3223953i32)) {
                        {
                            {
                                var __tmp__ = _p_3222055._repeat(_op_3222093, _min_3223581, _max_3223586, _before_3223566?.__copy__(), _after_3223591?.__copy__(), _lastRepeat_3222109?.__copy__());
                                _after_3223591 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3224031i32;
                            } else {
                                _gotoNext = 3224061i32;
                            };
                        };
                    } else if (__value__ == (3224031i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3224061i32;
                    } else if (__value__ == (3224061i32)) {
                        _repeat_3222191 = _before_3223566?.__copy__();
                        _t_3222167 = _after_3223591?.__copy__();
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3224092i32)) {
                        if ((((_p_3222055._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3222167.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3224143i32;
                        } else {
                            _gotoNext = 3224867i32;
                        };
                    } else if (__value__ == (3224143i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3224149i32;
                    } else if (__value__ == (3224149i32)) {
                        {
                            final __value__ = _t_3222167[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3224167i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3224240i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3224316i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3224394i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3224489i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3224785i32;
                            } else {
                                _gotoNext = 3224867i32;
                            };
                        };
                    } else if (__value__ == (3224167i32)) {
                        _p_3222055._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3222167 = (_t_3222167.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3224240i32)) {
                        _p_3222055._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3222167 = (_t_3222167.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3224316i32)) {
                        _p_3222055._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3222167 = (_t_3222167.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3224394i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3222167.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3224867i32;
                    } else if (__value__ == (3224489i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3222167.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3224554 = __tmp__._0?.__copy__();
                            _t_3222167 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3224612i32;
                    } else if (__value__ == (3224612i32)) {
                        if (_lit_3224554 != (stdgo.Go.str())) {
                            _gotoNext = 3224626i32;
                        } else {
                            _gotoNext = 3224765i32;
                        };
                    } else if (__value__ == (3224626i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3224554?.__copy__());
                            _c_3224634 = __tmp__._0;
                            _rest_3224637 = __tmp__._1?.__copy__();
                            _err_3224643 = __tmp__._2;
                        };
                        if (_err_3224643 != null) {
                            _gotoNext = 3224684i32;
                        } else {
                            _gotoNext = 3224723i32;
                        };
                    } else if (__value__ == (3224684i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3224643 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3224723i32;
                    } else if (__value__ == (3224723i32)) {
                        _p_3222055._literal(_c_3224634);
                        _lit_3224554 = _rest_3224637?.__copy__();
                        _gotoNext = 3224612i32;
                    } else if (__value__ == (3224765i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3224785i32)) {
                        _p_3222055._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3222167 = (_t_3222167.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3224867i32)) {
                        _re_3224867 = _p_3222055._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3224867.flags = _p_3222055._flags;
                        if ((((_t_3222167.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3222167[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3222167[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3225023i32;
                        } else {
                            _gotoNext = 3225265i32;
                        };
                    } else if (__value__ == (3225023i32)) {
                        {
                            var __tmp__ = _p_3222055._parseUnicodeClass(_t_3222167?.__copy__(), (_re_3224867.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3225029 = __tmp__._0;
                            _rest_3225032 = __tmp__._1?.__copy__();
                            _err_3225038 = __tmp__._2;
                        };
                        if (_err_3225038 != null) {
                            _gotoNext = 3225100i32;
                        } else {
                            _gotoNext = 3225133i32;
                        };
                    } else if (__value__ == (3225100i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3225038 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3225133i32;
                    } else if (__value__ == (3225133i32)) {
                        if (_r_3225029 != null) {
                            _gotoNext = 3225145i32;
                        } else {
                            _gotoNext = 3225265i32;
                        };
                    } else if (__value__ == (3225145i32)) {
                        _re_3224867.rune = _r_3225029;
                        _t_3222167 = _rest_3225032?.__copy__();
                        _p_3222055._push(_re_3224867);
                        bigSwitchBreak = true;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3225265i32)) {
                        {
                            {
                                var __tmp__ = _p_3222055._parsePerlClassEscape(_t_3222167?.__copy__(), (_re_3224867.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3225268 = __tmp__._0;
                                _rest_3225271 = __tmp__._1?.__copy__();
                            };
                            if (_r_3225268 != null) {
                                _gotoNext = 3225329i32;
                            } else {
                                _gotoNext = 3225403i32;
                            };
                        };
                    } else if (__value__ == (3225329i32)) {
                        _re_3224867.rune = _r_3225268;
                        _t_3222167 = _rest_3225271?.__copy__();
                        _p_3222055._push(_re_3224867);
                        bigSwitchBreak = true;
                        _gotoNext = 3222218i32;
                    } else if (__value__ == (3225403i32)) {
                        _p_3222055._reuse(_re_3224867);
                        {
                            {
                                var __tmp__ = _p_3222055._parseEscape(_t_3222167?.__copy__());
                                _c_3222075 = __tmp__._0;
                                _t_3222167 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3225503i32;
                            } else {
                                _gotoNext = 3225533i32;
                            };
                        };
                    } else if (__value__ == (3225503i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3225533i32;
                    } else if (__value__ == (3225533i32)) {
                        _p_3222055._literal(_c_3222075);
                        _gotoNext = 3225552i32;
                    } else if (__value__ == (3225552i32)) {
                        _lastRepeat_3222109 = _repeat_3222191?.__copy__();
                        _gotoNext = 3222175i32;
                    } else if (__value__ == (3225577i32)) {
                        _p_3222055._concat();
                        if (_p_3222055._swapVerticalBar()) {
                            _gotoNext = 3225612i32;
                        } else {
                            _gotoNext = 3225677i32;
                        };
                    } else if (__value__ == (3225612i32)) {
                        _p_3222055._stack = (_p_3222055._stack.__slice__(0, ((_p_3222055._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3225677i32;
                    } else if (__value__ == (3225677i32)) {
                        _p_3222055._alternate();
                        _n_3225693 = (_p_3222055._stack.length);
                        if (_n_3225693 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3225722i32;
                        } else {
                            _gotoNext = 3225769i32;
                        };
                    } else if (__value__ == (3225722i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3225769i32;
                    } else if (__value__ == (3225769i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3222055._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
