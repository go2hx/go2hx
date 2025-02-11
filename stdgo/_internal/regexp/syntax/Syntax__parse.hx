package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3310840:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3309512:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _n_3313150:stdgo.GoInt = (0 : stdgo.GoInt);
            var _ok_3311055:Bool = false;
            var _t_3309624:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3312725:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3312091:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3311023:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3309550:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _rest_3312728:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3312489:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3312486:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lastRepeat_3309566:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3309370:stdgo.Error = (null : stdgo.Error);
            var _re_3312324:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _before_3310715:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3312011:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3311048:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _err_3312495:stdgo.Error = (null : stdgo.Error);
            var _err_3312100:stdgo.Error = (null : stdgo.Error);
            var _rest_3312094:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3311038:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3309648:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3309532:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3311043:stdgo.GoInt = (0 : stdgo.GoInt);
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
                            _gotoNext = 3309323i32;
                        } else {
                            _gotoNext = 3309504i32;
                        };
                    } else if (__value__ == (3309323i32)) {
                        {
                            _err_3309370 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3309370 != null) {
                                _gotoNext = 3309402i32;
                            } else {
                                _gotoNext = 3309429i32;
                            };
                        };
                    } else if (__value__ == (3309402i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3309370 };
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
                        _gotoNext = 3309429i32;
                    } else if (__value__ == (3309429i32)) {
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
                        _gotoNext = 3309504i32;
                    } else if (__value__ == (3309504i32)) {
                        _p_3309512._flags = _flags;
                        _p_3309512._wholeRegexp = _s?.__copy__();
                        _t_3309624 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3309632i32;
                    } else if (__value__ == (3309632i32)) {
                        if (_t_3309624 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3309644i32;
                        } else {
                            _gotoNext = 3313034i32;
                        };
                    } else if (__value__ == (3309644i32)) {
                        _repeat_3309648 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309662i32;
                    } else if (__value__ == (3309662i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3309675i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3309624[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3309788i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310058i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310155i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310251i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310366i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310496i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310610i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310692i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310993i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3311549i32;
                                } else {
                                    _gotoNext = 3309691i32;
                                };
                            };
                        } else {
                            _gotoNext = 3313009i32;
                        };
                    } else if (__value__ == (3309691i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3309624?.__copy__());
                                _c_3309532 = @:tmpset0 __tmp__._0;
                                _t_3309624 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3309742i32;
                            } else {
                                _gotoNext = 3309772i32;
                            };
                        };
                    } else if (__value__ == (3309742i32)) {
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
                        _gotoNext = 3309772i32;
                    } else if (__value__ == (3309772i32)) {
                        @:check2 _p_3309512._literal(_c_3309532);
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3309788i32)) {
                        if ((((_p_3309512._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3309624.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3309624[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3309853i32;
                        } else {
                            _gotoNext = 3309996i32;
                        };
                    } else if (__value__ == (3309853i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309512._parsePerlFlags(_t_3309624?.__copy__());
                                _t_3309624 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3309949i32;
                            } else {
                                _gotoNext = 3309982i32;
                            };
                        };
                    } else if (__value__ == (3309949i32)) {
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
                        _gotoNext = 3309982i32;
                    } else if (__value__ == (3309982i32)) {
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3309996i32)) {
                        _p_3309512._numCap++;
                        @:check2 _p_3309512._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3309512._numCap;
                        _t_3309624 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310058i32)) {
                        {
                            _err = @:check2 _p_3309512._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3310113i32;
                            } else {
                                _gotoNext = 3310143i32;
                            };
                        };
                    } else if (__value__ == (3310113i32)) {
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
                        _gotoNext = 3310143i32;
                    } else if (__value__ == (3310143i32)) {
                        _t_3309624 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310155i32)) {
                        {
                            _err = @:check2 _p_3309512._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3310209i32;
                            } else {
                                _gotoNext = 3310239i32;
                            };
                        };
                    } else if (__value__ == (3310209i32)) {
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
                        _gotoNext = 3310239i32;
                    } else if (__value__ == (3310239i32)) {
                        _t_3309624 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310251i32)) {
                        if ((_p_3309512._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3310288i32;
                        } else {
                            _gotoNext = 3310322i32;
                        };
                    } else if (__value__ == (3310288i32)) {
                        @:check2 _p_3309512._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3310354i32;
                    } else if (__value__ == (3310322i32)) {
                        _gotoNext = 3310322i32;
                        @:check2 _p_3309512._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3310354i32;
                    } else if (__value__ == (3310354i32)) {
                        _t_3309624 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310366i32)) {
                        if ((_p_3309512._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3310403i32;
                        } else {
                            _gotoNext = 3310454i32;
                        };
                    } else if (__value__ == (3310403i32)) {
                        {
                            final __t__ = @:check2 _p_3309512._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3310484i32;
                    } else if (__value__ == (3310454i32)) {
                        _gotoNext = 3310454i32;
                        @:check2 _p_3309512._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3310484i32;
                    } else if (__value__ == (3310484i32)) {
                        _t_3309624 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310496i32)) {
                        if ((_p_3309512._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3310531i32;
                        } else {
                            _gotoNext = 3310563i32;
                        };
                    } else if (__value__ == (3310531i32)) {
                        @:check2 _p_3309512._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3310598i32;
                    } else if (__value__ == (3310563i32)) {
                        _gotoNext = 3310563i32;
                        @:check2 _p_3309512._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3310598i32;
                    } else if (__value__ == (3310598i32)) {
                        _t_3309624 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310610i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309512._parseClass(_t_3309624?.__copy__());
                                _t_3309624 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3310663i32;
                            } else {
                                _gotoNext = 3313009i32;
                            };
                        };
                    } else if (__value__ == (3310663i32)) {
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
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310692i32)) {
                        _before_3310715 = _t_3309624?.__copy__();
                        _gotoNext = 3310730i32;
                    } else if (__value__ == (3310730i32)) {
                        {
                            final __value__ = _t_3309624[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3310747i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3310776i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3310805i32;
                            } else {
                                _gotoNext = 3310840i32;
                            };
                        };
                    } else if (__value__ == (3310747i32)) {
                        _op_3309550 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3310840i32;
                    } else if (__value__ == (3310776i32)) {
                        _op_3309550 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3310840i32;
                    } else if (__value__ == (3310805i32)) {
                        _op_3309550 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3310840i32;
                    } else if (__value__ == (3310840i32)) {
                        _after_3310840 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3309512._repeat(_op_3309550, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3310715?.__copy__(), _after_3310840?.__copy__(), _lastRepeat_3309566?.__copy__());
                                _after_3310840 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3310932i32;
                            } else {
                                _gotoNext = 3310962i32;
                            };
                        };
                    } else if (__value__ == (3310932i32)) {
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
                        _gotoNext = 3310962i32;
                    } else if (__value__ == (3310962i32)) {
                        _repeat_3309648 = _before_3310715?.__copy__();
                        _t_3309624 = _after_3310840?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3310993i32)) {
                        _op_3309550 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3311023 = _t_3309624?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3309512._parseRepeat(_t_3309624?.__copy__());
                            _min_3311038 = @:tmpset0 __tmp__._0;
                            _max_3311043 = @:tmpset0 __tmp__._1;
                            _after_3311048 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3311055 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3311055) {
                            _gotoNext = 3311088i32;
                        } else {
                            _gotoNext = 3311196i32;
                        };
                    } else if (__value__ == (3311088i32)) {
                        @:check2 _p_3309512._literal((123 : stdgo.GoInt32));
                        _t_3309624 = (_t_3309624.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3311196i32)) {
                        if (((((_min_3311038 < (0 : stdgo.GoInt) : Bool) || (_min_3311038 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3311043 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3311043 >= (0 : stdgo.GoInt) : Bool) && (_min_3311038 > _max_3311043 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3311260i32;
                        } else {
                            _gotoNext = 3311410i32;
                        };
                    } else if (__value__ == (3311260i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3311023.__slice__(0, ((_before_3311023.length) - (_after_3311048.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3311410i32;
                    } else if (__value__ == (3311410i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309512._repeat(_op_3309550, _min_3311038, _max_3311043, _before_3311023?.__copy__(), _after_3311048?.__copy__(), _lastRepeat_3309566?.__copy__());
                                _after_3311048 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3311488i32;
                            } else {
                                _gotoNext = 3311518i32;
                            };
                        };
                    } else if (__value__ == (3311488i32)) {
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
                        _gotoNext = 3311518i32;
                    } else if (__value__ == (3311518i32)) {
                        _repeat_3309648 = _before_3311023?.__copy__();
                        _t_3309624 = _after_3311048?.__copy__();
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3311549i32)) {
                        if ((((_p_3309512._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3309624.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3311600i32;
                        } else {
                            _gotoNext = 3312324i32;
                        };
                    } else if (__value__ == (3311600i32)) {
                        _gotoNext = 3311606i32;
                    } else if (__value__ == (3311606i32)) {
                        {
                            final __value__ = _t_3309624[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3311624i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3311697i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3311773i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3311851i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3311946i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3312242i32;
                            } else {
                                _gotoNext = 3312324i32;
                            };
                        };
                    } else if (__value__ == (3311624i32)) {
                        @:check2 _p_3309512._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3309624 = (_t_3309624.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3311697i32)) {
                        @:check2 _p_3309512._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3309624 = (_t_3309624.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3311773i32)) {
                        @:check2 _p_3309512._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3309624 = (_t_3309624.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3311851i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3309624.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3312324i32;
                    } else if (__value__ == (3311946i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3309624.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3312011 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3309624 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3312069i32;
                    } else if (__value__ == (3312069i32)) {
                        if (_lit_3312011 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3312083i32;
                        } else {
                            _gotoNext = 3312222i32;
                        };
                    } else if (__value__ == (3312083i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3312011?.__copy__());
                            _c_3312091 = @:tmpset0 __tmp__._0;
                            _rest_3312094 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3312100 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3312100 != null) {
                            _gotoNext = 3312141i32;
                        } else {
                            _gotoNext = 3312180i32;
                        };
                    } else if (__value__ == (3312141i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3312100 };
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
                        _gotoNext = 3312180i32;
                    } else if (__value__ == (3312180i32)) {
                        @:check2 _p_3309512._literal(_c_3312091);
                        _lit_3312011 = _rest_3312094?.__copy__();
                        _gotoNext = 3312069i32;
                    } else if (__value__ == (3312222i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3312242i32)) {
                        @:check2 _p_3309512._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3309624 = (_t_3309624.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3312324i32)) {
                        _re_3312324 = @:check2 _p_3309512._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3312324 ?? throw "null pointer dereference").flags = _p_3309512._flags;
                        if ((((_t_3309624.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3309624[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3309624[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3312480i32;
                        } else {
                            _gotoNext = 3312722i32;
                        };
                    } else if (__value__ == (3312480i32)) {
                        {
                            var __tmp__ = @:check2 _p_3309512._parseUnicodeClass(_t_3309624?.__copy__(), ((@:checkr _re_3312324 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3312486 = @:tmpset0 __tmp__._0;
                            _rest_3312489 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3312495 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3312495 != null) {
                            _gotoNext = 3312557i32;
                        } else {
                            _gotoNext = 3312590i32;
                        };
                    } else if (__value__ == (3312557i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3312495 };
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
                        _gotoNext = 3312590i32;
                    } else if (__value__ == (3312590i32)) {
                        if (_r_3312486 != null) {
                            _gotoNext = 3312602i32;
                        } else {
                            _gotoNext = 3312722i32;
                        };
                    } else if (__value__ == (3312602i32)) {
                        (@:checkr _re_3312324 ?? throw "null pointer dereference").rune = _r_3312486;
                        _t_3309624 = _rest_3312489?.__copy__();
                        @:check2 _p_3309512._push(_re_3312324);
                        bigSwitchBreak = true;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3312722i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309512._parsePerlClassEscape(_t_3309624?.__copy__(), ((@:checkr _re_3312324 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3312725 = @:tmpset0 __tmp__._0;
                                _rest_3312728 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3312725 != null) {
                                _gotoNext = 3312786i32;
                            } else {
                                _gotoNext = 3312860i32;
                            };
                        };
                    } else if (__value__ == (3312786i32)) {
                        (@:checkr _re_3312324 ?? throw "null pointer dereference").rune = _r_3312725;
                        _t_3309624 = _rest_3312728?.__copy__();
                        @:check2 _p_3309512._push(_re_3312324);
                        bigSwitchBreak = true;
                        _gotoNext = 3309675i32;
                    } else if (__value__ == (3312860i32)) {
                        @:check2 _p_3309512._reuse(_re_3312324);
                        {
                            {
                                var __tmp__ = @:check2 _p_3309512._parseEscape(_t_3309624?.__copy__());
                                _c_3309532 = @:tmpset0 __tmp__._0;
                                _t_3309624 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3312960i32;
                            } else {
                                _gotoNext = 3312990i32;
                            };
                        };
                    } else if (__value__ == (3312960i32)) {
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
                        _gotoNext = 3312990i32;
                    } else if (__value__ == (3312990i32)) {
                        @:check2 _p_3309512._literal(_c_3309532);
                        _gotoNext = 3313009i32;
                    } else if (__value__ == (3313009i32)) {
                        _lastRepeat_3309566 = _repeat_3309648?.__copy__();
                        _gotoNext = 3309632i32;
                    } else if (__value__ == (3313034i32)) {
                        @:check2 _p_3309512._concat();
                        if (@:check2 _p_3309512._swapVerticalBar()) {
                            _gotoNext = 3313069i32;
                        } else {
                            _gotoNext = 3313134i32;
                        };
                    } else if (__value__ == (3313069i32)) {
                        _p_3309512._stack = (_p_3309512._stack.__slice__(0, ((_p_3309512._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3313134i32;
                    } else if (__value__ == (3313134i32)) {
                        @:check2 _p_3309512._alternate();
                        _n_3313150 = (_p_3309512._stack.length);
                        if (_n_3313150 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3313179i32;
                        } else {
                            _gotoNext = 3313226i32;
                        };
                    } else if (__value__ == (3313179i32)) {
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
                        _gotoNext = 3313226i32;
                    } else if (__value__ == (3313226i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3309512._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
