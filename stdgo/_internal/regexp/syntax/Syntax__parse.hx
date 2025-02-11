package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _ok_3333997:Bool = false;
            var _after_3333782:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3332508:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3335437:stdgo.Error = (null : stdgo.Error);
            var _c_3335033:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3333980:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3332590:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3335667:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3335036:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3333985:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3333657:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3335042:stdgo.Error = (null : stdgo.Error);
            var _r_3335428:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3333965:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3335431:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3333990:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3332312:stdgo.Error = (null : stdgo.Error);
            var _op_3332492:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _c_3332474:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3332454:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _n_3336092:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3335670:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3335266:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _lit_3334953:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3332566:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3332265i32;
                        } else {
                            _gotoNext = 3332446i32;
                        };
                    } else if (__value__ == (3332265i32)) {
                        {
                            _err_3332312 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3332312 != null) {
                                _gotoNext = 3332344i32;
                            } else {
                                _gotoNext = 3332371i32;
                            };
                        };
                    } else if (__value__ == (3332344i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3332312 };
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
                        _gotoNext = 3332371i32;
                    } else if (__value__ == (3332371i32)) {
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
                        _gotoNext = 3332446i32;
                    } else if (__value__ == (3332446i32)) {
                        _p_3332454._flags = _flags;
                        _p_3332454._wholeRegexp = _s?.__copy__();
                        _t_3332566 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3332574i32;
                    } else if (__value__ == (3332574i32)) {
                        if (_t_3332566 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3332586i32;
                        } else {
                            _gotoNext = 3335976i32;
                        };
                    } else if (__value__ == (3332586i32)) {
                        _repeat_3332590 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332604i32;
                    } else if (__value__ == (3332604i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3332617i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3332566[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332730i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333000i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333097i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333193i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333308i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333438i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333552i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333634i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333935i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3334491i32;
                                } else {
                                    _gotoNext = 3332633i32;
                                };
                            };
                        } else {
                            _gotoNext = 3335951i32;
                        };
                    } else if (__value__ == (3332633i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3332566?.__copy__());
                                _c_3332474 = @:tmpset0 __tmp__._0;
                                _t_3332566 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3332684i32;
                            } else {
                                _gotoNext = 3332714i32;
                            };
                        };
                    } else if (__value__ == (3332684i32)) {
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
                        _gotoNext = 3332714i32;
                    } else if (__value__ == (3332714i32)) {
                        @:check2 _p_3332454._literal(_c_3332474);
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3332730i32)) {
                        if ((((_p_3332454._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3332566.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3332566[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3332795i32;
                        } else {
                            _gotoNext = 3332938i32;
                        };
                    } else if (__value__ == (3332795i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3332454._parsePerlFlags(_t_3332566?.__copy__());
                                _t_3332566 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3332891i32;
                            } else {
                                _gotoNext = 3332924i32;
                            };
                        };
                    } else if (__value__ == (3332891i32)) {
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
                        _gotoNext = 3332924i32;
                    } else if (__value__ == (3332924i32)) {
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3332938i32)) {
                        _p_3332454._numCap++;
                        @:check2 _p_3332454._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3332454._numCap;
                        _t_3332566 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333000i32)) {
                        {
                            _err = @:check2 _p_3332454._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3333055i32;
                            } else {
                                _gotoNext = 3333085i32;
                            };
                        };
                    } else if (__value__ == (3333055i32)) {
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
                        _gotoNext = 3333085i32;
                    } else if (__value__ == (3333085i32)) {
                        _t_3332566 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333097i32)) {
                        {
                            _err = @:check2 _p_3332454._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3333151i32;
                            } else {
                                _gotoNext = 3333181i32;
                            };
                        };
                    } else if (__value__ == (3333151i32)) {
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
                        _gotoNext = 3333181i32;
                    } else if (__value__ == (3333181i32)) {
                        _t_3332566 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333193i32)) {
                        if ((_p_3332454._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3333230i32;
                        } else {
                            _gotoNext = 3333264i32;
                        };
                    } else if (__value__ == (3333230i32)) {
                        @:check2 _p_3332454._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3333296i32;
                    } else if (__value__ == (3333264i32)) {
                        _gotoNext = 3333264i32;
                        @:check2 _p_3332454._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3333296i32;
                    } else if (__value__ == (3333296i32)) {
                        _t_3332566 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333308i32)) {
                        if ((_p_3332454._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3333345i32;
                        } else {
                            _gotoNext = 3333396i32;
                        };
                    } else if (__value__ == (3333345i32)) {
                        {
                            final __t__ = @:check2 _p_3332454._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3333426i32;
                    } else if (__value__ == (3333396i32)) {
                        _gotoNext = 3333396i32;
                        @:check2 _p_3332454._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3333426i32;
                    } else if (__value__ == (3333426i32)) {
                        _t_3332566 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333438i32)) {
                        if ((_p_3332454._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3333473i32;
                        } else {
                            _gotoNext = 3333505i32;
                        };
                    } else if (__value__ == (3333473i32)) {
                        @:check2 _p_3332454._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3333540i32;
                    } else if (__value__ == (3333505i32)) {
                        _gotoNext = 3333505i32;
                        @:check2 _p_3332454._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3333540i32;
                    } else if (__value__ == (3333540i32)) {
                        _t_3332566 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333552i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3332454._parseClass(_t_3332566?.__copy__());
                                _t_3332566 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3333605i32;
                            } else {
                                _gotoNext = 3335951i32;
                            };
                        };
                    } else if (__value__ == (3333605i32)) {
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
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333634i32)) {
                        _before_3333657 = _t_3332566?.__copy__();
                        _gotoNext = 3333672i32;
                    } else if (__value__ == (3333672i32)) {
                        {
                            final __value__ = _t_3332566[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3333689i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3333718i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3333747i32;
                            } else {
                                _gotoNext = 3333782i32;
                            };
                        };
                    } else if (__value__ == (3333689i32)) {
                        _op_3332492 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3333782i32;
                    } else if (__value__ == (3333718i32)) {
                        _op_3332492 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3333782i32;
                    } else if (__value__ == (3333747i32)) {
                        _op_3332492 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3333782i32;
                    } else if (__value__ == (3333782i32)) {
                        _after_3333782 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3332454._repeat(_op_3332492, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3333657?.__copy__(), _after_3333782?.__copy__(), _lastRepeat_3332508?.__copy__());
                                _after_3333782 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3333874i32;
                            } else {
                                _gotoNext = 3333904i32;
                            };
                        };
                    } else if (__value__ == (3333874i32)) {
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
                        _gotoNext = 3333904i32;
                    } else if (__value__ == (3333904i32)) {
                        _repeat_3332590 = _before_3333657?.__copy__();
                        _t_3332566 = _after_3333782?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3333935i32)) {
                        _op_3332492 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3333965 = _t_3332566?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3332454._parseRepeat(_t_3332566?.__copy__());
                            _min_3333980 = @:tmpset0 __tmp__._0;
                            _max_3333985 = @:tmpset0 __tmp__._1;
                            _after_3333990 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3333997 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3333997) {
                            _gotoNext = 3334030i32;
                        } else {
                            _gotoNext = 3334138i32;
                        };
                    } else if (__value__ == (3334030i32)) {
                        @:check2 _p_3332454._literal((123 : stdgo.GoInt32));
                        _t_3332566 = (_t_3332566.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3334138i32)) {
                        if (((((_min_3333980 < (0 : stdgo.GoInt) : Bool) || (_min_3333980 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3333985 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3333985 >= (0 : stdgo.GoInt) : Bool) && (_min_3333980 > _max_3333985 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3334202i32;
                        } else {
                            _gotoNext = 3334352i32;
                        };
                    } else if (__value__ == (3334202i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3333965.__slice__(0, ((_before_3333965.length) - (_after_3333990.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3334352i32;
                    } else if (__value__ == (3334352i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3332454._repeat(_op_3332492, _min_3333980, _max_3333985, _before_3333965?.__copy__(), _after_3333990?.__copy__(), _lastRepeat_3332508?.__copy__());
                                _after_3333990 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3334430i32;
                            } else {
                                _gotoNext = 3334460i32;
                            };
                        };
                    } else if (__value__ == (3334430i32)) {
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
                        _gotoNext = 3334460i32;
                    } else if (__value__ == (3334460i32)) {
                        _repeat_3332590 = _before_3333965?.__copy__();
                        _t_3332566 = _after_3333990?.__copy__();
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3334491i32)) {
                        if ((((_p_3332454._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3332566.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3334542i32;
                        } else {
                            _gotoNext = 3335266i32;
                        };
                    } else if (__value__ == (3334542i32)) {
                        _gotoNext = 3334548i32;
                    } else if (__value__ == (3334548i32)) {
                        {
                            final __value__ = _t_3332566[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3334566i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3334639i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3334715i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3334793i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3334888i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3335184i32;
                            } else {
                                _gotoNext = 3335266i32;
                            };
                        };
                    } else if (__value__ == (3334566i32)) {
                        @:check2 _p_3332454._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3332566 = (_t_3332566.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3334639i32)) {
                        @:check2 _p_3332454._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3332566 = (_t_3332566.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3334715i32)) {
                        @:check2 _p_3332454._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3332566 = (_t_3332566.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3334793i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3332566.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3335266i32;
                    } else if (__value__ == (3334888i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3332566.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3334953 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3332566 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3335011i32;
                    } else if (__value__ == (3335011i32)) {
                        if (_lit_3334953 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3335025i32;
                        } else {
                            _gotoNext = 3335164i32;
                        };
                    } else if (__value__ == (3335025i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3334953?.__copy__());
                            _c_3335033 = @:tmpset0 __tmp__._0;
                            _rest_3335036 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3335042 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3335042 != null) {
                            _gotoNext = 3335083i32;
                        } else {
                            _gotoNext = 3335122i32;
                        };
                    } else if (__value__ == (3335083i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3335042 };
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
                        _gotoNext = 3335122i32;
                    } else if (__value__ == (3335122i32)) {
                        @:check2 _p_3332454._literal(_c_3335033);
                        _lit_3334953 = _rest_3335036?.__copy__();
                        _gotoNext = 3335011i32;
                    } else if (__value__ == (3335164i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3335184i32)) {
                        @:check2 _p_3332454._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3332566 = (_t_3332566.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3335266i32)) {
                        _re_3335266 = @:check2 _p_3332454._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3335266 ?? throw "null pointer dereference").flags = _p_3332454._flags;
                        if ((((_t_3332566.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3332566[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3332566[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3335422i32;
                        } else {
                            _gotoNext = 3335664i32;
                        };
                    } else if (__value__ == (3335422i32)) {
                        {
                            var __tmp__ = @:check2 _p_3332454._parseUnicodeClass(_t_3332566?.__copy__(), ((@:checkr _re_3335266 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3335428 = @:tmpset0 __tmp__._0;
                            _rest_3335431 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3335437 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3335437 != null) {
                            _gotoNext = 3335499i32;
                        } else {
                            _gotoNext = 3335532i32;
                        };
                    } else if (__value__ == (3335499i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3335437 };
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
                        _gotoNext = 3335532i32;
                    } else if (__value__ == (3335532i32)) {
                        if (_r_3335428 != null) {
                            _gotoNext = 3335544i32;
                        } else {
                            _gotoNext = 3335664i32;
                        };
                    } else if (__value__ == (3335544i32)) {
                        (@:checkr _re_3335266 ?? throw "null pointer dereference").rune = _r_3335428;
                        _t_3332566 = _rest_3335431?.__copy__();
                        @:check2 _p_3332454._push(_re_3335266);
                        bigSwitchBreak = true;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3335664i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3332454._parsePerlClassEscape(_t_3332566?.__copy__(), ((@:checkr _re_3335266 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3335667 = @:tmpset0 __tmp__._0;
                                _rest_3335670 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3335667 != null) {
                                _gotoNext = 3335728i32;
                            } else {
                                _gotoNext = 3335802i32;
                            };
                        };
                    } else if (__value__ == (3335728i32)) {
                        (@:checkr _re_3335266 ?? throw "null pointer dereference").rune = _r_3335667;
                        _t_3332566 = _rest_3335670?.__copy__();
                        @:check2 _p_3332454._push(_re_3335266);
                        bigSwitchBreak = true;
                        _gotoNext = 3332617i32;
                    } else if (__value__ == (3335802i32)) {
                        @:check2 _p_3332454._reuse(_re_3335266);
                        {
                            {
                                var __tmp__ = @:check2 _p_3332454._parseEscape(_t_3332566?.__copy__());
                                _c_3332474 = @:tmpset0 __tmp__._0;
                                _t_3332566 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3335902i32;
                            } else {
                                _gotoNext = 3335932i32;
                            };
                        };
                    } else if (__value__ == (3335902i32)) {
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
                        _gotoNext = 3335932i32;
                    } else if (__value__ == (3335932i32)) {
                        @:check2 _p_3332454._literal(_c_3332474);
                        _gotoNext = 3335951i32;
                    } else if (__value__ == (3335951i32)) {
                        _lastRepeat_3332508 = _repeat_3332590?.__copy__();
                        _gotoNext = 3332574i32;
                    } else if (__value__ == (3335976i32)) {
                        @:check2 _p_3332454._concat();
                        if (@:check2 _p_3332454._swapVerticalBar()) {
                            _gotoNext = 3336011i32;
                        } else {
                            _gotoNext = 3336076i32;
                        };
                    } else if (__value__ == (3336011i32)) {
                        _p_3332454._stack = (_p_3332454._stack.__slice__(0, ((_p_3332454._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3336076i32;
                    } else if (__value__ == (3336076i32)) {
                        @:check2 _p_3332454._alternate();
                        _n_3336092 = (_p_3332454._stack.length);
                        if (_n_3336092 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3336121i32;
                        } else {
                            _gotoNext = 3336168i32;
                        };
                    } else if (__value__ == (3336121i32)) {
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
                        _gotoNext = 3336168i32;
                    } else if (__value__ == (3336168i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3332454._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
