package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _p_3514992:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _n_3518630:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3517966:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3516320:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _re_3517804:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3517580:stdgo.Error = (null : stdgo.Error);
            var _rest_3517969:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3517574:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3516518:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3515128:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3515030:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3517975:stdgo.Error = (null : stdgo.Error);
            var _lit_3517491:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3517571:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3516195:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3515104:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3518208:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3516535:Bool = false;
            var _lastRepeat_3515046:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3515012:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3518205:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3516528:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3516523:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3516503:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3514850:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3514803i32;
                        } else {
                            _gotoNext = 3514984i32;
                        };
                    } else if (__value__ == (3514803i32)) {
                        {
                            _err_3514850 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3514850 != null) {
                                _gotoNext = 3514882i32;
                            } else {
                                _gotoNext = 3514909i32;
                            };
                        };
                    } else if (__value__ == (3514882i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3514850 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3514909i32;
                    } else if (__value__ == (3514909i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3514984i32;
                    } else if (__value__ == (3514984i32)) {
                        _p_3514992._flags = _flags;
                        _p_3514992._wholeRegexp = _s?.__copy__();
                        _t_3515104 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3515112i32;
                    } else if (__value__ == (3515112i32)) {
                        if (_t_3515104 != (stdgo.Go.str())) {
                            _gotoNext = 3515124i32;
                        } else {
                            _gotoNext = 3518514i32;
                        };
                    } else if (__value__ == (3515124i32)) {
                        _repeat_3515128 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3515142i32;
                    } else if (__value__ == (3515142i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3515155i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3515104[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515268i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515538i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515635i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515731i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515846i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3515976i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3516090i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3516172i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3516473i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3517029i32;
                                } else {
                                    _gotoNext = 3515171i32;
                                };
                            };
                        } else {
                            _gotoNext = 3518489i32;
                        };
                    } else if (__value__ == (3515171i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3515104?.__copy__());
                                _c_3515012 = __tmp__._0;
                                _t_3515104 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3515222i32;
                            } else {
                                _gotoNext = 3515252i32;
                            };
                        };
                    } else if (__value__ == (3515222i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515252i32;
                    } else if (__value__ == (3515252i32)) {
                        _p_3514992._literal(_c_3515012);
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3515268i32)) {
                        if ((((_p_3514992._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3515104.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3515104[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3515333i32;
                        } else {
                            _gotoNext = 3515476i32;
                        };
                    } else if (__value__ == (3515333i32)) {
                        {
                            {
                                var __tmp__ = _p_3514992._parsePerlFlags(_t_3515104?.__copy__());
                                _t_3515104 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3515429i32;
                            } else {
                                _gotoNext = 3515462i32;
                            };
                        };
                    } else if (__value__ == (3515429i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515462i32;
                    } else if (__value__ == (3515462i32)) {
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3515476i32)) {
                        _p_3514992._numCap++;
                        _p_3514992._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3514992._numCap;
                        _t_3515104 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3515538i32)) {
                        {
                            _err = _p_3514992._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3515593i32;
                            } else {
                                _gotoNext = 3515623i32;
                            };
                        };
                    } else if (__value__ == (3515593i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515623i32;
                    } else if (__value__ == (3515623i32)) {
                        _t_3515104 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3515635i32)) {
                        {
                            _err = _p_3514992._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3515689i32;
                            } else {
                                _gotoNext = 3515719i32;
                            };
                        };
                    } else if (__value__ == (3515689i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3515719i32;
                    } else if (__value__ == (3515719i32)) {
                        _t_3515104 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3515731i32)) {
                        if ((_p_3514992._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3515768i32;
                        } else {
                            _gotoNext = 3515802i32;
                        };
                    } else if (__value__ == (3515768i32)) {
                        _p_3514992._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3515834i32;
                    } else if (__value__ == (3515802i32)) {
                        _gotoNext = 3515802i32;
                        _p_3514992._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3515834i32;
                    } else if (__value__ == (3515834i32)) {
                        _t_3515104 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3515846i32)) {
                        if ((_p_3514992._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3515883i32;
                        } else {
                            _gotoNext = 3515934i32;
                        };
                    } else if (__value__ == (3515883i32)) {
                        _p_3514992._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3514992._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3515964i32;
                    } else if (__value__ == (3515934i32)) {
                        _gotoNext = 3515934i32;
                        _p_3514992._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3515964i32;
                    } else if (__value__ == (3515964i32)) {
                        _t_3515104 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3515976i32)) {
                        if ((_p_3514992._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3516011i32;
                        } else {
                            _gotoNext = 3516043i32;
                        };
                    } else if (__value__ == (3516011i32)) {
                        _p_3514992._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3516078i32;
                    } else if (__value__ == (3516043i32)) {
                        _gotoNext = 3516043i32;
                        _p_3514992._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3516078i32;
                    } else if (__value__ == (3516078i32)) {
                        _t_3515104 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3516090i32)) {
                        {
                            {
                                var __tmp__ = _p_3514992._parseClass(_t_3515104?.__copy__());
                                _t_3515104 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3516143i32;
                            } else {
                                _gotoNext = 3518489i32;
                            };
                        };
                    } else if (__value__ == (3516143i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3516172i32)) {
                        _before_3516195 = _t_3515104?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3516210i32;
                    } else if (__value__ == (3516210i32)) {
                        {
                            final __value__ = _t_3515104[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3516227i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3516256i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3516285i32;
                            } else {
                                _gotoNext = 3516320i32;
                            };
                        };
                    } else if (__value__ == (3516227i32)) {
                        _op_3515030 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3516320i32;
                    } else if (__value__ == (3516256i32)) {
                        _op_3515030 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3516320i32;
                    } else if (__value__ == (3516285i32)) {
                        _op_3515030 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3516320i32;
                    } else if (__value__ == (3516320i32)) {
                        _after_3516320 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3514992._repeat(_op_3515030, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3516195?.__copy__(), _after_3516320?.__copy__(), _lastRepeat_3515046?.__copy__());
                                _after_3516320 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3516412i32;
                            } else {
                                _gotoNext = 3516442i32;
                            };
                        };
                    } else if (__value__ == (3516412i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3516442i32;
                    } else if (__value__ == (3516442i32)) {
                        _repeat_3515128 = _before_3516195?.__copy__();
                        _t_3515104 = _after_3516320?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3516473i32)) {
                        _op_3515030 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3516503 = _t_3515104?.__copy__();
                        {
                            var __tmp__ = _p_3514992._parseRepeat(_t_3515104?.__copy__());
                            _min_3516518 = __tmp__._0;
                            _max_3516523 = __tmp__._1;
                            _after_3516528 = __tmp__._2?.__copy__();
                            _ok_3516535 = __tmp__._3;
                        };
                        if (!_ok_3516535) {
                            _gotoNext = 3516568i32;
                        } else {
                            _gotoNext = 3516676i32;
                        };
                    } else if (__value__ == (3516568i32)) {
                        _p_3514992._literal((123 : stdgo.GoInt32));
                        _t_3515104 = (_t_3515104.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3516676i32)) {
                        if (((((_min_3516518 < (0 : stdgo.GoInt) : Bool) || (_min_3516518 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3516523 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3516523 >= (0 : stdgo.GoInt) : Bool) && (_min_3516518 > _max_3516523 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3516740i32;
                        } else {
                            _gotoNext = 3516890i32;
                        };
                    } else if (__value__ == (3516740i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3516503.__slice__(0, ((_before_3516503.length) - (_after_3516528.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3516890i32;
                    } else if (__value__ == (3516890i32)) {
                        {
                            {
                                var __tmp__ = _p_3514992._repeat(_op_3515030, _min_3516518, _max_3516523, _before_3516503?.__copy__(), _after_3516528?.__copy__(), _lastRepeat_3515046?.__copy__());
                                _after_3516528 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3516968i32;
                            } else {
                                _gotoNext = 3516998i32;
                            };
                        };
                    } else if (__value__ == (3516968i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3516998i32;
                    } else if (__value__ == (3516998i32)) {
                        _repeat_3515128 = _before_3516503?.__copy__();
                        _t_3515104 = _after_3516528?.__copy__();
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3517029i32)) {
                        if ((((_p_3514992._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3515104.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3517080i32;
                        } else {
                            _gotoNext = 3517804i32;
                        };
                    } else if (__value__ == (3517080i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3517086i32;
                    } else if (__value__ == (3517086i32)) {
                        {
                            final __value__ = _t_3515104[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3517104i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3517177i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3517253i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3517331i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3517426i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3517722i32;
                            } else {
                                _gotoNext = 3517804i32;
                            };
                        };
                    } else if (__value__ == (3517104i32)) {
                        _p_3514992._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3515104 = (_t_3515104.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3517177i32)) {
                        _p_3514992._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3515104 = (_t_3515104.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3517253i32)) {
                        _p_3514992._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3515104 = (_t_3515104.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3517331i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3515104.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3517804i32;
                    } else if (__value__ == (3517426i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3515104.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3517491 = __tmp__._0?.__copy__();
                            _t_3515104 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3517549i32;
                    } else if (__value__ == (3517549i32)) {
                        if (_lit_3517491 != (stdgo.Go.str())) {
                            _gotoNext = 3517563i32;
                        } else {
                            _gotoNext = 3517702i32;
                        };
                    } else if (__value__ == (3517563i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3517491?.__copy__());
                            _c_3517571 = __tmp__._0;
                            _rest_3517574 = __tmp__._1?.__copy__();
                            _err_3517580 = __tmp__._2;
                        };
                        if (_err_3517580 != null) {
                            _gotoNext = 3517621i32;
                        } else {
                            _gotoNext = 3517660i32;
                        };
                    } else if (__value__ == (3517621i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3517580 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3517660i32;
                    } else if (__value__ == (3517660i32)) {
                        _p_3514992._literal(_c_3517571);
                        _lit_3517491 = _rest_3517574?.__copy__();
                        _gotoNext = 3517549i32;
                    } else if (__value__ == (3517702i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3517722i32)) {
                        _p_3514992._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3515104 = (_t_3515104.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3517804i32)) {
                        _re_3517804 = _p_3514992._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3517804.flags = _p_3514992._flags;
                        if ((((_t_3515104.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3515104[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3515104[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3517960i32;
                        } else {
                            _gotoNext = 3518202i32;
                        };
                    } else if (__value__ == (3517960i32)) {
                        {
                            var __tmp__ = _p_3514992._parseUnicodeClass(_t_3515104?.__copy__(), (_re_3517804.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3517966 = __tmp__._0;
                            _rest_3517969 = __tmp__._1?.__copy__();
                            _err_3517975 = __tmp__._2;
                        };
                        if (_err_3517975 != null) {
                            _gotoNext = 3518037i32;
                        } else {
                            _gotoNext = 3518070i32;
                        };
                    } else if (__value__ == (3518037i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3517975 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3518070i32;
                    } else if (__value__ == (3518070i32)) {
                        if (_r_3517966 != null) {
                            _gotoNext = 3518082i32;
                        } else {
                            _gotoNext = 3518202i32;
                        };
                    } else if (__value__ == (3518082i32)) {
                        _re_3517804.rune = _r_3517966;
                        _t_3515104 = _rest_3517969?.__copy__();
                        _p_3514992._push(_re_3517804);
                        bigSwitchBreak = true;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3518202i32)) {
                        {
                            {
                                var __tmp__ = _p_3514992._parsePerlClassEscape(_t_3515104?.__copy__(), (_re_3517804.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3518205 = __tmp__._0;
                                _rest_3518208 = __tmp__._1?.__copy__();
                            };
                            if (_r_3518205 != null) {
                                _gotoNext = 3518266i32;
                            } else {
                                _gotoNext = 3518340i32;
                            };
                        };
                    } else if (__value__ == (3518266i32)) {
                        _re_3517804.rune = _r_3518205;
                        _t_3515104 = _rest_3518208?.__copy__();
                        _p_3514992._push(_re_3517804);
                        bigSwitchBreak = true;
                        _gotoNext = 3515155i32;
                    } else if (__value__ == (3518340i32)) {
                        _p_3514992._reuse(_re_3517804);
                        {
                            {
                                var __tmp__ = _p_3514992._parseEscape(_t_3515104?.__copy__());
                                _c_3515012 = __tmp__._0;
                                _t_3515104 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3518440i32;
                            } else {
                                _gotoNext = 3518470i32;
                            };
                        };
                    } else if (__value__ == (3518440i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3518470i32;
                    } else if (__value__ == (3518470i32)) {
                        _p_3514992._literal(_c_3515012);
                        _gotoNext = 3518489i32;
                    } else if (__value__ == (3518489i32)) {
                        _lastRepeat_3515046 = _repeat_3515128?.__copy__();
                        _gotoNext = 3515112i32;
                    } else if (__value__ == (3518514i32)) {
                        _p_3514992._concat();
                        if (_p_3514992._swapVerticalBar()) {
                            _gotoNext = 3518549i32;
                        } else {
                            _gotoNext = 3518614i32;
                        };
                    } else if (__value__ == (3518549i32)) {
                        _p_3514992._stack = (_p_3514992._stack.__slice__(0, ((_p_3514992._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3518614i32;
                    } else if (__value__ == (3518614i32)) {
                        _p_3514992._alternate();
                        _n_3518630 = (_p_3514992._stack.length);
                        if (_n_3518630 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3518659i32;
                        } else {
                            _gotoNext = 3518706i32;
                        };
                    } else if (__value__ == (3518659i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3518706i32;
                    } else if (__value__ == (3518706i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3514992._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
