package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3295249:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3294196:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_3295482:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _max_3294201:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3292528:stdgo.Error = (null : stdgo.Error);
            var _n_3296308:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3295653:stdgo.Error = (null : stdgo.Error);
            var _r_3295644:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3295258:stdgo.Error = (null : stdgo.Error);
            var _ok_3294213:Bool = false;
            var _c_3292690:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _t_3292782:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3292708:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _r_3295883:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3295647:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3295169:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3295252:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3293998:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3292806:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3292670:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _before_3294181:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3293873:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3294206:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3292724:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3295886:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3292481i32;
                        } else {
                            _gotoNext = 3292662i32;
                        };
                    } else if (__value__ == (3292481i32)) {
                        {
                            _err_3292528 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3292528 != null) {
                                _gotoNext = 3292560i32;
                            } else {
                                _gotoNext = 3292587i32;
                            };
                        };
                    } else if (__value__ == (3292560i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3292528 };
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
                        _gotoNext = 3292587i32;
                    } else if (__value__ == (3292587i32)) {
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
                        _gotoNext = 3292662i32;
                    } else if (__value__ == (3292662i32)) {
                        _p_3292670._flags = _flags;
                        _p_3292670._wholeRegexp = _s?.__copy__();
                        _t_3292782 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3292790i32;
                    } else if (__value__ == (3292790i32)) {
                        if (_t_3292782 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3292802i32;
                        } else {
                            _gotoNext = 3296192i32;
                        };
                    } else if (__value__ == (3292802i32)) {
                        _repeat_3292806 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3292820i32;
                    } else if (__value__ == (3292820i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3292833i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3292782[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292946i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293216i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293313i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293409i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293524i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293654i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293768i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293850i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3294151i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3294707i32;
                                } else {
                                    _gotoNext = 3292849i32;
                                };
                            };
                        } else {
                            _gotoNext = 3296167i32;
                        };
                    } else if (__value__ == (3292849i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3292782?.__copy__());
                                _c_3292690 = @:tmpset0 __tmp__._0;
                                _t_3292782 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3292900i32;
                            } else {
                                _gotoNext = 3292930i32;
                            };
                        };
                    } else if (__value__ == (3292900i32)) {
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
                        _gotoNext = 3292930i32;
                    } else if (__value__ == (3292930i32)) {
                        @:check2 _p_3292670._literal(_c_3292690);
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3292946i32)) {
                        if ((((_p_3292670._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3292782.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3292782[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3293011i32;
                        } else {
                            _gotoNext = 3293154i32;
                        };
                    } else if (__value__ == (3293011i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292670._parsePerlFlags(_t_3292782?.__copy__());
                                _t_3292782 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3293107i32;
                            } else {
                                _gotoNext = 3293140i32;
                            };
                        };
                    } else if (__value__ == (3293107i32)) {
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
                        _gotoNext = 3293140i32;
                    } else if (__value__ == (3293140i32)) {
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293154i32)) {
                        _p_3292670._numCap++;
                        @:check2 _p_3292670._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3292670._numCap;
                        _t_3292782 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293216i32)) {
                        {
                            _err = @:check2 _p_3292670._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3293271i32;
                            } else {
                                _gotoNext = 3293301i32;
                            };
                        };
                    } else if (__value__ == (3293271i32)) {
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
                        _gotoNext = 3293301i32;
                    } else if (__value__ == (3293301i32)) {
                        _t_3292782 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293313i32)) {
                        {
                            _err = @:check2 _p_3292670._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3293367i32;
                            } else {
                                _gotoNext = 3293397i32;
                            };
                        };
                    } else if (__value__ == (3293367i32)) {
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
                        _gotoNext = 3293397i32;
                    } else if (__value__ == (3293397i32)) {
                        _t_3292782 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293409i32)) {
                        if ((_p_3292670._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3293446i32;
                        } else {
                            _gotoNext = 3293480i32;
                        };
                    } else if (__value__ == (3293446i32)) {
                        @:check2 _p_3292670._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3293512i32;
                    } else if (__value__ == (3293480i32)) {
                        _gotoNext = 3293480i32;
                        @:check2 _p_3292670._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3293512i32;
                    } else if (__value__ == (3293512i32)) {
                        _t_3292782 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293524i32)) {
                        if ((_p_3292670._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3293561i32;
                        } else {
                            _gotoNext = 3293612i32;
                        };
                    } else if (__value__ == (3293561i32)) {
                        {
                            final __t__ = @:check2 _p_3292670._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3293642i32;
                    } else if (__value__ == (3293612i32)) {
                        _gotoNext = 3293612i32;
                        @:check2 _p_3292670._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3293642i32;
                    } else if (__value__ == (3293642i32)) {
                        _t_3292782 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293654i32)) {
                        if ((_p_3292670._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3293689i32;
                        } else {
                            _gotoNext = 3293721i32;
                        };
                    } else if (__value__ == (3293689i32)) {
                        @:check2 _p_3292670._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3293756i32;
                    } else if (__value__ == (3293721i32)) {
                        _gotoNext = 3293721i32;
                        @:check2 _p_3292670._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3293756i32;
                    } else if (__value__ == (3293756i32)) {
                        _t_3292782 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293768i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292670._parseClass(_t_3292782?.__copy__());
                                _t_3292782 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3293821i32;
                            } else {
                                _gotoNext = 3296167i32;
                            };
                        };
                    } else if (__value__ == (3293821i32)) {
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
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3293850i32)) {
                        _before_3293873 = _t_3292782?.__copy__();
                        _gotoNext = 3293888i32;
                    } else if (__value__ == (3293888i32)) {
                        {
                            final __value__ = _t_3292782[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3293905i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3293934i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3293963i32;
                            } else {
                                _gotoNext = 3293998i32;
                            };
                        };
                    } else if (__value__ == (3293905i32)) {
                        _op_3292708 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3293998i32;
                    } else if (__value__ == (3293934i32)) {
                        _op_3292708 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3293998i32;
                    } else if (__value__ == (3293963i32)) {
                        _op_3292708 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3293998i32;
                    } else if (__value__ == (3293998i32)) {
                        _after_3293998 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3292670._repeat(_op_3292708, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3293873?.__copy__(), _after_3293998?.__copy__(), _lastRepeat_3292724?.__copy__());
                                _after_3293998 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3294090i32;
                            } else {
                                _gotoNext = 3294120i32;
                            };
                        };
                    } else if (__value__ == (3294090i32)) {
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
                        _gotoNext = 3294120i32;
                    } else if (__value__ == (3294120i32)) {
                        _repeat_3292806 = _before_3293873?.__copy__();
                        _t_3292782 = _after_3293998?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3294151i32)) {
                        _op_3292708 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3294181 = _t_3292782?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3292670._parseRepeat(_t_3292782?.__copy__());
                            _min_3294196 = @:tmpset0 __tmp__._0;
                            _max_3294201 = @:tmpset0 __tmp__._1;
                            _after_3294206 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3294213 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3294213) {
                            _gotoNext = 3294246i32;
                        } else {
                            _gotoNext = 3294354i32;
                        };
                    } else if (__value__ == (3294246i32)) {
                        @:check2 _p_3292670._literal((123 : stdgo.GoInt32));
                        _t_3292782 = (_t_3292782.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3294354i32)) {
                        if (((((_min_3294196 < (0 : stdgo.GoInt) : Bool) || (_min_3294196 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3294201 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3294201 >= (0 : stdgo.GoInt) : Bool) && (_min_3294196 > _max_3294201 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3294418i32;
                        } else {
                            _gotoNext = 3294568i32;
                        };
                    } else if (__value__ == (3294418i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3294181.__slice__(0, ((_before_3294181.length) - (_after_3294206.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3294568i32;
                    } else if (__value__ == (3294568i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292670._repeat(_op_3292708, _min_3294196, _max_3294201, _before_3294181?.__copy__(), _after_3294206?.__copy__(), _lastRepeat_3292724?.__copy__());
                                _after_3294206 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3294646i32;
                            } else {
                                _gotoNext = 3294676i32;
                            };
                        };
                    } else if (__value__ == (3294646i32)) {
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
                        _gotoNext = 3294676i32;
                    } else if (__value__ == (3294676i32)) {
                        _repeat_3292806 = _before_3294181?.__copy__();
                        _t_3292782 = _after_3294206?.__copy__();
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3294707i32)) {
                        if ((((_p_3292670._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3292782.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3294758i32;
                        } else {
                            _gotoNext = 3295482i32;
                        };
                    } else if (__value__ == (3294758i32)) {
                        _gotoNext = 3294764i32;
                    } else if (__value__ == (3294764i32)) {
                        {
                            final __value__ = _t_3292782[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3294782i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3294855i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3294931i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3295009i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3295104i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3295400i32;
                            } else {
                                _gotoNext = 3295482i32;
                            };
                        };
                    } else if (__value__ == (3294782i32)) {
                        @:check2 _p_3292670._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3292782 = (_t_3292782.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3294855i32)) {
                        @:check2 _p_3292670._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3292782 = (_t_3292782.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3294931i32)) {
                        @:check2 _p_3292670._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3292782 = (_t_3292782.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3295009i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3292782.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3295482i32;
                    } else if (__value__ == (3295104i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3292782.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3295169 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3292782 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3295227i32;
                    } else if (__value__ == (3295227i32)) {
                        if (_lit_3295169 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3295241i32;
                        } else {
                            _gotoNext = 3295380i32;
                        };
                    } else if (__value__ == (3295241i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3295169?.__copy__());
                            _c_3295249 = @:tmpset0 __tmp__._0;
                            _rest_3295252 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3295258 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3295258 != null) {
                            _gotoNext = 3295299i32;
                        } else {
                            _gotoNext = 3295338i32;
                        };
                    } else if (__value__ == (3295299i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3295258 };
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
                        _gotoNext = 3295338i32;
                    } else if (__value__ == (3295338i32)) {
                        @:check2 _p_3292670._literal(_c_3295249);
                        _lit_3295169 = _rest_3295252?.__copy__();
                        _gotoNext = 3295227i32;
                    } else if (__value__ == (3295380i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3295400i32)) {
                        @:check2 _p_3292670._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3292782 = (_t_3292782.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3295482i32)) {
                        _re_3295482 = @:check2 _p_3292670._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3295482 ?? throw "null pointer dereference").flags = _p_3292670._flags;
                        if ((((_t_3292782.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3292782[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3292782[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3295638i32;
                        } else {
                            _gotoNext = 3295880i32;
                        };
                    } else if (__value__ == (3295638i32)) {
                        {
                            var __tmp__ = @:check2 _p_3292670._parseUnicodeClass(_t_3292782?.__copy__(), ((@:checkr _re_3295482 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3295644 = @:tmpset0 __tmp__._0;
                            _rest_3295647 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3295653 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3295653 != null) {
                            _gotoNext = 3295715i32;
                        } else {
                            _gotoNext = 3295748i32;
                        };
                    } else if (__value__ == (3295715i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3295653 };
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
                        _gotoNext = 3295748i32;
                    } else if (__value__ == (3295748i32)) {
                        if (_r_3295644 != null) {
                            _gotoNext = 3295760i32;
                        } else {
                            _gotoNext = 3295880i32;
                        };
                    } else if (__value__ == (3295760i32)) {
                        (@:checkr _re_3295482 ?? throw "null pointer dereference").rune = _r_3295644;
                        _t_3292782 = _rest_3295647?.__copy__();
                        @:check2 _p_3292670._push(_re_3295482);
                        bigSwitchBreak = true;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3295880i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292670._parsePerlClassEscape(_t_3292782?.__copy__(), ((@:checkr _re_3295482 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3295883 = @:tmpset0 __tmp__._0;
                                _rest_3295886 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3295883 != null) {
                                _gotoNext = 3295944i32;
                            } else {
                                _gotoNext = 3296018i32;
                            };
                        };
                    } else if (__value__ == (3295944i32)) {
                        (@:checkr _re_3295482 ?? throw "null pointer dereference").rune = _r_3295883;
                        _t_3292782 = _rest_3295886?.__copy__();
                        @:check2 _p_3292670._push(_re_3295482);
                        bigSwitchBreak = true;
                        _gotoNext = 3292833i32;
                    } else if (__value__ == (3296018i32)) {
                        @:check2 _p_3292670._reuse(_re_3295482);
                        {
                            {
                                var __tmp__ = @:check2 _p_3292670._parseEscape(_t_3292782?.__copy__());
                                _c_3292690 = @:tmpset0 __tmp__._0;
                                _t_3292782 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3296118i32;
                            } else {
                                _gotoNext = 3296148i32;
                            };
                        };
                    } else if (__value__ == (3296118i32)) {
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
                        _gotoNext = 3296148i32;
                    } else if (__value__ == (3296148i32)) {
                        @:check2 _p_3292670._literal(_c_3292690);
                        _gotoNext = 3296167i32;
                    } else if (__value__ == (3296167i32)) {
                        _lastRepeat_3292724 = _repeat_3292806?.__copy__();
                        _gotoNext = 3292790i32;
                    } else if (__value__ == (3296192i32)) {
                        @:check2 _p_3292670._concat();
                        if (@:check2 _p_3292670._swapVerticalBar()) {
                            _gotoNext = 3296227i32;
                        } else {
                            _gotoNext = 3296292i32;
                        };
                    } else if (__value__ == (3296227i32)) {
                        _p_3292670._stack = (_p_3292670._stack.__slice__(0, ((_p_3292670._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3296292i32;
                    } else if (__value__ == (3296292i32)) {
                        @:check2 _p_3292670._alternate();
                        _n_3296308 = (_p_3292670._stack.length);
                        if (_n_3296308 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3296337i32;
                        } else {
                            _gotoNext = 3296384i32;
                        };
                    } else if (__value__ == (3296337i32)) {
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
                        _gotoNext = 3296384i32;
                    } else if (__value__ == (3296384i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3292670._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
