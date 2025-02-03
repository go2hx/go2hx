package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3397542:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_3400334:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lastRepeat_3397576:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3401160:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3400499:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3399065:Bool = false;
            var _min_3399048:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3397522:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3400735:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _op_3397560:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3400110:stdgo.Error = (null : stdgo.Error);
            var _rest_3400104:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3399053:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3397380:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _r_3400496:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3400021:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3398725:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3397658:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3400505:stdgo.Error = (null : stdgo.Error);
            var _c_3400101:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3399033:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3397634:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3400738:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3399058:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3398850:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3397333i32;
                        } else {
                            _gotoNext = 3397514i32;
                        };
                    } else if (__value__ == (3397333i32)) {
                        {
                            _err_3397380 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3397380 != null) {
                                _gotoNext = 3397412i32;
                            } else {
                                _gotoNext = 3397439i32;
                            };
                        };
                    } else if (__value__ == (3397412i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3397380 };
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
                        _gotoNext = 3397439i32;
                    } else if (__value__ == (3397439i32)) {
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
                        _gotoNext = 3397514i32;
                    } else if (__value__ == (3397514i32)) {
                        _p_3397522._flags = _flags;
                        _p_3397522._wholeRegexp = _s?.__copy__();
                        _t_3397634 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3397642i32;
                    } else if (__value__ == (3397642i32)) {
                        if (_t_3397634 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3397654i32;
                        } else {
                            _gotoNext = 3401044i32;
                        };
                    } else if (__value__ == (3397654i32)) {
                        _repeat_3397658 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3397672i32;
                    } else if (__value__ == (3397672i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3397685i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3397634[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3397798i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3398068i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3398165i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3398261i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3398376i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3398506i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3398620i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3398702i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3399003i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3399559i32;
                                } else {
                                    _gotoNext = 3397701i32;
                                };
                            };
                        } else {
                            _gotoNext = 3401019i32;
                        };
                    } else if (__value__ == (3397701i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3397634?.__copy__());
                                _c_3397542 = @:tmpset0 __tmp__._0;
                                _t_3397634 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3397752i32;
                            } else {
                                _gotoNext = 3397782i32;
                            };
                        };
                    } else if (__value__ == (3397752i32)) {
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
                        _gotoNext = 3397782i32;
                    } else if (__value__ == (3397782i32)) {
                        @:check2 _p_3397522._literal(_c_3397542);
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3397798i32)) {
                        if ((((_p_3397522._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3397634.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3397634[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3397863i32;
                        } else {
                            _gotoNext = 3398006i32;
                        };
                    } else if (__value__ == (3397863i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3397522._parsePerlFlags(_t_3397634?.__copy__());
                                _t_3397634 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3397959i32;
                            } else {
                                _gotoNext = 3397992i32;
                            };
                        };
                    } else if (__value__ == (3397959i32)) {
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
                        _gotoNext = 3397992i32;
                    } else if (__value__ == (3397992i32)) {
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398006i32)) {
                        _p_3397522._numCap++;
                        @:check2 _p_3397522._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3397522._numCap;
                        _t_3397634 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398068i32)) {
                        {
                            _err = @:check2 _p_3397522._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3398123i32;
                            } else {
                                _gotoNext = 3398153i32;
                            };
                        };
                    } else if (__value__ == (3398123i32)) {
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
                        _gotoNext = 3398153i32;
                    } else if (__value__ == (3398153i32)) {
                        _t_3397634 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398165i32)) {
                        {
                            _err = @:check2 _p_3397522._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3398219i32;
                            } else {
                                _gotoNext = 3398249i32;
                            };
                        };
                    } else if (__value__ == (3398219i32)) {
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
                        _gotoNext = 3398249i32;
                    } else if (__value__ == (3398249i32)) {
                        _t_3397634 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398261i32)) {
                        if ((_p_3397522._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3398298i32;
                        } else {
                            _gotoNext = 3398332i32;
                        };
                    } else if (__value__ == (3398298i32)) {
                        @:check2 _p_3397522._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3398364i32;
                    } else if (__value__ == (3398332i32)) {
                        _gotoNext = 3398332i32;
                        @:check2 _p_3397522._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3398364i32;
                    } else if (__value__ == (3398364i32)) {
                        _t_3397634 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398376i32)) {
                        if ((_p_3397522._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3398413i32;
                        } else {
                            _gotoNext = 3398464i32;
                        };
                    } else if (__value__ == (3398413i32)) {
                        {
                            final __t__ = @:check2 _p_3397522._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3398494i32;
                    } else if (__value__ == (3398464i32)) {
                        _gotoNext = 3398464i32;
                        @:check2 _p_3397522._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3398494i32;
                    } else if (__value__ == (3398494i32)) {
                        _t_3397634 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398506i32)) {
                        if ((_p_3397522._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3398541i32;
                        } else {
                            _gotoNext = 3398573i32;
                        };
                    } else if (__value__ == (3398541i32)) {
                        @:check2 _p_3397522._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3398608i32;
                    } else if (__value__ == (3398573i32)) {
                        _gotoNext = 3398573i32;
                        @:check2 _p_3397522._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3398608i32;
                    } else if (__value__ == (3398608i32)) {
                        _t_3397634 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398620i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3397522._parseClass(_t_3397634?.__copy__());
                                _t_3397634 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3398673i32;
                            } else {
                                _gotoNext = 3401019i32;
                            };
                        };
                    } else if (__value__ == (3398673i32)) {
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
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3398702i32)) {
                        _before_3398725 = _t_3397634?.__copy__();
                        _gotoNext = 3398740i32;
                    } else if (__value__ == (3398740i32)) {
                        {
                            final __value__ = _t_3397634[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3398757i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3398786i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3398815i32;
                            } else {
                                _gotoNext = 3398850i32;
                            };
                        };
                    } else if (__value__ == (3398757i32)) {
                        _op_3397560 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3398850i32;
                    } else if (__value__ == (3398786i32)) {
                        _op_3397560 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3398850i32;
                    } else if (__value__ == (3398815i32)) {
                        _op_3397560 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3398850i32;
                    } else if (__value__ == (3398850i32)) {
                        _after_3398850 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3397522._repeat(_op_3397560, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3398725?.__copy__(), _after_3398850?.__copy__(), _lastRepeat_3397576?.__copy__());
                                _after_3398850 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3398942i32;
                            } else {
                                _gotoNext = 3398972i32;
                            };
                        };
                    } else if (__value__ == (3398942i32)) {
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
                        _gotoNext = 3398972i32;
                    } else if (__value__ == (3398972i32)) {
                        _repeat_3397658 = _before_3398725?.__copy__();
                        _t_3397634 = _after_3398850?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3399003i32)) {
                        _op_3397560 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3399033 = _t_3397634?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3397522._parseRepeat(_t_3397634?.__copy__());
                            _min_3399048 = @:tmpset0 __tmp__._0;
                            _max_3399053 = @:tmpset0 __tmp__._1;
                            _after_3399058 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3399065 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3399065) {
                            _gotoNext = 3399098i32;
                        } else {
                            _gotoNext = 3399206i32;
                        };
                    } else if (__value__ == (3399098i32)) {
                        @:check2 _p_3397522._literal((123 : stdgo.GoInt32));
                        _t_3397634 = (_t_3397634.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3399206i32)) {
                        if (((((_min_3399048 < (0 : stdgo.GoInt) : Bool) || (_min_3399048 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3399053 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3399053 >= (0 : stdgo.GoInt) : Bool) && (_min_3399048 > _max_3399053 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3399270i32;
                        } else {
                            _gotoNext = 3399420i32;
                        };
                    } else if (__value__ == (3399270i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3399033.__slice__(0, ((_before_3399033.length) - (_after_3399058.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3399420i32;
                    } else if (__value__ == (3399420i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3397522._repeat(_op_3397560, _min_3399048, _max_3399053, _before_3399033?.__copy__(), _after_3399058?.__copy__(), _lastRepeat_3397576?.__copy__());
                                _after_3399058 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3399498i32;
                            } else {
                                _gotoNext = 3399528i32;
                            };
                        };
                    } else if (__value__ == (3399498i32)) {
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
                        _gotoNext = 3399528i32;
                    } else if (__value__ == (3399528i32)) {
                        _repeat_3397658 = _before_3399033?.__copy__();
                        _t_3397634 = _after_3399058?.__copy__();
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3399559i32)) {
                        if ((((_p_3397522._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3397634.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3399610i32;
                        } else {
                            _gotoNext = 3400334i32;
                        };
                    } else if (__value__ == (3399610i32)) {
                        _gotoNext = 3399616i32;
                    } else if (__value__ == (3399616i32)) {
                        {
                            final __value__ = _t_3397634[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3399634i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3399707i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3399783i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3399861i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3399956i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3400252i32;
                            } else {
                                _gotoNext = 3400334i32;
                            };
                        };
                    } else if (__value__ == (3399634i32)) {
                        @:check2 _p_3397522._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3397634 = (_t_3397634.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3399707i32)) {
                        @:check2 _p_3397522._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3397634 = (_t_3397634.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3399783i32)) {
                        @:check2 _p_3397522._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3397634 = (_t_3397634.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3399861i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3397634.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3400334i32;
                    } else if (__value__ == (3399956i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3397634.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3400021 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3397634 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3400079i32;
                    } else if (__value__ == (3400079i32)) {
                        if (_lit_3400021 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3400093i32;
                        } else {
                            _gotoNext = 3400232i32;
                        };
                    } else if (__value__ == (3400093i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3400021?.__copy__());
                            _c_3400101 = @:tmpset0 __tmp__._0;
                            _rest_3400104 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3400110 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3400110 != null) {
                            _gotoNext = 3400151i32;
                        } else {
                            _gotoNext = 3400190i32;
                        };
                    } else if (__value__ == (3400151i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3400110 };
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
                        _gotoNext = 3400190i32;
                    } else if (__value__ == (3400190i32)) {
                        @:check2 _p_3397522._literal(_c_3400101);
                        _lit_3400021 = _rest_3400104?.__copy__();
                        _gotoNext = 3400079i32;
                    } else if (__value__ == (3400232i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3400252i32)) {
                        @:check2 _p_3397522._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3397634 = (_t_3397634.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3400334i32)) {
                        _re_3400334 = @:check2 _p_3397522._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3400334 ?? throw "null pointer dereference").flags = _p_3397522._flags;
                        if ((((_t_3397634.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3397634[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3397634[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3400490i32;
                        } else {
                            _gotoNext = 3400732i32;
                        };
                    } else if (__value__ == (3400490i32)) {
                        {
                            var __tmp__ = @:check2 _p_3397522._parseUnicodeClass(_t_3397634?.__copy__(), ((@:checkr _re_3400334 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3400496 = @:tmpset0 __tmp__._0;
                            _rest_3400499 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3400505 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3400505 != null) {
                            _gotoNext = 3400567i32;
                        } else {
                            _gotoNext = 3400600i32;
                        };
                    } else if (__value__ == (3400567i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3400505 };
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
                        _gotoNext = 3400600i32;
                    } else if (__value__ == (3400600i32)) {
                        if (_r_3400496 != null) {
                            _gotoNext = 3400612i32;
                        } else {
                            _gotoNext = 3400732i32;
                        };
                    } else if (__value__ == (3400612i32)) {
                        (@:checkr _re_3400334 ?? throw "null pointer dereference").rune = _r_3400496;
                        _t_3397634 = _rest_3400499?.__copy__();
                        @:check2 _p_3397522._push(_re_3400334);
                        bigSwitchBreak = true;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3400732i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3397522._parsePerlClassEscape(_t_3397634?.__copy__(), ((@:checkr _re_3400334 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3400735 = @:tmpset0 __tmp__._0;
                                _rest_3400738 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3400735 != null) {
                                _gotoNext = 3400796i32;
                            } else {
                                _gotoNext = 3400870i32;
                            };
                        };
                    } else if (__value__ == (3400796i32)) {
                        (@:checkr _re_3400334 ?? throw "null pointer dereference").rune = _r_3400735;
                        _t_3397634 = _rest_3400738?.__copy__();
                        @:check2 _p_3397522._push(_re_3400334);
                        bigSwitchBreak = true;
                        _gotoNext = 3397685i32;
                    } else if (__value__ == (3400870i32)) {
                        @:check2 _p_3397522._reuse(_re_3400334);
                        {
                            {
                                var __tmp__ = @:check2 _p_3397522._parseEscape(_t_3397634?.__copy__());
                                _c_3397542 = @:tmpset0 __tmp__._0;
                                _t_3397634 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3400970i32;
                            } else {
                                _gotoNext = 3401000i32;
                            };
                        };
                    } else if (__value__ == (3400970i32)) {
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
                        _gotoNext = 3401000i32;
                    } else if (__value__ == (3401000i32)) {
                        @:check2 _p_3397522._literal(_c_3397542);
                        _gotoNext = 3401019i32;
                    } else if (__value__ == (3401019i32)) {
                        _lastRepeat_3397576 = _repeat_3397658?.__copy__();
                        _gotoNext = 3397642i32;
                    } else if (__value__ == (3401044i32)) {
                        @:check2 _p_3397522._concat();
                        if (@:check2 _p_3397522._swapVerticalBar()) {
                            _gotoNext = 3401079i32;
                        } else {
                            _gotoNext = 3401144i32;
                        };
                    } else if (__value__ == (3401079i32)) {
                        _p_3397522._stack = (_p_3397522._stack.__slice__(0, ((_p_3397522._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3401144i32;
                    } else if (__value__ == (3401144i32)) {
                        @:check2 _p_3397522._alternate();
                        _n_3401160 = (_p_3397522._stack.length);
                        if (_n_3401160 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3401189i32;
                        } else {
                            _gotoNext = 3401236i32;
                        };
                    } else if (__value__ == (3401189i32)) {
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
                        _gotoNext = 3401236i32;
                    } else if (__value__ == (3401236i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3397522._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
