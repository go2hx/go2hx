package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3304137:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _rest_3304140:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3301596:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3304532:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3304146:stdgo.Error = (null : stdgo.Error);
            var _before_3303069:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3304774:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3303094:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3303089:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3302886:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3301670:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3305196:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3304541:stdgo.Error = (null : stdgo.Error);
            var _ok_3303101:Bool = false;
            var _p_3301558:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3301416:stdgo.Error = (null : stdgo.Error);
            var _r_3304771:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3304535:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3303084:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3301578:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_3304370:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3304057:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3302761:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3301694:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3301612:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3301369i32;
                        } else {
                            _gotoNext = 3301550i32;
                        };
                    } else if (__value__ == (3301369i32)) {
                        {
                            _err_3301416 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3301416 != null) {
                                _gotoNext = 3301448i32;
                            } else {
                                _gotoNext = 3301475i32;
                            };
                        };
                    } else if (__value__ == (3301448i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3301416 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3301475i32;
                    } else if (__value__ == (3301475i32)) {
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
                        _gotoNext = 3301550i32;
                    } else if (__value__ == (3301550i32)) {
                        _p_3301558._flags = _flags;
                        _p_3301558._wholeRegexp = _s?.__copy__();
                        _t_3301670 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3301678i32;
                    } else if (__value__ == (3301678i32)) {
                        if (_t_3301670 != (stdgo.Go.str())) {
                            _gotoNext = 3301690i32;
                        } else {
                            _gotoNext = 3305080i32;
                        };
                    } else if (__value__ == (3301690i32)) {
                        _repeat_3301694 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3301708i32;
                    } else if (__value__ == (3301708i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3301721i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3301670[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3301834i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302104i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302201i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302297i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302412i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302542i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302656i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302738i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3303039i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3303595i32;
                                } else {
                                    _gotoNext = 3301737i32;
                                };
                            };
                        } else {
                            _gotoNext = 3305055i32;
                        };
                    } else if (__value__ == (3301737i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3301670?.__copy__());
                                _c_3301578 = __tmp__._0;
                                _t_3301670 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3301788i32;
                            } else {
                                _gotoNext = 3301818i32;
                            };
                        };
                    } else if (__value__ == (3301788i32)) {
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
                        _gotoNext = 3301818i32;
                    } else if (__value__ == (3301818i32)) {
                        _p_3301558._literal(_c_3301578);
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3301834i32)) {
                        if ((((_p_3301558._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3301670.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3301670[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3301899i32;
                        } else {
                            _gotoNext = 3302042i32;
                        };
                    } else if (__value__ == (3301899i32)) {
                        {
                            {
                                var __tmp__ = _p_3301558._parsePerlFlags(_t_3301670?.__copy__());
                                _t_3301670 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3301995i32;
                            } else {
                                _gotoNext = 3302028i32;
                            };
                        };
                    } else if (__value__ == (3301995i32)) {
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
                        _gotoNext = 3302028i32;
                    } else if (__value__ == (3302028i32)) {
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302042i32)) {
                        _p_3301558._numCap++;
                        _p_3301558._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3301558._numCap;
                        _t_3301670 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302104i32)) {
                        {
                            _err = _p_3301558._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3302159i32;
                            } else {
                                _gotoNext = 3302189i32;
                            };
                        };
                    } else if (__value__ == (3302159i32)) {
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
                        _gotoNext = 3302189i32;
                    } else if (__value__ == (3302189i32)) {
                        _t_3301670 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302201i32)) {
                        {
                            _err = _p_3301558._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3302255i32;
                            } else {
                                _gotoNext = 3302285i32;
                            };
                        };
                    } else if (__value__ == (3302255i32)) {
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
                        _gotoNext = 3302285i32;
                    } else if (__value__ == (3302285i32)) {
                        _t_3301670 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302297i32)) {
                        if ((_p_3301558._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302334i32;
                        } else {
                            _gotoNext = 3302368i32;
                        };
                    } else if (__value__ == (3302334i32)) {
                        _p_3301558._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3302400i32;
                    } else if (__value__ == (3302368i32)) {
                        _gotoNext = 3302368i32;
                        _p_3301558._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302400i32;
                    } else if (__value__ == (3302400i32)) {
                        _t_3301670 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302412i32)) {
                        if ((_p_3301558._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302449i32;
                        } else {
                            _gotoNext = 3302500i32;
                        };
                    } else if (__value__ == (3302449i32)) {
                        _p_3301558._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3301558._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3302530i32;
                    } else if (__value__ == (3302500i32)) {
                        _gotoNext = 3302500i32;
                        _p_3301558._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302530i32;
                    } else if (__value__ == (3302530i32)) {
                        _t_3301670 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302542i32)) {
                        if ((_p_3301558._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302577i32;
                        } else {
                            _gotoNext = 3302609i32;
                        };
                    } else if (__value__ == (3302577i32)) {
                        _p_3301558._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3302644i32;
                    } else if (__value__ == (3302609i32)) {
                        _gotoNext = 3302609i32;
                        _p_3301558._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302644i32;
                    } else if (__value__ == (3302644i32)) {
                        _t_3301670 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302656i32)) {
                        {
                            {
                                var __tmp__ = _p_3301558._parseClass(_t_3301670?.__copy__());
                                _t_3301670 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3302709i32;
                            } else {
                                _gotoNext = 3305055i32;
                            };
                        };
                    } else if (__value__ == (3302709i32)) {
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
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3302738i32)) {
                        _before_3302761 = _t_3301670?.__copy__();
                        _gotoNext = 3302776i32;
                    } else if (__value__ == (3302776i32)) {
                        {
                            final __value__ = _t_3301670[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3302793i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3302822i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3302851i32;
                            } else {
                                _gotoNext = 3302886i32;
                            };
                        };
                    } else if (__value__ == (3302793i32)) {
                        _op_3301596 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3302886i32;
                    } else if (__value__ == (3302822i32)) {
                        _op_3301596 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3302886i32;
                    } else if (__value__ == (3302851i32)) {
                        _op_3301596 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3302886i32;
                    } else if (__value__ == (3302886i32)) {
                        _after_3302886 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3301558._repeat(_op_3301596, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3302761?.__copy__(), _after_3302886?.__copy__(), _lastRepeat_3301612?.__copy__());
                                _after_3302886 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3302978i32;
                            } else {
                                _gotoNext = 3303008i32;
                            };
                        };
                    } else if (__value__ == (3302978i32)) {
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
                        _gotoNext = 3303008i32;
                    } else if (__value__ == (3303008i32)) {
                        _repeat_3301694 = _before_3302761?.__copy__();
                        _t_3301670 = _after_3302886?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3303039i32)) {
                        _op_3301596 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3303069 = _t_3301670?.__copy__();
                        {
                            var __tmp__ = _p_3301558._parseRepeat(_t_3301670?.__copy__());
                            _min_3303084 = __tmp__._0;
                            _max_3303089 = __tmp__._1;
                            _after_3303094 = __tmp__._2?.__copy__();
                            _ok_3303101 = __tmp__._3;
                        };
                        if (!_ok_3303101) {
                            _gotoNext = 3303134i32;
                        } else {
                            _gotoNext = 3303242i32;
                        };
                    } else if (__value__ == (3303134i32)) {
                        _p_3301558._literal((123 : stdgo.GoInt32));
                        _t_3301670 = (_t_3301670.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3303242i32)) {
                        if (((((_min_3303084 < (0 : stdgo.GoInt) : Bool) || (_min_3303084 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3303089 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3303089 >= (0 : stdgo.GoInt) : Bool) && (_min_3303084 > _max_3303089 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3303306i32;
                        } else {
                            _gotoNext = 3303456i32;
                        };
                    } else if (__value__ == (3303306i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3303069.__slice__(0, ((_before_3303069.length) - (_after_3303094.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3303456i32;
                    } else if (__value__ == (3303456i32)) {
                        {
                            {
                                var __tmp__ = _p_3301558._repeat(_op_3301596, _min_3303084, _max_3303089, _before_3303069?.__copy__(), _after_3303094?.__copy__(), _lastRepeat_3301612?.__copy__());
                                _after_3303094 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3303534i32;
                            } else {
                                _gotoNext = 3303564i32;
                            };
                        };
                    } else if (__value__ == (3303534i32)) {
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
                        _gotoNext = 3303564i32;
                    } else if (__value__ == (3303564i32)) {
                        _repeat_3301694 = _before_3303069?.__copy__();
                        _t_3301670 = _after_3303094?.__copy__();
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3303595i32)) {
                        if ((((_p_3301558._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3301670.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3303646i32;
                        } else {
                            _gotoNext = 3304370i32;
                        };
                    } else if (__value__ == (3303646i32)) {
                        _gotoNext = 3303652i32;
                    } else if (__value__ == (3303652i32)) {
                        {
                            final __value__ = _t_3301670[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3303670i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3303743i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3303819i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3303897i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3303992i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3304288i32;
                            } else {
                                _gotoNext = 3304370i32;
                            };
                        };
                    } else if (__value__ == (3303670i32)) {
                        _p_3301558._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301670 = (_t_3301670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3303743i32)) {
                        _p_3301558._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301670 = (_t_3301670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3303819i32)) {
                        _p_3301558._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301670 = (_t_3301670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3303897i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3301670.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3304370i32;
                    } else if (__value__ == (3303992i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3301670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3304057 = __tmp__._0?.__copy__();
                            _t_3301670 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3304115i32;
                    } else if (__value__ == (3304115i32)) {
                        if (_lit_3304057 != (stdgo.Go.str())) {
                            _gotoNext = 3304129i32;
                        } else {
                            _gotoNext = 3304268i32;
                        };
                    } else if (__value__ == (3304129i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3304057?.__copy__());
                            _c_3304137 = __tmp__._0;
                            _rest_3304140 = __tmp__._1?.__copy__();
                            _err_3304146 = __tmp__._2;
                        };
                        if (_err_3304146 != null) {
                            _gotoNext = 3304187i32;
                        } else {
                            _gotoNext = 3304226i32;
                        };
                    } else if (__value__ == (3304187i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3304146 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3304226i32;
                    } else if (__value__ == (3304226i32)) {
                        _p_3301558._literal(_c_3304137);
                        _lit_3304057 = _rest_3304140?.__copy__();
                        _gotoNext = 3304115i32;
                    } else if (__value__ == (3304268i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3304288i32)) {
                        _p_3301558._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301670 = (_t_3301670.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3304370i32)) {
                        _re_3304370 = _p_3301558._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3304370.flags = _p_3301558._flags;
                        if ((((_t_3301670.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3301670[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3301670[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3304526i32;
                        } else {
                            _gotoNext = 3304768i32;
                        };
                    } else if (__value__ == (3304526i32)) {
                        {
                            var __tmp__ = _p_3301558._parseUnicodeClass(_t_3301670?.__copy__(), (_re_3304370.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3304532 = __tmp__._0;
                            _rest_3304535 = __tmp__._1?.__copy__();
                            _err_3304541 = __tmp__._2;
                        };
                        if (_err_3304541 != null) {
                            _gotoNext = 3304603i32;
                        } else {
                            _gotoNext = 3304636i32;
                        };
                    } else if (__value__ == (3304603i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3304541 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3304636i32;
                    } else if (__value__ == (3304636i32)) {
                        if (_r_3304532 != null) {
                            _gotoNext = 3304648i32;
                        } else {
                            _gotoNext = 3304768i32;
                        };
                    } else if (__value__ == (3304648i32)) {
                        _re_3304370.rune = _r_3304532;
                        _t_3301670 = _rest_3304535?.__copy__();
                        _p_3301558._push(_re_3304370);
                        bigSwitchBreak = true;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3304768i32)) {
                        {
                            {
                                var __tmp__ = _p_3301558._parsePerlClassEscape(_t_3301670?.__copy__(), (_re_3304370.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3304771 = __tmp__._0;
                                _rest_3304774 = __tmp__._1?.__copy__();
                            };
                            if (_r_3304771 != null) {
                                _gotoNext = 3304832i32;
                            } else {
                                _gotoNext = 3304906i32;
                            };
                        };
                    } else if (__value__ == (3304832i32)) {
                        _re_3304370.rune = _r_3304771;
                        _t_3301670 = _rest_3304774?.__copy__();
                        _p_3301558._push(_re_3304370);
                        bigSwitchBreak = true;
                        _gotoNext = 3301721i32;
                    } else if (__value__ == (3304906i32)) {
                        _p_3301558._reuse(_re_3304370);
                        {
                            {
                                var __tmp__ = _p_3301558._parseEscape(_t_3301670?.__copy__());
                                _c_3301578 = __tmp__._0;
                                _t_3301670 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3305006i32;
                            } else {
                                _gotoNext = 3305036i32;
                            };
                        };
                    } else if (__value__ == (3305006i32)) {
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
                        _gotoNext = 3305036i32;
                    } else if (__value__ == (3305036i32)) {
                        _p_3301558._literal(_c_3301578);
                        _gotoNext = 3305055i32;
                    } else if (__value__ == (3305055i32)) {
                        _lastRepeat_3301612 = _repeat_3301694?.__copy__();
                        _gotoNext = 3301678i32;
                    } else if (__value__ == (3305080i32)) {
                        _p_3301558._concat();
                        if (_p_3301558._swapVerticalBar()) {
                            _gotoNext = 3305115i32;
                        } else {
                            _gotoNext = 3305180i32;
                        };
                    } else if (__value__ == (3305115i32)) {
                        _p_3301558._stack = (_p_3301558._stack.__slice__(0, ((_p_3301558._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3305180i32;
                    } else if (__value__ == (3305180i32)) {
                        _p_3301558._alternate();
                        _n_3305196 = (_p_3301558._stack.length);
                        if (_n_3305196 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3305225i32;
                        } else {
                            _gotoNext = 3305272i32;
                        };
                    } else if (__value__ == (3305225i32)) {
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
                        _gotoNext = 3305272i32;
                    } else if (__value__ == (3305272i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3301558._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
