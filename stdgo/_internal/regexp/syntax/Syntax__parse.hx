package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3333140:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3333137:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3332089:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3333541:stdgo.Error = (null : stdgo.Error);
            var _rest_3333535:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3330670:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3333146:stdgo.Error = (null : stdgo.Error);
            var _ok_3332101:Bool = false;
            var _after_3332094:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _before_3331761:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3330578:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3330416:stdgo.Error = (null : stdgo.Error);
            var _re_3333370:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3331886:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3330694:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3330558:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3333771:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3333532:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3332069:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3330612:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3330596:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3334196:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3333774:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3333057:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3332084:stdgo.GoInt = (0 : stdgo.GoInt);
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
                            _gotoNext = 3330369i32;
                        } else {
                            _gotoNext = 3330550i32;
                        };
                    } else if (__value__ == (3330369i32)) {
                        {
                            _err_3330416 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3330416 != null) {
                                _gotoNext = 3330448i32;
                            } else {
                                _gotoNext = 3330475i32;
                            };
                        };
                    } else if (__value__ == (3330448i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3330416 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3330475i32;
                    } else if (__value__ == (3330475i32)) {
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
                        _gotoNext = 3330550i32;
                    } else if (__value__ == (3330550i32)) {
                        _p_3330558._flags = _flags;
                        _p_3330558._wholeRegexp = _s?.__copy__();
                        _t_3330670 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3330678i32;
                    } else if (__value__ == (3330678i32)) {
                        if (_t_3330670 != (stdgo.Go.str())) {
                            _gotoNext = 3330690i32;
                        } else {
                            _gotoNext = 3334080i32;
                        };
                    } else if (__value__ == (3330690i32)) {
                        _repeat_3330694 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3330708i32;
                    } else if (__value__ == (3330708i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3330721i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3330670[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330834i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331104i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331201i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331297i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331412i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331542i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331656i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331738i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332039i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332595i32;
                                } else {
                                    _gotoNext = 3330737i32;
                                };
                            };
                        } else {
                            _gotoNext = 3334055i32;
                        };
                    } else if (__value__ == (3330737i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3330670?.__copy__());
                                _c_3330578 = __tmp__._0;
                                _t_3330670 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3330788i32;
                            } else {
                                _gotoNext = 3330818i32;
                            };
                        };
                    } else if (__value__ == (3330788i32)) {
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
                        _gotoNext = 3330818i32;
                    } else if (__value__ == (3330818i32)) {
                        _p_3330558._literal(_c_3330578);
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3330834i32)) {
                        if ((((_p_3330558._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3330670.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3330670[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3330899i32;
                        } else {
                            _gotoNext = 3331042i32;
                        };
                    } else if (__value__ == (3330899i32)) {
                        {
                            {
                                var __tmp__ = _p_3330558._parsePerlFlags(_t_3330670?.__copy__());
                                _t_3330670 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3330995i32;
                            } else {
                                _gotoNext = 3331028i32;
                            };
                        };
                    } else if (__value__ == (3330995i32)) {
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
                        _gotoNext = 3331028i32;
                    } else if (__value__ == (3331028i32)) {
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331042i32)) {
                        _p_3330558._numCap++;
                        _p_3330558._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3330558._numCap;
                        _t_3330670 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331104i32)) {
                        {
                            _err = _p_3330558._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3331159i32;
                            } else {
                                _gotoNext = 3331189i32;
                            };
                        };
                    } else if (__value__ == (3331159i32)) {
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
                        _gotoNext = 3331189i32;
                    } else if (__value__ == (3331189i32)) {
                        _t_3330670 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331201i32)) {
                        {
                            _err = _p_3330558._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3331255i32;
                            } else {
                                _gotoNext = 3331285i32;
                            };
                        };
                    } else if (__value__ == (3331255i32)) {
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
                        _gotoNext = 3331285i32;
                    } else if (__value__ == (3331285i32)) {
                        _t_3330670 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331297i32)) {
                        if ((_p_3330558._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3331334i32;
                        } else {
                            _gotoNext = 3331368i32;
                        };
                    } else if (__value__ == (3331334i32)) {
                        _p_3330558._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3331400i32;
                    } else if (__value__ == (3331368i32)) {
                        _gotoNext = 3331368i32;
                        _p_3330558._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3331400i32;
                    } else if (__value__ == (3331400i32)) {
                        _t_3330670 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331412i32)) {
                        if ((_p_3330558._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3331449i32;
                        } else {
                            _gotoNext = 3331500i32;
                        };
                    } else if (__value__ == (3331449i32)) {
                        _p_3330558._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3330558._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3331530i32;
                    } else if (__value__ == (3331500i32)) {
                        _gotoNext = 3331500i32;
                        _p_3330558._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3331530i32;
                    } else if (__value__ == (3331530i32)) {
                        _t_3330670 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331542i32)) {
                        if ((_p_3330558._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3331577i32;
                        } else {
                            _gotoNext = 3331609i32;
                        };
                    } else if (__value__ == (3331577i32)) {
                        _p_3330558._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3331644i32;
                    } else if (__value__ == (3331609i32)) {
                        _gotoNext = 3331609i32;
                        _p_3330558._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3331644i32;
                    } else if (__value__ == (3331644i32)) {
                        _t_3330670 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331656i32)) {
                        {
                            {
                                var __tmp__ = _p_3330558._parseClass(_t_3330670?.__copy__());
                                _t_3330670 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3331709i32;
                            } else {
                                _gotoNext = 3334055i32;
                            };
                        };
                    } else if (__value__ == (3331709i32)) {
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
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3331738i32)) {
                        _before_3331761 = _t_3330670?.__copy__();
                        _gotoNext = 3331776i32;
                    } else if (__value__ == (3331776i32)) {
                        {
                            final __value__ = _t_3330670[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3331793i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3331822i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3331851i32;
                            } else {
                                _gotoNext = 3331886i32;
                            };
                        };
                    } else if (__value__ == (3331793i32)) {
                        _op_3330596 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3331886i32;
                    } else if (__value__ == (3331822i32)) {
                        _op_3330596 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3331886i32;
                    } else if (__value__ == (3331851i32)) {
                        _op_3330596 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3331886i32;
                    } else if (__value__ == (3331886i32)) {
                        _after_3331886 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3330558._repeat(_op_3330596, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3331761?.__copy__(), _after_3331886?.__copy__(), _lastRepeat_3330612?.__copy__());
                                _after_3331886 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3331978i32;
                            } else {
                                _gotoNext = 3332008i32;
                            };
                        };
                    } else if (__value__ == (3331978i32)) {
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
                        _gotoNext = 3332008i32;
                    } else if (__value__ == (3332008i32)) {
                        _repeat_3330694 = _before_3331761?.__copy__();
                        _t_3330670 = _after_3331886?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3332039i32)) {
                        _op_3330596 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3332069 = _t_3330670?.__copy__();
                        {
                            var __tmp__ = _p_3330558._parseRepeat(_t_3330670?.__copy__());
                            _min_3332084 = __tmp__._0;
                            _max_3332089 = __tmp__._1;
                            _after_3332094 = __tmp__._2?.__copy__();
                            _ok_3332101 = __tmp__._3;
                        };
                        if (!_ok_3332101) {
                            _gotoNext = 3332134i32;
                        } else {
                            _gotoNext = 3332242i32;
                        };
                    } else if (__value__ == (3332134i32)) {
                        _p_3330558._literal((123 : stdgo.GoInt32));
                        _t_3330670 = (_t_3330670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3332242i32)) {
                        if (((((_min_3332084 < (0 : stdgo.GoInt) : Bool) || (_min_3332084 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3332089 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3332089 >= (0 : stdgo.GoInt) : Bool) && (_min_3332084 > _max_3332089 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3332306i32;
                        } else {
                            _gotoNext = 3332456i32;
                        };
                    } else if (__value__ == (3332306i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3332069.__slice__(0, ((_before_3332069.length) - (_after_3332094.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3332456i32;
                    } else if (__value__ == (3332456i32)) {
                        {
                            {
                                var __tmp__ = _p_3330558._repeat(_op_3330596, _min_3332084, _max_3332089, _before_3332069?.__copy__(), _after_3332094?.__copy__(), _lastRepeat_3330612?.__copy__());
                                _after_3332094 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3332534i32;
                            } else {
                                _gotoNext = 3332564i32;
                            };
                        };
                    } else if (__value__ == (3332534i32)) {
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
                        _gotoNext = 3332564i32;
                    } else if (__value__ == (3332564i32)) {
                        _repeat_3330694 = _before_3332069?.__copy__();
                        _t_3330670 = _after_3332094?.__copy__();
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3332595i32)) {
                        if ((((_p_3330558._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3330670.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3332646i32;
                        } else {
                            _gotoNext = 3333370i32;
                        };
                    } else if (__value__ == (3332646i32)) {
                        _gotoNext = 3332652i32;
                    } else if (__value__ == (3332652i32)) {
                        {
                            final __value__ = _t_3330670[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3332670i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3332743i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3332819i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3332897i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3332992i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3333288i32;
                            } else {
                                _gotoNext = 3333370i32;
                            };
                        };
                    } else if (__value__ == (3332670i32)) {
                        _p_3330558._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330670 = (_t_3330670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3332743i32)) {
                        _p_3330558._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330670 = (_t_3330670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3332819i32)) {
                        _p_3330558._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330670 = (_t_3330670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3332897i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3330670.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3333370i32;
                    } else if (__value__ == (3332992i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3330670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3333057 = __tmp__._0?.__copy__();
                            _t_3330670 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3333115i32;
                    } else if (__value__ == (3333115i32)) {
                        if (_lit_3333057 != (stdgo.Go.str())) {
                            _gotoNext = 3333129i32;
                        } else {
                            _gotoNext = 3333268i32;
                        };
                    } else if (__value__ == (3333129i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3333057?.__copy__());
                            _c_3333137 = __tmp__._0;
                            _rest_3333140 = __tmp__._1?.__copy__();
                            _err_3333146 = __tmp__._2;
                        };
                        if (_err_3333146 != null) {
                            _gotoNext = 3333187i32;
                        } else {
                            _gotoNext = 3333226i32;
                        };
                    } else if (__value__ == (3333187i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3333146 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3333226i32;
                    } else if (__value__ == (3333226i32)) {
                        _p_3330558._literal(_c_3333137);
                        _lit_3333057 = _rest_3333140?.__copy__();
                        _gotoNext = 3333115i32;
                    } else if (__value__ == (3333268i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3333288i32)) {
                        _p_3330558._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3330670 = (_t_3330670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3333370i32)) {
                        _re_3333370 = _p_3330558._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3333370.flags = _p_3330558._flags;
                        if ((((_t_3330670.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3330670[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3330670[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3333526i32;
                        } else {
                            _gotoNext = 3333768i32;
                        };
                    } else if (__value__ == (3333526i32)) {
                        {
                            var __tmp__ = _p_3330558._parseUnicodeClass(_t_3330670?.__copy__(), (_re_3333370.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3333532 = __tmp__._0;
                            _rest_3333535 = __tmp__._1?.__copy__();
                            _err_3333541 = __tmp__._2;
                        };
                        if (_err_3333541 != null) {
                            _gotoNext = 3333603i32;
                        } else {
                            _gotoNext = 3333636i32;
                        };
                    } else if (__value__ == (3333603i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3333541 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3333636i32;
                    } else if (__value__ == (3333636i32)) {
                        if (_r_3333532 != null) {
                            _gotoNext = 3333648i32;
                        } else {
                            _gotoNext = 3333768i32;
                        };
                    } else if (__value__ == (3333648i32)) {
                        _re_3333370.rune = _r_3333532;
                        _t_3330670 = _rest_3333535?.__copy__();
                        _p_3330558._push(_re_3333370);
                        bigSwitchBreak = true;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3333768i32)) {
                        {
                            {
                                var __tmp__ = _p_3330558._parsePerlClassEscape(_t_3330670?.__copy__(), (_re_3333370.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3333771 = __tmp__._0;
                                _rest_3333774 = __tmp__._1?.__copy__();
                            };
                            if (_r_3333771 != null) {
                                _gotoNext = 3333832i32;
                            } else {
                                _gotoNext = 3333906i32;
                            };
                        };
                    } else if (__value__ == (3333832i32)) {
                        _re_3333370.rune = _r_3333771;
                        _t_3330670 = _rest_3333774?.__copy__();
                        _p_3330558._push(_re_3333370);
                        bigSwitchBreak = true;
                        _gotoNext = 3330721i32;
                    } else if (__value__ == (3333906i32)) {
                        _p_3330558._reuse(_re_3333370);
                        {
                            {
                                var __tmp__ = _p_3330558._parseEscape(_t_3330670?.__copy__());
                                _c_3330578 = __tmp__._0;
                                _t_3330670 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3334006i32;
                            } else {
                                _gotoNext = 3334036i32;
                            };
                        };
                    } else if (__value__ == (3334006i32)) {
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
                        _gotoNext = 3334036i32;
                    } else if (__value__ == (3334036i32)) {
                        _p_3330558._literal(_c_3330578);
                        _gotoNext = 3334055i32;
                    } else if (__value__ == (3334055i32)) {
                        _lastRepeat_3330612 = _repeat_3330694?.__copy__();
                        _gotoNext = 3330678i32;
                    } else if (__value__ == (3334080i32)) {
                        _p_3330558._concat();
                        if (_p_3330558._swapVerticalBar()) {
                            _gotoNext = 3334115i32;
                        } else {
                            _gotoNext = 3334180i32;
                        };
                    } else if (__value__ == (3334115i32)) {
                        _p_3330558._stack = (_p_3330558._stack.__slice__(0, ((_p_3330558._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3334180i32;
                    } else if (__value__ == (3334180i32)) {
                        _p_3330558._alternate();
                        _n_3334196 = (_p_3330558._stack.length);
                        if (_n_3334196 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3334225i32;
                        } else {
                            _gotoNext = 3334272i32;
                        };
                    } else if (__value__ == (3334225i32)) {
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
                        _gotoNext = 3334272i32;
                    } else if (__value__ == (3334272i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3330558._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
