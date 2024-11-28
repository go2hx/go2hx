package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3294744:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3294110:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3294027:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3293059:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3292856:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3293064:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3294107:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lastRepeat_3291582:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3294505:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3294340:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _min_3293054:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3292731:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3295166:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3294741:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3294116:stdgo.Error = (null : stdgo.Error);
            var _t_3291640:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3291548:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3291386:stdgo.Error = (null : stdgo.Error);
            var _repeat_3291664:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3291528:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3294511:stdgo.Error = (null : stdgo.Error);
            var _ok_3293071:Bool = false;
            var _before_3293039:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3294502:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _op_3291566:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> ({
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
                        }));
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3291339i32;
                        } else {
                            _gotoNext = 3291520i32;
                        };
                    } else if (__value__ == (3291339i32)) {
                        {
                            _err_3291386 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3291386 != null) {
                                _gotoNext = 3291418i32;
                            } else {
                                _gotoNext = 3291445i32;
                            };
                        };
                    } else if (__value__ == (3291418i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3291386 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3291445i32;
                    } else if (__value__ == (3291445i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3291520i32;
                    } else if (__value__ == (3291520i32)) {
                        _p_3291528._flags = _flags;
                        _p_3291528._wholeRegexp = _s?.__copy__();
                        _t_3291640 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3291648i32;
                    } else if (__value__ == (3291648i32)) {
                        if (_t_3291640 != (stdgo.Go.str())) {
                            _gotoNext = 3291660i32;
                        } else {
                            _gotoNext = 3295050i32;
                        };
                    } else if (__value__ == (3291660i32)) {
                        _repeat_3291664 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3291678i32;
                    } else if (__value__ == (3291678i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3291691i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3291640[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3291804i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292074i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292171i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292267i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292382i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292512i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292626i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292708i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293009i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293565i32;
                                } else {
                                    _gotoNext = 3291707i32;
                                };
                            };
                        } else {
                            _gotoNext = 3295025i32;
                        };
                    } else if (__value__ == (3291707i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3291640?.__copy__());
                                _c_3291548 = __tmp__._0;
                                _t_3291640 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3291758i32;
                            } else {
                                _gotoNext = 3291788i32;
                            };
                        };
                    } else if (__value__ == (3291758i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3291788i32;
                    } else if (__value__ == (3291788i32)) {
                        _p_3291528._literal(_c_3291548);
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3291804i32)) {
                        if ((((_p_3291528._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3291640.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3291640[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3291869i32;
                        } else {
                            _gotoNext = 3292012i32;
                        };
                    } else if (__value__ == (3291869i32)) {
                        {
                            {
                                var __tmp__ = _p_3291528._parsePerlFlags(_t_3291640?.__copy__());
                                _t_3291640 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3291965i32;
                            } else {
                                _gotoNext = 3291998i32;
                            };
                        };
                    } else if (__value__ == (3291965i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3291998i32;
                    } else if (__value__ == (3291998i32)) {
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292012i32)) {
                        _p_3291528._numCap++;
                        _p_3291528._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3291528._numCap;
                        _t_3291640 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292074i32)) {
                        {
                            _err = _p_3291528._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3292129i32;
                            } else {
                                _gotoNext = 3292159i32;
                            };
                        };
                    } else if (__value__ == (3292129i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3292159i32;
                    } else if (__value__ == (3292159i32)) {
                        _t_3291640 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292171i32)) {
                        {
                            _err = _p_3291528._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3292225i32;
                            } else {
                                _gotoNext = 3292255i32;
                            };
                        };
                    } else if (__value__ == (3292225i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3292255i32;
                    } else if (__value__ == (3292255i32)) {
                        _t_3291640 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292267i32)) {
                        if ((_p_3291528._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3292304i32;
                        } else {
                            _gotoNext = 3292338i32;
                        };
                    } else if (__value__ == (3292304i32)) {
                        _p_3291528._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3292370i32;
                    } else if (__value__ == (3292338i32)) {
                        _gotoNext = 3292338i32;
                        _p_3291528._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3292370i32;
                    } else if (__value__ == (3292370i32)) {
                        _t_3291640 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292382i32)) {
                        if ((_p_3291528._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3292419i32;
                        } else {
                            _gotoNext = 3292470i32;
                        };
                    } else if (__value__ == (3292419i32)) {
                        _p_3291528._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3291528._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3292500i32;
                    } else if (__value__ == (3292470i32)) {
                        _gotoNext = 3292470i32;
                        _p_3291528._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3292500i32;
                    } else if (__value__ == (3292500i32)) {
                        _t_3291640 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292512i32)) {
                        if ((_p_3291528._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3292547i32;
                        } else {
                            _gotoNext = 3292579i32;
                        };
                    } else if (__value__ == (3292547i32)) {
                        _p_3291528._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3292614i32;
                    } else if (__value__ == (3292579i32)) {
                        _gotoNext = 3292579i32;
                        _p_3291528._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3292614i32;
                    } else if (__value__ == (3292614i32)) {
                        _t_3291640 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292626i32)) {
                        {
                            {
                                var __tmp__ = _p_3291528._parseClass(_t_3291640?.__copy__());
                                _t_3291640 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3292679i32;
                            } else {
                                _gotoNext = 3295025i32;
                            };
                        };
                    } else if (__value__ == (3292679i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3292708i32)) {
                        _before_3292731 = _t_3291640?.__copy__();
                        _gotoNext = 3292746i32;
                    } else if (__value__ == (3292746i32)) {
                        {
                            final __value__ = _t_3291640[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3292763i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3292792i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3292821i32;
                            } else {
                                _gotoNext = 3292856i32;
                            };
                        };
                    } else if (__value__ == (3292763i32)) {
                        _op_3291566 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3292856i32;
                    } else if (__value__ == (3292792i32)) {
                        _op_3291566 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3292856i32;
                    } else if (__value__ == (3292821i32)) {
                        _op_3291566 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3292856i32;
                    } else if (__value__ == (3292856i32)) {
                        _after_3292856 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3291528._repeat(_op_3291566, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3292731?.__copy__(), _after_3292856?.__copy__(), _lastRepeat_3291582?.__copy__());
                                _after_3292856 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3292948i32;
                            } else {
                                _gotoNext = 3292978i32;
                            };
                        };
                    } else if (__value__ == (3292948i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3292978i32;
                    } else if (__value__ == (3292978i32)) {
                        _repeat_3291664 = _before_3292731?.__copy__();
                        _t_3291640 = _after_3292856?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3293009i32)) {
                        _op_3291566 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3293039 = _t_3291640?.__copy__();
                        {
                            var __tmp__ = _p_3291528._parseRepeat(_t_3291640?.__copy__());
                            _min_3293054 = __tmp__._0;
                            _max_3293059 = __tmp__._1;
                            _after_3293064 = __tmp__._2?.__copy__();
                            _ok_3293071 = __tmp__._3;
                        };
                        if (!_ok_3293071) {
                            _gotoNext = 3293104i32;
                        } else {
                            _gotoNext = 3293212i32;
                        };
                    } else if (__value__ == (3293104i32)) {
                        _p_3291528._literal((123 : stdgo.GoInt32));
                        _t_3291640 = (_t_3291640.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3293212i32)) {
                        if (((((_min_3293054 < (0 : stdgo.GoInt) : Bool) || (_min_3293054 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3293059 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3293059 >= (0 : stdgo.GoInt) : Bool) && (_min_3293054 > _max_3293059 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3293276i32;
                        } else {
                            _gotoNext = 3293426i32;
                        };
                    } else if (__value__ == (3293276i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3293039.__slice__(0, ((_before_3293039.length) - (_after_3293064.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3293426i32;
                    } else if (__value__ == (3293426i32)) {
                        {
                            {
                                var __tmp__ = _p_3291528._repeat(_op_3291566, _min_3293054, _max_3293059, _before_3293039?.__copy__(), _after_3293064?.__copy__(), _lastRepeat_3291582?.__copy__());
                                _after_3293064 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3293504i32;
                            } else {
                                _gotoNext = 3293534i32;
                            };
                        };
                    } else if (__value__ == (3293504i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3293534i32;
                    } else if (__value__ == (3293534i32)) {
                        _repeat_3291664 = _before_3293039?.__copy__();
                        _t_3291640 = _after_3293064?.__copy__();
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3293565i32)) {
                        if ((((_p_3291528._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3291640.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3293616i32;
                        } else {
                            _gotoNext = 3294340i32;
                        };
                    } else if (__value__ == (3293616i32)) {
                        _gotoNext = 3293622i32;
                    } else if (__value__ == (3293622i32)) {
                        {
                            final __value__ = _t_3291640[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3293640i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3293713i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3293789i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3293867i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3293962i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3294258i32;
                            } else {
                                _gotoNext = 3294340i32;
                            };
                        };
                    } else if (__value__ == (3293640i32)) {
                        _p_3291528._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3291640 = (_t_3291640.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3293713i32)) {
                        _p_3291528._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3291640 = (_t_3291640.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3293789i32)) {
                        _p_3291528._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3291640 = (_t_3291640.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3293867i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3291640.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3294340i32;
                    } else if (__value__ == (3293962i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3291640.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3294027 = __tmp__._0?.__copy__();
                            _t_3291640 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3294085i32;
                    } else if (__value__ == (3294085i32)) {
                        if (_lit_3294027 != (stdgo.Go.str())) {
                            _gotoNext = 3294099i32;
                        } else {
                            _gotoNext = 3294238i32;
                        };
                    } else if (__value__ == (3294099i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3294027?.__copy__());
                            _c_3294107 = __tmp__._0;
                            _rest_3294110 = __tmp__._1?.__copy__();
                            _err_3294116 = __tmp__._2;
                        };
                        if (_err_3294116 != null) {
                            _gotoNext = 3294157i32;
                        } else {
                            _gotoNext = 3294196i32;
                        };
                    } else if (__value__ == (3294157i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3294116 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3294196i32;
                    } else if (__value__ == (3294196i32)) {
                        _p_3291528._literal(_c_3294107);
                        _lit_3294027 = _rest_3294110?.__copy__();
                        _gotoNext = 3294085i32;
                    } else if (__value__ == (3294238i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3294258i32)) {
                        _p_3291528._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3291640 = (_t_3291640.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3294340i32)) {
                        _re_3294340 = _p_3291528._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3294340.flags = _p_3291528._flags;
                        if ((((_t_3291640.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3291640[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3291640[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3294496i32;
                        } else {
                            _gotoNext = 3294738i32;
                        };
                    } else if (__value__ == (3294496i32)) {
                        {
                            var __tmp__ = _p_3291528._parseUnicodeClass(_t_3291640?.__copy__(), (_re_3294340.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3294502 = __tmp__._0;
                            _rest_3294505 = __tmp__._1?.__copy__();
                            _err_3294511 = __tmp__._2;
                        };
                        if (_err_3294511 != null) {
                            _gotoNext = 3294573i32;
                        } else {
                            _gotoNext = 3294606i32;
                        };
                    } else if (__value__ == (3294573i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3294511 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3294606i32;
                    } else if (__value__ == (3294606i32)) {
                        if (_r_3294502 != null) {
                            _gotoNext = 3294618i32;
                        } else {
                            _gotoNext = 3294738i32;
                        };
                    } else if (__value__ == (3294618i32)) {
                        _re_3294340.rune = _r_3294502;
                        _t_3291640 = _rest_3294505?.__copy__();
                        _p_3291528._push(_re_3294340);
                        bigSwitchBreak = true;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3294738i32)) {
                        {
                            {
                                var __tmp__ = _p_3291528._parsePerlClassEscape(_t_3291640?.__copy__(), (_re_3294340.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3294741 = __tmp__._0;
                                _rest_3294744 = __tmp__._1?.__copy__();
                            };
                            if (_r_3294741 != null) {
                                _gotoNext = 3294802i32;
                            } else {
                                _gotoNext = 3294876i32;
                            };
                        };
                    } else if (__value__ == (3294802i32)) {
                        _re_3294340.rune = _r_3294741;
                        _t_3291640 = _rest_3294744?.__copy__();
                        _p_3291528._push(_re_3294340);
                        bigSwitchBreak = true;
                        _gotoNext = 3291691i32;
                    } else if (__value__ == (3294876i32)) {
                        _p_3291528._reuse(_re_3294340);
                        {
                            {
                                var __tmp__ = _p_3291528._parseEscape(_t_3291640?.__copy__());
                                _c_3291548 = __tmp__._0;
                                _t_3291640 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3294976i32;
                            } else {
                                _gotoNext = 3295006i32;
                            };
                        };
                    } else if (__value__ == (3294976i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295006i32;
                    } else if (__value__ == (3295006i32)) {
                        _p_3291528._literal(_c_3291548);
                        _gotoNext = 3295025i32;
                    } else if (__value__ == (3295025i32)) {
                        _lastRepeat_3291582 = _repeat_3291664?.__copy__();
                        _gotoNext = 3291648i32;
                    } else if (__value__ == (3295050i32)) {
                        _p_3291528._concat();
                        if (_p_3291528._swapVerticalBar()) {
                            _gotoNext = 3295085i32;
                        } else {
                            _gotoNext = 3295150i32;
                        };
                    } else if (__value__ == (3295085i32)) {
                        _p_3291528._stack = (_p_3291528._stack.__slice__(0, ((_p_3291528._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3295150i32;
                    } else if (__value__ == (3295150i32)) {
                        _p_3291528._alternate();
                        _n_3295166 = (_p_3291528._stack.length);
                        if (_n_3295166 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3295195i32;
                        } else {
                            _gotoNext = 3295242i32;
                        };
                    } else if (__value__ == (3295195i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295242i32;
                    } else if (__value__ == (3295242i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3291528._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
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
