package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3448891:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3448652:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3448266:stdgo.Error = (null : stdgo.Error);
            var _c_3448257:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3448177:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3447209:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3446881:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3447204:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3445698:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3445814:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3445732:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3448661:stdgo.Error = (null : stdgo.Error);
            var _rest_3448655:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3447221:Bool = false;
            var _after_3447214:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3448490:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _before_3447189:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3445678:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _t_3445790:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3445716:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_3445536:stdgo.Error = (null : stdgo.Error);
            var _n_3449316:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3448894:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3448260:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3447006:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3445489i32;
                        } else {
                            _gotoNext = 3445670i32;
                        };
                    } else if (__value__ == (3445489i32)) {
                        {
                            _err_3445536 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3445536 != null) {
                                _gotoNext = 3445568i32;
                            } else {
                                _gotoNext = 3445595i32;
                            };
                        };
                    } else if (__value__ == (3445568i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3445536 };
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
                        _gotoNext = 3445595i32;
                    } else if (__value__ == (3445595i32)) {
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
                        _gotoNext = 3445670i32;
                    } else if (__value__ == (3445670i32)) {
                        _p_3445678._flags = _flags;
                        _p_3445678._wholeRegexp = _s?.__copy__();
                        _t_3445790 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3445798i32;
                    } else if (__value__ == (3445798i32)) {
                        if (_t_3445790 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3445810i32;
                        } else {
                            _gotoNext = 3449200i32;
                        };
                    } else if (__value__ == (3445810i32)) {
                        _repeat_3445814 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445828i32;
                    } else if (__value__ == (3445828i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3445841i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3445790[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3445954i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3446224i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3446321i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3446417i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3446532i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3446662i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3446776i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3446858i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3447159i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3447715i32;
                                } else {
                                    _gotoNext = 3445857i32;
                                };
                            };
                        } else {
                            _gotoNext = 3449175i32;
                        };
                    } else if (__value__ == (3445857i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3445790?.__copy__());
                                _c_3445698 = @:tmpset0 __tmp__._0;
                                _t_3445790 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3445908i32;
                            } else {
                                _gotoNext = 3445938i32;
                            };
                        };
                    } else if (__value__ == (3445908i32)) {
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
                        _gotoNext = 3445938i32;
                    } else if (__value__ == (3445938i32)) {
                        @:check2 _p_3445678._literal(_c_3445698);
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3445954i32)) {
                        if ((((_p_3445678._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3445790.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3445790[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3446019i32;
                        } else {
                            _gotoNext = 3446162i32;
                        };
                    } else if (__value__ == (3446019i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3445678._parsePerlFlags(_t_3445790?.__copy__());
                                _t_3445790 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3446115i32;
                            } else {
                                _gotoNext = 3446148i32;
                            };
                        };
                    } else if (__value__ == (3446115i32)) {
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
                        _gotoNext = 3446148i32;
                    } else if (__value__ == (3446148i32)) {
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446162i32)) {
                        _p_3445678._numCap++;
                        @:check2 _p_3445678._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3445678._numCap;
                        _t_3445790 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446224i32)) {
                        {
                            _err = @:check2 _p_3445678._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3446279i32;
                            } else {
                                _gotoNext = 3446309i32;
                            };
                        };
                    } else if (__value__ == (3446279i32)) {
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
                        _gotoNext = 3446309i32;
                    } else if (__value__ == (3446309i32)) {
                        _t_3445790 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446321i32)) {
                        {
                            _err = @:check2 _p_3445678._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3446375i32;
                            } else {
                                _gotoNext = 3446405i32;
                            };
                        };
                    } else if (__value__ == (3446375i32)) {
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
                        _gotoNext = 3446405i32;
                    } else if (__value__ == (3446405i32)) {
                        _t_3445790 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446417i32)) {
                        if ((_p_3445678._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3446454i32;
                        } else {
                            _gotoNext = 3446488i32;
                        };
                    } else if (__value__ == (3446454i32)) {
                        @:check2 _p_3445678._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3446520i32;
                    } else if (__value__ == (3446488i32)) {
                        _gotoNext = 3446488i32;
                        @:check2 _p_3445678._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3446520i32;
                    } else if (__value__ == (3446520i32)) {
                        _t_3445790 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446532i32)) {
                        if ((_p_3445678._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3446569i32;
                        } else {
                            _gotoNext = 3446620i32;
                        };
                    } else if (__value__ == (3446569i32)) {
                        {
                            final __t__ = @:check2 _p_3445678._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3446650i32;
                    } else if (__value__ == (3446620i32)) {
                        _gotoNext = 3446620i32;
                        @:check2 _p_3445678._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3446650i32;
                    } else if (__value__ == (3446650i32)) {
                        _t_3445790 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446662i32)) {
                        if ((_p_3445678._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3446697i32;
                        } else {
                            _gotoNext = 3446729i32;
                        };
                    } else if (__value__ == (3446697i32)) {
                        @:check2 _p_3445678._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3446764i32;
                    } else if (__value__ == (3446729i32)) {
                        _gotoNext = 3446729i32;
                        @:check2 _p_3445678._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3446764i32;
                    } else if (__value__ == (3446764i32)) {
                        _t_3445790 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446776i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3445678._parseClass(_t_3445790?.__copy__());
                                _t_3445790 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3446829i32;
                            } else {
                                _gotoNext = 3449175i32;
                            };
                        };
                    } else if (__value__ == (3446829i32)) {
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
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3446858i32)) {
                        _before_3446881 = _t_3445790?.__copy__();
                        _gotoNext = 3446896i32;
                    } else if (__value__ == (3446896i32)) {
                        {
                            final __value__ = _t_3445790[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3446913i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3446942i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3446971i32;
                            } else {
                                _gotoNext = 3447006i32;
                            };
                        };
                    } else if (__value__ == (3446913i32)) {
                        _op_3445716 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3447006i32;
                    } else if (__value__ == (3446942i32)) {
                        _op_3445716 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3447006i32;
                    } else if (__value__ == (3446971i32)) {
                        _op_3445716 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3447006i32;
                    } else if (__value__ == (3447006i32)) {
                        _after_3447006 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3445678._repeat(_op_3445716, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3446881?.__copy__(), _after_3447006?.__copy__(), _lastRepeat_3445732?.__copy__());
                                _after_3447006 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3447098i32;
                            } else {
                                _gotoNext = 3447128i32;
                            };
                        };
                    } else if (__value__ == (3447098i32)) {
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
                        _gotoNext = 3447128i32;
                    } else if (__value__ == (3447128i32)) {
                        _repeat_3445814 = _before_3446881?.__copy__();
                        _t_3445790 = _after_3447006?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3447159i32)) {
                        _op_3445716 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3447189 = _t_3445790?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3445678._parseRepeat(_t_3445790?.__copy__());
                            _min_3447204 = @:tmpset0 __tmp__._0;
                            _max_3447209 = @:tmpset0 __tmp__._1;
                            _after_3447214 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3447221 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3447221) {
                            _gotoNext = 3447254i32;
                        } else {
                            _gotoNext = 3447362i32;
                        };
                    } else if (__value__ == (3447254i32)) {
                        @:check2 _p_3445678._literal((123 : stdgo.GoInt32));
                        _t_3445790 = (_t_3445790.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3447362i32)) {
                        if (((((_min_3447204 < (0 : stdgo.GoInt) : Bool) || (_min_3447204 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3447209 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3447209 >= (0 : stdgo.GoInt) : Bool) && (_min_3447204 > _max_3447209 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3447426i32;
                        } else {
                            _gotoNext = 3447576i32;
                        };
                    } else if (__value__ == (3447426i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3447189.__slice__(0, ((_before_3447189.length) - (_after_3447214.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3447576i32;
                    } else if (__value__ == (3447576i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3445678._repeat(_op_3445716, _min_3447204, _max_3447209, _before_3447189?.__copy__(), _after_3447214?.__copy__(), _lastRepeat_3445732?.__copy__());
                                _after_3447214 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3447654i32;
                            } else {
                                _gotoNext = 3447684i32;
                            };
                        };
                    } else if (__value__ == (3447654i32)) {
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
                        _gotoNext = 3447684i32;
                    } else if (__value__ == (3447684i32)) {
                        _repeat_3445814 = _before_3447189?.__copy__();
                        _t_3445790 = _after_3447214?.__copy__();
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3447715i32)) {
                        if ((((_p_3445678._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3445790.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3447766i32;
                        } else {
                            _gotoNext = 3448490i32;
                        };
                    } else if (__value__ == (3447766i32)) {
                        _gotoNext = 3447772i32;
                    } else if (__value__ == (3447772i32)) {
                        {
                            final __value__ = _t_3445790[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3447790i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3447863i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3447939i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3448017i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3448112i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3448408i32;
                            } else {
                                _gotoNext = 3448490i32;
                            };
                        };
                    } else if (__value__ == (3447790i32)) {
                        @:check2 _p_3445678._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3445790 = (_t_3445790.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3447863i32)) {
                        @:check2 _p_3445678._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3445790 = (_t_3445790.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3447939i32)) {
                        @:check2 _p_3445678._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3445790 = (_t_3445790.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3448017i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3445790.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3448490i32;
                    } else if (__value__ == (3448112i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3445790.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3448177 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3445790 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3448235i32;
                    } else if (__value__ == (3448235i32)) {
                        if (_lit_3448177 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3448249i32;
                        } else {
                            _gotoNext = 3448388i32;
                        };
                    } else if (__value__ == (3448249i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3448177?.__copy__());
                            _c_3448257 = @:tmpset0 __tmp__._0;
                            _rest_3448260 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3448266 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3448266 != null) {
                            _gotoNext = 3448307i32;
                        } else {
                            _gotoNext = 3448346i32;
                        };
                    } else if (__value__ == (3448307i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3448266 };
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
                        _gotoNext = 3448346i32;
                    } else if (__value__ == (3448346i32)) {
                        @:check2 _p_3445678._literal(_c_3448257);
                        _lit_3448177 = _rest_3448260?.__copy__();
                        _gotoNext = 3448235i32;
                    } else if (__value__ == (3448388i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3448408i32)) {
                        @:check2 _p_3445678._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3445790 = (_t_3445790.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3448490i32)) {
                        _re_3448490 = @:check2 _p_3445678._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3448490 ?? throw "null pointer dereference").flags = _p_3445678._flags;
                        if ((((_t_3445790.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3445790[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3445790[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3448646i32;
                        } else {
                            _gotoNext = 3448888i32;
                        };
                    } else if (__value__ == (3448646i32)) {
                        {
                            var __tmp__ = @:check2 _p_3445678._parseUnicodeClass(_t_3445790?.__copy__(), ((@:checkr _re_3448490 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3448652 = @:tmpset0 __tmp__._0;
                            _rest_3448655 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3448661 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3448661 != null) {
                            _gotoNext = 3448723i32;
                        } else {
                            _gotoNext = 3448756i32;
                        };
                    } else if (__value__ == (3448723i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3448661 };
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
                        _gotoNext = 3448756i32;
                    } else if (__value__ == (3448756i32)) {
                        if (_r_3448652 != null) {
                            _gotoNext = 3448768i32;
                        } else {
                            _gotoNext = 3448888i32;
                        };
                    } else if (__value__ == (3448768i32)) {
                        (@:checkr _re_3448490 ?? throw "null pointer dereference").rune = _r_3448652;
                        _t_3445790 = _rest_3448655?.__copy__();
                        @:check2 _p_3445678._push(_re_3448490);
                        bigSwitchBreak = true;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3448888i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3445678._parsePerlClassEscape(_t_3445790?.__copy__(), ((@:checkr _re_3448490 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3448891 = @:tmpset0 __tmp__._0;
                                _rest_3448894 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3448891 != null) {
                                _gotoNext = 3448952i32;
                            } else {
                                _gotoNext = 3449026i32;
                            };
                        };
                    } else if (__value__ == (3448952i32)) {
                        (@:checkr _re_3448490 ?? throw "null pointer dereference").rune = _r_3448891;
                        _t_3445790 = _rest_3448894?.__copy__();
                        @:check2 _p_3445678._push(_re_3448490);
                        bigSwitchBreak = true;
                        _gotoNext = 3445841i32;
                    } else if (__value__ == (3449026i32)) {
                        @:check2 _p_3445678._reuse(_re_3448490);
                        {
                            {
                                var __tmp__ = @:check2 _p_3445678._parseEscape(_t_3445790?.__copy__());
                                _c_3445698 = @:tmpset0 __tmp__._0;
                                _t_3445790 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3449126i32;
                            } else {
                                _gotoNext = 3449156i32;
                            };
                        };
                    } else if (__value__ == (3449126i32)) {
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
                        _gotoNext = 3449156i32;
                    } else if (__value__ == (3449156i32)) {
                        @:check2 _p_3445678._literal(_c_3445698);
                        _gotoNext = 3449175i32;
                    } else if (__value__ == (3449175i32)) {
                        _lastRepeat_3445732 = _repeat_3445814?.__copy__();
                        _gotoNext = 3445798i32;
                    } else if (__value__ == (3449200i32)) {
                        @:check2 _p_3445678._concat();
                        if (@:check2 _p_3445678._swapVerticalBar()) {
                            _gotoNext = 3449235i32;
                        } else {
                            _gotoNext = 3449300i32;
                        };
                    } else if (__value__ == (3449235i32)) {
                        _p_3445678._stack = (_p_3445678._stack.__slice__(0, ((_p_3445678._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3449300i32;
                    } else if (__value__ == (3449300i32)) {
                        @:check2 _p_3445678._alternate();
                        _n_3449316 = (_p_3445678._stack.length);
                        if (_n_3449316 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3449345i32;
                        } else {
                            _gotoNext = 3449392i32;
                        };
                    } else if (__value__ == (3449345i32)) {
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
                        _gotoNext = 3449392i32;
                    } else if (__value__ == (3449392i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3445678._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
