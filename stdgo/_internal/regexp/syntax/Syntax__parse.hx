package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _before_3331491:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3330034:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3330018:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3332957:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3332568:stdgo.Error = (null : stdgo.Error);
            var _lit_3332479:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3331523:Bool = false;
            var _n_3333618:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3332559:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3329980:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _repeat_3330116:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3330092:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3331308:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3331183:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3329838:stdgo.Error = (null : stdgo.Error);
            var _rest_3333196:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3332954:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3333193:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3332792:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _rest_3332562:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3331511:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3332963:stdgo.Error = (null : stdgo.Error);
            var _c_3330000:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _after_3331516:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3331506:stdgo.GoInt = (0 : stdgo.GoInt);
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
                            _gotoNext = 3329791i32;
                        } else {
                            _gotoNext = 3329972i32;
                        };
                    } else if (__value__ == (3329791i32)) {
                        {
                            _err_3329838 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3329838 != null) {
                                _gotoNext = 3329870i32;
                            } else {
                                _gotoNext = 3329897i32;
                            };
                        };
                    } else if (__value__ == (3329870i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3329838 };
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
                        _gotoNext = 3329897i32;
                    } else if (__value__ == (3329897i32)) {
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
                        _gotoNext = 3329972i32;
                    } else if (__value__ == (3329972i32)) {
                        _p_3329980._flags = _flags;
                        _p_3329980._wholeRegexp = _s?.__copy__();
                        _t_3330092 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3330100i32;
                    } else if (__value__ == (3330100i32)) {
                        if (_t_3330092 != (stdgo.Go.str())) {
                            _gotoNext = 3330112i32;
                        } else {
                            _gotoNext = 3333502i32;
                        };
                    } else if (__value__ == (3330112i32)) {
                        _repeat_3330116 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3330130i32;
                    } else if (__value__ == (3330130i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3330143i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3330092[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330256i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330526i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330623i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330719i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330834i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330964i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331078i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331160i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331461i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332017i32;
                                } else {
                                    _gotoNext = 3330159i32;
                                };
                            };
                        } else {
                            _gotoNext = 3333477i32;
                        };
                    } else if (__value__ == (3330159i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3330092?.__copy__());
                                _c_3330000 = __tmp__._0;
                                _t_3330092 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3330210i32;
                            } else {
                                _gotoNext = 3330240i32;
                            };
                        };
                    } else if (__value__ == (3330210i32)) {
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
                        _gotoNext = 3330240i32;
                    } else if (__value__ == (3330240i32)) {
                        @:check2 _p_3329980._literal(_c_3330000);
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3330256i32)) {
                        if ((((_p_3329980._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3330092.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3330092[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3330321i32;
                        } else {
                            _gotoNext = 3330464i32;
                        };
                    } else if (__value__ == (3330321i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329980._parsePerlFlags(_t_3330092?.__copy__());
                                _t_3330092 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3330417i32;
                            } else {
                                _gotoNext = 3330450i32;
                            };
                        };
                    } else if (__value__ == (3330417i32)) {
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
                        _gotoNext = 3330450i32;
                    } else if (__value__ == (3330450i32)) {
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3330464i32)) {
                        _p_3329980._numCap++;
                        @:check2 _p_3329980._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3329980._numCap;
                        _t_3330092 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3330526i32)) {
                        {
                            _err = @:check2 _p_3329980._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3330581i32;
                            } else {
                                _gotoNext = 3330611i32;
                            };
                        };
                    } else if (__value__ == (3330581i32)) {
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
                        _gotoNext = 3330611i32;
                    } else if (__value__ == (3330611i32)) {
                        _t_3330092 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3330623i32)) {
                        {
                            _err = @:check2 _p_3329980._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3330677i32;
                            } else {
                                _gotoNext = 3330707i32;
                            };
                        };
                    } else if (__value__ == (3330677i32)) {
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
                        _gotoNext = 3330707i32;
                    } else if (__value__ == (3330707i32)) {
                        _t_3330092 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3330719i32)) {
                        if ((_p_3329980._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3330756i32;
                        } else {
                            _gotoNext = 3330790i32;
                        };
                    } else if (__value__ == (3330756i32)) {
                        @:check2 _p_3329980._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3330822i32;
                    } else if (__value__ == (3330790i32)) {
                        _gotoNext = 3330790i32;
                        @:check2 _p_3329980._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3330822i32;
                    } else if (__value__ == (3330822i32)) {
                        _t_3330092 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3330834i32)) {
                        if ((_p_3329980._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3330871i32;
                        } else {
                            _gotoNext = 3330922i32;
                        };
                    } else if (__value__ == (3330871i32)) {
                        {
                            final __t__ = @:check2 _p_3329980._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3330952i32;
                    } else if (__value__ == (3330922i32)) {
                        _gotoNext = 3330922i32;
                        @:check2 _p_3329980._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3330952i32;
                    } else if (__value__ == (3330952i32)) {
                        _t_3330092 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3330964i32)) {
                        if ((_p_3329980._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3330999i32;
                        } else {
                            _gotoNext = 3331031i32;
                        };
                    } else if (__value__ == (3330999i32)) {
                        @:check2 _p_3329980._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3331066i32;
                    } else if (__value__ == (3331031i32)) {
                        _gotoNext = 3331031i32;
                        @:check2 _p_3329980._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3331066i32;
                    } else if (__value__ == (3331066i32)) {
                        _t_3330092 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3331078i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329980._parseClass(_t_3330092?.__copy__());
                                _t_3330092 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3331131i32;
                            } else {
                                _gotoNext = 3333477i32;
                            };
                        };
                    } else if (__value__ == (3331131i32)) {
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
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3331160i32)) {
                        _before_3331183 = _t_3330092?.__copy__();
                        _gotoNext = 3331198i32;
                    } else if (__value__ == (3331198i32)) {
                        {
                            final __value__ = _t_3330092[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3331215i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3331244i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3331273i32;
                            } else {
                                _gotoNext = 3331308i32;
                            };
                        };
                    } else if (__value__ == (3331215i32)) {
                        _op_3330018 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3331308i32;
                    } else if (__value__ == (3331244i32)) {
                        _op_3330018 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3331308i32;
                    } else if (__value__ == (3331273i32)) {
                        _op_3330018 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3331308i32;
                    } else if (__value__ == (3331308i32)) {
                        _after_3331308 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3329980._repeat(_op_3330018, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3331183?.__copy__(), _after_3331308?.__copy__(), _lastRepeat_3330034?.__copy__());
                                _after_3331308 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3331400i32;
                            } else {
                                _gotoNext = 3331430i32;
                            };
                        };
                    } else if (__value__ == (3331400i32)) {
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
                        _gotoNext = 3331430i32;
                    } else if (__value__ == (3331430i32)) {
                        _repeat_3330116 = _before_3331183?.__copy__();
                        _t_3330092 = _after_3331308?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3331461i32)) {
                        _op_3330018 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3331491 = _t_3330092?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3329980._parseRepeat(_t_3330092?.__copy__());
                            _min_3331506 = __tmp__._0;
                            _max_3331511 = __tmp__._1;
                            _after_3331516 = __tmp__._2?.__copy__();
                            _ok_3331523 = __tmp__._3;
                        };
                        if (!_ok_3331523) {
                            _gotoNext = 3331556i32;
                        } else {
                            _gotoNext = 3331664i32;
                        };
                    } else if (__value__ == (3331556i32)) {
                        @:check2 _p_3329980._literal((123 : stdgo.GoInt32));
                        _t_3330092 = (_t_3330092.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3331664i32)) {
                        if (((((_min_3331506 < (0 : stdgo.GoInt) : Bool) || (_min_3331506 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3331511 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3331511 >= (0 : stdgo.GoInt) : Bool) && (_min_3331506 > _max_3331511 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3331728i32;
                        } else {
                            _gotoNext = 3331878i32;
                        };
                    } else if (__value__ == (3331728i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3331491.__slice__(0, ((_before_3331491.length) - (_after_3331516.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3331878i32;
                    } else if (__value__ == (3331878i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329980._repeat(_op_3330018, _min_3331506, _max_3331511, _before_3331491?.__copy__(), _after_3331516?.__copy__(), _lastRepeat_3330034?.__copy__());
                                _after_3331516 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3331956i32;
                            } else {
                                _gotoNext = 3331986i32;
                            };
                        };
                    } else if (__value__ == (3331956i32)) {
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
                        _gotoNext = 3331986i32;
                    } else if (__value__ == (3331986i32)) {
                        _repeat_3330116 = _before_3331491?.__copy__();
                        _t_3330092 = _after_3331516?.__copy__();
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3332017i32)) {
                        if ((((_p_3329980._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3330092.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3332068i32;
                        } else {
                            _gotoNext = 3332792i32;
                        };
                    } else if (__value__ == (3332068i32)) {
                        _gotoNext = 3332074i32;
                    } else if (__value__ == (3332074i32)) {
                        {
                            final __value__ = _t_3330092[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3332092i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3332165i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3332241i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3332319i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3332414i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3332710i32;
                            } else {
                                _gotoNext = 3332792i32;
                            };
                        };
                    } else if (__value__ == (3332092i32)) {
                        @:check2 _p_3329980._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330092 = (_t_3330092.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3332165i32)) {
                        @:check2 _p_3329980._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330092 = (_t_3330092.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3332241i32)) {
                        @:check2 _p_3329980._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330092 = (_t_3330092.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3332319i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3330092.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3332792i32;
                    } else if (__value__ == (3332414i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3330092.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3332479 = __tmp__._0?.__copy__();
                            _t_3330092 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3332537i32;
                    } else if (__value__ == (3332537i32)) {
                        if (_lit_3332479 != (stdgo.Go.str())) {
                            _gotoNext = 3332551i32;
                        } else {
                            _gotoNext = 3332690i32;
                        };
                    } else if (__value__ == (3332551i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3332479?.__copy__());
                            _c_3332559 = __tmp__._0;
                            _rest_3332562 = __tmp__._1?.__copy__();
                            _err_3332568 = __tmp__._2;
                        };
                        if (_err_3332568 != null) {
                            _gotoNext = 3332609i32;
                        } else {
                            _gotoNext = 3332648i32;
                        };
                    } else if (__value__ == (3332609i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3332568 };
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
                        _gotoNext = 3332648i32;
                    } else if (__value__ == (3332648i32)) {
                        @:check2 _p_3329980._literal(_c_3332559);
                        _lit_3332479 = _rest_3332562?.__copy__();
                        _gotoNext = 3332537i32;
                    } else if (__value__ == (3332690i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3332710i32)) {
                        @:check2 _p_3329980._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330092 = (_t_3330092.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3332792i32)) {
                        _re_3332792 = @:check2 _p_3329980._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3332792 ?? throw "null pointer dereference").flags = _p_3329980._flags;
                        if ((((_t_3330092.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3330092[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3330092[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3332948i32;
                        } else {
                            _gotoNext = 3333190i32;
                        };
                    } else if (__value__ == (3332948i32)) {
                        {
                            var __tmp__ = @:check2 _p_3329980._parseUnicodeClass(_t_3330092?.__copy__(), ((@:checkr _re_3332792 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3332954 = __tmp__._0;
                            _rest_3332957 = __tmp__._1?.__copy__();
                            _err_3332963 = __tmp__._2;
                        };
                        if (_err_3332963 != null) {
                            _gotoNext = 3333025i32;
                        } else {
                            _gotoNext = 3333058i32;
                        };
                    } else if (__value__ == (3333025i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3332963 };
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
                        _gotoNext = 3333058i32;
                    } else if (__value__ == (3333058i32)) {
                        if (_r_3332954 != null) {
                            _gotoNext = 3333070i32;
                        } else {
                            _gotoNext = 3333190i32;
                        };
                    } else if (__value__ == (3333070i32)) {
                        (@:checkr _re_3332792 ?? throw "null pointer dereference").rune = _r_3332954;
                        _t_3330092 = _rest_3332957?.__copy__();
                        @:check2 _p_3329980._push(_re_3332792);
                        bigSwitchBreak = true;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3333190i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329980._parsePerlClassEscape(_t_3330092?.__copy__(), ((@:checkr _re_3332792 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3333193 = __tmp__._0;
                                _rest_3333196 = __tmp__._1?.__copy__();
                            };
                            if (_r_3333193 != null) {
                                _gotoNext = 3333254i32;
                            } else {
                                _gotoNext = 3333328i32;
                            };
                        };
                    } else if (__value__ == (3333254i32)) {
                        (@:checkr _re_3332792 ?? throw "null pointer dereference").rune = _r_3333193;
                        _t_3330092 = _rest_3333196?.__copy__();
                        @:check2 _p_3329980._push(_re_3332792);
                        bigSwitchBreak = true;
                        _gotoNext = 3330143i32;
                    } else if (__value__ == (3333328i32)) {
                        @:check2 _p_3329980._reuse(_re_3332792);
                        {
                            {
                                var __tmp__ = @:check2 _p_3329980._parseEscape(_t_3330092?.__copy__());
                                _c_3330000 = __tmp__._0;
                                _t_3330092 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3333428i32;
                            } else {
                                _gotoNext = 3333458i32;
                            };
                        };
                    } else if (__value__ == (3333428i32)) {
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
                        _gotoNext = 3333458i32;
                    } else if (__value__ == (3333458i32)) {
                        @:check2 _p_3329980._literal(_c_3330000);
                        _gotoNext = 3333477i32;
                    } else if (__value__ == (3333477i32)) {
                        _lastRepeat_3330034 = _repeat_3330116?.__copy__();
                        _gotoNext = 3330100i32;
                    } else if (__value__ == (3333502i32)) {
                        @:check2 _p_3329980._concat();
                        if (@:check2 _p_3329980._swapVerticalBar()) {
                            _gotoNext = 3333537i32;
                        } else {
                            _gotoNext = 3333602i32;
                        };
                    } else if (__value__ == (3333537i32)) {
                        _p_3329980._stack = (_p_3329980._stack.__slice__(0, ((_p_3329980._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3333602i32;
                    } else if (__value__ == (3333602i32)) {
                        @:check2 _p_3329980._alternate();
                        _n_3333618 = (_p_3329980._stack.length);
                        if (_n_3333618 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3333647i32;
                        } else {
                            _gotoNext = 3333694i32;
                        };
                    } else if (__value__ == (3333647i32)) {
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
                        _gotoNext = 3333694i32;
                    } else if (__value__ == (3333694i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3329980._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
