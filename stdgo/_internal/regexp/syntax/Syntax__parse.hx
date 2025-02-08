package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3339176:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3338754:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3335576:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _p_3335538:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _err_3338521:stdgo.Error = (null : stdgo.Error);
            var _err_3338126:stdgo.Error = (null : stdgo.Error);
            var _after_3337074:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3335396:stdgo.Error = (null : stdgo.Error);
            var _re_3338350:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _lastRepeat_3335592:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3338512:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3337049:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3336866:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3338751:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3338515:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3338117:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3335674:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3335558:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3338120:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3337064:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3335650:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _lit_3338037:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3337081:Bool = false;
            var _max_3337069:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3336741:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3335349i32;
                        } else {
                            _gotoNext = 3335530i32;
                        };
                    } else if (__value__ == (3335349i32)) {
                        {
                            _err_3335396 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3335396 != null) {
                                _gotoNext = 3335428i32;
                            } else {
                                _gotoNext = 3335455i32;
                            };
                        };
                    } else if (__value__ == (3335428i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3335396 };
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
                        _gotoNext = 3335455i32;
                    } else if (__value__ == (3335455i32)) {
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
                        _gotoNext = 3335530i32;
                    } else if (__value__ == (3335530i32)) {
                        _p_3335538._flags = _flags;
                        _p_3335538._wholeRegexp = _s?.__copy__();
                        _t_3335650 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3335658i32;
                    } else if (__value__ == (3335658i32)) {
                        if (_t_3335650 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3335670i32;
                        } else {
                            _gotoNext = 3339060i32;
                        };
                    } else if (__value__ == (3335670i32)) {
                        _repeat_3335674 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335688i32;
                    } else if (__value__ == (3335688i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3335701i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3335650[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3335814i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3336084i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3336181i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3336277i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3336392i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3336522i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3336636i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3336718i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337019i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337575i32;
                                } else {
                                    _gotoNext = 3335717i32;
                                };
                            };
                        } else {
                            _gotoNext = 3339035i32;
                        };
                    } else if (__value__ == (3335717i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3335650?.__copy__());
                                _c_3335558 = @:tmpset0 __tmp__._0;
                                _t_3335650 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3335768i32;
                            } else {
                                _gotoNext = 3335798i32;
                            };
                        };
                    } else if (__value__ == (3335768i32)) {
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
                        _gotoNext = 3335798i32;
                    } else if (__value__ == (3335798i32)) {
                        @:check2 _p_3335538._literal(_c_3335558);
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3335814i32)) {
                        if ((((_p_3335538._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3335650.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3335650[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3335879i32;
                        } else {
                            _gotoNext = 3336022i32;
                        };
                    } else if (__value__ == (3335879i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3335538._parsePerlFlags(_t_3335650?.__copy__());
                                _t_3335650 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3335975i32;
                            } else {
                                _gotoNext = 3336008i32;
                            };
                        };
                    } else if (__value__ == (3335975i32)) {
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
                        _gotoNext = 3336008i32;
                    } else if (__value__ == (3336008i32)) {
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336022i32)) {
                        _p_3335538._numCap++;
                        @:check2 _p_3335538._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3335538._numCap;
                        _t_3335650 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336084i32)) {
                        {
                            _err = @:check2 _p_3335538._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3336139i32;
                            } else {
                                _gotoNext = 3336169i32;
                            };
                        };
                    } else if (__value__ == (3336139i32)) {
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
                        _gotoNext = 3336169i32;
                    } else if (__value__ == (3336169i32)) {
                        _t_3335650 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336181i32)) {
                        {
                            _err = @:check2 _p_3335538._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3336235i32;
                            } else {
                                _gotoNext = 3336265i32;
                            };
                        };
                    } else if (__value__ == (3336235i32)) {
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
                        _gotoNext = 3336265i32;
                    } else if (__value__ == (3336265i32)) {
                        _t_3335650 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336277i32)) {
                        if ((_p_3335538._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3336314i32;
                        } else {
                            _gotoNext = 3336348i32;
                        };
                    } else if (__value__ == (3336314i32)) {
                        @:check2 _p_3335538._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3336380i32;
                    } else if (__value__ == (3336348i32)) {
                        _gotoNext = 3336348i32;
                        @:check2 _p_3335538._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3336380i32;
                    } else if (__value__ == (3336380i32)) {
                        _t_3335650 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336392i32)) {
                        if ((_p_3335538._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3336429i32;
                        } else {
                            _gotoNext = 3336480i32;
                        };
                    } else if (__value__ == (3336429i32)) {
                        {
                            final __t__ = @:check2 _p_3335538._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3336510i32;
                    } else if (__value__ == (3336480i32)) {
                        _gotoNext = 3336480i32;
                        @:check2 _p_3335538._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3336510i32;
                    } else if (__value__ == (3336510i32)) {
                        _t_3335650 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336522i32)) {
                        if ((_p_3335538._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3336557i32;
                        } else {
                            _gotoNext = 3336589i32;
                        };
                    } else if (__value__ == (3336557i32)) {
                        @:check2 _p_3335538._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3336624i32;
                    } else if (__value__ == (3336589i32)) {
                        _gotoNext = 3336589i32;
                        @:check2 _p_3335538._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3336624i32;
                    } else if (__value__ == (3336624i32)) {
                        _t_3335650 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336636i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3335538._parseClass(_t_3335650?.__copy__());
                                _t_3335650 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3336689i32;
                            } else {
                                _gotoNext = 3339035i32;
                            };
                        };
                    } else if (__value__ == (3336689i32)) {
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
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3336718i32)) {
                        _before_3336741 = _t_3335650?.__copy__();
                        _gotoNext = 3336756i32;
                    } else if (__value__ == (3336756i32)) {
                        {
                            final __value__ = _t_3335650[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3336773i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3336802i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3336831i32;
                            } else {
                                _gotoNext = 3336866i32;
                            };
                        };
                    } else if (__value__ == (3336773i32)) {
                        _op_3335576 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3336866i32;
                    } else if (__value__ == (3336802i32)) {
                        _op_3335576 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3336866i32;
                    } else if (__value__ == (3336831i32)) {
                        _op_3335576 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3336866i32;
                    } else if (__value__ == (3336866i32)) {
                        _after_3336866 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3335538._repeat(_op_3335576, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3336741?.__copy__(), _after_3336866?.__copy__(), _lastRepeat_3335592?.__copy__());
                                _after_3336866 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3336958i32;
                            } else {
                                _gotoNext = 3336988i32;
                            };
                        };
                    } else if (__value__ == (3336958i32)) {
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
                        _gotoNext = 3336988i32;
                    } else if (__value__ == (3336988i32)) {
                        _repeat_3335674 = _before_3336741?.__copy__();
                        _t_3335650 = _after_3336866?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3337019i32)) {
                        _op_3335576 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3337049 = _t_3335650?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3335538._parseRepeat(_t_3335650?.__copy__());
                            _min_3337064 = @:tmpset0 __tmp__._0;
                            _max_3337069 = @:tmpset0 __tmp__._1;
                            _after_3337074 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3337081 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3337081) {
                            _gotoNext = 3337114i32;
                        } else {
                            _gotoNext = 3337222i32;
                        };
                    } else if (__value__ == (3337114i32)) {
                        @:check2 _p_3335538._literal((123 : stdgo.GoInt32));
                        _t_3335650 = (_t_3335650.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3337222i32)) {
                        if (((((_min_3337064 < (0 : stdgo.GoInt) : Bool) || (_min_3337064 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3337069 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3337069 >= (0 : stdgo.GoInt) : Bool) && (_min_3337064 > _max_3337069 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3337286i32;
                        } else {
                            _gotoNext = 3337436i32;
                        };
                    } else if (__value__ == (3337286i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3337049.__slice__(0, ((_before_3337049.length) - (_after_3337074.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3337436i32;
                    } else if (__value__ == (3337436i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3335538._repeat(_op_3335576, _min_3337064, _max_3337069, _before_3337049?.__copy__(), _after_3337074?.__copy__(), _lastRepeat_3335592?.__copy__());
                                _after_3337074 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3337514i32;
                            } else {
                                _gotoNext = 3337544i32;
                            };
                        };
                    } else if (__value__ == (3337514i32)) {
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
                        _gotoNext = 3337544i32;
                    } else if (__value__ == (3337544i32)) {
                        _repeat_3335674 = _before_3337049?.__copy__();
                        _t_3335650 = _after_3337074?.__copy__();
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3337575i32)) {
                        if ((((_p_3335538._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3335650.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3337626i32;
                        } else {
                            _gotoNext = 3338350i32;
                        };
                    } else if (__value__ == (3337626i32)) {
                        _gotoNext = 3337632i32;
                    } else if (__value__ == (3337632i32)) {
                        {
                            final __value__ = _t_3335650[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3337650i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3337723i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3337799i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3337877i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3337972i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3338268i32;
                            } else {
                                _gotoNext = 3338350i32;
                            };
                        };
                    } else if (__value__ == (3337650i32)) {
                        @:check2 _p_3335538._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3335650 = (_t_3335650.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3337723i32)) {
                        @:check2 _p_3335538._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3335650 = (_t_3335650.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3337799i32)) {
                        @:check2 _p_3335538._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3335650 = (_t_3335650.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3337877i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3335650.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3338350i32;
                    } else if (__value__ == (3337972i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3335650.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3338037 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3335650 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3338095i32;
                    } else if (__value__ == (3338095i32)) {
                        if (_lit_3338037 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3338109i32;
                        } else {
                            _gotoNext = 3338248i32;
                        };
                    } else if (__value__ == (3338109i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3338037?.__copy__());
                            _c_3338117 = @:tmpset0 __tmp__._0;
                            _rest_3338120 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3338126 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3338126 != null) {
                            _gotoNext = 3338167i32;
                        } else {
                            _gotoNext = 3338206i32;
                        };
                    } else if (__value__ == (3338167i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3338126 };
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
                        _gotoNext = 3338206i32;
                    } else if (__value__ == (3338206i32)) {
                        @:check2 _p_3335538._literal(_c_3338117);
                        _lit_3338037 = _rest_3338120?.__copy__();
                        _gotoNext = 3338095i32;
                    } else if (__value__ == (3338248i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3338268i32)) {
                        @:check2 _p_3335538._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3335650 = (_t_3335650.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3338350i32)) {
                        _re_3338350 = @:check2 _p_3335538._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3338350 ?? throw "null pointer dereference").flags = _p_3335538._flags;
                        if ((((_t_3335650.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3335650[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3335650[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3338506i32;
                        } else {
                            _gotoNext = 3338748i32;
                        };
                    } else if (__value__ == (3338506i32)) {
                        {
                            var __tmp__ = @:check2 _p_3335538._parseUnicodeClass(_t_3335650?.__copy__(), ((@:checkr _re_3338350 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3338512 = @:tmpset0 __tmp__._0;
                            _rest_3338515 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3338521 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3338521 != null) {
                            _gotoNext = 3338583i32;
                        } else {
                            _gotoNext = 3338616i32;
                        };
                    } else if (__value__ == (3338583i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3338521 };
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
                        _gotoNext = 3338616i32;
                    } else if (__value__ == (3338616i32)) {
                        if (_r_3338512 != null) {
                            _gotoNext = 3338628i32;
                        } else {
                            _gotoNext = 3338748i32;
                        };
                    } else if (__value__ == (3338628i32)) {
                        (@:checkr _re_3338350 ?? throw "null pointer dereference").rune = _r_3338512;
                        _t_3335650 = _rest_3338515?.__copy__();
                        @:check2 _p_3335538._push(_re_3338350);
                        bigSwitchBreak = true;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3338748i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3335538._parsePerlClassEscape(_t_3335650?.__copy__(), ((@:checkr _re_3338350 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3338751 = @:tmpset0 __tmp__._0;
                                _rest_3338754 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3338751 != null) {
                                _gotoNext = 3338812i32;
                            } else {
                                _gotoNext = 3338886i32;
                            };
                        };
                    } else if (__value__ == (3338812i32)) {
                        (@:checkr _re_3338350 ?? throw "null pointer dereference").rune = _r_3338751;
                        _t_3335650 = _rest_3338754?.__copy__();
                        @:check2 _p_3335538._push(_re_3338350);
                        bigSwitchBreak = true;
                        _gotoNext = 3335701i32;
                    } else if (__value__ == (3338886i32)) {
                        @:check2 _p_3335538._reuse(_re_3338350);
                        {
                            {
                                var __tmp__ = @:check2 _p_3335538._parseEscape(_t_3335650?.__copy__());
                                _c_3335558 = @:tmpset0 __tmp__._0;
                                _t_3335650 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3338986i32;
                            } else {
                                _gotoNext = 3339016i32;
                            };
                        };
                    } else if (__value__ == (3338986i32)) {
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
                        _gotoNext = 3339016i32;
                    } else if (__value__ == (3339016i32)) {
                        @:check2 _p_3335538._literal(_c_3335558);
                        _gotoNext = 3339035i32;
                    } else if (__value__ == (3339035i32)) {
                        _lastRepeat_3335592 = _repeat_3335674?.__copy__();
                        _gotoNext = 3335658i32;
                    } else if (__value__ == (3339060i32)) {
                        @:check2 _p_3335538._concat();
                        if (@:check2 _p_3335538._swapVerticalBar()) {
                            _gotoNext = 3339095i32;
                        } else {
                            _gotoNext = 3339160i32;
                        };
                    } else if (__value__ == (3339095i32)) {
                        _p_3335538._stack = (_p_3335538._stack.__slice__(0, ((_p_3335538._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3339160i32;
                    } else if (__value__ == (3339160i32)) {
                        @:check2 _p_3335538._alternate();
                        _n_3339176 = (_p_3335538._stack.length);
                        if (_n_3339176 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3339205i32;
                        } else {
                            _gotoNext = 3339252i32;
                        };
                    } else if (__value__ == (3339205i32)) {
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
                        _gotoNext = 3339252i32;
                    } else if (__value__ == (3339252i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3335538._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
