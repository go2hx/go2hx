package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _r_3250894:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3250732:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3250419:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3247974:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3250499:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3250897:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3249446:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3248032:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3247958:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3247940:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3247778:stdgo.Error = (null : stdgo.Error);
            var _n_3251558:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3251133:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3249456:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3249451:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3248056:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3247920:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3250903:stdgo.Error = (null : stdgo.Error);
            var _err_3250508:stdgo.Error = (null : stdgo.Error);
            var _rest_3250502:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3249463:Bool = false;
            var _before_3249431:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3251136:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3249248:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3249123:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3247731i32;
                        } else {
                            _gotoNext = 3247912i32;
                        };
                    } else if (__value__ == (3247731i32)) {
                        {
                            _err_3247778 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3247778 != null) {
                                _gotoNext = 3247810i32;
                            } else {
                                _gotoNext = 3247837i32;
                            };
                        };
                    } else if (__value__ == (3247810i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3247778 };
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
                        _gotoNext = 3247837i32;
                    } else if (__value__ == (3247837i32)) {
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
                        _gotoNext = 3247912i32;
                    } else if (__value__ == (3247912i32)) {
                        _p_3247920._flags = _flags;
                        _p_3247920._wholeRegexp = _s?.__copy__();
                        _t_3248032 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3248040i32;
                    } else if (__value__ == (3248040i32)) {
                        if (_t_3248032 != (stdgo.Go.str())) {
                            _gotoNext = 3248052i32;
                        } else {
                            _gotoNext = 3251442i32;
                        };
                    } else if (__value__ == (3248052i32)) {
                        _repeat_3248056 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3248070i32;
                    } else if (__value__ == (3248070i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3248083i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3248032[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3248196i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3248466i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3248563i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3248659i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3248774i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3248904i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3249018i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3249100i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3249401i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3249957i32;
                                } else {
                                    _gotoNext = 3248099i32;
                                };
                            };
                        } else {
                            _gotoNext = 3251417i32;
                        };
                    } else if (__value__ == (3248099i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3248032?.__copy__());
                                _c_3247940 = __tmp__._0;
                                _t_3248032 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3248150i32;
                            } else {
                                _gotoNext = 3248180i32;
                            };
                        };
                    } else if (__value__ == (3248150i32)) {
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
                        _gotoNext = 3248180i32;
                    } else if (__value__ == (3248180i32)) {
                        @:check2 _p_3247920._literal(_c_3247940);
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3248196i32)) {
                        if ((((_p_3247920._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3248032.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3248032[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3248261i32;
                        } else {
                            _gotoNext = 3248404i32;
                        };
                    } else if (__value__ == (3248261i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3247920._parsePerlFlags(_t_3248032?.__copy__());
                                _t_3248032 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3248357i32;
                            } else {
                                _gotoNext = 3248390i32;
                            };
                        };
                    } else if (__value__ == (3248357i32)) {
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
                        _gotoNext = 3248390i32;
                    } else if (__value__ == (3248390i32)) {
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3248404i32)) {
                        _p_3247920._numCap++;
                        @:check2 _p_3247920._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3247920._numCap;
                        _t_3248032 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3248466i32)) {
                        {
                            _err = @:check2 _p_3247920._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3248521i32;
                            } else {
                                _gotoNext = 3248551i32;
                            };
                        };
                    } else if (__value__ == (3248521i32)) {
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
                        _gotoNext = 3248551i32;
                    } else if (__value__ == (3248551i32)) {
                        _t_3248032 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3248563i32)) {
                        {
                            _err = @:check2 _p_3247920._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3248617i32;
                            } else {
                                _gotoNext = 3248647i32;
                            };
                        };
                    } else if (__value__ == (3248617i32)) {
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
                        _gotoNext = 3248647i32;
                    } else if (__value__ == (3248647i32)) {
                        _t_3248032 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3248659i32)) {
                        if ((_p_3247920._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3248696i32;
                        } else {
                            _gotoNext = 3248730i32;
                        };
                    } else if (__value__ == (3248696i32)) {
                        @:check2 _p_3247920._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3248762i32;
                    } else if (__value__ == (3248730i32)) {
                        _gotoNext = 3248730i32;
                        @:check2 _p_3247920._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3248762i32;
                    } else if (__value__ == (3248762i32)) {
                        _t_3248032 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3248774i32)) {
                        if ((_p_3247920._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3248811i32;
                        } else {
                            _gotoNext = 3248862i32;
                        };
                    } else if (__value__ == (3248811i32)) {
                        {
                            final __t__ = @:check2 _p_3247920._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3248892i32;
                    } else if (__value__ == (3248862i32)) {
                        _gotoNext = 3248862i32;
                        @:check2 _p_3247920._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3248892i32;
                    } else if (__value__ == (3248892i32)) {
                        _t_3248032 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3248904i32)) {
                        if ((_p_3247920._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3248939i32;
                        } else {
                            _gotoNext = 3248971i32;
                        };
                    } else if (__value__ == (3248939i32)) {
                        @:check2 _p_3247920._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3249006i32;
                    } else if (__value__ == (3248971i32)) {
                        _gotoNext = 3248971i32;
                        @:check2 _p_3247920._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3249006i32;
                    } else if (__value__ == (3249006i32)) {
                        _t_3248032 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3249018i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3247920._parseClass(_t_3248032?.__copy__());
                                _t_3248032 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3249071i32;
                            } else {
                                _gotoNext = 3251417i32;
                            };
                        };
                    } else if (__value__ == (3249071i32)) {
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
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3249100i32)) {
                        _before_3249123 = _t_3248032?.__copy__();
                        _gotoNext = 3249138i32;
                    } else if (__value__ == (3249138i32)) {
                        {
                            final __value__ = _t_3248032[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3249155i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3249184i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3249213i32;
                            } else {
                                _gotoNext = 3249248i32;
                            };
                        };
                    } else if (__value__ == (3249155i32)) {
                        _op_3247958 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3249248i32;
                    } else if (__value__ == (3249184i32)) {
                        _op_3247958 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3249248i32;
                    } else if (__value__ == (3249213i32)) {
                        _op_3247958 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3249248i32;
                    } else if (__value__ == (3249248i32)) {
                        _after_3249248 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3247920._repeat(_op_3247958, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3249123?.__copy__(), _after_3249248?.__copy__(), _lastRepeat_3247974?.__copy__());
                                _after_3249248 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3249340i32;
                            } else {
                                _gotoNext = 3249370i32;
                            };
                        };
                    } else if (__value__ == (3249340i32)) {
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
                        _gotoNext = 3249370i32;
                    } else if (__value__ == (3249370i32)) {
                        _repeat_3248056 = _before_3249123?.__copy__();
                        _t_3248032 = _after_3249248?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3249401i32)) {
                        _op_3247958 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3249431 = _t_3248032?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3247920._parseRepeat(_t_3248032?.__copy__());
                            _min_3249446 = __tmp__._0;
                            _max_3249451 = __tmp__._1;
                            _after_3249456 = __tmp__._2?.__copy__();
                            _ok_3249463 = __tmp__._3;
                        };
                        if (!_ok_3249463) {
                            _gotoNext = 3249496i32;
                        } else {
                            _gotoNext = 3249604i32;
                        };
                    } else if (__value__ == (3249496i32)) {
                        @:check2 _p_3247920._literal((123 : stdgo.GoInt32));
                        _t_3248032 = (_t_3248032.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3249604i32)) {
                        if (((((_min_3249446 < (0 : stdgo.GoInt) : Bool) || (_min_3249446 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3249451 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3249451 >= (0 : stdgo.GoInt) : Bool) && (_min_3249446 > _max_3249451 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3249668i32;
                        } else {
                            _gotoNext = 3249818i32;
                        };
                    } else if (__value__ == (3249668i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3249431.__slice__(0, ((_before_3249431.length) - (_after_3249456.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3249818i32;
                    } else if (__value__ == (3249818i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3247920._repeat(_op_3247958, _min_3249446, _max_3249451, _before_3249431?.__copy__(), _after_3249456?.__copy__(), _lastRepeat_3247974?.__copy__());
                                _after_3249456 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3249896i32;
                            } else {
                                _gotoNext = 3249926i32;
                            };
                        };
                    } else if (__value__ == (3249896i32)) {
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
                        _gotoNext = 3249926i32;
                    } else if (__value__ == (3249926i32)) {
                        _repeat_3248056 = _before_3249431?.__copy__();
                        _t_3248032 = _after_3249456?.__copy__();
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3249957i32)) {
                        if ((((_p_3247920._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3248032.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3250008i32;
                        } else {
                            _gotoNext = 3250732i32;
                        };
                    } else if (__value__ == (3250008i32)) {
                        _gotoNext = 3250014i32;
                    } else if (__value__ == (3250014i32)) {
                        {
                            final __value__ = _t_3248032[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3250032i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3250105i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3250181i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3250259i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3250354i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3250650i32;
                            } else {
                                _gotoNext = 3250732i32;
                            };
                        };
                    } else if (__value__ == (3250032i32)) {
                        @:check2 _p_3247920._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3248032 = (_t_3248032.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3250105i32)) {
                        @:check2 _p_3247920._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3248032 = (_t_3248032.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3250181i32)) {
                        @:check2 _p_3247920._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3248032 = (_t_3248032.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3250259i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3248032.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3250732i32;
                    } else if (__value__ == (3250354i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3248032.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3250419 = __tmp__._0?.__copy__();
                            _t_3248032 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3250477i32;
                    } else if (__value__ == (3250477i32)) {
                        if (_lit_3250419 != (stdgo.Go.str())) {
                            _gotoNext = 3250491i32;
                        } else {
                            _gotoNext = 3250630i32;
                        };
                    } else if (__value__ == (3250491i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3250419?.__copy__());
                            _c_3250499 = __tmp__._0;
                            _rest_3250502 = __tmp__._1?.__copy__();
                            _err_3250508 = __tmp__._2;
                        };
                        if (_err_3250508 != null) {
                            _gotoNext = 3250549i32;
                        } else {
                            _gotoNext = 3250588i32;
                        };
                    } else if (__value__ == (3250549i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3250508 };
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
                        _gotoNext = 3250588i32;
                    } else if (__value__ == (3250588i32)) {
                        @:check2 _p_3247920._literal(_c_3250499);
                        _lit_3250419 = _rest_3250502?.__copy__();
                        _gotoNext = 3250477i32;
                    } else if (__value__ == (3250630i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3250650i32)) {
                        @:check2 _p_3247920._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3248032 = (_t_3248032.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3250732i32)) {
                        _re_3250732 = @:check2 _p_3247920._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3250732 ?? throw "null pointer dereference").flags = _p_3247920._flags;
                        if ((((_t_3248032.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3248032[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3248032[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3250888i32;
                        } else {
                            _gotoNext = 3251130i32;
                        };
                    } else if (__value__ == (3250888i32)) {
                        {
                            var __tmp__ = @:check2 _p_3247920._parseUnicodeClass(_t_3248032?.__copy__(), ((@:checkr _re_3250732 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3250894 = __tmp__._0;
                            _rest_3250897 = __tmp__._1?.__copy__();
                            _err_3250903 = __tmp__._2;
                        };
                        if (_err_3250903 != null) {
                            _gotoNext = 3250965i32;
                        } else {
                            _gotoNext = 3250998i32;
                        };
                    } else if (__value__ == (3250965i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3250903 };
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
                        _gotoNext = 3250998i32;
                    } else if (__value__ == (3250998i32)) {
                        if (_r_3250894 != null) {
                            _gotoNext = 3251010i32;
                        } else {
                            _gotoNext = 3251130i32;
                        };
                    } else if (__value__ == (3251010i32)) {
                        (@:checkr _re_3250732 ?? throw "null pointer dereference").rune = _r_3250894;
                        _t_3248032 = _rest_3250897?.__copy__();
                        @:check2 _p_3247920._push(_re_3250732);
                        bigSwitchBreak = true;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3251130i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3247920._parsePerlClassEscape(_t_3248032?.__copy__(), ((@:checkr _re_3250732 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3251133 = __tmp__._0;
                                _rest_3251136 = __tmp__._1?.__copy__();
                            };
                            if (_r_3251133 != null) {
                                _gotoNext = 3251194i32;
                            } else {
                                _gotoNext = 3251268i32;
                            };
                        };
                    } else if (__value__ == (3251194i32)) {
                        (@:checkr _re_3250732 ?? throw "null pointer dereference").rune = _r_3251133;
                        _t_3248032 = _rest_3251136?.__copy__();
                        @:check2 _p_3247920._push(_re_3250732);
                        bigSwitchBreak = true;
                        _gotoNext = 3248083i32;
                    } else if (__value__ == (3251268i32)) {
                        @:check2 _p_3247920._reuse(_re_3250732);
                        {
                            {
                                var __tmp__ = @:check2 _p_3247920._parseEscape(_t_3248032?.__copy__());
                                _c_3247940 = __tmp__._0;
                                _t_3248032 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3251368i32;
                            } else {
                                _gotoNext = 3251398i32;
                            };
                        };
                    } else if (__value__ == (3251368i32)) {
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
                        _gotoNext = 3251398i32;
                    } else if (__value__ == (3251398i32)) {
                        @:check2 _p_3247920._literal(_c_3247940);
                        _gotoNext = 3251417i32;
                    } else if (__value__ == (3251417i32)) {
                        _lastRepeat_3247974 = _repeat_3248056?.__copy__();
                        _gotoNext = 3248040i32;
                    } else if (__value__ == (3251442i32)) {
                        @:check2 _p_3247920._concat();
                        if (@:check2 _p_3247920._swapVerticalBar()) {
                            _gotoNext = 3251477i32;
                        } else {
                            _gotoNext = 3251542i32;
                        };
                    } else if (__value__ == (3251477i32)) {
                        _p_3247920._stack = (_p_3247920._stack.__slice__(0, ((_p_3247920._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3251542i32;
                    } else if (__value__ == (3251542i32)) {
                        @:check2 _p_3247920._alternate();
                        _n_3251558 = (_p_3247920._stack.length);
                        if (_n_3251558 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3251587i32;
                        } else {
                            _gotoNext = 3251634i32;
                        };
                    } else if (__value__ == (3251587i32)) {
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
                        _gotoNext = 3251634i32;
                    } else if (__value__ == (3251634i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3247920._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
