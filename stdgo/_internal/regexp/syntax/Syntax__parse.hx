package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _op_3317419:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3320364:stdgo.Error = (null : stdgo.Error);
            var _after_3318917:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3317401:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3320355:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3319963:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3317517:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3317381:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3320597:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3319969:stdgo.Error = (null : stdgo.Error);
            var _t_3317493:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3317239:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _r_3320594:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3320358:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3320193:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _before_3318584:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3318709:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3321019:stdgo.GoInt = (0 : stdgo.GoInt);
            var _ok_3318924:Bool = false;
            var _lastRepeat_3317435:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3319960:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3319880:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3318892:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3318907:stdgo.GoInt = (0 : stdgo.GoInt);
            var _max_3318912:stdgo.GoInt = (0 : stdgo.GoInt);
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
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3317192i32;
                        } else {
                            _gotoNext = 3317373i32;
                        };
                    } else if (__value__ == (3317192i32)) {
                        {
                            _err_3317239 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3317239 != null) {
                                _gotoNext = 3317271i32;
                            } else {
                                _gotoNext = 3317298i32;
                            };
                        };
                    } else if (__value__ == (3317271i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3317239 };
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
                        _gotoNext = 3317298i32;
                    } else if (__value__ == (3317298i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
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
                        _gotoNext = 3317373i32;
                    } else if (__value__ == (3317373i32)) {
                        _p_3317381._flags = _flags;
                        _p_3317381._wholeRegexp = _s?.__copy__();
                        _t_3317493 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3317501i32;
                    } else if (__value__ == (3317501i32)) {
                        if (_t_3317493 != (stdgo.Go.str())) {
                            _gotoNext = 3317513i32;
                        } else {
                            _gotoNext = 3320903i32;
                        };
                    } else if (__value__ == (3317513i32)) {
                        _repeat_3317517 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3317531i32;
                    } else if (__value__ == (3317531i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3317544i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3317493[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317657i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3317927i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318024i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318120i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318235i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318365i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318479i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318561i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3318862i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3319418i32;
                                } else {
                                    _gotoNext = 3317560i32;
                                };
                            };
                        } else {
                            _gotoNext = 3320878i32;
                        };
                    } else if (__value__ == (3317560i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3317493?.__copy__());
                                _c_3317401 = @:tmpset0 __tmp__._0;
                                _t_3317493 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3317611i32;
                            } else {
                                _gotoNext = 3317641i32;
                            };
                        };
                    } else if (__value__ == (3317611i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3317641i32;
                    } else if (__value__ == (3317641i32)) {
                        @:check2 _p_3317381._literal(_c_3317401);
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3317657i32)) {
                        if ((((_p_3317381._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3317493.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3317493[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3317722i32;
                        } else {
                            _gotoNext = 3317865i32;
                        };
                    } else if (__value__ == (3317722i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3317381._parsePerlFlags(_t_3317493?.__copy__());
                                _t_3317493 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3317818i32;
                            } else {
                                _gotoNext = 3317851i32;
                            };
                        };
                    } else if (__value__ == (3317818i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3317851i32;
                    } else if (__value__ == (3317851i32)) {
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3317865i32)) {
                        _p_3317381._numCap++;
                        @:check2 _p_3317381._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3317381._numCap;
                        _t_3317493 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3317927i32)) {
                        {
                            _err = @:check2 _p_3317381._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3317982i32;
                            } else {
                                _gotoNext = 3318012i32;
                            };
                        };
                    } else if (__value__ == (3317982i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3318012i32;
                    } else if (__value__ == (3318012i32)) {
                        _t_3317493 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3318024i32)) {
                        {
                            _err = @:check2 _p_3317381._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3318078i32;
                            } else {
                                _gotoNext = 3318108i32;
                            };
                        };
                    } else if (__value__ == (3318078i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3318108i32;
                    } else if (__value__ == (3318108i32)) {
                        _t_3317493 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3318120i32)) {
                        if ((_p_3317381._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3318157i32;
                        } else {
                            _gotoNext = 3318191i32;
                        };
                    } else if (__value__ == (3318157i32)) {
                        @:check2 _p_3317381._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3318223i32;
                    } else if (__value__ == (3318191i32)) {
                        _gotoNext = 3318191i32;
                        @:check2 _p_3317381._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3318223i32;
                    } else if (__value__ == (3318223i32)) {
                        _t_3317493 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3318235i32)) {
                        if ((_p_3317381._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3318272i32;
                        } else {
                            _gotoNext = 3318323i32;
                        };
                    } else if (__value__ == (3318272i32)) {
                        {
                            final __t__ = @:check2 _p_3317381._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3318353i32;
                    } else if (__value__ == (3318323i32)) {
                        _gotoNext = 3318323i32;
                        @:check2 _p_3317381._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3318353i32;
                    } else if (__value__ == (3318353i32)) {
                        _t_3317493 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3318365i32)) {
                        if ((_p_3317381._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3318400i32;
                        } else {
                            _gotoNext = 3318432i32;
                        };
                    } else if (__value__ == (3318400i32)) {
                        @:check2 _p_3317381._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3318467i32;
                    } else if (__value__ == (3318432i32)) {
                        _gotoNext = 3318432i32;
                        @:check2 _p_3317381._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3318467i32;
                    } else if (__value__ == (3318467i32)) {
                        _t_3317493 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3318479i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3317381._parseClass(_t_3317493?.__copy__());
                                _t_3317493 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3318532i32;
                            } else {
                                _gotoNext = 3320878i32;
                            };
                        };
                    } else if (__value__ == (3318532i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3318561i32)) {
                        _before_3318584 = _t_3317493?.__copy__();
                        _gotoNext = 3318599i32;
                    } else if (__value__ == (3318599i32)) {
                        {
                            final __value__ = _t_3317493[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3318616i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3318645i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3318674i32;
                            } else {
                                _gotoNext = 3318709i32;
                            };
                        };
                    } else if (__value__ == (3318616i32)) {
                        _op_3317419 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3318709i32;
                    } else if (__value__ == (3318645i32)) {
                        _op_3317419 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3318709i32;
                    } else if (__value__ == (3318674i32)) {
                        _op_3317419 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3318709i32;
                    } else if (__value__ == (3318709i32)) {
                        _after_3318709 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3317381._repeat(_op_3317419, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3318584?.__copy__(), _after_3318709?.__copy__(), _lastRepeat_3317435?.__copy__());
                                _after_3318709 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3318801i32;
                            } else {
                                _gotoNext = 3318831i32;
                            };
                        };
                    } else if (__value__ == (3318801i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3318831i32;
                    } else if (__value__ == (3318831i32)) {
                        _repeat_3317517 = _before_3318584?.__copy__();
                        _t_3317493 = _after_3318709?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3318862i32)) {
                        _op_3317419 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3318892 = _t_3317493?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3317381._parseRepeat(_t_3317493?.__copy__());
                            _min_3318907 = @:tmpset0 __tmp__._0;
                            _max_3318912 = @:tmpset0 __tmp__._1;
                            _after_3318917 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3318924 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3318924) {
                            _gotoNext = 3318957i32;
                        } else {
                            _gotoNext = 3319065i32;
                        };
                    } else if (__value__ == (3318957i32)) {
                        @:check2 _p_3317381._literal((123 : stdgo.GoInt32));
                        _t_3317493 = (_t_3317493.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3319065i32)) {
                        if (((((_min_3318907 < (0 : stdgo.GoInt) : Bool) || (_min_3318907 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3318912 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3318912 >= (0 : stdgo.GoInt) : Bool) && (_min_3318907 > _max_3318912 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3319129i32;
                        } else {
                            _gotoNext = 3319279i32;
                        };
                    } else if (__value__ == (3319129i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3318892.__slice__(0, ((_before_3318892.length) - (_after_3318917.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3319279i32;
                    } else if (__value__ == (3319279i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3317381._repeat(_op_3317419, _min_3318907, _max_3318912, _before_3318892?.__copy__(), _after_3318917?.__copy__(), _lastRepeat_3317435?.__copy__());
                                _after_3318917 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3319357i32;
                            } else {
                                _gotoNext = 3319387i32;
                            };
                        };
                    } else if (__value__ == (3319357i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3319387i32;
                    } else if (__value__ == (3319387i32)) {
                        _repeat_3317517 = _before_3318892?.__copy__();
                        _t_3317493 = _after_3318917?.__copy__();
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3319418i32)) {
                        if ((((_p_3317381._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3317493.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3319469i32;
                        } else {
                            _gotoNext = 3320193i32;
                        };
                    } else if (__value__ == (3319469i32)) {
                        _gotoNext = 3319475i32;
                    } else if (__value__ == (3319475i32)) {
                        {
                            final __value__ = _t_3317493[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3319493i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3319566i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3319642i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3319720i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3319815i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3320111i32;
                            } else {
                                _gotoNext = 3320193i32;
                            };
                        };
                    } else if (__value__ == (3319493i32)) {
                        @:check2 _p_3317381._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3317493 = (_t_3317493.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3319566i32)) {
                        @:check2 _p_3317381._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3317493 = (_t_3317493.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3319642i32)) {
                        @:check2 _p_3317381._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3317493 = (_t_3317493.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3319720i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3317493.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3320193i32;
                    } else if (__value__ == (3319815i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3317493.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3319880 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3317493 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3319938i32;
                    } else if (__value__ == (3319938i32)) {
                        if (_lit_3319880 != (stdgo.Go.str())) {
                            _gotoNext = 3319952i32;
                        } else {
                            _gotoNext = 3320091i32;
                        };
                    } else if (__value__ == (3319952i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3319880?.__copy__());
                            _c_3319960 = @:tmpset0 __tmp__._0;
                            _rest_3319963 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3319969 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3319969 != null) {
                            _gotoNext = 3320010i32;
                        } else {
                            _gotoNext = 3320049i32;
                        };
                    } else if (__value__ == (3320010i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3319969 };
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
                        _gotoNext = 3320049i32;
                    } else if (__value__ == (3320049i32)) {
                        @:check2 _p_3317381._literal(_c_3319960);
                        _lit_3319880 = _rest_3319963?.__copy__();
                        _gotoNext = 3319938i32;
                    } else if (__value__ == (3320091i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3320111i32)) {
                        @:check2 _p_3317381._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3317493 = (_t_3317493.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3320193i32)) {
                        _re_3320193 = @:check2 _p_3317381._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3320193 ?? throw "null pointer dereference").flags = _p_3317381._flags;
                        if ((((_t_3317493.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3317493[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3317493[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3320349i32;
                        } else {
                            _gotoNext = 3320591i32;
                        };
                    } else if (__value__ == (3320349i32)) {
                        {
                            var __tmp__ = @:check2 _p_3317381._parseUnicodeClass(_t_3317493?.__copy__(), ((@:checkr _re_3320193 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3320355 = @:tmpset0 __tmp__._0;
                            _rest_3320358 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3320364 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3320364 != null) {
                            _gotoNext = 3320426i32;
                        } else {
                            _gotoNext = 3320459i32;
                        };
                    } else if (__value__ == (3320426i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3320364 };
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
                        _gotoNext = 3320459i32;
                    } else if (__value__ == (3320459i32)) {
                        if (_r_3320355 != null) {
                            _gotoNext = 3320471i32;
                        } else {
                            _gotoNext = 3320591i32;
                        };
                    } else if (__value__ == (3320471i32)) {
                        (@:checkr _re_3320193 ?? throw "null pointer dereference").rune = _r_3320355;
                        _t_3317493 = _rest_3320358?.__copy__();
                        @:check2 _p_3317381._push(_re_3320193);
                        bigSwitchBreak = true;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3320591i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3317381._parsePerlClassEscape(_t_3317493?.__copy__(), ((@:checkr _re_3320193 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3320594 = @:tmpset0 __tmp__._0;
                                _rest_3320597 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3320594 != null) {
                                _gotoNext = 3320655i32;
                            } else {
                                _gotoNext = 3320729i32;
                            };
                        };
                    } else if (__value__ == (3320655i32)) {
                        (@:checkr _re_3320193 ?? throw "null pointer dereference").rune = _r_3320594;
                        _t_3317493 = _rest_3320597?.__copy__();
                        @:check2 _p_3317381._push(_re_3320193);
                        bigSwitchBreak = true;
                        _gotoNext = 3317544i32;
                    } else if (__value__ == (3320729i32)) {
                        @:check2 _p_3317381._reuse(_re_3320193);
                        {
                            {
                                var __tmp__ = @:check2 _p_3317381._parseEscape(_t_3317493?.__copy__());
                                _c_3317401 = @:tmpset0 __tmp__._0;
                                _t_3317493 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3320829i32;
                            } else {
                                _gotoNext = 3320859i32;
                            };
                        };
                    } else if (__value__ == (3320829i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3320859i32;
                    } else if (__value__ == (3320859i32)) {
                        @:check2 _p_3317381._literal(_c_3317401);
                        _gotoNext = 3320878i32;
                    } else if (__value__ == (3320878i32)) {
                        _lastRepeat_3317435 = _repeat_3317517?.__copy__();
                        _gotoNext = 3317501i32;
                    } else if (__value__ == (3320903i32)) {
                        @:check2 _p_3317381._concat();
                        if (@:check2 _p_3317381._swapVerticalBar()) {
                            _gotoNext = 3320938i32;
                        } else {
                            _gotoNext = 3321003i32;
                        };
                    } else if (__value__ == (3320938i32)) {
                        _p_3317381._stack = (_p_3317381._stack.__slice__(0, ((_p_3317381._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3321003i32;
                    } else if (__value__ == (3321003i32)) {
                        @:check2 _p_3317381._alternate();
                        _n_3321019 = (_p_3317381._stack.length);
                        if (_n_3321019 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3321048i32;
                        } else {
                            _gotoNext = 3321095i32;
                        };
                    } else if (__value__ == (3321048i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3321095i32;
                    } else if (__value__ == (3321095i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3317381._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        };
    }
