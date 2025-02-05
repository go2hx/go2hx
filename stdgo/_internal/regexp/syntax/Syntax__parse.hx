package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3222374:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3220995:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3222380:stdgo.Error = (null : stdgo.Error);
            var _r_3223005:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _max_3221323:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3222371:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _t_3219904:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3219792:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _n_3223430:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_3222604:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _repeat_3219928:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3219846:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3222775:stdgo.Error = (null : stdgo.Error);
            var _after_3221328:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3221303:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3219650:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _rest_3222769:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3222291:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3221335:Bool = false;
            var _op_3219830:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _c_3219812:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3223008:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3222766:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _min_3221318:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3221120:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3219603i32;
                        } else {
                            _gotoNext = 3219784i32;
                        };
                    } else if (__value__ == (3219603i32)) {
                        {
                            _err_3219650 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3219650 != null) {
                                _gotoNext = 3219682i32;
                            } else {
                                _gotoNext = 3219709i32;
                            };
                        };
                    } else if (__value__ == (3219682i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3219650 };
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
                        _gotoNext = 3219709i32;
                    } else if (__value__ == (3219709i32)) {
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
                        _gotoNext = 3219784i32;
                    } else if (__value__ == (3219784i32)) {
                        _p_3219792._flags = _flags;
                        _p_3219792._wholeRegexp = _s?.__copy__();
                        _t_3219904 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3219912i32;
                    } else if (__value__ == (3219912i32)) {
                        if (_t_3219904 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3219924i32;
                        } else {
                            _gotoNext = 3223314i32;
                        };
                    } else if (__value__ == (3219924i32)) {
                        _repeat_3219928 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3219942i32;
                    } else if (__value__ == (3219942i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3219955i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3219904[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220068i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220338i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220435i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220531i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220646i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220776i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220890i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3220972i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3221273i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3221829i32;
                                } else {
                                    _gotoNext = 3219971i32;
                                };
                            };
                        } else {
                            _gotoNext = 3223289i32;
                        };
                    } else if (__value__ == (3219971i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3219904?.__copy__());
                                _c_3219812 = @:tmpset0 __tmp__._0;
                                _t_3219904 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3220022i32;
                            } else {
                                _gotoNext = 3220052i32;
                            };
                        };
                    } else if (__value__ == (3220022i32)) {
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
                        _gotoNext = 3220052i32;
                    } else if (__value__ == (3220052i32)) {
                        @:check2 _p_3219792._literal(_c_3219812);
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220068i32)) {
                        if ((((_p_3219792._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3219904.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3219904[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3220133i32;
                        } else {
                            _gotoNext = 3220276i32;
                        };
                    } else if (__value__ == (3220133i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3219792._parsePerlFlags(_t_3219904?.__copy__());
                                _t_3219904 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3220229i32;
                            } else {
                                _gotoNext = 3220262i32;
                            };
                        };
                    } else if (__value__ == (3220229i32)) {
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
                        _gotoNext = 3220262i32;
                    } else if (__value__ == (3220262i32)) {
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220276i32)) {
                        _p_3219792._numCap++;
                        @:check2 _p_3219792._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3219792._numCap;
                        _t_3219904 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220338i32)) {
                        {
                            _err = @:check2 _p_3219792._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3220393i32;
                            } else {
                                _gotoNext = 3220423i32;
                            };
                        };
                    } else if (__value__ == (3220393i32)) {
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
                        _gotoNext = 3220423i32;
                    } else if (__value__ == (3220423i32)) {
                        _t_3219904 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220435i32)) {
                        {
                            _err = @:check2 _p_3219792._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3220489i32;
                            } else {
                                _gotoNext = 3220519i32;
                            };
                        };
                    } else if (__value__ == (3220489i32)) {
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
                        _gotoNext = 3220519i32;
                    } else if (__value__ == (3220519i32)) {
                        _t_3219904 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220531i32)) {
                        if ((_p_3219792._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3220568i32;
                        } else {
                            _gotoNext = 3220602i32;
                        };
                    } else if (__value__ == (3220568i32)) {
                        @:check2 _p_3219792._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3220634i32;
                    } else if (__value__ == (3220602i32)) {
                        _gotoNext = 3220602i32;
                        @:check2 _p_3219792._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3220634i32;
                    } else if (__value__ == (3220634i32)) {
                        _t_3219904 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220646i32)) {
                        if ((_p_3219792._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3220683i32;
                        } else {
                            _gotoNext = 3220734i32;
                        };
                    } else if (__value__ == (3220683i32)) {
                        {
                            final __t__ = @:check2 _p_3219792._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3220764i32;
                    } else if (__value__ == (3220734i32)) {
                        _gotoNext = 3220734i32;
                        @:check2 _p_3219792._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3220764i32;
                    } else if (__value__ == (3220764i32)) {
                        _t_3219904 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220776i32)) {
                        if ((_p_3219792._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3220811i32;
                        } else {
                            _gotoNext = 3220843i32;
                        };
                    } else if (__value__ == (3220811i32)) {
                        @:check2 _p_3219792._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3220878i32;
                    } else if (__value__ == (3220843i32)) {
                        _gotoNext = 3220843i32;
                        @:check2 _p_3219792._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3220878i32;
                    } else if (__value__ == (3220878i32)) {
                        _t_3219904 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220890i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3219792._parseClass(_t_3219904?.__copy__());
                                _t_3219904 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3220943i32;
                            } else {
                                _gotoNext = 3223289i32;
                            };
                        };
                    } else if (__value__ == (3220943i32)) {
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
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3220972i32)) {
                        _before_3220995 = _t_3219904?.__copy__();
                        _gotoNext = 3221010i32;
                    } else if (__value__ == (3221010i32)) {
                        {
                            final __value__ = _t_3219904[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3221027i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3221056i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3221085i32;
                            } else {
                                _gotoNext = 3221120i32;
                            };
                        };
                    } else if (__value__ == (3221027i32)) {
                        _op_3219830 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3221120i32;
                    } else if (__value__ == (3221056i32)) {
                        _op_3219830 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3221120i32;
                    } else if (__value__ == (3221085i32)) {
                        _op_3219830 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3221120i32;
                    } else if (__value__ == (3221120i32)) {
                        _after_3221120 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3219792._repeat(_op_3219830, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3220995?.__copy__(), _after_3221120?.__copy__(), _lastRepeat_3219846?.__copy__());
                                _after_3221120 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3221212i32;
                            } else {
                                _gotoNext = 3221242i32;
                            };
                        };
                    } else if (__value__ == (3221212i32)) {
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
                        _gotoNext = 3221242i32;
                    } else if (__value__ == (3221242i32)) {
                        _repeat_3219928 = _before_3220995?.__copy__();
                        _t_3219904 = _after_3221120?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3221273i32)) {
                        _op_3219830 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3221303 = _t_3219904?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3219792._parseRepeat(_t_3219904?.__copy__());
                            _min_3221318 = @:tmpset0 __tmp__._0;
                            _max_3221323 = @:tmpset0 __tmp__._1;
                            _after_3221328 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3221335 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3221335) {
                            _gotoNext = 3221368i32;
                        } else {
                            _gotoNext = 3221476i32;
                        };
                    } else if (__value__ == (3221368i32)) {
                        @:check2 _p_3219792._literal((123 : stdgo.GoInt32));
                        _t_3219904 = (_t_3219904.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3221476i32)) {
                        if (((((_min_3221318 < (0 : stdgo.GoInt) : Bool) || (_min_3221318 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3221323 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3221323 >= (0 : stdgo.GoInt) : Bool) && (_min_3221318 > _max_3221323 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3221540i32;
                        } else {
                            _gotoNext = 3221690i32;
                        };
                    } else if (__value__ == (3221540i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3221303.__slice__(0, ((_before_3221303.length) - (_after_3221328.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3221690i32;
                    } else if (__value__ == (3221690i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3219792._repeat(_op_3219830, _min_3221318, _max_3221323, _before_3221303?.__copy__(), _after_3221328?.__copy__(), _lastRepeat_3219846?.__copy__());
                                _after_3221328 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3221768i32;
                            } else {
                                _gotoNext = 3221798i32;
                            };
                        };
                    } else if (__value__ == (3221768i32)) {
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
                        _gotoNext = 3221798i32;
                    } else if (__value__ == (3221798i32)) {
                        _repeat_3219928 = _before_3221303?.__copy__();
                        _t_3219904 = _after_3221328?.__copy__();
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3221829i32)) {
                        if ((((_p_3219792._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3219904.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3221880i32;
                        } else {
                            _gotoNext = 3222604i32;
                        };
                    } else if (__value__ == (3221880i32)) {
                        _gotoNext = 3221886i32;
                    } else if (__value__ == (3221886i32)) {
                        {
                            final __value__ = _t_3219904[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3221904i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3221977i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3222053i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3222131i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3222226i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3222522i32;
                            } else {
                                _gotoNext = 3222604i32;
                            };
                        };
                    } else if (__value__ == (3221904i32)) {
                        @:check2 _p_3219792._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3219904 = (_t_3219904.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3221977i32)) {
                        @:check2 _p_3219792._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3219904 = (_t_3219904.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3222053i32)) {
                        @:check2 _p_3219792._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3219904 = (_t_3219904.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3222131i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3219904.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3222604i32;
                    } else if (__value__ == (3222226i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3219904.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3222291 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3219904 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3222349i32;
                    } else if (__value__ == (3222349i32)) {
                        if (_lit_3222291 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3222363i32;
                        } else {
                            _gotoNext = 3222502i32;
                        };
                    } else if (__value__ == (3222363i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3222291?.__copy__());
                            _c_3222371 = @:tmpset0 __tmp__._0;
                            _rest_3222374 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3222380 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3222380 != null) {
                            _gotoNext = 3222421i32;
                        } else {
                            _gotoNext = 3222460i32;
                        };
                    } else if (__value__ == (3222421i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3222380 };
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
                        _gotoNext = 3222460i32;
                    } else if (__value__ == (3222460i32)) {
                        @:check2 _p_3219792._literal(_c_3222371);
                        _lit_3222291 = _rest_3222374?.__copy__();
                        _gotoNext = 3222349i32;
                    } else if (__value__ == (3222502i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3222522i32)) {
                        @:check2 _p_3219792._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3219904 = (_t_3219904.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3222604i32)) {
                        _re_3222604 = @:check2 _p_3219792._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3222604 ?? throw "null pointer dereference").flags = _p_3219792._flags;
                        if ((((_t_3219904.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3219904[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3219904[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3222760i32;
                        } else {
                            _gotoNext = 3223002i32;
                        };
                    } else if (__value__ == (3222760i32)) {
                        {
                            var __tmp__ = @:check2 _p_3219792._parseUnicodeClass(_t_3219904?.__copy__(), ((@:checkr _re_3222604 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3222766 = @:tmpset0 __tmp__._0;
                            _rest_3222769 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3222775 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3222775 != null) {
                            _gotoNext = 3222837i32;
                        } else {
                            _gotoNext = 3222870i32;
                        };
                    } else if (__value__ == (3222837i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3222775 };
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
                        _gotoNext = 3222870i32;
                    } else if (__value__ == (3222870i32)) {
                        if (_r_3222766 != null) {
                            _gotoNext = 3222882i32;
                        } else {
                            _gotoNext = 3223002i32;
                        };
                    } else if (__value__ == (3222882i32)) {
                        (@:checkr _re_3222604 ?? throw "null pointer dereference").rune = _r_3222766;
                        _t_3219904 = _rest_3222769?.__copy__();
                        @:check2 _p_3219792._push(_re_3222604);
                        bigSwitchBreak = true;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3223002i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3219792._parsePerlClassEscape(_t_3219904?.__copy__(), ((@:checkr _re_3222604 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3223005 = @:tmpset0 __tmp__._0;
                                _rest_3223008 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3223005 != null) {
                                _gotoNext = 3223066i32;
                            } else {
                                _gotoNext = 3223140i32;
                            };
                        };
                    } else if (__value__ == (3223066i32)) {
                        (@:checkr _re_3222604 ?? throw "null pointer dereference").rune = _r_3223005;
                        _t_3219904 = _rest_3223008?.__copy__();
                        @:check2 _p_3219792._push(_re_3222604);
                        bigSwitchBreak = true;
                        _gotoNext = 3219955i32;
                    } else if (__value__ == (3223140i32)) {
                        @:check2 _p_3219792._reuse(_re_3222604);
                        {
                            {
                                var __tmp__ = @:check2 _p_3219792._parseEscape(_t_3219904?.__copy__());
                                _c_3219812 = @:tmpset0 __tmp__._0;
                                _t_3219904 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3223240i32;
                            } else {
                                _gotoNext = 3223270i32;
                            };
                        };
                    } else if (__value__ == (3223240i32)) {
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
                        _gotoNext = 3223270i32;
                    } else if (__value__ == (3223270i32)) {
                        @:check2 _p_3219792._literal(_c_3219812);
                        _gotoNext = 3223289i32;
                    } else if (__value__ == (3223289i32)) {
                        _lastRepeat_3219846 = _repeat_3219928?.__copy__();
                        _gotoNext = 3219912i32;
                    } else if (__value__ == (3223314i32)) {
                        @:check2 _p_3219792._concat();
                        if (@:check2 _p_3219792._swapVerticalBar()) {
                            _gotoNext = 3223349i32;
                        } else {
                            _gotoNext = 3223414i32;
                        };
                    } else if (__value__ == (3223349i32)) {
                        _p_3219792._stack = (_p_3219792._stack.__slice__(0, ((_p_3219792._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3223414i32;
                    } else if (__value__ == (3223414i32)) {
                        @:check2 _p_3219792._alternate();
                        _n_3223430 = (_p_3219792._stack.length);
                        if (_n_3223430 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3223459i32;
                        } else {
                            _gotoNext = 3223506i32;
                        };
                    } else if (__value__ == (3223459i32)) {
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
                        _gotoNext = 3223506i32;
                    } else if (__value__ == (3223506i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3219792._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
