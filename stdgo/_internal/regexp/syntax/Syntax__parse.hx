package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_3315400:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3316852:stdgo.Error = (null : stdgo.Error);
            var _c_3316448:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3316846:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3317507:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3313923:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3317085:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3316457:stdgo.Error = (null : stdgo.Error);
            var _t_3313981:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3315072:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3315412:Bool = false;
            var _after_3315197:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3314005:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3316451:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3315405:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3315395:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3315380:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3313869:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3317082:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _op_3313907:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3316843:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3313727:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _re_3316681:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3316368:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3313889:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3313680i32;
                        } else {
                            _gotoNext = 3313861i32;
                        };
                    } else if (__value__ == (3313680i32)) {
                        {
                            _err_3313727 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3313727 != null) {
                                _gotoNext = 3313759i32;
                            } else {
                                _gotoNext = 3313786i32;
                            };
                        };
                    } else if (__value__ == (3313759i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3313727 };
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
                        _gotoNext = 3313786i32;
                    } else if (__value__ == (3313786i32)) {
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
                        _gotoNext = 3313861i32;
                    } else if (__value__ == (3313861i32)) {
                        _p_3313869._flags = _flags;
                        _p_3313869._wholeRegexp = _s?.__copy__();
                        _t_3313981 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3313989i32;
                    } else if (__value__ == (3313989i32)) {
                        if (_t_3313981 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3314001i32;
                        } else {
                            _gotoNext = 3317391i32;
                        };
                    } else if (__value__ == (3314001i32)) {
                        _repeat_3314005 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3314019i32;
                    } else if (__value__ == (3314019i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3314032i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3313981[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314145i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314415i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314512i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314608i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314723i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314853i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314967i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3315049i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3315350i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3315906i32;
                                } else {
                                    _gotoNext = 3314048i32;
                                };
                            };
                        } else {
                            _gotoNext = 3317366i32;
                        };
                    } else if (__value__ == (3314048i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3313981?.__copy__());
                                _c_3313889 = @:tmpset0 __tmp__._0;
                                _t_3313981 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3314099i32;
                            } else {
                                _gotoNext = 3314129i32;
                            };
                        };
                    } else if (__value__ == (3314099i32)) {
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
                        _gotoNext = 3314129i32;
                    } else if (__value__ == (3314129i32)) {
                        @:check2 _p_3313869._literal(_c_3313889);
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314145i32)) {
                        if ((((_p_3313869._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3313981.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3313981[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3314210i32;
                        } else {
                            _gotoNext = 3314353i32;
                        };
                    } else if (__value__ == (3314210i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3313869._parsePerlFlags(_t_3313981?.__copy__());
                                _t_3313981 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3314306i32;
                            } else {
                                _gotoNext = 3314339i32;
                            };
                        };
                    } else if (__value__ == (3314306i32)) {
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
                        _gotoNext = 3314339i32;
                    } else if (__value__ == (3314339i32)) {
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314353i32)) {
                        _p_3313869._numCap++;
                        @:check2 _p_3313869._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3313869._numCap;
                        _t_3313981 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314415i32)) {
                        {
                            _err = @:check2 _p_3313869._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3314470i32;
                            } else {
                                _gotoNext = 3314500i32;
                            };
                        };
                    } else if (__value__ == (3314470i32)) {
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
                        _gotoNext = 3314500i32;
                    } else if (__value__ == (3314500i32)) {
                        _t_3313981 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314512i32)) {
                        {
                            _err = @:check2 _p_3313869._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3314566i32;
                            } else {
                                _gotoNext = 3314596i32;
                            };
                        };
                    } else if (__value__ == (3314566i32)) {
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
                        _gotoNext = 3314596i32;
                    } else if (__value__ == (3314596i32)) {
                        _t_3313981 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314608i32)) {
                        if ((_p_3313869._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3314645i32;
                        } else {
                            _gotoNext = 3314679i32;
                        };
                    } else if (__value__ == (3314645i32)) {
                        @:check2 _p_3313869._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3314711i32;
                    } else if (__value__ == (3314679i32)) {
                        _gotoNext = 3314679i32;
                        @:check2 _p_3313869._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3314711i32;
                    } else if (__value__ == (3314711i32)) {
                        _t_3313981 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314723i32)) {
                        if ((_p_3313869._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3314760i32;
                        } else {
                            _gotoNext = 3314811i32;
                        };
                    } else if (__value__ == (3314760i32)) {
                        {
                            final __t__ = @:check2 _p_3313869._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3314841i32;
                    } else if (__value__ == (3314811i32)) {
                        _gotoNext = 3314811i32;
                        @:check2 _p_3313869._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3314841i32;
                    } else if (__value__ == (3314841i32)) {
                        _t_3313981 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314853i32)) {
                        if ((_p_3313869._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3314888i32;
                        } else {
                            _gotoNext = 3314920i32;
                        };
                    } else if (__value__ == (3314888i32)) {
                        @:check2 _p_3313869._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3314955i32;
                    } else if (__value__ == (3314920i32)) {
                        _gotoNext = 3314920i32;
                        @:check2 _p_3313869._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3314955i32;
                    } else if (__value__ == (3314955i32)) {
                        _t_3313981 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3314967i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3313869._parseClass(_t_3313981?.__copy__());
                                _t_3313981 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3315020i32;
                            } else {
                                _gotoNext = 3317366i32;
                            };
                        };
                    } else if (__value__ == (3315020i32)) {
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
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3315049i32)) {
                        _before_3315072 = _t_3313981?.__copy__();
                        _gotoNext = 3315087i32;
                    } else if (__value__ == (3315087i32)) {
                        {
                            final __value__ = _t_3313981[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3315104i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3315133i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3315162i32;
                            } else {
                                _gotoNext = 3315197i32;
                            };
                        };
                    } else if (__value__ == (3315104i32)) {
                        _op_3313907 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3315197i32;
                    } else if (__value__ == (3315133i32)) {
                        _op_3313907 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3315197i32;
                    } else if (__value__ == (3315162i32)) {
                        _op_3313907 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3315197i32;
                    } else if (__value__ == (3315197i32)) {
                        _after_3315197 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3313869._repeat(_op_3313907, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3315072?.__copy__(), _after_3315197?.__copy__(), _lastRepeat_3313923?.__copy__());
                                _after_3315197 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3315289i32;
                            } else {
                                _gotoNext = 3315319i32;
                            };
                        };
                    } else if (__value__ == (3315289i32)) {
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
                        _gotoNext = 3315319i32;
                    } else if (__value__ == (3315319i32)) {
                        _repeat_3314005 = _before_3315072?.__copy__();
                        _t_3313981 = _after_3315197?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3315350i32)) {
                        _op_3313907 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3315380 = _t_3313981?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3313869._parseRepeat(_t_3313981?.__copy__());
                            _min_3315395 = @:tmpset0 __tmp__._0;
                            _max_3315400 = @:tmpset0 __tmp__._1;
                            _after_3315405 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3315412 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3315412) {
                            _gotoNext = 3315445i32;
                        } else {
                            _gotoNext = 3315553i32;
                        };
                    } else if (__value__ == (3315445i32)) {
                        @:check2 _p_3313869._literal((123 : stdgo.GoInt32));
                        _t_3313981 = (_t_3313981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3315553i32)) {
                        if (((((_min_3315395 < (0 : stdgo.GoInt) : Bool) || (_min_3315395 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3315400 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3315400 >= (0 : stdgo.GoInt) : Bool) && (_min_3315395 > _max_3315400 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3315617i32;
                        } else {
                            _gotoNext = 3315767i32;
                        };
                    } else if (__value__ == (3315617i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3315380.__slice__(0, ((_before_3315380.length) - (_after_3315405.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3315767i32;
                    } else if (__value__ == (3315767i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3313869._repeat(_op_3313907, _min_3315395, _max_3315400, _before_3315380?.__copy__(), _after_3315405?.__copy__(), _lastRepeat_3313923?.__copy__());
                                _after_3315405 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3315845i32;
                            } else {
                                _gotoNext = 3315875i32;
                            };
                        };
                    } else if (__value__ == (3315845i32)) {
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
                        _gotoNext = 3315875i32;
                    } else if (__value__ == (3315875i32)) {
                        _repeat_3314005 = _before_3315380?.__copy__();
                        _t_3313981 = _after_3315405?.__copy__();
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3315906i32)) {
                        if ((((_p_3313869._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3313981.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3315957i32;
                        } else {
                            _gotoNext = 3316681i32;
                        };
                    } else if (__value__ == (3315957i32)) {
                        _gotoNext = 3315963i32;
                    } else if (__value__ == (3315963i32)) {
                        {
                            final __value__ = _t_3313981[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3315981i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3316054i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3316130i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3316208i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3316303i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3316599i32;
                            } else {
                                _gotoNext = 3316681i32;
                            };
                        };
                    } else if (__value__ == (3315981i32)) {
                        @:check2 _p_3313869._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313981 = (_t_3313981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3316054i32)) {
                        @:check2 _p_3313869._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313981 = (_t_3313981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3316130i32)) {
                        @:check2 _p_3313869._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313981 = (_t_3313981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3316208i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3313981.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3316681i32;
                    } else if (__value__ == (3316303i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3313981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3316368 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3313981 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3316426i32;
                    } else if (__value__ == (3316426i32)) {
                        if (_lit_3316368 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3316440i32;
                        } else {
                            _gotoNext = 3316579i32;
                        };
                    } else if (__value__ == (3316440i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3316368?.__copy__());
                            _c_3316448 = @:tmpset0 __tmp__._0;
                            _rest_3316451 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3316457 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3316457 != null) {
                            _gotoNext = 3316498i32;
                        } else {
                            _gotoNext = 3316537i32;
                        };
                    } else if (__value__ == (3316498i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3316457 };
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
                        _gotoNext = 3316537i32;
                    } else if (__value__ == (3316537i32)) {
                        @:check2 _p_3313869._literal(_c_3316448);
                        _lit_3316368 = _rest_3316451?.__copy__();
                        _gotoNext = 3316426i32;
                    } else if (__value__ == (3316579i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3316599i32)) {
                        @:check2 _p_3313869._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313981 = (_t_3313981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3316681i32)) {
                        _re_3316681 = @:check2 _p_3313869._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3316681 ?? throw "null pointer dereference").flags = _p_3313869._flags;
                        if ((((_t_3313981.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3313981[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3313981[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3316837i32;
                        } else {
                            _gotoNext = 3317079i32;
                        };
                    } else if (__value__ == (3316837i32)) {
                        {
                            var __tmp__ = @:check2 _p_3313869._parseUnicodeClass(_t_3313981?.__copy__(), ((@:checkr _re_3316681 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3316843 = @:tmpset0 __tmp__._0;
                            _rest_3316846 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3316852 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3316852 != null) {
                            _gotoNext = 3316914i32;
                        } else {
                            _gotoNext = 3316947i32;
                        };
                    } else if (__value__ == (3316914i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3316852 };
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
                        _gotoNext = 3316947i32;
                    } else if (__value__ == (3316947i32)) {
                        if (_r_3316843 != null) {
                            _gotoNext = 3316959i32;
                        } else {
                            _gotoNext = 3317079i32;
                        };
                    } else if (__value__ == (3316959i32)) {
                        (@:checkr _re_3316681 ?? throw "null pointer dereference").rune = _r_3316843;
                        _t_3313981 = _rest_3316846?.__copy__();
                        @:check2 _p_3313869._push(_re_3316681);
                        bigSwitchBreak = true;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3317079i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3313869._parsePerlClassEscape(_t_3313981?.__copy__(), ((@:checkr _re_3316681 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3317082 = @:tmpset0 __tmp__._0;
                                _rest_3317085 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3317082 != null) {
                                _gotoNext = 3317143i32;
                            } else {
                                _gotoNext = 3317217i32;
                            };
                        };
                    } else if (__value__ == (3317143i32)) {
                        (@:checkr _re_3316681 ?? throw "null pointer dereference").rune = _r_3317082;
                        _t_3313981 = _rest_3317085?.__copy__();
                        @:check2 _p_3313869._push(_re_3316681);
                        bigSwitchBreak = true;
                        _gotoNext = 3314032i32;
                    } else if (__value__ == (3317217i32)) {
                        @:check2 _p_3313869._reuse(_re_3316681);
                        {
                            {
                                var __tmp__ = @:check2 _p_3313869._parseEscape(_t_3313981?.__copy__());
                                _c_3313889 = @:tmpset0 __tmp__._0;
                                _t_3313981 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3317317i32;
                            } else {
                                _gotoNext = 3317347i32;
                            };
                        };
                    } else if (__value__ == (3317317i32)) {
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
                        _gotoNext = 3317347i32;
                    } else if (__value__ == (3317347i32)) {
                        @:check2 _p_3313869._literal(_c_3313889);
                        _gotoNext = 3317366i32;
                    } else if (__value__ == (3317366i32)) {
                        _lastRepeat_3313923 = _repeat_3314005?.__copy__();
                        _gotoNext = 3313989i32;
                    } else if (__value__ == (3317391i32)) {
                        @:check2 _p_3313869._concat();
                        if (@:check2 _p_3313869._swapVerticalBar()) {
                            _gotoNext = 3317426i32;
                        } else {
                            _gotoNext = 3317491i32;
                        };
                    } else if (__value__ == (3317426i32)) {
                        _p_3313869._stack = (_p_3313869._stack.__slice__(0, ((_p_3313869._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3317491i32;
                    } else if (__value__ == (3317491i32)) {
                        @:check2 _p_3313869._alternate();
                        _n_3317507 = (_p_3313869._stack.length);
                        if (_n_3317507 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3317536i32;
                        } else {
                            _gotoNext = 3317583i32;
                        };
                    } else if (__value__ == (3317536i32)) {
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
                        _gotoNext = 3317583i32;
                    } else if (__value__ == (3317583i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3313869._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        };
    }
