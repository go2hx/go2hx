package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3121176:stdgo.Error = (null : stdgo.Error);
            var _rest_3121170:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3120114:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3119791:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3118588:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3121562:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3120131:Bool = false;
            var _before_3120099:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3119916:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3121804:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3121801:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3121400:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _repeat_3118724:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3121087:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3120124:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3121571:stdgo.Error = (null : stdgo.Error);
            var _max_3120119:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3118642:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3118446:stdgo.Error = (null : stdgo.Error);
            var _n_3122226:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3118700:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3118626:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var bigSwitchBreak = false;
            var _rest_3121565:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3121167:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _c_3118608:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3118399i32;
                        } else {
                            _gotoNext = 3118580i32;
                        };
                    } else if (__value__ == (3118399i32)) {
                        {
                            _err_3118446 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3118446 != null) {
                                _gotoNext = 3118478i32;
                            } else {
                                _gotoNext = 3118505i32;
                            };
                        };
                    } else if (__value__ == (3118478i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3118446 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3118505i32;
                    } else if (__value__ == (3118505i32)) {
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
                        _gotoNext = 3118580i32;
                    } else if (__value__ == (3118580i32)) {
                        _p_3118588._flags = _flags;
                        _p_3118588._wholeRegexp = _s?.__copy__();
                        _t_3118700 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3118708i32;
                    } else if (__value__ == (3118708i32)) {
                        if (_t_3118700 != (stdgo.Go.str())) {
                            _gotoNext = 3118720i32;
                        } else {
                            _gotoNext = 3122110i32;
                        };
                    } else if (__value__ == (3118720i32)) {
                        _repeat_3118724 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3118738i32;
                    } else if (__value__ == (3118738i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3118751i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3118700[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3118864i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119134i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119231i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119327i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119442i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119572i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119686i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3119768i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3120069i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3120625i32;
                                } else {
                                    _gotoNext = 3118767i32;
                                };
                            };
                        } else {
                            _gotoNext = 3122085i32;
                        };
                    } else if (__value__ == (3118767i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3118700?.__copy__());
                                _c_3118608 = __tmp__._0;
                                _t_3118700 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3118818i32;
                            } else {
                                _gotoNext = 3118848i32;
                            };
                        };
                    } else if (__value__ == (3118818i32)) {
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
                        _gotoNext = 3118848i32;
                    } else if (__value__ == (3118848i32)) {
                        _p_3118588._literal(_c_3118608);
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3118864i32)) {
                        if ((((_p_3118588._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3118700.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3118700[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3118929i32;
                        } else {
                            _gotoNext = 3119072i32;
                        };
                    } else if (__value__ == (3118929i32)) {
                        {
                            {
                                var __tmp__ = _p_3118588._parsePerlFlags(_t_3118700?.__copy__());
                                _t_3118700 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3119025i32;
                            } else {
                                _gotoNext = 3119058i32;
                            };
                        };
                    } else if (__value__ == (3119025i32)) {
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
                        _gotoNext = 3119058i32;
                    } else if (__value__ == (3119058i32)) {
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119072i32)) {
                        _p_3118588._numCap++;
                        _p_3118588._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3118588._numCap;
                        _t_3118700 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119134i32)) {
                        {
                            _err = _p_3118588._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3119189i32;
                            } else {
                                _gotoNext = 3119219i32;
                            };
                        };
                    } else if (__value__ == (3119189i32)) {
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
                        _gotoNext = 3119219i32;
                    } else if (__value__ == (3119219i32)) {
                        _t_3118700 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119231i32)) {
                        {
                            _err = _p_3118588._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3119285i32;
                            } else {
                                _gotoNext = 3119315i32;
                            };
                        };
                    } else if (__value__ == (3119285i32)) {
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
                        _gotoNext = 3119315i32;
                    } else if (__value__ == (3119315i32)) {
                        _t_3118700 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119327i32)) {
                        if ((_p_3118588._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3119364i32;
                        } else {
                            _gotoNext = 3119398i32;
                        };
                    } else if (__value__ == (3119364i32)) {
                        _p_3118588._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3119430i32;
                    } else if (__value__ == (3119398i32)) {
                        _gotoNext = 3119398i32;
                        _p_3118588._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3119430i32;
                    } else if (__value__ == (3119430i32)) {
                        _t_3118700 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119442i32)) {
                        if ((_p_3118588._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3119479i32;
                        } else {
                            _gotoNext = 3119530i32;
                        };
                    } else if (__value__ == (3119479i32)) {
                        _p_3118588._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3118588._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3119560i32;
                    } else if (__value__ == (3119530i32)) {
                        _gotoNext = 3119530i32;
                        _p_3118588._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3119560i32;
                    } else if (__value__ == (3119560i32)) {
                        _t_3118700 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119572i32)) {
                        if ((_p_3118588._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3119607i32;
                        } else {
                            _gotoNext = 3119639i32;
                        };
                    } else if (__value__ == (3119607i32)) {
                        _p_3118588._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3119674i32;
                    } else if (__value__ == (3119639i32)) {
                        _gotoNext = 3119639i32;
                        _p_3118588._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3119674i32;
                    } else if (__value__ == (3119674i32)) {
                        _t_3118700 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119686i32)) {
                        {
                            {
                                var __tmp__ = _p_3118588._parseClass(_t_3118700?.__copy__());
                                _t_3118700 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3119739i32;
                            } else {
                                _gotoNext = 3122085i32;
                            };
                        };
                    } else if (__value__ == (3119739i32)) {
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
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3119768i32)) {
                        _before_3119791 = _t_3118700?.__copy__();
                        _gotoNext = 3119806i32;
                    } else if (__value__ == (3119806i32)) {
                        {
                            final __value__ = _t_3118700[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3119823i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3119852i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3119881i32;
                            } else {
                                _gotoNext = 3119916i32;
                            };
                        };
                    } else if (__value__ == (3119823i32)) {
                        _op_3118626 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3119916i32;
                    } else if (__value__ == (3119852i32)) {
                        _op_3118626 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3119916i32;
                    } else if (__value__ == (3119881i32)) {
                        _op_3118626 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3119916i32;
                    } else if (__value__ == (3119916i32)) {
                        _after_3119916 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3118588._repeat(_op_3118626, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3119791?.__copy__(), _after_3119916?.__copy__(), _lastRepeat_3118642?.__copy__());
                                _after_3119916 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3120008i32;
                            } else {
                                _gotoNext = 3120038i32;
                            };
                        };
                    } else if (__value__ == (3120008i32)) {
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
                        _gotoNext = 3120038i32;
                    } else if (__value__ == (3120038i32)) {
                        _repeat_3118724 = _before_3119791?.__copy__();
                        _t_3118700 = _after_3119916?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3120069i32)) {
                        _op_3118626 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3120099 = _t_3118700?.__copy__();
                        {
                            var __tmp__ = _p_3118588._parseRepeat(_t_3118700?.__copy__());
                            _min_3120114 = __tmp__._0;
                            _max_3120119 = __tmp__._1;
                            _after_3120124 = __tmp__._2?.__copy__();
                            _ok_3120131 = __tmp__._3;
                        };
                        if (!_ok_3120131) {
                            _gotoNext = 3120164i32;
                        } else {
                            _gotoNext = 3120272i32;
                        };
                    } else if (__value__ == (3120164i32)) {
                        _p_3118588._literal((123 : stdgo.GoInt32));
                        _t_3118700 = (_t_3118700.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3120272i32)) {
                        if (((((_min_3120114 < (0 : stdgo.GoInt) : Bool) || (_min_3120114 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3120119 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3120119 >= (0 : stdgo.GoInt) : Bool) && (_min_3120114 > _max_3120119 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3120336i32;
                        } else {
                            _gotoNext = 3120486i32;
                        };
                    } else if (__value__ == (3120336i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3120099.__slice__(0, ((_before_3120099.length) - (_after_3120124.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3120486i32;
                    } else if (__value__ == (3120486i32)) {
                        {
                            {
                                var __tmp__ = _p_3118588._repeat(_op_3118626, _min_3120114, _max_3120119, _before_3120099?.__copy__(), _after_3120124?.__copy__(), _lastRepeat_3118642?.__copy__());
                                _after_3120124 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3120564i32;
                            } else {
                                _gotoNext = 3120594i32;
                            };
                        };
                    } else if (__value__ == (3120564i32)) {
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
                        _gotoNext = 3120594i32;
                    } else if (__value__ == (3120594i32)) {
                        _repeat_3118724 = _before_3120099?.__copy__();
                        _t_3118700 = _after_3120124?.__copy__();
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3120625i32)) {
                        if ((((_p_3118588._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3118700.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3120676i32;
                        } else {
                            _gotoNext = 3121400i32;
                        };
                    } else if (__value__ == (3120676i32)) {
                        _gotoNext = 3120682i32;
                    } else if (__value__ == (3120682i32)) {
                        {
                            final __value__ = _t_3118700[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3120700i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3120773i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3120849i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3120927i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3121022i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3121318i32;
                            } else {
                                _gotoNext = 3121400i32;
                            };
                        };
                    } else if (__value__ == (3120700i32)) {
                        _p_3118588._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3118700 = (_t_3118700.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3120773i32)) {
                        _p_3118588._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3118700 = (_t_3118700.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3120849i32)) {
                        _p_3118588._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3118700 = (_t_3118700.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3120927i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3118700.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3121400i32;
                    } else if (__value__ == (3121022i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3118700.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3121087 = __tmp__._0?.__copy__();
                            _t_3118700 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3121145i32;
                    } else if (__value__ == (3121145i32)) {
                        if (_lit_3121087 != (stdgo.Go.str())) {
                            _gotoNext = 3121159i32;
                        } else {
                            _gotoNext = 3121298i32;
                        };
                    } else if (__value__ == (3121159i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3121087?.__copy__());
                            _c_3121167 = __tmp__._0;
                            _rest_3121170 = __tmp__._1?.__copy__();
                            _err_3121176 = __tmp__._2;
                        };
                        if (_err_3121176 != null) {
                            _gotoNext = 3121217i32;
                        } else {
                            _gotoNext = 3121256i32;
                        };
                    } else if (__value__ == (3121217i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3121176 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3121256i32;
                    } else if (__value__ == (3121256i32)) {
                        _p_3118588._literal(_c_3121167);
                        _lit_3121087 = _rest_3121170?.__copy__();
                        _gotoNext = 3121145i32;
                    } else if (__value__ == (3121298i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3121318i32)) {
                        _p_3118588._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3118700 = (_t_3118700.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3121400i32)) {
                        _re_3121400 = _p_3118588._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3121400.flags = _p_3118588._flags;
                        if ((((_t_3118700.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3118700[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3118700[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3121556i32;
                        } else {
                            _gotoNext = 3121798i32;
                        };
                    } else if (__value__ == (3121556i32)) {
                        {
                            var __tmp__ = _p_3118588._parseUnicodeClass(_t_3118700?.__copy__(), (_re_3121400.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3121562 = __tmp__._0;
                            _rest_3121565 = __tmp__._1?.__copy__();
                            _err_3121571 = __tmp__._2;
                        };
                        if (_err_3121571 != null) {
                            _gotoNext = 3121633i32;
                        } else {
                            _gotoNext = 3121666i32;
                        };
                    } else if (__value__ == (3121633i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3121571 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3121666i32;
                    } else if (__value__ == (3121666i32)) {
                        if (_r_3121562 != null) {
                            _gotoNext = 3121678i32;
                        } else {
                            _gotoNext = 3121798i32;
                        };
                    } else if (__value__ == (3121678i32)) {
                        _re_3121400.rune = _r_3121562;
                        _t_3118700 = _rest_3121565?.__copy__();
                        _p_3118588._push(_re_3121400);
                        bigSwitchBreak = true;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3121798i32)) {
                        {
                            {
                                var __tmp__ = _p_3118588._parsePerlClassEscape(_t_3118700?.__copy__(), (_re_3121400.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3121801 = __tmp__._0;
                                _rest_3121804 = __tmp__._1?.__copy__();
                            };
                            if (_r_3121801 != null) {
                                _gotoNext = 3121862i32;
                            } else {
                                _gotoNext = 3121936i32;
                            };
                        };
                    } else if (__value__ == (3121862i32)) {
                        _re_3121400.rune = _r_3121801;
                        _t_3118700 = _rest_3121804?.__copy__();
                        _p_3118588._push(_re_3121400);
                        bigSwitchBreak = true;
                        _gotoNext = 3118751i32;
                    } else if (__value__ == (3121936i32)) {
                        _p_3118588._reuse(_re_3121400);
                        {
                            {
                                var __tmp__ = _p_3118588._parseEscape(_t_3118700?.__copy__());
                                _c_3118608 = __tmp__._0;
                                _t_3118700 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3122036i32;
                            } else {
                                _gotoNext = 3122066i32;
                            };
                        };
                    } else if (__value__ == (3122036i32)) {
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
                        _gotoNext = 3122066i32;
                    } else if (__value__ == (3122066i32)) {
                        _p_3118588._literal(_c_3118608);
                        _gotoNext = 3122085i32;
                    } else if (__value__ == (3122085i32)) {
                        _lastRepeat_3118642 = _repeat_3118724?.__copy__();
                        _gotoNext = 3118708i32;
                    } else if (__value__ == (3122110i32)) {
                        _p_3118588._concat();
                        if (_p_3118588._swapVerticalBar()) {
                            _gotoNext = 3122145i32;
                        } else {
                            _gotoNext = 3122210i32;
                        };
                    } else if (__value__ == (3122145i32)) {
                        _p_3118588._stack = (_p_3118588._stack.__slice__(0, ((_p_3118588._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3122210i32;
                    } else if (__value__ == (3122210i32)) {
                        _p_3118588._alternate();
                        _n_3122226 = (_p_3118588._stack.length);
                        if (_n_3122226 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3122255i32;
                        } else {
                            _gotoNext = 3122302i32;
                        };
                    } else if (__value__ == (3122255i32)) {
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
                        _gotoNext = 3122302i32;
                    } else if (__value__ == (3122302i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3118588._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
