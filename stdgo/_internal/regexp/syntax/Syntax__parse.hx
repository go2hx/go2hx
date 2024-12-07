package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3518505:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _t_3514979:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3517446:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3516410:Bool = false;
            var _after_3516195:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3516070:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3514725:stdgo.Error = (null : stdgo.Error);
            var _r_3517841:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lastRepeat_3514921:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3515003:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3514905:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _re_3517679:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3516403:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3516393:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3514887:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3516398:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3517455:stdgo.Error = (null : stdgo.Error);
            var _rest_3517449:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3517366:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3517850:stdgo.Error = (null : stdgo.Error);
            var _rest_3517844:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3516378:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3514867:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3518083:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3518080:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> ({
                            var a = function():Void {
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
                            };
                            a();
                        }));
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3514678i32;
                        } else {
                            _gotoNext = 3514859i32;
                        };
                    } else if (__value__ == (3514678i32)) {
                        {
                            _err_3514725 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3514725 != null) {
                                _gotoNext = 3514757i32;
                            } else {
                                _gotoNext = 3514784i32;
                            };
                        };
                    } else if (__value__ == (3514757i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3514725 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3514784i32;
                    } else if (__value__ == (3514784i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3514859i32;
                    } else if (__value__ == (3514859i32)) {
                        _p_3514867._flags = _flags;
                        _p_3514867._wholeRegexp = _s?.__copy__();
                        _t_3514979 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3514987i32;
                    } else if (__value__ == (3514987i32)) {
                        if (_t_3514979 != (stdgo.Go.str())) {
                            _gotoNext = 3514999i32;
                        } else {
                            _gotoNext = 3518389i32;
                        };
                    } else if (__value__ == (3514999i32)) {
                        _repeat_3515003 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3515017i32;
                    } else if (__value__ == (3515017i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3515030i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3514979[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515143i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515413i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515510i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515606i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515721i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515851i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515965i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3516047i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3516348i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3516904i32;
                                } else {
                                    _gotoNext = 3515046i32;
                                };
                            };
                        } else {
                            _gotoNext = 3518364i32;
                        };
                    } else if (__value__ == (3515046i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3514979?.__copy__());
                                _c_3514887 = __tmp__._0;
                                _t_3514979 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3515097i32;
                            } else {
                                _gotoNext = 3515127i32;
                            };
                        };
                    } else if (__value__ == (3515097i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515127i32;
                    } else if (__value__ == (3515127i32)) {
                        _p_3514867._literal(_c_3514887);
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515143i32)) {
                        if ((((_p_3514867._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3514979.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3514979[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3515208i32;
                        } else {
                            _gotoNext = 3515351i32;
                        };
                    } else if (__value__ == (3515208i32)) {
                        {
                            {
                                var __tmp__ = _p_3514867._parsePerlFlags(_t_3514979?.__copy__());
                                _t_3514979 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3515304i32;
                            } else {
                                _gotoNext = 3515337i32;
                            };
                        };
                    } else if (__value__ == (3515304i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515337i32;
                    } else if (__value__ == (3515337i32)) {
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515351i32)) {
                        _p_3514867._numCap++;
                        _p_3514867._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3514867._numCap;
                        _t_3514979 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515413i32)) {
                        {
                            _err = _p_3514867._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3515468i32;
                            } else {
                                _gotoNext = 3515498i32;
                            };
                        };
                    } else if (__value__ == (3515468i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515498i32;
                    } else if (__value__ == (3515498i32)) {
                        _t_3514979 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515510i32)) {
                        {
                            _err = _p_3514867._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3515564i32;
                            } else {
                                _gotoNext = 3515594i32;
                            };
                        };
                    } else if (__value__ == (3515564i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515594i32;
                    } else if (__value__ == (3515594i32)) {
                        _t_3514979 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515606i32)) {
                        if ((_p_3514867._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3515643i32;
                        } else {
                            _gotoNext = 3515677i32;
                        };
                    } else if (__value__ == (3515643i32)) {
                        _p_3514867._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3515709i32;
                    } else if (__value__ == (3515677i32)) {
                        _gotoNext = 3515677i32;
                        _p_3514867._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3515709i32;
                    } else if (__value__ == (3515709i32)) {
                        _t_3514979 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515721i32)) {
                        if ((_p_3514867._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3515758i32;
                        } else {
                            _gotoNext = 3515809i32;
                        };
                    } else if (__value__ == (3515758i32)) {
                        _p_3514867._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3514867._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3515839i32;
                    } else if (__value__ == (3515809i32)) {
                        _gotoNext = 3515809i32;
                        _p_3514867._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3515839i32;
                    } else if (__value__ == (3515839i32)) {
                        _t_3514979 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515851i32)) {
                        if ((_p_3514867._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3515886i32;
                        } else {
                            _gotoNext = 3515918i32;
                        };
                    } else if (__value__ == (3515886i32)) {
                        _p_3514867._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3515953i32;
                    } else if (__value__ == (3515918i32)) {
                        _gotoNext = 3515918i32;
                        _p_3514867._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3515953i32;
                    } else if (__value__ == (3515953i32)) {
                        _t_3514979 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3515965i32)) {
                        {
                            {
                                var __tmp__ = _p_3514867._parseClass(_t_3514979?.__copy__());
                                _t_3514979 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3516018i32;
                            } else {
                                _gotoNext = 3518364i32;
                            };
                        };
                    } else if (__value__ == (3516018i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3516047i32)) {
                        _before_3516070 = _t_3514979?.__copy__();
                        _gotoNext = 3516085i32;
                    } else if (__value__ == (3516085i32)) {
                        {
                            final __value__ = _t_3514979[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3516102i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3516131i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3516160i32;
                            } else {
                                _gotoNext = 3516195i32;
                            };
                        };
                    } else if (__value__ == (3516102i32)) {
                        _op_3514905 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3516195i32;
                    } else if (__value__ == (3516131i32)) {
                        _op_3514905 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3516195i32;
                    } else if (__value__ == (3516160i32)) {
                        _op_3514905 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3516195i32;
                    } else if (__value__ == (3516195i32)) {
                        _after_3516195 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3514867._repeat(_op_3514905, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3516070?.__copy__(), _after_3516195?.__copy__(), _lastRepeat_3514921?.__copy__());
                                _after_3516195 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3516287i32;
                            } else {
                                _gotoNext = 3516317i32;
                            };
                        };
                    } else if (__value__ == (3516287i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3516317i32;
                    } else if (__value__ == (3516317i32)) {
                        _repeat_3515003 = _before_3516070?.__copy__();
                        _t_3514979 = _after_3516195?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3516348i32)) {
                        _op_3514905 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3516378 = _t_3514979?.__copy__();
                        {
                            var __tmp__ = _p_3514867._parseRepeat(_t_3514979?.__copy__());
                            _min_3516393 = __tmp__._0;
                            _max_3516398 = __tmp__._1;
                            _after_3516403 = __tmp__._2?.__copy__();
                            _ok_3516410 = __tmp__._3;
                        };
                        if (!_ok_3516410) {
                            _gotoNext = 3516443i32;
                        } else {
                            _gotoNext = 3516551i32;
                        };
                    } else if (__value__ == (3516443i32)) {
                        _p_3514867._literal((123 : stdgo.GoInt32));
                        _t_3514979 = (_t_3514979.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3516551i32)) {
                        if (((((_min_3516393 < (0 : stdgo.GoInt) : Bool) || (_min_3516393 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3516398 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3516398 >= (0 : stdgo.GoInt) : Bool) && (_min_3516393 > _max_3516398 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3516615i32;
                        } else {
                            _gotoNext = 3516765i32;
                        };
                    } else if (__value__ == (3516615i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3516378.__slice__(0, ((_before_3516378.length) - (_after_3516403.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3516765i32;
                    } else if (__value__ == (3516765i32)) {
                        {
                            {
                                var __tmp__ = _p_3514867._repeat(_op_3514905, _min_3516393, _max_3516398, _before_3516378?.__copy__(), _after_3516403?.__copy__(), _lastRepeat_3514921?.__copy__());
                                _after_3516403 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3516843i32;
                            } else {
                                _gotoNext = 3516873i32;
                            };
                        };
                    } else if (__value__ == (3516843i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3516873i32;
                    } else if (__value__ == (3516873i32)) {
                        _repeat_3515003 = _before_3516378?.__copy__();
                        _t_3514979 = _after_3516403?.__copy__();
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3516904i32)) {
                        if ((((_p_3514867._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3514979.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3516955i32;
                        } else {
                            _gotoNext = 3517679i32;
                        };
                    } else if (__value__ == (3516955i32)) {
                        _gotoNext = 3516961i32;
                    } else if (__value__ == (3516961i32)) {
                        {
                            final __value__ = _t_3514979[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3516979i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3517052i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3517128i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3517206i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3517301i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3517597i32;
                            } else {
                                _gotoNext = 3517679i32;
                            };
                        };
                    } else if (__value__ == (3516979i32)) {
                        _p_3514867._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3514979 = (_t_3514979.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3517052i32)) {
                        _p_3514867._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3514979 = (_t_3514979.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3517128i32)) {
                        _p_3514867._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3514979 = (_t_3514979.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3517206i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3514979.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3517679i32;
                    } else if (__value__ == (3517301i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3514979.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3517366 = __tmp__._0?.__copy__();
                            _t_3514979 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3517424i32;
                    } else if (__value__ == (3517424i32)) {
                        if (_lit_3517366 != (stdgo.Go.str())) {
                            _gotoNext = 3517438i32;
                        } else {
                            _gotoNext = 3517577i32;
                        };
                    } else if (__value__ == (3517438i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3517366?.__copy__());
                            _c_3517446 = __tmp__._0;
                            _rest_3517449 = __tmp__._1?.__copy__();
                            _err_3517455 = __tmp__._2;
                        };
                        if (_err_3517455 != null) {
                            _gotoNext = 3517496i32;
                        } else {
                            _gotoNext = 3517535i32;
                        };
                    } else if (__value__ == (3517496i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3517455 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3517535i32;
                    } else if (__value__ == (3517535i32)) {
                        _p_3514867._literal(_c_3517446);
                        _lit_3517366 = _rest_3517449?.__copy__();
                        _gotoNext = 3517424i32;
                    } else if (__value__ == (3517577i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3517597i32)) {
                        _p_3514867._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3514979 = (_t_3514979.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3517679i32)) {
                        _re_3517679 = _p_3514867._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3517679.flags = _p_3514867._flags;
                        if ((((_t_3514979.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3514979[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3514979[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3517835i32;
                        } else {
                            _gotoNext = 3518077i32;
                        };
                    } else if (__value__ == (3517835i32)) {
                        {
                            var __tmp__ = _p_3514867._parseUnicodeClass(_t_3514979?.__copy__(), (_re_3517679.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3517841 = __tmp__._0;
                            _rest_3517844 = __tmp__._1?.__copy__();
                            _err_3517850 = __tmp__._2;
                        };
                        if (_err_3517850 != null) {
                            _gotoNext = 3517912i32;
                        } else {
                            _gotoNext = 3517945i32;
                        };
                    } else if (__value__ == (3517912i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3517850 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3517945i32;
                    } else if (__value__ == (3517945i32)) {
                        if (_r_3517841 != null) {
                            _gotoNext = 3517957i32;
                        } else {
                            _gotoNext = 3518077i32;
                        };
                    } else if (__value__ == (3517957i32)) {
                        _re_3517679.rune = _r_3517841;
                        _t_3514979 = _rest_3517844?.__copy__();
                        _p_3514867._push(_re_3517679);
                        bigSwitchBreak = true;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3518077i32)) {
                        {
                            {
                                var __tmp__ = _p_3514867._parsePerlClassEscape(_t_3514979?.__copy__(), (_re_3517679.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3518080 = __tmp__._0;
                                _rest_3518083 = __tmp__._1?.__copy__();
                            };
                            if (_r_3518080 != null) {
                                _gotoNext = 3518141i32;
                            } else {
                                _gotoNext = 3518215i32;
                            };
                        };
                    } else if (__value__ == (3518141i32)) {
                        _re_3517679.rune = _r_3518080;
                        _t_3514979 = _rest_3518083?.__copy__();
                        _p_3514867._push(_re_3517679);
                        bigSwitchBreak = true;
                        _gotoNext = 3515030i32;
                    } else if (__value__ == (3518215i32)) {
                        _p_3514867._reuse(_re_3517679);
                        {
                            {
                                var __tmp__ = _p_3514867._parseEscape(_t_3514979?.__copy__());
                                _c_3514887 = __tmp__._0;
                                _t_3514979 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3518315i32;
                            } else {
                                _gotoNext = 3518345i32;
                            };
                        };
                    } else if (__value__ == (3518315i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3518345i32;
                    } else if (__value__ == (3518345i32)) {
                        _p_3514867._literal(_c_3514887);
                        _gotoNext = 3518364i32;
                    } else if (__value__ == (3518364i32)) {
                        _lastRepeat_3514921 = _repeat_3515003?.__copy__();
                        _gotoNext = 3514987i32;
                    } else if (__value__ == (3518389i32)) {
                        _p_3514867._concat();
                        if (_p_3514867._swapVerticalBar()) {
                            _gotoNext = 3518424i32;
                        } else {
                            _gotoNext = 3518489i32;
                        };
                    } else if (__value__ == (3518424i32)) {
                        _p_3514867._stack = (_p_3514867._stack.__slice__(0, ((_p_3514867._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3518489i32)) {
                        _p_3514867._alternate();
                        _n_3518505 = (_p_3514867._stack.length);
                        if (_n_3518505 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3518534i32;
                        } else {
                            _gotoNext = 3518581i32;
                        };
                    } else if (__value__ == (3518534i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3518581i32;
                    } else if (__value__ == (3518581i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3514867._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
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
