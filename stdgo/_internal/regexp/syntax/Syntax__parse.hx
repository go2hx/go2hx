package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3273646:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3276214:stdgo.Error = (null : stdgo.Error);
            var _after_3275162:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3275137:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3275152:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3276208:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3273626:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3276842:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3276603:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3276600:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3274829:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3273738:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3277264:stdgo.GoInt = (0 : stdgo.GoInt);
            var _ok_3275169:Bool = false;
            var _max_3275157:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3273664:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _lastRepeat_3273680:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3276438:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3276205:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3273762:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3276839:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3276609:stdgo.Error = (null : stdgo.Error);
            var _after_3274954:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3273484:stdgo.Error = (null : stdgo.Error);
            var _lit_3276125:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3273437i32;
                        } else {
                            _gotoNext = 3273618i32;
                        };
                    } else if (__value__ == (3273437i32)) {
                        {
                            _err_3273484 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3273484 != null) {
                                _gotoNext = 3273516i32;
                            } else {
                                _gotoNext = 3273543i32;
                            };
                        };
                    } else if (__value__ == (3273516i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3273484 };
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
                        _gotoNext = 3273543i32;
                    } else if (__value__ == (3273543i32)) {
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
                        _gotoNext = 3273618i32;
                    } else if (__value__ == (3273618i32)) {
                        _p_3273626._flags = _flags;
                        _p_3273626._wholeRegexp = _s?.__copy__();
                        _t_3273738 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3273746i32;
                    } else if (__value__ == (3273746i32)) {
                        if (_t_3273738 != (stdgo.Go.str())) {
                            _gotoNext = 3273758i32;
                        } else {
                            _gotoNext = 3277148i32;
                        };
                    } else if (__value__ == (3273758i32)) {
                        _repeat_3273762 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3273776i32;
                    } else if (__value__ == (3273776i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3273789i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3273738[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3273902i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3274172i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3274269i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3274365i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3274480i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3274610i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3274724i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3274806i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3275107i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3275663i32;
                                } else {
                                    _gotoNext = 3273805i32;
                                };
                            };
                        } else {
                            _gotoNext = 3277123i32;
                        };
                    } else if (__value__ == (3273805i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3273738?.__copy__());
                                _c_3273646 = __tmp__._0;
                                _t_3273738 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3273856i32;
                            } else {
                                _gotoNext = 3273886i32;
                            };
                        };
                    } else if (__value__ == (3273856i32)) {
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
                        _gotoNext = 3273886i32;
                    } else if (__value__ == (3273886i32)) {
                        @:check2 _p_3273626._literal(_c_3273646);
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3273902i32)) {
                        if ((((_p_3273626._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3273738.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3273738[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3273967i32;
                        } else {
                            _gotoNext = 3274110i32;
                        };
                    } else if (__value__ == (3273967i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3273626._parsePerlFlags(_t_3273738?.__copy__());
                                _t_3273738 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3274063i32;
                            } else {
                                _gotoNext = 3274096i32;
                            };
                        };
                    } else if (__value__ == (3274063i32)) {
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
                        _gotoNext = 3274096i32;
                    } else if (__value__ == (3274096i32)) {
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274110i32)) {
                        _p_3273626._numCap++;
                        @:check2 _p_3273626._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3273626._numCap;
                        _t_3273738 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274172i32)) {
                        {
                            _err = @:check2 _p_3273626._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3274227i32;
                            } else {
                                _gotoNext = 3274257i32;
                            };
                        };
                    } else if (__value__ == (3274227i32)) {
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
                        _gotoNext = 3274257i32;
                    } else if (__value__ == (3274257i32)) {
                        _t_3273738 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274269i32)) {
                        {
                            _err = @:check2 _p_3273626._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3274323i32;
                            } else {
                                _gotoNext = 3274353i32;
                            };
                        };
                    } else if (__value__ == (3274323i32)) {
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
                        _gotoNext = 3274353i32;
                    } else if (__value__ == (3274353i32)) {
                        _t_3273738 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274365i32)) {
                        if ((_p_3273626._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3274402i32;
                        } else {
                            _gotoNext = 3274436i32;
                        };
                    } else if (__value__ == (3274402i32)) {
                        @:check2 _p_3273626._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3274468i32;
                    } else if (__value__ == (3274436i32)) {
                        _gotoNext = 3274436i32;
                        @:check2 _p_3273626._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3274468i32;
                    } else if (__value__ == (3274468i32)) {
                        _t_3273738 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274480i32)) {
                        if ((_p_3273626._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3274517i32;
                        } else {
                            _gotoNext = 3274568i32;
                        };
                    } else if (__value__ == (3274517i32)) {
                        {
                            final __t__ = @:check2 _p_3273626._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3274598i32;
                    } else if (__value__ == (3274568i32)) {
                        _gotoNext = 3274568i32;
                        @:check2 _p_3273626._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3274598i32;
                    } else if (__value__ == (3274598i32)) {
                        _t_3273738 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274610i32)) {
                        if ((_p_3273626._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3274645i32;
                        } else {
                            _gotoNext = 3274677i32;
                        };
                    } else if (__value__ == (3274645i32)) {
                        @:check2 _p_3273626._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3274712i32;
                    } else if (__value__ == (3274677i32)) {
                        _gotoNext = 3274677i32;
                        @:check2 _p_3273626._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3274712i32;
                    } else if (__value__ == (3274712i32)) {
                        _t_3273738 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274724i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3273626._parseClass(_t_3273738?.__copy__());
                                _t_3273738 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3274777i32;
                            } else {
                                _gotoNext = 3277123i32;
                            };
                        };
                    } else if (__value__ == (3274777i32)) {
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
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3274806i32)) {
                        _before_3274829 = _t_3273738?.__copy__();
                        _gotoNext = 3274844i32;
                    } else if (__value__ == (3274844i32)) {
                        {
                            final __value__ = _t_3273738[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3274861i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3274890i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3274919i32;
                            } else {
                                _gotoNext = 3274954i32;
                            };
                        };
                    } else if (__value__ == (3274861i32)) {
                        _op_3273664 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3274954i32;
                    } else if (__value__ == (3274890i32)) {
                        _op_3273664 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3274954i32;
                    } else if (__value__ == (3274919i32)) {
                        _op_3273664 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3274954i32;
                    } else if (__value__ == (3274954i32)) {
                        _after_3274954 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3273626._repeat(_op_3273664, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3274829?.__copy__(), _after_3274954?.__copy__(), _lastRepeat_3273680?.__copy__());
                                _after_3274954 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3275046i32;
                            } else {
                                _gotoNext = 3275076i32;
                            };
                        };
                    } else if (__value__ == (3275046i32)) {
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
                        _gotoNext = 3275076i32;
                    } else if (__value__ == (3275076i32)) {
                        _repeat_3273762 = _before_3274829?.__copy__();
                        _t_3273738 = _after_3274954?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3275107i32)) {
                        _op_3273664 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3275137 = _t_3273738?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3273626._parseRepeat(_t_3273738?.__copy__());
                            _min_3275152 = __tmp__._0;
                            _max_3275157 = __tmp__._1;
                            _after_3275162 = __tmp__._2?.__copy__();
                            _ok_3275169 = __tmp__._3;
                        };
                        if (!_ok_3275169) {
                            _gotoNext = 3275202i32;
                        } else {
                            _gotoNext = 3275310i32;
                        };
                    } else if (__value__ == (3275202i32)) {
                        @:check2 _p_3273626._literal((123 : stdgo.GoInt32));
                        _t_3273738 = (_t_3273738.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3275310i32)) {
                        if (((((_min_3275152 < (0 : stdgo.GoInt) : Bool) || (_min_3275152 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3275157 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3275157 >= (0 : stdgo.GoInt) : Bool) && (_min_3275152 > _max_3275157 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3275374i32;
                        } else {
                            _gotoNext = 3275524i32;
                        };
                    } else if (__value__ == (3275374i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3275137.__slice__(0, ((_before_3275137.length) - (_after_3275162.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3275524i32;
                    } else if (__value__ == (3275524i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3273626._repeat(_op_3273664, _min_3275152, _max_3275157, _before_3275137?.__copy__(), _after_3275162?.__copy__(), _lastRepeat_3273680?.__copy__());
                                _after_3275162 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3275602i32;
                            } else {
                                _gotoNext = 3275632i32;
                            };
                        };
                    } else if (__value__ == (3275602i32)) {
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
                        _gotoNext = 3275632i32;
                    } else if (__value__ == (3275632i32)) {
                        _repeat_3273762 = _before_3275137?.__copy__();
                        _t_3273738 = _after_3275162?.__copy__();
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3275663i32)) {
                        if ((((_p_3273626._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3273738.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3275714i32;
                        } else {
                            _gotoNext = 3276438i32;
                        };
                    } else if (__value__ == (3275714i32)) {
                        _gotoNext = 3275720i32;
                    } else if (__value__ == (3275720i32)) {
                        {
                            final __value__ = _t_3273738[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3275738i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3275811i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3275887i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3275965i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3276060i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3276356i32;
                            } else {
                                _gotoNext = 3276438i32;
                            };
                        };
                    } else if (__value__ == (3275738i32)) {
                        @:check2 _p_3273626._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3273738 = (_t_3273738.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3275811i32)) {
                        @:check2 _p_3273626._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3273738 = (_t_3273738.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3275887i32)) {
                        @:check2 _p_3273626._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3273738 = (_t_3273738.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3275965i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3273738.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3276438i32;
                    } else if (__value__ == (3276060i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3273738.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3276125 = __tmp__._0?.__copy__();
                            _t_3273738 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3276183i32;
                    } else if (__value__ == (3276183i32)) {
                        if (_lit_3276125 != (stdgo.Go.str())) {
                            _gotoNext = 3276197i32;
                        } else {
                            _gotoNext = 3276336i32;
                        };
                    } else if (__value__ == (3276197i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3276125?.__copy__());
                            _c_3276205 = __tmp__._0;
                            _rest_3276208 = __tmp__._1?.__copy__();
                            _err_3276214 = __tmp__._2;
                        };
                        if (_err_3276214 != null) {
                            _gotoNext = 3276255i32;
                        } else {
                            _gotoNext = 3276294i32;
                        };
                    } else if (__value__ == (3276255i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3276214 };
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
                        _gotoNext = 3276294i32;
                    } else if (__value__ == (3276294i32)) {
                        @:check2 _p_3273626._literal(_c_3276205);
                        _lit_3276125 = _rest_3276208?.__copy__();
                        _gotoNext = 3276183i32;
                    } else if (__value__ == (3276336i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3276356i32)) {
                        @:check2 _p_3273626._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3273738 = (_t_3273738.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3276438i32)) {
                        _re_3276438 = @:check2 _p_3273626._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3276438 ?? throw "null pointer dereference").flags = _p_3273626._flags;
                        if ((((_t_3273738.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3273738[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3273738[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3276594i32;
                        } else {
                            _gotoNext = 3276836i32;
                        };
                    } else if (__value__ == (3276594i32)) {
                        {
                            var __tmp__ = @:check2 _p_3273626._parseUnicodeClass(_t_3273738?.__copy__(), ((@:checkr _re_3276438 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3276600 = __tmp__._0;
                            _rest_3276603 = __tmp__._1?.__copy__();
                            _err_3276609 = __tmp__._2;
                        };
                        if (_err_3276609 != null) {
                            _gotoNext = 3276671i32;
                        } else {
                            _gotoNext = 3276704i32;
                        };
                    } else if (__value__ == (3276671i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3276609 };
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
                        _gotoNext = 3276704i32;
                    } else if (__value__ == (3276704i32)) {
                        if (_r_3276600 != null) {
                            _gotoNext = 3276716i32;
                        } else {
                            _gotoNext = 3276836i32;
                        };
                    } else if (__value__ == (3276716i32)) {
                        (@:checkr _re_3276438 ?? throw "null pointer dereference").rune = _r_3276600;
                        _t_3273738 = _rest_3276603?.__copy__();
                        @:check2 _p_3273626._push(_re_3276438);
                        bigSwitchBreak = true;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3276836i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3273626._parsePerlClassEscape(_t_3273738?.__copy__(), ((@:checkr _re_3276438 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3276839 = __tmp__._0;
                                _rest_3276842 = __tmp__._1?.__copy__();
                            };
                            if (_r_3276839 != null) {
                                _gotoNext = 3276900i32;
                            } else {
                                _gotoNext = 3276974i32;
                            };
                        };
                    } else if (__value__ == (3276900i32)) {
                        (@:checkr _re_3276438 ?? throw "null pointer dereference").rune = _r_3276839;
                        _t_3273738 = _rest_3276842?.__copy__();
                        @:check2 _p_3273626._push(_re_3276438);
                        bigSwitchBreak = true;
                        _gotoNext = 3273789i32;
                    } else if (__value__ == (3276974i32)) {
                        @:check2 _p_3273626._reuse(_re_3276438);
                        {
                            {
                                var __tmp__ = @:check2 _p_3273626._parseEscape(_t_3273738?.__copy__());
                                _c_3273646 = __tmp__._0;
                                _t_3273738 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3277074i32;
                            } else {
                                _gotoNext = 3277104i32;
                            };
                        };
                    } else if (__value__ == (3277074i32)) {
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
                        _gotoNext = 3277104i32;
                    } else if (__value__ == (3277104i32)) {
                        @:check2 _p_3273626._literal(_c_3273646);
                        _gotoNext = 3277123i32;
                    } else if (__value__ == (3277123i32)) {
                        _lastRepeat_3273680 = _repeat_3273762?.__copy__();
                        _gotoNext = 3273746i32;
                    } else if (__value__ == (3277148i32)) {
                        @:check2 _p_3273626._concat();
                        if (@:check2 _p_3273626._swapVerticalBar()) {
                            _gotoNext = 3277183i32;
                        } else {
                            _gotoNext = 3277248i32;
                        };
                    } else if (__value__ == (3277183i32)) {
                        _p_3273626._stack = (_p_3273626._stack.__slice__(0, ((_p_3273626._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3277248i32;
                    } else if (__value__ == (3277248i32)) {
                        @:check2 _p_3273626._alternate();
                        _n_3277264 = (_p_3273626._stack.length);
                        if (_n_3277264 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3277293i32;
                        } else {
                            _gotoNext = 3277340i32;
                        };
                    } else if (__value__ == (3277293i32)) {
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
                        _gotoNext = 3277340i32;
                    } else if (__value__ == (3277340i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3273626._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
