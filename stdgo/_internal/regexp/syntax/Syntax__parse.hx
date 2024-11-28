package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3504537:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3502766:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3505201:stdgo.GoInt = (0 : stdgo.GoInt);
            var _max_3503094:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3503089:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3501699:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3501601:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3501583:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _p_3501563:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3504145:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3501617:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3504375:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3504062:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3503099:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3501421:stdgo.Error = (null : stdgo.Error);
            var _rest_3504540:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3503074:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3504546:stdgo.Error = (null : stdgo.Error);
            var _err_3504151:stdgo.Error = (null : stdgo.Error);
            var _c_3504142:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3503106:Bool = false;
            var _after_3502891:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3501675:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3504779:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3504776:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
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
                            _gotoNext = 3501374i32;
                        } else {
                            _gotoNext = 3501555i32;
                        };
                    } else if (__value__ == (3501374i32)) {
                        {
                            _err_3501421 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3501421 != null) {
                                _gotoNext = 3501453i32;
                            } else {
                                _gotoNext = 3501480i32;
                            };
                        };
                    } else if (__value__ == (3501453i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err = _err_3501421 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3501480i32;
                    } else if (__value__ == (3501480i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : _err = (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3501555i32;
                    } else if (__value__ == (3501555i32)) {
                        _p_3501563._flags = _flags;
                        _p_3501563._wholeRegexp = _s?.__copy__();
                        _t_3501675 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3501683i32;
                    } else if (__value__ == (3501683i32)) {
                        if (_t_3501675 != (stdgo.Go.str())) {
                            _gotoNext = 3501695i32;
                        } else {
                            _gotoNext = 3505085i32;
                        };
                    } else if (__value__ == (3501695i32)) {
                        _repeat_3501699 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3501713i32;
                    } else if (__value__ == (3501713i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3501726i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3501675[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3501839i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3502109i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3502206i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3502302i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3502417i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3502547i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3502661i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3502743i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3503044i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3503600i32;
                                } else {
                                    _gotoNext = 3501742i32;
                                };
                            };
                        } else {
                            _gotoNext = 3505060i32;
                        };
                    } else if (__value__ == (3501742i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3501675?.__copy__());
                                _c_3501583 = __tmp__._0;
                                _t_3501675 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3501793i32;
                            } else {
                                _gotoNext = 3501823i32;
                            };
                        };
                    } else if (__value__ == (3501793i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3501823i32;
                    } else if (__value__ == (3501823i32)) {
                        _p_3501563._literal(_c_3501583);
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3501839i32)) {
                        if ((((_p_3501563._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3501675.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3501675[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3501904i32;
                        } else {
                            _gotoNext = 3502047i32;
                        };
                    } else if (__value__ == (3501904i32)) {
                        {
                            {
                                var __tmp__ = _p_3501563._parsePerlFlags(_t_3501675?.__copy__());
                                _t_3501675 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3502000i32;
                            } else {
                                _gotoNext = 3502033i32;
                            };
                        };
                    } else if (__value__ == (3502000i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3502033i32;
                    } else if (__value__ == (3502033i32)) {
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502047i32)) {
                        _p_3501563._numCap++;
                        _p_3501563._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3501563._numCap;
                        _t_3501675 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502109i32)) {
                        {
                            _err = _p_3501563._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3502164i32;
                            } else {
                                _gotoNext = 3502194i32;
                            };
                        };
                    } else if (__value__ == (3502164i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3502194i32;
                    } else if (__value__ == (3502194i32)) {
                        _t_3501675 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502206i32)) {
                        {
                            _err = _p_3501563._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3502260i32;
                            } else {
                                _gotoNext = 3502290i32;
                            };
                        };
                    } else if (__value__ == (3502260i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3502290i32;
                    } else if (__value__ == (3502290i32)) {
                        _t_3501675 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502302i32)) {
                        if ((_p_3501563._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3502339i32;
                        } else {
                            _gotoNext = 3502373i32;
                        };
                    } else if (__value__ == (3502339i32)) {
                        _p_3501563._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3502405i32;
                    } else if (__value__ == (3502373i32)) {
                        _gotoNext = 3502373i32;
                        _p_3501563._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3502405i32;
                    } else if (__value__ == (3502405i32)) {
                        _t_3501675 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502417i32)) {
                        if ((_p_3501563._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3502454i32;
                        } else {
                            _gotoNext = 3502505i32;
                        };
                    } else if (__value__ == (3502454i32)) {
                        _p_3501563._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3501563._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3502535i32;
                    } else if (__value__ == (3502505i32)) {
                        _gotoNext = 3502505i32;
                        _p_3501563._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3502535i32;
                    } else if (__value__ == (3502535i32)) {
                        _t_3501675 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502547i32)) {
                        if ((_p_3501563._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3502582i32;
                        } else {
                            _gotoNext = 3502614i32;
                        };
                    } else if (__value__ == (3502582i32)) {
                        _p_3501563._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3502649i32;
                    } else if (__value__ == (3502614i32)) {
                        _gotoNext = 3502614i32;
                        _p_3501563._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3502649i32;
                    } else if (__value__ == (3502649i32)) {
                        _t_3501675 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502661i32)) {
                        {
                            {
                                var __tmp__ = _p_3501563._parseClass(_t_3501675?.__copy__());
                                _t_3501675 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3502714i32;
                            } else {
                                _gotoNext = 3505060i32;
                            };
                        };
                    } else if (__value__ == (3502714i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3502743i32)) {
                        _before_3502766 = _t_3501675?.__copy__();
                        _gotoNext = 3502781i32;
                    } else if (__value__ == (3502781i32)) {
                        {
                            final __value__ = _t_3501675[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3502798i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3502827i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3502856i32;
                            } else {
                                _gotoNext = 3502891i32;
                            };
                        };
                    } else if (__value__ == (3502798i32)) {
                        _op_3501601 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3502891i32;
                    } else if (__value__ == (3502827i32)) {
                        _op_3501601 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3502891i32;
                    } else if (__value__ == (3502856i32)) {
                        _op_3501601 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3502891i32;
                    } else if (__value__ == (3502891i32)) {
                        _after_3502891 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3501563._repeat(_op_3501601, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3502766?.__copy__(), _after_3502891?.__copy__(), _lastRepeat_3501617?.__copy__());
                                _after_3502891 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3502983i32;
                            } else {
                                _gotoNext = 3503013i32;
                            };
                        };
                    } else if (__value__ == (3502983i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3503013i32;
                    } else if (__value__ == (3503013i32)) {
                        _repeat_3501699 = _before_3502766?.__copy__();
                        _t_3501675 = _after_3502891?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3503044i32)) {
                        _op_3501601 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3503074 = _t_3501675?.__copy__();
                        {
                            var __tmp__ = _p_3501563._parseRepeat(_t_3501675?.__copy__());
                            _min_3503089 = __tmp__._0;
                            _max_3503094 = __tmp__._1;
                            _after_3503099 = __tmp__._2?.__copy__();
                            _ok_3503106 = __tmp__._3;
                        };
                        if (!_ok_3503106) {
                            _gotoNext = 3503139i32;
                        } else {
                            _gotoNext = 3503247i32;
                        };
                    } else if (__value__ == (3503139i32)) {
                        _p_3501563._literal((123 : stdgo.GoInt32));
                        _t_3501675 = (_t_3501675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3503247i32)) {
                        if (((((_min_3503089 < (0 : stdgo.GoInt) : Bool) || (_min_3503089 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3503094 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3503094 >= (0 : stdgo.GoInt) : Bool) && (_min_3503089 > _max_3503094 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3503311i32;
                        } else {
                            _gotoNext = 3503461i32;
                        };
                    } else if (__value__ == (3503311i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3503074.__slice__(0, ((_before_3503074.length) - (_after_3503099.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3503461i32;
                    } else if (__value__ == (3503461i32)) {
                        {
                            {
                                var __tmp__ = _p_3501563._repeat(_op_3501601, _min_3503089, _max_3503094, _before_3503074?.__copy__(), _after_3503099?.__copy__(), _lastRepeat_3501617?.__copy__());
                                _after_3503099 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3503539i32;
                            } else {
                                _gotoNext = 3503569i32;
                            };
                        };
                    } else if (__value__ == (3503539i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3503569i32;
                    } else if (__value__ == (3503569i32)) {
                        _repeat_3501699 = _before_3503074?.__copy__();
                        _t_3501675 = _after_3503099?.__copy__();
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3503600i32)) {
                        if ((((_p_3501563._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3501675.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3503651i32;
                        } else {
                            _gotoNext = 3504375i32;
                        };
                    } else if (__value__ == (3503651i32)) {
                        _gotoNext = 3503657i32;
                    } else if (__value__ == (3503657i32)) {
                        {
                            final __value__ = _t_3501675[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3503675i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3503748i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3503824i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3503902i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3503997i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3504293i32;
                            } else {
                                _gotoNext = 3504375i32;
                            };
                        };
                    } else if (__value__ == (3503675i32)) {
                        _p_3501563._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3501675 = (_t_3501675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3503748i32)) {
                        _p_3501563._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3501675 = (_t_3501675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3503824i32)) {
                        _p_3501563._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3501675 = (_t_3501675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3503902i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3501675.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3504375i32;
                    } else if (__value__ == (3503997i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3501675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3504062 = __tmp__._0?.__copy__();
                            _t_3501675 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3504120i32;
                    } else if (__value__ == (3504120i32)) {
                        if (_lit_3504062 != (stdgo.Go.str())) {
                            _gotoNext = 3504134i32;
                        } else {
                            _gotoNext = 3504273i32;
                        };
                    } else if (__value__ == (3504134i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3504062?.__copy__());
                            _c_3504142 = __tmp__._0;
                            _rest_3504145 = __tmp__._1?.__copy__();
                            _err_3504151 = __tmp__._2;
                        };
                        if (_err_3504151 != null) {
                            _gotoNext = 3504192i32;
                        } else {
                            _gotoNext = 3504231i32;
                        };
                    } else if (__value__ == (3504192i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err = _err_3504151 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3504231i32;
                    } else if (__value__ == (3504231i32)) {
                        _p_3501563._literal(_c_3504142);
                        _lit_3504062 = _rest_3504145?.__copy__();
                        _gotoNext = 3504120i32;
                    } else if (__value__ == (3504273i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3504293i32)) {
                        _p_3501563._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3501675 = (_t_3501675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3504375i32)) {
                        _re_3504375 = _p_3501563._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3504375.flags = _p_3501563._flags;
                        if ((((_t_3501675.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3501675[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3501675[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3504531i32;
                        } else {
                            _gotoNext = 3504773i32;
                        };
                    } else if (__value__ == (3504531i32)) {
                        {
                            var __tmp__ = _p_3501563._parseUnicodeClass(_t_3501675?.__copy__(), (_re_3504375.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3504537 = __tmp__._0;
                            _rest_3504540 = __tmp__._1?.__copy__();
                            _err_3504546 = __tmp__._2;
                        };
                        if (_err_3504546 != null) {
                            _gotoNext = 3504608i32;
                        } else {
                            _gotoNext = 3504641i32;
                        };
                    } else if (__value__ == (3504608i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err = _err_3504546 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3504641i32;
                    } else if (__value__ == (3504641i32)) {
                        if (_r_3504537 != null) {
                            _gotoNext = 3504653i32;
                        } else {
                            _gotoNext = 3504773i32;
                        };
                    } else if (__value__ == (3504653i32)) {
                        _re_3504375.rune = _r_3504537;
                        _t_3501675 = _rest_3504540?.__copy__();
                        _p_3501563._push(_re_3504375);
                        bigSwitchBreak = true;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3504773i32)) {
                        {
                            {
                                var __tmp__ = _p_3501563._parsePerlClassEscape(_t_3501675?.__copy__(), (_re_3504375.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3504776 = __tmp__._0;
                                _rest_3504779 = __tmp__._1?.__copy__();
                            };
                            if (_r_3504776 != null) {
                                _gotoNext = 3504837i32;
                            } else {
                                _gotoNext = 3504911i32;
                            };
                        };
                    } else if (__value__ == (3504837i32)) {
                        _re_3504375.rune = _r_3504776;
                        _t_3501675 = _rest_3504779?.__copy__();
                        _p_3501563._push(_re_3504375);
                        bigSwitchBreak = true;
                        _gotoNext = 3501726i32;
                    } else if (__value__ == (3504911i32)) {
                        _p_3501563._reuse(_re_3504375);
                        {
                            {
                                var __tmp__ = _p_3501563._parseEscape(_t_3501675?.__copy__());
                                _c_3501583 = __tmp__._0;
                                _t_3501675 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3505011i32;
                            } else {
                                _gotoNext = 3505041i32;
                            };
                        };
                    } else if (__value__ == (3505011i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3505041i32;
                    } else if (__value__ == (3505041i32)) {
                        _p_3501563._literal(_c_3501583);
                        _gotoNext = 3505060i32;
                    } else if (__value__ == (3505060i32)) {
                        _lastRepeat_3501617 = _repeat_3501699?.__copy__();
                        _gotoNext = 3501683i32;
                    } else if (__value__ == (3505085i32)) {
                        _p_3501563._concat();
                        if (_p_3501563._swapVerticalBar()) {
                            _gotoNext = 3505120i32;
                        } else {
                            _gotoNext = 3505185i32;
                        };
                    } else if (__value__ == (3505120i32)) {
                        _p_3501563._stack = (_p_3501563._stack.__slice__(0, ((_p_3501563._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3505185i32;
                    } else if (__value__ == (3505185i32)) {
                        _p_3501563._alternate();
                        _n_3505201 = (_p_3501563._stack.length);
                        if (_n_3505201 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3505230i32;
                        } else {
                            _gotoNext = 3505277i32;
                        };
                    } else if (__value__ == (3505230i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = null, _1 : _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3505277i32;
                    } else if (__value__ == (3505277i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0 = _p_3501563._stack[(0 : stdgo.GoInt)], _1 : _err = (null : stdgo.Error) };
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
