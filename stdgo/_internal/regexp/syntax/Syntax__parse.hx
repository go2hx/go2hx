package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _ok_3306783:Bool = false;
            var _after_3306776:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3306771:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3305294:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3305098:stdgo.Error = (null : stdgo.Error);
            var _rest_3308456:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3307828:stdgo.Error = (null : stdgo.Error);
            var _rest_3307822:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3305260:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3308878:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3308214:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3306751:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3306443:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3305278:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _t_3305352:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3308217:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3307819:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3306766:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _lit_3307739:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3306568:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3305240:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3308223:stdgo.Error = (null : stdgo.Error);
            var _re_3308052:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _r_3308453:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _repeat_3305376:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3305051i32;
                        } else {
                            _gotoNext = 3305232i32;
                        };
                    } else if (__value__ == (3305051i32)) {
                        {
                            _err_3305098 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3305098 != null) {
                                _gotoNext = 3305130i32;
                            } else {
                                _gotoNext = 3305157i32;
                            };
                        };
                    } else if (__value__ == (3305130i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3305098 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3305157i32;
                    } else if (__value__ == (3305157i32)) {
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
                        _gotoNext = 3305232i32;
                    } else if (__value__ == (3305232i32)) {
                        _p_3305240._flags = _flags;
                        _p_3305240._wholeRegexp = _s?.__copy__();
                        _t_3305352 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3305360i32;
                    } else if (__value__ == (3305360i32)) {
                        if (_t_3305352 != (stdgo.Go.str())) {
                            _gotoNext = 3305372i32;
                        } else {
                            _gotoNext = 3308762i32;
                        };
                    } else if (__value__ == (3305372i32)) {
                        _repeat_3305376 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3305390i32;
                    } else if (__value__ == (3305390i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3305403i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3305352[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3305516i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3305786i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3305883i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3305979i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306094i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306224i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306338i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306420i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306721i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307277i32;
                                } else {
                                    _gotoNext = 3305419i32;
                                };
                            };
                        } else {
                            _gotoNext = 3308737i32;
                        };
                    } else if (__value__ == (3305419i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3305352?.__copy__());
                                _c_3305260 = __tmp__._0;
                                _t_3305352 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3305470i32;
                            } else {
                                _gotoNext = 3305500i32;
                            };
                        };
                    } else if (__value__ == (3305470i32)) {
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
                        _gotoNext = 3305500i32;
                    } else if (__value__ == (3305500i32)) {
                        _p_3305240._literal(_c_3305260);
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3305516i32)) {
                        if ((((_p_3305240._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3305352.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3305352[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3305581i32;
                        } else {
                            _gotoNext = 3305724i32;
                        };
                    } else if (__value__ == (3305581i32)) {
                        {
                            {
                                var __tmp__ = _p_3305240._parsePerlFlags(_t_3305352?.__copy__());
                                _t_3305352 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3305677i32;
                            } else {
                                _gotoNext = 3305710i32;
                            };
                        };
                    } else if (__value__ == (3305677i32)) {
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
                        _gotoNext = 3305710i32;
                    } else if (__value__ == (3305710i32)) {
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3305724i32)) {
                        _p_3305240._numCap++;
                        _p_3305240._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3305240._numCap;
                        _t_3305352 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3305786i32)) {
                        {
                            _err = _p_3305240._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3305841i32;
                            } else {
                                _gotoNext = 3305871i32;
                            };
                        };
                    } else if (__value__ == (3305841i32)) {
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
                        _gotoNext = 3305871i32;
                    } else if (__value__ == (3305871i32)) {
                        _t_3305352 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3305883i32)) {
                        {
                            _err = _p_3305240._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3305937i32;
                            } else {
                                _gotoNext = 3305967i32;
                            };
                        };
                    } else if (__value__ == (3305937i32)) {
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
                        _gotoNext = 3305967i32;
                    } else if (__value__ == (3305967i32)) {
                        _t_3305352 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3305979i32)) {
                        if ((_p_3305240._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3306016i32;
                        } else {
                            _gotoNext = 3306050i32;
                        };
                    } else if (__value__ == (3306016i32)) {
                        _p_3305240._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3306082i32;
                    } else if (__value__ == (3306050i32)) {
                        _gotoNext = 3306050i32;
                        _p_3305240._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3306082i32;
                    } else if (__value__ == (3306082i32)) {
                        _t_3305352 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3306094i32)) {
                        if ((_p_3305240._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3306131i32;
                        } else {
                            _gotoNext = 3306182i32;
                        };
                    } else if (__value__ == (3306131i32)) {
                        _p_3305240._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3305240._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3306212i32;
                    } else if (__value__ == (3306182i32)) {
                        _gotoNext = 3306182i32;
                        _p_3305240._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3306212i32;
                    } else if (__value__ == (3306212i32)) {
                        _t_3305352 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3306224i32)) {
                        if ((_p_3305240._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3306259i32;
                        } else {
                            _gotoNext = 3306291i32;
                        };
                    } else if (__value__ == (3306259i32)) {
                        _p_3305240._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3306326i32;
                    } else if (__value__ == (3306291i32)) {
                        _gotoNext = 3306291i32;
                        _p_3305240._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3306326i32;
                    } else if (__value__ == (3306326i32)) {
                        _t_3305352 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3306338i32)) {
                        {
                            {
                                var __tmp__ = _p_3305240._parseClass(_t_3305352?.__copy__());
                                _t_3305352 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3306391i32;
                            } else {
                                _gotoNext = 3308737i32;
                            };
                        };
                    } else if (__value__ == (3306391i32)) {
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
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3306420i32)) {
                        _before_3306443 = _t_3305352?.__copy__();
                        _gotoNext = 3306458i32;
                    } else if (__value__ == (3306458i32)) {
                        {
                            final __value__ = _t_3305352[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3306475i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3306504i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3306533i32;
                            } else {
                                _gotoNext = 3306568i32;
                            };
                        };
                    } else if (__value__ == (3306475i32)) {
                        _op_3305278 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3306568i32;
                    } else if (__value__ == (3306504i32)) {
                        _op_3305278 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3306568i32;
                    } else if (__value__ == (3306533i32)) {
                        _op_3305278 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3306568i32;
                    } else if (__value__ == (3306568i32)) {
                        _after_3306568 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3305240._repeat(_op_3305278, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3306443?.__copy__(), _after_3306568?.__copy__(), _lastRepeat_3305294?.__copy__());
                                _after_3306568 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3306660i32;
                            } else {
                                _gotoNext = 3306690i32;
                            };
                        };
                    } else if (__value__ == (3306660i32)) {
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
                        _gotoNext = 3306690i32;
                    } else if (__value__ == (3306690i32)) {
                        _repeat_3305376 = _before_3306443?.__copy__();
                        _t_3305352 = _after_3306568?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3306721i32)) {
                        _op_3305278 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3306751 = _t_3305352?.__copy__();
                        {
                            var __tmp__ = _p_3305240._parseRepeat(_t_3305352?.__copy__());
                            _min_3306766 = __tmp__._0;
                            _max_3306771 = __tmp__._1;
                            _after_3306776 = __tmp__._2?.__copy__();
                            _ok_3306783 = __tmp__._3;
                        };
                        if (!_ok_3306783) {
                            _gotoNext = 3306816i32;
                        } else {
                            _gotoNext = 3306924i32;
                        };
                    } else if (__value__ == (3306816i32)) {
                        _p_3305240._literal((123 : stdgo.GoInt32));
                        _t_3305352 = (_t_3305352.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3306924i32)) {
                        if (((((_min_3306766 < (0 : stdgo.GoInt) : Bool) || (_min_3306766 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3306771 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3306771 >= (0 : stdgo.GoInt) : Bool) && (_min_3306766 > _max_3306771 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3306988i32;
                        } else {
                            _gotoNext = 3307138i32;
                        };
                    } else if (__value__ == (3306988i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3306751.__slice__(0, ((_before_3306751.length) - (_after_3306776.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3307138i32;
                    } else if (__value__ == (3307138i32)) {
                        {
                            {
                                var __tmp__ = _p_3305240._repeat(_op_3305278, _min_3306766, _max_3306771, _before_3306751?.__copy__(), _after_3306776?.__copy__(), _lastRepeat_3305294?.__copy__());
                                _after_3306776 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3307216i32;
                            } else {
                                _gotoNext = 3307246i32;
                            };
                        };
                    } else if (__value__ == (3307216i32)) {
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
                        _gotoNext = 3307246i32;
                    } else if (__value__ == (3307246i32)) {
                        _repeat_3305376 = _before_3306751?.__copy__();
                        _t_3305352 = _after_3306776?.__copy__();
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3307277i32)) {
                        if ((((_p_3305240._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3305352.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3307328i32;
                        } else {
                            _gotoNext = 3308052i32;
                        };
                    } else if (__value__ == (3307328i32)) {
                        _gotoNext = 3307334i32;
                    } else if (__value__ == (3307334i32)) {
                        {
                            final __value__ = _t_3305352[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3307352i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3307425i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3307501i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3307579i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3307674i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3307970i32;
                            } else {
                                _gotoNext = 3308052i32;
                            };
                        };
                    } else if (__value__ == (3307352i32)) {
                        _p_3305240._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305352 = (_t_3305352.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3307425i32)) {
                        _p_3305240._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305352 = (_t_3305352.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3307501i32)) {
                        _p_3305240._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305352 = (_t_3305352.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3307579i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3305352.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3308052i32;
                    } else if (__value__ == (3307674i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3305352.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3307739 = __tmp__._0?.__copy__();
                            _t_3305352 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3307797i32;
                    } else if (__value__ == (3307797i32)) {
                        if (_lit_3307739 != (stdgo.Go.str())) {
                            _gotoNext = 3307811i32;
                        } else {
                            _gotoNext = 3307950i32;
                        };
                    } else if (__value__ == (3307811i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3307739?.__copy__());
                            _c_3307819 = __tmp__._0;
                            _rest_3307822 = __tmp__._1?.__copy__();
                            _err_3307828 = __tmp__._2;
                        };
                        if (_err_3307828 != null) {
                            _gotoNext = 3307869i32;
                        } else {
                            _gotoNext = 3307908i32;
                        };
                    } else if (__value__ == (3307869i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3307828 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3307908i32;
                    } else if (__value__ == (3307908i32)) {
                        _p_3305240._literal(_c_3307819);
                        _lit_3307739 = _rest_3307822?.__copy__();
                        _gotoNext = 3307797i32;
                    } else if (__value__ == (3307950i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3307970i32)) {
                        _p_3305240._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305352 = (_t_3305352.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3308052i32)) {
                        _re_3308052 = _p_3305240._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3308052.flags = _p_3305240._flags;
                        if ((((_t_3305352.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3305352[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3305352[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3308208i32;
                        } else {
                            _gotoNext = 3308450i32;
                        };
                    } else if (__value__ == (3308208i32)) {
                        {
                            var __tmp__ = _p_3305240._parseUnicodeClass(_t_3305352?.__copy__(), (_re_3308052.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3308214 = __tmp__._0;
                            _rest_3308217 = __tmp__._1?.__copy__();
                            _err_3308223 = __tmp__._2;
                        };
                        if (_err_3308223 != null) {
                            _gotoNext = 3308285i32;
                        } else {
                            _gotoNext = 3308318i32;
                        };
                    } else if (__value__ == (3308285i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3308223 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3308318i32;
                    } else if (__value__ == (3308318i32)) {
                        if (_r_3308214 != null) {
                            _gotoNext = 3308330i32;
                        } else {
                            _gotoNext = 3308450i32;
                        };
                    } else if (__value__ == (3308330i32)) {
                        _re_3308052.rune = _r_3308214;
                        _t_3305352 = _rest_3308217?.__copy__();
                        _p_3305240._push(_re_3308052);
                        bigSwitchBreak = true;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3308450i32)) {
                        {
                            {
                                var __tmp__ = _p_3305240._parsePerlClassEscape(_t_3305352?.__copy__(), (_re_3308052.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3308453 = __tmp__._0;
                                _rest_3308456 = __tmp__._1?.__copy__();
                            };
                            if (_r_3308453 != null) {
                                _gotoNext = 3308514i32;
                            } else {
                                _gotoNext = 3308588i32;
                            };
                        };
                    } else if (__value__ == (3308514i32)) {
                        _re_3308052.rune = _r_3308453;
                        _t_3305352 = _rest_3308456?.__copy__();
                        _p_3305240._push(_re_3308052);
                        bigSwitchBreak = true;
                        _gotoNext = 3305403i32;
                    } else if (__value__ == (3308588i32)) {
                        _p_3305240._reuse(_re_3308052);
                        {
                            {
                                var __tmp__ = _p_3305240._parseEscape(_t_3305352?.__copy__());
                                _c_3305260 = __tmp__._0;
                                _t_3305352 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3308688i32;
                            } else {
                                _gotoNext = 3308718i32;
                            };
                        };
                    } else if (__value__ == (3308688i32)) {
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
                        _gotoNext = 3308718i32;
                    } else if (__value__ == (3308718i32)) {
                        _p_3305240._literal(_c_3305260);
                        _gotoNext = 3308737i32;
                    } else if (__value__ == (3308737i32)) {
                        _lastRepeat_3305294 = _repeat_3305376?.__copy__();
                        _gotoNext = 3305360i32;
                    } else if (__value__ == (3308762i32)) {
                        _p_3305240._concat();
                        if (_p_3305240._swapVerticalBar()) {
                            _gotoNext = 3308797i32;
                        } else {
                            _gotoNext = 3308862i32;
                        };
                    } else if (__value__ == (3308797i32)) {
                        _p_3305240._stack = (_p_3305240._stack.__slice__(0, ((_p_3305240._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3308862i32;
                    } else if (__value__ == (3308862i32)) {
                        _p_3305240._alternate();
                        _n_3308878 = (_p_3305240._stack.length);
                        if (_n_3308878 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3308907i32;
                        } else {
                            _gotoNext = 3308954i32;
                        };
                    } else if (__value__ == (3308907i32)) {
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
                        _gotoNext = 3308954i32;
                    } else if (__value__ == (3308954i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3305240._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
