package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3157901:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3157662:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3157276:stdgo.Error = (null : stdgo.Error);
            var _c_3157267:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3154688:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _rest_3157665:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3157500:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _after_3156224:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3156016:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3154824:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3154742:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3154708:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3154546:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _min_3156214:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n_3158326:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3157904:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3157187:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3156219:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3155891:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3154800:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3157671:stdgo.Error = (null : stdgo.Error);
            var _rest_3157270:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3156231:Bool = false;
            var _before_3156199:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3154726:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
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
                            _gotoNext = 3154499i32;
                        } else {
                            _gotoNext = 3154680i32;
                        };
                    } else if (__value__ == (3154499i32)) {
                        {
                            _err_3154546 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3154546 != null) {
                                _gotoNext = 3154578i32;
                            } else {
                                _gotoNext = 3154605i32;
                            };
                        };
                    } else if (__value__ == (3154578i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3154546 };
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
                        _gotoNext = 3154605i32;
                    } else if (__value__ == (3154605i32)) {
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
                        _gotoNext = 3154680i32;
                    } else if (__value__ == (3154680i32)) {
                        _p_3154688._flags = _flags;
                        _p_3154688._wholeRegexp = _s?.__copy__();
                        _t_3154800 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3154808i32;
                    } else if (__value__ == (3154808i32)) {
                        if (_t_3154800 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3154820i32;
                        } else {
                            _gotoNext = 3158210i32;
                        };
                    } else if (__value__ == (3154820i32)) {
                        _repeat_3154824 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3154838i32;
                    } else if (__value__ == (3154838i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3154851i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3154800[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3154964i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155234i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155331i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155427i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155542i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155672i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155786i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155868i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3156169i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3156725i32;
                                } else {
                                    _gotoNext = 3154867i32;
                                };
                            };
                        } else {
                            _gotoNext = 3158185i32;
                        };
                    } else if (__value__ == (3154867i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3154800?.__copy__());
                                _c_3154708 = @:tmpset0 __tmp__._0;
                                _t_3154800 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3154918i32;
                            } else {
                                _gotoNext = 3154948i32;
                            };
                        };
                    } else if (__value__ == (3154918i32)) {
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
                        _gotoNext = 3154948i32;
                    } else if (__value__ == (3154948i32)) {
                        @:check2 _p_3154688._literal(_c_3154708);
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3154964i32)) {
                        if ((((_p_3154688._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3154800.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3154800[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3155029i32;
                        } else {
                            _gotoNext = 3155172i32;
                        };
                    } else if (__value__ == (3155029i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3154688._parsePerlFlags(_t_3154800?.__copy__());
                                _t_3154800 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3155125i32;
                            } else {
                                _gotoNext = 3155158i32;
                            };
                        };
                    } else if (__value__ == (3155125i32)) {
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
                        _gotoNext = 3155158i32;
                    } else if (__value__ == (3155158i32)) {
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155172i32)) {
                        _p_3154688._numCap++;
                        @:check2 _p_3154688._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3154688._numCap;
                        _t_3154800 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155234i32)) {
                        {
                            _err = @:check2 _p_3154688._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3155289i32;
                            } else {
                                _gotoNext = 3155319i32;
                            };
                        };
                    } else if (__value__ == (3155289i32)) {
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
                        _gotoNext = 3155319i32;
                    } else if (__value__ == (3155319i32)) {
                        _t_3154800 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155331i32)) {
                        {
                            _err = @:check2 _p_3154688._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3155385i32;
                            } else {
                                _gotoNext = 3155415i32;
                            };
                        };
                    } else if (__value__ == (3155385i32)) {
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
                        _gotoNext = 3155415i32;
                    } else if (__value__ == (3155415i32)) {
                        _t_3154800 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155427i32)) {
                        if ((_p_3154688._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3155464i32;
                        } else {
                            _gotoNext = 3155498i32;
                        };
                    } else if (__value__ == (3155464i32)) {
                        @:check2 _p_3154688._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3155530i32;
                    } else if (__value__ == (3155498i32)) {
                        _gotoNext = 3155498i32;
                        @:check2 _p_3154688._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3155530i32;
                    } else if (__value__ == (3155530i32)) {
                        _t_3154800 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155542i32)) {
                        if ((_p_3154688._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3155579i32;
                        } else {
                            _gotoNext = 3155630i32;
                        };
                    } else if (__value__ == (3155579i32)) {
                        {
                            final __t__ = @:check2 _p_3154688._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3155660i32;
                    } else if (__value__ == (3155630i32)) {
                        _gotoNext = 3155630i32;
                        @:check2 _p_3154688._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3155660i32;
                    } else if (__value__ == (3155660i32)) {
                        _t_3154800 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155672i32)) {
                        if ((_p_3154688._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3155707i32;
                        } else {
                            _gotoNext = 3155739i32;
                        };
                    } else if (__value__ == (3155707i32)) {
                        @:check2 _p_3154688._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3155774i32;
                    } else if (__value__ == (3155739i32)) {
                        _gotoNext = 3155739i32;
                        @:check2 _p_3154688._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3155774i32;
                    } else if (__value__ == (3155774i32)) {
                        _t_3154800 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155786i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3154688._parseClass(_t_3154800?.__copy__());
                                _t_3154800 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3155839i32;
                            } else {
                                _gotoNext = 3158185i32;
                            };
                        };
                    } else if (__value__ == (3155839i32)) {
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
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3155868i32)) {
                        _before_3155891 = _t_3154800?.__copy__();
                        _gotoNext = 3155906i32;
                    } else if (__value__ == (3155906i32)) {
                        {
                            final __value__ = _t_3154800[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3155923i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3155952i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3155981i32;
                            } else {
                                _gotoNext = 3156016i32;
                            };
                        };
                    } else if (__value__ == (3155923i32)) {
                        _op_3154726 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3156016i32;
                    } else if (__value__ == (3155952i32)) {
                        _op_3154726 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3156016i32;
                    } else if (__value__ == (3155981i32)) {
                        _op_3154726 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3156016i32;
                    } else if (__value__ == (3156016i32)) {
                        _after_3156016 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3154688._repeat(_op_3154726, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3155891?.__copy__(), _after_3156016?.__copy__(), _lastRepeat_3154742?.__copy__());
                                _after_3156016 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3156108i32;
                            } else {
                                _gotoNext = 3156138i32;
                            };
                        };
                    } else if (__value__ == (3156108i32)) {
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
                        _gotoNext = 3156138i32;
                    } else if (__value__ == (3156138i32)) {
                        _repeat_3154824 = _before_3155891?.__copy__();
                        _t_3154800 = _after_3156016?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3156169i32)) {
                        _op_3154726 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3156199 = _t_3154800?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3154688._parseRepeat(_t_3154800?.__copy__());
                            _min_3156214 = @:tmpset0 __tmp__._0;
                            _max_3156219 = @:tmpset0 __tmp__._1;
                            _after_3156224 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3156231 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3156231) {
                            _gotoNext = 3156264i32;
                        } else {
                            _gotoNext = 3156372i32;
                        };
                    } else if (__value__ == (3156264i32)) {
                        @:check2 _p_3154688._literal((123 : stdgo.GoInt32));
                        _t_3154800 = (_t_3154800.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3156372i32)) {
                        if (((((_min_3156214 < (0 : stdgo.GoInt) : Bool) || (_min_3156214 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3156219 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3156219 >= (0 : stdgo.GoInt) : Bool) && (_min_3156214 > _max_3156219 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3156436i32;
                        } else {
                            _gotoNext = 3156586i32;
                        };
                    } else if (__value__ == (3156436i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3156199.__slice__(0, ((_before_3156199.length) - (_after_3156224.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3156586i32;
                    } else if (__value__ == (3156586i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3154688._repeat(_op_3154726, _min_3156214, _max_3156219, _before_3156199?.__copy__(), _after_3156224?.__copy__(), _lastRepeat_3154742?.__copy__());
                                _after_3156224 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3156664i32;
                            } else {
                                _gotoNext = 3156694i32;
                            };
                        };
                    } else if (__value__ == (3156664i32)) {
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
                        _gotoNext = 3156694i32;
                    } else if (__value__ == (3156694i32)) {
                        _repeat_3154824 = _before_3156199?.__copy__();
                        _t_3154800 = _after_3156224?.__copy__();
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3156725i32)) {
                        if ((((_p_3154688._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3154800.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3156776i32;
                        } else {
                            _gotoNext = 3157500i32;
                        };
                    } else if (__value__ == (3156776i32)) {
                        _gotoNext = 3156782i32;
                    } else if (__value__ == (3156782i32)) {
                        {
                            final __value__ = _t_3154800[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3156800i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3156873i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3156949i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3157027i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3157122i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3157418i32;
                            } else {
                                _gotoNext = 3157500i32;
                            };
                        };
                    } else if (__value__ == (3156800i32)) {
                        @:check2 _p_3154688._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3154800 = (_t_3154800.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3156873i32)) {
                        @:check2 _p_3154688._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3154800 = (_t_3154800.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3156949i32)) {
                        @:check2 _p_3154688._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3154800 = (_t_3154800.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3157027i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3154800.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3157500i32;
                    } else if (__value__ == (3157122i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3154800.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3157187 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3154800 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3157245i32;
                    } else if (__value__ == (3157245i32)) {
                        if (_lit_3157187 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3157259i32;
                        } else {
                            _gotoNext = 3157398i32;
                        };
                    } else if (__value__ == (3157259i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3157187?.__copy__());
                            _c_3157267 = @:tmpset0 __tmp__._0;
                            _rest_3157270 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3157276 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3157276 != null) {
                            _gotoNext = 3157317i32;
                        } else {
                            _gotoNext = 3157356i32;
                        };
                    } else if (__value__ == (3157317i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3157276 };
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
                        _gotoNext = 3157356i32;
                    } else if (__value__ == (3157356i32)) {
                        @:check2 _p_3154688._literal(_c_3157267);
                        _lit_3157187 = _rest_3157270?.__copy__();
                        _gotoNext = 3157245i32;
                    } else if (__value__ == (3157398i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3157418i32)) {
                        @:check2 _p_3154688._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3154800 = (_t_3154800.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3157500i32)) {
                        _re_3157500 = @:check2 _p_3154688._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3157500 ?? throw "null pointer dereference").flags = _p_3154688._flags;
                        if ((((_t_3154800.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3154800[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3154800[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3157656i32;
                        } else {
                            _gotoNext = 3157898i32;
                        };
                    } else if (__value__ == (3157656i32)) {
                        {
                            var __tmp__ = @:check2 _p_3154688._parseUnicodeClass(_t_3154800?.__copy__(), ((@:checkr _re_3157500 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3157662 = @:tmpset0 __tmp__._0;
                            _rest_3157665 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3157671 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3157671 != null) {
                            _gotoNext = 3157733i32;
                        } else {
                            _gotoNext = 3157766i32;
                        };
                    } else if (__value__ == (3157733i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3157671 };
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
                        _gotoNext = 3157766i32;
                    } else if (__value__ == (3157766i32)) {
                        if (_r_3157662 != null) {
                            _gotoNext = 3157778i32;
                        } else {
                            _gotoNext = 3157898i32;
                        };
                    } else if (__value__ == (3157778i32)) {
                        (@:checkr _re_3157500 ?? throw "null pointer dereference").rune = _r_3157662;
                        _t_3154800 = _rest_3157665?.__copy__();
                        @:check2 _p_3154688._push(_re_3157500);
                        bigSwitchBreak = true;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3157898i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3154688._parsePerlClassEscape(_t_3154800?.__copy__(), ((@:checkr _re_3157500 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3157901 = @:tmpset0 __tmp__._0;
                                _rest_3157904 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3157901 != null) {
                                _gotoNext = 3157962i32;
                            } else {
                                _gotoNext = 3158036i32;
                            };
                        };
                    } else if (__value__ == (3157962i32)) {
                        (@:checkr _re_3157500 ?? throw "null pointer dereference").rune = _r_3157901;
                        _t_3154800 = _rest_3157904?.__copy__();
                        @:check2 _p_3154688._push(_re_3157500);
                        bigSwitchBreak = true;
                        _gotoNext = 3154851i32;
                    } else if (__value__ == (3158036i32)) {
                        @:check2 _p_3154688._reuse(_re_3157500);
                        {
                            {
                                var __tmp__ = @:check2 _p_3154688._parseEscape(_t_3154800?.__copy__());
                                _c_3154708 = @:tmpset0 __tmp__._0;
                                _t_3154800 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3158136i32;
                            } else {
                                _gotoNext = 3158166i32;
                            };
                        };
                    } else if (__value__ == (3158136i32)) {
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
                        _gotoNext = 3158166i32;
                    } else if (__value__ == (3158166i32)) {
                        @:check2 _p_3154688._literal(_c_3154708);
                        _gotoNext = 3158185i32;
                    } else if (__value__ == (3158185i32)) {
                        _lastRepeat_3154742 = _repeat_3154824?.__copy__();
                        _gotoNext = 3154808i32;
                    } else if (__value__ == (3158210i32)) {
                        @:check2 _p_3154688._concat();
                        if (@:check2 _p_3154688._swapVerticalBar()) {
                            _gotoNext = 3158245i32;
                        } else {
                            _gotoNext = 3158310i32;
                        };
                    } else if (__value__ == (3158245i32)) {
                        _p_3154688._stack = (_p_3154688._stack.__slice__(0, ((_p_3154688._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3158310i32;
                    } else if (__value__ == (3158310i32)) {
                        @:check2 _p_3154688._alternate();
                        _n_3158326 = (_p_3154688._stack.length);
                        if (_n_3158326 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3158355i32;
                        } else {
                            _gotoNext = 3158402i32;
                        };
                    } else if (__value__ == (3158355i32)) {
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
                        _gotoNext = 3158402i32;
                    } else if (__value__ == (3158402i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3154688._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
