package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3436268:stdgo.Error = (null : stdgo.Error);
            var _rest_3436262:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _max_3434816:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n_3436923:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3434613:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3436501:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3436259:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3435873:stdgo.Error = (null : stdgo.Error);
            var _lit_3435784:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3434828:Bool = false;
            var _before_3434488:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3433339:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3433305:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3436498:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3435867:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3434811:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3433323:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _p_3433285:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _re_3436097:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _repeat_3433421:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3435864:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3434821:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3434796:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3433397:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3433143:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3433096i32;
                        } else {
                            _gotoNext = 3433277i32;
                        };
                    } else if (__value__ == (3433096i32)) {
                        {
                            _err_3433143 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3433143 != null) {
                                _gotoNext = 3433175i32;
                            } else {
                                _gotoNext = 3433202i32;
                            };
                        };
                    } else if (__value__ == (3433175i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3433143 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3433202i32;
                    } else if (__value__ == (3433202i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3433277i32;
                    } else if (__value__ == (3433277i32)) {
                        _p_3433285._flags = _flags;
                        _p_3433285._wholeRegexp = _s?.__copy__();
                        _t_3433397 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3433405i32;
                    } else if (__value__ == (3433405i32)) {
                        if (_t_3433397 != (stdgo.Go.str())) {
                            _gotoNext = 3433417i32;
                        } else {
                            _gotoNext = 3436807i32;
                        };
                    } else if (__value__ == (3433417i32)) {
                        _repeat_3433421 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3433435i32;
                    } else if (__value__ == (3433435i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3433448i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3433397[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3433561i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3433831i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3433928i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3434024i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3434139i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3434269i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3434383i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3434465i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3434766i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3435322i32;
                                } else {
                                    _gotoNext = 3433464i32;
                                };
                            };
                        } else {
                            _gotoNext = 3436782i32;
                        };
                    } else if (__value__ == (3433464i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3433397?.__copy__());
                                _c_3433305 = __tmp__._0;
                                _t_3433397 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3433515i32;
                            } else {
                                _gotoNext = 3433545i32;
                            };
                        };
                    } else if (__value__ == (3433515i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3433545i32;
                    } else if (__value__ == (3433545i32)) {
                        _p_3433285._literal(_c_3433305);
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3433561i32)) {
                        if ((((_p_3433285._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3433397.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3433397[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3433626i32;
                        } else {
                            _gotoNext = 3433769i32;
                        };
                    } else if (__value__ == (3433626i32)) {
                        {
                            {
                                var __tmp__ = _p_3433285._parsePerlFlags(_t_3433397?.__copy__());
                                _t_3433397 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3433722i32;
                            } else {
                                _gotoNext = 3433755i32;
                            };
                        };
                    } else if (__value__ == (3433722i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3433755i32;
                    } else if (__value__ == (3433755i32)) {
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3433769i32)) {
                        _p_3433285._numCap++;
                        _p_3433285._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3433285._numCap;
                        _t_3433397 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3433831i32)) {
                        {
                            _err = _p_3433285._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3433886i32;
                            } else {
                                _gotoNext = 3433916i32;
                            };
                        };
                    } else if (__value__ == (3433886i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3433916i32;
                    } else if (__value__ == (3433916i32)) {
                        _t_3433397 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3433928i32)) {
                        {
                            _err = _p_3433285._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3433982i32;
                            } else {
                                _gotoNext = 3434012i32;
                            };
                        };
                    } else if (__value__ == (3433982i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3434012i32;
                    } else if (__value__ == (3434012i32)) {
                        _t_3433397 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3434024i32)) {
                        if ((_p_3433285._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3434061i32;
                        } else {
                            _gotoNext = 3434095i32;
                        };
                    } else if (__value__ == (3434061i32)) {
                        _p_3433285._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3434127i32;
                    } else if (__value__ == (3434095i32)) {
                        _p_3433285._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3434127i32;
                    } else if (__value__ == (3434127i32)) {
                        _t_3433397 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3434139i32)) {
                        if ((_p_3433285._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3434176i32;
                        } else {
                            _gotoNext = 3434227i32;
                        };
                    } else if (__value__ == (3434176i32)) {
                        _p_3433285._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3433285._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3434257i32;
                    } else if (__value__ == (3434227i32)) {
                        _p_3433285._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3434257i32;
                    } else if (__value__ == (3434257i32)) {
                        _t_3433397 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3434269i32)) {
                        if ((_p_3433285._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3434304i32;
                        } else {
                            _gotoNext = 3434336i32;
                        };
                    } else if (__value__ == (3434304i32)) {
                        _p_3433285._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3434371i32;
                    } else if (__value__ == (3434336i32)) {
                        _p_3433285._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3434371i32;
                    } else if (__value__ == (3434371i32)) {
                        _t_3433397 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3434383i32)) {
                        {
                            {
                                var __tmp__ = _p_3433285._parseClass(_t_3433397?.__copy__());
                                _t_3433397 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3434436i32;
                            } else {
                                _gotoNext = 3436782i32;
                            };
                        };
                    } else if (__value__ == (3434436i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3434465i32)) {
                        _before_3434488 = _t_3433397?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3434503i32;
                    } else if (__value__ == (3434503i32)) {
                        {
                            final __value__ = _t_3433397[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3434520i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3434549i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3434578i32;
                            } else {
                                _gotoNext = 3434613i32;
                            };
                        };
                    } else if (__value__ == (3434520i32)) {
                        _op_3433323 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3434613i32;
                    } else if (__value__ == (3434549i32)) {
                        _op_3433323 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3434613i32;
                    } else if (__value__ == (3434578i32)) {
                        _op_3433323 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3434613i32;
                    } else if (__value__ == (3434613i32)) {
                        _after_3434613 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3433285._repeat(_op_3433323, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3434488?.__copy__(), _after_3434613?.__copy__(), _lastRepeat_3433339?.__copy__());
                                _after_3434613 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3434705i32;
                            } else {
                                _gotoNext = 3434735i32;
                            };
                        };
                    } else if (__value__ == (3434705i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3434735i32;
                    } else if (__value__ == (3434735i32)) {
                        _repeat_3433421 = _before_3434488?.__copy__();
                        _t_3433397 = _after_3434613?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3434766i32)) {
                        _op_3433323 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3434796 = _t_3433397?.__copy__();
                        {
                            var __tmp__ = _p_3433285._parseRepeat(_t_3433397?.__copy__());
                            _min_3434811 = __tmp__._0;
                            _max_3434816 = __tmp__._1;
                            _after_3434821 = __tmp__._2?.__copy__();
                            _ok_3434828 = __tmp__._3;
                        };
                        if (!_ok_3434828) {
                            _gotoNext = 3434861i32;
                        } else {
                            _gotoNext = 3434969i32;
                        };
                    } else if (__value__ == (3434861i32)) {
                        _p_3433285._literal((123 : stdgo.GoInt32));
                        _t_3433397 = (_t_3433397.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3434969i32)) {
                        if (((((_min_3434811 < (0 : stdgo.GoInt) : Bool) || (_min_3434811 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3434816 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3434816 >= (0 : stdgo.GoInt) : Bool) && (_min_3434811 > _max_3434816 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3435033i32;
                        } else {
                            _gotoNext = 3435183i32;
                        };
                    } else if (__value__ == (3435033i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3434796.__slice__(0, ((_before_3434796.length) - (_after_3434821.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3435183i32;
                    } else if (__value__ == (3435183i32)) {
                        {
                            {
                                var __tmp__ = _p_3433285._repeat(_op_3433323, _min_3434811, _max_3434816, _before_3434796?.__copy__(), _after_3434821?.__copy__(), _lastRepeat_3433339?.__copy__());
                                _after_3434821 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3435261i32;
                            } else {
                                _gotoNext = 3435291i32;
                            };
                        };
                    } else if (__value__ == (3435261i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3435291i32;
                    } else if (__value__ == (3435291i32)) {
                        _repeat_3433421 = _before_3434796?.__copy__();
                        _t_3433397 = _after_3434821?.__copy__();
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3435322i32)) {
                        if ((((_p_3433285._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3433397.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3435373i32;
                        } else {
                            _gotoNext = 3436097i32;
                        };
                    } else if (__value__ == (3435373i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3435379i32;
                    } else if (__value__ == (3435379i32)) {
                        {
                            final __value__ = _t_3433397[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3435397i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3435470i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3435546i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3435624i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3435719i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3436015i32;
                            } else {
                                _gotoNext = 3436097i32;
                            };
                        };
                    } else if (__value__ == (3435397i32)) {
                        _p_3433285._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3433397 = (_t_3433397.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3435470i32)) {
                        _p_3433285._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3433397 = (_t_3433397.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3435546i32)) {
                        _p_3433285._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3433397 = (_t_3433397.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3435624i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3433397.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3436097i32;
                    } else if (__value__ == (3435719i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3433397.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3435784 = __tmp__._0?.__copy__();
                            _t_3433397 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3435842i32;
                    } else if (__value__ == (3435842i32)) {
                        if (_lit_3435784 != (stdgo.Go.str())) {
                            _gotoNext = 3435856i32;
                        } else {
                            _gotoNext = 3435995i32;
                        };
                    } else if (__value__ == (3435856i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3435784?.__copy__());
                            _c_3435864 = __tmp__._0;
                            _rest_3435867 = __tmp__._1?.__copy__();
                            _err_3435873 = __tmp__._2;
                        };
                        if (_err_3435873 != null) {
                            _gotoNext = 3435914i32;
                        } else {
                            _gotoNext = 3435953i32;
                        };
                    } else if (__value__ == (3435914i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3435873 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3435953i32;
                    } else if (__value__ == (3435953i32)) {
                        _p_3433285._literal(_c_3435864);
                        _lit_3435784 = _rest_3435867?.__copy__();
                        _gotoNext = 3435842i32;
                    } else if (__value__ == (3435995i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3436015i32)) {
                        _p_3433285._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3433397 = (_t_3433397.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3436097i32)) {
                        _re_3436097 = _p_3433285._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3436097.flags = _p_3433285._flags;
                        if ((((_t_3433397.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3433397[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3433397[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3436253i32;
                        } else {
                            _gotoNext = 3436495i32;
                        };
                    } else if (__value__ == (3436253i32)) {
                        {
                            var __tmp__ = _p_3433285._parseUnicodeClass(_t_3433397?.__copy__(), (_re_3436097.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3436259 = __tmp__._0;
                            _rest_3436262 = __tmp__._1?.__copy__();
                            _err_3436268 = __tmp__._2;
                        };
                        if (_err_3436268 != null) {
                            _gotoNext = 3436330i32;
                        } else {
                            _gotoNext = 3436363i32;
                        };
                    } else if (__value__ == (3436330i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3436268 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3436363i32;
                    } else if (__value__ == (3436363i32)) {
                        if (_r_3436259 != null) {
                            _gotoNext = 3436375i32;
                        } else {
                            _gotoNext = 3436495i32;
                        };
                    } else if (__value__ == (3436375i32)) {
                        _re_3436097.rune = _r_3436259;
                        _t_3433397 = _rest_3436262?.__copy__();
                        _p_3433285._push(_re_3436097);
                        bigSwitchBreak = true;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3436495i32)) {
                        {
                            {
                                var __tmp__ = _p_3433285._parsePerlClassEscape(_t_3433397?.__copy__(), (_re_3436097.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3436498 = __tmp__._0;
                                _rest_3436501 = __tmp__._1?.__copy__();
                            };
                            if (_r_3436498 != null) {
                                _gotoNext = 3436559i32;
                            } else {
                                _gotoNext = 3436633i32;
                            };
                        };
                    } else if (__value__ == (3436559i32)) {
                        _re_3436097.rune = _r_3436498;
                        _t_3433397 = _rest_3436501?.__copy__();
                        _p_3433285._push(_re_3436097);
                        bigSwitchBreak = true;
                        _gotoNext = 3433448i32;
                    } else if (__value__ == (3436633i32)) {
                        _p_3433285._reuse(_re_3436097);
                        {
                            {
                                var __tmp__ = _p_3433285._parseEscape(_t_3433397?.__copy__());
                                _c_3433305 = __tmp__._0;
                                _t_3433397 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3436733i32;
                            } else {
                                _gotoNext = 3436763i32;
                            };
                        };
                    } else if (__value__ == (3436733i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3436763i32;
                    } else if (__value__ == (3436763i32)) {
                        _p_3433285._literal(_c_3433305);
                        _gotoNext = 3436782i32;
                    } else if (__value__ == (3436782i32)) {
                        _lastRepeat_3433339 = _repeat_3433421?.__copy__();
                        _gotoNext = 3433405i32;
                    } else if (__value__ == (3436807i32)) {
                        _p_3433285._concat();
                        if (_p_3433285._swapVerticalBar()) {
                            _gotoNext = 3436842i32;
                        } else {
                            _gotoNext = 3436907i32;
                        };
                    } else if (__value__ == (3436842i32)) {
                        _p_3433285._stack = (_p_3433285._stack.__slice__(0, ((_p_3433285._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3436907i32;
                    } else if (__value__ == (3436907i32)) {
                        _p_3433285._alternate();
                        _n_3436923 = (_p_3433285._stack.length);
                        if (_n_3436923 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3436952i32;
                        } else {
                            _gotoNext = 3436999i32;
                        };
                    } else if (__value__ == (3436952i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3436999i32;
                    } else if (__value__ == (3436999i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3433285._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
