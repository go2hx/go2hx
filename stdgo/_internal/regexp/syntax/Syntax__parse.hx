package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _before_3426276:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3425209:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3428056:stdgo.Error = (null : stdgo.Error);
            var _rest_3428050:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3427652:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3426604:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3425127:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3428047:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3426616:Bool = false;
            var _after_3426401:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3428289:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3428286:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _t_3425185:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3427655:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3425111:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3424931:stdgo.Error = (null : stdgo.Error);
            var _re_3427885:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3427661:stdgo.Error = (null : stdgo.Error);
            var _min_3426599:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3425093:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3425073:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _n_3428711:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lit_3427572:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3426609:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3426584:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3424884i32;
                        } else {
                            _gotoNext = 3425065i32;
                        };
                    } else if (__value__ == (3424884i32)) {
                        {
                            _err_3424931 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3424931 != null) {
                                _gotoNext = 3424963i32;
                            } else {
                                _gotoNext = 3424990i32;
                            };
                        };
                    } else if (__value__ == (3424963i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3424931 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3424990i32;
                    } else if (__value__ == (3424990i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3425065i32;
                    } else if (__value__ == (3425065i32)) {
                        _p_3425073._flags = _flags;
                        _p_3425073._wholeRegexp = _s?.__copy__();
                        _t_3425185 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3425193i32;
                    } else if (__value__ == (3425193i32)) {
                        if (_t_3425185 != (stdgo.Go.str())) {
                            _gotoNext = 3425205i32;
                        } else {
                            _gotoNext = 3428595i32;
                        };
                    } else if (__value__ == (3425205i32)) {
                        _repeat_3425209 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3425223i32;
                    } else if (__value__ == (3425223i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3425236i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3425185[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425349i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425619i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425716i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425812i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425927i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3426057i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3426171i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3426253i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3426554i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3427110i32;
                                } else {
                                    _gotoNext = 3425252i32;
                                };
                            };
                        } else {
                            _gotoNext = 3428570i32;
                        };
                    } else if (__value__ == (3425252i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3425185?.__copy__());
                                _c_3425093 = __tmp__._0;
                                _t_3425185 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3425303i32;
                            } else {
                                _gotoNext = 3425333i32;
                            };
                        };
                    } else if (__value__ == (3425303i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3425333i32;
                    } else if (__value__ == (3425333i32)) {
                        _p_3425073._literal(_c_3425093);
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3425349i32)) {
                        if ((((_p_3425073._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3425185.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3425185[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3425414i32;
                        } else {
                            _gotoNext = 3425557i32;
                        };
                    } else if (__value__ == (3425414i32)) {
                        {
                            {
                                var __tmp__ = _p_3425073._parsePerlFlags(_t_3425185?.__copy__());
                                _t_3425185 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3425510i32;
                            } else {
                                _gotoNext = 3425543i32;
                            };
                        };
                    } else if (__value__ == (3425510i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3425543i32;
                    } else if (__value__ == (3425543i32)) {
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3425557i32)) {
                        _p_3425073._numCap++;
                        _p_3425073._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3425073._numCap;
                        _t_3425185 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3425619i32)) {
                        {
                            _err = _p_3425073._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3425674i32;
                            } else {
                                _gotoNext = 3425704i32;
                            };
                        };
                    } else if (__value__ == (3425674i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3425704i32;
                    } else if (__value__ == (3425704i32)) {
                        _t_3425185 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3425716i32)) {
                        {
                            _err = _p_3425073._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3425770i32;
                            } else {
                                _gotoNext = 3425800i32;
                            };
                        };
                    } else if (__value__ == (3425770i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3425800i32;
                    } else if (__value__ == (3425800i32)) {
                        _t_3425185 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3425812i32)) {
                        if ((_p_3425073._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3425849i32;
                        } else {
                            _gotoNext = 3425883i32;
                        };
                    } else if (__value__ == (3425849i32)) {
                        _p_3425073._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3425915i32;
                    } else if (__value__ == (3425883i32)) {
                        _p_3425073._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3425915i32;
                    } else if (__value__ == (3425915i32)) {
                        _t_3425185 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3425927i32)) {
                        if ((_p_3425073._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3425964i32;
                        } else {
                            _gotoNext = 3426015i32;
                        };
                    } else if (__value__ == (3425964i32)) {
                        _p_3425073._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3425073._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3426045i32;
                    } else if (__value__ == (3426015i32)) {
                        _p_3425073._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3426045i32;
                    } else if (__value__ == (3426045i32)) {
                        _t_3425185 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3426057i32)) {
                        if ((_p_3425073._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3426092i32;
                        } else {
                            _gotoNext = 3426124i32;
                        };
                    } else if (__value__ == (3426092i32)) {
                        _p_3425073._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3426159i32;
                    } else if (__value__ == (3426124i32)) {
                        _p_3425073._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3426159i32;
                    } else if (__value__ == (3426159i32)) {
                        _t_3425185 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3426171i32)) {
                        {
                            {
                                var __tmp__ = _p_3425073._parseClass(_t_3425185?.__copy__());
                                _t_3425185 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3426224i32;
                            } else {
                                _gotoNext = 3428570i32;
                            };
                        };
                    } else if (__value__ == (3426224i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3426253i32)) {
                        _before_3426276 = _t_3425185?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3426291i32;
                    } else if (__value__ == (3426291i32)) {
                        {
                            final __value__ = _t_3425185[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3426308i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3426337i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3426366i32;
                            } else {
                                _gotoNext = 3426401i32;
                            };
                        };
                    } else if (__value__ == (3426308i32)) {
                        _op_3425111 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3426401i32;
                    } else if (__value__ == (3426337i32)) {
                        _op_3425111 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3426401i32;
                    } else if (__value__ == (3426366i32)) {
                        _op_3425111 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3426401i32;
                    } else if (__value__ == (3426401i32)) {
                        _after_3426401 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3425073._repeat(_op_3425111, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3426276?.__copy__(), _after_3426401?.__copy__(), _lastRepeat_3425127?.__copy__());
                                _after_3426401 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3426493i32;
                            } else {
                                _gotoNext = 3426523i32;
                            };
                        };
                    } else if (__value__ == (3426493i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3426523i32;
                    } else if (__value__ == (3426523i32)) {
                        _repeat_3425209 = _before_3426276?.__copy__();
                        _t_3425185 = _after_3426401?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3426554i32)) {
                        _op_3425111 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3426584 = _t_3425185?.__copy__();
                        {
                            var __tmp__ = _p_3425073._parseRepeat(_t_3425185?.__copy__());
                            _min_3426599 = __tmp__._0;
                            _max_3426604 = __tmp__._1;
                            _after_3426609 = __tmp__._2?.__copy__();
                            _ok_3426616 = __tmp__._3;
                        };
                        if (!_ok_3426616) {
                            _gotoNext = 3426649i32;
                        } else {
                            _gotoNext = 3426757i32;
                        };
                    } else if (__value__ == (3426649i32)) {
                        _p_3425073._literal((123 : stdgo.GoInt32));
                        _t_3425185 = (_t_3425185.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3426757i32)) {
                        if (((((_min_3426599 < (0 : stdgo.GoInt) : Bool) || (_min_3426599 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3426604 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3426604 >= (0 : stdgo.GoInt) : Bool) && (_min_3426599 > _max_3426604 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3426821i32;
                        } else {
                            _gotoNext = 3426971i32;
                        };
                    } else if (__value__ == (3426821i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3426584.__slice__(0, ((_before_3426584.length) - (_after_3426609.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3426971i32;
                    } else if (__value__ == (3426971i32)) {
                        {
                            {
                                var __tmp__ = _p_3425073._repeat(_op_3425111, _min_3426599, _max_3426604, _before_3426584?.__copy__(), _after_3426609?.__copy__(), _lastRepeat_3425127?.__copy__());
                                _after_3426609 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3427049i32;
                            } else {
                                _gotoNext = 3427079i32;
                            };
                        };
                    } else if (__value__ == (3427049i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3427079i32;
                    } else if (__value__ == (3427079i32)) {
                        _repeat_3425209 = _before_3426584?.__copy__();
                        _t_3425185 = _after_3426609?.__copy__();
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3427110i32)) {
                        if ((((_p_3425073._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3425185.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3427161i32;
                        } else {
                            _gotoNext = 3427885i32;
                        };
                    } else if (__value__ == (3427161i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3427167i32;
                    } else if (__value__ == (3427167i32)) {
                        {
                            final __value__ = _t_3425185[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3427185i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3427258i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3427334i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3427412i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3427507i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3427803i32;
                            } else {
                                _gotoNext = 3427885i32;
                            };
                        };
                    } else if (__value__ == (3427185i32)) {
                        _p_3425073._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3425185 = (_t_3425185.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3427258i32)) {
                        _p_3425073._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3425185 = (_t_3425185.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3427334i32)) {
                        _p_3425073._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3425185 = (_t_3425185.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3427412i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3425185.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3427885i32;
                    } else if (__value__ == (3427507i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3425185.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3427572 = __tmp__._0?.__copy__();
                            _t_3425185 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3427630i32;
                    } else if (__value__ == (3427630i32)) {
                        if (_lit_3427572 != (stdgo.Go.str())) {
                            _gotoNext = 3427644i32;
                        } else {
                            _gotoNext = 3427783i32;
                        };
                    } else if (__value__ == (3427644i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3427572?.__copy__());
                            _c_3427652 = __tmp__._0;
                            _rest_3427655 = __tmp__._1?.__copy__();
                            _err_3427661 = __tmp__._2;
                        };
                        if (_err_3427661 != null) {
                            _gotoNext = 3427702i32;
                        } else {
                            _gotoNext = 3427741i32;
                        };
                    } else if (__value__ == (3427702i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3427661 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3427741i32;
                    } else if (__value__ == (3427741i32)) {
                        _p_3425073._literal(_c_3427652);
                        _lit_3427572 = _rest_3427655?.__copy__();
                        _gotoNext = 3427630i32;
                    } else if (__value__ == (3427783i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3427803i32)) {
                        _p_3425073._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3425185 = (_t_3425185.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3427885i32)) {
                        _re_3427885 = _p_3425073._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3427885.flags = _p_3425073._flags;
                        if ((((_t_3425185.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3425185[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3425185[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3428041i32;
                        } else {
                            _gotoNext = 3428283i32;
                        };
                    } else if (__value__ == (3428041i32)) {
                        {
                            var __tmp__ = _p_3425073._parseUnicodeClass(_t_3425185?.__copy__(), (_re_3427885.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3428047 = __tmp__._0;
                            _rest_3428050 = __tmp__._1?.__copy__();
                            _err_3428056 = __tmp__._2;
                        };
                        if (_err_3428056 != null) {
                            _gotoNext = 3428118i32;
                        } else {
                            _gotoNext = 3428151i32;
                        };
                    } else if (__value__ == (3428118i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3428056 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3428151i32;
                    } else if (__value__ == (3428151i32)) {
                        if (_r_3428047 != null) {
                            _gotoNext = 3428163i32;
                        } else {
                            _gotoNext = 3428283i32;
                        };
                    } else if (__value__ == (3428163i32)) {
                        _re_3427885.rune = _r_3428047;
                        _t_3425185 = _rest_3428050?.__copy__();
                        _p_3425073._push(_re_3427885);
                        bigSwitchBreak = true;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3428283i32)) {
                        {
                            {
                                var __tmp__ = _p_3425073._parsePerlClassEscape(_t_3425185?.__copy__(), (_re_3427885.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3428286 = __tmp__._0;
                                _rest_3428289 = __tmp__._1?.__copy__();
                            };
                            if (_r_3428286 != null) {
                                _gotoNext = 3428347i32;
                            } else {
                                _gotoNext = 3428421i32;
                            };
                        };
                    } else if (__value__ == (3428347i32)) {
                        _re_3427885.rune = _r_3428286;
                        _t_3425185 = _rest_3428289?.__copy__();
                        _p_3425073._push(_re_3427885);
                        bigSwitchBreak = true;
                        _gotoNext = 3425236i32;
                    } else if (__value__ == (3428421i32)) {
                        _p_3425073._reuse(_re_3427885);
                        {
                            {
                                var __tmp__ = _p_3425073._parseEscape(_t_3425185?.__copy__());
                                _c_3425093 = __tmp__._0;
                                _t_3425185 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3428521i32;
                            } else {
                                _gotoNext = 3428551i32;
                            };
                        };
                    } else if (__value__ == (3428521i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3428551i32;
                    } else if (__value__ == (3428551i32)) {
                        _p_3425073._literal(_c_3425093);
                        _gotoNext = 3428570i32;
                    } else if (__value__ == (3428570i32)) {
                        _lastRepeat_3425127 = _repeat_3425209?.__copy__();
                        _gotoNext = 3425193i32;
                    } else if (__value__ == (3428595i32)) {
                        _p_3425073._concat();
                        if (_p_3425073._swapVerticalBar()) {
                            _gotoNext = 3428630i32;
                        } else {
                            _gotoNext = 3428695i32;
                        };
                    } else if (__value__ == (3428630i32)) {
                        _p_3425073._stack = (_p_3425073._stack.__slice__(0, ((_p_3425073._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3428695i32;
                    } else if (__value__ == (3428695i32)) {
                        _p_3425073._alternate();
                        _n_3428711 = (_p_3425073._stack.length);
                        if (_n_3428711 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3428740i32;
                        } else {
                            _gotoNext = 3428787i32;
                        };
                    } else if (__value__ == (3428740i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3428787i32;
                    } else if (__value__ == (3428787i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3425073._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
