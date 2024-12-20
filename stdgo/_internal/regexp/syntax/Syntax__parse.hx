package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _before_3396513:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3398640:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _r_3398215:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3397590:stdgo.Error = (null : stdgo.Error);
            var _after_3396538:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3395040:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3395022:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _c_3397581:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3396205:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3397976:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3397501:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3396533:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3397979:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3397584:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3396545:Bool = false;
            var _t_3395114:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3395002:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3398218:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3397985:stdgo.Error = (null : stdgo.Error);
            var _repeat_3395138:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3395056:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3394860:stdgo.Error = (null : stdgo.Error);
            var _min_3396528:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_3397814:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3396330:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3394813i32;
                        } else {
                            _gotoNext = 3394994i32;
                        };
                    } else if (__value__ == (3394813i32)) {
                        {
                            _err_3394860 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3394860 != null) {
                                _gotoNext = 3394892i32;
                            } else {
                                _gotoNext = 3394919i32;
                            };
                        };
                    } else if (__value__ == (3394892i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3394860 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3394919i32;
                    } else if (__value__ == (3394919i32)) {
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
                        _gotoNext = 3394994i32;
                    } else if (__value__ == (3394994i32)) {
                        _p_3395002._flags = _flags;
                        _p_3395002._wholeRegexp = _s?.__copy__();
                        _t_3395114 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3395122i32;
                    } else if (__value__ == (3395122i32)) {
                        if (_t_3395114 != (stdgo.Go.str())) {
                            _gotoNext = 3395134i32;
                        } else {
                            _gotoNext = 3398524i32;
                        };
                    } else if (__value__ == (3395134i32)) {
                        _repeat_3395138 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3395152i32;
                    } else if (__value__ == (3395152i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3395165i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3395114[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3395278i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3395548i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3395645i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3395741i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3395856i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3395986i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3396100i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3396182i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3396483i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3397039i32;
                                } else {
                                    _gotoNext = 3395181i32;
                                };
                            };
                        } else {
                            _gotoNext = 3398499i32;
                        };
                    } else if (__value__ == (3395181i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3395114?.__copy__());
                                _c_3395022 = __tmp__._0;
                                _t_3395114 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3395232i32;
                            } else {
                                _gotoNext = 3395262i32;
                            };
                        };
                    } else if (__value__ == (3395232i32)) {
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
                        _gotoNext = 3395262i32;
                    } else if (__value__ == (3395262i32)) {
                        _p_3395002._literal(_c_3395022);
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3395278i32)) {
                        if ((((_p_3395002._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3395114.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3395114[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3395343i32;
                        } else {
                            _gotoNext = 3395486i32;
                        };
                    } else if (__value__ == (3395343i32)) {
                        {
                            {
                                var __tmp__ = _p_3395002._parsePerlFlags(_t_3395114?.__copy__());
                                _t_3395114 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3395439i32;
                            } else {
                                _gotoNext = 3395472i32;
                            };
                        };
                    } else if (__value__ == (3395439i32)) {
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
                        _gotoNext = 3395472i32;
                    } else if (__value__ == (3395472i32)) {
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3395486i32)) {
                        _p_3395002._numCap++;
                        _p_3395002._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3395002._numCap;
                        _t_3395114 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3395548i32)) {
                        {
                            _err = _p_3395002._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3395603i32;
                            } else {
                                _gotoNext = 3395633i32;
                            };
                        };
                    } else if (__value__ == (3395603i32)) {
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
                        _gotoNext = 3395633i32;
                    } else if (__value__ == (3395633i32)) {
                        _t_3395114 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3395645i32)) {
                        {
                            _err = _p_3395002._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3395699i32;
                            } else {
                                _gotoNext = 3395729i32;
                            };
                        };
                    } else if (__value__ == (3395699i32)) {
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
                        _gotoNext = 3395729i32;
                    } else if (__value__ == (3395729i32)) {
                        _t_3395114 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3395741i32)) {
                        if ((_p_3395002._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3395778i32;
                        } else {
                            _gotoNext = 3395812i32;
                        };
                    } else if (__value__ == (3395778i32)) {
                        _p_3395002._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3395844i32;
                    } else if (__value__ == (3395812i32)) {
                        _gotoNext = 3395812i32;
                        _p_3395002._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3395844i32;
                    } else if (__value__ == (3395844i32)) {
                        _t_3395114 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3395856i32)) {
                        if ((_p_3395002._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3395893i32;
                        } else {
                            _gotoNext = 3395944i32;
                        };
                    } else if (__value__ == (3395893i32)) {
                        _p_3395002._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3395002._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3395974i32;
                    } else if (__value__ == (3395944i32)) {
                        _gotoNext = 3395944i32;
                        _p_3395002._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3395974i32;
                    } else if (__value__ == (3395974i32)) {
                        _t_3395114 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3395986i32)) {
                        if ((_p_3395002._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3396021i32;
                        } else {
                            _gotoNext = 3396053i32;
                        };
                    } else if (__value__ == (3396021i32)) {
                        _p_3395002._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3396088i32;
                    } else if (__value__ == (3396053i32)) {
                        _gotoNext = 3396053i32;
                        _p_3395002._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3396088i32;
                    } else if (__value__ == (3396088i32)) {
                        _t_3395114 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3396100i32)) {
                        {
                            {
                                var __tmp__ = _p_3395002._parseClass(_t_3395114?.__copy__());
                                _t_3395114 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3396153i32;
                            } else {
                                _gotoNext = 3398499i32;
                            };
                        };
                    } else if (__value__ == (3396153i32)) {
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
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3396182i32)) {
                        _before_3396205 = _t_3395114?.__copy__();
                        _gotoNext = 3396220i32;
                    } else if (__value__ == (3396220i32)) {
                        {
                            final __value__ = _t_3395114[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3396237i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3396266i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3396295i32;
                            } else {
                                _gotoNext = 3396330i32;
                            };
                        };
                    } else if (__value__ == (3396237i32)) {
                        _op_3395040 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3396330i32;
                    } else if (__value__ == (3396266i32)) {
                        _op_3395040 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3396330i32;
                    } else if (__value__ == (3396295i32)) {
                        _op_3395040 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3396330i32;
                    } else if (__value__ == (3396330i32)) {
                        _after_3396330 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3395002._repeat(_op_3395040, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3396205?.__copy__(), _after_3396330?.__copy__(), _lastRepeat_3395056?.__copy__());
                                _after_3396330 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3396422i32;
                            } else {
                                _gotoNext = 3396452i32;
                            };
                        };
                    } else if (__value__ == (3396422i32)) {
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
                        _gotoNext = 3396452i32;
                    } else if (__value__ == (3396452i32)) {
                        _repeat_3395138 = _before_3396205?.__copy__();
                        _t_3395114 = _after_3396330?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3396483i32)) {
                        _op_3395040 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3396513 = _t_3395114?.__copy__();
                        {
                            var __tmp__ = _p_3395002._parseRepeat(_t_3395114?.__copy__());
                            _min_3396528 = __tmp__._0;
                            _max_3396533 = __tmp__._1;
                            _after_3396538 = __tmp__._2?.__copy__();
                            _ok_3396545 = __tmp__._3;
                        };
                        if (!_ok_3396545) {
                            _gotoNext = 3396578i32;
                        } else {
                            _gotoNext = 3396686i32;
                        };
                    } else if (__value__ == (3396578i32)) {
                        _p_3395002._literal((123 : stdgo.GoInt32));
                        _t_3395114 = (_t_3395114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3396686i32)) {
                        if (((((_min_3396528 < (0 : stdgo.GoInt) : Bool) || (_min_3396528 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3396533 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3396533 >= (0 : stdgo.GoInt) : Bool) && (_min_3396528 > _max_3396533 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3396750i32;
                        } else {
                            _gotoNext = 3396900i32;
                        };
                    } else if (__value__ == (3396750i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3396513.__slice__(0, ((_before_3396513.length) - (_after_3396538.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3396900i32;
                    } else if (__value__ == (3396900i32)) {
                        {
                            {
                                var __tmp__ = _p_3395002._repeat(_op_3395040, _min_3396528, _max_3396533, _before_3396513?.__copy__(), _after_3396538?.__copy__(), _lastRepeat_3395056?.__copy__());
                                _after_3396538 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3396978i32;
                            } else {
                                _gotoNext = 3397008i32;
                            };
                        };
                    } else if (__value__ == (3396978i32)) {
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
                        _gotoNext = 3397008i32;
                    } else if (__value__ == (3397008i32)) {
                        _repeat_3395138 = _before_3396513?.__copy__();
                        _t_3395114 = _after_3396538?.__copy__();
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3397039i32)) {
                        if ((((_p_3395002._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3395114.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3397090i32;
                        } else {
                            _gotoNext = 3397814i32;
                        };
                    } else if (__value__ == (3397090i32)) {
                        _gotoNext = 3397096i32;
                    } else if (__value__ == (3397096i32)) {
                        {
                            final __value__ = _t_3395114[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3397114i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3397187i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3397263i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3397341i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3397436i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3397732i32;
                            } else {
                                _gotoNext = 3397814i32;
                            };
                        };
                    } else if (__value__ == (3397114i32)) {
                        _p_3395002._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3395114 = (_t_3395114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3397187i32)) {
                        _p_3395002._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3395114 = (_t_3395114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3397263i32)) {
                        _p_3395002._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3395114 = (_t_3395114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3397341i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3395114.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3397814i32;
                    } else if (__value__ == (3397436i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3395114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3397501 = __tmp__._0?.__copy__();
                            _t_3395114 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3397559i32;
                    } else if (__value__ == (3397559i32)) {
                        if (_lit_3397501 != (stdgo.Go.str())) {
                            _gotoNext = 3397573i32;
                        } else {
                            _gotoNext = 3397712i32;
                        };
                    } else if (__value__ == (3397573i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3397501?.__copy__());
                            _c_3397581 = __tmp__._0;
                            _rest_3397584 = __tmp__._1?.__copy__();
                            _err_3397590 = __tmp__._2;
                        };
                        if (_err_3397590 != null) {
                            _gotoNext = 3397631i32;
                        } else {
                            _gotoNext = 3397670i32;
                        };
                    } else if (__value__ == (3397631i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3397590 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3397670i32;
                    } else if (__value__ == (3397670i32)) {
                        _p_3395002._literal(_c_3397581);
                        _lit_3397501 = _rest_3397584?.__copy__();
                        _gotoNext = 3397559i32;
                    } else if (__value__ == (3397712i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3397732i32)) {
                        _p_3395002._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3395114 = (_t_3395114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3397814i32)) {
                        _re_3397814 = _p_3395002._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3397814.flags = _p_3395002._flags;
                        if ((((_t_3395114.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3395114[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3395114[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3397970i32;
                        } else {
                            _gotoNext = 3398212i32;
                        };
                    } else if (__value__ == (3397970i32)) {
                        {
                            var __tmp__ = _p_3395002._parseUnicodeClass(_t_3395114?.__copy__(), (_re_3397814.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3397976 = __tmp__._0;
                            _rest_3397979 = __tmp__._1?.__copy__();
                            _err_3397985 = __tmp__._2;
                        };
                        if (_err_3397985 != null) {
                            _gotoNext = 3398047i32;
                        } else {
                            _gotoNext = 3398080i32;
                        };
                    } else if (__value__ == (3398047i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3397985 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3398080i32;
                    } else if (__value__ == (3398080i32)) {
                        if (_r_3397976 != null) {
                            _gotoNext = 3398092i32;
                        } else {
                            _gotoNext = 3398212i32;
                        };
                    } else if (__value__ == (3398092i32)) {
                        _re_3397814.rune = _r_3397976;
                        _t_3395114 = _rest_3397979?.__copy__();
                        _p_3395002._push(_re_3397814);
                        bigSwitchBreak = true;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3398212i32)) {
                        {
                            {
                                var __tmp__ = _p_3395002._parsePerlClassEscape(_t_3395114?.__copy__(), (_re_3397814.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3398215 = __tmp__._0;
                                _rest_3398218 = __tmp__._1?.__copy__();
                            };
                            if (_r_3398215 != null) {
                                _gotoNext = 3398276i32;
                            } else {
                                _gotoNext = 3398350i32;
                            };
                        };
                    } else if (__value__ == (3398276i32)) {
                        _re_3397814.rune = _r_3398215;
                        _t_3395114 = _rest_3398218?.__copy__();
                        _p_3395002._push(_re_3397814);
                        bigSwitchBreak = true;
                        _gotoNext = 3395165i32;
                    } else if (__value__ == (3398350i32)) {
                        _p_3395002._reuse(_re_3397814);
                        {
                            {
                                var __tmp__ = _p_3395002._parseEscape(_t_3395114?.__copy__());
                                _c_3395022 = __tmp__._0;
                                _t_3395114 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3398450i32;
                            } else {
                                _gotoNext = 3398480i32;
                            };
                        };
                    } else if (__value__ == (3398450i32)) {
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
                        _gotoNext = 3398480i32;
                    } else if (__value__ == (3398480i32)) {
                        _p_3395002._literal(_c_3395022);
                        _gotoNext = 3398499i32;
                    } else if (__value__ == (3398499i32)) {
                        _lastRepeat_3395056 = _repeat_3395138?.__copy__();
                        _gotoNext = 3395122i32;
                    } else if (__value__ == (3398524i32)) {
                        _p_3395002._concat();
                        if (_p_3395002._swapVerticalBar()) {
                            _gotoNext = 3398559i32;
                        } else {
                            _gotoNext = 3398624i32;
                        };
                    } else if (__value__ == (3398559i32)) {
                        _p_3395002._stack = (_p_3395002._stack.__slice__(0, ((_p_3395002._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3398624i32;
                    } else if (__value__ == (3398624i32)) {
                        _p_3395002._alternate();
                        _n_3398640 = (_p_3395002._stack.length);
                        if (_n_3398640 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3398669i32;
                        } else {
                            _gotoNext = 3398716i32;
                        };
                    } else if (__value__ == (3398669i32)) {
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
                        _gotoNext = 3398716i32;
                    } else if (__value__ == (3398716i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3395002._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
