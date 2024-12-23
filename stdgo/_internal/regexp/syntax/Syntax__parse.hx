package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_3481135:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3482192:stdgo.Error = (null : stdgo.Error);
            var _c_3482183:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3481130:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3479462:stdgo.Error = (null : stdgo.Error);
            var _before_3480807:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3483242:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _r_3482578:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3479624:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3482581:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3482186:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3481147:Bool = false;
            var _after_3480932:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3481115:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3479740:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3479716:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3479658:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3482820:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3482416:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3481140:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3482817:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3482587:stdgo.Error = (null : stdgo.Error);
            var _lit_3482103:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3479642:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _p_3479604:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
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
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3479415i32;
                        } else {
                            _gotoNext = 3479596i32;
                        };
                    } else if (__value__ == (3479415i32)) {
                        {
                            _err_3479462 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3479462 != null) {
                                _gotoNext = 3479494i32;
                            } else {
                                _gotoNext = 3479521i32;
                            };
                        };
                    } else if (__value__ == (3479494i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3479462 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3479521i32;
                    } else if (__value__ == (3479521i32)) {
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
                        _gotoNext = 3479596i32;
                    } else if (__value__ == (3479596i32)) {
                        _p_3479604._flags = _flags;
                        _p_3479604._wholeRegexp = _s?.__copy__();
                        _t_3479716 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3479724i32;
                    } else if (__value__ == (3479724i32)) {
                        if (_t_3479716 != (stdgo.Go.str())) {
                            _gotoNext = 3479736i32;
                        } else {
                            _gotoNext = 3483126i32;
                        };
                    } else if (__value__ == (3479736i32)) {
                        _repeat_3479740 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3479754i32;
                    } else if (__value__ == (3479754i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3479767i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3479716[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3479880i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3480150i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3480247i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3480343i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3480458i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3480588i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3480702i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3480784i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3481085i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3481641i32;
                                } else {
                                    _gotoNext = 3479783i32;
                                };
                            };
                        } else {
                            _gotoNext = 3483101i32;
                        };
                    } else if (__value__ == (3479783i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3479716?.__copy__());
                                _c_3479624 = __tmp__._0;
                                _t_3479716 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3479834i32;
                            } else {
                                _gotoNext = 3479864i32;
                            };
                        };
                    } else if (__value__ == (3479834i32)) {
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
                        _gotoNext = 3479864i32;
                    } else if (__value__ == (3479864i32)) {
                        _p_3479604._literal(_c_3479624);
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3479880i32)) {
                        if ((((_p_3479604._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3479716.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3479716[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3479945i32;
                        } else {
                            _gotoNext = 3480088i32;
                        };
                    } else if (__value__ == (3479945i32)) {
                        {
                            {
                                var __tmp__ = _p_3479604._parsePerlFlags(_t_3479716?.__copy__());
                                _t_3479716 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3480041i32;
                            } else {
                                _gotoNext = 3480074i32;
                            };
                        };
                    } else if (__value__ == (3480041i32)) {
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
                        _gotoNext = 3480074i32;
                    } else if (__value__ == (3480074i32)) {
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480088i32)) {
                        _p_3479604._numCap++;
                        _p_3479604._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3479604._numCap;
                        _t_3479716 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480150i32)) {
                        {
                            _err = _p_3479604._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3480205i32;
                            } else {
                                _gotoNext = 3480235i32;
                            };
                        };
                    } else if (__value__ == (3480205i32)) {
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
                        _gotoNext = 3480235i32;
                    } else if (__value__ == (3480235i32)) {
                        _t_3479716 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480247i32)) {
                        {
                            _err = _p_3479604._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3480301i32;
                            } else {
                                _gotoNext = 3480331i32;
                            };
                        };
                    } else if (__value__ == (3480301i32)) {
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
                        _gotoNext = 3480331i32;
                    } else if (__value__ == (3480331i32)) {
                        _t_3479716 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480343i32)) {
                        if ((_p_3479604._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3480380i32;
                        } else {
                            _gotoNext = 3480414i32;
                        };
                    } else if (__value__ == (3480380i32)) {
                        _p_3479604._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3480446i32;
                    } else if (__value__ == (3480414i32)) {
                        _gotoNext = 3480414i32;
                        _p_3479604._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3480446i32;
                    } else if (__value__ == (3480446i32)) {
                        _t_3479716 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480458i32)) {
                        if ((_p_3479604._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3480495i32;
                        } else {
                            _gotoNext = 3480546i32;
                        };
                    } else if (__value__ == (3480495i32)) {
                        {
                            final __t__ = _p_3479604._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3480576i32;
                    } else if (__value__ == (3480546i32)) {
                        _gotoNext = 3480546i32;
                        _p_3479604._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3480576i32;
                    } else if (__value__ == (3480576i32)) {
                        _t_3479716 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480588i32)) {
                        if ((_p_3479604._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3480623i32;
                        } else {
                            _gotoNext = 3480655i32;
                        };
                    } else if (__value__ == (3480623i32)) {
                        _p_3479604._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3480690i32;
                    } else if (__value__ == (3480655i32)) {
                        _gotoNext = 3480655i32;
                        _p_3479604._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3480690i32;
                    } else if (__value__ == (3480690i32)) {
                        _t_3479716 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480702i32)) {
                        {
                            {
                                var __tmp__ = _p_3479604._parseClass(_t_3479716?.__copy__());
                                _t_3479716 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3480755i32;
                            } else {
                                _gotoNext = 3483101i32;
                            };
                        };
                    } else if (__value__ == (3480755i32)) {
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
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3480784i32)) {
                        _before_3480807 = _t_3479716?.__copy__();
                        _gotoNext = 3480822i32;
                    } else if (__value__ == (3480822i32)) {
                        {
                            final __value__ = _t_3479716[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3480839i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3480868i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3480897i32;
                            } else {
                                _gotoNext = 3480932i32;
                            };
                        };
                    } else if (__value__ == (3480839i32)) {
                        _op_3479642 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3480932i32;
                    } else if (__value__ == (3480868i32)) {
                        _op_3479642 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3480932i32;
                    } else if (__value__ == (3480897i32)) {
                        _op_3479642 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3480932i32;
                    } else if (__value__ == (3480932i32)) {
                        _after_3480932 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3479604._repeat(_op_3479642, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3480807?.__copy__(), _after_3480932?.__copy__(), _lastRepeat_3479658?.__copy__());
                                _after_3480932 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3481024i32;
                            } else {
                                _gotoNext = 3481054i32;
                            };
                        };
                    } else if (__value__ == (3481024i32)) {
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
                        _gotoNext = 3481054i32;
                    } else if (__value__ == (3481054i32)) {
                        _repeat_3479740 = _before_3480807?.__copy__();
                        _t_3479716 = _after_3480932?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3481085i32)) {
                        _op_3479642 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3481115 = _t_3479716?.__copy__();
                        {
                            var __tmp__ = _p_3479604._parseRepeat(_t_3479716?.__copy__());
                            _min_3481130 = __tmp__._0;
                            _max_3481135 = __tmp__._1;
                            _after_3481140 = __tmp__._2?.__copy__();
                            _ok_3481147 = __tmp__._3;
                        };
                        if (!_ok_3481147) {
                            _gotoNext = 3481180i32;
                        } else {
                            _gotoNext = 3481288i32;
                        };
                    } else if (__value__ == (3481180i32)) {
                        _p_3479604._literal((123 : stdgo.GoInt32));
                        _t_3479716 = (_t_3479716.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3481288i32)) {
                        if (((((_min_3481130 < (0 : stdgo.GoInt) : Bool) || (_min_3481130 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3481135 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3481135 >= (0 : stdgo.GoInt) : Bool) && (_min_3481130 > _max_3481135 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3481352i32;
                        } else {
                            _gotoNext = 3481502i32;
                        };
                    } else if (__value__ == (3481352i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3481115.__slice__(0, ((_before_3481115.length) - (_after_3481140.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3481502i32;
                    } else if (__value__ == (3481502i32)) {
                        {
                            {
                                var __tmp__ = _p_3479604._repeat(_op_3479642, _min_3481130, _max_3481135, _before_3481115?.__copy__(), _after_3481140?.__copy__(), _lastRepeat_3479658?.__copy__());
                                _after_3481140 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3481580i32;
                            } else {
                                _gotoNext = 3481610i32;
                            };
                        };
                    } else if (__value__ == (3481580i32)) {
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
                        _gotoNext = 3481610i32;
                    } else if (__value__ == (3481610i32)) {
                        _repeat_3479740 = _before_3481115?.__copy__();
                        _t_3479716 = _after_3481140?.__copy__();
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3481641i32)) {
                        if ((((_p_3479604._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3479716.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3481692i32;
                        } else {
                            _gotoNext = 3482416i32;
                        };
                    } else if (__value__ == (3481692i32)) {
                        _gotoNext = 3481698i32;
                    } else if (__value__ == (3481698i32)) {
                        {
                            final __value__ = _t_3479716[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3481716i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3481789i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3481865i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3481943i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3482038i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3482334i32;
                            } else {
                                _gotoNext = 3482416i32;
                            };
                        };
                    } else if (__value__ == (3481716i32)) {
                        _p_3479604._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3479716 = (_t_3479716.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3481789i32)) {
                        _p_3479604._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3479716 = (_t_3479716.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3481865i32)) {
                        _p_3479604._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3479716 = (_t_3479716.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3481943i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3479716.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3482416i32;
                    } else if (__value__ == (3482038i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3479716.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3482103 = __tmp__._0?.__copy__();
                            _t_3479716 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3482161i32;
                    } else if (__value__ == (3482161i32)) {
                        if (_lit_3482103 != (stdgo.Go.str())) {
                            _gotoNext = 3482175i32;
                        } else {
                            _gotoNext = 3482314i32;
                        };
                    } else if (__value__ == (3482175i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3482103?.__copy__());
                            _c_3482183 = __tmp__._0;
                            _rest_3482186 = __tmp__._1?.__copy__();
                            _err_3482192 = __tmp__._2;
                        };
                        if (_err_3482192 != null) {
                            _gotoNext = 3482233i32;
                        } else {
                            _gotoNext = 3482272i32;
                        };
                    } else if (__value__ == (3482233i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3482192 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3482272i32;
                    } else if (__value__ == (3482272i32)) {
                        _p_3479604._literal(_c_3482183);
                        _lit_3482103 = _rest_3482186?.__copy__();
                        _gotoNext = 3482161i32;
                    } else if (__value__ == (3482314i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3482334i32)) {
                        _p_3479604._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3479716 = (_t_3479716.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3482416i32)) {
                        _re_3482416 = _p_3479604._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3482416.flags = _p_3479604._flags;
                        if ((((_t_3479716.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3479716[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3479716[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3482572i32;
                        } else {
                            _gotoNext = 3482814i32;
                        };
                    } else if (__value__ == (3482572i32)) {
                        {
                            var __tmp__ = _p_3479604._parseUnicodeClass(_t_3479716?.__copy__(), (_re_3482416.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3482578 = __tmp__._0;
                            _rest_3482581 = __tmp__._1?.__copy__();
                            _err_3482587 = __tmp__._2;
                        };
                        if (_err_3482587 != null) {
                            _gotoNext = 3482649i32;
                        } else {
                            _gotoNext = 3482682i32;
                        };
                    } else if (__value__ == (3482649i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3482587 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3482682i32;
                    } else if (__value__ == (3482682i32)) {
                        if (_r_3482578 != null) {
                            _gotoNext = 3482694i32;
                        } else {
                            _gotoNext = 3482814i32;
                        };
                    } else if (__value__ == (3482694i32)) {
                        _re_3482416.rune = _r_3482578;
                        _t_3479716 = _rest_3482581?.__copy__();
                        _p_3479604._push(_re_3482416);
                        bigSwitchBreak = true;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3482814i32)) {
                        {
                            {
                                var __tmp__ = _p_3479604._parsePerlClassEscape(_t_3479716?.__copy__(), (_re_3482416.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3482817 = __tmp__._0;
                                _rest_3482820 = __tmp__._1?.__copy__();
                            };
                            if (_r_3482817 != null) {
                                _gotoNext = 3482878i32;
                            } else {
                                _gotoNext = 3482952i32;
                            };
                        };
                    } else if (__value__ == (3482878i32)) {
                        _re_3482416.rune = _r_3482817;
                        _t_3479716 = _rest_3482820?.__copy__();
                        _p_3479604._push(_re_3482416);
                        bigSwitchBreak = true;
                        _gotoNext = 3479767i32;
                    } else if (__value__ == (3482952i32)) {
                        _p_3479604._reuse(_re_3482416);
                        {
                            {
                                var __tmp__ = _p_3479604._parseEscape(_t_3479716?.__copy__());
                                _c_3479624 = __tmp__._0;
                                _t_3479716 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3483052i32;
                            } else {
                                _gotoNext = 3483082i32;
                            };
                        };
                    } else if (__value__ == (3483052i32)) {
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
                        _gotoNext = 3483082i32;
                    } else if (__value__ == (3483082i32)) {
                        _p_3479604._literal(_c_3479624);
                        _gotoNext = 3483101i32;
                    } else if (__value__ == (3483101i32)) {
                        _lastRepeat_3479658 = _repeat_3479740?.__copy__();
                        _gotoNext = 3479724i32;
                    } else if (__value__ == (3483126i32)) {
                        _p_3479604._concat();
                        if (_p_3479604._swapVerticalBar()) {
                            _gotoNext = 3483161i32;
                        } else {
                            _gotoNext = 3483226i32;
                        };
                    } else if (__value__ == (3483161i32)) {
                        _p_3479604._stack = (_p_3479604._stack.__slice__(0, ((_p_3479604._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3483226i32;
                    } else if (__value__ == (3483226i32)) {
                        _p_3479604._alternate();
                        _n_3483242 = (_p_3479604._stack.length);
                        if (_n_3483242 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3483271i32;
                        } else {
                            _gotoNext = 3483318i32;
                        };
                    } else if (__value__ == (3483271i32)) {
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
                        _gotoNext = 3483318i32;
                    } else if (__value__ == (3483318i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3479604._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
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
            return { _0 : _0, _1 : _err };
        };
    }
