package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3305329:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_3306852:Bool = false;
            var _min_3306835:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3306512:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3305421:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3305309:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3308283:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3307888:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3306845:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3306840:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n_3308947:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3307891:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3306820:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3306637:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3307897:stdgo.Error = (null : stdgo.Error);
            var _rest_3308286:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3305445:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3305363:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3305347:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3305167:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _rest_3308525:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3308522:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3308292:stdgo.Error = (null : stdgo.Error);
            var _re_3308121:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3307808:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3305120i32;
                        } else {
                            _gotoNext = 3305301i32;
                        };
                    } else if (__value__ == (3305120i32)) {
                        {
                            _err_3305167 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3305167 != null) {
                                _gotoNext = 3305199i32;
                            } else {
                                _gotoNext = 3305226i32;
                            };
                        };
                    } else if (__value__ == (3305199i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3305167 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3305226i32;
                    } else if (__value__ == (3305226i32)) {
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
                        _gotoNext = 3305301i32;
                    } else if (__value__ == (3305301i32)) {
                        _p_3305309._flags = _flags;
                        _p_3305309._wholeRegexp = _s?.__copy__();
                        _t_3305421 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3305429i32;
                    } else if (__value__ == (3305429i32)) {
                        if (_t_3305421 != (stdgo.Go.str())) {
                            _gotoNext = 3305441i32;
                        } else {
                            _gotoNext = 3308831i32;
                        };
                    } else if (__value__ == (3305441i32)) {
                        _repeat_3305445 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3305459i32;
                    } else if (__value__ == (3305459i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3305472i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3305421[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3305585i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3305855i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3305952i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306048i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306163i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306293i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306407i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306489i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306790i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307346i32;
                                } else {
                                    _gotoNext = 3305488i32;
                                };
                            };
                        } else {
                            _gotoNext = 3308806i32;
                        };
                    } else if (__value__ == (3305488i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3305421?.__copy__());
                                _c_3305329 = __tmp__._0;
                                _t_3305421 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3305539i32;
                            } else {
                                _gotoNext = 3305569i32;
                            };
                        };
                    } else if (__value__ == (3305539i32)) {
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
                        _gotoNext = 3305569i32;
                    } else if (__value__ == (3305569i32)) {
                        _p_3305309._literal(_c_3305329);
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3305585i32)) {
                        if ((((_p_3305309._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3305421.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3305421[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3305650i32;
                        } else {
                            _gotoNext = 3305793i32;
                        };
                    } else if (__value__ == (3305650i32)) {
                        {
                            {
                                var __tmp__ = _p_3305309._parsePerlFlags(_t_3305421?.__copy__());
                                _t_3305421 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3305746i32;
                            } else {
                                _gotoNext = 3305779i32;
                            };
                        };
                    } else if (__value__ == (3305746i32)) {
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
                        _gotoNext = 3305779i32;
                    } else if (__value__ == (3305779i32)) {
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3305793i32)) {
                        _p_3305309._numCap++;
                        _p_3305309._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3305309._numCap;
                        _t_3305421 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3305855i32)) {
                        {
                            _err = _p_3305309._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3305910i32;
                            } else {
                                _gotoNext = 3305940i32;
                            };
                        };
                    } else if (__value__ == (3305910i32)) {
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
                        _gotoNext = 3305940i32;
                    } else if (__value__ == (3305940i32)) {
                        _t_3305421 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3305952i32)) {
                        {
                            _err = _p_3305309._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3306006i32;
                            } else {
                                _gotoNext = 3306036i32;
                            };
                        };
                    } else if (__value__ == (3306006i32)) {
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
                        _gotoNext = 3306036i32;
                    } else if (__value__ == (3306036i32)) {
                        _t_3305421 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3306048i32)) {
                        if ((_p_3305309._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3306085i32;
                        } else {
                            _gotoNext = 3306119i32;
                        };
                    } else if (__value__ == (3306085i32)) {
                        _p_3305309._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3306151i32;
                    } else if (__value__ == (3306119i32)) {
                        _gotoNext = 3306119i32;
                        _p_3305309._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3306151i32;
                    } else if (__value__ == (3306151i32)) {
                        _t_3305421 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3306163i32)) {
                        if ((_p_3305309._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3306200i32;
                        } else {
                            _gotoNext = 3306251i32;
                        };
                    } else if (__value__ == (3306200i32)) {
                        _p_3305309._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3305309._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3306281i32;
                    } else if (__value__ == (3306251i32)) {
                        _gotoNext = 3306251i32;
                        _p_3305309._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3306281i32;
                    } else if (__value__ == (3306281i32)) {
                        _t_3305421 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3306293i32)) {
                        if ((_p_3305309._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3306328i32;
                        } else {
                            _gotoNext = 3306360i32;
                        };
                    } else if (__value__ == (3306328i32)) {
                        _p_3305309._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3306395i32;
                    } else if (__value__ == (3306360i32)) {
                        _gotoNext = 3306360i32;
                        _p_3305309._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3306395i32;
                    } else if (__value__ == (3306395i32)) {
                        _t_3305421 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3306407i32)) {
                        {
                            {
                                var __tmp__ = _p_3305309._parseClass(_t_3305421?.__copy__());
                                _t_3305421 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3306460i32;
                            } else {
                                _gotoNext = 3308806i32;
                            };
                        };
                    } else if (__value__ == (3306460i32)) {
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
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3306489i32)) {
                        _before_3306512 = _t_3305421?.__copy__();
                        _gotoNext = 3306527i32;
                    } else if (__value__ == (3306527i32)) {
                        {
                            final __value__ = _t_3305421[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3306544i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3306573i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3306602i32;
                            } else {
                                _gotoNext = 3306637i32;
                            };
                        };
                    } else if (__value__ == (3306544i32)) {
                        _op_3305347 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3306637i32;
                    } else if (__value__ == (3306573i32)) {
                        _op_3305347 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3306637i32;
                    } else if (__value__ == (3306602i32)) {
                        _op_3305347 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3306637i32;
                    } else if (__value__ == (3306637i32)) {
                        _after_3306637 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3305309._repeat(_op_3305347, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3306512?.__copy__(), _after_3306637?.__copy__(), _lastRepeat_3305363?.__copy__());
                                _after_3306637 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3306729i32;
                            } else {
                                _gotoNext = 3306759i32;
                            };
                        };
                    } else if (__value__ == (3306729i32)) {
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
                        _gotoNext = 3306759i32;
                    } else if (__value__ == (3306759i32)) {
                        _repeat_3305445 = _before_3306512?.__copy__();
                        _t_3305421 = _after_3306637?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3306790i32)) {
                        _op_3305347 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3306820 = _t_3305421?.__copy__();
                        {
                            var __tmp__ = _p_3305309._parseRepeat(_t_3305421?.__copy__());
                            _min_3306835 = __tmp__._0;
                            _max_3306840 = __tmp__._1;
                            _after_3306845 = __tmp__._2?.__copy__();
                            _ok_3306852 = __tmp__._3;
                        };
                        if (!_ok_3306852) {
                            _gotoNext = 3306885i32;
                        } else {
                            _gotoNext = 3306993i32;
                        };
                    } else if (__value__ == (3306885i32)) {
                        _p_3305309._literal((123 : stdgo.GoInt32));
                        _t_3305421 = (_t_3305421.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3306993i32)) {
                        if (((((_min_3306835 < (0 : stdgo.GoInt) : Bool) || (_min_3306835 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3306840 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3306840 >= (0 : stdgo.GoInt) : Bool) && (_min_3306835 > _max_3306840 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3307057i32;
                        } else {
                            _gotoNext = 3307207i32;
                        };
                    } else if (__value__ == (3307057i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3306820.__slice__(0, ((_before_3306820.length) - (_after_3306845.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3307207i32;
                    } else if (__value__ == (3307207i32)) {
                        {
                            {
                                var __tmp__ = _p_3305309._repeat(_op_3305347, _min_3306835, _max_3306840, _before_3306820?.__copy__(), _after_3306845?.__copy__(), _lastRepeat_3305363?.__copy__());
                                _after_3306845 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3307285i32;
                            } else {
                                _gotoNext = 3307315i32;
                            };
                        };
                    } else if (__value__ == (3307285i32)) {
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
                        _gotoNext = 3307315i32;
                    } else if (__value__ == (3307315i32)) {
                        _repeat_3305445 = _before_3306820?.__copy__();
                        _t_3305421 = _after_3306845?.__copy__();
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3307346i32)) {
                        if ((((_p_3305309._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3305421.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3307397i32;
                        } else {
                            _gotoNext = 3308121i32;
                        };
                    } else if (__value__ == (3307397i32)) {
                        _gotoNext = 3307403i32;
                    } else if (__value__ == (3307403i32)) {
                        {
                            final __value__ = _t_3305421[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3307421i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3307494i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3307570i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3307648i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3307743i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3308039i32;
                            } else {
                                _gotoNext = 3308121i32;
                            };
                        };
                    } else if (__value__ == (3307421i32)) {
                        _p_3305309._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305421 = (_t_3305421.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3307494i32)) {
                        _p_3305309._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305421 = (_t_3305421.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3307570i32)) {
                        _p_3305309._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305421 = (_t_3305421.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3307648i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3305421.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3308121i32;
                    } else if (__value__ == (3307743i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3305421.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3307808 = __tmp__._0?.__copy__();
                            _t_3305421 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3307866i32;
                    } else if (__value__ == (3307866i32)) {
                        if (_lit_3307808 != (stdgo.Go.str())) {
                            _gotoNext = 3307880i32;
                        } else {
                            _gotoNext = 3308019i32;
                        };
                    } else if (__value__ == (3307880i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3307808?.__copy__());
                            _c_3307888 = __tmp__._0;
                            _rest_3307891 = __tmp__._1?.__copy__();
                            _err_3307897 = __tmp__._2;
                        };
                        if (_err_3307897 != null) {
                            _gotoNext = 3307938i32;
                        } else {
                            _gotoNext = 3307977i32;
                        };
                    } else if (__value__ == (3307938i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3307897 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3307977i32;
                    } else if (__value__ == (3307977i32)) {
                        _p_3305309._literal(_c_3307888);
                        _lit_3307808 = _rest_3307891?.__copy__();
                        _gotoNext = 3307866i32;
                    } else if (__value__ == (3308019i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3308039i32)) {
                        _p_3305309._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3305421 = (_t_3305421.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3308121i32)) {
                        _re_3308121 = _p_3305309._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3308121.flags = _p_3305309._flags;
                        if ((((_t_3305421.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3305421[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3305421[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3308277i32;
                        } else {
                            _gotoNext = 3308519i32;
                        };
                    } else if (__value__ == (3308277i32)) {
                        {
                            var __tmp__ = _p_3305309._parseUnicodeClass(_t_3305421?.__copy__(), (_re_3308121.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3308283 = __tmp__._0;
                            _rest_3308286 = __tmp__._1?.__copy__();
                            _err_3308292 = __tmp__._2;
                        };
                        if (_err_3308292 != null) {
                            _gotoNext = 3308354i32;
                        } else {
                            _gotoNext = 3308387i32;
                        };
                    } else if (__value__ == (3308354i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3308292 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3308387i32;
                    } else if (__value__ == (3308387i32)) {
                        if (_r_3308283 != null) {
                            _gotoNext = 3308399i32;
                        } else {
                            _gotoNext = 3308519i32;
                        };
                    } else if (__value__ == (3308399i32)) {
                        _re_3308121.rune = _r_3308283;
                        _t_3305421 = _rest_3308286?.__copy__();
                        _p_3305309._push(_re_3308121);
                        bigSwitchBreak = true;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3308519i32)) {
                        {
                            {
                                var __tmp__ = _p_3305309._parsePerlClassEscape(_t_3305421?.__copy__(), (_re_3308121.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3308522 = __tmp__._0;
                                _rest_3308525 = __tmp__._1?.__copy__();
                            };
                            if (_r_3308522 != null) {
                                _gotoNext = 3308583i32;
                            } else {
                                _gotoNext = 3308657i32;
                            };
                        };
                    } else if (__value__ == (3308583i32)) {
                        _re_3308121.rune = _r_3308522;
                        _t_3305421 = _rest_3308525?.__copy__();
                        _p_3305309._push(_re_3308121);
                        bigSwitchBreak = true;
                        _gotoNext = 3305472i32;
                    } else if (__value__ == (3308657i32)) {
                        _p_3305309._reuse(_re_3308121);
                        {
                            {
                                var __tmp__ = _p_3305309._parseEscape(_t_3305421?.__copy__());
                                _c_3305329 = __tmp__._0;
                                _t_3305421 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3308757i32;
                            } else {
                                _gotoNext = 3308787i32;
                            };
                        };
                    } else if (__value__ == (3308757i32)) {
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
                        _gotoNext = 3308787i32;
                    } else if (__value__ == (3308787i32)) {
                        _p_3305309._literal(_c_3305329);
                        _gotoNext = 3308806i32;
                    } else if (__value__ == (3308806i32)) {
                        _lastRepeat_3305363 = _repeat_3305445?.__copy__();
                        _gotoNext = 3305429i32;
                    } else if (__value__ == (3308831i32)) {
                        _p_3305309._concat();
                        if (_p_3305309._swapVerticalBar()) {
                            _gotoNext = 3308866i32;
                        } else {
                            _gotoNext = 3308931i32;
                        };
                    } else if (__value__ == (3308866i32)) {
                        _p_3305309._stack = (_p_3305309._stack.__slice__(0, ((_p_3305309._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3308931i32;
                    } else if (__value__ == (3308931i32)) {
                        _p_3305309._alternate();
                        _n_3308947 = (_p_3305309._stack.length);
                        if (_n_3308947 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3308976i32;
                        } else {
                            _gotoNext = 3309023i32;
                        };
                    } else if (__value__ == (3308976i32)) {
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
                        _gotoNext = 3309023i32;
                    } else if (__value__ == (3309023i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3305309._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
