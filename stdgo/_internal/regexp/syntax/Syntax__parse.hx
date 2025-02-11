package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _min_3125268:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3126958:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3126719:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3126324:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3123742:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _err_3126330:stdgo.Error = (null : stdgo.Error);
            var _ok_3125285:Bool = false;
            var _after_3125278:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3126716:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lastRepeat_3123796:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3123780:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _re_3126554:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _lit_3126241:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3127380:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3126955:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3125253:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3125070:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3123878:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3123762:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _c_3126321:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3125273:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3124945:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3123854:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3123600:stdgo.Error = (null : stdgo.Error);
            var _err_3126725:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3123553i32;
                        } else {
                            _gotoNext = 3123734i32;
                        };
                    } else if (__value__ == (3123553i32)) {
                        {
                            _err_3123600 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3123600 != null) {
                                _gotoNext = 3123632i32;
                            } else {
                                _gotoNext = 3123659i32;
                            };
                        };
                    } else if (__value__ == (3123632i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3123600 };
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
                        _gotoNext = 3123659i32;
                    } else if (__value__ == (3123659i32)) {
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
                        _gotoNext = 3123734i32;
                    } else if (__value__ == (3123734i32)) {
                        _p_3123742._flags = _flags;
                        _p_3123742._wholeRegexp = _s?.__copy__();
                        _t_3123854 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3123862i32;
                    } else if (__value__ == (3123862i32)) {
                        if (_t_3123854 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3123874i32;
                        } else {
                            _gotoNext = 3127264i32;
                        };
                    } else if (__value__ == (3123874i32)) {
                        _repeat_3123878 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3123892i32;
                    } else if (__value__ == (3123892i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3123905i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3123854[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124018i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124288i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124385i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124481i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124596i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124726i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124840i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3124922i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3125223i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3125779i32;
                                } else {
                                    _gotoNext = 3123921i32;
                                };
                            };
                        } else {
                            _gotoNext = 3127239i32;
                        };
                    } else if (__value__ == (3123921i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3123854?.__copy__());
                                _c_3123762 = @:tmpset0 __tmp__._0;
                                _t_3123854 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3123972i32;
                            } else {
                                _gotoNext = 3124002i32;
                            };
                        };
                    } else if (__value__ == (3123972i32)) {
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
                        _gotoNext = 3124002i32;
                    } else if (__value__ == (3124002i32)) {
                        @:check2 _p_3123742._literal(_c_3123762);
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124018i32)) {
                        if ((((_p_3123742._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3123854.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3123854[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3124083i32;
                        } else {
                            _gotoNext = 3124226i32;
                        };
                    } else if (__value__ == (3124083i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3123742._parsePerlFlags(_t_3123854?.__copy__());
                                _t_3123854 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3124179i32;
                            } else {
                                _gotoNext = 3124212i32;
                            };
                        };
                    } else if (__value__ == (3124179i32)) {
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
                        _gotoNext = 3124212i32;
                    } else if (__value__ == (3124212i32)) {
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124226i32)) {
                        _p_3123742._numCap++;
                        @:check2 _p_3123742._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3123742._numCap;
                        _t_3123854 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124288i32)) {
                        {
                            _err = @:check2 _p_3123742._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3124343i32;
                            } else {
                                _gotoNext = 3124373i32;
                            };
                        };
                    } else if (__value__ == (3124343i32)) {
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
                        _gotoNext = 3124373i32;
                    } else if (__value__ == (3124373i32)) {
                        _t_3123854 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124385i32)) {
                        {
                            _err = @:check2 _p_3123742._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3124439i32;
                            } else {
                                _gotoNext = 3124469i32;
                            };
                        };
                    } else if (__value__ == (3124439i32)) {
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
                        _gotoNext = 3124469i32;
                    } else if (__value__ == (3124469i32)) {
                        _t_3123854 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124481i32)) {
                        if ((_p_3123742._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3124518i32;
                        } else {
                            _gotoNext = 3124552i32;
                        };
                    } else if (__value__ == (3124518i32)) {
                        @:check2 _p_3123742._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3124584i32;
                    } else if (__value__ == (3124552i32)) {
                        _gotoNext = 3124552i32;
                        @:check2 _p_3123742._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3124584i32;
                    } else if (__value__ == (3124584i32)) {
                        _t_3123854 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124596i32)) {
                        if ((_p_3123742._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3124633i32;
                        } else {
                            _gotoNext = 3124684i32;
                        };
                    } else if (__value__ == (3124633i32)) {
                        {
                            final __t__ = @:check2 _p_3123742._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3124714i32;
                    } else if (__value__ == (3124684i32)) {
                        _gotoNext = 3124684i32;
                        @:check2 _p_3123742._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3124714i32;
                    } else if (__value__ == (3124714i32)) {
                        _t_3123854 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124726i32)) {
                        if ((_p_3123742._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3124761i32;
                        } else {
                            _gotoNext = 3124793i32;
                        };
                    } else if (__value__ == (3124761i32)) {
                        @:check2 _p_3123742._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3124828i32;
                    } else if (__value__ == (3124793i32)) {
                        _gotoNext = 3124793i32;
                        @:check2 _p_3123742._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3124828i32;
                    } else if (__value__ == (3124828i32)) {
                        _t_3123854 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124840i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3123742._parseClass(_t_3123854?.__copy__());
                                _t_3123854 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3124893i32;
                            } else {
                                _gotoNext = 3127239i32;
                            };
                        };
                    } else if (__value__ == (3124893i32)) {
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
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3124922i32)) {
                        _before_3124945 = _t_3123854?.__copy__();
                        _gotoNext = 3124960i32;
                    } else if (__value__ == (3124960i32)) {
                        {
                            final __value__ = _t_3123854[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3124977i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3125006i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3125035i32;
                            } else {
                                _gotoNext = 3125070i32;
                            };
                        };
                    } else if (__value__ == (3124977i32)) {
                        _op_3123780 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3125070i32;
                    } else if (__value__ == (3125006i32)) {
                        _op_3123780 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3125070i32;
                    } else if (__value__ == (3125035i32)) {
                        _op_3123780 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3125070i32;
                    } else if (__value__ == (3125070i32)) {
                        _after_3125070 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3123742._repeat(_op_3123780, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3124945?.__copy__(), _after_3125070?.__copy__(), _lastRepeat_3123796?.__copy__());
                                _after_3125070 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3125162i32;
                            } else {
                                _gotoNext = 3125192i32;
                            };
                        };
                    } else if (__value__ == (3125162i32)) {
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
                        _gotoNext = 3125192i32;
                    } else if (__value__ == (3125192i32)) {
                        _repeat_3123878 = _before_3124945?.__copy__();
                        _t_3123854 = _after_3125070?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3125223i32)) {
                        _op_3123780 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3125253 = _t_3123854?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3123742._parseRepeat(_t_3123854?.__copy__());
                            _min_3125268 = @:tmpset0 __tmp__._0;
                            _max_3125273 = @:tmpset0 __tmp__._1;
                            _after_3125278 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3125285 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3125285) {
                            _gotoNext = 3125318i32;
                        } else {
                            _gotoNext = 3125426i32;
                        };
                    } else if (__value__ == (3125318i32)) {
                        @:check2 _p_3123742._literal((123 : stdgo.GoInt32));
                        _t_3123854 = (_t_3123854.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3125426i32)) {
                        if (((((_min_3125268 < (0 : stdgo.GoInt) : Bool) || (_min_3125268 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3125273 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3125273 >= (0 : stdgo.GoInt) : Bool) && (_min_3125268 > _max_3125273 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3125490i32;
                        } else {
                            _gotoNext = 3125640i32;
                        };
                    } else if (__value__ == (3125490i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3125253.__slice__(0, ((_before_3125253.length) - (_after_3125278.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3125640i32;
                    } else if (__value__ == (3125640i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3123742._repeat(_op_3123780, _min_3125268, _max_3125273, _before_3125253?.__copy__(), _after_3125278?.__copy__(), _lastRepeat_3123796?.__copy__());
                                _after_3125278 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3125718i32;
                            } else {
                                _gotoNext = 3125748i32;
                            };
                        };
                    } else if (__value__ == (3125718i32)) {
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
                        _gotoNext = 3125748i32;
                    } else if (__value__ == (3125748i32)) {
                        _repeat_3123878 = _before_3125253?.__copy__();
                        _t_3123854 = _after_3125278?.__copy__();
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3125779i32)) {
                        if ((((_p_3123742._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3123854.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3125830i32;
                        } else {
                            _gotoNext = 3126554i32;
                        };
                    } else if (__value__ == (3125830i32)) {
                        _gotoNext = 3125836i32;
                    } else if (__value__ == (3125836i32)) {
                        {
                            final __value__ = _t_3123854[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3125854i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3125927i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3126003i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3126081i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3126176i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3126472i32;
                            } else {
                                _gotoNext = 3126554i32;
                            };
                        };
                    } else if (__value__ == (3125854i32)) {
                        @:check2 _p_3123742._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3123854 = (_t_3123854.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3125927i32)) {
                        @:check2 _p_3123742._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3123854 = (_t_3123854.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3126003i32)) {
                        @:check2 _p_3123742._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3123854 = (_t_3123854.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3126081i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3123854.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3126554i32;
                    } else if (__value__ == (3126176i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3123854.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3126241 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3123854 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3126299i32;
                    } else if (__value__ == (3126299i32)) {
                        if (_lit_3126241 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3126313i32;
                        } else {
                            _gotoNext = 3126452i32;
                        };
                    } else if (__value__ == (3126313i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3126241?.__copy__());
                            _c_3126321 = @:tmpset0 __tmp__._0;
                            _rest_3126324 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3126330 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3126330 != null) {
                            _gotoNext = 3126371i32;
                        } else {
                            _gotoNext = 3126410i32;
                        };
                    } else if (__value__ == (3126371i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3126330 };
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
                        _gotoNext = 3126410i32;
                    } else if (__value__ == (3126410i32)) {
                        @:check2 _p_3123742._literal(_c_3126321);
                        _lit_3126241 = _rest_3126324?.__copy__();
                        _gotoNext = 3126299i32;
                    } else if (__value__ == (3126452i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3126472i32)) {
                        @:check2 _p_3123742._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3123854 = (_t_3123854.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3126554i32)) {
                        _re_3126554 = @:check2 _p_3123742._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3126554 ?? throw "null pointer dereference").flags = _p_3123742._flags;
                        if ((((_t_3123854.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3123854[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3123854[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3126710i32;
                        } else {
                            _gotoNext = 3126952i32;
                        };
                    } else if (__value__ == (3126710i32)) {
                        {
                            var __tmp__ = @:check2 _p_3123742._parseUnicodeClass(_t_3123854?.__copy__(), ((@:checkr _re_3126554 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3126716 = @:tmpset0 __tmp__._0;
                            _rest_3126719 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3126725 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3126725 != null) {
                            _gotoNext = 3126787i32;
                        } else {
                            _gotoNext = 3126820i32;
                        };
                    } else if (__value__ == (3126787i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3126725 };
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
                        _gotoNext = 3126820i32;
                    } else if (__value__ == (3126820i32)) {
                        if (_r_3126716 != null) {
                            _gotoNext = 3126832i32;
                        } else {
                            _gotoNext = 3126952i32;
                        };
                    } else if (__value__ == (3126832i32)) {
                        (@:checkr _re_3126554 ?? throw "null pointer dereference").rune = _r_3126716;
                        _t_3123854 = _rest_3126719?.__copy__();
                        @:check2 _p_3123742._push(_re_3126554);
                        bigSwitchBreak = true;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3126952i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3123742._parsePerlClassEscape(_t_3123854?.__copy__(), ((@:checkr _re_3126554 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3126955 = @:tmpset0 __tmp__._0;
                                _rest_3126958 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3126955 != null) {
                                _gotoNext = 3127016i32;
                            } else {
                                _gotoNext = 3127090i32;
                            };
                        };
                    } else if (__value__ == (3127016i32)) {
                        (@:checkr _re_3126554 ?? throw "null pointer dereference").rune = _r_3126955;
                        _t_3123854 = _rest_3126958?.__copy__();
                        @:check2 _p_3123742._push(_re_3126554);
                        bigSwitchBreak = true;
                        _gotoNext = 3123905i32;
                    } else if (__value__ == (3127090i32)) {
                        @:check2 _p_3123742._reuse(_re_3126554);
                        {
                            {
                                var __tmp__ = @:check2 _p_3123742._parseEscape(_t_3123854?.__copy__());
                                _c_3123762 = @:tmpset0 __tmp__._0;
                                _t_3123854 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3127190i32;
                            } else {
                                _gotoNext = 3127220i32;
                            };
                        };
                    } else if (__value__ == (3127190i32)) {
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
                        _gotoNext = 3127220i32;
                    } else if (__value__ == (3127220i32)) {
                        @:check2 _p_3123742._literal(_c_3123762);
                        _gotoNext = 3127239i32;
                    } else if (__value__ == (3127239i32)) {
                        _lastRepeat_3123796 = _repeat_3123878?.__copy__();
                        _gotoNext = 3123862i32;
                    } else if (__value__ == (3127264i32)) {
                        @:check2 _p_3123742._concat();
                        if (@:check2 _p_3123742._swapVerticalBar()) {
                            _gotoNext = 3127299i32;
                        } else {
                            _gotoNext = 3127364i32;
                        };
                    } else if (__value__ == (3127299i32)) {
                        _p_3123742._stack = (_p_3123742._stack.__slice__(0, ((_p_3123742._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3127364i32;
                    } else if (__value__ == (3127364i32)) {
                        @:check2 _p_3123742._alternate();
                        _n_3127380 = (_p_3123742._stack.length);
                        if (_n_3127380 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3127409i32;
                        } else {
                            _gotoNext = 3127456i32;
                        };
                    } else if (__value__ == (3127409i32)) {
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
                        _gotoNext = 3127456i32;
                    } else if (__value__ == (3127456i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3123742._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
