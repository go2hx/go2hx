package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3348060:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3348035:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3347727:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3346660:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3349023:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3346578:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3349112:stdgo.Error = (null : stdgo.Error);
            var _p_3346524:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var bigSwitchBreak = false;
            var _r_3349498:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3349336:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _rest_3349106:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3349103:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3348067:Bool = false;
            var _min_3348050:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3346636:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3346562:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3346544:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3349737:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3346382:stdgo.Error = (null : stdgo.Error);
            var _n_3350162:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3349740:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3349507:stdgo.Error = (null : stdgo.Error);
            var _max_3348055:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3349501:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3347852:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3346335i32;
                        } else {
                            _gotoNext = 3346516i32;
                        };
                    } else if (__value__ == (3346335i32)) {
                        {
                            _err_3346382 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3346382 != null) {
                                _gotoNext = 3346414i32;
                            } else {
                                _gotoNext = 3346441i32;
                            };
                        };
                    } else if (__value__ == (3346414i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3346382 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3346441i32;
                    } else if (__value__ == (3346441i32)) {
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
                        _gotoNext = 3346516i32;
                    } else if (__value__ == (3346516i32)) {
                        _p_3346524._flags = _flags;
                        _p_3346524._wholeRegexp = _s?.__copy__();
                        _t_3346636 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3346644i32;
                    } else if (__value__ == (3346644i32)) {
                        if (_t_3346636 != (stdgo.Go.str())) {
                            _gotoNext = 3346656i32;
                        } else {
                            _gotoNext = 3350046i32;
                        };
                    } else if (__value__ == (3346656i32)) {
                        _repeat_3346660 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3346674i32;
                    } else if (__value__ == (3346674i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3346687i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3346636[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3346800i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347070i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347167i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347263i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347378i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347508i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347622i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347704i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3348005i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3348561i32;
                                } else {
                                    _gotoNext = 3346703i32;
                                };
                            };
                        } else {
                            _gotoNext = 3350021i32;
                        };
                    } else if (__value__ == (3346703i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3346636?.__copy__());
                                _c_3346544 = __tmp__._0;
                                _t_3346636 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3346754i32;
                            } else {
                                _gotoNext = 3346784i32;
                            };
                        };
                    } else if (__value__ == (3346754i32)) {
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
                        _gotoNext = 3346784i32;
                    } else if (__value__ == (3346784i32)) {
                        _p_3346524._literal(_c_3346544);
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3346800i32)) {
                        if ((((_p_3346524._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3346636.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3346636[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3346865i32;
                        } else {
                            _gotoNext = 3347008i32;
                        };
                    } else if (__value__ == (3346865i32)) {
                        {
                            {
                                var __tmp__ = _p_3346524._parsePerlFlags(_t_3346636?.__copy__());
                                _t_3346636 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3346961i32;
                            } else {
                                _gotoNext = 3346994i32;
                            };
                        };
                    } else if (__value__ == (3346961i32)) {
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
                        _gotoNext = 3346994i32;
                    } else if (__value__ == (3346994i32)) {
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347008i32)) {
                        _p_3346524._numCap++;
                        _p_3346524._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3346524._numCap;
                        _t_3346636 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347070i32)) {
                        {
                            _err = _p_3346524._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3347125i32;
                            } else {
                                _gotoNext = 3347155i32;
                            };
                        };
                    } else if (__value__ == (3347125i32)) {
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
                        _gotoNext = 3347155i32;
                    } else if (__value__ == (3347155i32)) {
                        _t_3346636 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347167i32)) {
                        {
                            _err = _p_3346524._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3347221i32;
                            } else {
                                _gotoNext = 3347251i32;
                            };
                        };
                    } else if (__value__ == (3347221i32)) {
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
                        _gotoNext = 3347251i32;
                    } else if (__value__ == (3347251i32)) {
                        _t_3346636 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347263i32)) {
                        if ((_p_3346524._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3347300i32;
                        } else {
                            _gotoNext = 3347334i32;
                        };
                    } else if (__value__ == (3347300i32)) {
                        _p_3346524._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3347366i32;
                    } else if (__value__ == (3347334i32)) {
                        _gotoNext = 3347334i32;
                        _p_3346524._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3347366i32;
                    } else if (__value__ == (3347366i32)) {
                        _t_3346636 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347378i32)) {
                        if ((_p_3346524._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3347415i32;
                        } else {
                            _gotoNext = 3347466i32;
                        };
                    } else if (__value__ == (3347415i32)) {
                        _p_3346524._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3346524._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3347496i32;
                    } else if (__value__ == (3347466i32)) {
                        _gotoNext = 3347466i32;
                        _p_3346524._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3347496i32;
                    } else if (__value__ == (3347496i32)) {
                        _t_3346636 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347508i32)) {
                        if ((_p_3346524._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3347543i32;
                        } else {
                            _gotoNext = 3347575i32;
                        };
                    } else if (__value__ == (3347543i32)) {
                        _p_3346524._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3347610i32;
                    } else if (__value__ == (3347575i32)) {
                        _gotoNext = 3347575i32;
                        _p_3346524._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3347610i32;
                    } else if (__value__ == (3347610i32)) {
                        _t_3346636 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347622i32)) {
                        {
                            {
                                var __tmp__ = _p_3346524._parseClass(_t_3346636?.__copy__());
                                _t_3346636 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3347675i32;
                            } else {
                                _gotoNext = 3350021i32;
                            };
                        };
                    } else if (__value__ == (3347675i32)) {
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
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3347704i32)) {
                        _before_3347727 = _t_3346636?.__copy__();
                        _gotoNext = 3347742i32;
                    } else if (__value__ == (3347742i32)) {
                        {
                            final __value__ = _t_3346636[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3347759i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3347788i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3347817i32;
                            } else {
                                _gotoNext = 3347852i32;
                            };
                        };
                    } else if (__value__ == (3347759i32)) {
                        _op_3346562 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3347852i32;
                    } else if (__value__ == (3347788i32)) {
                        _op_3346562 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3347852i32;
                    } else if (__value__ == (3347817i32)) {
                        _op_3346562 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3347852i32;
                    } else if (__value__ == (3347852i32)) {
                        _after_3347852 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3346524._repeat(_op_3346562, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3347727?.__copy__(), _after_3347852?.__copy__(), _lastRepeat_3346578?.__copy__());
                                _after_3347852 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3347944i32;
                            } else {
                                _gotoNext = 3347974i32;
                            };
                        };
                    } else if (__value__ == (3347944i32)) {
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
                        _gotoNext = 3347974i32;
                    } else if (__value__ == (3347974i32)) {
                        _repeat_3346660 = _before_3347727?.__copy__();
                        _t_3346636 = _after_3347852?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3348005i32)) {
                        _op_3346562 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3348035 = _t_3346636?.__copy__();
                        {
                            var __tmp__ = _p_3346524._parseRepeat(_t_3346636?.__copy__());
                            _min_3348050 = __tmp__._0;
                            _max_3348055 = __tmp__._1;
                            _after_3348060 = __tmp__._2?.__copy__();
                            _ok_3348067 = __tmp__._3;
                        };
                        if (!_ok_3348067) {
                            _gotoNext = 3348100i32;
                        } else {
                            _gotoNext = 3348208i32;
                        };
                    } else if (__value__ == (3348100i32)) {
                        _p_3346524._literal((123 : stdgo.GoInt32));
                        _t_3346636 = (_t_3346636.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3348208i32)) {
                        if (((((_min_3348050 < (0 : stdgo.GoInt) : Bool) || (_min_3348050 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3348055 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3348055 >= (0 : stdgo.GoInt) : Bool) && (_min_3348050 > _max_3348055 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3348272i32;
                        } else {
                            _gotoNext = 3348422i32;
                        };
                    } else if (__value__ == (3348272i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3348035.__slice__(0, ((_before_3348035.length) - (_after_3348060.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3348422i32;
                    } else if (__value__ == (3348422i32)) {
                        {
                            {
                                var __tmp__ = _p_3346524._repeat(_op_3346562, _min_3348050, _max_3348055, _before_3348035?.__copy__(), _after_3348060?.__copy__(), _lastRepeat_3346578?.__copy__());
                                _after_3348060 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3348500i32;
                            } else {
                                _gotoNext = 3348530i32;
                            };
                        };
                    } else if (__value__ == (3348500i32)) {
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
                        _gotoNext = 3348530i32;
                    } else if (__value__ == (3348530i32)) {
                        _repeat_3346660 = _before_3348035?.__copy__();
                        _t_3346636 = _after_3348060?.__copy__();
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3348561i32)) {
                        if ((((_p_3346524._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3346636.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3348612i32;
                        } else {
                            _gotoNext = 3349336i32;
                        };
                    } else if (__value__ == (3348612i32)) {
                        _gotoNext = 3348618i32;
                    } else if (__value__ == (3348618i32)) {
                        {
                            final __value__ = _t_3346636[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3348636i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3348709i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3348785i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3348863i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3348958i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3349254i32;
                            } else {
                                _gotoNext = 3349336i32;
                            };
                        };
                    } else if (__value__ == (3348636i32)) {
                        _p_3346524._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3346636 = (_t_3346636.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3348709i32)) {
                        _p_3346524._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3346636 = (_t_3346636.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3348785i32)) {
                        _p_3346524._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3346636 = (_t_3346636.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3348863i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3346636.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3349336i32;
                    } else if (__value__ == (3348958i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3346636.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3349023 = __tmp__._0?.__copy__();
                            _t_3346636 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3349081i32;
                    } else if (__value__ == (3349081i32)) {
                        if (_lit_3349023 != (stdgo.Go.str())) {
                            _gotoNext = 3349095i32;
                        } else {
                            _gotoNext = 3349234i32;
                        };
                    } else if (__value__ == (3349095i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3349023?.__copy__());
                            _c_3349103 = __tmp__._0;
                            _rest_3349106 = __tmp__._1?.__copy__();
                            _err_3349112 = __tmp__._2;
                        };
                        if (_err_3349112 != null) {
                            _gotoNext = 3349153i32;
                        } else {
                            _gotoNext = 3349192i32;
                        };
                    } else if (__value__ == (3349153i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3349112 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3349192i32;
                    } else if (__value__ == (3349192i32)) {
                        _p_3346524._literal(_c_3349103);
                        _lit_3349023 = _rest_3349106?.__copy__();
                        _gotoNext = 3349081i32;
                    } else if (__value__ == (3349234i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3349254i32)) {
                        _p_3346524._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3346636 = (_t_3346636.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3349336i32)) {
                        _re_3349336 = _p_3346524._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3349336.flags = _p_3346524._flags;
                        if ((((_t_3346636.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3346636[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3346636[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3349492i32;
                        } else {
                            _gotoNext = 3349734i32;
                        };
                    } else if (__value__ == (3349492i32)) {
                        {
                            var __tmp__ = _p_3346524._parseUnicodeClass(_t_3346636?.__copy__(), (_re_3349336.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3349498 = __tmp__._0;
                            _rest_3349501 = __tmp__._1?.__copy__();
                            _err_3349507 = __tmp__._2;
                        };
                        if (_err_3349507 != null) {
                            _gotoNext = 3349569i32;
                        } else {
                            _gotoNext = 3349602i32;
                        };
                    } else if (__value__ == (3349569i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3349507 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3349602i32;
                    } else if (__value__ == (3349602i32)) {
                        if (_r_3349498 != null) {
                            _gotoNext = 3349614i32;
                        } else {
                            _gotoNext = 3349734i32;
                        };
                    } else if (__value__ == (3349614i32)) {
                        _re_3349336.rune = _r_3349498;
                        _t_3346636 = _rest_3349501?.__copy__();
                        _p_3346524._push(_re_3349336);
                        bigSwitchBreak = true;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3349734i32)) {
                        {
                            {
                                var __tmp__ = _p_3346524._parsePerlClassEscape(_t_3346636?.__copy__(), (_re_3349336.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3349737 = __tmp__._0;
                                _rest_3349740 = __tmp__._1?.__copy__();
                            };
                            if (_r_3349737 != null) {
                                _gotoNext = 3349798i32;
                            } else {
                                _gotoNext = 3349872i32;
                            };
                        };
                    } else if (__value__ == (3349798i32)) {
                        _re_3349336.rune = _r_3349737;
                        _t_3346636 = _rest_3349740?.__copy__();
                        _p_3346524._push(_re_3349336);
                        bigSwitchBreak = true;
                        _gotoNext = 3346687i32;
                    } else if (__value__ == (3349872i32)) {
                        _p_3346524._reuse(_re_3349336);
                        {
                            {
                                var __tmp__ = _p_3346524._parseEscape(_t_3346636?.__copy__());
                                _c_3346544 = __tmp__._0;
                                _t_3346636 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3349972i32;
                            } else {
                                _gotoNext = 3350002i32;
                            };
                        };
                    } else if (__value__ == (3349972i32)) {
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
                        _gotoNext = 3350002i32;
                    } else if (__value__ == (3350002i32)) {
                        _p_3346524._literal(_c_3346544);
                        _gotoNext = 3350021i32;
                    } else if (__value__ == (3350021i32)) {
                        _lastRepeat_3346578 = _repeat_3346660?.__copy__();
                        _gotoNext = 3346644i32;
                    } else if (__value__ == (3350046i32)) {
                        _p_3346524._concat();
                        if (_p_3346524._swapVerticalBar()) {
                            _gotoNext = 3350081i32;
                        } else {
                            _gotoNext = 3350146i32;
                        };
                    } else if (__value__ == (3350081i32)) {
                        _p_3346524._stack = (_p_3346524._stack.__slice__(0, ((_p_3346524._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3350146i32;
                    } else if (__value__ == (3350146i32)) {
                        _p_3346524._alternate();
                        _n_3350162 = (_p_3346524._stack.length);
                        if (_n_3350162 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3350191i32;
                        } else {
                            _gotoNext = 3350238i32;
                        };
                    } else if (__value__ == (3350191i32)) {
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
                        _gotoNext = 3350238i32;
                    } else if (__value__ == (3350238i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3346524._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
