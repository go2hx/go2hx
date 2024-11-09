package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3532147:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3530771:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3533206:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3532784:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3532150:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3531094:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3529622:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3531099:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3530896:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3529568:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _op_3529606:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var bigSwitchBreak = false;
            var _re_3532380:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3532067:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3529704:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3529588:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3529426:stdgo.Error = (null : stdgo.Error);
            var _rest_3532545:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3532542:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3532156:stdgo.Error = (null : stdgo.Error);
            var _ok_3531111:Bool = false;
            var _after_3531104:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3529680:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3532781:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3532551:stdgo.Error = (null : stdgo.Error);
            var _before_3531079:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3529379i32;
                        } else {
                            _gotoNext = 3529560i32;
                        };
                    } else if (__value__ == (3529379i32)) {
                        {
                            _err_3529426 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3529426 != null) {
                                _gotoNext = 3529458i32;
                            } else {
                                _gotoNext = 3529485i32;
                            };
                        };
                    } else if (__value__ == (3529458i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3529426 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3529485i32;
                    } else if (__value__ == (3529485i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3529560i32;
                    } else if (__value__ == (3529560i32)) {
                        _p_3529568._flags = _flags;
                        _p_3529568._wholeRegexp = _s?.__copy__();
                        _t_3529680 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3529688i32;
                    } else if (__value__ == (3529688i32)) {
                        if (_t_3529680 != (stdgo.Go.str())) {
                            _gotoNext = 3529700i32;
                        } else {
                            _gotoNext = 3533090i32;
                        };
                    } else if (__value__ == (3529700i32)) {
                        _repeat_3529704 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3529718i32;
                    } else if (__value__ == (3529718i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3529731i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3529680[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529844i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530114i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530211i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530307i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530422i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530552i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530666i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530748i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3531049i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3531605i32;
                                } else {
                                    _gotoNext = 3529747i32;
                                };
                            };
                        } else {
                            _gotoNext = 3533065i32;
                        };
                    } else if (__value__ == (3529747i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3529680?.__copy__());
                                _c_3529588 = __tmp__._0;
                                _t_3529680 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3529798i32;
                            } else {
                                _gotoNext = 3529828i32;
                            };
                        };
                    } else if (__value__ == (3529798i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3529828i32;
                    } else if (__value__ == (3529828i32)) {
                        _p_3529568._literal(_c_3529588);
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3529844i32)) {
                        if ((((_p_3529568._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3529680.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3529680[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3529909i32;
                        } else {
                            _gotoNext = 3530052i32;
                        };
                    } else if (__value__ == (3529909i32)) {
                        {
                            {
                                var __tmp__ = _p_3529568._parsePerlFlags(_t_3529680?.__copy__());
                                _t_3529680 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530005i32;
                            } else {
                                _gotoNext = 3530038i32;
                            };
                        };
                    } else if (__value__ == (3530005i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3530038i32;
                    } else if (__value__ == (3530038i32)) {
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530052i32)) {
                        _p_3529568._numCap++;
                        _p_3529568._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3529568._numCap;
                        _t_3529680 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530114i32)) {
                        {
                            _err = _p_3529568._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3530169i32;
                            } else {
                                _gotoNext = 3530199i32;
                            };
                        };
                    } else if (__value__ == (3530169i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3530199i32;
                    } else if (__value__ == (3530199i32)) {
                        _t_3529680 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530211i32)) {
                        {
                            _err = _p_3529568._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3530265i32;
                            } else {
                                _gotoNext = 3530295i32;
                            };
                        };
                    } else if (__value__ == (3530265i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3530295i32;
                    } else if (__value__ == (3530295i32)) {
                        _t_3529680 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530307i32)) {
                        if ((_p_3529568._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3530344i32;
                        } else {
                            _gotoNext = 3530378i32;
                        };
                    } else if (__value__ == (3530344i32)) {
                        _p_3529568._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3530410i32;
                    } else if (__value__ == (3530378i32)) {
                        _gotoNext = 3530378i32;
                        _p_3529568._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3530410i32;
                    } else if (__value__ == (3530410i32)) {
                        _t_3529680 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530422i32)) {
                        if ((_p_3529568._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3530459i32;
                        } else {
                            _gotoNext = 3530510i32;
                        };
                    } else if (__value__ == (3530459i32)) {
                        _p_3529568._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3529568._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3530540i32;
                    } else if (__value__ == (3530510i32)) {
                        _gotoNext = 3530510i32;
                        _p_3529568._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3530540i32;
                    } else if (__value__ == (3530540i32)) {
                        _t_3529680 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530552i32)) {
                        if ((_p_3529568._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3530587i32;
                        } else {
                            _gotoNext = 3530619i32;
                        };
                    } else if (__value__ == (3530587i32)) {
                        _p_3529568._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3530654i32;
                    } else if (__value__ == (3530619i32)) {
                        _gotoNext = 3530619i32;
                        _p_3529568._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3530654i32;
                    } else if (__value__ == (3530654i32)) {
                        _t_3529680 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530666i32)) {
                        {
                            {
                                var __tmp__ = _p_3529568._parseClass(_t_3529680?.__copy__());
                                _t_3529680 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530719i32;
                            } else {
                                _gotoNext = 3533065i32;
                            };
                        };
                    } else if (__value__ == (3530719i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3530748i32)) {
                        _before_3530771 = _t_3529680?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3530786i32;
                    } else if (__value__ == (3530786i32)) {
                        {
                            final __value__ = _t_3529680[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3530803i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3530832i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3530861i32;
                            } else {
                                _gotoNext = 3530896i32;
                            };
                        };
                    } else if (__value__ == (3530803i32)) {
                        _op_3529606 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3530896i32;
                    } else if (__value__ == (3530832i32)) {
                        _op_3529606 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3530896i32;
                    } else if (__value__ == (3530861i32)) {
                        _op_3529606 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3530896i32;
                    } else if (__value__ == (3530896i32)) {
                        _after_3530896 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3529568._repeat(_op_3529606, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3530771?.__copy__(), _after_3530896?.__copy__(), _lastRepeat_3529622?.__copy__());
                                _after_3530896 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530988i32;
                            } else {
                                _gotoNext = 3531018i32;
                            };
                        };
                    } else if (__value__ == (3530988i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3531018i32;
                    } else if (__value__ == (3531018i32)) {
                        _repeat_3529704 = _before_3530771?.__copy__();
                        _t_3529680 = _after_3530896?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3531049i32)) {
                        _op_3529606 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3531079 = _t_3529680?.__copy__();
                        {
                            var __tmp__ = _p_3529568._parseRepeat(_t_3529680?.__copy__());
                            _min_3531094 = __tmp__._0;
                            _max_3531099 = __tmp__._1;
                            _after_3531104 = __tmp__._2?.__copy__();
                            _ok_3531111 = __tmp__._3;
                        };
                        if (!_ok_3531111) {
                            _gotoNext = 3531144i32;
                        } else {
                            _gotoNext = 3531252i32;
                        };
                    } else if (__value__ == (3531144i32)) {
                        _p_3529568._literal((123 : stdgo.GoInt32));
                        _t_3529680 = (_t_3529680.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3531252i32)) {
                        if (((((_min_3531094 < (0 : stdgo.GoInt) : Bool) || (_min_3531094 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3531099 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3531099 >= (0 : stdgo.GoInt) : Bool) && (_min_3531094 > _max_3531099 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3531316i32;
                        } else {
                            _gotoNext = 3531466i32;
                        };
                    } else if (__value__ == (3531316i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3531079.__slice__(0, ((_before_3531079.length) - (_after_3531104.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3531466i32;
                    } else if (__value__ == (3531466i32)) {
                        {
                            {
                                var __tmp__ = _p_3529568._repeat(_op_3529606, _min_3531094, _max_3531099, _before_3531079?.__copy__(), _after_3531104?.__copy__(), _lastRepeat_3529622?.__copy__());
                                _after_3531104 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3531544i32;
                            } else {
                                _gotoNext = 3531574i32;
                            };
                        };
                    } else if (__value__ == (3531544i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3531574i32;
                    } else if (__value__ == (3531574i32)) {
                        _repeat_3529704 = _before_3531079?.__copy__();
                        _t_3529680 = _after_3531104?.__copy__();
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3531605i32)) {
                        if ((((_p_3529568._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3529680.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3531656i32;
                        } else {
                            _gotoNext = 3532380i32;
                        };
                    } else if (__value__ == (3531656i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3531662i32;
                    } else if (__value__ == (3531662i32)) {
                        {
                            final __value__ = _t_3529680[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3531680i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3531753i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3531829i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3531907i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3532002i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3532298i32;
                            } else {
                                _gotoNext = 3532380i32;
                            };
                        };
                    } else if (__value__ == (3531680i32)) {
                        _p_3529568._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3529680 = (_t_3529680.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3531753i32)) {
                        _p_3529568._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3529680 = (_t_3529680.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3531829i32)) {
                        _p_3529568._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3529680 = (_t_3529680.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3531907i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3529680.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3532380i32;
                    } else if (__value__ == (3532002i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3529680.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3532067 = __tmp__._0?.__copy__();
                            _t_3529680 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3532125i32;
                    } else if (__value__ == (3532125i32)) {
                        if (_lit_3532067 != (stdgo.Go.str())) {
                            _gotoNext = 3532139i32;
                        } else {
                            _gotoNext = 3532278i32;
                        };
                    } else if (__value__ == (3532139i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3532067?.__copy__());
                            _c_3532147 = __tmp__._0;
                            _rest_3532150 = __tmp__._1?.__copy__();
                            _err_3532156 = __tmp__._2;
                        };
                        if (_err_3532156 != null) {
                            _gotoNext = 3532197i32;
                        } else {
                            _gotoNext = 3532236i32;
                        };
                    } else if (__value__ == (3532197i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3532156 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3532236i32;
                    } else if (__value__ == (3532236i32)) {
                        _p_3529568._literal(_c_3532147);
                        _lit_3532067 = _rest_3532150?.__copy__();
                        _gotoNext = 3532125i32;
                    } else if (__value__ == (3532278i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3532298i32)) {
                        _p_3529568._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3529680 = (_t_3529680.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3532380i32)) {
                        _re_3532380 = _p_3529568._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3532380.flags = _p_3529568._flags;
                        if ((((_t_3529680.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3529680[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3529680[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3532536i32;
                        } else {
                            _gotoNext = 3532778i32;
                        };
                    } else if (__value__ == (3532536i32)) {
                        {
                            var __tmp__ = _p_3529568._parseUnicodeClass(_t_3529680?.__copy__(), (_re_3532380.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3532542 = __tmp__._0;
                            _rest_3532545 = __tmp__._1?.__copy__();
                            _err_3532551 = __tmp__._2;
                        };
                        if (_err_3532551 != null) {
                            _gotoNext = 3532613i32;
                        } else {
                            _gotoNext = 3532646i32;
                        };
                    } else if (__value__ == (3532613i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3532551 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3532646i32;
                    } else if (__value__ == (3532646i32)) {
                        if (_r_3532542 != null) {
                            _gotoNext = 3532658i32;
                        } else {
                            _gotoNext = 3532778i32;
                        };
                    } else if (__value__ == (3532658i32)) {
                        _re_3532380.rune = _r_3532542;
                        _t_3529680 = _rest_3532545?.__copy__();
                        _p_3529568._push(_re_3532380);
                        bigSwitchBreak = true;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3532778i32)) {
                        {
                            {
                                var __tmp__ = _p_3529568._parsePerlClassEscape(_t_3529680?.__copy__(), (_re_3532380.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3532781 = __tmp__._0;
                                _rest_3532784 = __tmp__._1?.__copy__();
                            };
                            if (_r_3532781 != null) {
                                _gotoNext = 3532842i32;
                            } else {
                                _gotoNext = 3532916i32;
                            };
                        };
                    } else if (__value__ == (3532842i32)) {
                        _re_3532380.rune = _r_3532781;
                        _t_3529680 = _rest_3532784?.__copy__();
                        _p_3529568._push(_re_3532380);
                        bigSwitchBreak = true;
                        _gotoNext = 3529731i32;
                    } else if (__value__ == (3532916i32)) {
                        _p_3529568._reuse(_re_3532380);
                        {
                            {
                                var __tmp__ = _p_3529568._parseEscape(_t_3529680?.__copy__());
                                _c_3529588 = __tmp__._0;
                                _t_3529680 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3533016i32;
                            } else {
                                _gotoNext = 3533046i32;
                            };
                        };
                    } else if (__value__ == (3533016i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3533046i32;
                    } else if (__value__ == (3533046i32)) {
                        _p_3529568._literal(_c_3529588);
                        _gotoNext = 3533065i32;
                    } else if (__value__ == (3533065i32)) {
                        _lastRepeat_3529622 = _repeat_3529704?.__copy__();
                        _gotoNext = 3529688i32;
                    } else if (__value__ == (3533090i32)) {
                        _p_3529568._concat();
                        if (_p_3529568._swapVerticalBar()) {
                            _gotoNext = 3533125i32;
                        } else {
                            _gotoNext = 3533190i32;
                        };
                    } else if (__value__ == (3533125i32)) {
                        _p_3529568._stack = (_p_3529568._stack.__slice__(0, ((_p_3529568._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3533190i32;
                    } else if (__value__ == (3533190i32)) {
                        _p_3529568._alternate();
                        _n_3533206 = (_p_3529568._stack.length);
                        if (_n_3533206 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3533235i32;
                        } else {
                            _gotoNext = 3533282i32;
                        };
                    } else if (__value__ == (3533235i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3533282i32;
                    } else if (__value__ == (3533282i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3529568._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
