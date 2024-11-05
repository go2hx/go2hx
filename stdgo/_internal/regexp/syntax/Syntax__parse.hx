package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _p_3267862:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _max_3269393:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3270836:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _min_3269388:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3270444:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3270441:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3269398:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3267882:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3271500:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3271078:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3270361:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3267998:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3267916:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3267720:stdgo.Error = (null : stdgo.Error);
            var _rest_3270839:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3269190:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3270450:stdgo.Error = (null : stdgo.Error);
            var _before_3269373:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3269065:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3267900:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3270845:stdgo.Error = (null : stdgo.Error);
            var _re_3270674:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _ok_3269405:Bool = false;
            var _t_3267974:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _r_3271075:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
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
                            _gotoNext = 3267673i32;
                        } else {
                            _gotoNext = 3267854i32;
                        };
                    } else if (__value__ == (3267673i32)) {
                        {
                            _err_3267720 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3267720 != null) {
                                _gotoNext = 3267752i32;
                            } else {
                                _gotoNext = 3267779i32;
                            };
                        };
                    } else if (__value__ == (3267752i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3267720 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3267779i32;
                    } else if (__value__ == (3267779i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3267854i32;
                    } else if (__value__ == (3267854i32)) {
                        _p_3267862._flags = _flags;
                        _p_3267862._wholeRegexp = _s?.__copy__();
                        _t_3267974 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3267982i32;
                    } else if (__value__ == (3267982i32)) {
                        if (_t_3267974 != (stdgo.Go.str())) {
                            _gotoNext = 3267994i32;
                        } else {
                            _gotoNext = 3271384i32;
                        };
                    } else if (__value__ == (3267994i32)) {
                        _repeat_3267998 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3268012i32;
                    } else if (__value__ == (3268012i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3268025i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3267974[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268138i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268408i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268505i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268601i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268716i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268846i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268960i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269042i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269343i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269899i32;
                                } else {
                                    _gotoNext = 3268041i32;
                                };
                            };
                        } else {
                            _gotoNext = 3271359i32;
                        };
                    } else if (__value__ == (3268041i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3267974?.__copy__());
                                _c_3267882 = __tmp__._0;
                                _t_3267974 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3268092i32;
                            } else {
                                _gotoNext = 3268122i32;
                            };
                        };
                    } else if (__value__ == (3268092i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3268122i32;
                    } else if (__value__ == (3268122i32)) {
                        _p_3267862._literal(_c_3267882);
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268138i32)) {
                        if ((((_p_3267862._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3267974.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3267974[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3268203i32;
                        } else {
                            _gotoNext = 3268346i32;
                        };
                    } else if (__value__ == (3268203i32)) {
                        {
                            {
                                var __tmp__ = _p_3267862._parsePerlFlags(_t_3267974?.__copy__());
                                _t_3267974 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3268299i32;
                            } else {
                                _gotoNext = 3268332i32;
                            };
                        };
                    } else if (__value__ == (3268299i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3268332i32;
                    } else if (__value__ == (3268332i32)) {
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268346i32)) {
                        _p_3267862._numCap++;
                        _p_3267862._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3267862._numCap;
                        _t_3267974 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268408i32)) {
                        {
                            _err = _p_3267862._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3268463i32;
                            } else {
                                _gotoNext = 3268493i32;
                            };
                        };
                    } else if (__value__ == (3268463i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3268493i32)) {
                        _t_3267974 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268505i32)) {
                        {
                            _err = _p_3267862._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3268559i32;
                            } else {
                                _gotoNext = 3268589i32;
                            };
                        };
                    } else if (__value__ == (3268559i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3268589i32;
                    } else if (__value__ == (3268589i32)) {
                        _t_3267974 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268601i32)) {
                        if ((_p_3267862._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3268638i32;
                        } else {
                            _gotoNext = 3268672i32;
                        };
                    } else if (__value__ == (3268638i32)) {
                        _p_3267862._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3268704i32;
                    } else if (__value__ == (3268672i32)) {
                        _p_3267862._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3268704i32;
                    } else if (__value__ == (3268704i32)) {
                        _t_3267974 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268716i32)) {
                        if ((_p_3267862._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3268753i32;
                        } else {
                            _gotoNext = 3268804i32;
                        };
                    } else if (__value__ == (3268753i32)) {
                        _p_3267862._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3267862._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3268834i32;
                    } else if (__value__ == (3268804i32)) {
                        _p_3267862._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3268834i32;
                    } else if (__value__ == (3268834i32)) {
                        _t_3267974 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268846i32)) {
                        if ((_p_3267862._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3268881i32;
                        } else {
                            _gotoNext = 3268913i32;
                        };
                    } else if (__value__ == (3268881i32)) {
                        _p_3267862._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3268948i32;
                    } else if (__value__ == (3268913i32)) {
                        _p_3267862._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3268948i32;
                    } else if (__value__ == (3268948i32)) {
                        _t_3267974 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3268960i32)) {
                        {
                            {
                                var __tmp__ = _p_3267862._parseClass(_t_3267974?.__copy__());
                                _t_3267974 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3269013i32;
                            } else {
                                _gotoNext = 3271359i32;
                            };
                        };
                    } else if (__value__ == (3269013i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3269042i32)) {
                        _before_3269065 = _t_3267974?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3269080i32;
                    } else if (__value__ == (3269080i32)) {
                        {
                            final __value__ = _t_3267974[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3269097i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3269126i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3269155i32;
                            } else {
                                _gotoNext = 3269190i32;
                            };
                        };
                    } else if (__value__ == (3269097i32)) {
                        _op_3267900 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3269190i32;
                    } else if (__value__ == (3269126i32)) {
                        _op_3267900 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3269190i32;
                    } else if (__value__ == (3269155i32)) {
                        _op_3267900 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3269190i32;
                    } else if (__value__ == (3269190i32)) {
                        _after_3269190 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3267862._repeat(_op_3267900, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3269065?.__copy__(), _after_3269190?.__copy__(), _lastRepeat_3267916?.__copy__());
                                _after_3269190 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3269282i32;
                            } else {
                                _gotoNext = 3269312i32;
                            };
                        };
                    } else if (__value__ == (3269282i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3269312i32;
                    } else if (__value__ == (3269312i32)) {
                        _repeat_3267998 = _before_3269065?.__copy__();
                        _t_3267974 = _after_3269190?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3269343i32)) {
                        _op_3267900 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3269373 = _t_3267974?.__copy__();
                        {
                            var __tmp__ = _p_3267862._parseRepeat(_t_3267974?.__copy__());
                            _min_3269388 = __tmp__._0;
                            _max_3269393 = __tmp__._1;
                            _after_3269398 = __tmp__._2?.__copy__();
                            _ok_3269405 = __tmp__._3;
                        };
                        if (!_ok_3269405) {
                            _gotoNext = 3269438i32;
                        } else {
                            _gotoNext = 3269546i32;
                        };
                    } else if (__value__ == (3269438i32)) {
                        _p_3267862._literal((123 : stdgo.GoInt32));
                        _t_3267974 = (_t_3267974.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3269546i32)) {
                        if (((((_min_3269388 < (0 : stdgo.GoInt) : Bool) || (_min_3269388 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3269393 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3269393 >= (0 : stdgo.GoInt) : Bool) && (_min_3269388 > _max_3269393 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3269610i32;
                        } else {
                            _gotoNext = 3269760i32;
                        };
                    } else if (__value__ == (3269610i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3269373.__slice__(0, ((_before_3269373.length) - (_after_3269398.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3269760i32;
                    } else if (__value__ == (3269760i32)) {
                        {
                            {
                                var __tmp__ = _p_3267862._repeat(_op_3267900, _min_3269388, _max_3269393, _before_3269373?.__copy__(), _after_3269398?.__copy__(), _lastRepeat_3267916?.__copy__());
                                _after_3269398 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3269838i32;
                            } else {
                                _gotoNext = 3269868i32;
                            };
                        };
                    } else if (__value__ == (3269838i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3269868i32;
                    } else if (__value__ == (3269868i32)) {
                        _repeat_3267998 = _before_3269373?.__copy__();
                        _t_3267974 = _after_3269398?.__copy__();
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3269899i32)) {
                        if ((((_p_3267862._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3267974.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3269950i32;
                        } else {
                            _gotoNext = 3270674i32;
                        };
                    } else if (__value__ == (3269950i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3269956i32;
                    } else if (__value__ == (3269956i32)) {
                        {
                            final __value__ = _t_3267974[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3269974i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3270047i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3270123i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3270201i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3270296i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3270592i32;
                            } else {
                                _gotoNext = 3270674i32;
                            };
                        };
                    } else if (__value__ == (3269974i32)) {
                        _p_3267862._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3267974 = (_t_3267974.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3270047i32)) {
                        _p_3267862._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3267974 = (_t_3267974.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3270123i32)) {
                        _p_3267862._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3267974 = (_t_3267974.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3270201i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3267974.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3270674i32;
                    } else if (__value__ == (3270296i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3267974.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3270361 = __tmp__._0?.__copy__();
                            _t_3267974 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3270419i32;
                    } else if (__value__ == (3270419i32)) {
                        if (_lit_3270361 != (stdgo.Go.str())) {
                            _gotoNext = 3270433i32;
                        } else {
                            _gotoNext = 3270572i32;
                        };
                    } else if (__value__ == (3270433i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3270361?.__copy__());
                            _c_3270441 = __tmp__._0;
                            _rest_3270444 = __tmp__._1?.__copy__();
                            _err_3270450 = __tmp__._2;
                        };
                        if (_err_3270450 != null) {
                            _gotoNext = 3270491i32;
                        } else {
                            _gotoNext = 3270530i32;
                        };
                    } else if (__value__ == (3270491i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3270450 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3270530i32;
                    } else if (__value__ == (3270530i32)) {
                        _p_3267862._literal(_c_3270441);
                        _lit_3270361 = _rest_3270444?.__copy__();
                        _gotoNext = 3270419i32;
                    } else if (__value__ == (3270572i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3270592i32)) {
                        _p_3267862._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3267974 = (_t_3267974.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3270674i32)) {
                        _re_3270674 = _p_3267862._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3270674.flags = _p_3267862._flags;
                        if ((((_t_3267974.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3267974[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3267974[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3270830i32;
                        } else {
                            _gotoNext = 3271072i32;
                        };
                    } else if (__value__ == (3270830i32)) {
                        {
                            var __tmp__ = _p_3267862._parseUnicodeClass(_t_3267974?.__copy__(), (_re_3270674.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3270836 = __tmp__._0;
                            _rest_3270839 = __tmp__._1?.__copy__();
                            _err_3270845 = __tmp__._2;
                        };
                        if (_err_3270845 != null) {
                            _gotoNext = 3270907i32;
                        } else {
                            _gotoNext = 3270940i32;
                        };
                    } else if (__value__ == (3270907i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3270845 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3270940i32;
                    } else if (__value__ == (3270940i32)) {
                        if (_r_3270836 != null) {
                            _gotoNext = 3270952i32;
                        } else {
                            _gotoNext = 3271072i32;
                        };
                    } else if (__value__ == (3270952i32)) {
                        _re_3270674.rune = _r_3270836;
                        _t_3267974 = _rest_3270839?.__copy__();
                        _p_3267862._push(_re_3270674);
                        bigSwitchBreak = true;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3271072i32)) {
                        {
                            {
                                var __tmp__ = _p_3267862._parsePerlClassEscape(_t_3267974?.__copy__(), (_re_3270674.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3271075 = __tmp__._0;
                                _rest_3271078 = __tmp__._1?.__copy__();
                            };
                            if (_r_3271075 != null) {
                                _gotoNext = 3271136i32;
                            } else {
                                _gotoNext = 3271210i32;
                            };
                        };
                    } else if (__value__ == (3271136i32)) {
                        _re_3270674.rune = _r_3271075;
                        _t_3267974 = _rest_3271078?.__copy__();
                        _p_3267862._push(_re_3270674);
                        bigSwitchBreak = true;
                        _gotoNext = 3268025i32;
                    } else if (__value__ == (3271210i32)) {
                        _p_3267862._reuse(_re_3270674);
                        {
                            {
                                var __tmp__ = _p_3267862._parseEscape(_t_3267974?.__copy__());
                                _c_3267882 = __tmp__._0;
                                _t_3267974 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3271310i32;
                            } else {
                                _gotoNext = 3271340i32;
                            };
                        };
                    } else if (__value__ == (3271310i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3271340i32;
                    } else if (__value__ == (3271340i32)) {
                        _p_3267862._literal(_c_3267882);
                        _gotoNext = 3271359i32;
                    } else if (__value__ == (3271359i32)) {
                        _lastRepeat_3267916 = _repeat_3267998?.__copy__();
                        _gotoNext = 3267982i32;
                    } else if (__value__ == (3271384i32)) {
                        _p_3267862._concat();
                        if (_p_3267862._swapVerticalBar()) {
                            _gotoNext = 3271419i32;
                        } else {
                            _gotoNext = 3271484i32;
                        };
                    } else if (__value__ == (3271419i32)) {
                        _p_3267862._stack = (_p_3267862._stack.__slice__(0, ((_p_3267862._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3271484i32;
                    } else if (__value__ == (3271484i32)) {
                        _p_3267862._alternate();
                        _n_3271500 = (_p_3267862._stack.length);
                        if (_n_3271500 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3271529i32;
                        } else {
                            _gotoNext = 3271576i32;
                        };
                    } else if (__value__ == (3271529i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3271576i32;
                    } else if (__value__ == (3271576i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3267862._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
