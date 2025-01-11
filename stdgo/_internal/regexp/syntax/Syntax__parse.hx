package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _lastRepeat_3324923:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3324907:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3328082:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3327852:stdgo.Error = (null : stdgo.Error);
            var _c_3327448:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3326400:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3325005:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3326405:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3326395:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3328085:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3327457:stdgo.Error = (null : stdgo.Error);
            var _c_3324889:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3324727:stdgo.Error = (null : stdgo.Error);
            var _before_3326380:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3326197:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3324869:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _n_3328507:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _r_3327843:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3326072:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3324981:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3327846:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3327451:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3326412:Bool = false;
            var _re_3327681:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3327368:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3324680i32;
                        } else {
                            _gotoNext = 3324861i32;
                        };
                    } else if (__value__ == (3324680i32)) {
                        {
                            _err_3324727 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3324727 != null) {
                                _gotoNext = 3324759i32;
                            } else {
                                _gotoNext = 3324786i32;
                            };
                        };
                    } else if (__value__ == (3324759i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3324727 };
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
                        _gotoNext = 3324786i32;
                    } else if (__value__ == (3324786i32)) {
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
                        _gotoNext = 3324861i32;
                    } else if (__value__ == (3324861i32)) {
                        _p_3324869._flags = _flags;
                        _p_3324869._wholeRegexp = _s?.__copy__();
                        _t_3324981 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3324989i32;
                    } else if (__value__ == (3324989i32)) {
                        if (_t_3324981 != (stdgo.Go.str())) {
                            _gotoNext = 3325001i32;
                        } else {
                            _gotoNext = 3328391i32;
                        };
                    } else if (__value__ == (3325001i32)) {
                        _repeat_3325005 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3325019i32;
                    } else if (__value__ == (3325019i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3325032i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3324981[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3325145i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3325415i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3325512i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3325608i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3325723i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3325853i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3325967i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3326049i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3326350i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3326906i32;
                                } else {
                                    _gotoNext = 3325048i32;
                                };
                            };
                        } else {
                            _gotoNext = 3328366i32;
                        };
                    } else if (__value__ == (3325048i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3324981?.__copy__());
                                _c_3324889 = __tmp__._0;
                                _t_3324981 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3325099i32;
                            } else {
                                _gotoNext = 3325129i32;
                            };
                        };
                    } else if (__value__ == (3325099i32)) {
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
                        _gotoNext = 3325129i32;
                    } else if (__value__ == (3325129i32)) {
                        @:check2 _p_3324869._literal(_c_3324889);
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325145i32)) {
                        if ((((_p_3324869._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3324981.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3324981[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3325210i32;
                        } else {
                            _gotoNext = 3325353i32;
                        };
                    } else if (__value__ == (3325210i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3324869._parsePerlFlags(_t_3324981?.__copy__());
                                _t_3324981 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3325306i32;
                            } else {
                                _gotoNext = 3325339i32;
                            };
                        };
                    } else if (__value__ == (3325306i32)) {
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
                        _gotoNext = 3325339i32;
                    } else if (__value__ == (3325339i32)) {
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325353i32)) {
                        _p_3324869._numCap++;
                        @:check2 _p_3324869._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3324869._numCap;
                        _t_3324981 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325415i32)) {
                        {
                            _err = @:check2 _p_3324869._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3325470i32;
                            } else {
                                _gotoNext = 3325500i32;
                            };
                        };
                    } else if (__value__ == (3325470i32)) {
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
                        _gotoNext = 3325500i32;
                    } else if (__value__ == (3325500i32)) {
                        _t_3324981 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325512i32)) {
                        {
                            _err = @:check2 _p_3324869._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3325566i32;
                            } else {
                                _gotoNext = 3325596i32;
                            };
                        };
                    } else if (__value__ == (3325566i32)) {
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
                        _gotoNext = 3325596i32;
                    } else if (__value__ == (3325596i32)) {
                        _t_3324981 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325608i32)) {
                        if ((_p_3324869._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3325645i32;
                        } else {
                            _gotoNext = 3325679i32;
                        };
                    } else if (__value__ == (3325645i32)) {
                        @:check2 _p_3324869._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3325711i32;
                    } else if (__value__ == (3325679i32)) {
                        _gotoNext = 3325679i32;
                        @:check2 _p_3324869._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3325711i32;
                    } else if (__value__ == (3325711i32)) {
                        _t_3324981 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325723i32)) {
                        if ((_p_3324869._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3325760i32;
                        } else {
                            _gotoNext = 3325811i32;
                        };
                    } else if (__value__ == (3325760i32)) {
                        {
                            final __t__ = @:check2 _p_3324869._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3325841i32;
                    } else if (__value__ == (3325811i32)) {
                        _gotoNext = 3325811i32;
                        @:check2 _p_3324869._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3325841i32;
                    } else if (__value__ == (3325841i32)) {
                        _t_3324981 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325853i32)) {
                        if ((_p_3324869._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3325888i32;
                        } else {
                            _gotoNext = 3325920i32;
                        };
                    } else if (__value__ == (3325888i32)) {
                        @:check2 _p_3324869._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3325955i32;
                    } else if (__value__ == (3325920i32)) {
                        _gotoNext = 3325920i32;
                        @:check2 _p_3324869._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3325955i32;
                    } else if (__value__ == (3325955i32)) {
                        _t_3324981 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3325967i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3324869._parseClass(_t_3324981?.__copy__());
                                _t_3324981 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3326020i32;
                            } else {
                                _gotoNext = 3328366i32;
                            };
                        };
                    } else if (__value__ == (3326020i32)) {
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
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3326049i32)) {
                        _before_3326072 = _t_3324981?.__copy__();
                        _gotoNext = 3326087i32;
                    } else if (__value__ == (3326087i32)) {
                        {
                            final __value__ = _t_3324981[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3326104i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3326133i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3326162i32;
                            } else {
                                _gotoNext = 3326197i32;
                            };
                        };
                    } else if (__value__ == (3326104i32)) {
                        _op_3324907 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3326197i32;
                    } else if (__value__ == (3326133i32)) {
                        _op_3324907 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3326197i32;
                    } else if (__value__ == (3326162i32)) {
                        _op_3324907 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3326197i32;
                    } else if (__value__ == (3326197i32)) {
                        _after_3326197 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3324869._repeat(_op_3324907, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3326072?.__copy__(), _after_3326197?.__copy__(), _lastRepeat_3324923?.__copy__());
                                _after_3326197 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3326289i32;
                            } else {
                                _gotoNext = 3326319i32;
                            };
                        };
                    } else if (__value__ == (3326289i32)) {
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
                        _gotoNext = 3326319i32;
                    } else if (__value__ == (3326319i32)) {
                        _repeat_3325005 = _before_3326072?.__copy__();
                        _t_3324981 = _after_3326197?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3326350i32)) {
                        _op_3324907 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3326380 = _t_3324981?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3324869._parseRepeat(_t_3324981?.__copy__());
                            _min_3326395 = __tmp__._0;
                            _max_3326400 = __tmp__._1;
                            _after_3326405 = __tmp__._2?.__copy__();
                            _ok_3326412 = __tmp__._3;
                        };
                        if (!_ok_3326412) {
                            _gotoNext = 3326445i32;
                        } else {
                            _gotoNext = 3326553i32;
                        };
                    } else if (__value__ == (3326445i32)) {
                        @:check2 _p_3324869._literal((123 : stdgo.GoInt32));
                        _t_3324981 = (_t_3324981.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3326553i32)) {
                        if (((((_min_3326395 < (0 : stdgo.GoInt) : Bool) || (_min_3326395 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3326400 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3326400 >= (0 : stdgo.GoInt) : Bool) && (_min_3326395 > _max_3326400 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3326617i32;
                        } else {
                            _gotoNext = 3326767i32;
                        };
                    } else if (__value__ == (3326617i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3326380.__slice__(0, ((_before_3326380.length) - (_after_3326405.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3326767i32;
                    } else if (__value__ == (3326767i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3324869._repeat(_op_3324907, _min_3326395, _max_3326400, _before_3326380?.__copy__(), _after_3326405?.__copy__(), _lastRepeat_3324923?.__copy__());
                                _after_3326405 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3326845i32;
                            } else {
                                _gotoNext = 3326875i32;
                            };
                        };
                    } else if (__value__ == (3326845i32)) {
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
                        _gotoNext = 3326875i32;
                    } else if (__value__ == (3326875i32)) {
                        _repeat_3325005 = _before_3326380?.__copy__();
                        _t_3324981 = _after_3326405?.__copy__();
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3326906i32)) {
                        if ((((_p_3324869._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3324981.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3326957i32;
                        } else {
                            _gotoNext = 3327681i32;
                        };
                    } else if (__value__ == (3326957i32)) {
                        _gotoNext = 3326963i32;
                    } else if (__value__ == (3326963i32)) {
                        {
                            final __value__ = _t_3324981[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3326981i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3327054i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3327130i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3327208i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3327303i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3327599i32;
                            } else {
                                _gotoNext = 3327681i32;
                            };
                        };
                    } else if (__value__ == (3326981i32)) {
                        @:check2 _p_3324869._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3324981 = (_t_3324981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3327054i32)) {
                        @:check2 _p_3324869._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3324981 = (_t_3324981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3327130i32)) {
                        @:check2 _p_3324869._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3324981 = (_t_3324981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3327208i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3324981.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3327681i32;
                    } else if (__value__ == (3327303i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3324981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3327368 = __tmp__._0?.__copy__();
                            _t_3324981 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3327426i32;
                    } else if (__value__ == (3327426i32)) {
                        if (_lit_3327368 != (stdgo.Go.str())) {
                            _gotoNext = 3327440i32;
                        } else {
                            _gotoNext = 3327579i32;
                        };
                    } else if (__value__ == (3327440i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3327368?.__copy__());
                            _c_3327448 = __tmp__._0;
                            _rest_3327451 = __tmp__._1?.__copy__();
                            _err_3327457 = __tmp__._2;
                        };
                        if (_err_3327457 != null) {
                            _gotoNext = 3327498i32;
                        } else {
                            _gotoNext = 3327537i32;
                        };
                    } else if (__value__ == (3327498i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3327457 };
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
                        _gotoNext = 3327537i32;
                    } else if (__value__ == (3327537i32)) {
                        @:check2 _p_3324869._literal(_c_3327448);
                        _lit_3327368 = _rest_3327451?.__copy__();
                        _gotoNext = 3327426i32;
                    } else if (__value__ == (3327579i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3327599i32)) {
                        @:check2 _p_3324869._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3324981 = (_t_3324981.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3327681i32)) {
                        _re_3327681 = @:check2 _p_3324869._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3327681 ?? throw "null pointer dereference").flags = _p_3324869._flags;
                        if ((((_t_3324981.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3324981[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3324981[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3327837i32;
                        } else {
                            _gotoNext = 3328079i32;
                        };
                    } else if (__value__ == (3327837i32)) {
                        {
                            var __tmp__ = @:check2 _p_3324869._parseUnicodeClass(_t_3324981?.__copy__(), ((@:checkr _re_3327681 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3327843 = __tmp__._0;
                            _rest_3327846 = __tmp__._1?.__copy__();
                            _err_3327852 = __tmp__._2;
                        };
                        if (_err_3327852 != null) {
                            _gotoNext = 3327914i32;
                        } else {
                            _gotoNext = 3327947i32;
                        };
                    } else if (__value__ == (3327914i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3327852 };
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
                        _gotoNext = 3327947i32;
                    } else if (__value__ == (3327947i32)) {
                        if (_r_3327843 != null) {
                            _gotoNext = 3327959i32;
                        } else {
                            _gotoNext = 3328079i32;
                        };
                    } else if (__value__ == (3327959i32)) {
                        (@:checkr _re_3327681 ?? throw "null pointer dereference").rune = _r_3327843;
                        _t_3324981 = _rest_3327846?.__copy__();
                        @:check2 _p_3324869._push(_re_3327681);
                        bigSwitchBreak = true;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3328079i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3324869._parsePerlClassEscape(_t_3324981?.__copy__(), ((@:checkr _re_3327681 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3328082 = __tmp__._0;
                                _rest_3328085 = __tmp__._1?.__copy__();
                            };
                            if (_r_3328082 != null) {
                                _gotoNext = 3328143i32;
                            } else {
                                _gotoNext = 3328217i32;
                            };
                        };
                    } else if (__value__ == (3328143i32)) {
                        (@:checkr _re_3327681 ?? throw "null pointer dereference").rune = _r_3328082;
                        _t_3324981 = _rest_3328085?.__copy__();
                        @:check2 _p_3324869._push(_re_3327681);
                        bigSwitchBreak = true;
                        _gotoNext = 3325032i32;
                    } else if (__value__ == (3328217i32)) {
                        @:check2 _p_3324869._reuse(_re_3327681);
                        {
                            {
                                var __tmp__ = @:check2 _p_3324869._parseEscape(_t_3324981?.__copy__());
                                _c_3324889 = __tmp__._0;
                                _t_3324981 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3328317i32;
                            } else {
                                _gotoNext = 3328347i32;
                            };
                        };
                    } else if (__value__ == (3328317i32)) {
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
                        _gotoNext = 3328347i32;
                    } else if (__value__ == (3328347i32)) {
                        @:check2 _p_3324869._literal(_c_3324889);
                        _gotoNext = 3328366i32;
                    } else if (__value__ == (3328366i32)) {
                        _lastRepeat_3324923 = _repeat_3325005?.__copy__();
                        _gotoNext = 3324989i32;
                    } else if (__value__ == (3328391i32)) {
                        @:check2 _p_3324869._concat();
                        if (@:check2 _p_3324869._swapVerticalBar()) {
                            _gotoNext = 3328426i32;
                        } else {
                            _gotoNext = 3328491i32;
                        };
                    } else if (__value__ == (3328426i32)) {
                        _p_3324869._stack = (_p_3324869._stack.__slice__(0, ((_p_3324869._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3328491i32;
                    } else if (__value__ == (3328491i32)) {
                        @:check2 _p_3324869._alternate();
                        _n_3328507 = (_p_3324869._stack.length);
                        if (_n_3328507 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3328536i32;
                        } else {
                            _gotoNext = 3328583i32;
                        };
                    } else if (__value__ == (3328536i32)) {
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
                        _gotoNext = 3328583i32;
                    } else if (__value__ == (3328583i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3324869._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
