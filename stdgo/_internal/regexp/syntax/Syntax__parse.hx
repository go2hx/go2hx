package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3295446:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lastRepeat_3292526:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3292510:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3295060:stdgo.Error = (null : stdgo.Error);
            var _lit_3294971:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3294003:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3293983:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3292608:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3295284:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3293800:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3292584:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3296110:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3294008:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3295685:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _min_3293998:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3292492:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _rest_3295449:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3294015:Bool = false;
            var _rest_3295688:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3292472:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3295455:stdgo.Error = (null : stdgo.Error);
            var _rest_3295054:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3295051:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3293675:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3292330:stdgo.Error = (null : stdgo.Error);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
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
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3292283i32;
                        } else {
                            _gotoNext = 3292464i32;
                        };
                    } else if (__value__ == (3292283i32)) {
                        {
                            _err_3292330 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3292330 != null) {
                                _gotoNext = 3292362i32;
                            } else {
                                _gotoNext = 3292389i32;
                            };
                        };
                    } else if (__value__ == (3292362i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3292330 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3292389i32;
                    } else if (__value__ == (3292389i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3292464i32;
                    } else if (__value__ == (3292464i32)) {
                        _p_3292472._flags = _flags;
                        _p_3292472._wholeRegexp = _s?.__copy__();
                        _t_3292584 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3292592i32;
                    } else if (__value__ == (3292592i32)) {
                        if (_t_3292584 != (stdgo.Go.str())) {
                            _gotoNext = 3292604i32;
                        } else {
                            _gotoNext = 3295994i32;
                        };
                    } else if (__value__ == (3292604i32)) {
                        _repeat_3292608 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3292622i32;
                    } else if (__value__ == (3292622i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3292635i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3292584[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3292748i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293018i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293115i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293211i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293326i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293456i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293570i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293652i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3293953i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3294509i32;
                                } else {
                                    _gotoNext = 3292651i32;
                                };
                            };
                        } else {
                            _gotoNext = 3295969i32;
                        };
                    } else if (__value__ == (3292651i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3292584?.__copy__());
                                _c_3292492 = @:tmpset0 __tmp__._0;
                                _t_3292584 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3292702i32;
                            } else {
                                _gotoNext = 3292732i32;
                            };
                        };
                    } else if (__value__ == (3292702i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3292732i32;
                    } else if (__value__ == (3292732i32)) {
                        @:check2 _p_3292472._literal(_c_3292492);
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3292748i32)) {
                        if ((((_p_3292472._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3292584.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3292584[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3292813i32;
                        } else {
                            _gotoNext = 3292956i32;
                        };
                    } else if (__value__ == (3292813i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292472._parsePerlFlags(_t_3292584?.__copy__());
                                _t_3292584 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3292909i32;
                            } else {
                                _gotoNext = 3292942i32;
                            };
                        };
                    } else if (__value__ == (3292909i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3292942i32;
                    } else if (__value__ == (3292942i32)) {
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3292956i32)) {
                        _p_3292472._numCap++;
                        @:check2 _p_3292472._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3292472._numCap;
                        _t_3292584 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293018i32)) {
                        {
                            _err = @:check2 _p_3292472._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3293073i32;
                            } else {
                                _gotoNext = 3293103i32;
                            };
                        };
                    } else if (__value__ == (3293073i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3293103i32;
                    } else if (__value__ == (3293103i32)) {
                        _t_3292584 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293115i32)) {
                        {
                            _err = @:check2 _p_3292472._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3293169i32;
                            } else {
                                _gotoNext = 3293199i32;
                            };
                        };
                    } else if (__value__ == (3293169i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3293199i32;
                    } else if (__value__ == (3293199i32)) {
                        _t_3292584 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293211i32)) {
                        if ((_p_3292472._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3293248i32;
                        } else {
                            _gotoNext = 3293282i32;
                        };
                    } else if (__value__ == (3293248i32)) {
                        @:check2 _p_3292472._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3293314i32;
                    } else if (__value__ == (3293282i32)) {
                        _gotoNext = 3293282i32;
                        @:check2 _p_3292472._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3293314i32;
                    } else if (__value__ == (3293314i32)) {
                        _t_3292584 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293326i32)) {
                        if ((_p_3292472._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3293363i32;
                        } else {
                            _gotoNext = 3293414i32;
                        };
                    } else if (__value__ == (3293363i32)) {
                        {
                            final __t__ = @:check2 _p_3292472._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3293444i32;
                    } else if (__value__ == (3293414i32)) {
                        _gotoNext = 3293414i32;
                        @:check2 _p_3292472._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3293444i32;
                    } else if (__value__ == (3293444i32)) {
                        _t_3292584 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293456i32)) {
                        if ((_p_3292472._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3293491i32;
                        } else {
                            _gotoNext = 3293523i32;
                        };
                    } else if (__value__ == (3293491i32)) {
                        @:check2 _p_3292472._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3293558i32;
                    } else if (__value__ == (3293523i32)) {
                        _gotoNext = 3293523i32;
                        @:check2 _p_3292472._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3293558i32;
                    } else if (__value__ == (3293558i32)) {
                        _t_3292584 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293570i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292472._parseClass(_t_3292584?.__copy__());
                                _t_3292584 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3293623i32;
                            } else {
                                _gotoNext = 3295969i32;
                            };
                        };
                    } else if (__value__ == (3293623i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293652i32)) {
                        _before_3293675 = _t_3292584?.__copy__();
                        _gotoNext = 3293690i32;
                    } else if (__value__ == (3293690i32)) {
                        {
                            final __value__ = _t_3292584[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3293707i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3293736i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3293765i32;
                            } else {
                                _gotoNext = 3293800i32;
                            };
                        };
                    } else if (__value__ == (3293707i32)) {
                        _op_3292510 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3293800i32;
                    } else if (__value__ == (3293736i32)) {
                        _op_3292510 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3293800i32;
                    } else if (__value__ == (3293765i32)) {
                        _op_3292510 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3293800i32;
                    } else if (__value__ == (3293800i32)) {
                        _after_3293800 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3292472._repeat(_op_3292510, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3293675?.__copy__(), _after_3293800?.__copy__(), _lastRepeat_3292526?.__copy__());
                                _after_3293800 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3293892i32;
                            } else {
                                _gotoNext = 3293922i32;
                            };
                        };
                    } else if (__value__ == (3293892i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3293922i32;
                    } else if (__value__ == (3293922i32)) {
                        _repeat_3292608 = _before_3293675?.__copy__();
                        _t_3292584 = _after_3293800?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3293953i32)) {
                        _op_3292510 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3293983 = _t_3292584?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3292472._parseRepeat(_t_3292584?.__copy__());
                            _min_3293998 = @:tmpset0 __tmp__._0;
                            _max_3294003 = @:tmpset0 __tmp__._1;
                            _after_3294008 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3294015 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3294015) {
                            _gotoNext = 3294048i32;
                        } else {
                            _gotoNext = 3294156i32;
                        };
                    } else if (__value__ == (3294048i32)) {
                        @:check2 _p_3292472._literal((123 : stdgo.GoInt32));
                        _t_3292584 = (_t_3292584.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3294156i32)) {
                        if (((((_min_3293998 < (0 : stdgo.GoInt) : Bool) || (_min_3293998 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3294003 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3294003 >= (0 : stdgo.GoInt) : Bool) && (_min_3293998 > _max_3294003 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3294220i32;
                        } else {
                            _gotoNext = 3294370i32;
                        };
                    } else if (__value__ == (3294220i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3293983.__slice__(0, ((_before_3293983.length) - (_after_3294008.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3294370i32;
                    } else if (__value__ == (3294370i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292472._repeat(_op_3292510, _min_3293998, _max_3294003, _before_3293983?.__copy__(), _after_3294008?.__copy__(), _lastRepeat_3292526?.__copy__());
                                _after_3294008 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3294448i32;
                            } else {
                                _gotoNext = 3294478i32;
                            };
                        };
                    } else if (__value__ == (3294448i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3294478i32;
                    } else if (__value__ == (3294478i32)) {
                        _repeat_3292608 = _before_3293983?.__copy__();
                        _t_3292584 = _after_3294008?.__copy__();
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3294509i32)) {
                        if ((((_p_3292472._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3292584.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3294560i32;
                        } else {
                            _gotoNext = 3295284i32;
                        };
                    } else if (__value__ == (3294560i32)) {
                        _gotoNext = 3294566i32;
                    } else if (__value__ == (3294566i32)) {
                        {
                            final __value__ = _t_3292584[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3294584i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3294657i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3294733i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3294811i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3294906i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3295202i32;
                            } else {
                                _gotoNext = 3295284i32;
                            };
                        };
                    } else if (__value__ == (3294584i32)) {
                        @:check2 _p_3292472._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3292584 = (_t_3292584.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3294657i32)) {
                        @:check2 _p_3292472._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3292584 = (_t_3292584.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3294733i32)) {
                        @:check2 _p_3292472._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3292584 = (_t_3292584.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3294811i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3292584.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295284i32;
                    } else if (__value__ == (3294906i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3292584.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3294971 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3292584 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3295029i32;
                    } else if (__value__ == (3295029i32)) {
                        if (_lit_3294971 != (stdgo.Go.str())) {
                            _gotoNext = 3295043i32;
                        } else {
                            _gotoNext = 3295182i32;
                        };
                    } else if (__value__ == (3295043i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3294971?.__copy__());
                            _c_3295051 = @:tmpset0 __tmp__._0;
                            _rest_3295054 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3295060 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3295060 != null) {
                            _gotoNext = 3295101i32;
                        } else {
                            _gotoNext = 3295140i32;
                        };
                    } else if (__value__ == (3295101i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3295060 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295140i32;
                    } else if (__value__ == (3295140i32)) {
                        @:check2 _p_3292472._literal(_c_3295051);
                        _lit_3294971 = _rest_3295054?.__copy__();
                        _gotoNext = 3295029i32;
                    } else if (__value__ == (3295182i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3295202i32)) {
                        @:check2 _p_3292472._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3292584 = (_t_3292584.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3295284i32)) {
                        _re_3295284 = @:check2 _p_3292472._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3295284 ?? throw "null pointer dereference").flags = _p_3292472._flags;
                        if ((((_t_3292584.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3292584[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3292584[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3295440i32;
                        } else {
                            _gotoNext = 3295682i32;
                        };
                    } else if (__value__ == (3295440i32)) {
                        {
                            var __tmp__ = @:check2 _p_3292472._parseUnicodeClass(_t_3292584?.__copy__(), ((@:checkr _re_3295284 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3295446 = @:tmpset0 __tmp__._0;
                            _rest_3295449 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3295455 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3295455 != null) {
                            _gotoNext = 3295517i32;
                        } else {
                            _gotoNext = 3295550i32;
                        };
                    } else if (__value__ == (3295517i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3295455 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295550i32;
                    } else if (__value__ == (3295550i32)) {
                        if (_r_3295446 != null) {
                            _gotoNext = 3295562i32;
                        } else {
                            _gotoNext = 3295682i32;
                        };
                    } else if (__value__ == (3295562i32)) {
                        (@:checkr _re_3295284 ?? throw "null pointer dereference").rune = _r_3295446;
                        _t_3292584 = _rest_3295449?.__copy__();
                        @:check2 _p_3292472._push(_re_3295284);
                        bigSwitchBreak = true;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3295682i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3292472._parsePerlClassEscape(_t_3292584?.__copy__(), ((@:checkr _re_3295284 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3295685 = @:tmpset0 __tmp__._0;
                                _rest_3295688 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3295685 != null) {
                                _gotoNext = 3295746i32;
                            } else {
                                _gotoNext = 3295820i32;
                            };
                        };
                    } else if (__value__ == (3295746i32)) {
                        (@:checkr _re_3295284 ?? throw "null pointer dereference").rune = _r_3295685;
                        _t_3292584 = _rest_3295688?.__copy__();
                        @:check2 _p_3292472._push(_re_3295284);
                        bigSwitchBreak = true;
                        _gotoNext = 3292635i32;
                    } else if (__value__ == (3295820i32)) {
                        @:check2 _p_3292472._reuse(_re_3295284);
                        {
                            {
                                var __tmp__ = @:check2 _p_3292472._parseEscape(_t_3292584?.__copy__());
                                _c_3292492 = @:tmpset0 __tmp__._0;
                                _t_3292584 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3295920i32;
                            } else {
                                _gotoNext = 3295950i32;
                            };
                        };
                    } else if (__value__ == (3295920i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3295950i32;
                    } else if (__value__ == (3295950i32)) {
                        @:check2 _p_3292472._literal(_c_3292492);
                        _gotoNext = 3295969i32;
                    } else if (__value__ == (3295969i32)) {
                        _lastRepeat_3292526 = _repeat_3292608?.__copy__();
                        _gotoNext = 3292592i32;
                    } else if (__value__ == (3295994i32)) {
                        @:check2 _p_3292472._concat();
                        if (@:check2 _p_3292472._swapVerticalBar()) {
                            _gotoNext = 3296029i32;
                        } else {
                            _gotoNext = 3296094i32;
                        };
                    } else if (__value__ == (3296029i32)) {
                        _p_3292472._stack = (_p_3292472._stack.__slice__(0, ((_p_3292472._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3296094i32;
                    } else if (__value__ == (3296094i32)) {
                        @:check2 _p_3292472._alternate();
                        _n_3296110 = (_p_3292472._stack.length);
                        if (_n_3296110 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3296139i32;
                        } else {
                            _gotoNext = 3296186i32;
                        };
                    } else if (__value__ == (3296139i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3296186i32;
                    } else if (__value__ == (3296186i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3292472._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        };
    }
