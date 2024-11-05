package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3051584:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3048743:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3048607:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3051820:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3051189:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3051419:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3051195:stdgo.Error = (null : stdgo.Error);
            var _c_3051186:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3050150:Bool = false;
            var _min_3050133:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3050118:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3048719:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3051823:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3051590:stdgo.Error = (null : stdgo.Error);
            var _lit_3051106:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3049935:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3048661:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3048645:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3048627:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3048465:stdgo.Error = (null : stdgo.Error);
            var _n_3052245:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _r_3051581:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3050143:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3050138:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3049810:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3048418i32;
                        } else {
                            _gotoNext = 3048599i32;
                        };
                    } else if (__value__ == (3048418i32)) {
                        {
                            _err_3048465 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3048465 != null) {
                                _gotoNext = 3048497i32;
                            } else {
                                _gotoNext = 3048524i32;
                            };
                        };
                    } else if (__value__ == (3048497i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3048465 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3048524i32;
                    } else if (__value__ == (3048524i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3048599i32;
                    } else if (__value__ == (3048599i32)) {
                        _p_3048607._flags = _flags;
                        _p_3048607._wholeRegexp = _s?.__copy__();
                        _t_3048719 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3048727i32;
                    } else if (__value__ == (3048727i32)) {
                        if (_t_3048719 != (stdgo.Go.str())) {
                            _gotoNext = 3048739i32;
                        } else {
                            _gotoNext = 3052129i32;
                        };
                    } else if (__value__ == (3048739i32)) {
                        _repeat_3048743 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3048757i32;
                    } else if (__value__ == (3048757i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3048770i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3048719[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3048883i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3049153i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3049250i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3049346i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3049461i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3049591i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3049705i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3049787i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3050088i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3050644i32;
                                } else {
                                    _gotoNext = 3048786i32;
                                };
                            };
                        } else {
                            _gotoNext = 3052104i32;
                        };
                    } else if (__value__ == (3048786i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3048719?.__copy__());
                                _c_3048627 = __tmp__._0;
                                _t_3048719 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3048837i32;
                            } else {
                                _gotoNext = 3048867i32;
                            };
                        };
                    } else if (__value__ == (3048837i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3048867i32;
                    } else if (__value__ == (3048867i32)) {
                        _p_3048607._literal(_c_3048627);
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3048883i32)) {
                        if ((((_p_3048607._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3048719.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3048719[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3048948i32;
                        } else {
                            _gotoNext = 3049091i32;
                        };
                    } else if (__value__ == (3048948i32)) {
                        {
                            {
                                var __tmp__ = _p_3048607._parsePerlFlags(_t_3048719?.__copy__());
                                _t_3048719 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3049044i32;
                            } else {
                                _gotoNext = 3049077i32;
                            };
                        };
                    } else if (__value__ == (3049044i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3049077i32;
                    } else if (__value__ == (3049077i32)) {
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049091i32)) {
                        _p_3048607._numCap++;
                        _p_3048607._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3048607._numCap;
                        _t_3048719 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049153i32)) {
                        {
                            _err = _p_3048607._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3049208i32;
                            } else {
                                _gotoNext = 3049238i32;
                            };
                        };
                    } else if (__value__ == (3049208i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3049238i32;
                    } else if (__value__ == (3049238i32)) {
                        _t_3048719 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049250i32)) {
                        {
                            _err = _p_3048607._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3049304i32;
                            } else {
                                _gotoNext = 3049334i32;
                            };
                        };
                    } else if (__value__ == (3049304i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3049334i32;
                    } else if (__value__ == (3049334i32)) {
                        _t_3048719 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049346i32)) {
                        if ((_p_3048607._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3049383i32;
                        } else {
                            _gotoNext = 3049417i32;
                        };
                    } else if (__value__ == (3049383i32)) {
                        _p_3048607._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3049449i32;
                    } else if (__value__ == (3049417i32)) {
                        _p_3048607._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3049449i32;
                    } else if (__value__ == (3049449i32)) {
                        _t_3048719 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049461i32)) {
                        if ((_p_3048607._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3049498i32;
                        } else {
                            _gotoNext = 3049549i32;
                        };
                    } else if (__value__ == (3049498i32)) {
                        _p_3048607._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3048607._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3049579i32;
                    } else if (__value__ == (3049549i32)) {
                        _p_3048607._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3049579i32;
                    } else if (__value__ == (3049579i32)) {
                        _t_3048719 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049591i32)) {
                        if ((_p_3048607._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3049626i32;
                        } else {
                            _gotoNext = 3049658i32;
                        };
                    } else if (__value__ == (3049626i32)) {
                        _p_3048607._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3049693i32;
                    } else if (__value__ == (3049658i32)) {
                        _p_3048607._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3049693i32;
                    } else if (__value__ == (3049693i32)) {
                        _t_3048719 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049705i32)) {
                        {
                            {
                                var __tmp__ = _p_3048607._parseClass(_t_3048719?.__copy__());
                                _t_3048719 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3049758i32;
                            } else {
                                _gotoNext = 3052104i32;
                            };
                        };
                    } else if (__value__ == (3049758i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3049787i32)) {
                        _before_3049810 = _t_3048719?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3049825i32;
                    } else if (__value__ == (3049825i32)) {
                        {
                            final __value__ = _t_3048719[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3049842i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3049871i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3049900i32;
                            } else {
                                _gotoNext = 3049935i32;
                            };
                        };
                    } else if (__value__ == (3049842i32)) {
                        _op_3048645 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3049935i32;
                    } else if (__value__ == (3049871i32)) {
                        _op_3048645 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3049935i32;
                    } else if (__value__ == (3049900i32)) {
                        _op_3048645 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3049935i32;
                    } else if (__value__ == (3049935i32)) {
                        _after_3049935 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3048607._repeat(_op_3048645, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3049810?.__copy__(), _after_3049935?.__copy__(), _lastRepeat_3048661?.__copy__());
                                _after_3049935 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3050027i32;
                            } else {
                                _gotoNext = 3050057i32;
                            };
                        };
                    } else if (__value__ == (3050027i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3050057i32;
                    } else if (__value__ == (3050057i32)) {
                        _repeat_3048743 = _before_3049810?.__copy__();
                        _t_3048719 = _after_3049935?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3050088i32)) {
                        _op_3048645 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3050118 = _t_3048719?.__copy__();
                        {
                            var __tmp__ = _p_3048607._parseRepeat(_t_3048719?.__copy__());
                            _min_3050133 = __tmp__._0;
                            _max_3050138 = __tmp__._1;
                            _after_3050143 = __tmp__._2?.__copy__();
                            _ok_3050150 = __tmp__._3;
                        };
                        if (!_ok_3050150) {
                            _gotoNext = 3050183i32;
                        } else {
                            _gotoNext = 3050291i32;
                        };
                    } else if (__value__ == (3050183i32)) {
                        _p_3048607._literal((123 : stdgo.GoInt32));
                        _t_3048719 = (_t_3048719.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3050291i32)) {
                        if (((((_min_3050133 < (0 : stdgo.GoInt) : Bool) || (_min_3050133 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3050138 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3050138 >= (0 : stdgo.GoInt) : Bool) && (_min_3050133 > _max_3050138 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3050355i32;
                        } else {
                            _gotoNext = 3050505i32;
                        };
                    } else if (__value__ == (3050355i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3050118.__slice__(0, ((_before_3050118.length) - (_after_3050143.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3050505i32;
                    } else if (__value__ == (3050505i32)) {
                        {
                            {
                                var __tmp__ = _p_3048607._repeat(_op_3048645, _min_3050133, _max_3050138, _before_3050118?.__copy__(), _after_3050143?.__copy__(), _lastRepeat_3048661?.__copy__());
                                _after_3050143 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3050583i32;
                            } else {
                                _gotoNext = 3050613i32;
                            };
                        };
                    } else if (__value__ == (3050583i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3050613i32;
                    } else if (__value__ == (3050613i32)) {
                        _repeat_3048743 = _before_3050118?.__copy__();
                        _t_3048719 = _after_3050143?.__copy__();
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3050644i32)) {
                        if ((((_p_3048607._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3048719.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3050695i32;
                        } else {
                            _gotoNext = 3051419i32;
                        };
                    } else if (__value__ == (3050695i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3050701i32;
                    } else if (__value__ == (3050701i32)) {
                        {
                            final __value__ = _t_3048719[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3050719i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3050792i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3050868i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3050946i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3051041i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3051337i32;
                            } else {
                                _gotoNext = 3051419i32;
                            };
                        };
                    } else if (__value__ == (3050719i32)) {
                        _p_3048607._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3048719 = (_t_3048719.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3050792i32)) {
                        _p_3048607._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3048719 = (_t_3048719.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3050868i32)) {
                        _p_3048607._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3048719 = (_t_3048719.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3050946i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3048719.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3051419i32;
                    } else if (__value__ == (3051041i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3048719.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3051106 = __tmp__._0?.__copy__();
                            _t_3048719 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3051164i32;
                    } else if (__value__ == (3051164i32)) {
                        if (_lit_3051106 != (stdgo.Go.str())) {
                            _gotoNext = 3051178i32;
                        } else {
                            _gotoNext = 3051317i32;
                        };
                    } else if (__value__ == (3051178i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3051106?.__copy__());
                            _c_3051186 = __tmp__._0;
                            _rest_3051189 = __tmp__._1?.__copy__();
                            _err_3051195 = __tmp__._2;
                        };
                        if (_err_3051195 != null) {
                            _gotoNext = 3051236i32;
                        } else {
                            _gotoNext = 3051275i32;
                        };
                    } else if (__value__ == (3051236i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3051195 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3051275i32;
                    } else if (__value__ == (3051275i32)) {
                        _p_3048607._literal(_c_3051186);
                        _lit_3051106 = _rest_3051189?.__copy__();
                        _gotoNext = 3051164i32;
                    } else if (__value__ == (3051317i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3051337i32)) {
                        _p_3048607._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3048719 = (_t_3048719.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3051419i32)) {
                        _re_3051419 = _p_3048607._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3051419.flags = _p_3048607._flags;
                        if ((((_t_3048719.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3048719[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3048719[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3051575i32;
                        } else {
                            _gotoNext = 3051817i32;
                        };
                    } else if (__value__ == (3051575i32)) {
                        {
                            var __tmp__ = _p_3048607._parseUnicodeClass(_t_3048719?.__copy__(), (_re_3051419.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3051581 = __tmp__._0;
                            _rest_3051584 = __tmp__._1?.__copy__();
                            _err_3051590 = __tmp__._2;
                        };
                        if (_err_3051590 != null) {
                            _gotoNext = 3051652i32;
                        } else {
                            _gotoNext = 3051685i32;
                        };
                    } else if (__value__ == (3051652i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3051590 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3051685i32;
                    } else if (__value__ == (3051685i32)) {
                        if (_r_3051581 != null) {
                            _gotoNext = 3051697i32;
                        } else {
                            _gotoNext = 3051817i32;
                        };
                    } else if (__value__ == (3051697i32)) {
                        _re_3051419.rune = _r_3051581;
                        _t_3048719 = _rest_3051584?.__copy__();
                        _p_3048607._push(_re_3051419);
                        bigSwitchBreak = true;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3051817i32)) {
                        {
                            {
                                var __tmp__ = _p_3048607._parsePerlClassEscape(_t_3048719?.__copy__(), (_re_3051419.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3051820 = __tmp__._0;
                                _rest_3051823 = __tmp__._1?.__copy__();
                            };
                            if (_r_3051820 != null) {
                                _gotoNext = 3051881i32;
                            } else {
                                _gotoNext = 3051955i32;
                            };
                        };
                    } else if (__value__ == (3051881i32)) {
                        _re_3051419.rune = _r_3051820;
                        _t_3048719 = _rest_3051823?.__copy__();
                        _p_3048607._push(_re_3051419);
                        bigSwitchBreak = true;
                        _gotoNext = 3048770i32;
                    } else if (__value__ == (3051955i32)) {
                        _p_3048607._reuse(_re_3051419);
                        {
                            {
                                var __tmp__ = _p_3048607._parseEscape(_t_3048719?.__copy__());
                                _c_3048627 = __tmp__._0;
                                _t_3048719 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3052055i32;
                            } else {
                                _gotoNext = 3052085i32;
                            };
                        };
                    } else if (__value__ == (3052055i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3052085i32;
                    } else if (__value__ == (3052085i32)) {
                        _p_3048607._literal(_c_3048627);
                        _gotoNext = 3052104i32;
                    } else if (__value__ == (3052104i32)) {
                        _lastRepeat_3048661 = _repeat_3048743?.__copy__();
                        _gotoNext = 3048727i32;
                    } else if (__value__ == (3052129i32)) {
                        _p_3048607._concat();
                        if (_p_3048607._swapVerticalBar()) {
                            _gotoNext = 3052164i32;
                        } else {
                            _gotoNext = 3052229i32;
                        };
                    } else if (__value__ == (3052164i32)) {
                        _p_3048607._stack = (_p_3048607._stack.__slice__(0, ((_p_3048607._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3052229i32;
                    } else if (__value__ == (3052229i32)) {
                        _p_3048607._alternate();
                        _n_3052245 = (_p_3048607._stack.length);
                        if (_n_3052245 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3052274i32;
                        } else {
                            _gotoNext = 3052321i32;
                        };
                    } else if (__value__ == (3052274i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3052321i32;
                    } else if (__value__ == (3052321i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3048607._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
