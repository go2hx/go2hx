package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_3428147:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3428127:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3427819:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3426728:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3426616:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _err_3429599:stdgo.Error = (null : stdgo.Error);
            var _ok_3428159:Bool = false;
            var _err_3426474:stdgo.Error = (null : stdgo.Error);
            var _rest_3429593:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3427944:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3429832:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3429590:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3429198:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3429195:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3426752:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3430254:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3429829:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3429115:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3428152:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3426654:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var bigSwitchBreak = false;
            var _err_3429204:stdgo.Error = (null : stdgo.Error);
            var _min_3428142:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_3429428:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _lastRepeat_3426670:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3426636:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3426427i32;
                        } else {
                            _gotoNext = 3426608i32;
                        };
                    } else if (__value__ == (3426427i32)) {
                        {
                            _err_3426474 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3426474 != null) {
                                _gotoNext = 3426506i32;
                            } else {
                                _gotoNext = 3426533i32;
                            };
                        };
                    } else if (__value__ == (3426506i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3426474 };
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
                        _gotoNext = 3426533i32;
                    } else if (__value__ == (3426533i32)) {
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
                        _gotoNext = 3426608i32;
                    } else if (__value__ == (3426608i32)) {
                        _p_3426616._flags = _flags;
                        _p_3426616._wholeRegexp = _s?.__copy__();
                        _t_3426728 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3426736i32;
                    } else if (__value__ == (3426736i32)) {
                        if (_t_3426728 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3426748i32;
                        } else {
                            _gotoNext = 3430138i32;
                        };
                    } else if (__value__ == (3426748i32)) {
                        _repeat_3426752 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3426766i32;
                    } else if (__value__ == (3426766i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3426779i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3426728[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3426892i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427162i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427259i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427355i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427470i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427600i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427714i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427796i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3428097i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3428653i32;
                                } else {
                                    _gotoNext = 3426795i32;
                                };
                            };
                        } else {
                            _gotoNext = 3430113i32;
                        };
                    } else if (__value__ == (3426795i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3426728?.__copy__());
                                _c_3426636 = @:tmpset0 __tmp__._0;
                                _t_3426728 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3426846i32;
                            } else {
                                _gotoNext = 3426876i32;
                            };
                        };
                    } else if (__value__ == (3426846i32)) {
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
                        _gotoNext = 3426876i32;
                    } else if (__value__ == (3426876i32)) {
                        @:check2 _p_3426616._literal(_c_3426636);
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3426892i32)) {
                        if ((((_p_3426616._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3426728.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3426728[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3426957i32;
                        } else {
                            _gotoNext = 3427100i32;
                        };
                    } else if (__value__ == (3426957i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3426616._parsePerlFlags(_t_3426728?.__copy__());
                                _t_3426728 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3427053i32;
                            } else {
                                _gotoNext = 3427086i32;
                            };
                        };
                    } else if (__value__ == (3427053i32)) {
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
                        _gotoNext = 3427086i32;
                    } else if (__value__ == (3427086i32)) {
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427100i32)) {
                        _p_3426616._numCap++;
                        @:check2 _p_3426616._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3426616._numCap;
                        _t_3426728 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427162i32)) {
                        {
                            _err = @:check2 _p_3426616._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3427217i32;
                            } else {
                                _gotoNext = 3427247i32;
                            };
                        };
                    } else if (__value__ == (3427217i32)) {
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
                        _gotoNext = 3427247i32;
                    } else if (__value__ == (3427247i32)) {
                        _t_3426728 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427259i32)) {
                        {
                            _err = @:check2 _p_3426616._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3427313i32;
                            } else {
                                _gotoNext = 3427343i32;
                            };
                        };
                    } else if (__value__ == (3427313i32)) {
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
                        _gotoNext = 3427343i32;
                    } else if (__value__ == (3427343i32)) {
                        _t_3426728 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427355i32)) {
                        if ((_p_3426616._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3427392i32;
                        } else {
                            _gotoNext = 3427426i32;
                        };
                    } else if (__value__ == (3427392i32)) {
                        @:check2 _p_3426616._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3427458i32;
                    } else if (__value__ == (3427426i32)) {
                        _gotoNext = 3427426i32;
                        @:check2 _p_3426616._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3427458i32;
                    } else if (__value__ == (3427458i32)) {
                        _t_3426728 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427470i32)) {
                        if ((_p_3426616._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3427507i32;
                        } else {
                            _gotoNext = 3427558i32;
                        };
                    } else if (__value__ == (3427507i32)) {
                        {
                            final __t__ = @:check2 _p_3426616._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3427588i32;
                    } else if (__value__ == (3427558i32)) {
                        _gotoNext = 3427558i32;
                        @:check2 _p_3426616._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3427588i32;
                    } else if (__value__ == (3427588i32)) {
                        _t_3426728 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427600i32)) {
                        if ((_p_3426616._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3427635i32;
                        } else {
                            _gotoNext = 3427667i32;
                        };
                    } else if (__value__ == (3427635i32)) {
                        @:check2 _p_3426616._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3427702i32;
                    } else if (__value__ == (3427667i32)) {
                        _gotoNext = 3427667i32;
                        @:check2 _p_3426616._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3427702i32;
                    } else if (__value__ == (3427702i32)) {
                        _t_3426728 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427714i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3426616._parseClass(_t_3426728?.__copy__());
                                _t_3426728 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3427767i32;
                            } else {
                                _gotoNext = 3430113i32;
                            };
                        };
                    } else if (__value__ == (3427767i32)) {
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
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3427796i32)) {
                        _before_3427819 = _t_3426728?.__copy__();
                        _gotoNext = 3427834i32;
                    } else if (__value__ == (3427834i32)) {
                        {
                            final __value__ = _t_3426728[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3427851i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3427880i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3427909i32;
                            } else {
                                _gotoNext = 3427944i32;
                            };
                        };
                    } else if (__value__ == (3427851i32)) {
                        _op_3426654 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3427944i32;
                    } else if (__value__ == (3427880i32)) {
                        _op_3426654 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3427944i32;
                    } else if (__value__ == (3427909i32)) {
                        _op_3426654 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3427944i32;
                    } else if (__value__ == (3427944i32)) {
                        _after_3427944 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3426616._repeat(_op_3426654, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3427819?.__copy__(), _after_3427944?.__copy__(), _lastRepeat_3426670?.__copy__());
                                _after_3427944 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3428036i32;
                            } else {
                                _gotoNext = 3428066i32;
                            };
                        };
                    } else if (__value__ == (3428036i32)) {
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
                        _gotoNext = 3428066i32;
                    } else if (__value__ == (3428066i32)) {
                        _repeat_3426752 = _before_3427819?.__copy__();
                        _t_3426728 = _after_3427944?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3428097i32)) {
                        _op_3426654 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3428127 = _t_3426728?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3426616._parseRepeat(_t_3426728?.__copy__());
                            _min_3428142 = @:tmpset0 __tmp__._0;
                            _max_3428147 = @:tmpset0 __tmp__._1;
                            _after_3428152 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3428159 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3428159) {
                            _gotoNext = 3428192i32;
                        } else {
                            _gotoNext = 3428300i32;
                        };
                    } else if (__value__ == (3428192i32)) {
                        @:check2 _p_3426616._literal((123 : stdgo.GoInt32));
                        _t_3426728 = (_t_3426728.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3428300i32)) {
                        if (((((_min_3428142 < (0 : stdgo.GoInt) : Bool) || (_min_3428142 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3428147 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3428147 >= (0 : stdgo.GoInt) : Bool) && (_min_3428142 > _max_3428147 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3428364i32;
                        } else {
                            _gotoNext = 3428514i32;
                        };
                    } else if (__value__ == (3428364i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3428127.__slice__(0, ((_before_3428127.length) - (_after_3428152.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3428514i32;
                    } else if (__value__ == (3428514i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3426616._repeat(_op_3426654, _min_3428142, _max_3428147, _before_3428127?.__copy__(), _after_3428152?.__copy__(), _lastRepeat_3426670?.__copy__());
                                _after_3428152 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3428592i32;
                            } else {
                                _gotoNext = 3428622i32;
                            };
                        };
                    } else if (__value__ == (3428592i32)) {
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
                        _gotoNext = 3428622i32;
                    } else if (__value__ == (3428622i32)) {
                        _repeat_3426752 = _before_3428127?.__copy__();
                        _t_3426728 = _after_3428152?.__copy__();
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3428653i32)) {
                        if ((((_p_3426616._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3426728.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3428704i32;
                        } else {
                            _gotoNext = 3429428i32;
                        };
                    } else if (__value__ == (3428704i32)) {
                        _gotoNext = 3428710i32;
                    } else if (__value__ == (3428710i32)) {
                        {
                            final __value__ = _t_3426728[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3428728i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3428801i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3428877i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3428955i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3429050i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3429346i32;
                            } else {
                                _gotoNext = 3429428i32;
                            };
                        };
                    } else if (__value__ == (3428728i32)) {
                        @:check2 _p_3426616._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3426728 = (_t_3426728.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3428801i32)) {
                        @:check2 _p_3426616._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3426728 = (_t_3426728.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3428877i32)) {
                        @:check2 _p_3426616._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3426728 = (_t_3426728.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3428955i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3426728.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3429428i32;
                    } else if (__value__ == (3429050i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3426728.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3429115 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3426728 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3429173i32;
                    } else if (__value__ == (3429173i32)) {
                        if (_lit_3429115 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3429187i32;
                        } else {
                            _gotoNext = 3429326i32;
                        };
                    } else if (__value__ == (3429187i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3429115?.__copy__());
                            _c_3429195 = @:tmpset0 __tmp__._0;
                            _rest_3429198 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3429204 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3429204 != null) {
                            _gotoNext = 3429245i32;
                        } else {
                            _gotoNext = 3429284i32;
                        };
                    } else if (__value__ == (3429245i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3429204 };
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
                        _gotoNext = 3429284i32;
                    } else if (__value__ == (3429284i32)) {
                        @:check2 _p_3426616._literal(_c_3429195);
                        _lit_3429115 = _rest_3429198?.__copy__();
                        _gotoNext = 3429173i32;
                    } else if (__value__ == (3429326i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3429346i32)) {
                        @:check2 _p_3426616._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3426728 = (_t_3426728.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3429428i32)) {
                        _re_3429428 = @:check2 _p_3426616._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3429428 ?? throw "null pointer dereference").flags = _p_3426616._flags;
                        if ((((_t_3426728.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3426728[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3426728[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3429584i32;
                        } else {
                            _gotoNext = 3429826i32;
                        };
                    } else if (__value__ == (3429584i32)) {
                        {
                            var __tmp__ = @:check2 _p_3426616._parseUnicodeClass(_t_3426728?.__copy__(), ((@:checkr _re_3429428 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3429590 = @:tmpset0 __tmp__._0;
                            _rest_3429593 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3429599 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3429599 != null) {
                            _gotoNext = 3429661i32;
                        } else {
                            _gotoNext = 3429694i32;
                        };
                    } else if (__value__ == (3429661i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3429599 };
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
                        _gotoNext = 3429694i32;
                    } else if (__value__ == (3429694i32)) {
                        if (_r_3429590 != null) {
                            _gotoNext = 3429706i32;
                        } else {
                            _gotoNext = 3429826i32;
                        };
                    } else if (__value__ == (3429706i32)) {
                        (@:checkr _re_3429428 ?? throw "null pointer dereference").rune = _r_3429590;
                        _t_3426728 = _rest_3429593?.__copy__();
                        @:check2 _p_3426616._push(_re_3429428);
                        bigSwitchBreak = true;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3429826i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3426616._parsePerlClassEscape(_t_3426728?.__copy__(), ((@:checkr _re_3429428 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3429829 = @:tmpset0 __tmp__._0;
                                _rest_3429832 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3429829 != null) {
                                _gotoNext = 3429890i32;
                            } else {
                                _gotoNext = 3429964i32;
                            };
                        };
                    } else if (__value__ == (3429890i32)) {
                        (@:checkr _re_3429428 ?? throw "null pointer dereference").rune = _r_3429829;
                        _t_3426728 = _rest_3429832?.__copy__();
                        @:check2 _p_3426616._push(_re_3429428);
                        bigSwitchBreak = true;
                        _gotoNext = 3426779i32;
                    } else if (__value__ == (3429964i32)) {
                        @:check2 _p_3426616._reuse(_re_3429428);
                        {
                            {
                                var __tmp__ = @:check2 _p_3426616._parseEscape(_t_3426728?.__copy__());
                                _c_3426636 = @:tmpset0 __tmp__._0;
                                _t_3426728 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3430064i32;
                            } else {
                                _gotoNext = 3430094i32;
                            };
                        };
                    } else if (__value__ == (3430064i32)) {
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
                        _gotoNext = 3430094i32;
                    } else if (__value__ == (3430094i32)) {
                        @:check2 _p_3426616._literal(_c_3426636);
                        _gotoNext = 3430113i32;
                    } else if (__value__ == (3430113i32)) {
                        _lastRepeat_3426670 = _repeat_3426752?.__copy__();
                        _gotoNext = 3426736i32;
                    } else if (__value__ == (3430138i32)) {
                        @:check2 _p_3426616._concat();
                        if (@:check2 _p_3426616._swapVerticalBar()) {
                            _gotoNext = 3430173i32;
                        } else {
                            _gotoNext = 3430238i32;
                        };
                    } else if (__value__ == (3430173i32)) {
                        _p_3426616._stack = (_p_3426616._stack.__slice__(0, ((_p_3426616._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3430238i32;
                    } else if (__value__ == (3430238i32)) {
                        @:check2 _p_3426616._alternate();
                        _n_3430254 = (_p_3426616._stack.length);
                        if (_n_3430254 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3430283i32;
                        } else {
                            _gotoNext = 3430330i32;
                        };
                    } else if (__value__ == (3430283i32)) {
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
                        _gotoNext = 3430330i32;
                    } else if (__value__ == (3430330i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3426616._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
