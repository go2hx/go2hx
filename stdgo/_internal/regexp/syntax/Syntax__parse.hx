package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _before_7:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_6:stdgo.GoString = ("" : stdgo.GoString);
            var _c_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_24:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_21:stdgo.Error = (null : stdgo.Error);
            var _after_8:stdgo.GoString = ("" : stdgo.GoString);
            var _r_22:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_19:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_16:stdgo.GoString = ("" : stdgo.GoString);
            var _after_12:stdgo.GoString = ("" : stdgo.GoString);
            var _err_0:stdgo.Error = (null : stdgo.Error);
            var _err_17:stdgo.Error = (null : stdgo.Error);
            var _min_10:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_1:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _max_11:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_9:stdgo.GoString = ("" : stdgo.GoString);
            var _t_5:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_4:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var bigSwitchBreak = false;
            var _lit_14:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_13:Bool = false;
            var _rest_20:stdgo.GoString = ("" : stdgo.GoString);
            var _re_18:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _c_15:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_23:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3291585i32;
                        } else {
                            _gotoNext = 3291766i32;
                        };
                    } else if (__value__ == (3291585i32)) {
                        {
                            _err_0 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_0 != null) {
                                _gotoNext = 3291664i32;
                            } else {
                                _gotoNext = 3291691i32;
                            };
                        };
                    } else if (__value__ == (3291664i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_0 };
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
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3291691i32)) {
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
                        _gotoNext = 3291766i32;
                    } else if (__value__ == (3291766i32)) {
                        _p_1._flags = _flags;
                        _p_1._wholeRegexp = _s?.__copy__();
                        _t_5 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3291894i32;
                    } else if (__value__ == (3291894i32)) {
                        if (_t_5 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3291906i32;
                        } else {
                            _gotoNext = 3295296i32;
                        };
                    } else if (__value__ == (3291906i32)) {
                        _repeat_6 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3291924i32;
                    } else if (__value__ == (3291924i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3291937i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_5[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292050i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292320i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292417i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292513i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292628i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292758i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292872i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292954i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293255i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293811i32;
                                } else {
                                    _gotoNext = 3291953i32;
                                };
                            };
                        } else {
                            _gotoNext = 3295271i32;
                        };
                    } else if (__value__ == (3291953i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3292004i32;
                            } else {
                                _gotoNext = 3292034i32;
                            };
                        };
                    } else if (__value__ == (3292004i32)) {
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
                        _gotoNext = 3292034i32;
                    } else if (__value__ == (3292034i32)) {
                        @:check2 _p_1._literal(_c_2);
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292050i32)) {
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_5[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3292115i32;
                        } else {
                            _gotoNext = 3292258i32;
                        };
                    } else if (__value__ == (3292115i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parsePerlFlags(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3292211i32;
                            } else {
                                _gotoNext = 3292244i32;
                            };
                        };
                    } else if (__value__ == (3292211i32)) {
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
                        _gotoNext = 3292244i32;
                    } else if (__value__ == (3292244i32)) {
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292258i32)) {
                        _p_1._numCap++;
                        @:check2 _p_1._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_1._numCap;
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292320i32)) {
                        {
                            _err = @:check2 _p_1._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3292375i32;
                            } else {
                                _gotoNext = 3292405i32;
                            };
                        };
                    } else if (__value__ == (3292375i32)) {
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
                        _gotoNext = 3292405i32;
                    } else if (__value__ == (3292405i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292417i32)) {
                        {
                            _err = @:check2 _p_1._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3292471i32;
                            } else {
                                _gotoNext = 3292501i32;
                            };
                        };
                    } else if (__value__ == (3292471i32)) {
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
                        _gotoNext = 3292501i32;
                    } else if (__value__ == (3292501i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292513i32)) {
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3292550i32;
                        } else {
                            _gotoNext = 3292584i32;
                        };
                    } else if (__value__ == (3292550i32)) {
                        @:check2 _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3292616i32;
                    } else if (__value__ == (3292584i32)) {
                        _gotoNext = 3292584i32;
                        @:check2 _p_1._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3292616i32;
                    } else if (__value__ == (3292616i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292628i32)) {
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3292665i32;
                        } else {
                            _gotoNext = 3292716i32;
                        };
                    } else if (__value__ == (3292665i32)) {
                        {
                            final __t__ = @:check2 _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3292746i32;
                    } else if (__value__ == (3292716i32)) {
                        _gotoNext = 3292716i32;
                        @:check2 _p_1._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3292746i32;
                    } else if (__value__ == (3292746i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292758i32)) {
                        if ((_p_1._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3292793i32;
                        } else {
                            _gotoNext = 3292825i32;
                        };
                    } else if (__value__ == (3292793i32)) {
                        @:check2 _p_1._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3292860i32;
                    } else if (__value__ == (3292825i32)) {
                        _gotoNext = 3292825i32;
                        @:check2 _p_1._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3292860i32;
                    } else if (__value__ == (3292860i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292872i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parseClass(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3292925i32;
                            } else {
                                _gotoNext = 3295271i32;
                            };
                        };
                    } else if (__value__ == (3292925i32)) {
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
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3292954i32)) {
                        _before_7 = _t_5?.__copy__();
                        _gotoNext = 3292992i32;
                    } else if (__value__ == (3292992i32)) {
                        {
                            final __value__ = _t_5[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3293009i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3293038i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3293067i32;
                            } else {
                                _gotoNext = 3293102i32;
                            };
                        };
                    } else if (__value__ == (3293009i32)) {
                        _op_3 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3293102i32;
                    } else if (__value__ == (3293038i32)) {
                        _op_3 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3293102i32;
                    } else if (__value__ == (3293067i32)) {
                        _op_3 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3293102i32;
                    } else if (__value__ == (3293102i32)) {
                        _after_8 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_1._repeat(_op_3, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_7?.__copy__(), _after_8?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_8 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3293194i32;
                            } else {
                                _gotoNext = 3293224i32;
                            };
                        };
                    } else if (__value__ == (3293194i32)) {
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
                        _gotoNext = 3293224i32;
                    } else if (__value__ == (3293224i32)) {
                        _repeat_6 = _before_7?.__copy__();
                        _t_5 = _after_8?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3293255i32)) {
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
                            _gotoNext = 3293350i32;
                        } else {
                            _gotoNext = 3293458i32;
                        };
                    } else if (__value__ == (3293350i32)) {
                        @:check2 _p_1._literal((123 : stdgo.GoInt32));
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3293458i32)) {
                        if (((((_min_10 < (0 : stdgo.GoInt) : Bool) || (_min_10 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_11 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_11 >= (0 : stdgo.GoInt) : Bool) && (_min_10 > _max_11 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3293522i32;
                        } else {
                            _gotoNext = 3293672i32;
                        };
                    } else if (__value__ == (3293522i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_9.__slice__(0, ((_before_9.length) - (_after_12.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3293672i32;
                    } else if (__value__ == (3293672i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._repeat(_op_3, _min_10, _max_11, _before_9?.__copy__(), _after_12?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_12 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3293750i32;
                            } else {
                                _gotoNext = 3293780i32;
                            };
                        };
                    } else if (__value__ == (3293750i32)) {
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
                        _gotoNext = 3293780i32;
                    } else if (__value__ == (3293780i32)) {
                        _repeat_6 = _before_9?.__copy__();
                        _t_5 = _after_12?.__copy__();
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3293811i32)) {
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3293862i32;
                        } else {
                            _gotoNext = 3294586i32;
                        };
                    } else if (__value__ == (3293862i32)) {
                        _gotoNext = 3293868i32;
                    } else if (__value__ == (3293868i32)) {
                        {
                            final __value__ = _t_5[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3293886i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3293959i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3294035i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3294113i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3294208i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3294504i32;
                            } else {
                                _gotoNext = 3294586i32;
                            };
                        };
                    } else if (__value__ == (3293886i32)) {
                        @:check2 _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3293959i32)) {
                        @:check2 _p_1._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3294035i32)) {
                        @:check2 _p_1._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3294113i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_5.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3294586i32;
                    } else if (__value__ == (3294208i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_14 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3294331i32;
                    } else if (__value__ == (3294331i32)) {
                        if (_lit_14 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3294345i32;
                        } else {
                            _gotoNext = 3294484i32;
                        };
                    } else if (__value__ == (3294345i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_14?.__copy__());
                            _c_15 = @:tmpset0 __tmp__._0;
                            _rest_16 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_17 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_17 != null) {
                            _gotoNext = 3294403i32;
                        } else {
                            _gotoNext = 3294442i32;
                        };
                    } else if (__value__ == (3294403i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_17 };
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
                        _gotoNext = 3294442i32;
                    } else if (__value__ == (3294442i32)) {
                        @:check2 _p_1._literal(_c_15);
                        _lit_14 = _rest_16?.__copy__();
                        _gotoNext = 3294331i32;
                    } else if (__value__ == (3294484i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3294504i32)) {
                        @:check2 _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3294586i32)) {
                        _re_18 = @:check2 _p_1._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_18 ?? throw "null pointer dereference").flags = _p_1._flags;
                        if ((((_t_5.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_5[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_5[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3294742i32;
                        } else {
                            _gotoNext = 3294984i32;
                        };
                    } else if (__value__ == (3294742i32)) {
                        {
                            var __tmp__ = @:check2 _p_1._parseUnicodeClass(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_19 = @:tmpset0 __tmp__._0;
                            _rest_20 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_21 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_21 != null) {
                            _gotoNext = 3294819i32;
                        } else {
                            _gotoNext = 3294852i32;
                        };
                    } else if (__value__ == (3294819i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_21 };
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
                        _gotoNext = 3294852i32;
                    } else if (__value__ == (3294852i32)) {
                        if (_r_19 != null) {
                            _gotoNext = 3294864i32;
                        } else {
                            _gotoNext = 3294984i32;
                        };
                    } else if (__value__ == (3294864i32)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_19;
                        _t_5 = _rest_20?.__copy__();
                        @:check2 _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3294984i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parsePerlClassEscape(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_22 = @:tmpset0 __tmp__._0;
                                _rest_23 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_22 != null) {
                                _gotoNext = 3295048i32;
                            } else {
                                _gotoNext = 3295122i32;
                            };
                        };
                    } else if (__value__ == (3295048i32)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_22;
                        _t_5 = _rest_23?.__copy__();
                        @:check2 _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3291937i32;
                    } else if (__value__ == (3295122i32)) {
                        @:check2 _p_1._reuse(_re_18);
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parseEscape(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3295222i32;
                            } else {
                                _gotoNext = 3295252i32;
                            };
                        };
                    } else if (__value__ == (3295222i32)) {
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
                        _gotoNext = 3295252i32;
                    } else if (__value__ == (3295252i32)) {
                        @:check2 _p_1._literal(_c_2);
                        _gotoNext = 3295271i32;
                    } else if (__value__ == (3295271i32)) {
                        _lastRepeat_4 = _repeat_6?.__copy__();
                        _gotoNext = 3291894i32;
                    } else if (__value__ == (3295296i32)) {
                        @:check2 _p_1._concat();
                        if (@:check2 _p_1._swapVerticalBar()) {
                            _gotoNext = 3295331i32;
                        } else {
                            _gotoNext = 3295396i32;
                        };
                    } else if (__value__ == (3295331i32)) {
                        _p_1._stack = (_p_1._stack.__slice__(0, ((_p_1._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3295396i32;
                    } else if (__value__ == (3295396i32)) {
                        @:check2 _p_1._alternate();
                        _n_24 = (_p_1._stack.length);
                        if (_n_24 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3295441i32;
                        } else {
                            _gotoNext = 3295488i32;
                        };
                    } else if (__value__ == (3295441i32)) {
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
                        _gotoNext = 3295488i32;
                    } else if (__value__ == (3295488i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_1._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
