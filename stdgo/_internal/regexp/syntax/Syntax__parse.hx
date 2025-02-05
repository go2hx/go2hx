package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3288033:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3287638:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3287635:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3286587:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3286259:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3284914:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _lastRepeat_3285110:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3286567:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3288272:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3288269:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3287868:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _after_3286592:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3285168:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3288694:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3288030:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _repeat_3285192:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3285056:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _lit_3287555:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3286599:Bool = false;
            var _min_3286582:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3286384:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3285094:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_3288039:stdgo.Error = (null : stdgo.Error);
            var _err_3287644:stdgo.Error = (null : stdgo.Error);
            var _c_3285076:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3284867i32;
                        } else {
                            _gotoNext = 3285048i32;
                        };
                    } else if (__value__ == (3284867i32)) {
                        {
                            _err_3284914 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3284914 != null) {
                                _gotoNext = 3284946i32;
                            } else {
                                _gotoNext = 3284973i32;
                            };
                        };
                    } else if (__value__ == (3284946i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3284914 };
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
                        _gotoNext = 3284973i32;
                    } else if (__value__ == (3284973i32)) {
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
                        _gotoNext = 3285048i32;
                    } else if (__value__ == (3285048i32)) {
                        _p_3285056._flags = _flags;
                        _p_3285056._wholeRegexp = _s?.__copy__();
                        _t_3285168 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3285176i32;
                    } else if (__value__ == (3285176i32)) {
                        if (_t_3285168 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3285188i32;
                        } else {
                            _gotoNext = 3288578i32;
                        };
                    } else if (__value__ == (3285188i32)) {
                        _repeat_3285192 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3285206i32;
                    } else if (__value__ == (3285206i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3285219i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3285168[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285332i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285602i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285699i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285795i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285910i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286040i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286154i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286236i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286537i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3287093i32;
                                } else {
                                    _gotoNext = 3285235i32;
                                };
                            };
                        } else {
                            _gotoNext = 3288553i32;
                        };
                    } else if (__value__ == (3285235i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3285168?.__copy__());
                                _c_3285076 = @:tmpset0 __tmp__._0;
                                _t_3285168 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3285286i32;
                            } else {
                                _gotoNext = 3285316i32;
                            };
                        };
                    } else if (__value__ == (3285286i32)) {
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
                        _gotoNext = 3285316i32;
                    } else if (__value__ == (3285316i32)) {
                        @:check2 _p_3285056._literal(_c_3285076);
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3285332i32)) {
                        if ((((_p_3285056._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3285168.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3285168[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3285397i32;
                        } else {
                            _gotoNext = 3285540i32;
                        };
                    } else if (__value__ == (3285397i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3285056._parsePerlFlags(_t_3285168?.__copy__());
                                _t_3285168 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3285493i32;
                            } else {
                                _gotoNext = 3285526i32;
                            };
                        };
                    } else if (__value__ == (3285493i32)) {
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
                        _gotoNext = 3285526i32;
                    } else if (__value__ == (3285526i32)) {
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3285540i32)) {
                        _p_3285056._numCap++;
                        @:check2 _p_3285056._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3285056._numCap;
                        _t_3285168 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3285602i32)) {
                        {
                            _err = @:check2 _p_3285056._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3285657i32;
                            } else {
                                _gotoNext = 3285687i32;
                            };
                        };
                    } else if (__value__ == (3285657i32)) {
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
                        _gotoNext = 3285687i32;
                    } else if (__value__ == (3285687i32)) {
                        _t_3285168 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3285699i32)) {
                        {
                            _err = @:check2 _p_3285056._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3285753i32;
                            } else {
                                _gotoNext = 3285783i32;
                            };
                        };
                    } else if (__value__ == (3285753i32)) {
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
                        _gotoNext = 3285783i32;
                    } else if (__value__ == (3285783i32)) {
                        _t_3285168 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3285795i32)) {
                        if ((_p_3285056._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285832i32;
                        } else {
                            _gotoNext = 3285866i32;
                        };
                    } else if (__value__ == (3285832i32)) {
                        @:check2 _p_3285056._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3285898i32;
                    } else if (__value__ == (3285866i32)) {
                        _gotoNext = 3285866i32;
                        @:check2 _p_3285056._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3285898i32;
                    } else if (__value__ == (3285898i32)) {
                        _t_3285168 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3285910i32)) {
                        if ((_p_3285056._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285947i32;
                        } else {
                            _gotoNext = 3285998i32;
                        };
                    } else if (__value__ == (3285947i32)) {
                        {
                            final __t__ = @:check2 _p_3285056._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3286028i32;
                    } else if (__value__ == (3285998i32)) {
                        _gotoNext = 3285998i32;
                        @:check2 _p_3285056._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3286028i32;
                    } else if (__value__ == (3286028i32)) {
                        _t_3285168 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3286040i32)) {
                        if ((_p_3285056._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3286075i32;
                        } else {
                            _gotoNext = 3286107i32;
                        };
                    } else if (__value__ == (3286075i32)) {
                        @:check2 _p_3285056._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3286142i32;
                    } else if (__value__ == (3286107i32)) {
                        _gotoNext = 3286107i32;
                        @:check2 _p_3285056._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3286142i32;
                    } else if (__value__ == (3286142i32)) {
                        _t_3285168 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3286154i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3285056._parseClass(_t_3285168?.__copy__());
                                _t_3285168 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286207i32;
                            } else {
                                _gotoNext = 3288553i32;
                            };
                        };
                    } else if (__value__ == (3286207i32)) {
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
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3286236i32)) {
                        _before_3286259 = _t_3285168?.__copy__();
                        _gotoNext = 3286274i32;
                    } else if (__value__ == (3286274i32)) {
                        {
                            final __value__ = _t_3285168[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3286291i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3286320i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3286349i32;
                            } else {
                                _gotoNext = 3286384i32;
                            };
                        };
                    } else if (__value__ == (3286291i32)) {
                        _op_3285094 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286384i32;
                    } else if (__value__ == (3286320i32)) {
                        _op_3285094 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286384i32;
                    } else if (__value__ == (3286349i32)) {
                        _op_3285094 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286384i32;
                    } else if (__value__ == (3286384i32)) {
                        _after_3286384 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3285056._repeat(_op_3285094, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3286259?.__copy__(), _after_3286384?.__copy__(), _lastRepeat_3285110?.__copy__());
                                _after_3286384 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286476i32;
                            } else {
                                _gotoNext = 3286506i32;
                            };
                        };
                    } else if (__value__ == (3286476i32)) {
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
                        _gotoNext = 3286506i32;
                    } else if (__value__ == (3286506i32)) {
                        _repeat_3285192 = _before_3286259?.__copy__();
                        _t_3285168 = _after_3286384?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3286537i32)) {
                        _op_3285094 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3286567 = _t_3285168?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3285056._parseRepeat(_t_3285168?.__copy__());
                            _min_3286582 = @:tmpset0 __tmp__._0;
                            _max_3286587 = @:tmpset0 __tmp__._1;
                            _after_3286592 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3286599 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3286599) {
                            _gotoNext = 3286632i32;
                        } else {
                            _gotoNext = 3286740i32;
                        };
                    } else if (__value__ == (3286632i32)) {
                        @:check2 _p_3285056._literal((123 : stdgo.GoInt32));
                        _t_3285168 = (_t_3285168.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3286740i32)) {
                        if (((((_min_3286582 < (0 : stdgo.GoInt) : Bool) || (_min_3286582 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3286587 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3286587 >= (0 : stdgo.GoInt) : Bool) && (_min_3286582 > _max_3286587 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3286804i32;
                        } else {
                            _gotoNext = 3286954i32;
                        };
                    } else if (__value__ == (3286804i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3286567.__slice__(0, ((_before_3286567.length) - (_after_3286592.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3286954i32;
                    } else if (__value__ == (3286954i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3285056._repeat(_op_3285094, _min_3286582, _max_3286587, _before_3286567?.__copy__(), _after_3286592?.__copy__(), _lastRepeat_3285110?.__copy__());
                                _after_3286592 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3287032i32;
                            } else {
                                _gotoNext = 3287062i32;
                            };
                        };
                    } else if (__value__ == (3287032i32)) {
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
                        _gotoNext = 3287062i32;
                    } else if (__value__ == (3287062i32)) {
                        _repeat_3285192 = _before_3286567?.__copy__();
                        _t_3285168 = _after_3286592?.__copy__();
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3287093i32)) {
                        if ((((_p_3285056._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3285168.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3287144i32;
                        } else {
                            _gotoNext = 3287868i32;
                        };
                    } else if (__value__ == (3287144i32)) {
                        _gotoNext = 3287150i32;
                    } else if (__value__ == (3287150i32)) {
                        {
                            final __value__ = _t_3285168[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3287168i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3287241i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3287317i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3287395i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3287490i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3287786i32;
                            } else {
                                _gotoNext = 3287868i32;
                            };
                        };
                    } else if (__value__ == (3287168i32)) {
                        @:check2 _p_3285056._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3285168 = (_t_3285168.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3287241i32)) {
                        @:check2 _p_3285056._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3285168 = (_t_3285168.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3287317i32)) {
                        @:check2 _p_3285056._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3285168 = (_t_3285168.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3287395i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3285168.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3287868i32;
                    } else if (__value__ == (3287490i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3285168.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3287555 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3285168 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3287613i32;
                    } else if (__value__ == (3287613i32)) {
                        if (_lit_3287555 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3287627i32;
                        } else {
                            _gotoNext = 3287766i32;
                        };
                    } else if (__value__ == (3287627i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3287555?.__copy__());
                            _c_3287635 = @:tmpset0 __tmp__._0;
                            _rest_3287638 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3287644 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3287644 != null) {
                            _gotoNext = 3287685i32;
                        } else {
                            _gotoNext = 3287724i32;
                        };
                    } else if (__value__ == (3287685i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3287644 };
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
                        _gotoNext = 3287724i32;
                    } else if (__value__ == (3287724i32)) {
                        @:check2 _p_3285056._literal(_c_3287635);
                        _lit_3287555 = _rest_3287638?.__copy__();
                        _gotoNext = 3287613i32;
                    } else if (__value__ == (3287766i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3287786i32)) {
                        @:check2 _p_3285056._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3285168 = (_t_3285168.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3287868i32)) {
                        _re_3287868 = @:check2 _p_3285056._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3287868 ?? throw "null pointer dereference").flags = _p_3285056._flags;
                        if ((((_t_3285168.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3285168[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3285168[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3288024i32;
                        } else {
                            _gotoNext = 3288266i32;
                        };
                    } else if (__value__ == (3288024i32)) {
                        {
                            var __tmp__ = @:check2 _p_3285056._parseUnicodeClass(_t_3285168?.__copy__(), ((@:checkr _re_3287868 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3288030 = @:tmpset0 __tmp__._0;
                            _rest_3288033 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3288039 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3288039 != null) {
                            _gotoNext = 3288101i32;
                        } else {
                            _gotoNext = 3288134i32;
                        };
                    } else if (__value__ == (3288101i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3288039 };
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
                        _gotoNext = 3288134i32;
                    } else if (__value__ == (3288134i32)) {
                        if (_r_3288030 != null) {
                            _gotoNext = 3288146i32;
                        } else {
                            _gotoNext = 3288266i32;
                        };
                    } else if (__value__ == (3288146i32)) {
                        (@:checkr _re_3287868 ?? throw "null pointer dereference").rune = _r_3288030;
                        _t_3285168 = _rest_3288033?.__copy__();
                        @:check2 _p_3285056._push(_re_3287868);
                        bigSwitchBreak = true;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3288266i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3285056._parsePerlClassEscape(_t_3285168?.__copy__(), ((@:checkr _re_3287868 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3288269 = @:tmpset0 __tmp__._0;
                                _rest_3288272 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3288269 != null) {
                                _gotoNext = 3288330i32;
                            } else {
                                _gotoNext = 3288404i32;
                            };
                        };
                    } else if (__value__ == (3288330i32)) {
                        (@:checkr _re_3287868 ?? throw "null pointer dereference").rune = _r_3288269;
                        _t_3285168 = _rest_3288272?.__copy__();
                        @:check2 _p_3285056._push(_re_3287868);
                        bigSwitchBreak = true;
                        _gotoNext = 3285219i32;
                    } else if (__value__ == (3288404i32)) {
                        @:check2 _p_3285056._reuse(_re_3287868);
                        {
                            {
                                var __tmp__ = @:check2 _p_3285056._parseEscape(_t_3285168?.__copy__());
                                _c_3285076 = @:tmpset0 __tmp__._0;
                                _t_3285168 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3288504i32;
                            } else {
                                _gotoNext = 3288534i32;
                            };
                        };
                    } else if (__value__ == (3288504i32)) {
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
                        _gotoNext = 3288534i32;
                    } else if (__value__ == (3288534i32)) {
                        @:check2 _p_3285056._literal(_c_3285076);
                        _gotoNext = 3288553i32;
                    } else if (__value__ == (3288553i32)) {
                        _lastRepeat_3285110 = _repeat_3285192?.__copy__();
                        _gotoNext = 3285176i32;
                    } else if (__value__ == (3288578i32)) {
                        @:check2 _p_3285056._concat();
                        if (@:check2 _p_3285056._swapVerticalBar()) {
                            _gotoNext = 3288613i32;
                        } else {
                            _gotoNext = 3288678i32;
                        };
                    } else if (__value__ == (3288613i32)) {
                        _p_3285056._stack = (_p_3285056._stack.__slice__(0, ((_p_3285056._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3288678i32;
                    } else if (__value__ == (3288678i32)) {
                        @:check2 _p_3285056._alternate();
                        _n_3288694 = (_p_3285056._stack.length);
                        if (_n_3288694 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3288723i32;
                        } else {
                            _gotoNext = 3288770i32;
                        };
                    } else if (__value__ == (3288723i32)) {
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
                        _gotoNext = 3288770i32;
                    } else if (__value__ == (3288770i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3285056._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
