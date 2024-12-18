package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3260590:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3257633:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3261251:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3260826:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3259149:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3259144:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3257725:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3257651:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _p_3257613:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3260829:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3260587:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3260425:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _min_3259139:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3260192:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lastRepeat_3257667:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3260596:stdgo.Error = (null : stdgo.Error);
            var _err_3260201:stdgo.Error = (null : stdgo.Error);
            var _before_3259124:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3258816:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3257749:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3259156:Bool = false;
            var _err_3257471:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _rest_3260195:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3260112:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3258941:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3257424i32;
                        } else {
                            _gotoNext = 3257605i32;
                        };
                    } else if (__value__ == (3257424i32)) {
                        {
                            _err_3257471 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3257471 != null) {
                                _gotoNext = 3257503i32;
                            } else {
                                _gotoNext = 3257530i32;
                            };
                        };
                    } else if (__value__ == (3257503i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3257471 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3257530i32;
                    } else if (__value__ == (3257530i32)) {
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
                        _gotoNext = 3257605i32;
                    } else if (__value__ == (3257605i32)) {
                        _p_3257613._flags = _flags;
                        _p_3257613._wholeRegexp = _s?.__copy__();
                        _t_3257725 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3257733i32;
                    } else if (__value__ == (3257733i32)) {
                        if (_t_3257725 != (stdgo.Go.str())) {
                            _gotoNext = 3257745i32;
                        } else {
                            _gotoNext = 3261135i32;
                        };
                    } else if (__value__ == (3257745i32)) {
                        _repeat_3257749 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3257763i32;
                    } else if (__value__ == (3257763i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3257776i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3257725[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3257889i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3258159i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3258256i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3258352i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3258467i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3258597i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3258711i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3258793i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3259094i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3259650i32;
                                } else {
                                    _gotoNext = 3257792i32;
                                };
                            };
                        } else {
                            _gotoNext = 3261110i32;
                        };
                    } else if (__value__ == (3257792i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3257725?.__copy__());
                                _c_3257633 = __tmp__._0;
                                _t_3257725 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3257843i32;
                            } else {
                                _gotoNext = 3257873i32;
                            };
                        };
                    } else if (__value__ == (3257843i32)) {
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
                        _gotoNext = 3257873i32;
                    } else if (__value__ == (3257873i32)) {
                        _p_3257613._literal(_c_3257633);
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3257889i32)) {
                        if ((((_p_3257613._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3257725.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3257725[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3257954i32;
                        } else {
                            _gotoNext = 3258097i32;
                        };
                    } else if (__value__ == (3257954i32)) {
                        {
                            {
                                var __tmp__ = _p_3257613._parsePerlFlags(_t_3257725?.__copy__());
                                _t_3257725 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3258050i32;
                            } else {
                                _gotoNext = 3258083i32;
                            };
                        };
                    } else if (__value__ == (3258050i32)) {
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
                        _gotoNext = 3258083i32;
                    } else if (__value__ == (3258083i32)) {
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258097i32)) {
                        _p_3257613._numCap++;
                        _p_3257613._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3257613._numCap;
                        _t_3257725 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258159i32)) {
                        {
                            _err = _p_3257613._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3258214i32;
                            } else {
                                _gotoNext = 3258244i32;
                            };
                        };
                    } else if (__value__ == (3258214i32)) {
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
                        _gotoNext = 3258244i32;
                    } else if (__value__ == (3258244i32)) {
                        _t_3257725 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258256i32)) {
                        {
                            _err = _p_3257613._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3258310i32;
                            } else {
                                _gotoNext = 3258340i32;
                            };
                        };
                    } else if (__value__ == (3258310i32)) {
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
                        _gotoNext = 3258340i32;
                    } else if (__value__ == (3258340i32)) {
                        _t_3257725 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258352i32)) {
                        if ((_p_3257613._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3258389i32;
                        } else {
                            _gotoNext = 3258423i32;
                        };
                    } else if (__value__ == (3258389i32)) {
                        _p_3257613._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3258455i32;
                    } else if (__value__ == (3258423i32)) {
                        _gotoNext = 3258423i32;
                        _p_3257613._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3258455i32;
                    } else if (__value__ == (3258455i32)) {
                        _t_3257725 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258467i32)) {
                        if ((_p_3257613._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3258504i32;
                        } else {
                            _gotoNext = 3258555i32;
                        };
                    } else if (__value__ == (3258504i32)) {
                        _p_3257613._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3257613._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3258585i32;
                    } else if (__value__ == (3258555i32)) {
                        _gotoNext = 3258555i32;
                        _p_3257613._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3258585i32;
                    } else if (__value__ == (3258585i32)) {
                        _t_3257725 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258597i32)) {
                        if ((_p_3257613._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3258632i32;
                        } else {
                            _gotoNext = 3258664i32;
                        };
                    } else if (__value__ == (3258632i32)) {
                        _p_3257613._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3258699i32;
                    } else if (__value__ == (3258664i32)) {
                        _gotoNext = 3258664i32;
                        _p_3257613._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3258699i32;
                    } else if (__value__ == (3258699i32)) {
                        _t_3257725 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258711i32)) {
                        {
                            {
                                var __tmp__ = _p_3257613._parseClass(_t_3257725?.__copy__());
                                _t_3257725 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3258764i32;
                            } else {
                                _gotoNext = 3261110i32;
                            };
                        };
                    } else if (__value__ == (3258764i32)) {
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
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3258793i32)) {
                        _before_3258816 = _t_3257725?.__copy__();
                        _gotoNext = 3258831i32;
                    } else if (__value__ == (3258831i32)) {
                        {
                            final __value__ = _t_3257725[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3258848i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3258877i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3258906i32;
                            } else {
                                _gotoNext = 3258941i32;
                            };
                        };
                    } else if (__value__ == (3258848i32)) {
                        _op_3257651 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3258941i32;
                    } else if (__value__ == (3258877i32)) {
                        _op_3257651 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3258941i32;
                    } else if (__value__ == (3258906i32)) {
                        _op_3257651 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3258941i32;
                    } else if (__value__ == (3258941i32)) {
                        _after_3258941 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3257613._repeat(_op_3257651, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3258816?.__copy__(), _after_3258941?.__copy__(), _lastRepeat_3257667?.__copy__());
                                _after_3258941 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3259033i32;
                            } else {
                                _gotoNext = 3259063i32;
                            };
                        };
                    } else if (__value__ == (3259033i32)) {
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
                        _gotoNext = 3259063i32;
                    } else if (__value__ == (3259063i32)) {
                        _repeat_3257749 = _before_3258816?.__copy__();
                        _t_3257725 = _after_3258941?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3259094i32)) {
                        _op_3257651 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3259124 = _t_3257725?.__copy__();
                        {
                            var __tmp__ = _p_3257613._parseRepeat(_t_3257725?.__copy__());
                            _min_3259139 = __tmp__._0;
                            _max_3259144 = __tmp__._1;
                            _after_3259149 = __tmp__._2?.__copy__();
                            _ok_3259156 = __tmp__._3;
                        };
                        if (!_ok_3259156) {
                            _gotoNext = 3259189i32;
                        } else {
                            _gotoNext = 3259297i32;
                        };
                    } else if (__value__ == (3259189i32)) {
                        _p_3257613._literal((123 : stdgo.GoInt32));
                        _t_3257725 = (_t_3257725.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3259297i32)) {
                        if (((((_min_3259139 < (0 : stdgo.GoInt) : Bool) || (_min_3259139 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3259144 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3259144 >= (0 : stdgo.GoInt) : Bool) && (_min_3259139 > _max_3259144 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3259361i32;
                        } else {
                            _gotoNext = 3259511i32;
                        };
                    } else if (__value__ == (3259361i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3259124.__slice__(0, ((_before_3259124.length) - (_after_3259149.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3259511i32;
                    } else if (__value__ == (3259511i32)) {
                        {
                            {
                                var __tmp__ = _p_3257613._repeat(_op_3257651, _min_3259139, _max_3259144, _before_3259124?.__copy__(), _after_3259149?.__copy__(), _lastRepeat_3257667?.__copy__());
                                _after_3259149 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3259589i32;
                            } else {
                                _gotoNext = 3259619i32;
                            };
                        };
                    } else if (__value__ == (3259589i32)) {
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
                        _gotoNext = 3259619i32;
                    } else if (__value__ == (3259619i32)) {
                        _repeat_3257749 = _before_3259124?.__copy__();
                        _t_3257725 = _after_3259149?.__copy__();
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3259650i32)) {
                        if ((((_p_3257613._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3257725.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3259701i32;
                        } else {
                            _gotoNext = 3260425i32;
                        };
                    } else if (__value__ == (3259701i32)) {
                        _gotoNext = 3259707i32;
                    } else if (__value__ == (3259707i32)) {
                        {
                            final __value__ = _t_3257725[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3259725i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3259798i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3259874i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3259952i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3260047i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3260343i32;
                            } else {
                                _gotoNext = 3260425i32;
                            };
                        };
                    } else if (__value__ == (3259725i32)) {
                        _p_3257613._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3257725 = (_t_3257725.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3259798i32)) {
                        _p_3257613._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3257725 = (_t_3257725.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3259874i32)) {
                        _p_3257613._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3257725 = (_t_3257725.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3259952i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3257725.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3260425i32;
                    } else if (__value__ == (3260047i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3257725.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3260112 = __tmp__._0?.__copy__();
                            _t_3257725 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3260170i32;
                    } else if (__value__ == (3260170i32)) {
                        if (_lit_3260112 != (stdgo.Go.str())) {
                            _gotoNext = 3260184i32;
                        } else {
                            _gotoNext = 3260323i32;
                        };
                    } else if (__value__ == (3260184i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3260112?.__copy__());
                            _c_3260192 = __tmp__._0;
                            _rest_3260195 = __tmp__._1?.__copy__();
                            _err_3260201 = __tmp__._2;
                        };
                        if (_err_3260201 != null) {
                            _gotoNext = 3260242i32;
                        } else {
                            _gotoNext = 3260281i32;
                        };
                    } else if (__value__ == (3260242i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3260201 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3260281i32;
                    } else if (__value__ == (3260281i32)) {
                        _p_3257613._literal(_c_3260192);
                        _lit_3260112 = _rest_3260195?.__copy__();
                        _gotoNext = 3260170i32;
                    } else if (__value__ == (3260323i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3260343i32)) {
                        _p_3257613._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3257725 = (_t_3257725.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3260425i32)) {
                        _re_3260425 = _p_3257613._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3260425.flags = _p_3257613._flags;
                        if ((((_t_3257725.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3257725[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3257725[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3260581i32;
                        } else {
                            _gotoNext = 3260823i32;
                        };
                    } else if (__value__ == (3260581i32)) {
                        {
                            var __tmp__ = _p_3257613._parseUnicodeClass(_t_3257725?.__copy__(), (_re_3260425.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3260587 = __tmp__._0;
                            _rest_3260590 = __tmp__._1?.__copy__();
                            _err_3260596 = __tmp__._2;
                        };
                        if (_err_3260596 != null) {
                            _gotoNext = 3260658i32;
                        } else {
                            _gotoNext = 3260691i32;
                        };
                    } else if (__value__ == (3260658i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3260596 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3260691i32;
                    } else if (__value__ == (3260691i32)) {
                        if (_r_3260587 != null) {
                            _gotoNext = 3260703i32;
                        } else {
                            _gotoNext = 3260823i32;
                        };
                    } else if (__value__ == (3260703i32)) {
                        _re_3260425.rune = _r_3260587;
                        _t_3257725 = _rest_3260590?.__copy__();
                        _p_3257613._push(_re_3260425);
                        bigSwitchBreak = true;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3260823i32)) {
                        {
                            {
                                var __tmp__ = _p_3257613._parsePerlClassEscape(_t_3257725?.__copy__(), (_re_3260425.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3260826 = __tmp__._0;
                                _rest_3260829 = __tmp__._1?.__copy__();
                            };
                            if (_r_3260826 != null) {
                                _gotoNext = 3260887i32;
                            } else {
                                _gotoNext = 3260961i32;
                            };
                        };
                    } else if (__value__ == (3260887i32)) {
                        _re_3260425.rune = _r_3260826;
                        _t_3257725 = _rest_3260829?.__copy__();
                        _p_3257613._push(_re_3260425);
                        bigSwitchBreak = true;
                        _gotoNext = 3257776i32;
                    } else if (__value__ == (3260961i32)) {
                        _p_3257613._reuse(_re_3260425);
                        {
                            {
                                var __tmp__ = _p_3257613._parseEscape(_t_3257725?.__copy__());
                                _c_3257633 = __tmp__._0;
                                _t_3257725 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3261061i32;
                            } else {
                                _gotoNext = 3261091i32;
                            };
                        };
                    } else if (__value__ == (3261061i32)) {
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
                        _gotoNext = 3261091i32;
                    } else if (__value__ == (3261091i32)) {
                        _p_3257613._literal(_c_3257633);
                        _gotoNext = 3261110i32;
                    } else if (__value__ == (3261110i32)) {
                        _lastRepeat_3257667 = _repeat_3257749?.__copy__();
                        _gotoNext = 3257733i32;
                    } else if (__value__ == (3261135i32)) {
                        _p_3257613._concat();
                        if (_p_3257613._swapVerticalBar()) {
                            _gotoNext = 3261170i32;
                        } else {
                            _gotoNext = 3261235i32;
                        };
                    } else if (__value__ == (3261170i32)) {
                        _p_3257613._stack = (_p_3257613._stack.__slice__(0, ((_p_3257613._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3261235i32;
                    } else if (__value__ == (3261235i32)) {
                        _p_3257613._alternate();
                        _n_3261251 = (_p_3257613._stack.length);
                        if (_n_3261251 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3261280i32;
                        } else {
                            _gotoNext = 3261327i32;
                        };
                    } else if (__value__ == (3261280i32)) {
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
                        _gotoNext = 3261327i32;
                    } else if (__value__ == (3261327i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3257613._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
