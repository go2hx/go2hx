package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3347204:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3346782:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3346543:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3346148:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3346145:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3345109:Bool = false;
            var _after_3345102:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3345097:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3345092:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3343702:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3343620:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3343604:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _p_3343566:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _err_3343424:stdgo.Error = (null : stdgo.Error);
            var _r_3346540:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3346378:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _before_3344769:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3343678:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3346065:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3346779:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3344894:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _err_3346549:stdgo.Error = (null : stdgo.Error);
            var _before_3345077:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3343586:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3346154:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3343377i32;
                        } else {
                            _gotoNext = 3343558i32;
                        };
                    } else if (__value__ == (3343377i32)) {
                        {
                            _err_3343424 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3343424 != null) {
                                _gotoNext = 3343456i32;
                            } else {
                                _gotoNext = 3343483i32;
                            };
                        };
                    } else if (__value__ == (3343456i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3343424 };
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
                        _gotoNext = 3343483i32;
                    } else if (__value__ == (3343483i32)) {
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
                        _gotoNext = 3343558i32;
                    } else if (__value__ == (3343558i32)) {
                        _p_3343566._flags = _flags;
                        _p_3343566._wholeRegexp = _s?.__copy__();
                        _t_3343678 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3343686i32;
                    } else if (__value__ == (3343686i32)) {
                        if (_t_3343678 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3343698i32;
                        } else {
                            _gotoNext = 3347088i32;
                        };
                    } else if (__value__ == (3343698i32)) {
                        _repeat_3343702 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343716i32;
                    } else if (__value__ == (3343716i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3343729i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3343678[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3343842i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3344112i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3344209i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3344305i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3344420i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3344550i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3344664i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3344746i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3345047i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3345603i32;
                                } else {
                                    _gotoNext = 3343745i32;
                                };
                            };
                        } else {
                            _gotoNext = 3347063i32;
                        };
                    } else if (__value__ == (3343745i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3343678?.__copy__());
                                _c_3343586 = @:tmpset0 __tmp__._0;
                                _t_3343678 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3343796i32;
                            } else {
                                _gotoNext = 3343826i32;
                            };
                        };
                    } else if (__value__ == (3343796i32)) {
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
                        _gotoNext = 3343826i32;
                    } else if (__value__ == (3343826i32)) {
                        @:check2 _p_3343566._literal(_c_3343586);
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3343842i32)) {
                        if ((((_p_3343566._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3343678.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3343678[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3343907i32;
                        } else {
                            _gotoNext = 3344050i32;
                        };
                    } else if (__value__ == (3343907i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3343566._parsePerlFlags(_t_3343678?.__copy__());
                                _t_3343678 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3344003i32;
                            } else {
                                _gotoNext = 3344036i32;
                            };
                        };
                    } else if (__value__ == (3344003i32)) {
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
                        _gotoNext = 3344036i32;
                    } else if (__value__ == (3344036i32)) {
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344050i32)) {
                        _p_3343566._numCap++;
                        @:check2 _p_3343566._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3343566._numCap;
                        _t_3343678 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344112i32)) {
                        {
                            _err = @:check2 _p_3343566._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3344167i32;
                            } else {
                                _gotoNext = 3344197i32;
                            };
                        };
                    } else if (__value__ == (3344167i32)) {
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
                        _gotoNext = 3344197i32;
                    } else if (__value__ == (3344197i32)) {
                        _t_3343678 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344209i32)) {
                        {
                            _err = @:check2 _p_3343566._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3344263i32;
                            } else {
                                _gotoNext = 3344293i32;
                            };
                        };
                    } else if (__value__ == (3344263i32)) {
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
                        _gotoNext = 3344293i32;
                    } else if (__value__ == (3344293i32)) {
                        _t_3343678 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344305i32)) {
                        if ((_p_3343566._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3344342i32;
                        } else {
                            _gotoNext = 3344376i32;
                        };
                    } else if (__value__ == (3344342i32)) {
                        @:check2 _p_3343566._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3344408i32;
                    } else if (__value__ == (3344376i32)) {
                        _gotoNext = 3344376i32;
                        @:check2 _p_3343566._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3344408i32;
                    } else if (__value__ == (3344408i32)) {
                        _t_3343678 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344420i32)) {
                        if ((_p_3343566._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3344457i32;
                        } else {
                            _gotoNext = 3344508i32;
                        };
                    } else if (__value__ == (3344457i32)) {
                        {
                            final __t__ = @:check2 _p_3343566._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3344538i32;
                    } else if (__value__ == (3344508i32)) {
                        _gotoNext = 3344508i32;
                        @:check2 _p_3343566._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3344538i32;
                    } else if (__value__ == (3344538i32)) {
                        _t_3343678 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344550i32)) {
                        if ((_p_3343566._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3344585i32;
                        } else {
                            _gotoNext = 3344617i32;
                        };
                    } else if (__value__ == (3344585i32)) {
                        @:check2 _p_3343566._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3344652i32;
                    } else if (__value__ == (3344617i32)) {
                        _gotoNext = 3344617i32;
                        @:check2 _p_3343566._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3344652i32;
                    } else if (__value__ == (3344652i32)) {
                        _t_3343678 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344664i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3343566._parseClass(_t_3343678?.__copy__());
                                _t_3343678 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3344717i32;
                            } else {
                                _gotoNext = 3347063i32;
                            };
                        };
                    } else if (__value__ == (3344717i32)) {
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
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3344746i32)) {
                        _before_3344769 = _t_3343678?.__copy__();
                        _gotoNext = 3344784i32;
                    } else if (__value__ == (3344784i32)) {
                        {
                            final __value__ = _t_3343678[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3344801i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3344830i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3344859i32;
                            } else {
                                _gotoNext = 3344894i32;
                            };
                        };
                    } else if (__value__ == (3344801i32)) {
                        _op_3343604 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3344894i32;
                    } else if (__value__ == (3344830i32)) {
                        _op_3343604 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3344894i32;
                    } else if (__value__ == (3344859i32)) {
                        _op_3343604 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3344894i32;
                    } else if (__value__ == (3344894i32)) {
                        _after_3344894 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3343566._repeat(_op_3343604, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3344769?.__copy__(), _after_3344894?.__copy__(), _lastRepeat_3343620?.__copy__());
                                _after_3344894 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3344986i32;
                            } else {
                                _gotoNext = 3345016i32;
                            };
                        };
                    } else if (__value__ == (3344986i32)) {
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
                        _gotoNext = 3345016i32;
                    } else if (__value__ == (3345016i32)) {
                        _repeat_3343702 = _before_3344769?.__copy__();
                        _t_3343678 = _after_3344894?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3345047i32)) {
                        _op_3343604 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3345077 = _t_3343678?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3343566._parseRepeat(_t_3343678?.__copy__());
                            _min_3345092 = @:tmpset0 __tmp__._0;
                            _max_3345097 = @:tmpset0 __tmp__._1;
                            _after_3345102 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3345109 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3345109) {
                            _gotoNext = 3345142i32;
                        } else {
                            _gotoNext = 3345250i32;
                        };
                    } else if (__value__ == (3345142i32)) {
                        @:check2 _p_3343566._literal((123 : stdgo.GoInt32));
                        _t_3343678 = (_t_3343678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3345250i32)) {
                        if (((((_min_3345092 < (0 : stdgo.GoInt) : Bool) || (_min_3345092 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3345097 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3345097 >= (0 : stdgo.GoInt) : Bool) && (_min_3345092 > _max_3345097 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3345314i32;
                        } else {
                            _gotoNext = 3345464i32;
                        };
                    } else if (__value__ == (3345314i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3345077.__slice__(0, ((_before_3345077.length) - (_after_3345102.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3345464i32;
                    } else if (__value__ == (3345464i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3343566._repeat(_op_3343604, _min_3345092, _max_3345097, _before_3345077?.__copy__(), _after_3345102?.__copy__(), _lastRepeat_3343620?.__copy__());
                                _after_3345102 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3345542i32;
                            } else {
                                _gotoNext = 3345572i32;
                            };
                        };
                    } else if (__value__ == (3345542i32)) {
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
                        _gotoNext = 3345572i32;
                    } else if (__value__ == (3345572i32)) {
                        _repeat_3343702 = _before_3345077?.__copy__();
                        _t_3343678 = _after_3345102?.__copy__();
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3345603i32)) {
                        if ((((_p_3343566._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3343678.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3345654i32;
                        } else {
                            _gotoNext = 3346378i32;
                        };
                    } else if (__value__ == (3345654i32)) {
                        _gotoNext = 3345660i32;
                    } else if (__value__ == (3345660i32)) {
                        {
                            final __value__ = _t_3343678[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3345678i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3345751i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3345827i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3345905i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3346000i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3346296i32;
                            } else {
                                _gotoNext = 3346378i32;
                            };
                        };
                    } else if (__value__ == (3345678i32)) {
                        @:check2 _p_3343566._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3343678 = (_t_3343678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3345751i32)) {
                        @:check2 _p_3343566._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3343678 = (_t_3343678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3345827i32)) {
                        @:check2 _p_3343566._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3343678 = (_t_3343678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3345905i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3343678.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3346378i32;
                    } else if (__value__ == (3346000i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3343678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3346065 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3343678 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3346123i32;
                    } else if (__value__ == (3346123i32)) {
                        if (_lit_3346065 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3346137i32;
                        } else {
                            _gotoNext = 3346276i32;
                        };
                    } else if (__value__ == (3346137i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3346065?.__copy__());
                            _c_3346145 = @:tmpset0 __tmp__._0;
                            _rest_3346148 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3346154 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3346154 != null) {
                            _gotoNext = 3346195i32;
                        } else {
                            _gotoNext = 3346234i32;
                        };
                    } else if (__value__ == (3346195i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3346154 };
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
                        _gotoNext = 3346234i32;
                    } else if (__value__ == (3346234i32)) {
                        @:check2 _p_3343566._literal(_c_3346145);
                        _lit_3346065 = _rest_3346148?.__copy__();
                        _gotoNext = 3346123i32;
                    } else if (__value__ == (3346276i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3346296i32)) {
                        @:check2 _p_3343566._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3343678 = (_t_3343678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3346378i32)) {
                        _re_3346378 = @:check2 _p_3343566._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3346378 ?? throw "null pointer dereference").flags = _p_3343566._flags;
                        if ((((_t_3343678.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3343678[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3343678[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3346534i32;
                        } else {
                            _gotoNext = 3346776i32;
                        };
                    } else if (__value__ == (3346534i32)) {
                        {
                            var __tmp__ = @:check2 _p_3343566._parseUnicodeClass(_t_3343678?.__copy__(), ((@:checkr _re_3346378 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3346540 = @:tmpset0 __tmp__._0;
                            _rest_3346543 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3346549 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3346549 != null) {
                            _gotoNext = 3346611i32;
                        } else {
                            _gotoNext = 3346644i32;
                        };
                    } else if (__value__ == (3346611i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3346549 };
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
                        _gotoNext = 3346644i32;
                    } else if (__value__ == (3346644i32)) {
                        if (_r_3346540 != null) {
                            _gotoNext = 3346656i32;
                        } else {
                            _gotoNext = 3346776i32;
                        };
                    } else if (__value__ == (3346656i32)) {
                        (@:checkr _re_3346378 ?? throw "null pointer dereference").rune = _r_3346540;
                        _t_3343678 = _rest_3346543?.__copy__();
                        @:check2 _p_3343566._push(_re_3346378);
                        bigSwitchBreak = true;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3346776i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3343566._parsePerlClassEscape(_t_3343678?.__copy__(), ((@:checkr _re_3346378 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3346779 = @:tmpset0 __tmp__._0;
                                _rest_3346782 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3346779 != null) {
                                _gotoNext = 3346840i32;
                            } else {
                                _gotoNext = 3346914i32;
                            };
                        };
                    } else if (__value__ == (3346840i32)) {
                        (@:checkr _re_3346378 ?? throw "null pointer dereference").rune = _r_3346779;
                        _t_3343678 = _rest_3346782?.__copy__();
                        @:check2 _p_3343566._push(_re_3346378);
                        bigSwitchBreak = true;
                        _gotoNext = 3343729i32;
                    } else if (__value__ == (3346914i32)) {
                        @:check2 _p_3343566._reuse(_re_3346378);
                        {
                            {
                                var __tmp__ = @:check2 _p_3343566._parseEscape(_t_3343678?.__copy__());
                                _c_3343586 = @:tmpset0 __tmp__._0;
                                _t_3343678 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3347014i32;
                            } else {
                                _gotoNext = 3347044i32;
                            };
                        };
                    } else if (__value__ == (3347014i32)) {
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
                        _gotoNext = 3347044i32;
                    } else if (__value__ == (3347044i32)) {
                        @:check2 _p_3343566._literal(_c_3343586);
                        _gotoNext = 3347063i32;
                    } else if (__value__ == (3347063i32)) {
                        _lastRepeat_3343620 = _repeat_3343702?.__copy__();
                        _gotoNext = 3343686i32;
                    } else if (__value__ == (3347088i32)) {
                        @:check2 _p_3343566._concat();
                        if (@:check2 _p_3343566._swapVerticalBar()) {
                            _gotoNext = 3347123i32;
                        } else {
                            _gotoNext = 3347188i32;
                        };
                    } else if (__value__ == (3347123i32)) {
                        _p_3343566._stack = (_p_3343566._stack.__slice__(0, ((_p_3343566._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3347188i32;
                    } else if (__value__ == (3347188i32)) {
                        @:check2 _p_3343566._alternate();
                        _n_3347204 = (_p_3343566._stack.length);
                        if (_n_3347204 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3347233i32;
                        } else {
                            _gotoNext = 3347280i32;
                        };
                    } else if (__value__ == (3347233i32)) {
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
                        _gotoNext = 3347280i32;
                    } else if (__value__ == (3347280i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3343566._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
