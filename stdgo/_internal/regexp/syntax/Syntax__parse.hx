package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _rest_3586968:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3583864:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3585295:Bool = false;
            var _p_3583752:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _err_3583610:stdgo.Error = (null : stdgo.Error);
            var _err_3586735:stdgo.Error = (null : stdgo.Error);
            var _before_3585263:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3585080:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3583790:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _r_3586965:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3586729:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3585288:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3585278:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3584955:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3583888:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3583806:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3587390:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3586726:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3586334:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3586331:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3586251:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3586340:stdgo.Error = (null : stdgo.Error);
            var _max_3585283:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3583772:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_3586564:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
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
                            _gotoNext = 3583563i32;
                        } else {
                            _gotoNext = 3583744i32;
                        };
                    } else if (__value__ == (3583563i32)) {
                        {
                            _err_3583610 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3583610 != null) {
                                _gotoNext = 3583642i32;
                            } else {
                                _gotoNext = 3583669i32;
                            };
                        };
                    } else if (__value__ == (3583642i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3583610 };
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
                        _gotoNext = 3583669i32;
                    } else if (__value__ == (3583669i32)) {
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
                        _gotoNext = 3583744i32;
                    } else if (__value__ == (3583744i32)) {
                        _p_3583752._flags = _flags;
                        _p_3583752._wholeRegexp = _s?.__copy__();
                        _t_3583864 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3583872i32;
                    } else if (__value__ == (3583872i32)) {
                        if (_t_3583864 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3583884i32;
                        } else {
                            _gotoNext = 3587274i32;
                        };
                    } else if (__value__ == (3583884i32)) {
                        _repeat_3583888 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3583902i32;
                    } else if (__value__ == (3583902i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3583915i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3583864[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584028i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584298i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584395i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584491i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584606i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584736i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584850i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3584932i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3585233i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3585789i32;
                                } else {
                                    _gotoNext = 3583931i32;
                                };
                            };
                        } else {
                            _gotoNext = 3587249i32;
                        };
                    } else if (__value__ == (3583931i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3583864?.__copy__());
                                _c_3583772 = @:tmpset0 __tmp__._0;
                                _t_3583864 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3583982i32;
                            } else {
                                _gotoNext = 3584012i32;
                            };
                        };
                    } else if (__value__ == (3583982i32)) {
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
                        _gotoNext = 3584012i32;
                    } else if (__value__ == (3584012i32)) {
                        @:check2 _p_3583752._literal(_c_3583772);
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584028i32)) {
                        if ((((_p_3583752._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3583864.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3583864[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3584093i32;
                        } else {
                            _gotoNext = 3584236i32;
                        };
                    } else if (__value__ == (3584093i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3583752._parsePerlFlags(_t_3583864?.__copy__());
                                _t_3583864 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3584189i32;
                            } else {
                                _gotoNext = 3584222i32;
                            };
                        };
                    } else if (__value__ == (3584189i32)) {
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
                        _gotoNext = 3584222i32;
                    } else if (__value__ == (3584222i32)) {
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584236i32)) {
                        _p_3583752._numCap++;
                        @:check2 _p_3583752._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3583752._numCap;
                        _t_3583864 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584298i32)) {
                        {
                            _err = @:check2 _p_3583752._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3584353i32;
                            } else {
                                _gotoNext = 3584383i32;
                            };
                        };
                    } else if (__value__ == (3584353i32)) {
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
                        _gotoNext = 3584383i32;
                    } else if (__value__ == (3584383i32)) {
                        _t_3583864 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584395i32)) {
                        {
                            _err = @:check2 _p_3583752._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3584449i32;
                            } else {
                                _gotoNext = 3584479i32;
                            };
                        };
                    } else if (__value__ == (3584449i32)) {
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
                        _gotoNext = 3584479i32;
                    } else if (__value__ == (3584479i32)) {
                        _t_3583864 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584491i32)) {
                        if ((_p_3583752._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3584528i32;
                        } else {
                            _gotoNext = 3584562i32;
                        };
                    } else if (__value__ == (3584528i32)) {
                        @:check2 _p_3583752._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3584594i32;
                    } else if (__value__ == (3584562i32)) {
                        _gotoNext = 3584562i32;
                        @:check2 _p_3583752._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3584594i32;
                    } else if (__value__ == (3584594i32)) {
                        _t_3583864 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584606i32)) {
                        if ((_p_3583752._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3584643i32;
                        } else {
                            _gotoNext = 3584694i32;
                        };
                    } else if (__value__ == (3584643i32)) {
                        {
                            final __t__ = @:check2 _p_3583752._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3584724i32;
                    } else if (__value__ == (3584694i32)) {
                        _gotoNext = 3584694i32;
                        @:check2 _p_3583752._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3584724i32;
                    } else if (__value__ == (3584724i32)) {
                        _t_3583864 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584736i32)) {
                        if ((_p_3583752._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3584771i32;
                        } else {
                            _gotoNext = 3584803i32;
                        };
                    } else if (__value__ == (3584771i32)) {
                        @:check2 _p_3583752._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3584838i32;
                    } else if (__value__ == (3584803i32)) {
                        _gotoNext = 3584803i32;
                        @:check2 _p_3583752._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3584838i32;
                    } else if (__value__ == (3584838i32)) {
                        _t_3583864 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584850i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3583752._parseClass(_t_3583864?.__copy__());
                                _t_3583864 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3584903i32;
                            } else {
                                _gotoNext = 3587249i32;
                            };
                        };
                    } else if (__value__ == (3584903i32)) {
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
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3584932i32)) {
                        _before_3584955 = _t_3583864?.__copy__();
                        _gotoNext = 3584970i32;
                    } else if (__value__ == (3584970i32)) {
                        {
                            final __value__ = _t_3583864[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3584987i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3585016i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3585045i32;
                            } else {
                                _gotoNext = 3585080i32;
                            };
                        };
                    } else if (__value__ == (3584987i32)) {
                        _op_3583790 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3585080i32;
                    } else if (__value__ == (3585016i32)) {
                        _op_3583790 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3585080i32;
                    } else if (__value__ == (3585045i32)) {
                        _op_3583790 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3585080i32;
                    } else if (__value__ == (3585080i32)) {
                        _after_3585080 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3583752._repeat(_op_3583790, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3584955?.__copy__(), _after_3585080?.__copy__(), _lastRepeat_3583806?.__copy__());
                                _after_3585080 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3585172i32;
                            } else {
                                _gotoNext = 3585202i32;
                            };
                        };
                    } else if (__value__ == (3585172i32)) {
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
                        _gotoNext = 3585202i32;
                    } else if (__value__ == (3585202i32)) {
                        _repeat_3583888 = _before_3584955?.__copy__();
                        _t_3583864 = _after_3585080?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3585233i32)) {
                        _op_3583790 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3585263 = _t_3583864?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3583752._parseRepeat(_t_3583864?.__copy__());
                            _min_3585278 = @:tmpset0 __tmp__._0;
                            _max_3585283 = @:tmpset0 __tmp__._1;
                            _after_3585288 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3585295 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3585295) {
                            _gotoNext = 3585328i32;
                        } else {
                            _gotoNext = 3585436i32;
                        };
                    } else if (__value__ == (3585328i32)) {
                        @:check2 _p_3583752._literal((123 : stdgo.GoInt32));
                        _t_3583864 = (_t_3583864.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3585436i32)) {
                        if (((((_min_3585278 < (0 : stdgo.GoInt) : Bool) || (_min_3585278 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3585283 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3585283 >= (0 : stdgo.GoInt) : Bool) && (_min_3585278 > _max_3585283 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3585500i32;
                        } else {
                            _gotoNext = 3585650i32;
                        };
                    } else if (__value__ == (3585500i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3585263.__slice__(0, ((_before_3585263.length) - (_after_3585288.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3585650i32;
                    } else if (__value__ == (3585650i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3583752._repeat(_op_3583790, _min_3585278, _max_3585283, _before_3585263?.__copy__(), _after_3585288?.__copy__(), _lastRepeat_3583806?.__copy__());
                                _after_3585288 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3585728i32;
                            } else {
                                _gotoNext = 3585758i32;
                            };
                        };
                    } else if (__value__ == (3585728i32)) {
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
                        _gotoNext = 3585758i32;
                    } else if (__value__ == (3585758i32)) {
                        _repeat_3583888 = _before_3585263?.__copy__();
                        _t_3583864 = _after_3585288?.__copy__();
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3585789i32)) {
                        if ((((_p_3583752._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3583864.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3585840i32;
                        } else {
                            _gotoNext = 3586564i32;
                        };
                    } else if (__value__ == (3585840i32)) {
                        _gotoNext = 3585846i32;
                    } else if (__value__ == (3585846i32)) {
                        {
                            final __value__ = _t_3583864[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3585864i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3585937i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3586013i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3586091i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3586186i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3586482i32;
                            } else {
                                _gotoNext = 3586564i32;
                            };
                        };
                    } else if (__value__ == (3585864i32)) {
                        @:check2 _p_3583752._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3583864 = (_t_3583864.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3585937i32)) {
                        @:check2 _p_3583752._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3583864 = (_t_3583864.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3586013i32)) {
                        @:check2 _p_3583752._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3583864 = (_t_3583864.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3586091i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3583864.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3586564i32;
                    } else if (__value__ == (3586186i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3583864.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3586251 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3583864 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3586309i32;
                    } else if (__value__ == (3586309i32)) {
                        if (_lit_3586251 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3586323i32;
                        } else {
                            _gotoNext = 3586462i32;
                        };
                    } else if (__value__ == (3586323i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3586251?.__copy__());
                            _c_3586331 = @:tmpset0 __tmp__._0;
                            _rest_3586334 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3586340 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3586340 != null) {
                            _gotoNext = 3586381i32;
                        } else {
                            _gotoNext = 3586420i32;
                        };
                    } else if (__value__ == (3586381i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3586340 };
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
                        _gotoNext = 3586420i32;
                    } else if (__value__ == (3586420i32)) {
                        @:check2 _p_3583752._literal(_c_3586331);
                        _lit_3586251 = _rest_3586334?.__copy__();
                        _gotoNext = 3586309i32;
                    } else if (__value__ == (3586462i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3586482i32)) {
                        @:check2 _p_3583752._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3583864 = (_t_3583864.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3586564i32)) {
                        _re_3586564 = @:check2 _p_3583752._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3586564 ?? throw "null pointer dereference").flags = _p_3583752._flags;
                        if ((((_t_3583864.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3583864[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3583864[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3586720i32;
                        } else {
                            _gotoNext = 3586962i32;
                        };
                    } else if (__value__ == (3586720i32)) {
                        {
                            var __tmp__ = @:check2 _p_3583752._parseUnicodeClass(_t_3583864?.__copy__(), ((@:checkr _re_3586564 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3586726 = @:tmpset0 __tmp__._0;
                            _rest_3586729 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3586735 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3586735 != null) {
                            _gotoNext = 3586797i32;
                        } else {
                            _gotoNext = 3586830i32;
                        };
                    } else if (__value__ == (3586797i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3586735 };
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
                        _gotoNext = 3586830i32;
                    } else if (__value__ == (3586830i32)) {
                        if (_r_3586726 != null) {
                            _gotoNext = 3586842i32;
                        } else {
                            _gotoNext = 3586962i32;
                        };
                    } else if (__value__ == (3586842i32)) {
                        (@:checkr _re_3586564 ?? throw "null pointer dereference").rune = _r_3586726;
                        _t_3583864 = _rest_3586729?.__copy__();
                        @:check2 _p_3583752._push(_re_3586564);
                        bigSwitchBreak = true;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3586962i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3583752._parsePerlClassEscape(_t_3583864?.__copy__(), ((@:checkr _re_3586564 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3586965 = @:tmpset0 __tmp__._0;
                                _rest_3586968 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3586965 != null) {
                                _gotoNext = 3587026i32;
                            } else {
                                _gotoNext = 3587100i32;
                            };
                        };
                    } else if (__value__ == (3587026i32)) {
                        (@:checkr _re_3586564 ?? throw "null pointer dereference").rune = _r_3586965;
                        _t_3583864 = _rest_3586968?.__copy__();
                        @:check2 _p_3583752._push(_re_3586564);
                        bigSwitchBreak = true;
                        _gotoNext = 3583915i32;
                    } else if (__value__ == (3587100i32)) {
                        @:check2 _p_3583752._reuse(_re_3586564);
                        {
                            {
                                var __tmp__ = @:check2 _p_3583752._parseEscape(_t_3583864?.__copy__());
                                _c_3583772 = @:tmpset0 __tmp__._0;
                                _t_3583864 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3587200i32;
                            } else {
                                _gotoNext = 3587230i32;
                            };
                        };
                    } else if (__value__ == (3587200i32)) {
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
                        _gotoNext = 3587230i32;
                    } else if (__value__ == (3587230i32)) {
                        @:check2 _p_3583752._literal(_c_3583772);
                        _gotoNext = 3587249i32;
                    } else if (__value__ == (3587249i32)) {
                        _lastRepeat_3583806 = _repeat_3583888?.__copy__();
                        _gotoNext = 3583872i32;
                    } else if (__value__ == (3587274i32)) {
                        @:check2 _p_3583752._concat();
                        if (@:check2 _p_3583752._swapVerticalBar()) {
                            _gotoNext = 3587309i32;
                        } else {
                            _gotoNext = 3587374i32;
                        };
                    } else if (__value__ == (3587309i32)) {
                        _p_3583752._stack = (_p_3583752._stack.__slice__(0, ((_p_3583752._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3587374i32;
                    } else if (__value__ == (3587374i32)) {
                        @:check2 _p_3583752._alternate();
                        _n_3587390 = (_p_3583752._stack.length);
                        if (_n_3587390 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3587419i32;
                        } else {
                            _gotoNext = 3587466i32;
                        };
                    } else if (__value__ == (3587419i32)) {
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
                        _gotoNext = 3587466i32;
                    } else if (__value__ == (3587466i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3583752._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
