package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _before_3308470:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3309942:stdgo.Error = (null : stdgo.Error);
            var _after_3308287:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3306979:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3306817:stdgo.Error = (null : stdgo.Error);
            var _r_3310172:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3309547:stdgo.Error = (null : stdgo.Error);
            var _c_3309538:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3308502:Bool = false;
            var _lastRepeat_3307013:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3306959:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var bigSwitchBreak = false;
            var _rest_3310175:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3309936:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3309458:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3308485:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3307071:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3306997:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _rest_3309541:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3308495:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3310597:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3309933:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3309771:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _max_3308490:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3308162:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3307095:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3306770i32;
                        } else {
                            _gotoNext = 3306951i32;
                        };
                    } else if (__value__ == (3306770i32)) {
                        {
                            _err_3306817 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3306817 != null) {
                                _gotoNext = 3306849i32;
                            } else {
                                _gotoNext = 3306876i32;
                            };
                        };
                    } else if (__value__ == (3306849i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3306817 };
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
                        _gotoNext = 3306876i32;
                    } else if (__value__ == (3306876i32)) {
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
                        _gotoNext = 3306951i32;
                    } else if (__value__ == (3306951i32)) {
                        _p_3306959._flags = _flags;
                        _p_3306959._wholeRegexp = _s?.__copy__();
                        _t_3307071 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3307079i32;
                    } else if (__value__ == (3307079i32)) {
                        if (_t_3307071 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3307091i32;
                        } else {
                            _gotoNext = 3310481i32;
                        };
                    } else if (__value__ == (3307091i32)) {
                        _repeat_3307095 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3307109i32;
                    } else if (__value__ == (3307109i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3307122i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3307071[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307235i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307505i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307602i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307698i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307813i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307943i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3308057i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3308139i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3308440i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3308996i32;
                                } else {
                                    _gotoNext = 3307138i32;
                                };
                            };
                        } else {
                            _gotoNext = 3310456i32;
                        };
                    } else if (__value__ == (3307138i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3307071?.__copy__());
                                _c_3306979 = @:tmpset0 __tmp__._0;
                                _t_3307071 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3307189i32;
                            } else {
                                _gotoNext = 3307219i32;
                            };
                        };
                    } else if (__value__ == (3307189i32)) {
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
                        _gotoNext = 3307219i32;
                    } else if (__value__ == (3307219i32)) {
                        @:check2 _p_3306959._literal(_c_3306979);
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3307235i32)) {
                        if ((((_p_3306959._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3307071.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3307071[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3307300i32;
                        } else {
                            _gotoNext = 3307443i32;
                        };
                    } else if (__value__ == (3307300i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3306959._parsePerlFlags(_t_3307071?.__copy__());
                                _t_3307071 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3307396i32;
                            } else {
                                _gotoNext = 3307429i32;
                            };
                        };
                    } else if (__value__ == (3307396i32)) {
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
                        _gotoNext = 3307429i32;
                    } else if (__value__ == (3307429i32)) {
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3307443i32)) {
                        _p_3306959._numCap++;
                        @:check2 _p_3306959._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3306959._numCap;
                        _t_3307071 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3307505i32)) {
                        {
                            _err = @:check2 _p_3306959._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3307560i32;
                            } else {
                                _gotoNext = 3307590i32;
                            };
                        };
                    } else if (__value__ == (3307560i32)) {
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
                        _gotoNext = 3307590i32;
                    } else if (__value__ == (3307590i32)) {
                        _t_3307071 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3307602i32)) {
                        {
                            _err = @:check2 _p_3306959._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3307656i32;
                            } else {
                                _gotoNext = 3307686i32;
                            };
                        };
                    } else if (__value__ == (3307656i32)) {
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
                        _gotoNext = 3307686i32;
                    } else if (__value__ == (3307686i32)) {
                        _t_3307071 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3307698i32)) {
                        if ((_p_3306959._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3307735i32;
                        } else {
                            _gotoNext = 3307769i32;
                        };
                    } else if (__value__ == (3307735i32)) {
                        @:check2 _p_3306959._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3307801i32;
                    } else if (__value__ == (3307769i32)) {
                        _gotoNext = 3307769i32;
                        @:check2 _p_3306959._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3307801i32;
                    } else if (__value__ == (3307801i32)) {
                        _t_3307071 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3307813i32)) {
                        if ((_p_3306959._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3307850i32;
                        } else {
                            _gotoNext = 3307901i32;
                        };
                    } else if (__value__ == (3307850i32)) {
                        {
                            final __t__ = @:check2 _p_3306959._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3307931i32;
                    } else if (__value__ == (3307901i32)) {
                        _gotoNext = 3307901i32;
                        @:check2 _p_3306959._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3307931i32;
                    } else if (__value__ == (3307931i32)) {
                        _t_3307071 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3307943i32)) {
                        if ((_p_3306959._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3307978i32;
                        } else {
                            _gotoNext = 3308010i32;
                        };
                    } else if (__value__ == (3307978i32)) {
                        @:check2 _p_3306959._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3308045i32;
                    } else if (__value__ == (3308010i32)) {
                        _gotoNext = 3308010i32;
                        @:check2 _p_3306959._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3308045i32;
                    } else if (__value__ == (3308045i32)) {
                        _t_3307071 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3308057i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3306959._parseClass(_t_3307071?.__copy__());
                                _t_3307071 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3308110i32;
                            } else {
                                _gotoNext = 3310456i32;
                            };
                        };
                    } else if (__value__ == (3308110i32)) {
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
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3308139i32)) {
                        _before_3308162 = _t_3307071?.__copy__();
                        _gotoNext = 3308177i32;
                    } else if (__value__ == (3308177i32)) {
                        {
                            final __value__ = _t_3307071[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3308194i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3308223i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3308252i32;
                            } else {
                                _gotoNext = 3308287i32;
                            };
                        };
                    } else if (__value__ == (3308194i32)) {
                        _op_3306997 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3308287i32;
                    } else if (__value__ == (3308223i32)) {
                        _op_3306997 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3308287i32;
                    } else if (__value__ == (3308252i32)) {
                        _op_3306997 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3308287i32;
                    } else if (__value__ == (3308287i32)) {
                        _after_3308287 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3306959._repeat(_op_3306997, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3308162?.__copy__(), _after_3308287?.__copy__(), _lastRepeat_3307013?.__copy__());
                                _after_3308287 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3308379i32;
                            } else {
                                _gotoNext = 3308409i32;
                            };
                        };
                    } else if (__value__ == (3308379i32)) {
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
                        _gotoNext = 3308409i32;
                    } else if (__value__ == (3308409i32)) {
                        _repeat_3307095 = _before_3308162?.__copy__();
                        _t_3307071 = _after_3308287?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3308440i32)) {
                        _op_3306997 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3308470 = _t_3307071?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3306959._parseRepeat(_t_3307071?.__copy__());
                            _min_3308485 = @:tmpset0 __tmp__._0;
                            _max_3308490 = @:tmpset0 __tmp__._1;
                            _after_3308495 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3308502 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3308502) {
                            _gotoNext = 3308535i32;
                        } else {
                            _gotoNext = 3308643i32;
                        };
                    } else if (__value__ == (3308535i32)) {
                        @:check2 _p_3306959._literal((123 : stdgo.GoInt32));
                        _t_3307071 = (_t_3307071.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3308643i32)) {
                        if (((((_min_3308485 < (0 : stdgo.GoInt) : Bool) || (_min_3308485 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3308490 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3308490 >= (0 : stdgo.GoInt) : Bool) && (_min_3308485 > _max_3308490 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3308707i32;
                        } else {
                            _gotoNext = 3308857i32;
                        };
                    } else if (__value__ == (3308707i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3308470.__slice__(0, ((_before_3308470.length) - (_after_3308495.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3308857i32;
                    } else if (__value__ == (3308857i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3306959._repeat(_op_3306997, _min_3308485, _max_3308490, _before_3308470?.__copy__(), _after_3308495?.__copy__(), _lastRepeat_3307013?.__copy__());
                                _after_3308495 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3308935i32;
                            } else {
                                _gotoNext = 3308965i32;
                            };
                        };
                    } else if (__value__ == (3308935i32)) {
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
                        _gotoNext = 3308965i32;
                    } else if (__value__ == (3308965i32)) {
                        _repeat_3307095 = _before_3308470?.__copy__();
                        _t_3307071 = _after_3308495?.__copy__();
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3308996i32)) {
                        if ((((_p_3306959._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3307071.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3309047i32;
                        } else {
                            _gotoNext = 3309771i32;
                        };
                    } else if (__value__ == (3309047i32)) {
                        _gotoNext = 3309053i32;
                    } else if (__value__ == (3309053i32)) {
                        {
                            final __value__ = _t_3307071[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3309071i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3309144i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3309220i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3309298i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3309393i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3309689i32;
                            } else {
                                _gotoNext = 3309771i32;
                            };
                        };
                    } else if (__value__ == (3309071i32)) {
                        @:check2 _p_3306959._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3307071 = (_t_3307071.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3309144i32)) {
                        @:check2 _p_3306959._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3307071 = (_t_3307071.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3309220i32)) {
                        @:check2 _p_3306959._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3307071 = (_t_3307071.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3309298i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3307071.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3309771i32;
                    } else if (__value__ == (3309393i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3307071.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3309458 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3307071 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3309516i32;
                    } else if (__value__ == (3309516i32)) {
                        if (_lit_3309458 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3309530i32;
                        } else {
                            _gotoNext = 3309669i32;
                        };
                    } else if (__value__ == (3309530i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3309458?.__copy__());
                            _c_3309538 = @:tmpset0 __tmp__._0;
                            _rest_3309541 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3309547 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3309547 != null) {
                            _gotoNext = 3309588i32;
                        } else {
                            _gotoNext = 3309627i32;
                        };
                    } else if (__value__ == (3309588i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3309547 };
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
                        _gotoNext = 3309627i32;
                    } else if (__value__ == (3309627i32)) {
                        @:check2 _p_3306959._literal(_c_3309538);
                        _lit_3309458 = _rest_3309541?.__copy__();
                        _gotoNext = 3309516i32;
                    } else if (__value__ == (3309669i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3309689i32)) {
                        @:check2 _p_3306959._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3307071 = (_t_3307071.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3309771i32)) {
                        _re_3309771 = @:check2 _p_3306959._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3309771 ?? throw "null pointer dereference").flags = _p_3306959._flags;
                        if ((((_t_3307071.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3307071[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3307071[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3309927i32;
                        } else {
                            _gotoNext = 3310169i32;
                        };
                    } else if (__value__ == (3309927i32)) {
                        {
                            var __tmp__ = @:check2 _p_3306959._parseUnicodeClass(_t_3307071?.__copy__(), ((@:checkr _re_3309771 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3309933 = @:tmpset0 __tmp__._0;
                            _rest_3309936 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3309942 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3309942 != null) {
                            _gotoNext = 3310004i32;
                        } else {
                            _gotoNext = 3310037i32;
                        };
                    } else if (__value__ == (3310004i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3309942 };
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
                        _gotoNext = 3310037i32;
                    } else if (__value__ == (3310037i32)) {
                        if (_r_3309933 != null) {
                            _gotoNext = 3310049i32;
                        } else {
                            _gotoNext = 3310169i32;
                        };
                    } else if (__value__ == (3310049i32)) {
                        (@:checkr _re_3309771 ?? throw "null pointer dereference").rune = _r_3309933;
                        _t_3307071 = _rest_3309936?.__copy__();
                        @:check2 _p_3306959._push(_re_3309771);
                        bigSwitchBreak = true;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3310169i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3306959._parsePerlClassEscape(_t_3307071?.__copy__(), ((@:checkr _re_3309771 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3310172 = @:tmpset0 __tmp__._0;
                                _rest_3310175 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3310172 != null) {
                                _gotoNext = 3310233i32;
                            } else {
                                _gotoNext = 3310307i32;
                            };
                        };
                    } else if (__value__ == (3310233i32)) {
                        (@:checkr _re_3309771 ?? throw "null pointer dereference").rune = _r_3310172;
                        _t_3307071 = _rest_3310175?.__copy__();
                        @:check2 _p_3306959._push(_re_3309771);
                        bigSwitchBreak = true;
                        _gotoNext = 3307122i32;
                    } else if (__value__ == (3310307i32)) {
                        @:check2 _p_3306959._reuse(_re_3309771);
                        {
                            {
                                var __tmp__ = @:check2 _p_3306959._parseEscape(_t_3307071?.__copy__());
                                _c_3306979 = @:tmpset0 __tmp__._0;
                                _t_3307071 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3310407i32;
                            } else {
                                _gotoNext = 3310437i32;
                            };
                        };
                    } else if (__value__ == (3310407i32)) {
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
                        _gotoNext = 3310437i32;
                    } else if (__value__ == (3310437i32)) {
                        @:check2 _p_3306959._literal(_c_3306979);
                        _gotoNext = 3310456i32;
                    } else if (__value__ == (3310456i32)) {
                        _lastRepeat_3307013 = _repeat_3307095?.__copy__();
                        _gotoNext = 3307079i32;
                    } else if (__value__ == (3310481i32)) {
                        @:check2 _p_3306959._concat();
                        if (@:check2 _p_3306959._swapVerticalBar()) {
                            _gotoNext = 3310516i32;
                        } else {
                            _gotoNext = 3310581i32;
                        };
                    } else if (__value__ == (3310516i32)) {
                        _p_3306959._stack = (_p_3306959._stack.__slice__(0, ((_p_3306959._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3310581i32;
                    } else if (__value__ == (3310581i32)) {
                        @:check2 _p_3306959._alternate();
                        _n_3310597 = (_p_3306959._stack.length);
                        if (_n_3310597 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3310626i32;
                        } else {
                            _gotoNext = 3310673i32;
                        };
                    } else if (__value__ == (3310626i32)) {
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
                        _gotoNext = 3310673i32;
                    } else if (__value__ == (3310673i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3306959._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
