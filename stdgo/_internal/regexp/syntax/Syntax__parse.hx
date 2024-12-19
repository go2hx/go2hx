package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3308913:stdgo.Error = (null : stdgo.Error);
            var _err_3306183:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _rest_3309302:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3307528:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3306325:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _c_3308904:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3307836:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3308824:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3307653:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3309137:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _rest_3308907:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3309963:stdgo.GoInt = (0 : stdgo.GoInt);
            var _ok_3307868:Bool = false;
            var _c_3306345:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3309541:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3307861:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3306379:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3309299:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _repeat_3306461:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3306437:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3309538:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _max_3307856:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3307851:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3309308:stdgo.Error = (null : stdgo.Error);
            var _op_3306363:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
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
                            _gotoNext = 3306136i32;
                        } else {
                            _gotoNext = 3306317i32;
                        };
                    } else if (__value__ == (3306136i32)) {
                        {
                            _err_3306183 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3306183 != null) {
                                _gotoNext = 3306215i32;
                            } else {
                                _gotoNext = 3306242i32;
                            };
                        };
                    } else if (__value__ == (3306215i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3306183 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3306242i32;
                    } else if (__value__ == (3306242i32)) {
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
                        _gotoNext = 3306317i32;
                    } else if (__value__ == (3306317i32)) {
                        _p_3306325._flags = _flags;
                        _p_3306325._wholeRegexp = _s?.__copy__();
                        _t_3306437 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3306445i32;
                    } else if (__value__ == (3306445i32)) {
                        if (_t_3306437 != (stdgo.Go.str())) {
                            _gotoNext = 3306457i32;
                        } else {
                            _gotoNext = 3309847i32;
                        };
                    } else if (__value__ == (3306457i32)) {
                        _repeat_3306461 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3306475i32;
                    } else if (__value__ == (3306475i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3306488i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3306437[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306601i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306871i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3306968i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307064i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307179i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307309i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307423i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307505i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3307806i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3308362i32;
                                } else {
                                    _gotoNext = 3306504i32;
                                };
                            };
                        } else {
                            _gotoNext = 3309822i32;
                        };
                    } else if (__value__ == (3306504i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3306437?.__copy__());
                                _c_3306345 = __tmp__._0;
                                _t_3306437 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3306555i32;
                            } else {
                                _gotoNext = 3306585i32;
                            };
                        };
                    } else if (__value__ == (3306555i32)) {
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
                        _gotoNext = 3306585i32;
                    } else if (__value__ == (3306585i32)) {
                        _p_3306325._literal(_c_3306345);
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3306601i32)) {
                        if ((((_p_3306325._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3306437.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3306437[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3306666i32;
                        } else {
                            _gotoNext = 3306809i32;
                        };
                    } else if (__value__ == (3306666i32)) {
                        {
                            {
                                var __tmp__ = _p_3306325._parsePerlFlags(_t_3306437?.__copy__());
                                _t_3306437 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3306762i32;
                            } else {
                                _gotoNext = 3306795i32;
                            };
                        };
                    } else if (__value__ == (3306762i32)) {
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
                        _gotoNext = 3306795i32;
                    } else if (__value__ == (3306795i32)) {
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3306809i32)) {
                        _p_3306325._numCap++;
                        _p_3306325._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3306325._numCap;
                        _t_3306437 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3306871i32)) {
                        {
                            _err = _p_3306325._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3306926i32;
                            } else {
                                _gotoNext = 3306956i32;
                            };
                        };
                    } else if (__value__ == (3306926i32)) {
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
                        _gotoNext = 3306956i32;
                    } else if (__value__ == (3306956i32)) {
                        _t_3306437 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3306968i32)) {
                        {
                            _err = _p_3306325._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3307022i32;
                            } else {
                                _gotoNext = 3307052i32;
                            };
                        };
                    } else if (__value__ == (3307022i32)) {
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
                        _gotoNext = 3307052i32;
                    } else if (__value__ == (3307052i32)) {
                        _t_3306437 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3307064i32)) {
                        if ((_p_3306325._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3307101i32;
                        } else {
                            _gotoNext = 3307135i32;
                        };
                    } else if (__value__ == (3307101i32)) {
                        _p_3306325._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3307167i32;
                    } else if (__value__ == (3307135i32)) {
                        _gotoNext = 3307135i32;
                        _p_3306325._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3307167i32;
                    } else if (__value__ == (3307167i32)) {
                        _t_3306437 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3307179i32)) {
                        if ((_p_3306325._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3307216i32;
                        } else {
                            _gotoNext = 3307267i32;
                        };
                    } else if (__value__ == (3307216i32)) {
                        _p_3306325._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3306325._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3307297i32;
                    } else if (__value__ == (3307267i32)) {
                        _gotoNext = 3307267i32;
                        _p_3306325._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3307297i32;
                    } else if (__value__ == (3307297i32)) {
                        _t_3306437 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3307309i32)) {
                        if ((_p_3306325._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3307344i32;
                        } else {
                            _gotoNext = 3307376i32;
                        };
                    } else if (__value__ == (3307344i32)) {
                        _p_3306325._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3307411i32;
                    } else if (__value__ == (3307376i32)) {
                        _gotoNext = 3307376i32;
                        _p_3306325._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3307411i32;
                    } else if (__value__ == (3307411i32)) {
                        _t_3306437 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3307423i32)) {
                        {
                            {
                                var __tmp__ = _p_3306325._parseClass(_t_3306437?.__copy__());
                                _t_3306437 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3307476i32;
                            } else {
                                _gotoNext = 3309822i32;
                            };
                        };
                    } else if (__value__ == (3307476i32)) {
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
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3307505i32)) {
                        _before_3307528 = _t_3306437?.__copy__();
                        _gotoNext = 3307543i32;
                    } else if (__value__ == (3307543i32)) {
                        {
                            final __value__ = _t_3306437[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3307560i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3307589i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3307618i32;
                            } else {
                                _gotoNext = 3307653i32;
                            };
                        };
                    } else if (__value__ == (3307560i32)) {
                        _op_3306363 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3307653i32;
                    } else if (__value__ == (3307589i32)) {
                        _op_3306363 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3307653i32;
                    } else if (__value__ == (3307618i32)) {
                        _op_3306363 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3307653i32;
                    } else if (__value__ == (3307653i32)) {
                        _after_3307653 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3306325._repeat(_op_3306363, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3307528?.__copy__(), _after_3307653?.__copy__(), _lastRepeat_3306379?.__copy__());
                                _after_3307653 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3307745i32;
                            } else {
                                _gotoNext = 3307775i32;
                            };
                        };
                    } else if (__value__ == (3307745i32)) {
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
                        _gotoNext = 3307775i32;
                    } else if (__value__ == (3307775i32)) {
                        _repeat_3306461 = _before_3307528?.__copy__();
                        _t_3306437 = _after_3307653?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3307806i32)) {
                        _op_3306363 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3307836 = _t_3306437?.__copy__();
                        {
                            var __tmp__ = _p_3306325._parseRepeat(_t_3306437?.__copy__());
                            _min_3307851 = __tmp__._0;
                            _max_3307856 = __tmp__._1;
                            _after_3307861 = __tmp__._2?.__copy__();
                            _ok_3307868 = __tmp__._3;
                        };
                        if (!_ok_3307868) {
                            _gotoNext = 3307901i32;
                        } else {
                            _gotoNext = 3308009i32;
                        };
                    } else if (__value__ == (3307901i32)) {
                        _p_3306325._literal((123 : stdgo.GoInt32));
                        _t_3306437 = (_t_3306437.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3308009i32)) {
                        if (((((_min_3307851 < (0 : stdgo.GoInt) : Bool) || (_min_3307851 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3307856 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3307856 >= (0 : stdgo.GoInt) : Bool) && (_min_3307851 > _max_3307856 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3308073i32;
                        } else {
                            _gotoNext = 3308223i32;
                        };
                    } else if (__value__ == (3308073i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3307836.__slice__(0, ((_before_3307836.length) - (_after_3307861.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3308223i32;
                    } else if (__value__ == (3308223i32)) {
                        {
                            {
                                var __tmp__ = _p_3306325._repeat(_op_3306363, _min_3307851, _max_3307856, _before_3307836?.__copy__(), _after_3307861?.__copy__(), _lastRepeat_3306379?.__copy__());
                                _after_3307861 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3308301i32;
                            } else {
                                _gotoNext = 3308331i32;
                            };
                        };
                    } else if (__value__ == (3308301i32)) {
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
                        _gotoNext = 3308331i32;
                    } else if (__value__ == (3308331i32)) {
                        _repeat_3306461 = _before_3307836?.__copy__();
                        _t_3306437 = _after_3307861?.__copy__();
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3308362i32)) {
                        if ((((_p_3306325._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3306437.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3308413i32;
                        } else {
                            _gotoNext = 3309137i32;
                        };
                    } else if (__value__ == (3308413i32)) {
                        _gotoNext = 3308419i32;
                    } else if (__value__ == (3308419i32)) {
                        {
                            final __value__ = _t_3306437[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3308437i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3308510i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3308586i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3308664i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3308759i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3309055i32;
                            } else {
                                _gotoNext = 3309137i32;
                            };
                        };
                    } else if (__value__ == (3308437i32)) {
                        _p_3306325._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3306437 = (_t_3306437.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3308510i32)) {
                        _p_3306325._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3306437 = (_t_3306437.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3308586i32)) {
                        _p_3306325._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3306437 = (_t_3306437.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3308664i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3306437.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3309137i32;
                    } else if (__value__ == (3308759i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3306437.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3308824 = __tmp__._0?.__copy__();
                            _t_3306437 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3308882i32;
                    } else if (__value__ == (3308882i32)) {
                        if (_lit_3308824 != (stdgo.Go.str())) {
                            _gotoNext = 3308896i32;
                        } else {
                            _gotoNext = 3309035i32;
                        };
                    } else if (__value__ == (3308896i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3308824?.__copy__());
                            _c_3308904 = __tmp__._0;
                            _rest_3308907 = __tmp__._1?.__copy__();
                            _err_3308913 = __tmp__._2;
                        };
                        if (_err_3308913 != null) {
                            _gotoNext = 3308954i32;
                        } else {
                            _gotoNext = 3308993i32;
                        };
                    } else if (__value__ == (3308954i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3308913 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3308993i32;
                    } else if (__value__ == (3308993i32)) {
                        _p_3306325._literal(_c_3308904);
                        _lit_3308824 = _rest_3308907?.__copy__();
                        _gotoNext = 3308882i32;
                    } else if (__value__ == (3309035i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3309055i32)) {
                        _p_3306325._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3306437 = (_t_3306437.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3309137i32)) {
                        _re_3309137 = _p_3306325._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3309137.flags = _p_3306325._flags;
                        if ((((_t_3306437.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3306437[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3306437[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3309293i32;
                        } else {
                            _gotoNext = 3309535i32;
                        };
                    } else if (__value__ == (3309293i32)) {
                        {
                            var __tmp__ = _p_3306325._parseUnicodeClass(_t_3306437?.__copy__(), (_re_3309137.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3309299 = __tmp__._0;
                            _rest_3309302 = __tmp__._1?.__copy__();
                            _err_3309308 = __tmp__._2;
                        };
                        if (_err_3309308 != null) {
                            _gotoNext = 3309370i32;
                        } else {
                            _gotoNext = 3309403i32;
                        };
                    } else if (__value__ == (3309370i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3309308 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3309403i32;
                    } else if (__value__ == (3309403i32)) {
                        if (_r_3309299 != null) {
                            _gotoNext = 3309415i32;
                        } else {
                            _gotoNext = 3309535i32;
                        };
                    } else if (__value__ == (3309415i32)) {
                        _re_3309137.rune = _r_3309299;
                        _t_3306437 = _rest_3309302?.__copy__();
                        _p_3306325._push(_re_3309137);
                        bigSwitchBreak = true;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3309535i32)) {
                        {
                            {
                                var __tmp__ = _p_3306325._parsePerlClassEscape(_t_3306437?.__copy__(), (_re_3309137.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3309538 = __tmp__._0;
                                _rest_3309541 = __tmp__._1?.__copy__();
                            };
                            if (_r_3309538 != null) {
                                _gotoNext = 3309599i32;
                            } else {
                                _gotoNext = 3309673i32;
                            };
                        };
                    } else if (__value__ == (3309599i32)) {
                        _re_3309137.rune = _r_3309538;
                        _t_3306437 = _rest_3309541?.__copy__();
                        _p_3306325._push(_re_3309137);
                        bigSwitchBreak = true;
                        _gotoNext = 3306488i32;
                    } else if (__value__ == (3309673i32)) {
                        _p_3306325._reuse(_re_3309137);
                        {
                            {
                                var __tmp__ = _p_3306325._parseEscape(_t_3306437?.__copy__());
                                _c_3306345 = __tmp__._0;
                                _t_3306437 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3309773i32;
                            } else {
                                _gotoNext = 3309803i32;
                            };
                        };
                    } else if (__value__ == (3309773i32)) {
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
                        _gotoNext = 3309803i32;
                    } else if (__value__ == (3309803i32)) {
                        _p_3306325._literal(_c_3306345);
                        _gotoNext = 3309822i32;
                    } else if (__value__ == (3309822i32)) {
                        _lastRepeat_3306379 = _repeat_3306461?.__copy__();
                        _gotoNext = 3306445i32;
                    } else if (__value__ == (3309847i32)) {
                        _p_3306325._concat();
                        if (_p_3306325._swapVerticalBar()) {
                            _gotoNext = 3309882i32;
                        } else {
                            _gotoNext = 3309947i32;
                        };
                    } else if (__value__ == (3309882i32)) {
                        _p_3306325._stack = (_p_3306325._stack.__slice__(0, ((_p_3306325._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3309947i32;
                    } else if (__value__ == (3309947i32)) {
                        _p_3306325._alternate();
                        _n_3309963 = (_p_3306325._stack.length);
                        if (_n_3309963 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3309992i32;
                        } else {
                            _gotoNext = 3310039i32;
                        };
                    } else if (__value__ == (3309992i32)) {
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
                        _gotoNext = 3310039i32;
                    } else if (__value__ == (3310039i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3306325._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
