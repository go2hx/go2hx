package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _p_3468131:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3467989:stdgo.Error = (null : stdgo.Error);
            var _err_3471114:stdgo.Error = (null : stdgo.Error);
            var _op_3468169:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _before_3469642:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3470710:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3469662:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3469657:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lit_3470630:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3468243:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3471344:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3469334:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3471108:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3470719:stdgo.Error = (null : stdgo.Error);
            var _rest_3470713:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3468185:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3471769:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3471105:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3469674:Bool = false;
            var _after_3469459:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3468151:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3471347:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3470943:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3469667:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3468267:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3467942i32;
                        } else {
                            _gotoNext = 3468123i32;
                        };
                    } else if (__value__ == (3467942i32)) {
                        {
                            _err_3467989 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3467989 != null) {
                                _gotoNext = 3468021i32;
                            } else {
                                _gotoNext = 3468048i32;
                            };
                        };
                    } else if (__value__ == (3468021i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3467989 };
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
                        _gotoNext = 3468048i32;
                    } else if (__value__ == (3468048i32)) {
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
                        _gotoNext = 3468123i32;
                    } else if (__value__ == (3468123i32)) {
                        _p_3468131._flags = _flags;
                        _p_3468131._wholeRegexp = _s?.__copy__();
                        _t_3468243 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3468251i32;
                    } else if (__value__ == (3468251i32)) {
                        if (_t_3468243 != (stdgo.Go.str())) {
                            _gotoNext = 3468263i32;
                        } else {
                            _gotoNext = 3471653i32;
                        };
                    } else if (__value__ == (3468263i32)) {
                        _repeat_3468267 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3468281i32;
                    } else if (__value__ == (3468281i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3468294i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3468243[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3468407i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3468677i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3468774i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3468870i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3468985i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3469115i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3469229i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3469311i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3469612i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3470168i32;
                                } else {
                                    _gotoNext = 3468310i32;
                                };
                            };
                        } else {
                            _gotoNext = 3471628i32;
                        };
                    } else if (__value__ == (3468310i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3468243?.__copy__());
                                _c_3468151 = @:tmpset0 __tmp__._0;
                                _t_3468243 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3468361i32;
                            } else {
                                _gotoNext = 3468391i32;
                            };
                        };
                    } else if (__value__ == (3468361i32)) {
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
                        _gotoNext = 3468391i32;
                    } else if (__value__ == (3468391i32)) {
                        @:check2 _p_3468131._literal(_c_3468151);
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3468407i32)) {
                        if ((((_p_3468131._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3468243.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3468243[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3468472i32;
                        } else {
                            _gotoNext = 3468615i32;
                        };
                    } else if (__value__ == (3468472i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3468131._parsePerlFlags(_t_3468243?.__copy__());
                                _t_3468243 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3468568i32;
                            } else {
                                _gotoNext = 3468601i32;
                            };
                        };
                    } else if (__value__ == (3468568i32)) {
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
                        _gotoNext = 3468601i32;
                    } else if (__value__ == (3468601i32)) {
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3468615i32)) {
                        _p_3468131._numCap++;
                        @:check2 _p_3468131._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3468131._numCap;
                        _t_3468243 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3468677i32)) {
                        {
                            _err = @:check2 _p_3468131._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3468732i32;
                            } else {
                                _gotoNext = 3468762i32;
                            };
                        };
                    } else if (__value__ == (3468732i32)) {
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
                        _gotoNext = 3468762i32;
                    } else if (__value__ == (3468762i32)) {
                        _t_3468243 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3468774i32)) {
                        {
                            _err = @:check2 _p_3468131._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3468828i32;
                            } else {
                                _gotoNext = 3468858i32;
                            };
                        };
                    } else if (__value__ == (3468828i32)) {
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
                        _gotoNext = 3468858i32;
                    } else if (__value__ == (3468858i32)) {
                        _t_3468243 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3468870i32)) {
                        if ((_p_3468131._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3468907i32;
                        } else {
                            _gotoNext = 3468941i32;
                        };
                    } else if (__value__ == (3468907i32)) {
                        @:check2 _p_3468131._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3468973i32;
                    } else if (__value__ == (3468941i32)) {
                        _gotoNext = 3468941i32;
                        @:check2 _p_3468131._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3468973i32;
                    } else if (__value__ == (3468973i32)) {
                        _t_3468243 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3468985i32)) {
                        if ((_p_3468131._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3469022i32;
                        } else {
                            _gotoNext = 3469073i32;
                        };
                    } else if (__value__ == (3469022i32)) {
                        {
                            final __t__ = @:check2 _p_3468131._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3469103i32;
                    } else if (__value__ == (3469073i32)) {
                        _gotoNext = 3469073i32;
                        @:check2 _p_3468131._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3469103i32;
                    } else if (__value__ == (3469103i32)) {
                        _t_3468243 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3469115i32)) {
                        if ((_p_3468131._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3469150i32;
                        } else {
                            _gotoNext = 3469182i32;
                        };
                    } else if (__value__ == (3469150i32)) {
                        @:check2 _p_3468131._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3469217i32;
                    } else if (__value__ == (3469182i32)) {
                        _gotoNext = 3469182i32;
                        @:check2 _p_3468131._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3469217i32;
                    } else if (__value__ == (3469217i32)) {
                        _t_3468243 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3469229i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3468131._parseClass(_t_3468243?.__copy__());
                                _t_3468243 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3469282i32;
                            } else {
                                _gotoNext = 3471628i32;
                            };
                        };
                    } else if (__value__ == (3469282i32)) {
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
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3469311i32)) {
                        _before_3469334 = _t_3468243?.__copy__();
                        _gotoNext = 3469349i32;
                    } else if (__value__ == (3469349i32)) {
                        {
                            final __value__ = _t_3468243[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3469366i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3469395i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3469424i32;
                            } else {
                                _gotoNext = 3469459i32;
                            };
                        };
                    } else if (__value__ == (3469366i32)) {
                        _op_3468169 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3469459i32;
                    } else if (__value__ == (3469395i32)) {
                        _op_3468169 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3469459i32;
                    } else if (__value__ == (3469424i32)) {
                        _op_3468169 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3469459i32;
                    } else if (__value__ == (3469459i32)) {
                        _after_3469459 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3468131._repeat(_op_3468169, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3469334?.__copy__(), _after_3469459?.__copy__(), _lastRepeat_3468185?.__copy__());
                                _after_3469459 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3469551i32;
                            } else {
                                _gotoNext = 3469581i32;
                            };
                        };
                    } else if (__value__ == (3469551i32)) {
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
                        _gotoNext = 3469581i32;
                    } else if (__value__ == (3469581i32)) {
                        _repeat_3468267 = _before_3469334?.__copy__();
                        _t_3468243 = _after_3469459?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3469612i32)) {
                        _op_3468169 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3469642 = _t_3468243?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3468131._parseRepeat(_t_3468243?.__copy__());
                            _min_3469657 = @:tmpset0 __tmp__._0;
                            _max_3469662 = @:tmpset0 __tmp__._1;
                            _after_3469667 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3469674 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3469674) {
                            _gotoNext = 3469707i32;
                        } else {
                            _gotoNext = 3469815i32;
                        };
                    } else if (__value__ == (3469707i32)) {
                        @:check2 _p_3468131._literal((123 : stdgo.GoInt32));
                        _t_3468243 = (_t_3468243.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3469815i32)) {
                        if (((((_min_3469657 < (0 : stdgo.GoInt) : Bool) || (_min_3469657 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3469662 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3469662 >= (0 : stdgo.GoInt) : Bool) && (_min_3469657 > _max_3469662 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3469879i32;
                        } else {
                            _gotoNext = 3470029i32;
                        };
                    } else if (__value__ == (3469879i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3469642.__slice__(0, ((_before_3469642.length) - (_after_3469667.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3470029i32;
                    } else if (__value__ == (3470029i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3468131._repeat(_op_3468169, _min_3469657, _max_3469662, _before_3469642?.__copy__(), _after_3469667?.__copy__(), _lastRepeat_3468185?.__copy__());
                                _after_3469667 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3470107i32;
                            } else {
                                _gotoNext = 3470137i32;
                            };
                        };
                    } else if (__value__ == (3470107i32)) {
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
                        _gotoNext = 3470137i32;
                    } else if (__value__ == (3470137i32)) {
                        _repeat_3468267 = _before_3469642?.__copy__();
                        _t_3468243 = _after_3469667?.__copy__();
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3470168i32)) {
                        if ((((_p_3468131._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3468243.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3470219i32;
                        } else {
                            _gotoNext = 3470943i32;
                        };
                    } else if (__value__ == (3470219i32)) {
                        _gotoNext = 3470225i32;
                    } else if (__value__ == (3470225i32)) {
                        {
                            final __value__ = _t_3468243[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3470243i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3470316i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3470392i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3470470i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3470565i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3470861i32;
                            } else {
                                _gotoNext = 3470943i32;
                            };
                        };
                    } else if (__value__ == (3470243i32)) {
                        @:check2 _p_3468131._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3468243 = (_t_3468243.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3470316i32)) {
                        @:check2 _p_3468131._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3468243 = (_t_3468243.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3470392i32)) {
                        @:check2 _p_3468131._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3468243 = (_t_3468243.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3470470i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3468243.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3470943i32;
                    } else if (__value__ == (3470565i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3468243.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3470630 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3468243 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3470688i32;
                    } else if (__value__ == (3470688i32)) {
                        if (_lit_3470630 != (stdgo.Go.str())) {
                            _gotoNext = 3470702i32;
                        } else {
                            _gotoNext = 3470841i32;
                        };
                    } else if (__value__ == (3470702i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3470630?.__copy__());
                            _c_3470710 = @:tmpset0 __tmp__._0;
                            _rest_3470713 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3470719 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3470719 != null) {
                            _gotoNext = 3470760i32;
                        } else {
                            _gotoNext = 3470799i32;
                        };
                    } else if (__value__ == (3470760i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3470719 };
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
                        _gotoNext = 3470799i32;
                    } else if (__value__ == (3470799i32)) {
                        @:check2 _p_3468131._literal(_c_3470710);
                        _lit_3470630 = _rest_3470713?.__copy__();
                        _gotoNext = 3470688i32;
                    } else if (__value__ == (3470841i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3470861i32)) {
                        @:check2 _p_3468131._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3468243 = (_t_3468243.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3470943i32)) {
                        _re_3470943 = @:check2 _p_3468131._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3470943 ?? throw "null pointer dereference").flags = _p_3468131._flags;
                        if ((((_t_3468243.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3468243[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3468243[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3471099i32;
                        } else {
                            _gotoNext = 3471341i32;
                        };
                    } else if (__value__ == (3471099i32)) {
                        {
                            var __tmp__ = @:check2 _p_3468131._parseUnicodeClass(_t_3468243?.__copy__(), ((@:checkr _re_3470943 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3471105 = @:tmpset0 __tmp__._0;
                            _rest_3471108 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3471114 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3471114 != null) {
                            _gotoNext = 3471176i32;
                        } else {
                            _gotoNext = 3471209i32;
                        };
                    } else if (__value__ == (3471176i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3471114 };
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
                        _gotoNext = 3471209i32;
                    } else if (__value__ == (3471209i32)) {
                        if (_r_3471105 != null) {
                            _gotoNext = 3471221i32;
                        } else {
                            _gotoNext = 3471341i32;
                        };
                    } else if (__value__ == (3471221i32)) {
                        (@:checkr _re_3470943 ?? throw "null pointer dereference").rune = _r_3471105;
                        _t_3468243 = _rest_3471108?.__copy__();
                        @:check2 _p_3468131._push(_re_3470943);
                        bigSwitchBreak = true;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3471341i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3468131._parsePerlClassEscape(_t_3468243?.__copy__(), ((@:checkr _re_3470943 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3471344 = @:tmpset0 __tmp__._0;
                                _rest_3471347 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3471344 != null) {
                                _gotoNext = 3471405i32;
                            } else {
                                _gotoNext = 3471479i32;
                            };
                        };
                    } else if (__value__ == (3471405i32)) {
                        (@:checkr _re_3470943 ?? throw "null pointer dereference").rune = _r_3471344;
                        _t_3468243 = _rest_3471347?.__copy__();
                        @:check2 _p_3468131._push(_re_3470943);
                        bigSwitchBreak = true;
                        _gotoNext = 3468294i32;
                    } else if (__value__ == (3471479i32)) {
                        @:check2 _p_3468131._reuse(_re_3470943);
                        {
                            {
                                var __tmp__ = @:check2 _p_3468131._parseEscape(_t_3468243?.__copy__());
                                _c_3468151 = @:tmpset0 __tmp__._0;
                                _t_3468243 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3471579i32;
                            } else {
                                _gotoNext = 3471609i32;
                            };
                        };
                    } else if (__value__ == (3471579i32)) {
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
                        _gotoNext = 3471609i32;
                    } else if (__value__ == (3471609i32)) {
                        @:check2 _p_3468131._literal(_c_3468151);
                        _gotoNext = 3471628i32;
                    } else if (__value__ == (3471628i32)) {
                        _lastRepeat_3468185 = _repeat_3468267?.__copy__();
                        _gotoNext = 3468251i32;
                    } else if (__value__ == (3471653i32)) {
                        @:check2 _p_3468131._concat();
                        if (@:check2 _p_3468131._swapVerticalBar()) {
                            _gotoNext = 3471688i32;
                        } else {
                            _gotoNext = 3471753i32;
                        };
                    } else if (__value__ == (3471688i32)) {
                        _p_3468131._stack = (_p_3468131._stack.__slice__(0, ((_p_3468131._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3471753i32;
                    } else if (__value__ == (3471753i32)) {
                        @:check2 _p_3468131._alternate();
                        _n_3471769 = (_p_3468131._stack.length);
                        if (_n_3471769 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3471798i32;
                        } else {
                            _gotoNext = 3471845i32;
                        };
                    } else if (__value__ == (3471798i32)) {
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
                        _gotoNext = 3471845i32;
                    } else if (__value__ == (3471845i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3468131._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
