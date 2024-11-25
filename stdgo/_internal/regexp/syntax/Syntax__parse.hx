package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3607936:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lit_3606797:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3606886:stdgo.Error = (null : stdgo.Error);
            var _repeat_3604434:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3604298:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3604156:stdgo.Error = (null : stdgo.Error);
            var _re_3607110:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3606877:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3605829:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3605626:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3605501:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3607514:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3607275:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3605809:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3604352:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3604318:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3607281:stdgo.Error = (null : stdgo.Error);
            var _r_3607272:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3606880:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3605834:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3604410:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3607511:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3605841:Bool = false;
            var _min_3605824:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3604336:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> {
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
                        });
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3604109i32;
                        } else {
                            _gotoNext = 3604290i32;
                        };
                    } else if (__value__ == (3604109i32)) {
                        {
                            _err_3604156 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3604156 != null) {
                                _gotoNext = 3604188i32;
                            } else {
                                _gotoNext = 3604215i32;
                            };
                        };
                    } else if (__value__ == (3604188i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3604156 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3604215i32;
                    } else if (__value__ == (3604215i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3604290i32;
                    } else if (__value__ == (3604290i32)) {
                        _p_3604298._flags = _flags;
                        _p_3604298._wholeRegexp = _s?.__copy__();
                        _t_3604410 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3604418i32;
                    } else if (__value__ == (3604418i32)) {
                        if (_t_3604410 != (stdgo.Go.str())) {
                            _gotoNext = 3604430i32;
                        } else {
                            _gotoNext = 3607820i32;
                        };
                    } else if (__value__ == (3604430i32)) {
                        _repeat_3604434 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3604448i32;
                    } else if (__value__ == (3604448i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3604461i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3604410[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3604574i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3604844i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3604941i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3605037i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3605152i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3605282i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3605396i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3605478i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3605779i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3606335i32;
                                } else {
                                    _gotoNext = 3604477i32;
                                };
                            };
                        } else {
                            _gotoNext = 3607795i32;
                        };
                    } else if (__value__ == (3604477i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3604410?.__copy__());
                                _c_3604318 = __tmp__._0;
                                _t_3604410 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3604528i32;
                            } else {
                                _gotoNext = 3604558i32;
                            };
                        };
                    } else if (__value__ == (3604528i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3604558i32;
                    } else if (__value__ == (3604558i32)) {
                        _p_3604298._literal(_c_3604318);
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3604574i32)) {
                        if ((((_p_3604298._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3604410.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3604410[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3604639i32;
                        } else {
                            _gotoNext = 3604782i32;
                        };
                    } else if (__value__ == (3604639i32)) {
                        {
                            {
                                var __tmp__ = _p_3604298._parsePerlFlags(_t_3604410?.__copy__());
                                _t_3604410 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3604735i32;
                            } else {
                                _gotoNext = 3604768i32;
                            };
                        };
                    } else if (__value__ == (3604735i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3604768i32;
                    } else if (__value__ == (3604768i32)) {
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3604782i32)) {
                        _p_3604298._numCap++;
                        _p_3604298._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3604298._numCap;
                        _t_3604410 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3604844i32)) {
                        {
                            _err = _p_3604298._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3604899i32;
                            } else {
                                _gotoNext = 3604929i32;
                            };
                        };
                    } else if (__value__ == (3604899i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3604929i32;
                    } else if (__value__ == (3604929i32)) {
                        _t_3604410 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3604941i32)) {
                        {
                            _err = _p_3604298._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3604995i32;
                            } else {
                                _gotoNext = 3605025i32;
                            };
                        };
                    } else if (__value__ == (3604995i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3605025i32;
                    } else if (__value__ == (3605025i32)) {
                        _t_3604410 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3605037i32)) {
                        if ((_p_3604298._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3605074i32;
                        } else {
                            _gotoNext = 3605108i32;
                        };
                    } else if (__value__ == (3605074i32)) {
                        _p_3604298._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3605140i32;
                    } else if (__value__ == (3605108i32)) {
                        _gotoNext = 3605108i32;
                        _p_3604298._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3605140i32;
                    } else if (__value__ == (3605140i32)) {
                        _t_3604410 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3605152i32)) {
                        if ((_p_3604298._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3605189i32;
                        } else {
                            _gotoNext = 3605240i32;
                        };
                    } else if (__value__ == (3605189i32)) {
                        _p_3604298._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3604298._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3605270i32;
                    } else if (__value__ == (3605240i32)) {
                        _gotoNext = 3605240i32;
                        _p_3604298._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3605270i32;
                    } else if (__value__ == (3605270i32)) {
                        _t_3604410 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3605282i32)) {
                        if ((_p_3604298._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3605317i32;
                        } else {
                            _gotoNext = 3605349i32;
                        };
                    } else if (__value__ == (3605317i32)) {
                        _p_3604298._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3605384i32;
                    } else if (__value__ == (3605349i32)) {
                        _gotoNext = 3605349i32;
                        _p_3604298._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3605384i32;
                    } else if (__value__ == (3605384i32)) {
                        _t_3604410 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3605396i32)) {
                        {
                            {
                                var __tmp__ = _p_3604298._parseClass(_t_3604410?.__copy__());
                                _t_3604410 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3605449i32;
                            } else {
                                _gotoNext = 3607795i32;
                            };
                        };
                    } else if (__value__ == (3605449i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3605478i32)) {
                        _before_3605501 = _t_3604410?.__copy__();
                        _gotoNext = 3605516i32;
                    } else if (__value__ == (3605516i32)) {
                        {
                            final __value__ = _t_3604410[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3605533i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3605562i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3605591i32;
                            } else {
                                _gotoNext = 3605626i32;
                            };
                        };
                    } else if (__value__ == (3605533i32)) {
                        _op_3604336 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3605626i32;
                    } else if (__value__ == (3605562i32)) {
                        _op_3604336 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3605626i32;
                    } else if (__value__ == (3605591i32)) {
                        _op_3604336 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3605626i32;
                    } else if (__value__ == (3605626i32)) {
                        _after_3605626 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3604298._repeat(_op_3604336, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3605501?.__copy__(), _after_3605626?.__copy__(), _lastRepeat_3604352?.__copy__());
                                _after_3605626 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3605718i32;
                            } else {
                                _gotoNext = 3605748i32;
                            };
                        };
                    } else if (__value__ == (3605718i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3605748i32;
                    } else if (__value__ == (3605748i32)) {
                        _repeat_3604434 = _before_3605501?.__copy__();
                        _t_3604410 = _after_3605626?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3605779i32)) {
                        _op_3604336 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3605809 = _t_3604410?.__copy__();
                        {
                            var __tmp__ = _p_3604298._parseRepeat(_t_3604410?.__copy__());
                            _min_3605824 = __tmp__._0;
                            _max_3605829 = __tmp__._1;
                            _after_3605834 = __tmp__._2?.__copy__();
                            _ok_3605841 = __tmp__._3;
                        };
                        if (!_ok_3605841) {
                            _gotoNext = 3605874i32;
                        } else {
                            _gotoNext = 3605982i32;
                        };
                    } else if (__value__ == (3605874i32)) {
                        _p_3604298._literal((123 : stdgo.GoInt32));
                        _t_3604410 = (_t_3604410.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3605982i32)) {
                        if (((((_min_3605824 < (0 : stdgo.GoInt) : Bool) || (_min_3605824 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3605829 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3605829 >= (0 : stdgo.GoInt) : Bool) && (_min_3605824 > _max_3605829 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3606046i32;
                        } else {
                            _gotoNext = 3606196i32;
                        };
                    } else if (__value__ == (3606046i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3605809.__slice__(0, ((_before_3605809.length) - (_after_3605834.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3606196i32;
                    } else if (__value__ == (3606196i32)) {
                        {
                            {
                                var __tmp__ = _p_3604298._repeat(_op_3604336, _min_3605824, _max_3605829, _before_3605809?.__copy__(), _after_3605834?.__copy__(), _lastRepeat_3604352?.__copy__());
                                _after_3605834 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3606274i32;
                            } else {
                                _gotoNext = 3606304i32;
                            };
                        };
                    } else if (__value__ == (3606274i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3606304i32;
                    } else if (__value__ == (3606304i32)) {
                        _repeat_3604434 = _before_3605809?.__copy__();
                        _t_3604410 = _after_3605834?.__copy__();
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3606335i32)) {
                        if ((((_p_3604298._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3604410.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3606386i32;
                        } else {
                            _gotoNext = 3607110i32;
                        };
                    } else if (__value__ == (3606386i32)) {
                        _gotoNext = 3606392i32;
                    } else if (__value__ == (3606392i32)) {
                        {
                            final __value__ = _t_3604410[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3606410i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3606483i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3606559i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3606637i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3606732i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3607028i32;
                            } else {
                                _gotoNext = 3607110i32;
                            };
                        };
                    } else if (__value__ == (3606410i32)) {
                        _p_3604298._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3604410 = (_t_3604410.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3606483i32)) {
                        _p_3604298._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3604410 = (_t_3604410.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3606559i32)) {
                        _p_3604298._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3604410 = (_t_3604410.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3606637i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3604410.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3607110i32;
                    } else if (__value__ == (3606732i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3604410.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3606797 = __tmp__._0?.__copy__();
                            _t_3604410 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3606855i32;
                    } else if (__value__ == (3606855i32)) {
                        if (_lit_3606797 != (stdgo.Go.str())) {
                            _gotoNext = 3606869i32;
                        } else {
                            _gotoNext = 3607008i32;
                        };
                    } else if (__value__ == (3606869i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3606797?.__copy__());
                            _c_3606877 = __tmp__._0;
                            _rest_3606880 = __tmp__._1?.__copy__();
                            _err_3606886 = __tmp__._2;
                        };
                        if (_err_3606886 != null) {
                            _gotoNext = 3606927i32;
                        } else {
                            _gotoNext = 3606966i32;
                        };
                    } else if (__value__ == (3606927i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3606886 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3606966i32;
                    } else if (__value__ == (3606966i32)) {
                        _p_3604298._literal(_c_3606877);
                        _lit_3606797 = _rest_3606880?.__copy__();
                        _gotoNext = 3606855i32;
                    } else if (__value__ == (3607008i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3607028i32)) {
                        _p_3604298._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3604410 = (_t_3604410.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3607110i32)) {
                        _re_3607110 = _p_3604298._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3607110.flags = _p_3604298._flags;
                        if ((((_t_3604410.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3604410[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3604410[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3607266i32;
                        } else {
                            _gotoNext = 3607508i32;
                        };
                    } else if (__value__ == (3607266i32)) {
                        {
                            var __tmp__ = _p_3604298._parseUnicodeClass(_t_3604410?.__copy__(), (_re_3607110.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3607272 = __tmp__._0;
                            _rest_3607275 = __tmp__._1?.__copy__();
                            _err_3607281 = __tmp__._2;
                        };
                        if (_err_3607281 != null) {
                            _gotoNext = 3607343i32;
                        } else {
                            _gotoNext = 3607376i32;
                        };
                    } else if (__value__ == (3607343i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3607281 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3607376i32;
                    } else if (__value__ == (3607376i32)) {
                        if (_r_3607272 != null) {
                            _gotoNext = 3607388i32;
                        } else {
                            _gotoNext = 3607508i32;
                        };
                    } else if (__value__ == (3607388i32)) {
                        _re_3607110.rune = _r_3607272;
                        _t_3604410 = _rest_3607275?.__copy__();
                        _p_3604298._push(_re_3607110);
                        bigSwitchBreak = true;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3607508i32)) {
                        {
                            {
                                var __tmp__ = _p_3604298._parsePerlClassEscape(_t_3604410?.__copy__(), (_re_3607110.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3607511 = __tmp__._0;
                                _rest_3607514 = __tmp__._1?.__copy__();
                            };
                            if (_r_3607511 != null) {
                                _gotoNext = 3607572i32;
                            } else {
                                _gotoNext = 3607646i32;
                            };
                        };
                    } else if (__value__ == (3607572i32)) {
                        _re_3607110.rune = _r_3607511;
                        _t_3604410 = _rest_3607514?.__copy__();
                        _p_3604298._push(_re_3607110);
                        bigSwitchBreak = true;
                        _gotoNext = 3604461i32;
                    } else if (__value__ == (3607646i32)) {
                        _p_3604298._reuse(_re_3607110);
                        {
                            {
                                var __tmp__ = _p_3604298._parseEscape(_t_3604410?.__copy__());
                                _c_3604318 = __tmp__._0;
                                _t_3604410 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3607746i32;
                            } else {
                                _gotoNext = 3607776i32;
                            };
                        };
                    } else if (__value__ == (3607746i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3607776i32;
                    } else if (__value__ == (3607776i32)) {
                        _p_3604298._literal(_c_3604318);
                        _gotoNext = 3607795i32;
                    } else if (__value__ == (3607795i32)) {
                        _lastRepeat_3604352 = _repeat_3604434?.__copy__();
                        _gotoNext = 3604418i32;
                    } else if (__value__ == (3607820i32)) {
                        _p_3604298._concat();
                        if (_p_3604298._swapVerticalBar()) {
                            _gotoNext = 3607855i32;
                        } else {
                            _gotoNext = 3607920i32;
                        };
                    } else if (__value__ == (3607855i32)) {
                        _p_3604298._stack = (_p_3604298._stack.__slice__(0, ((_p_3604298._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3607920i32;
                    } else if (__value__ == (3607920i32)) {
                        _p_3604298._alternate();
                        _n_3607936 = (_p_3604298._stack.length);
                        if (_n_3607936 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3607965i32;
                        } else {
                            _gotoNext = 3608012i32;
                        };
                    } else if (__value__ == (3607965i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3608012i32;
                    } else if (__value__ == (3608012i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3604298._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
