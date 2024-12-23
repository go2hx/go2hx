package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _before_3272062:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3274075:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3273438:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3270859:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _ok_3272402:Bool = false;
            var _before_3272370:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3272187:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3270897:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3274072:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _t_3270971:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3273842:stdgo.Error = (null : stdgo.Error);
            var _r_3273833:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3272395:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3270717:stdgo.Error = (null : stdgo.Error);
            var _rest_3273836:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3273358:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3270913:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3270879:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3272385:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n_3274497:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3273441:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3270995:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3273447:stdgo.Error = (null : stdgo.Error);
            var _max_3272390:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _re_3273671:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
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
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3270670i32;
                        } else {
                            _gotoNext = 3270851i32;
                        };
                    } else if (__value__ == (3270670i32)) {
                        {
                            _err_3270717 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3270717 != null) {
                                _gotoNext = 3270749i32;
                            } else {
                                _gotoNext = 3270776i32;
                            };
                        };
                    } else if (__value__ == (3270749i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3270717 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3270776i32;
                    } else if (__value__ == (3270776i32)) {
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
                        _gotoNext = 3270851i32;
                    } else if (__value__ == (3270851i32)) {
                        _p_3270859._flags = _flags;
                        _p_3270859._wholeRegexp = _s?.__copy__();
                        _t_3270971 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3270979i32;
                    } else if (__value__ == (3270979i32)) {
                        if (_t_3270971 != (stdgo.Go.str())) {
                            _gotoNext = 3270991i32;
                        } else {
                            _gotoNext = 3274381i32;
                        };
                    } else if (__value__ == (3270991i32)) {
                        _repeat_3270995 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3271009i32;
                    } else if (__value__ == (3271009i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3271022i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3270971[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3271135i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3271405i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3271502i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3271598i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3271713i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3271843i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3271957i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3272039i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3272340i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3272896i32;
                                } else {
                                    _gotoNext = 3271038i32;
                                };
                            };
                        } else {
                            _gotoNext = 3274356i32;
                        };
                    } else if (__value__ == (3271038i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3270971?.__copy__());
                                _c_3270879 = __tmp__._0;
                                _t_3270971 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3271089i32;
                            } else {
                                _gotoNext = 3271119i32;
                            };
                        };
                    } else if (__value__ == (3271089i32)) {
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
                        _gotoNext = 3271119i32;
                    } else if (__value__ == (3271119i32)) {
                        _p_3270859._literal(_c_3270879);
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271135i32)) {
                        if ((((_p_3270859._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3270971.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3270971[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3271200i32;
                        } else {
                            _gotoNext = 3271343i32;
                        };
                    } else if (__value__ == (3271200i32)) {
                        {
                            {
                                var __tmp__ = _p_3270859._parsePerlFlags(_t_3270971?.__copy__());
                                _t_3270971 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3271296i32;
                            } else {
                                _gotoNext = 3271329i32;
                            };
                        };
                    } else if (__value__ == (3271296i32)) {
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
                        _gotoNext = 3271329i32;
                    } else if (__value__ == (3271329i32)) {
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271343i32)) {
                        _p_3270859._numCap++;
                        _p_3270859._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3270859._numCap;
                        _t_3270971 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271405i32)) {
                        {
                            _err = _p_3270859._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3271460i32;
                            } else {
                                _gotoNext = 3271490i32;
                            };
                        };
                    } else if (__value__ == (3271460i32)) {
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
                        _gotoNext = 3271490i32;
                    } else if (__value__ == (3271490i32)) {
                        _t_3270971 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271502i32)) {
                        {
                            _err = _p_3270859._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3271556i32;
                            } else {
                                _gotoNext = 3271586i32;
                            };
                        };
                    } else if (__value__ == (3271556i32)) {
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
                        _gotoNext = 3271586i32;
                    } else if (__value__ == (3271586i32)) {
                        _t_3270971 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271598i32)) {
                        if ((_p_3270859._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3271635i32;
                        } else {
                            _gotoNext = 3271669i32;
                        };
                    } else if (__value__ == (3271635i32)) {
                        _p_3270859._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3271701i32;
                    } else if (__value__ == (3271669i32)) {
                        _gotoNext = 3271669i32;
                        _p_3270859._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3271701i32;
                    } else if (__value__ == (3271701i32)) {
                        _t_3270971 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271713i32)) {
                        if ((_p_3270859._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3271750i32;
                        } else {
                            _gotoNext = 3271801i32;
                        };
                    } else if (__value__ == (3271750i32)) {
                        {
                            final __t__ = _p_3270859._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3271831i32;
                    } else if (__value__ == (3271801i32)) {
                        _gotoNext = 3271801i32;
                        _p_3270859._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3271831i32;
                    } else if (__value__ == (3271831i32)) {
                        _t_3270971 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271843i32)) {
                        if ((_p_3270859._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3271878i32;
                        } else {
                            _gotoNext = 3271910i32;
                        };
                    } else if (__value__ == (3271878i32)) {
                        _p_3270859._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3271945i32;
                    } else if (__value__ == (3271910i32)) {
                        _gotoNext = 3271910i32;
                        _p_3270859._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3271945i32;
                    } else if (__value__ == (3271945i32)) {
                        _t_3270971 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3271957i32)) {
                        {
                            {
                                var __tmp__ = _p_3270859._parseClass(_t_3270971?.__copy__());
                                _t_3270971 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3272010i32;
                            } else {
                                _gotoNext = 3274356i32;
                            };
                        };
                    } else if (__value__ == (3272010i32)) {
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
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3272039i32)) {
                        _before_3272062 = _t_3270971?.__copy__();
                        _gotoNext = 3272077i32;
                    } else if (__value__ == (3272077i32)) {
                        {
                            final __value__ = _t_3270971[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3272094i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3272123i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3272152i32;
                            } else {
                                _gotoNext = 3272187i32;
                            };
                        };
                    } else if (__value__ == (3272094i32)) {
                        _op_3270897 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3272187i32;
                    } else if (__value__ == (3272123i32)) {
                        _op_3270897 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3272187i32;
                    } else if (__value__ == (3272152i32)) {
                        _op_3270897 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3272187i32;
                    } else if (__value__ == (3272187i32)) {
                        _after_3272187 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3270859._repeat(_op_3270897, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3272062?.__copy__(), _after_3272187?.__copy__(), _lastRepeat_3270913?.__copy__());
                                _after_3272187 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3272279i32;
                            } else {
                                _gotoNext = 3272309i32;
                            };
                        };
                    } else if (__value__ == (3272279i32)) {
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
                        _gotoNext = 3272309i32;
                    } else if (__value__ == (3272309i32)) {
                        _repeat_3270995 = _before_3272062?.__copy__();
                        _t_3270971 = _after_3272187?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3272340i32)) {
                        _op_3270897 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3272370 = _t_3270971?.__copy__();
                        {
                            var __tmp__ = _p_3270859._parseRepeat(_t_3270971?.__copy__());
                            _min_3272385 = __tmp__._0;
                            _max_3272390 = __tmp__._1;
                            _after_3272395 = __tmp__._2?.__copy__();
                            _ok_3272402 = __tmp__._3;
                        };
                        if (!_ok_3272402) {
                            _gotoNext = 3272435i32;
                        } else {
                            _gotoNext = 3272543i32;
                        };
                    } else if (__value__ == (3272435i32)) {
                        _p_3270859._literal((123 : stdgo.GoInt32));
                        _t_3270971 = (_t_3270971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3272543i32)) {
                        if (((((_min_3272385 < (0 : stdgo.GoInt) : Bool) || (_min_3272385 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3272390 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3272390 >= (0 : stdgo.GoInt) : Bool) && (_min_3272385 > _max_3272390 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3272607i32;
                        } else {
                            _gotoNext = 3272757i32;
                        };
                    } else if (__value__ == (3272607i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3272370.__slice__(0, ((_before_3272370.length) - (_after_3272395.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3272757i32;
                    } else if (__value__ == (3272757i32)) {
                        {
                            {
                                var __tmp__ = _p_3270859._repeat(_op_3270897, _min_3272385, _max_3272390, _before_3272370?.__copy__(), _after_3272395?.__copy__(), _lastRepeat_3270913?.__copy__());
                                _after_3272395 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3272835i32;
                            } else {
                                _gotoNext = 3272865i32;
                            };
                        };
                    } else if (__value__ == (3272835i32)) {
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
                        _gotoNext = 3272865i32;
                    } else if (__value__ == (3272865i32)) {
                        _repeat_3270995 = _before_3272370?.__copy__();
                        _t_3270971 = _after_3272395?.__copy__();
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3272896i32)) {
                        if ((((_p_3270859._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3270971.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3272947i32;
                        } else {
                            _gotoNext = 3273671i32;
                        };
                    } else if (__value__ == (3272947i32)) {
                        _gotoNext = 3272953i32;
                    } else if (__value__ == (3272953i32)) {
                        {
                            final __value__ = _t_3270971[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3272971i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3273044i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3273120i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3273198i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3273293i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3273589i32;
                            } else {
                                _gotoNext = 3273671i32;
                            };
                        };
                    } else if (__value__ == (3272971i32)) {
                        _p_3270859._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3270971 = (_t_3270971.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3273044i32)) {
                        _p_3270859._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3270971 = (_t_3270971.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3273120i32)) {
                        _p_3270859._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3270971 = (_t_3270971.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3273198i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3270971.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3273671i32;
                    } else if (__value__ == (3273293i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3270971.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3273358 = __tmp__._0?.__copy__();
                            _t_3270971 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3273416i32;
                    } else if (__value__ == (3273416i32)) {
                        if (_lit_3273358 != (stdgo.Go.str())) {
                            _gotoNext = 3273430i32;
                        } else {
                            _gotoNext = 3273569i32;
                        };
                    } else if (__value__ == (3273430i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3273358?.__copy__());
                            _c_3273438 = __tmp__._0;
                            _rest_3273441 = __tmp__._1?.__copy__();
                            _err_3273447 = __tmp__._2;
                        };
                        if (_err_3273447 != null) {
                            _gotoNext = 3273488i32;
                        } else {
                            _gotoNext = 3273527i32;
                        };
                    } else if (__value__ == (3273488i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3273447 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3273527i32;
                    } else if (__value__ == (3273527i32)) {
                        _p_3270859._literal(_c_3273438);
                        _lit_3273358 = _rest_3273441?.__copy__();
                        _gotoNext = 3273416i32;
                    } else if (__value__ == (3273569i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3273589i32)) {
                        _p_3270859._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3270971 = (_t_3270971.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3273671i32)) {
                        _re_3273671 = _p_3270859._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3273671.flags = _p_3270859._flags;
                        if ((((_t_3270971.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3270971[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3270971[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3273827i32;
                        } else {
                            _gotoNext = 3274069i32;
                        };
                    } else if (__value__ == (3273827i32)) {
                        {
                            var __tmp__ = _p_3270859._parseUnicodeClass(_t_3270971?.__copy__(), (_re_3273671.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3273833 = __tmp__._0;
                            _rest_3273836 = __tmp__._1?.__copy__();
                            _err_3273842 = __tmp__._2;
                        };
                        if (_err_3273842 != null) {
                            _gotoNext = 3273904i32;
                        } else {
                            _gotoNext = 3273937i32;
                        };
                    } else if (__value__ == (3273904i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3273842 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3273937i32;
                    } else if (__value__ == (3273937i32)) {
                        if (_r_3273833 != null) {
                            _gotoNext = 3273949i32;
                        } else {
                            _gotoNext = 3274069i32;
                        };
                    } else if (__value__ == (3273949i32)) {
                        _re_3273671.rune = _r_3273833;
                        _t_3270971 = _rest_3273836?.__copy__();
                        _p_3270859._push(_re_3273671);
                        bigSwitchBreak = true;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3274069i32)) {
                        {
                            {
                                var __tmp__ = _p_3270859._parsePerlClassEscape(_t_3270971?.__copy__(), (_re_3273671.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3274072 = __tmp__._0;
                                _rest_3274075 = __tmp__._1?.__copy__();
                            };
                            if (_r_3274072 != null) {
                                _gotoNext = 3274133i32;
                            } else {
                                _gotoNext = 3274207i32;
                            };
                        };
                    } else if (__value__ == (3274133i32)) {
                        _re_3273671.rune = _r_3274072;
                        _t_3270971 = _rest_3274075?.__copy__();
                        _p_3270859._push(_re_3273671);
                        bigSwitchBreak = true;
                        _gotoNext = 3271022i32;
                    } else if (__value__ == (3274207i32)) {
                        _p_3270859._reuse(_re_3273671);
                        {
                            {
                                var __tmp__ = _p_3270859._parseEscape(_t_3270971?.__copy__());
                                _c_3270879 = __tmp__._0;
                                _t_3270971 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3274307i32;
                            } else {
                                _gotoNext = 3274337i32;
                            };
                        };
                    } else if (__value__ == (3274307i32)) {
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
                        _gotoNext = 3274337i32;
                    } else if (__value__ == (3274337i32)) {
                        _p_3270859._literal(_c_3270879);
                        _gotoNext = 3274356i32;
                    } else if (__value__ == (3274356i32)) {
                        _lastRepeat_3270913 = _repeat_3270995?.__copy__();
                        _gotoNext = 3270979i32;
                    } else if (__value__ == (3274381i32)) {
                        _p_3270859._concat();
                        if (_p_3270859._swapVerticalBar()) {
                            _gotoNext = 3274416i32;
                        } else {
                            _gotoNext = 3274481i32;
                        };
                    } else if (__value__ == (3274416i32)) {
                        _p_3270859._stack = (_p_3270859._stack.__slice__(0, ((_p_3270859._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3274481i32;
                    } else if (__value__ == (3274481i32)) {
                        _p_3270859._alternate();
                        _n_3274497 = (_p_3270859._stack.length);
                        if (_n_3274497 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3274526i32;
                        } else {
                            _gotoNext = 3274573i32;
                        };
                    } else if (__value__ == (3274526i32)) {
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
                        _gotoNext = 3274573i32;
                    } else if (__value__ == (3274573i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3270859._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
