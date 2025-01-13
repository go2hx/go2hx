package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _ok_3430116:Bool = false;
            var _before_3429776:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3428685:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3428627:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3431556:stdgo.Error = (null : stdgo.Error);
            var _r_3431547:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3431072:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3428709:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3428611:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _after_3429901:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3431789:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3431161:stdgo.Error = (null : stdgo.Error);
            var _err_3428431:stdgo.Error = (null : stdgo.Error);
            var _rest_3431550:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3431786:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3431385:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3430109:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3430084:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3432211:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3431152:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3430104:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3428573:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3431155:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _min_3430099:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3428593:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3428384i32;
                        } else {
                            _gotoNext = 3428565i32;
                        };
                    } else if (__value__ == (3428384i32)) {
                        {
                            _err_3428431 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3428431 != null) {
                                _gotoNext = 3428463i32;
                            } else {
                                _gotoNext = 3428490i32;
                            };
                        };
                    } else if (__value__ == (3428463i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3428431 };
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
                        _gotoNext = 3428490i32;
                    } else if (__value__ == (3428490i32)) {
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
                        _gotoNext = 3428565i32;
                    } else if (__value__ == (3428565i32)) {
                        _p_3428573._flags = _flags;
                        _p_3428573._wholeRegexp = _s?.__copy__();
                        _t_3428685 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3428693i32;
                    } else if (__value__ == (3428693i32)) {
                        if (_t_3428685 != (stdgo.Go.str())) {
                            _gotoNext = 3428705i32;
                        } else {
                            _gotoNext = 3432095i32;
                        };
                    } else if (__value__ == (3428705i32)) {
                        _repeat_3428709 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3428723i32;
                    } else if (__value__ == (3428723i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3428736i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3428685[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3428849i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3429119i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3429216i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3429312i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3429427i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3429557i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3429671i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3429753i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3430054i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3430610i32;
                                } else {
                                    _gotoNext = 3428752i32;
                                };
                            };
                        } else {
                            _gotoNext = 3432070i32;
                        };
                    } else if (__value__ == (3428752i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3428685?.__copy__());
                                _c_3428593 = __tmp__._0;
                                _t_3428685 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3428803i32;
                            } else {
                                _gotoNext = 3428833i32;
                            };
                        };
                    } else if (__value__ == (3428803i32)) {
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
                        _gotoNext = 3428833i32;
                    } else if (__value__ == (3428833i32)) {
                        @:check2 _p_3428573._literal(_c_3428593);
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3428849i32)) {
                        if ((((_p_3428573._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3428685.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3428685[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3428914i32;
                        } else {
                            _gotoNext = 3429057i32;
                        };
                    } else if (__value__ == (3428914i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3428573._parsePerlFlags(_t_3428685?.__copy__());
                                _t_3428685 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3429010i32;
                            } else {
                                _gotoNext = 3429043i32;
                            };
                        };
                    } else if (__value__ == (3429010i32)) {
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
                        _gotoNext = 3429043i32;
                    } else if (__value__ == (3429043i32)) {
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429057i32)) {
                        _p_3428573._numCap++;
                        @:check2 _p_3428573._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3428573._numCap;
                        _t_3428685 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429119i32)) {
                        {
                            _err = @:check2 _p_3428573._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3429174i32;
                            } else {
                                _gotoNext = 3429204i32;
                            };
                        };
                    } else if (__value__ == (3429174i32)) {
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
                        _gotoNext = 3429204i32;
                    } else if (__value__ == (3429204i32)) {
                        _t_3428685 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429216i32)) {
                        {
                            _err = @:check2 _p_3428573._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3429270i32;
                            } else {
                                _gotoNext = 3429300i32;
                            };
                        };
                    } else if (__value__ == (3429270i32)) {
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
                        _gotoNext = 3429300i32;
                    } else if (__value__ == (3429300i32)) {
                        _t_3428685 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429312i32)) {
                        if ((_p_3428573._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3429349i32;
                        } else {
                            _gotoNext = 3429383i32;
                        };
                    } else if (__value__ == (3429349i32)) {
                        @:check2 _p_3428573._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3429415i32;
                    } else if (__value__ == (3429383i32)) {
                        _gotoNext = 3429383i32;
                        @:check2 _p_3428573._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3429415i32;
                    } else if (__value__ == (3429415i32)) {
                        _t_3428685 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429427i32)) {
                        if ((_p_3428573._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3429464i32;
                        } else {
                            _gotoNext = 3429515i32;
                        };
                    } else if (__value__ == (3429464i32)) {
                        {
                            final __t__ = @:check2 _p_3428573._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3429545i32;
                    } else if (__value__ == (3429515i32)) {
                        _gotoNext = 3429515i32;
                        @:check2 _p_3428573._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3429545i32;
                    } else if (__value__ == (3429545i32)) {
                        _t_3428685 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429557i32)) {
                        if ((_p_3428573._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3429592i32;
                        } else {
                            _gotoNext = 3429624i32;
                        };
                    } else if (__value__ == (3429592i32)) {
                        @:check2 _p_3428573._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3429659i32;
                    } else if (__value__ == (3429624i32)) {
                        _gotoNext = 3429624i32;
                        @:check2 _p_3428573._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3429659i32;
                    } else if (__value__ == (3429659i32)) {
                        _t_3428685 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429671i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3428573._parseClass(_t_3428685?.__copy__());
                                _t_3428685 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3429724i32;
                            } else {
                                _gotoNext = 3432070i32;
                            };
                        };
                    } else if (__value__ == (3429724i32)) {
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
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3429753i32)) {
                        _before_3429776 = _t_3428685?.__copy__();
                        _gotoNext = 3429791i32;
                    } else if (__value__ == (3429791i32)) {
                        {
                            final __value__ = _t_3428685[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3429808i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3429837i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3429866i32;
                            } else {
                                _gotoNext = 3429901i32;
                            };
                        };
                    } else if (__value__ == (3429808i32)) {
                        _op_3428611 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3429901i32;
                    } else if (__value__ == (3429837i32)) {
                        _op_3428611 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3429901i32;
                    } else if (__value__ == (3429866i32)) {
                        _op_3428611 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3429901i32;
                    } else if (__value__ == (3429901i32)) {
                        _after_3429901 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3428573._repeat(_op_3428611, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3429776?.__copy__(), _after_3429901?.__copy__(), _lastRepeat_3428627?.__copy__());
                                _after_3429901 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3429993i32;
                            } else {
                                _gotoNext = 3430023i32;
                            };
                        };
                    } else if (__value__ == (3429993i32)) {
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
                        _gotoNext = 3430023i32;
                    } else if (__value__ == (3430023i32)) {
                        _repeat_3428709 = _before_3429776?.__copy__();
                        _t_3428685 = _after_3429901?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3430054i32)) {
                        _op_3428611 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3430084 = _t_3428685?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3428573._parseRepeat(_t_3428685?.__copy__());
                            _min_3430099 = __tmp__._0;
                            _max_3430104 = __tmp__._1;
                            _after_3430109 = __tmp__._2?.__copy__();
                            _ok_3430116 = __tmp__._3;
                        };
                        if (!_ok_3430116) {
                            _gotoNext = 3430149i32;
                        } else {
                            _gotoNext = 3430257i32;
                        };
                    } else if (__value__ == (3430149i32)) {
                        @:check2 _p_3428573._literal((123 : stdgo.GoInt32));
                        _t_3428685 = (_t_3428685.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3430257i32)) {
                        if (((((_min_3430099 < (0 : stdgo.GoInt) : Bool) || (_min_3430099 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3430104 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3430104 >= (0 : stdgo.GoInt) : Bool) && (_min_3430099 > _max_3430104 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3430321i32;
                        } else {
                            _gotoNext = 3430471i32;
                        };
                    } else if (__value__ == (3430321i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3430084.__slice__(0, ((_before_3430084.length) - (_after_3430109.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3430471i32;
                    } else if (__value__ == (3430471i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3428573._repeat(_op_3428611, _min_3430099, _max_3430104, _before_3430084?.__copy__(), _after_3430109?.__copy__(), _lastRepeat_3428627?.__copy__());
                                _after_3430109 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3430549i32;
                            } else {
                                _gotoNext = 3430579i32;
                            };
                        };
                    } else if (__value__ == (3430549i32)) {
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
                        _gotoNext = 3430579i32;
                    } else if (__value__ == (3430579i32)) {
                        _repeat_3428709 = _before_3430084?.__copy__();
                        _t_3428685 = _after_3430109?.__copy__();
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3430610i32)) {
                        if ((((_p_3428573._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3428685.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3430661i32;
                        } else {
                            _gotoNext = 3431385i32;
                        };
                    } else if (__value__ == (3430661i32)) {
                        _gotoNext = 3430667i32;
                    } else if (__value__ == (3430667i32)) {
                        {
                            final __value__ = _t_3428685[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3430685i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3430758i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3430834i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3430912i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3431007i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3431303i32;
                            } else {
                                _gotoNext = 3431385i32;
                            };
                        };
                    } else if (__value__ == (3430685i32)) {
                        @:check2 _p_3428573._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3428685 = (_t_3428685.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3430758i32)) {
                        @:check2 _p_3428573._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3428685 = (_t_3428685.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3430834i32)) {
                        @:check2 _p_3428573._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3428685 = (_t_3428685.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3430912i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3428685.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3431385i32;
                    } else if (__value__ == (3431007i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3428685.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3431072 = __tmp__._0?.__copy__();
                            _t_3428685 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3431130i32;
                    } else if (__value__ == (3431130i32)) {
                        if (_lit_3431072 != (stdgo.Go.str())) {
                            _gotoNext = 3431144i32;
                        } else {
                            _gotoNext = 3431283i32;
                        };
                    } else if (__value__ == (3431144i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3431072?.__copy__());
                            _c_3431152 = __tmp__._0;
                            _rest_3431155 = __tmp__._1?.__copy__();
                            _err_3431161 = __tmp__._2;
                        };
                        if (_err_3431161 != null) {
                            _gotoNext = 3431202i32;
                        } else {
                            _gotoNext = 3431241i32;
                        };
                    } else if (__value__ == (3431202i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3431161 };
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
                        _gotoNext = 3431241i32;
                    } else if (__value__ == (3431241i32)) {
                        @:check2 _p_3428573._literal(_c_3431152);
                        _lit_3431072 = _rest_3431155?.__copy__();
                        _gotoNext = 3431130i32;
                    } else if (__value__ == (3431283i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3431303i32)) {
                        @:check2 _p_3428573._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3428685 = (_t_3428685.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3431385i32)) {
                        _re_3431385 = @:check2 _p_3428573._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3431385 ?? throw "null pointer dereference").flags = _p_3428573._flags;
                        if ((((_t_3428685.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3428685[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3428685[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3431541i32;
                        } else {
                            _gotoNext = 3431783i32;
                        };
                    } else if (__value__ == (3431541i32)) {
                        {
                            var __tmp__ = @:check2 _p_3428573._parseUnicodeClass(_t_3428685?.__copy__(), ((@:checkr _re_3431385 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3431547 = __tmp__._0;
                            _rest_3431550 = __tmp__._1?.__copy__();
                            _err_3431556 = __tmp__._2;
                        };
                        if (_err_3431556 != null) {
                            _gotoNext = 3431618i32;
                        } else {
                            _gotoNext = 3431651i32;
                        };
                    } else if (__value__ == (3431618i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3431556 };
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
                        _gotoNext = 3431651i32;
                    } else if (__value__ == (3431651i32)) {
                        if (_r_3431547 != null) {
                            _gotoNext = 3431663i32;
                        } else {
                            _gotoNext = 3431783i32;
                        };
                    } else if (__value__ == (3431663i32)) {
                        (@:checkr _re_3431385 ?? throw "null pointer dereference").rune = _r_3431547;
                        _t_3428685 = _rest_3431550?.__copy__();
                        @:check2 _p_3428573._push(_re_3431385);
                        bigSwitchBreak = true;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3431783i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3428573._parsePerlClassEscape(_t_3428685?.__copy__(), ((@:checkr _re_3431385 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3431786 = __tmp__._0;
                                _rest_3431789 = __tmp__._1?.__copy__();
                            };
                            if (_r_3431786 != null) {
                                _gotoNext = 3431847i32;
                            } else {
                                _gotoNext = 3431921i32;
                            };
                        };
                    } else if (__value__ == (3431847i32)) {
                        (@:checkr _re_3431385 ?? throw "null pointer dereference").rune = _r_3431786;
                        _t_3428685 = _rest_3431789?.__copy__();
                        @:check2 _p_3428573._push(_re_3431385);
                        bigSwitchBreak = true;
                        _gotoNext = 3428736i32;
                    } else if (__value__ == (3431921i32)) {
                        @:check2 _p_3428573._reuse(_re_3431385);
                        {
                            {
                                var __tmp__ = @:check2 _p_3428573._parseEscape(_t_3428685?.__copy__());
                                _c_3428593 = __tmp__._0;
                                _t_3428685 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3432021i32;
                            } else {
                                _gotoNext = 3432051i32;
                            };
                        };
                    } else if (__value__ == (3432021i32)) {
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
                        _gotoNext = 3432051i32;
                    } else if (__value__ == (3432051i32)) {
                        @:check2 _p_3428573._literal(_c_3428593);
                        _gotoNext = 3432070i32;
                    } else if (__value__ == (3432070i32)) {
                        _lastRepeat_3428627 = _repeat_3428709?.__copy__();
                        _gotoNext = 3428693i32;
                    } else if (__value__ == (3432095i32)) {
                        @:check2 _p_3428573._concat();
                        if (@:check2 _p_3428573._swapVerticalBar()) {
                            _gotoNext = 3432130i32;
                        } else {
                            _gotoNext = 3432195i32;
                        };
                    } else if (__value__ == (3432130i32)) {
                        _p_3428573._stack = (_p_3428573._stack.__slice__(0, ((_p_3428573._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3432195i32;
                    } else if (__value__ == (3432195i32)) {
                        @:check2 _p_3428573._alternate();
                        _n_3432211 = (_p_3428573._stack.length);
                        if (_n_3432211 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3432240i32;
                        } else {
                            _gotoNext = 3432287i32;
                        };
                    } else if (__value__ == (3432240i32)) {
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
                        _gotoNext = 3432287i32;
                    } else if (__value__ == (3432287i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3428573._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
