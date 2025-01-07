package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _op_3117351:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3120951:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3120529:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3118641:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3118824:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3120290:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3117171:stdgo.Error = (null : stdgo.Error);
            var _rest_3119895:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3118856:Bool = false;
            var _max_3118844:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3119901:stdgo.Error = (null : stdgo.Error);
            var _r_3120526:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3120296:stdgo.Error = (null : stdgo.Error);
            var _re_3120125:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lastRepeat_3117367:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3120287:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3119812:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3118839:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3118516:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3117425:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3117313:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _c_3119892:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _c_3117333:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3118849:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3117449:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3117124i32;
                        } else {
                            _gotoNext = 3117305i32;
                        };
                    } else if (__value__ == (3117124i32)) {
                        {
                            _err_3117171 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3117171 != null) {
                                _gotoNext = 3117203i32;
                            } else {
                                _gotoNext = 3117230i32;
                            };
                        };
                    } else if (__value__ == (3117203i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3117171 };
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
                        _gotoNext = 3117230i32;
                    } else if (__value__ == (3117230i32)) {
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
                        _gotoNext = 3117305i32;
                    } else if (__value__ == (3117305i32)) {
                        _p_3117313._flags = _flags;
                        _p_3117313._wholeRegexp = _s?.__copy__();
                        _t_3117425 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3117433i32;
                    } else if (__value__ == (3117433i32)) {
                        if (_t_3117425 != (stdgo.Go.str())) {
                            _gotoNext = 3117445i32;
                        } else {
                            _gotoNext = 3120835i32;
                        };
                    } else if (__value__ == (3117445i32)) {
                        _repeat_3117449 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3117463i32;
                    } else if (__value__ == (3117463i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3117476i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3117425[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3117589i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3117859i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3117956i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3118052i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3118167i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3118297i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3118411i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3118493i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3118794i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119350i32;
                                } else {
                                    _gotoNext = 3117492i32;
                                };
                            };
                        } else {
                            _gotoNext = 3120810i32;
                        };
                    } else if (__value__ == (3117492i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3117425?.__copy__());
                                _c_3117333 = __tmp__._0;
                                _t_3117425 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3117543i32;
                            } else {
                                _gotoNext = 3117573i32;
                            };
                        };
                    } else if (__value__ == (3117543i32)) {
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
                        _gotoNext = 3117573i32;
                    } else if (__value__ == (3117573i32)) {
                        @:check2 _p_3117313._literal(_c_3117333);
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3117589i32)) {
                        if ((((_p_3117313._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3117425.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3117425[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3117654i32;
                        } else {
                            _gotoNext = 3117797i32;
                        };
                    } else if (__value__ == (3117654i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3117313._parsePerlFlags(_t_3117425?.__copy__());
                                _t_3117425 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3117750i32;
                            } else {
                                _gotoNext = 3117783i32;
                            };
                        };
                    } else if (__value__ == (3117750i32)) {
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
                        _gotoNext = 3117783i32;
                    } else if (__value__ == (3117783i32)) {
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3117797i32)) {
                        _p_3117313._numCap++;
                        @:check2 _p_3117313._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3117313._numCap;
                        _t_3117425 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3117859i32)) {
                        {
                            _err = @:check2 _p_3117313._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3117914i32;
                            } else {
                                _gotoNext = 3117944i32;
                            };
                        };
                    } else if (__value__ == (3117914i32)) {
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
                        _gotoNext = 3117944i32;
                    } else if (__value__ == (3117944i32)) {
                        _t_3117425 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3117956i32)) {
                        {
                            _err = @:check2 _p_3117313._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3118010i32;
                            } else {
                                _gotoNext = 3118040i32;
                            };
                        };
                    } else if (__value__ == (3118010i32)) {
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
                        _gotoNext = 3118040i32;
                    } else if (__value__ == (3118040i32)) {
                        _t_3117425 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3118052i32)) {
                        if ((_p_3117313._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3118089i32;
                        } else {
                            _gotoNext = 3118123i32;
                        };
                    } else if (__value__ == (3118089i32)) {
                        @:check2 _p_3117313._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3118155i32;
                    } else if (__value__ == (3118123i32)) {
                        _gotoNext = 3118123i32;
                        @:check2 _p_3117313._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3118155i32;
                    } else if (__value__ == (3118155i32)) {
                        _t_3117425 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3118167i32)) {
                        if ((_p_3117313._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3118204i32;
                        } else {
                            _gotoNext = 3118255i32;
                        };
                    } else if (__value__ == (3118204i32)) {
                        {
                            final __t__ = @:check2 _p_3117313._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3118285i32;
                    } else if (__value__ == (3118255i32)) {
                        _gotoNext = 3118255i32;
                        @:check2 _p_3117313._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3118285i32;
                    } else if (__value__ == (3118285i32)) {
                        _t_3117425 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3118297i32)) {
                        if ((_p_3117313._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3118332i32;
                        } else {
                            _gotoNext = 3118364i32;
                        };
                    } else if (__value__ == (3118332i32)) {
                        @:check2 _p_3117313._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3118399i32;
                    } else if (__value__ == (3118364i32)) {
                        _gotoNext = 3118364i32;
                        @:check2 _p_3117313._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3118399i32;
                    } else if (__value__ == (3118399i32)) {
                        _t_3117425 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3118411i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3117313._parseClass(_t_3117425?.__copy__());
                                _t_3117425 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3118464i32;
                            } else {
                                _gotoNext = 3120810i32;
                            };
                        };
                    } else if (__value__ == (3118464i32)) {
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
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3118493i32)) {
                        _before_3118516 = _t_3117425?.__copy__();
                        _gotoNext = 3118531i32;
                    } else if (__value__ == (3118531i32)) {
                        {
                            final __value__ = _t_3117425[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3118548i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3118577i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3118606i32;
                            } else {
                                _gotoNext = 3118641i32;
                            };
                        };
                    } else if (__value__ == (3118548i32)) {
                        _op_3117351 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3118641i32;
                    } else if (__value__ == (3118577i32)) {
                        _op_3117351 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3118641i32;
                    } else if (__value__ == (3118606i32)) {
                        _op_3117351 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3118641i32;
                    } else if (__value__ == (3118641i32)) {
                        _after_3118641 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3117313._repeat(_op_3117351, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3118516?.__copy__(), _after_3118641?.__copy__(), _lastRepeat_3117367?.__copy__());
                                _after_3118641 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3118733i32;
                            } else {
                                _gotoNext = 3118763i32;
                            };
                        };
                    } else if (__value__ == (3118733i32)) {
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
                        _gotoNext = 3118763i32;
                    } else if (__value__ == (3118763i32)) {
                        _repeat_3117449 = _before_3118516?.__copy__();
                        _t_3117425 = _after_3118641?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3118794i32)) {
                        _op_3117351 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3118824 = _t_3117425?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3117313._parseRepeat(_t_3117425?.__copy__());
                            _min_3118839 = __tmp__._0;
                            _max_3118844 = __tmp__._1;
                            _after_3118849 = __tmp__._2?.__copy__();
                            _ok_3118856 = __tmp__._3;
                        };
                        if (!_ok_3118856) {
                            _gotoNext = 3118889i32;
                        } else {
                            _gotoNext = 3118997i32;
                        };
                    } else if (__value__ == (3118889i32)) {
                        @:check2 _p_3117313._literal((123 : stdgo.GoInt32));
                        _t_3117425 = (_t_3117425.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3118997i32)) {
                        if (((((_min_3118839 < (0 : stdgo.GoInt) : Bool) || (_min_3118839 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3118844 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3118844 >= (0 : stdgo.GoInt) : Bool) && (_min_3118839 > _max_3118844 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3119061i32;
                        } else {
                            _gotoNext = 3119211i32;
                        };
                    } else if (__value__ == (3119061i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3118824.__slice__(0, ((_before_3118824.length) - (_after_3118849.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3119211i32;
                    } else if (__value__ == (3119211i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3117313._repeat(_op_3117351, _min_3118839, _max_3118844, _before_3118824?.__copy__(), _after_3118849?.__copy__(), _lastRepeat_3117367?.__copy__());
                                _after_3118849 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3119289i32;
                            } else {
                                _gotoNext = 3119319i32;
                            };
                        };
                    } else if (__value__ == (3119289i32)) {
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
                        _gotoNext = 3119319i32;
                    } else if (__value__ == (3119319i32)) {
                        _repeat_3117449 = _before_3118824?.__copy__();
                        _t_3117425 = _after_3118849?.__copy__();
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3119350i32)) {
                        if ((((_p_3117313._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3117425.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3119401i32;
                        } else {
                            _gotoNext = 3120125i32;
                        };
                    } else if (__value__ == (3119401i32)) {
                        _gotoNext = 3119407i32;
                    } else if (__value__ == (3119407i32)) {
                        {
                            final __value__ = _t_3117425[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3119425i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3119498i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3119574i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3119652i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3119747i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3120043i32;
                            } else {
                                _gotoNext = 3120125i32;
                            };
                        };
                    } else if (__value__ == (3119425i32)) {
                        @:check2 _p_3117313._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3117425 = (_t_3117425.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3119498i32)) {
                        @:check2 _p_3117313._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3117425 = (_t_3117425.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3119574i32)) {
                        @:check2 _p_3117313._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3117425 = (_t_3117425.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3119652i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3117425.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3120125i32;
                    } else if (__value__ == (3119747i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3117425.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3119812 = __tmp__._0?.__copy__();
                            _t_3117425 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3119870i32;
                    } else if (__value__ == (3119870i32)) {
                        if (_lit_3119812 != (stdgo.Go.str())) {
                            _gotoNext = 3119884i32;
                        } else {
                            _gotoNext = 3120023i32;
                        };
                    } else if (__value__ == (3119884i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3119812?.__copy__());
                            _c_3119892 = __tmp__._0;
                            _rest_3119895 = __tmp__._1?.__copy__();
                            _err_3119901 = __tmp__._2;
                        };
                        if (_err_3119901 != null) {
                            _gotoNext = 3119942i32;
                        } else {
                            _gotoNext = 3119981i32;
                        };
                    } else if (__value__ == (3119942i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3119901 };
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
                        _gotoNext = 3119981i32;
                    } else if (__value__ == (3119981i32)) {
                        @:check2 _p_3117313._literal(_c_3119892);
                        _lit_3119812 = _rest_3119895?.__copy__();
                        _gotoNext = 3119870i32;
                    } else if (__value__ == (3120023i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3120043i32)) {
                        @:check2 _p_3117313._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3117425 = (_t_3117425.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3120125i32)) {
                        _re_3120125 = @:check2 _p_3117313._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3120125 ?? throw "null pointer dereference").flags = _p_3117313._flags;
                        if ((((_t_3117425.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3117425[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3117425[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3120281i32;
                        } else {
                            _gotoNext = 3120523i32;
                        };
                    } else if (__value__ == (3120281i32)) {
                        {
                            var __tmp__ = @:check2 _p_3117313._parseUnicodeClass(_t_3117425?.__copy__(), ((@:checkr _re_3120125 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3120287 = __tmp__._0;
                            _rest_3120290 = __tmp__._1?.__copy__();
                            _err_3120296 = __tmp__._2;
                        };
                        if (_err_3120296 != null) {
                            _gotoNext = 3120358i32;
                        } else {
                            _gotoNext = 3120391i32;
                        };
                    } else if (__value__ == (3120358i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3120296 };
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
                        _gotoNext = 3120391i32;
                    } else if (__value__ == (3120391i32)) {
                        if (_r_3120287 != null) {
                            _gotoNext = 3120403i32;
                        } else {
                            _gotoNext = 3120523i32;
                        };
                    } else if (__value__ == (3120403i32)) {
                        (@:checkr _re_3120125 ?? throw "null pointer dereference").rune = _r_3120287;
                        _t_3117425 = _rest_3120290?.__copy__();
                        @:check2 _p_3117313._push(_re_3120125);
                        bigSwitchBreak = true;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3120523i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3117313._parsePerlClassEscape(_t_3117425?.__copy__(), ((@:checkr _re_3120125 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3120526 = __tmp__._0;
                                _rest_3120529 = __tmp__._1?.__copy__();
                            };
                            if (_r_3120526 != null) {
                                _gotoNext = 3120587i32;
                            } else {
                                _gotoNext = 3120661i32;
                            };
                        };
                    } else if (__value__ == (3120587i32)) {
                        (@:checkr _re_3120125 ?? throw "null pointer dereference").rune = _r_3120526;
                        _t_3117425 = _rest_3120529?.__copy__();
                        @:check2 _p_3117313._push(_re_3120125);
                        bigSwitchBreak = true;
                        _gotoNext = 3117476i32;
                    } else if (__value__ == (3120661i32)) {
                        @:check2 _p_3117313._reuse(_re_3120125);
                        {
                            {
                                var __tmp__ = @:check2 _p_3117313._parseEscape(_t_3117425?.__copy__());
                                _c_3117333 = __tmp__._0;
                                _t_3117425 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3120761i32;
                            } else {
                                _gotoNext = 3120791i32;
                            };
                        };
                    } else if (__value__ == (3120761i32)) {
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
                        _gotoNext = 3120791i32;
                    } else if (__value__ == (3120791i32)) {
                        @:check2 _p_3117313._literal(_c_3117333);
                        _gotoNext = 3120810i32;
                    } else if (__value__ == (3120810i32)) {
                        _lastRepeat_3117367 = _repeat_3117449?.__copy__();
                        _gotoNext = 3117433i32;
                    } else if (__value__ == (3120835i32)) {
                        @:check2 _p_3117313._concat();
                        if (@:check2 _p_3117313._swapVerticalBar()) {
                            _gotoNext = 3120870i32;
                        } else {
                            _gotoNext = 3120935i32;
                        };
                    } else if (__value__ == (3120870i32)) {
                        _p_3117313._stack = (_p_3117313._stack.__slice__(0, ((_p_3117313._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3120935i32;
                    } else if (__value__ == (3120935i32)) {
                        @:check2 _p_3117313._alternate();
                        _n_3120951 = (_p_3117313._stack.length);
                        if (_n_3120951 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3120980i32;
                        } else {
                            _gotoNext = 3121027i32;
                        };
                    } else if (__value__ == (3120980i32)) {
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
                        _gotoNext = 3121027i32;
                    } else if (__value__ == (3121027i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3117313._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
