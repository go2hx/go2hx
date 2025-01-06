package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _lit_3311987:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3310691:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3309624:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3309488:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _min_3311014:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _err_3312471:stdgo.Error = (null : stdgo.Error);
            var _err_3312076:stdgo.Error = (null : stdgo.Error);
            var _ok_3311031:Bool = false;
            var _rest_3312070:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3312067:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3311024:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3311019:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3309526:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3309508:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3313126:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3312701:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3310816:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3309346:stdgo.Error = (null : stdgo.Error);
            var _rest_3312704:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3312465:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3310999:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3309600:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3309542:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3312462:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3312300:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
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
                            _gotoNext = 3309299i32;
                        } else {
                            _gotoNext = 3309480i32;
                        };
                    } else if (__value__ == (3309299i32)) {
                        {
                            _err_3309346 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3309346 != null) {
                                _gotoNext = 3309378i32;
                            } else {
                                _gotoNext = 3309405i32;
                            };
                        };
                    } else if (__value__ == (3309378i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3309346 };
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
                        _gotoNext = 3309405i32;
                    } else if (__value__ == (3309405i32)) {
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
                        _gotoNext = 3309480i32;
                    } else if (__value__ == (3309480i32)) {
                        _p_3309488._flags = _flags;
                        _p_3309488._wholeRegexp = _s?.__copy__();
                        _t_3309600 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3309608i32;
                    } else if (__value__ == (3309608i32)) {
                        if (_t_3309600 != (stdgo.Go.str())) {
                            _gotoNext = 3309620i32;
                        } else {
                            _gotoNext = 3313010i32;
                        };
                    } else if (__value__ == (3309620i32)) {
                        _repeat_3309624 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3309638i32;
                    } else if (__value__ == (3309638i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3309651i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3309600[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3309764i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310034i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310131i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310227i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310342i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310472i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310586i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310668i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3310969i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3311525i32;
                                } else {
                                    _gotoNext = 3309667i32;
                                };
                            };
                        } else {
                            _gotoNext = 3312985i32;
                        };
                    } else if (__value__ == (3309667i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3309600?.__copy__());
                                _c_3309508 = __tmp__._0;
                                _t_3309600 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3309718i32;
                            } else {
                                _gotoNext = 3309748i32;
                            };
                        };
                    } else if (__value__ == (3309718i32)) {
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
                        _gotoNext = 3309748i32;
                    } else if (__value__ == (3309748i32)) {
                        @:check2 _p_3309488._literal(_c_3309508);
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3309764i32)) {
                        if ((((_p_3309488._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3309600.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3309600[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3309829i32;
                        } else {
                            _gotoNext = 3309972i32;
                        };
                    } else if (__value__ == (3309829i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309488._parsePerlFlags(_t_3309600?.__copy__());
                                _t_3309600 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3309925i32;
                            } else {
                                _gotoNext = 3309958i32;
                            };
                        };
                    } else if (__value__ == (3309925i32)) {
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
                        _gotoNext = 3309958i32;
                    } else if (__value__ == (3309958i32)) {
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3309972i32)) {
                        _p_3309488._numCap++;
                        @:check2 _p_3309488._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3309488._numCap;
                        _t_3309600 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310034i32)) {
                        {
                            _err = @:check2 _p_3309488._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3310089i32;
                            } else {
                                _gotoNext = 3310119i32;
                            };
                        };
                    } else if (__value__ == (3310089i32)) {
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
                        _gotoNext = 3310119i32;
                    } else if (__value__ == (3310119i32)) {
                        _t_3309600 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310131i32)) {
                        {
                            _err = @:check2 _p_3309488._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3310185i32;
                            } else {
                                _gotoNext = 3310215i32;
                            };
                        };
                    } else if (__value__ == (3310185i32)) {
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
                        _gotoNext = 3310215i32;
                    } else if (__value__ == (3310215i32)) {
                        _t_3309600 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310227i32)) {
                        if ((_p_3309488._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3310264i32;
                        } else {
                            _gotoNext = 3310298i32;
                        };
                    } else if (__value__ == (3310264i32)) {
                        @:check2 _p_3309488._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3310330i32;
                    } else if (__value__ == (3310298i32)) {
                        _gotoNext = 3310298i32;
                        @:check2 _p_3309488._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3310330i32;
                    } else if (__value__ == (3310330i32)) {
                        _t_3309600 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310342i32)) {
                        if ((_p_3309488._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3310379i32;
                        } else {
                            _gotoNext = 3310430i32;
                        };
                    } else if (__value__ == (3310379i32)) {
                        {
                            final __t__ = @:check2 _p_3309488._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3310460i32;
                    } else if (__value__ == (3310430i32)) {
                        _gotoNext = 3310430i32;
                        @:check2 _p_3309488._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3310460i32;
                    } else if (__value__ == (3310460i32)) {
                        _t_3309600 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310472i32)) {
                        if ((_p_3309488._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3310507i32;
                        } else {
                            _gotoNext = 3310539i32;
                        };
                    } else if (__value__ == (3310507i32)) {
                        @:check2 _p_3309488._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3310574i32;
                    } else if (__value__ == (3310539i32)) {
                        _gotoNext = 3310539i32;
                        @:check2 _p_3309488._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3310574i32;
                    } else if (__value__ == (3310574i32)) {
                        _t_3309600 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310586i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309488._parseClass(_t_3309600?.__copy__());
                                _t_3309600 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3310639i32;
                            } else {
                                _gotoNext = 3312985i32;
                            };
                        };
                    } else if (__value__ == (3310639i32)) {
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
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310668i32)) {
                        _before_3310691 = _t_3309600?.__copy__();
                        _gotoNext = 3310706i32;
                    } else if (__value__ == (3310706i32)) {
                        {
                            final __value__ = _t_3309600[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3310723i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3310752i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3310781i32;
                            } else {
                                _gotoNext = 3310816i32;
                            };
                        };
                    } else if (__value__ == (3310723i32)) {
                        _op_3309526 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3310816i32;
                    } else if (__value__ == (3310752i32)) {
                        _op_3309526 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3310816i32;
                    } else if (__value__ == (3310781i32)) {
                        _op_3309526 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3310816i32;
                    } else if (__value__ == (3310816i32)) {
                        _after_3310816 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3309488._repeat(_op_3309526, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3310691?.__copy__(), _after_3310816?.__copy__(), _lastRepeat_3309542?.__copy__());
                                _after_3310816 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3310908i32;
                            } else {
                                _gotoNext = 3310938i32;
                            };
                        };
                    } else if (__value__ == (3310908i32)) {
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
                        _gotoNext = 3310938i32;
                    } else if (__value__ == (3310938i32)) {
                        _repeat_3309624 = _before_3310691?.__copy__();
                        _t_3309600 = _after_3310816?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3310969i32)) {
                        _op_3309526 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3310999 = _t_3309600?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3309488._parseRepeat(_t_3309600?.__copy__());
                            _min_3311014 = __tmp__._0;
                            _max_3311019 = __tmp__._1;
                            _after_3311024 = __tmp__._2?.__copy__();
                            _ok_3311031 = __tmp__._3;
                        };
                        if (!_ok_3311031) {
                            _gotoNext = 3311064i32;
                        } else {
                            _gotoNext = 3311172i32;
                        };
                    } else if (__value__ == (3311064i32)) {
                        @:check2 _p_3309488._literal((123 : stdgo.GoInt32));
                        _t_3309600 = (_t_3309600.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3311172i32)) {
                        if (((((_min_3311014 < (0 : stdgo.GoInt) : Bool) || (_min_3311014 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3311019 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3311019 >= (0 : stdgo.GoInt) : Bool) && (_min_3311014 > _max_3311019 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3311236i32;
                        } else {
                            _gotoNext = 3311386i32;
                        };
                    } else if (__value__ == (3311236i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3310999.__slice__(0, ((_before_3310999.length) - (_after_3311024.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3311386i32;
                    } else if (__value__ == (3311386i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309488._repeat(_op_3309526, _min_3311014, _max_3311019, _before_3310999?.__copy__(), _after_3311024?.__copy__(), _lastRepeat_3309542?.__copy__());
                                _after_3311024 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3311464i32;
                            } else {
                                _gotoNext = 3311494i32;
                            };
                        };
                    } else if (__value__ == (3311464i32)) {
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
                        _gotoNext = 3311494i32;
                    } else if (__value__ == (3311494i32)) {
                        _repeat_3309624 = _before_3310999?.__copy__();
                        _t_3309600 = _after_3311024?.__copy__();
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3311525i32)) {
                        if ((((_p_3309488._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3309600.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3311576i32;
                        } else {
                            _gotoNext = 3312300i32;
                        };
                    } else if (__value__ == (3311576i32)) {
                        _gotoNext = 3311582i32;
                    } else if (__value__ == (3311582i32)) {
                        {
                            final __value__ = _t_3309600[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3311600i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3311673i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3311749i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3311827i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3311922i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3312218i32;
                            } else {
                                _gotoNext = 3312300i32;
                            };
                        };
                    } else if (__value__ == (3311600i32)) {
                        @:check2 _p_3309488._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3309600 = (_t_3309600.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3311673i32)) {
                        @:check2 _p_3309488._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3309600 = (_t_3309600.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3311749i32)) {
                        @:check2 _p_3309488._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3309600 = (_t_3309600.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3311827i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3309600.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3312300i32;
                    } else if (__value__ == (3311922i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3309600.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3311987 = __tmp__._0?.__copy__();
                            _t_3309600 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3312045i32;
                    } else if (__value__ == (3312045i32)) {
                        if (_lit_3311987 != (stdgo.Go.str())) {
                            _gotoNext = 3312059i32;
                        } else {
                            _gotoNext = 3312198i32;
                        };
                    } else if (__value__ == (3312059i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3311987?.__copy__());
                            _c_3312067 = __tmp__._0;
                            _rest_3312070 = __tmp__._1?.__copy__();
                            _err_3312076 = __tmp__._2;
                        };
                        if (_err_3312076 != null) {
                            _gotoNext = 3312117i32;
                        } else {
                            _gotoNext = 3312156i32;
                        };
                    } else if (__value__ == (3312117i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3312076 };
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
                        _gotoNext = 3312156i32;
                    } else if (__value__ == (3312156i32)) {
                        @:check2 _p_3309488._literal(_c_3312067);
                        _lit_3311987 = _rest_3312070?.__copy__();
                        _gotoNext = 3312045i32;
                    } else if (__value__ == (3312198i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3312218i32)) {
                        @:check2 _p_3309488._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3309600 = (_t_3309600.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3312300i32)) {
                        _re_3312300 = @:check2 _p_3309488._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3312300 ?? throw "null pointer dereference").flags = _p_3309488._flags;
                        if ((((_t_3309600.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3309600[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3309600[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3312456i32;
                        } else {
                            _gotoNext = 3312698i32;
                        };
                    } else if (__value__ == (3312456i32)) {
                        {
                            var __tmp__ = @:check2 _p_3309488._parseUnicodeClass(_t_3309600?.__copy__(), ((@:checkr _re_3312300 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3312462 = __tmp__._0;
                            _rest_3312465 = __tmp__._1?.__copy__();
                            _err_3312471 = __tmp__._2;
                        };
                        if (_err_3312471 != null) {
                            _gotoNext = 3312533i32;
                        } else {
                            _gotoNext = 3312566i32;
                        };
                    } else if (__value__ == (3312533i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3312471 };
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
                        _gotoNext = 3312566i32;
                    } else if (__value__ == (3312566i32)) {
                        if (_r_3312462 != null) {
                            _gotoNext = 3312578i32;
                        } else {
                            _gotoNext = 3312698i32;
                        };
                    } else if (__value__ == (3312578i32)) {
                        (@:checkr _re_3312300 ?? throw "null pointer dereference").rune = _r_3312462;
                        _t_3309600 = _rest_3312465?.__copy__();
                        @:check2 _p_3309488._push(_re_3312300);
                        bigSwitchBreak = true;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3312698i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3309488._parsePerlClassEscape(_t_3309600?.__copy__(), ((@:checkr _re_3312300 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3312701 = __tmp__._0;
                                _rest_3312704 = __tmp__._1?.__copy__();
                            };
                            if (_r_3312701 != null) {
                                _gotoNext = 3312762i32;
                            } else {
                                _gotoNext = 3312836i32;
                            };
                        };
                    } else if (__value__ == (3312762i32)) {
                        (@:checkr _re_3312300 ?? throw "null pointer dereference").rune = _r_3312701;
                        _t_3309600 = _rest_3312704?.__copy__();
                        @:check2 _p_3309488._push(_re_3312300);
                        bigSwitchBreak = true;
                        _gotoNext = 3309651i32;
                    } else if (__value__ == (3312836i32)) {
                        @:check2 _p_3309488._reuse(_re_3312300);
                        {
                            {
                                var __tmp__ = @:check2 _p_3309488._parseEscape(_t_3309600?.__copy__());
                                _c_3309508 = __tmp__._0;
                                _t_3309600 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3312936i32;
                            } else {
                                _gotoNext = 3312966i32;
                            };
                        };
                    } else if (__value__ == (3312936i32)) {
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
                        _gotoNext = 3312966i32;
                    } else if (__value__ == (3312966i32)) {
                        @:check2 _p_3309488._literal(_c_3309508);
                        _gotoNext = 3312985i32;
                    } else if (__value__ == (3312985i32)) {
                        _lastRepeat_3309542 = _repeat_3309624?.__copy__();
                        _gotoNext = 3309608i32;
                    } else if (__value__ == (3313010i32)) {
                        @:check2 _p_3309488._concat();
                        if (@:check2 _p_3309488._swapVerticalBar()) {
                            _gotoNext = 3313045i32;
                        } else {
                            _gotoNext = 3313110i32;
                        };
                    } else if (__value__ == (3313045i32)) {
                        _p_3309488._stack = (_p_3309488._stack.__slice__(0, ((_p_3309488._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3313110i32;
                    } else if (__value__ == (3313110i32)) {
                        @:check2 _p_3309488._alternate();
                        _n_3313126 = (_p_3309488._stack.length);
                        if (_n_3313126 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3313155i32;
                        } else {
                            _gotoNext = 3313202i32;
                        };
                    } else if (__value__ == (3313155i32)) {
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
                        _gotoNext = 3313202i32;
                    } else if (__value__ == (3313202i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3309488._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _0, _1 : _err };
        };
    }
