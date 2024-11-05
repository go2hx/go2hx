package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3418784:stdgo.Error = (null : stdgo.Error);
            var _r_3418775:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3417344:Bool = false;
            var _before_3417004:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3415855:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3418383:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3418778:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3418300:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3417332:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3419014:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3418613:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3418389:stdgo.Error = (null : stdgo.Error);
            var _before_3417312:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3415839:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3419439:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3417327:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3415913:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3415801:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _c_3418380:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3419017:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3417129:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3415937:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3415659:stdgo.Error = (null : stdgo.Error);
            var _after_3417337:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3415821:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
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
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3415612i32;
                        } else {
                            _gotoNext = 3415793i32;
                        };
                    } else if (__value__ == (3415612i32)) {
                        {
                            _err_3415659 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3415659 != null) {
                                _gotoNext = 3415691i32;
                            } else {
                                _gotoNext = 3415718i32;
                            };
                        };
                    } else if (__value__ == (3415691i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3415659 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3415718i32;
                    } else if (__value__ == (3415718i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3415793i32;
                    } else if (__value__ == (3415793i32)) {
                        _p_3415801._flags = _flags;
                        _p_3415801._wholeRegexp = _s?.__copy__();
                        _t_3415913 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3415921i32;
                    } else if (__value__ == (3415921i32)) {
                        if (_t_3415913 != (stdgo.Go.str())) {
                            _gotoNext = 3415933i32;
                        } else {
                            _gotoNext = 3419323i32;
                        };
                    } else if (__value__ == (3415933i32)) {
                        _repeat_3415937 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3415951i32;
                    } else if (__value__ == (3415951i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3415964i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3415913[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416077i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416347i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416444i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416540i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416655i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416785i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416899i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3416981i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417282i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417838i32;
                                } else {
                                    _gotoNext = 3415980i32;
                                };
                            };
                        } else {
                            _gotoNext = 3419298i32;
                        };
                    } else if (__value__ == (3415980i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3415913?.__copy__());
                                _c_3415821 = __tmp__._0;
                                _t_3415913 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3416031i32;
                            } else {
                                _gotoNext = 3416061i32;
                            };
                        };
                    } else if (__value__ == (3416031i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416061i32;
                    } else if (__value__ == (3416061i32)) {
                        _p_3415801._literal(_c_3415821);
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416077i32)) {
                        if ((((_p_3415801._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3415913.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3415913[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3416142i32;
                        } else {
                            _gotoNext = 3416285i32;
                        };
                    } else if (__value__ == (3416142i32)) {
                        {
                            {
                                var __tmp__ = _p_3415801._parsePerlFlags(_t_3415913?.__copy__());
                                _t_3415913 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3416238i32;
                            } else {
                                _gotoNext = 3416271i32;
                            };
                        };
                    } else if (__value__ == (3416238i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416271i32;
                    } else if (__value__ == (3416271i32)) {
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416285i32)) {
                        _p_3415801._numCap++;
                        _p_3415801._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3415801._numCap;
                        _t_3415913 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416347i32)) {
                        {
                            _err = _p_3415801._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3416402i32;
                            } else {
                                _gotoNext = 3416432i32;
                            };
                        };
                    } else if (__value__ == (3416402i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416432i32;
                    } else if (__value__ == (3416432i32)) {
                        _t_3415913 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416444i32)) {
                        {
                            _err = _p_3415801._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3416498i32;
                            } else {
                                _gotoNext = 3416528i32;
                            };
                        };
                    } else if (__value__ == (3416498i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416528i32;
                    } else if (__value__ == (3416528i32)) {
                        _t_3415913 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416540i32)) {
                        if ((_p_3415801._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3416577i32;
                        } else {
                            _gotoNext = 3416611i32;
                        };
                    } else if (__value__ == (3416577i32)) {
                        _p_3415801._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3416643i32;
                    } else if (__value__ == (3416611i32)) {
                        _p_3415801._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3416643i32;
                    } else if (__value__ == (3416643i32)) {
                        _t_3415913 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416655i32)) {
                        if ((_p_3415801._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3416692i32;
                        } else {
                            _gotoNext = 3416743i32;
                        };
                    } else if (__value__ == (3416692i32)) {
                        _p_3415801._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3415801._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3416773i32;
                    } else if (__value__ == (3416743i32)) {
                        _p_3415801._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3416773i32;
                    } else if (__value__ == (3416773i32)) {
                        _t_3415913 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416785i32)) {
                        if ((_p_3415801._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3416820i32;
                        } else {
                            _gotoNext = 3416852i32;
                        };
                    } else if (__value__ == (3416820i32)) {
                        _p_3415801._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3416887i32;
                    } else if (__value__ == (3416852i32)) {
                        _p_3415801._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3416887i32;
                    } else if (__value__ == (3416887i32)) {
                        _t_3415913 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416899i32)) {
                        {
                            {
                                var __tmp__ = _p_3415801._parseClass(_t_3415913?.__copy__());
                                _t_3415913 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3416952i32;
                            } else {
                                _gotoNext = 3419298i32;
                            };
                        };
                    } else if (__value__ == (3416952i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3416981i32)) {
                        _before_3417004 = _t_3415913?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3417019i32;
                    } else if (__value__ == (3417019i32)) {
                        {
                            final __value__ = _t_3415913[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3417036i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3417065i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3417094i32;
                            } else {
                                _gotoNext = 3417129i32;
                            };
                        };
                    } else if (__value__ == (3417036i32)) {
                        _op_3415839 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3417129i32;
                    } else if (__value__ == (3417065i32)) {
                        _op_3415839 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3417129i32;
                    } else if (__value__ == (3417094i32)) {
                        _op_3415839 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3417129i32;
                    } else if (__value__ == (3417129i32)) {
                        _after_3417129 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3415801._repeat(_op_3415839, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3417004?.__copy__(), _after_3417129?.__copy__(), _lastRepeat_3415855?.__copy__());
                                _after_3417129 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3417221i32;
                            } else {
                                _gotoNext = 3417251i32;
                            };
                        };
                    } else if (__value__ == (3417221i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417251i32;
                    } else if (__value__ == (3417251i32)) {
                        _repeat_3415937 = _before_3417004?.__copy__();
                        _t_3415913 = _after_3417129?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3417282i32)) {
                        _op_3415839 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3417312 = _t_3415913?.__copy__();
                        {
                            var __tmp__ = _p_3415801._parseRepeat(_t_3415913?.__copy__());
                            _min_3417327 = __tmp__._0;
                            _max_3417332 = __tmp__._1;
                            _after_3417337 = __tmp__._2?.__copy__();
                            _ok_3417344 = __tmp__._3;
                        };
                        if (!_ok_3417344) {
                            _gotoNext = 3417377i32;
                        } else {
                            _gotoNext = 3417485i32;
                        };
                    } else if (__value__ == (3417377i32)) {
                        _p_3415801._literal((123 : stdgo.GoInt32));
                        _t_3415913 = (_t_3415913.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3417485i32)) {
                        if (((((_min_3417327 < (0 : stdgo.GoInt) : Bool) || (_min_3417327 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3417332 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3417332 >= (0 : stdgo.GoInt) : Bool) && (_min_3417327 > _max_3417332 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3417549i32;
                        } else {
                            _gotoNext = 3417699i32;
                        };
                    } else if (__value__ == (3417549i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3417312.__slice__(0, ((_before_3417312.length) - (_after_3417337.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417699i32;
                    } else if (__value__ == (3417699i32)) {
                        {
                            {
                                var __tmp__ = _p_3415801._repeat(_op_3415839, _min_3417327, _max_3417332, _before_3417312?.__copy__(), _after_3417337?.__copy__(), _lastRepeat_3415855?.__copy__());
                                _after_3417337 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3417777i32;
                            } else {
                                _gotoNext = 3417807i32;
                            };
                        };
                    } else if (__value__ == (3417777i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417807i32;
                    } else if (__value__ == (3417807i32)) {
                        _repeat_3415937 = _before_3417312?.__copy__();
                        _t_3415913 = _after_3417337?.__copy__();
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3417838i32)) {
                        if ((((_p_3415801._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3415913.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3417889i32;
                        } else {
                            _gotoNext = 3418613i32;
                        };
                    } else if (__value__ == (3417889i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3417895i32;
                    } else if (__value__ == (3417895i32)) {
                        {
                            final __value__ = _t_3415913[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3417913i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3417986i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3418062i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3418140i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3418235i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3418531i32;
                            } else {
                                _gotoNext = 3418613i32;
                            };
                        };
                    } else if (__value__ == (3417913i32)) {
                        _p_3415801._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3415913 = (_t_3415913.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3417986i32)) {
                        _p_3415801._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3415913 = (_t_3415913.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3418062i32)) {
                        _p_3415801._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3415913 = (_t_3415913.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3418140i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3415913.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418613i32;
                    } else if (__value__ == (3418235i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3415913.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3418300 = __tmp__._0?.__copy__();
                            _t_3415913 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3418358i32;
                    } else if (__value__ == (3418358i32)) {
                        if (_lit_3418300 != (stdgo.Go.str())) {
                            _gotoNext = 3418372i32;
                        } else {
                            _gotoNext = 3418511i32;
                        };
                    } else if (__value__ == (3418372i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3418300?.__copy__());
                            _c_3418380 = __tmp__._0;
                            _rest_3418383 = __tmp__._1?.__copy__();
                            _err_3418389 = __tmp__._2;
                        };
                        if (_err_3418389 != null) {
                            _gotoNext = 3418430i32;
                        } else {
                            _gotoNext = 3418469i32;
                        };
                    } else if (__value__ == (3418430i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3418389 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418469i32;
                    } else if (__value__ == (3418469i32)) {
                        _p_3415801._literal(_c_3418380);
                        _lit_3418300 = _rest_3418383?.__copy__();
                        _gotoNext = 3418358i32;
                    } else if (__value__ == (3418511i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3418531i32)) {
                        _p_3415801._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3415913 = (_t_3415913.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3418613i32)) {
                        _re_3418613 = _p_3415801._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3418613.flags = _p_3415801._flags;
                        if ((((_t_3415913.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3415913[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3415913[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3418769i32;
                        } else {
                            _gotoNext = 3419011i32;
                        };
                    } else if (__value__ == (3418769i32)) {
                        {
                            var __tmp__ = _p_3415801._parseUnicodeClass(_t_3415913?.__copy__(), (_re_3418613.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3418775 = __tmp__._0;
                            _rest_3418778 = __tmp__._1?.__copy__();
                            _err_3418784 = __tmp__._2;
                        };
                        if (_err_3418784 != null) {
                            _gotoNext = 3418846i32;
                        } else {
                            _gotoNext = 3418879i32;
                        };
                    } else if (__value__ == (3418846i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3418784 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418879i32;
                    } else if (__value__ == (3418879i32)) {
                        if (_r_3418775 != null) {
                            _gotoNext = 3418891i32;
                        } else {
                            _gotoNext = 3419011i32;
                        };
                    } else if (__value__ == (3418891i32)) {
                        _re_3418613.rune = _r_3418775;
                        _t_3415913 = _rest_3418778?.__copy__();
                        _p_3415801._push(_re_3418613);
                        bigSwitchBreak = true;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3419011i32)) {
                        {
                            {
                                var __tmp__ = _p_3415801._parsePerlClassEscape(_t_3415913?.__copy__(), (_re_3418613.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3419014 = __tmp__._0;
                                _rest_3419017 = __tmp__._1?.__copy__();
                            };
                            if (_r_3419014 != null) {
                                _gotoNext = 3419075i32;
                            } else {
                                _gotoNext = 3419149i32;
                            };
                        };
                    } else if (__value__ == (3419075i32)) {
                        _re_3418613.rune = _r_3419014;
                        _t_3415913 = _rest_3419017?.__copy__();
                        _p_3415801._push(_re_3418613);
                        bigSwitchBreak = true;
                        _gotoNext = 3415964i32;
                    } else if (__value__ == (3419149i32)) {
                        _p_3415801._reuse(_re_3418613);
                        {
                            {
                                var __tmp__ = _p_3415801._parseEscape(_t_3415913?.__copy__());
                                _c_3415821 = __tmp__._0;
                                _t_3415913 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3419249i32;
                            } else {
                                _gotoNext = 3419279i32;
                            };
                        };
                    } else if (__value__ == (3419249i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419279i32;
                    } else if (__value__ == (3419279i32)) {
                        _p_3415801._literal(_c_3415821);
                        _gotoNext = 3419298i32;
                    } else if (__value__ == (3419298i32)) {
                        _lastRepeat_3415855 = _repeat_3415937?.__copy__();
                        _gotoNext = 3415921i32;
                    } else if (__value__ == (3419323i32)) {
                        _p_3415801._concat();
                        if (_p_3415801._swapVerticalBar()) {
                            _gotoNext = 3419358i32;
                        } else {
                            _gotoNext = 3419423i32;
                        };
                    } else if (__value__ == (3419358i32)) {
                        _p_3415801._stack = (_p_3415801._stack.__slice__(0, ((_p_3415801._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3419423i32;
                    } else if (__value__ == (3419423i32)) {
                        _p_3415801._alternate();
                        _n_3419439 = (_p_3415801._stack.length);
                        if (_n_3419439 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3419468i32;
                        } else {
                            _gotoNext = 3419515i32;
                        };
                    } else if (__value__ == (3419468i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419515i32;
                    } else if (__value__ == (3419515i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3415801._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
