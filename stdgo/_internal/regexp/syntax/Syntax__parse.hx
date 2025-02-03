package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3305358:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3304936:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3301578:stdgo.Error = (null : stdgo.Error);
            var _rest_3304697:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3303256:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3302923:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3301832:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3303263:Bool = false;
            var _after_3303048:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3301856:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3301740:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3304302:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3304933:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3304308:stdgo.Error = (null : stdgo.Error);
            var _lit_3304219:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3303231:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3301758:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3304299:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3303246:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3301774:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3304694:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3304703:stdgo.Error = (null : stdgo.Error);
            var _re_3304532:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _max_3303251:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3301720:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
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
                            _gotoNext = 3301531i32;
                        } else {
                            _gotoNext = 3301712i32;
                        };
                    } else if (__value__ == (3301531i32)) {
                        {
                            _err_3301578 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3301578 != null) {
                                _gotoNext = 3301610i32;
                            } else {
                                _gotoNext = 3301637i32;
                            };
                        };
                    } else if (__value__ == (3301610i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3301578 };
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
                        _gotoNext = 3301637i32;
                    } else if (__value__ == (3301637i32)) {
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
                        _gotoNext = 3301712i32;
                    } else if (__value__ == (3301712i32)) {
                        _p_3301720._flags = _flags;
                        _p_3301720._wholeRegexp = _s?.__copy__();
                        _t_3301832 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3301840i32;
                    } else if (__value__ == (3301840i32)) {
                        if (_t_3301832 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3301852i32;
                        } else {
                            _gotoNext = 3305242i32;
                        };
                    } else if (__value__ == (3301852i32)) {
                        _repeat_3301856 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3301870i32;
                    } else if (__value__ == (3301870i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3301883i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3301832[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3301996i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302266i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302363i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302459i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302574i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302704i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302818i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302900i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3303201i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3303757i32;
                                } else {
                                    _gotoNext = 3301899i32;
                                };
                            };
                        } else {
                            _gotoNext = 3305217i32;
                        };
                    } else if (__value__ == (3301899i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3301832?.__copy__());
                                _c_3301740 = @:tmpset0 __tmp__._0;
                                _t_3301832 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3301950i32;
                            } else {
                                _gotoNext = 3301980i32;
                            };
                        };
                    } else if (__value__ == (3301950i32)) {
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
                        _gotoNext = 3301980i32;
                    } else if (__value__ == (3301980i32)) {
                        @:check2 _p_3301720._literal(_c_3301740);
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3301996i32)) {
                        if ((((_p_3301720._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3301832.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3301832[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3302061i32;
                        } else {
                            _gotoNext = 3302204i32;
                        };
                    } else if (__value__ == (3302061i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3301720._parsePerlFlags(_t_3301832?.__copy__());
                                _t_3301832 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3302157i32;
                            } else {
                                _gotoNext = 3302190i32;
                            };
                        };
                    } else if (__value__ == (3302157i32)) {
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
                        _gotoNext = 3302190i32;
                    } else if (__value__ == (3302190i32)) {
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302204i32)) {
                        _p_3301720._numCap++;
                        @:check2 _p_3301720._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3301720._numCap;
                        _t_3301832 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302266i32)) {
                        {
                            _err = @:check2 _p_3301720._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3302321i32;
                            } else {
                                _gotoNext = 3302351i32;
                            };
                        };
                    } else if (__value__ == (3302321i32)) {
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
                        _gotoNext = 3302351i32;
                    } else if (__value__ == (3302351i32)) {
                        _t_3301832 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302363i32)) {
                        {
                            _err = @:check2 _p_3301720._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3302417i32;
                            } else {
                                _gotoNext = 3302447i32;
                            };
                        };
                    } else if (__value__ == (3302417i32)) {
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
                        _gotoNext = 3302447i32;
                    } else if (__value__ == (3302447i32)) {
                        _t_3301832 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302459i32)) {
                        if ((_p_3301720._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302496i32;
                        } else {
                            _gotoNext = 3302530i32;
                        };
                    } else if (__value__ == (3302496i32)) {
                        @:check2 _p_3301720._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3302562i32;
                    } else if (__value__ == (3302530i32)) {
                        _gotoNext = 3302530i32;
                        @:check2 _p_3301720._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302562i32;
                    } else if (__value__ == (3302562i32)) {
                        _t_3301832 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302574i32)) {
                        if ((_p_3301720._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302611i32;
                        } else {
                            _gotoNext = 3302662i32;
                        };
                    } else if (__value__ == (3302611i32)) {
                        {
                            final __t__ = @:check2 _p_3301720._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3302692i32;
                    } else if (__value__ == (3302662i32)) {
                        _gotoNext = 3302662i32;
                        @:check2 _p_3301720._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302692i32;
                    } else if (__value__ == (3302692i32)) {
                        _t_3301832 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302704i32)) {
                        if ((_p_3301720._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302739i32;
                        } else {
                            _gotoNext = 3302771i32;
                        };
                    } else if (__value__ == (3302739i32)) {
                        @:check2 _p_3301720._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3302806i32;
                    } else if (__value__ == (3302771i32)) {
                        _gotoNext = 3302771i32;
                        @:check2 _p_3301720._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302806i32;
                    } else if (__value__ == (3302806i32)) {
                        _t_3301832 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302818i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3301720._parseClass(_t_3301832?.__copy__());
                                _t_3301832 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3302871i32;
                            } else {
                                _gotoNext = 3305217i32;
                            };
                        };
                    } else if (__value__ == (3302871i32)) {
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
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3302900i32)) {
                        _before_3302923 = _t_3301832?.__copy__();
                        _gotoNext = 3302938i32;
                    } else if (__value__ == (3302938i32)) {
                        {
                            final __value__ = _t_3301832[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3302955i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3302984i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3303013i32;
                            } else {
                                _gotoNext = 3303048i32;
                            };
                        };
                    } else if (__value__ == (3302955i32)) {
                        _op_3301758 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3303048i32;
                    } else if (__value__ == (3302984i32)) {
                        _op_3301758 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3303048i32;
                    } else if (__value__ == (3303013i32)) {
                        _op_3301758 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3303048i32;
                    } else if (__value__ == (3303048i32)) {
                        _after_3303048 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3301720._repeat(_op_3301758, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3302923?.__copy__(), _after_3303048?.__copy__(), _lastRepeat_3301774?.__copy__());
                                _after_3303048 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3303140i32;
                            } else {
                                _gotoNext = 3303170i32;
                            };
                        };
                    } else if (__value__ == (3303140i32)) {
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
                        _gotoNext = 3303170i32;
                    } else if (__value__ == (3303170i32)) {
                        _repeat_3301856 = _before_3302923?.__copy__();
                        _t_3301832 = _after_3303048?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3303201i32)) {
                        _op_3301758 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3303231 = _t_3301832?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3301720._parseRepeat(_t_3301832?.__copy__());
                            _min_3303246 = @:tmpset0 __tmp__._0;
                            _max_3303251 = @:tmpset0 __tmp__._1;
                            _after_3303256 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3303263 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3303263) {
                            _gotoNext = 3303296i32;
                        } else {
                            _gotoNext = 3303404i32;
                        };
                    } else if (__value__ == (3303296i32)) {
                        @:check2 _p_3301720._literal((123 : stdgo.GoInt32));
                        _t_3301832 = (_t_3301832.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3303404i32)) {
                        if (((((_min_3303246 < (0 : stdgo.GoInt) : Bool) || (_min_3303246 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3303251 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3303251 >= (0 : stdgo.GoInt) : Bool) && (_min_3303246 > _max_3303251 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3303468i32;
                        } else {
                            _gotoNext = 3303618i32;
                        };
                    } else if (__value__ == (3303468i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3303231.__slice__(0, ((_before_3303231.length) - (_after_3303256.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3303618i32;
                    } else if (__value__ == (3303618i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3301720._repeat(_op_3301758, _min_3303246, _max_3303251, _before_3303231?.__copy__(), _after_3303256?.__copy__(), _lastRepeat_3301774?.__copy__());
                                _after_3303256 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3303696i32;
                            } else {
                                _gotoNext = 3303726i32;
                            };
                        };
                    } else if (__value__ == (3303696i32)) {
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
                        _gotoNext = 3303726i32;
                    } else if (__value__ == (3303726i32)) {
                        _repeat_3301856 = _before_3303231?.__copy__();
                        _t_3301832 = _after_3303256?.__copy__();
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3303757i32)) {
                        if ((((_p_3301720._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3301832.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3303808i32;
                        } else {
                            _gotoNext = 3304532i32;
                        };
                    } else if (__value__ == (3303808i32)) {
                        _gotoNext = 3303814i32;
                    } else if (__value__ == (3303814i32)) {
                        {
                            final __value__ = _t_3301832[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3303832i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3303905i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3303981i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3304059i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3304154i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3304450i32;
                            } else {
                                _gotoNext = 3304532i32;
                            };
                        };
                    } else if (__value__ == (3303832i32)) {
                        @:check2 _p_3301720._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301832 = (_t_3301832.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3303905i32)) {
                        @:check2 _p_3301720._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301832 = (_t_3301832.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3303981i32)) {
                        @:check2 _p_3301720._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301832 = (_t_3301832.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3304059i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3301832.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3304532i32;
                    } else if (__value__ == (3304154i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3301832.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3304219 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3301832 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3304277i32;
                    } else if (__value__ == (3304277i32)) {
                        if (_lit_3304219 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3304291i32;
                        } else {
                            _gotoNext = 3304430i32;
                        };
                    } else if (__value__ == (3304291i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3304219?.__copy__());
                            _c_3304299 = @:tmpset0 __tmp__._0;
                            _rest_3304302 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3304308 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3304308 != null) {
                            _gotoNext = 3304349i32;
                        } else {
                            _gotoNext = 3304388i32;
                        };
                    } else if (__value__ == (3304349i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3304308 };
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
                        _gotoNext = 3304388i32;
                    } else if (__value__ == (3304388i32)) {
                        @:check2 _p_3301720._literal(_c_3304299);
                        _lit_3304219 = _rest_3304302?.__copy__();
                        _gotoNext = 3304277i32;
                    } else if (__value__ == (3304430i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3304450i32)) {
                        @:check2 _p_3301720._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301832 = (_t_3301832.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3304532i32)) {
                        _re_3304532 = @:check2 _p_3301720._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3304532 ?? throw "null pointer dereference").flags = _p_3301720._flags;
                        if ((((_t_3301832.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3301832[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3301832[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3304688i32;
                        } else {
                            _gotoNext = 3304930i32;
                        };
                    } else if (__value__ == (3304688i32)) {
                        {
                            var __tmp__ = @:check2 _p_3301720._parseUnicodeClass(_t_3301832?.__copy__(), ((@:checkr _re_3304532 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3304694 = @:tmpset0 __tmp__._0;
                            _rest_3304697 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3304703 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3304703 != null) {
                            _gotoNext = 3304765i32;
                        } else {
                            _gotoNext = 3304798i32;
                        };
                    } else if (__value__ == (3304765i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3304703 };
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
                        _gotoNext = 3304798i32;
                    } else if (__value__ == (3304798i32)) {
                        if (_r_3304694 != null) {
                            _gotoNext = 3304810i32;
                        } else {
                            _gotoNext = 3304930i32;
                        };
                    } else if (__value__ == (3304810i32)) {
                        (@:checkr _re_3304532 ?? throw "null pointer dereference").rune = _r_3304694;
                        _t_3301832 = _rest_3304697?.__copy__();
                        @:check2 _p_3301720._push(_re_3304532);
                        bigSwitchBreak = true;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3304930i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3301720._parsePerlClassEscape(_t_3301832?.__copy__(), ((@:checkr _re_3304532 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3304933 = @:tmpset0 __tmp__._0;
                                _rest_3304936 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3304933 != null) {
                                _gotoNext = 3304994i32;
                            } else {
                                _gotoNext = 3305068i32;
                            };
                        };
                    } else if (__value__ == (3304994i32)) {
                        (@:checkr _re_3304532 ?? throw "null pointer dereference").rune = _r_3304933;
                        _t_3301832 = _rest_3304936?.__copy__();
                        @:check2 _p_3301720._push(_re_3304532);
                        bigSwitchBreak = true;
                        _gotoNext = 3301883i32;
                    } else if (__value__ == (3305068i32)) {
                        @:check2 _p_3301720._reuse(_re_3304532);
                        {
                            {
                                var __tmp__ = @:check2 _p_3301720._parseEscape(_t_3301832?.__copy__());
                                _c_3301740 = @:tmpset0 __tmp__._0;
                                _t_3301832 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3305168i32;
                            } else {
                                _gotoNext = 3305198i32;
                            };
                        };
                    } else if (__value__ == (3305168i32)) {
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
                        _gotoNext = 3305198i32;
                    } else if (__value__ == (3305198i32)) {
                        @:check2 _p_3301720._literal(_c_3301740);
                        _gotoNext = 3305217i32;
                    } else if (__value__ == (3305217i32)) {
                        _lastRepeat_3301774 = _repeat_3301856?.__copy__();
                        _gotoNext = 3301840i32;
                    } else if (__value__ == (3305242i32)) {
                        @:check2 _p_3301720._concat();
                        if (@:check2 _p_3301720._swapVerticalBar()) {
                            _gotoNext = 3305277i32;
                        } else {
                            _gotoNext = 3305342i32;
                        };
                    } else if (__value__ == (3305277i32)) {
                        _p_3301720._stack = (_p_3301720._stack.__slice__(0, ((_p_3301720._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3305342i32;
                    } else if (__value__ == (3305342i32)) {
                        @:check2 _p_3301720._alternate();
                        _n_3305358 = (_p_3301720._stack.length);
                        if (_n_3305358 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3305387i32;
                        } else {
                            _gotoNext = 3305434i32;
                        };
                    } else if (__value__ == (3305387i32)) {
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
                        _gotoNext = 3305434i32;
                    } else if (__value__ == (3305434i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3301720._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
