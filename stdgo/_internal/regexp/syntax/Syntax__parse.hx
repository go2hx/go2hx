package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _r_19:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_16:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_13:Bool = false;
            var _lastRepeat_4:stdgo.GoString = ("" : stdgo.GoString);
            var _n_24:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_21:stdgo.Error = (null : stdgo.Error);
            var _before_9:stdgo.GoString = ("" : stdgo.GoString);
            var _before_7:stdgo.GoString = ("" : stdgo.GoString);
            var _c_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_22:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_17:stdgo.Error = (null : stdgo.Error);
            var _c_15:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_14:stdgo.GoString = ("" : stdgo.GoString);
            var _after_12:stdgo.GoString = ("" : stdgo.GoString);
            var _max_11:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_5:stdgo.GoString = ("" : stdgo.GoString);
            var _p_1:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _rest_23:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_20:stdgo.GoString = ("" : stdgo.GoString);
            var _min_10:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_6:stdgo.GoString = ("" : stdgo.GoString);
            var _re_18:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _after_8:stdgo.GoString = ("" : stdgo.GoString);
            var _err_0:stdgo.Error = (null : stdgo.Error);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    {
                                        var _r = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        {
                                            final __value__ = _r;
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3316209i32;
                        } else {
                            _gotoNext = 3316390i32;
                        };
                    } else if (__value__ == (3316209i32)) {
                        {
                            _err_0 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_0 != null) {
                                _gotoNext = 3316288i32;
                            } else {
                                _gotoNext = 3316315i32;
                            };
                        };
                    } else if (__value__ == (3316288i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_0 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3316315i32;
                    } else if (__value__ == (3316315i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3316390i32;
                    } else if (__value__ == (3316390i32)) {
                        _p_1._flags = _flags;
                        _p_1._wholeRegexp = _s?.__copy__();
                        _t_5 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3316518i32;
                    } else if (__value__ == (3316518i32)) {
                        if (_t_5 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3316530i32;
                        } else {
                            _gotoNext = 3319920i32;
                        };
                    } else if (__value__ == (3316530i32)) {
                        _repeat_6 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316548i32;
                    } else if (__value__ == (3316548i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3316561i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_5[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3316674i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3316944i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317041i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317137i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317252i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317382i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317496i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317578i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317879i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318435i32;
                                } else {
                                    _gotoNext = 3316577i32;
                                };
                            };
                        } else {
                            _gotoNext = 3319895i32;
                        };
                    } else if (__value__ == (3316577i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3316628i32;
                            } else {
                                _gotoNext = 3316658i32;
                            };
                        };
                    } else if (__value__ == (3316628i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3316658i32;
                    } else if (__value__ == (3316658i32)) {
                        @:check2 _p_1._literal(_c_2);
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3316674i32)) {
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_5[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3316739i32;
                        } else {
                            _gotoNext = 3316882i32;
                        };
                    } else if (__value__ == (3316739i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parsePerlFlags(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3316835i32;
                            } else {
                                _gotoNext = 3316868i32;
                            };
                        };
                    } else if (__value__ == (3316835i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3316868i32;
                    } else if (__value__ == (3316868i32)) {
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3316882i32)) {
                        _p_1._numCap++;
                        @:check2 _p_1._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_1._numCap;
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3316944i32)) {
                        {
                            _err = @:check2 _p_1._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3316999i32;
                            } else {
                                _gotoNext = 3317029i32;
                            };
                        };
                    } else if (__value__ == (3316999i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3317029i32;
                    } else if (__value__ == (3317029i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3317041i32)) {
                        {
                            _err = @:check2 _p_1._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3317095i32;
                            } else {
                                _gotoNext = 3317125i32;
                            };
                        };
                    } else if (__value__ == (3317095i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3317125i32;
                    } else if (__value__ == (3317125i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3317137i32)) {
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3317174i32;
                        } else {
                            _gotoNext = 3317208i32;
                        };
                    } else if (__value__ == (3317174i32)) {
                        @:check2 _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3317240i32;
                    } else if (__value__ == (3317208i32)) {
                        _gotoNext = 3317208i32;
                        @:check2 _p_1._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3317240i32;
                    } else if (__value__ == (3317240i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3317252i32)) {
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3317289i32;
                        } else {
                            _gotoNext = 3317340i32;
                        };
                    } else if (__value__ == (3317289i32)) {
                        {
                            final __t__ = @:check2 _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3317370i32;
                    } else if (__value__ == (3317340i32)) {
                        _gotoNext = 3317340i32;
                        @:check2 _p_1._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3317370i32;
                    } else if (__value__ == (3317370i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3317382i32)) {
                        if ((_p_1._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3317417i32;
                        } else {
                            _gotoNext = 3317449i32;
                        };
                    } else if (__value__ == (3317417i32)) {
                        @:check2 _p_1._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3317484i32;
                    } else if (__value__ == (3317449i32)) {
                        _gotoNext = 3317449i32;
                        @:check2 _p_1._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3317484i32;
                    } else if (__value__ == (3317484i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3317496i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parseClass(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3317549i32;
                            } else {
                                _gotoNext = 3319895i32;
                            };
                        };
                    } else if (__value__ == (3317549i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3317578i32)) {
                        _before_7 = _t_5?.__copy__();
                        _gotoNext = 3317616i32;
                    } else if (__value__ == (3317616i32)) {
                        {
                            final __value__ = _t_5[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3317633i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3317662i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3317691i32;
                            } else {
                                _gotoNext = 3317726i32;
                            };
                        };
                    } else if (__value__ == (3317633i32)) {
                        _op_3 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3317726i32;
                    } else if (__value__ == (3317662i32)) {
                        _op_3 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3317726i32;
                    } else if (__value__ == (3317691i32)) {
                        _op_3 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3317726i32;
                    } else if (__value__ == (3317726i32)) {
                        _after_8 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_1._repeat(_op_3, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_7?.__copy__(), _after_8?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_8 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3317818i32;
                            } else {
                                _gotoNext = 3317848i32;
                            };
                        };
                    } else if (__value__ == (3317818i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3317848i32;
                    } else if (__value__ == (3317848i32)) {
                        _repeat_6 = _before_7?.__copy__();
                        _t_5 = _after_8?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3317879i32)) {
                        _op_3 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_9 = _t_5?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_1._parseRepeat(_t_5?.__copy__());
                            _min_10 = @:tmpset0 __tmp__._0;
                            _max_11 = @:tmpset0 __tmp__._1;
                            _after_12 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_13 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_13) {
                            _gotoNext = 3317974i32;
                        } else {
                            _gotoNext = 3318082i32;
                        };
                    } else if (__value__ == (3317974i32)) {
                        @:check2 _p_1._literal((123 : stdgo.GoInt32));
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3318082i32)) {
                        if (((((_min_10 < (0 : stdgo.GoInt) : Bool) || (_min_10 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_11 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_11 >= (0 : stdgo.GoInt) : Bool) && (_min_10 > _max_11 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3318146i32;
                        } else {
                            _gotoNext = 3318296i32;
                        };
                    } else if (__value__ == (3318146i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_9.__slice__(0, ((_before_9.length) - (_after_12.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3318296i32;
                    } else if (__value__ == (3318296i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._repeat(_op_3, _min_10, _max_11, _before_9?.__copy__(), _after_12?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_12 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3318374i32;
                            } else {
                                _gotoNext = 3318404i32;
                            };
                        };
                    } else if (__value__ == (3318374i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3318404i32;
                    } else if (__value__ == (3318404i32)) {
                        _repeat_6 = _before_9?.__copy__();
                        _t_5 = _after_12?.__copy__();
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3318435i32)) {
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3318486i32;
                        } else {
                            _gotoNext = 3319210i32;
                        };
                    } else if (__value__ == (3318486i32)) {
                        _gotoNext = 3318492i32;
                    } else if (__value__ == (3318492i32)) {
                        {
                            final __value__ = _t_5[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3318510i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3318583i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3318659i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3318737i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3318832i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3319128i32;
                            } else {
                                _gotoNext = 3319210i32;
                            };
                        };
                    } else if (__value__ == (3318510i32)) {
                        @:check2 _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3318583i32)) {
                        @:check2 _p_1._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3318659i32)) {
                        @:check2 _p_1._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3318737i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_5.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3319210i32;
                    } else if (__value__ == (3318832i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_14 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3318955i32;
                    } else if (__value__ == (3318955i32)) {
                        if (_lit_14 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3318969i32;
                        } else {
                            _gotoNext = 3319108i32;
                        };
                    } else if (__value__ == (3318969i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_14?.__copy__());
                            _c_15 = @:tmpset0 __tmp__._0;
                            _rest_16 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_17 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_17 != null) {
                            _gotoNext = 3319027i32;
                        } else {
                            _gotoNext = 3319066i32;
                        };
                    } else if (__value__ == (3319027i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_17 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3319066i32;
                    } else if (__value__ == (3319066i32)) {
                        @:check2 _p_1._literal(_c_15);
                        _lit_14 = _rest_16?.__copy__();
                        _gotoNext = 3318955i32;
                    } else if (__value__ == (3319108i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3319128i32)) {
                        @:check2 _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3319210i32)) {
                        _re_18 = @:check2 _p_1._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_18 ?? throw "null pointer dereference").flags = _p_1._flags;
                        if ((((_t_5.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_5[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_5[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3319366i32;
                        } else {
                            _gotoNext = 3319608i32;
                        };
                    } else if (__value__ == (3319366i32)) {
                        {
                            var __tmp__ = @:check2 _p_1._parseUnicodeClass(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_19 = @:tmpset0 __tmp__._0;
                            _rest_20 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_21 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_21 != null) {
                            _gotoNext = 3319443i32;
                        } else {
                            _gotoNext = 3319476i32;
                        };
                    } else if (__value__ == (3319443i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_21 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3319476i32;
                    } else if (__value__ == (3319476i32)) {
                        if (_r_19 != null) {
                            _gotoNext = 3319488i32;
                        } else {
                            _gotoNext = 3319608i32;
                        };
                    } else if (__value__ == (3319488i32)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_19;
                        _t_5 = _rest_20?.__copy__();
                        @:check2 _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3319608i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parsePerlClassEscape(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_22 = @:tmpset0 __tmp__._0;
                                _rest_23 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_22 != null) {
                                _gotoNext = 3319672i32;
                            } else {
                                _gotoNext = 3319746i32;
                            };
                        };
                    } else if (__value__ == (3319672i32)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_22;
                        _t_5 = _rest_23?.__copy__();
                        @:check2 _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3316561i32;
                    } else if (__value__ == (3319746i32)) {
                        @:check2 _p_1._reuse(_re_18);
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parseEscape(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3319846i32;
                            } else {
                                _gotoNext = 3319876i32;
                            };
                        };
                    } else if (__value__ == (3319846i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3319876i32;
                    } else if (__value__ == (3319876i32)) {
                        @:check2 _p_1._literal(_c_2);
                        _gotoNext = 3319895i32;
                    } else if (__value__ == (3319895i32)) {
                        _lastRepeat_4 = _repeat_6?.__copy__();
                        _gotoNext = 3316518i32;
                    } else if (__value__ == (3319920i32)) {
                        @:check2 _p_1._concat();
                        if (@:check2 _p_1._swapVerticalBar()) {
                            _gotoNext = 3319955i32;
                        } else {
                            _gotoNext = 3320020i32;
                        };
                    } else if (__value__ == (3319955i32)) {
                        _p_1._stack = (_p_1._stack.__slice__(0, ((_p_1._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3320020i32;
                    } else if (__value__ == (3320020i32)) {
                        @:check2 _p_1._alternate();
                        _n_24 = (_p_1._stack.length);
                        if (_n_24 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3320065i32;
                        } else {
                            _gotoNext = 3320112i32;
                        };
                    } else if (__value__ == (3320065i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3320112i32;
                    } else if (__value__ == (3320112i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_1._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        };
    }
