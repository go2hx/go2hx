package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _re_3325386:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3325073:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3324085:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3322612:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3325790:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3324117:Bool = false;
            var _after_3323902:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3322432:stdgo.Error = (null : stdgo.Error);
            var _n_3326212:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3324110:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3322628:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3325787:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3325557:stdgo.Error = (null : stdgo.Error);
            var _err_3325162:stdgo.Error = (null : stdgo.Error);
            var _c_3325153:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3322710:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3322594:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3322574:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3325548:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var bigSwitchBreak = false;
            var _rest_3325156:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3324105:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3322686:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3325551:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3324100:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3323777:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3322385i32;
                        } else {
                            _gotoNext = 3322566i32;
                        };
                    } else if (__value__ == (3322385i32)) {
                        {
                            _err_3322432 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3322432 != null) {
                                _gotoNext = 3322464i32;
                            } else {
                                _gotoNext = 3322491i32;
                            };
                        };
                    } else if (__value__ == (3322464i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3322432 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3322491i32;
                    } else if (__value__ == (3322491i32)) {
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
                        _gotoNext = 3322566i32;
                    } else if (__value__ == (3322566i32)) {
                        _p_3322574._flags = _flags;
                        _p_3322574._wholeRegexp = _s?.__copy__();
                        _t_3322686 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3322694i32;
                    } else if (__value__ == (3322694i32)) {
                        if (_t_3322686 != (stdgo.Go.str())) {
                            _gotoNext = 3322706i32;
                        } else {
                            _gotoNext = 3326096i32;
                        };
                    } else if (__value__ == (3322706i32)) {
                        _repeat_3322710 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3322724i32;
                    } else if (__value__ == (3322724i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3322737i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3322686[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3322850i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3323120i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3323217i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3323313i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3323428i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3323558i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3323672i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3323754i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3324055i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3324611i32;
                                } else {
                                    _gotoNext = 3322753i32;
                                };
                            };
                        } else {
                            _gotoNext = 3326071i32;
                        };
                    } else if (__value__ == (3322753i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3322686?.__copy__());
                                _c_3322594 = __tmp__._0;
                                _t_3322686 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3322804i32;
                            } else {
                                _gotoNext = 3322834i32;
                            };
                        };
                    } else if (__value__ == (3322804i32)) {
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
                        _gotoNext = 3322834i32;
                    } else if (__value__ == (3322834i32)) {
                        _p_3322574._literal(_c_3322594);
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3322850i32)) {
                        if ((((_p_3322574._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3322686.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3322686[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3322915i32;
                        } else {
                            _gotoNext = 3323058i32;
                        };
                    } else if (__value__ == (3322915i32)) {
                        {
                            {
                                var __tmp__ = _p_3322574._parsePerlFlags(_t_3322686?.__copy__());
                                _t_3322686 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3323011i32;
                            } else {
                                _gotoNext = 3323044i32;
                            };
                        };
                    } else if (__value__ == (3323011i32)) {
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
                        _gotoNext = 3323044i32;
                    } else if (__value__ == (3323044i32)) {
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323058i32)) {
                        _p_3322574._numCap++;
                        _p_3322574._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3322574._numCap;
                        _t_3322686 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323120i32)) {
                        {
                            _err = _p_3322574._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3323175i32;
                            } else {
                                _gotoNext = 3323205i32;
                            };
                        };
                    } else if (__value__ == (3323175i32)) {
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
                        _gotoNext = 3323205i32;
                    } else if (__value__ == (3323205i32)) {
                        _t_3322686 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323217i32)) {
                        {
                            _err = _p_3322574._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3323271i32;
                            } else {
                                _gotoNext = 3323301i32;
                            };
                        };
                    } else if (__value__ == (3323271i32)) {
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
                        _gotoNext = 3323301i32;
                    } else if (__value__ == (3323301i32)) {
                        _t_3322686 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323313i32)) {
                        if ((_p_3322574._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3323350i32;
                        } else {
                            _gotoNext = 3323384i32;
                        };
                    } else if (__value__ == (3323350i32)) {
                        _p_3322574._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3323416i32;
                    } else if (__value__ == (3323384i32)) {
                        _gotoNext = 3323384i32;
                        _p_3322574._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3323416i32;
                    } else if (__value__ == (3323416i32)) {
                        _t_3322686 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323428i32)) {
                        if ((_p_3322574._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3323465i32;
                        } else {
                            _gotoNext = 3323516i32;
                        };
                    } else if (__value__ == (3323465i32)) {
                        _p_3322574._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3322574._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3323546i32;
                    } else if (__value__ == (3323516i32)) {
                        _gotoNext = 3323516i32;
                        _p_3322574._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3323546i32;
                    } else if (__value__ == (3323546i32)) {
                        _t_3322686 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323558i32)) {
                        if ((_p_3322574._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3323593i32;
                        } else {
                            _gotoNext = 3323625i32;
                        };
                    } else if (__value__ == (3323593i32)) {
                        _p_3322574._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3323660i32;
                    } else if (__value__ == (3323625i32)) {
                        _gotoNext = 3323625i32;
                        _p_3322574._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3323660i32;
                    } else if (__value__ == (3323660i32)) {
                        _t_3322686 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323672i32)) {
                        {
                            {
                                var __tmp__ = _p_3322574._parseClass(_t_3322686?.__copy__());
                                _t_3322686 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3323725i32;
                            } else {
                                _gotoNext = 3326071i32;
                            };
                        };
                    } else if (__value__ == (3323725i32)) {
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
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3323754i32)) {
                        _before_3323777 = _t_3322686?.__copy__();
                        _gotoNext = 3323792i32;
                    } else if (__value__ == (3323792i32)) {
                        {
                            final __value__ = _t_3322686[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3323809i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3323838i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3323867i32;
                            } else {
                                _gotoNext = 3323902i32;
                            };
                        };
                    } else if (__value__ == (3323809i32)) {
                        _op_3322612 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3323902i32;
                    } else if (__value__ == (3323838i32)) {
                        _op_3322612 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3323902i32;
                    } else if (__value__ == (3323867i32)) {
                        _op_3322612 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3323902i32;
                    } else if (__value__ == (3323902i32)) {
                        _after_3323902 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3322574._repeat(_op_3322612, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3323777?.__copy__(), _after_3323902?.__copy__(), _lastRepeat_3322628?.__copy__());
                                _after_3323902 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3323994i32;
                            } else {
                                _gotoNext = 3324024i32;
                            };
                        };
                    } else if (__value__ == (3323994i32)) {
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
                        _gotoNext = 3324024i32;
                    } else if (__value__ == (3324024i32)) {
                        _repeat_3322710 = _before_3323777?.__copy__();
                        _t_3322686 = _after_3323902?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3324055i32)) {
                        _op_3322612 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3324085 = _t_3322686?.__copy__();
                        {
                            var __tmp__ = _p_3322574._parseRepeat(_t_3322686?.__copy__());
                            _min_3324100 = __tmp__._0;
                            _max_3324105 = __tmp__._1;
                            _after_3324110 = __tmp__._2?.__copy__();
                            _ok_3324117 = __tmp__._3;
                        };
                        if (!_ok_3324117) {
                            _gotoNext = 3324150i32;
                        } else {
                            _gotoNext = 3324258i32;
                        };
                    } else if (__value__ == (3324150i32)) {
                        _p_3322574._literal((123 : stdgo.GoInt32));
                        _t_3322686 = (_t_3322686.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3324258i32)) {
                        if (((((_min_3324100 < (0 : stdgo.GoInt) : Bool) || (_min_3324100 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3324105 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3324105 >= (0 : stdgo.GoInt) : Bool) && (_min_3324100 > _max_3324105 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3324322i32;
                        } else {
                            _gotoNext = 3324472i32;
                        };
                    } else if (__value__ == (3324322i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3324085.__slice__(0, ((_before_3324085.length) - (_after_3324110.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3324472i32;
                    } else if (__value__ == (3324472i32)) {
                        {
                            {
                                var __tmp__ = _p_3322574._repeat(_op_3322612, _min_3324100, _max_3324105, _before_3324085?.__copy__(), _after_3324110?.__copy__(), _lastRepeat_3322628?.__copy__());
                                _after_3324110 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3324550i32;
                            } else {
                                _gotoNext = 3324580i32;
                            };
                        };
                    } else if (__value__ == (3324550i32)) {
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
                        _gotoNext = 3324580i32;
                    } else if (__value__ == (3324580i32)) {
                        _repeat_3322710 = _before_3324085?.__copy__();
                        _t_3322686 = _after_3324110?.__copy__();
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3324611i32)) {
                        if ((((_p_3322574._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3322686.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3324662i32;
                        } else {
                            _gotoNext = 3325386i32;
                        };
                    } else if (__value__ == (3324662i32)) {
                        _gotoNext = 3324668i32;
                    } else if (__value__ == (3324668i32)) {
                        {
                            final __value__ = _t_3322686[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3324686i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3324759i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3324835i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3324913i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3325008i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3325304i32;
                            } else {
                                _gotoNext = 3325386i32;
                            };
                        };
                    } else if (__value__ == (3324686i32)) {
                        _p_3322574._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3322686 = (_t_3322686.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3324759i32)) {
                        _p_3322574._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3322686 = (_t_3322686.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3324835i32)) {
                        _p_3322574._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3322686 = (_t_3322686.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3324913i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3322686.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3325386i32;
                    } else if (__value__ == (3325008i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3322686.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3325073 = __tmp__._0?.__copy__();
                            _t_3322686 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3325131i32;
                    } else if (__value__ == (3325131i32)) {
                        if (_lit_3325073 != (stdgo.Go.str())) {
                            _gotoNext = 3325145i32;
                        } else {
                            _gotoNext = 3325284i32;
                        };
                    } else if (__value__ == (3325145i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3325073?.__copy__());
                            _c_3325153 = __tmp__._0;
                            _rest_3325156 = __tmp__._1?.__copy__();
                            _err_3325162 = __tmp__._2;
                        };
                        if (_err_3325162 != null) {
                            _gotoNext = 3325203i32;
                        } else {
                            _gotoNext = 3325242i32;
                        };
                    } else if (__value__ == (3325203i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3325162 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3325242i32;
                    } else if (__value__ == (3325242i32)) {
                        _p_3322574._literal(_c_3325153);
                        _lit_3325073 = _rest_3325156?.__copy__();
                        _gotoNext = 3325131i32;
                    } else if (__value__ == (3325284i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3325304i32)) {
                        _p_3322574._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3322686 = (_t_3322686.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3325386i32)) {
                        _re_3325386 = _p_3322574._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3325386.flags = _p_3322574._flags;
                        if ((((_t_3322686.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3322686[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3322686[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3325542i32;
                        } else {
                            _gotoNext = 3325784i32;
                        };
                    } else if (__value__ == (3325542i32)) {
                        {
                            var __tmp__ = _p_3322574._parseUnicodeClass(_t_3322686?.__copy__(), (_re_3325386.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3325548 = __tmp__._0;
                            _rest_3325551 = __tmp__._1?.__copy__();
                            _err_3325557 = __tmp__._2;
                        };
                        if (_err_3325557 != null) {
                            _gotoNext = 3325619i32;
                        } else {
                            _gotoNext = 3325652i32;
                        };
                    } else if (__value__ == (3325619i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3325557 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3325652i32;
                    } else if (__value__ == (3325652i32)) {
                        if (_r_3325548 != null) {
                            _gotoNext = 3325664i32;
                        } else {
                            _gotoNext = 3325784i32;
                        };
                    } else if (__value__ == (3325664i32)) {
                        _re_3325386.rune = _r_3325548;
                        _t_3322686 = _rest_3325551?.__copy__();
                        _p_3322574._push(_re_3325386);
                        bigSwitchBreak = true;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3325784i32)) {
                        {
                            {
                                var __tmp__ = _p_3322574._parsePerlClassEscape(_t_3322686?.__copy__(), (_re_3325386.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3325787 = __tmp__._0;
                                _rest_3325790 = __tmp__._1?.__copy__();
                            };
                            if (_r_3325787 != null) {
                                _gotoNext = 3325848i32;
                            } else {
                                _gotoNext = 3325922i32;
                            };
                        };
                    } else if (__value__ == (3325848i32)) {
                        _re_3325386.rune = _r_3325787;
                        _t_3322686 = _rest_3325790?.__copy__();
                        _p_3322574._push(_re_3325386);
                        bigSwitchBreak = true;
                        _gotoNext = 3322737i32;
                    } else if (__value__ == (3325922i32)) {
                        _p_3322574._reuse(_re_3325386);
                        {
                            {
                                var __tmp__ = _p_3322574._parseEscape(_t_3322686?.__copy__());
                                _c_3322594 = __tmp__._0;
                                _t_3322686 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3326022i32;
                            } else {
                                _gotoNext = 3326052i32;
                            };
                        };
                    } else if (__value__ == (3326022i32)) {
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
                        _gotoNext = 3326052i32;
                    } else if (__value__ == (3326052i32)) {
                        _p_3322574._literal(_c_3322594);
                        _gotoNext = 3326071i32;
                    } else if (__value__ == (3326071i32)) {
                        _lastRepeat_3322628 = _repeat_3322710?.__copy__();
                        _gotoNext = 3322694i32;
                    } else if (__value__ == (3326096i32)) {
                        _p_3322574._concat();
                        if (_p_3322574._swapVerticalBar()) {
                            _gotoNext = 3326131i32;
                        } else {
                            _gotoNext = 3326196i32;
                        };
                    } else if (__value__ == (3326131i32)) {
                        _p_3322574._stack = (_p_3322574._stack.__slice__(0, ((_p_3322574._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3326196i32;
                    } else if (__value__ == (3326196i32)) {
                        _p_3322574._alternate();
                        _n_3326212 = (_p_3322574._stack.length);
                        if (_n_3326212 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3326241i32;
                        } else {
                            _gotoNext = 3326288i32;
                        };
                    } else if (__value__ == (3326241i32)) {
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
                        _gotoNext = 3326288i32;
                    } else if (__value__ == (3326288i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3322574._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
