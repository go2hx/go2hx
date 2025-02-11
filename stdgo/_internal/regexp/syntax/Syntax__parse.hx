package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3489159:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3488111:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3488106:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3489162:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3489563:stdgo.Error = (null : stdgo.Error);
            var _op_3486618:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _p_3486580:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _re_3489392:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _after_3488116:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3487783:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3486716:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3486634:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3489557:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3489079:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3489796:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3489793:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3489168:stdgo.Error = (null : stdgo.Error);
            var _after_3487908:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3486692:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3488091:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3486600:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3486438:stdgo.Error = (null : stdgo.Error);
            var _n_3490218:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3489554:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3488123:Bool = false;
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
                            _gotoNext = 3486391i32;
                        } else {
                            _gotoNext = 3486572i32;
                        };
                    } else if (__value__ == (3486391i32)) {
                        {
                            _err_3486438 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3486438 != null) {
                                _gotoNext = 3486470i32;
                            } else {
                                _gotoNext = 3486497i32;
                            };
                        };
                    } else if (__value__ == (3486470i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3486438 };
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
                        _gotoNext = 3486497i32;
                    } else if (__value__ == (3486497i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
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
                        _gotoNext = 3486572i32;
                    } else if (__value__ == (3486572i32)) {
                        _p_3486580._flags = _flags;
                        _p_3486580._wholeRegexp = _s?.__copy__();
                        _t_3486692 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3486700i32;
                    } else if (__value__ == (3486700i32)) {
                        if (_t_3486692 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3486712i32;
                        } else {
                            _gotoNext = 3490102i32;
                        };
                    } else if (__value__ == (3486712i32)) {
                        _repeat_3486716 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3486730i32;
                    } else if (__value__ == (3486730i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3486743i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3486692[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3486856i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3487126i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3487223i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3487319i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3487434i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3487564i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3487678i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3487760i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3488061i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3488617i32;
                                } else {
                                    _gotoNext = 3486759i32;
                                };
                            };
                        } else {
                            _gotoNext = 3490077i32;
                        };
                    } else if (__value__ == (3486759i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3486692?.__copy__());
                                _c_3486600 = @:tmpset0 __tmp__._0;
                                _t_3486692 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3486810i32;
                            } else {
                                _gotoNext = 3486840i32;
                            };
                        };
                    } else if (__value__ == (3486810i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3486840i32;
                    } else if (__value__ == (3486840i32)) {
                        @:check2 _p_3486580._literal(_c_3486600);
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3486856i32)) {
                        if ((((_p_3486580._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3486692.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3486692[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3486921i32;
                        } else {
                            _gotoNext = 3487064i32;
                        };
                    } else if (__value__ == (3486921i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3486580._parsePerlFlags(_t_3486692?.__copy__());
                                _t_3486692 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3487017i32;
                            } else {
                                _gotoNext = 3487050i32;
                            };
                        };
                    } else if (__value__ == (3487017i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3487050i32;
                    } else if (__value__ == (3487050i32)) {
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487064i32)) {
                        _p_3486580._numCap++;
                        @:check2 _p_3486580._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3486580._numCap;
                        _t_3486692 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487126i32)) {
                        {
                            _err = @:check2 _p_3486580._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3487181i32;
                            } else {
                                _gotoNext = 3487211i32;
                            };
                        };
                    } else if (__value__ == (3487181i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3487211i32;
                    } else if (__value__ == (3487211i32)) {
                        _t_3486692 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487223i32)) {
                        {
                            _err = @:check2 _p_3486580._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3487277i32;
                            } else {
                                _gotoNext = 3487307i32;
                            };
                        };
                    } else if (__value__ == (3487277i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3487307i32;
                    } else if (__value__ == (3487307i32)) {
                        _t_3486692 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487319i32)) {
                        if ((_p_3486580._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3487356i32;
                        } else {
                            _gotoNext = 3487390i32;
                        };
                    } else if (__value__ == (3487356i32)) {
                        @:check2 _p_3486580._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3487422i32;
                    } else if (__value__ == (3487390i32)) {
                        _gotoNext = 3487390i32;
                        @:check2 _p_3486580._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3487422i32;
                    } else if (__value__ == (3487422i32)) {
                        _t_3486692 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487434i32)) {
                        if ((_p_3486580._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3487471i32;
                        } else {
                            _gotoNext = 3487522i32;
                        };
                    } else if (__value__ == (3487471i32)) {
                        {
                            final __t__ = @:check2 _p_3486580._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3487552i32;
                    } else if (__value__ == (3487522i32)) {
                        _gotoNext = 3487522i32;
                        @:check2 _p_3486580._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3487552i32;
                    } else if (__value__ == (3487552i32)) {
                        _t_3486692 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487564i32)) {
                        if ((_p_3486580._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3487599i32;
                        } else {
                            _gotoNext = 3487631i32;
                        };
                    } else if (__value__ == (3487599i32)) {
                        @:check2 _p_3486580._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3487666i32;
                    } else if (__value__ == (3487631i32)) {
                        _gotoNext = 3487631i32;
                        @:check2 _p_3486580._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3487666i32;
                    } else if (__value__ == (3487666i32)) {
                        _t_3486692 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487678i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3486580._parseClass(_t_3486692?.__copy__());
                                _t_3486692 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3487731i32;
                            } else {
                                _gotoNext = 3490077i32;
                            };
                        };
                    } else if (__value__ == (3487731i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3487760i32)) {
                        _before_3487783 = _t_3486692?.__copy__();
                        _gotoNext = 3487798i32;
                    } else if (__value__ == (3487798i32)) {
                        {
                            final __value__ = _t_3486692[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3487815i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3487844i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3487873i32;
                            } else {
                                _gotoNext = 3487908i32;
                            };
                        };
                    } else if (__value__ == (3487815i32)) {
                        _op_3486618 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3487908i32;
                    } else if (__value__ == (3487844i32)) {
                        _op_3486618 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3487908i32;
                    } else if (__value__ == (3487873i32)) {
                        _op_3486618 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3487908i32;
                    } else if (__value__ == (3487908i32)) {
                        _after_3487908 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3486580._repeat(_op_3486618, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3487783?.__copy__(), _after_3487908?.__copy__(), _lastRepeat_3486634?.__copy__());
                                _after_3487908 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3488000i32;
                            } else {
                                _gotoNext = 3488030i32;
                            };
                        };
                    } else if (__value__ == (3488000i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3488030i32;
                    } else if (__value__ == (3488030i32)) {
                        _repeat_3486716 = _before_3487783?.__copy__();
                        _t_3486692 = _after_3487908?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3488061i32)) {
                        _op_3486618 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3488091 = _t_3486692?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3486580._parseRepeat(_t_3486692?.__copy__());
                            _min_3488106 = @:tmpset0 __tmp__._0;
                            _max_3488111 = @:tmpset0 __tmp__._1;
                            _after_3488116 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3488123 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3488123) {
                            _gotoNext = 3488156i32;
                        } else {
                            _gotoNext = 3488264i32;
                        };
                    } else if (__value__ == (3488156i32)) {
                        @:check2 _p_3486580._literal((123 : stdgo.GoInt32));
                        _t_3486692 = (_t_3486692.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3488264i32)) {
                        if (((((_min_3488106 < (0 : stdgo.GoInt) : Bool) || (_min_3488106 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3488111 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3488111 >= (0 : stdgo.GoInt) : Bool) && (_min_3488106 > _max_3488111 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3488328i32;
                        } else {
                            _gotoNext = 3488478i32;
                        };
                    } else if (__value__ == (3488328i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3488091.__slice__(0, ((_before_3488091.length) - (_after_3488116.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3488478i32;
                    } else if (__value__ == (3488478i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3486580._repeat(_op_3486618, _min_3488106, _max_3488111, _before_3488091?.__copy__(), _after_3488116?.__copy__(), _lastRepeat_3486634?.__copy__());
                                _after_3488116 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3488556i32;
                            } else {
                                _gotoNext = 3488586i32;
                            };
                        };
                    } else if (__value__ == (3488556i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3488586i32;
                    } else if (__value__ == (3488586i32)) {
                        _repeat_3486716 = _before_3488091?.__copy__();
                        _t_3486692 = _after_3488116?.__copy__();
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3488617i32)) {
                        if ((((_p_3486580._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3486692.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3488668i32;
                        } else {
                            _gotoNext = 3489392i32;
                        };
                    } else if (__value__ == (3488668i32)) {
                        _gotoNext = 3488674i32;
                    } else if (__value__ == (3488674i32)) {
                        {
                            final __value__ = _t_3486692[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3488692i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3488765i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3488841i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3488919i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3489014i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3489310i32;
                            } else {
                                _gotoNext = 3489392i32;
                            };
                        };
                    } else if (__value__ == (3488692i32)) {
                        @:check2 _p_3486580._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3486692 = (_t_3486692.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3488765i32)) {
                        @:check2 _p_3486580._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3486692 = (_t_3486692.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3488841i32)) {
                        @:check2 _p_3486580._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3486692 = (_t_3486692.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3488919i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3486692.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3489392i32;
                    } else if (__value__ == (3489014i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3486692.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3489079 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3486692 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3489137i32;
                    } else if (__value__ == (3489137i32)) {
                        if (_lit_3489079 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3489151i32;
                        } else {
                            _gotoNext = 3489290i32;
                        };
                    } else if (__value__ == (3489151i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3489079?.__copy__());
                            _c_3489159 = @:tmpset0 __tmp__._0;
                            _rest_3489162 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3489168 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3489168 != null) {
                            _gotoNext = 3489209i32;
                        } else {
                            _gotoNext = 3489248i32;
                        };
                    } else if (__value__ == (3489209i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3489168 };
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
                        _gotoNext = 3489248i32;
                    } else if (__value__ == (3489248i32)) {
                        @:check2 _p_3486580._literal(_c_3489159);
                        _lit_3489079 = _rest_3489162?.__copy__();
                        _gotoNext = 3489137i32;
                    } else if (__value__ == (3489290i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3489310i32)) {
                        @:check2 _p_3486580._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3486692 = (_t_3486692.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3489392i32)) {
                        _re_3489392 = @:check2 _p_3486580._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3489392 ?? throw "null pointer dereference").flags = _p_3486580._flags;
                        if ((((_t_3486692.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3486692[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3486692[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3489548i32;
                        } else {
                            _gotoNext = 3489790i32;
                        };
                    } else if (__value__ == (3489548i32)) {
                        {
                            var __tmp__ = @:check2 _p_3486580._parseUnicodeClass(_t_3486692?.__copy__(), ((@:checkr _re_3489392 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3489554 = @:tmpset0 __tmp__._0;
                            _rest_3489557 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3489563 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3489563 != null) {
                            _gotoNext = 3489625i32;
                        } else {
                            _gotoNext = 3489658i32;
                        };
                    } else if (__value__ == (3489625i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3489563 };
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
                        _gotoNext = 3489658i32;
                    } else if (__value__ == (3489658i32)) {
                        if (_r_3489554 != null) {
                            _gotoNext = 3489670i32;
                        } else {
                            _gotoNext = 3489790i32;
                        };
                    } else if (__value__ == (3489670i32)) {
                        (@:checkr _re_3489392 ?? throw "null pointer dereference").rune = _r_3489554;
                        _t_3486692 = _rest_3489557?.__copy__();
                        @:check2 _p_3486580._push(_re_3489392);
                        bigSwitchBreak = true;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3489790i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3486580._parsePerlClassEscape(_t_3486692?.__copy__(), ((@:checkr _re_3489392 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3489793 = @:tmpset0 __tmp__._0;
                                _rest_3489796 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3489793 != null) {
                                _gotoNext = 3489854i32;
                            } else {
                                _gotoNext = 3489928i32;
                            };
                        };
                    } else if (__value__ == (3489854i32)) {
                        (@:checkr _re_3489392 ?? throw "null pointer dereference").rune = _r_3489793;
                        _t_3486692 = _rest_3489796?.__copy__();
                        @:check2 _p_3486580._push(_re_3489392);
                        bigSwitchBreak = true;
                        _gotoNext = 3486743i32;
                    } else if (__value__ == (3489928i32)) {
                        @:check2 _p_3486580._reuse(_re_3489392);
                        {
                            {
                                var __tmp__ = @:check2 _p_3486580._parseEscape(_t_3486692?.__copy__());
                                _c_3486600 = @:tmpset0 __tmp__._0;
                                _t_3486692 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3490028i32;
                            } else {
                                _gotoNext = 3490058i32;
                            };
                        };
                    } else if (__value__ == (3490028i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3490058i32;
                    } else if (__value__ == (3490058i32)) {
                        @:check2 _p_3486580._literal(_c_3486600);
                        _gotoNext = 3490077i32;
                    } else if (__value__ == (3490077i32)) {
                        _lastRepeat_3486634 = _repeat_3486716?.__copy__();
                        _gotoNext = 3486700i32;
                    } else if (__value__ == (3490102i32)) {
                        @:check2 _p_3486580._concat();
                        if (@:check2 _p_3486580._swapVerticalBar()) {
                            _gotoNext = 3490137i32;
                        } else {
                            _gotoNext = 3490202i32;
                        };
                    } else if (__value__ == (3490137i32)) {
                        _p_3486580._stack = (_p_3486580._stack.__slice__(0, ((_p_3486580._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3490202i32;
                    } else if (__value__ == (3490202i32)) {
                        @:check2 _p_3486580._alternate();
                        _n_3490218 = (_p_3486580._stack.length);
                        if (_n_3490218 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3490247i32;
                        } else {
                            _gotoNext = 3490294i32;
                        };
                    } else if (__value__ == (3490247i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3490294i32;
                    } else if (__value__ == (3490294i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3486580._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
