package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _p_3438692:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _before_3439895:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3438730:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _ok_3440235:Bool = false;
            var _t_3438804:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3441908:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3441675:stdgo.Error = (null : stdgo.Error);
            var _min_3440218:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3440020:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3438828:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3438746:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3438550:stdgo.Error = (null : stdgo.Error);
            var _rest_3441274:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3441191:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3442330:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3441666:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3441280:stdgo.Error = (null : stdgo.Error);
            var _c_3441271:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3440228:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3440223:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3441669:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3441504:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _c_3438712:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3441905:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3440203:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3438503i32;
                        } else {
                            _gotoNext = 3438684i32;
                        };
                    } else if (__value__ == (3438503i32)) {
                        {
                            _err_3438550 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3438550 != null) {
                                _gotoNext = 3438582i32;
                            } else {
                                _gotoNext = 3438609i32;
                            };
                        };
                    } else if (__value__ == (3438582i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3438550 };
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
                        _gotoNext = 3438609i32;
                    } else if (__value__ == (3438609i32)) {
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
                        _gotoNext = 3438684i32;
                    } else if (__value__ == (3438684i32)) {
                        _p_3438692._flags = _flags;
                        _p_3438692._wholeRegexp = _s?.__copy__();
                        _t_3438804 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3438812i32;
                    } else if (__value__ == (3438812i32)) {
                        if (_t_3438804 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3438824i32;
                        } else {
                            _gotoNext = 3442214i32;
                        };
                    } else if (__value__ == (3438824i32)) {
                        _repeat_3438828 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3438842i32;
                    } else if (__value__ == (3438842i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3438855i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3438804[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3438968i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3439238i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3439335i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3439431i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3439546i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3439676i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3439790i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3439872i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3440173i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3440729i32;
                                } else {
                                    _gotoNext = 3438871i32;
                                };
                            };
                        } else {
                            _gotoNext = 3442189i32;
                        };
                    } else if (__value__ == (3438871i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3438804?.__copy__());
                                _c_3438712 = @:tmpset0 __tmp__._0;
                                _t_3438804 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3438922i32;
                            } else {
                                _gotoNext = 3438952i32;
                            };
                        };
                    } else if (__value__ == (3438922i32)) {
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
                        _gotoNext = 3438952i32;
                    } else if (__value__ == (3438952i32)) {
                        @:check2 _p_3438692._literal(_c_3438712);
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3438968i32)) {
                        if ((((_p_3438692._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3438804.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3438804[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3439033i32;
                        } else {
                            _gotoNext = 3439176i32;
                        };
                    } else if (__value__ == (3439033i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3438692._parsePerlFlags(_t_3438804?.__copy__());
                                _t_3438804 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3439129i32;
                            } else {
                                _gotoNext = 3439162i32;
                            };
                        };
                    } else if (__value__ == (3439129i32)) {
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
                        _gotoNext = 3439162i32;
                    } else if (__value__ == (3439162i32)) {
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439176i32)) {
                        _p_3438692._numCap++;
                        @:check2 _p_3438692._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3438692._numCap;
                        _t_3438804 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439238i32)) {
                        {
                            _err = @:check2 _p_3438692._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3439293i32;
                            } else {
                                _gotoNext = 3439323i32;
                            };
                        };
                    } else if (__value__ == (3439293i32)) {
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
                        _gotoNext = 3439323i32;
                    } else if (__value__ == (3439323i32)) {
                        _t_3438804 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439335i32)) {
                        {
                            _err = @:check2 _p_3438692._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3439389i32;
                            } else {
                                _gotoNext = 3439419i32;
                            };
                        };
                    } else if (__value__ == (3439389i32)) {
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
                        _gotoNext = 3439419i32;
                    } else if (__value__ == (3439419i32)) {
                        _t_3438804 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439431i32)) {
                        if ((_p_3438692._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3439468i32;
                        } else {
                            _gotoNext = 3439502i32;
                        };
                    } else if (__value__ == (3439468i32)) {
                        @:check2 _p_3438692._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3439534i32;
                    } else if (__value__ == (3439502i32)) {
                        _gotoNext = 3439502i32;
                        @:check2 _p_3438692._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3439534i32;
                    } else if (__value__ == (3439534i32)) {
                        _t_3438804 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439546i32)) {
                        if ((_p_3438692._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3439583i32;
                        } else {
                            _gotoNext = 3439634i32;
                        };
                    } else if (__value__ == (3439583i32)) {
                        {
                            final __t__ = @:check2 _p_3438692._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3439664i32;
                    } else if (__value__ == (3439634i32)) {
                        _gotoNext = 3439634i32;
                        @:check2 _p_3438692._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3439664i32;
                    } else if (__value__ == (3439664i32)) {
                        _t_3438804 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439676i32)) {
                        if ((_p_3438692._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3439711i32;
                        } else {
                            _gotoNext = 3439743i32;
                        };
                    } else if (__value__ == (3439711i32)) {
                        @:check2 _p_3438692._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3439778i32;
                    } else if (__value__ == (3439743i32)) {
                        _gotoNext = 3439743i32;
                        @:check2 _p_3438692._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3439778i32;
                    } else if (__value__ == (3439778i32)) {
                        _t_3438804 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439790i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3438692._parseClass(_t_3438804?.__copy__());
                                _t_3438804 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3439843i32;
                            } else {
                                _gotoNext = 3442189i32;
                            };
                        };
                    } else if (__value__ == (3439843i32)) {
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
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3439872i32)) {
                        _before_3439895 = _t_3438804?.__copy__();
                        _gotoNext = 3439910i32;
                    } else if (__value__ == (3439910i32)) {
                        {
                            final __value__ = _t_3438804[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3439927i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3439956i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3439985i32;
                            } else {
                                _gotoNext = 3440020i32;
                            };
                        };
                    } else if (__value__ == (3439927i32)) {
                        _op_3438730 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3440020i32;
                    } else if (__value__ == (3439956i32)) {
                        _op_3438730 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3440020i32;
                    } else if (__value__ == (3439985i32)) {
                        _op_3438730 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3440020i32;
                    } else if (__value__ == (3440020i32)) {
                        _after_3440020 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3438692._repeat(_op_3438730, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3439895?.__copy__(), _after_3440020?.__copy__(), _lastRepeat_3438746?.__copy__());
                                _after_3440020 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3440112i32;
                            } else {
                                _gotoNext = 3440142i32;
                            };
                        };
                    } else if (__value__ == (3440112i32)) {
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
                        _gotoNext = 3440142i32;
                    } else if (__value__ == (3440142i32)) {
                        _repeat_3438828 = _before_3439895?.__copy__();
                        _t_3438804 = _after_3440020?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3440173i32)) {
                        _op_3438730 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3440203 = _t_3438804?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3438692._parseRepeat(_t_3438804?.__copy__());
                            _min_3440218 = @:tmpset0 __tmp__._0;
                            _max_3440223 = @:tmpset0 __tmp__._1;
                            _after_3440228 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3440235 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3440235) {
                            _gotoNext = 3440268i32;
                        } else {
                            _gotoNext = 3440376i32;
                        };
                    } else if (__value__ == (3440268i32)) {
                        @:check2 _p_3438692._literal((123 : stdgo.GoInt32));
                        _t_3438804 = (_t_3438804.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3440376i32)) {
                        if (((((_min_3440218 < (0 : stdgo.GoInt) : Bool) || (_min_3440218 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3440223 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3440223 >= (0 : stdgo.GoInt) : Bool) && (_min_3440218 > _max_3440223 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3440440i32;
                        } else {
                            _gotoNext = 3440590i32;
                        };
                    } else if (__value__ == (3440440i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3440203.__slice__(0, ((_before_3440203.length) - (_after_3440228.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3440590i32;
                    } else if (__value__ == (3440590i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3438692._repeat(_op_3438730, _min_3440218, _max_3440223, _before_3440203?.__copy__(), _after_3440228?.__copy__(), _lastRepeat_3438746?.__copy__());
                                _after_3440228 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3440668i32;
                            } else {
                                _gotoNext = 3440698i32;
                            };
                        };
                    } else if (__value__ == (3440668i32)) {
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
                        _gotoNext = 3440698i32;
                    } else if (__value__ == (3440698i32)) {
                        _repeat_3438828 = _before_3440203?.__copy__();
                        _t_3438804 = _after_3440228?.__copy__();
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3440729i32)) {
                        if ((((_p_3438692._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3438804.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3440780i32;
                        } else {
                            _gotoNext = 3441504i32;
                        };
                    } else if (__value__ == (3440780i32)) {
                        _gotoNext = 3440786i32;
                    } else if (__value__ == (3440786i32)) {
                        {
                            final __value__ = _t_3438804[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3440804i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3440877i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3440953i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3441031i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3441126i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3441422i32;
                            } else {
                                _gotoNext = 3441504i32;
                            };
                        };
                    } else if (__value__ == (3440804i32)) {
                        @:check2 _p_3438692._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3438804 = (_t_3438804.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3440877i32)) {
                        @:check2 _p_3438692._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3438804 = (_t_3438804.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3440953i32)) {
                        @:check2 _p_3438692._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3438804 = (_t_3438804.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3441031i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3438804.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3441504i32;
                    } else if (__value__ == (3441126i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3438804.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3441191 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3438804 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3441249i32;
                    } else if (__value__ == (3441249i32)) {
                        if (_lit_3441191 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3441263i32;
                        } else {
                            _gotoNext = 3441402i32;
                        };
                    } else if (__value__ == (3441263i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3441191?.__copy__());
                            _c_3441271 = @:tmpset0 __tmp__._0;
                            _rest_3441274 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3441280 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3441280 != null) {
                            _gotoNext = 3441321i32;
                        } else {
                            _gotoNext = 3441360i32;
                        };
                    } else if (__value__ == (3441321i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3441280 };
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
                        _gotoNext = 3441360i32;
                    } else if (__value__ == (3441360i32)) {
                        @:check2 _p_3438692._literal(_c_3441271);
                        _lit_3441191 = _rest_3441274?.__copy__();
                        _gotoNext = 3441249i32;
                    } else if (__value__ == (3441402i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3441422i32)) {
                        @:check2 _p_3438692._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3438804 = (_t_3438804.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3441504i32)) {
                        _re_3441504 = @:check2 _p_3438692._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3441504 ?? throw "null pointer dereference").flags = _p_3438692._flags;
                        if ((((_t_3438804.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3438804[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3438804[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3441660i32;
                        } else {
                            _gotoNext = 3441902i32;
                        };
                    } else if (__value__ == (3441660i32)) {
                        {
                            var __tmp__ = @:check2 _p_3438692._parseUnicodeClass(_t_3438804?.__copy__(), ((@:checkr _re_3441504 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3441666 = @:tmpset0 __tmp__._0;
                            _rest_3441669 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3441675 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3441675 != null) {
                            _gotoNext = 3441737i32;
                        } else {
                            _gotoNext = 3441770i32;
                        };
                    } else if (__value__ == (3441737i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3441675 };
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
                        _gotoNext = 3441770i32;
                    } else if (__value__ == (3441770i32)) {
                        if (_r_3441666 != null) {
                            _gotoNext = 3441782i32;
                        } else {
                            _gotoNext = 3441902i32;
                        };
                    } else if (__value__ == (3441782i32)) {
                        (@:checkr _re_3441504 ?? throw "null pointer dereference").rune = _r_3441666;
                        _t_3438804 = _rest_3441669?.__copy__();
                        @:check2 _p_3438692._push(_re_3441504);
                        bigSwitchBreak = true;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3441902i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3438692._parsePerlClassEscape(_t_3438804?.__copy__(), ((@:checkr _re_3441504 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3441905 = @:tmpset0 __tmp__._0;
                                _rest_3441908 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3441905 != null) {
                                _gotoNext = 3441966i32;
                            } else {
                                _gotoNext = 3442040i32;
                            };
                        };
                    } else if (__value__ == (3441966i32)) {
                        (@:checkr _re_3441504 ?? throw "null pointer dereference").rune = _r_3441905;
                        _t_3438804 = _rest_3441908?.__copy__();
                        @:check2 _p_3438692._push(_re_3441504);
                        bigSwitchBreak = true;
                        _gotoNext = 3438855i32;
                    } else if (__value__ == (3442040i32)) {
                        @:check2 _p_3438692._reuse(_re_3441504);
                        {
                            {
                                var __tmp__ = @:check2 _p_3438692._parseEscape(_t_3438804?.__copy__());
                                _c_3438712 = @:tmpset0 __tmp__._0;
                                _t_3438804 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3442140i32;
                            } else {
                                _gotoNext = 3442170i32;
                            };
                        };
                    } else if (__value__ == (3442140i32)) {
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
                        _gotoNext = 3442170i32;
                    } else if (__value__ == (3442170i32)) {
                        @:check2 _p_3438692._literal(_c_3438712);
                        _gotoNext = 3442189i32;
                    } else if (__value__ == (3442189i32)) {
                        _lastRepeat_3438746 = _repeat_3438828?.__copy__();
                        _gotoNext = 3438812i32;
                    } else if (__value__ == (3442214i32)) {
                        @:check2 _p_3438692._concat();
                        if (@:check2 _p_3438692._swapVerticalBar()) {
                            _gotoNext = 3442249i32;
                        } else {
                            _gotoNext = 3442314i32;
                        };
                    } else if (__value__ == (3442249i32)) {
                        _p_3438692._stack = (_p_3438692._stack.__slice__(0, ((_p_3438692._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3442314i32;
                    } else if (__value__ == (3442314i32)) {
                        @:check2 _p_3438692._alternate();
                        _n_3442330 = (_p_3438692._stack.length);
                        if (_n_3442330 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3442359i32;
                        } else {
                            _gotoNext = 3442406i32;
                        };
                    } else if (__value__ == (3442359i32)) {
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
                        _gotoNext = 3442406i32;
                    } else if (__value__ == (3442406i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3438692._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
