package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3548779:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3548549:stdgo.Error = (null : stdgo.Error);
            var _after_3546894:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3548782:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3548148:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3547097:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3545586:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _c_3548145:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3547092:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3546769:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3545604:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3545424:stdgo.Error = (null : stdgo.Error);
            var _rest_3548543:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3548540:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3547102:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3548378:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _before_3547077:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _err_3548154:stdgo.Error = (null : stdgo.Error);
            var _p_3545566:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _n_3549204:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lit_3548065:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3547109:Bool = false;
            var _repeat_3545702:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3545678:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3545620:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3545377i32;
                        } else {
                            _gotoNext = 3545558i32;
                        };
                    } else if (__value__ == (3545377i32)) {
                        {
                            _err_3545424 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3545424 != null) {
                                _gotoNext = 3545456i32;
                            } else {
                                _gotoNext = 3545483i32;
                            };
                        };
                    } else if (__value__ == (3545456i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3545424 };
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
                        _gotoNext = 3545483i32;
                    } else if (__value__ == (3545483i32)) {
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
                        _gotoNext = 3545558i32;
                    } else if (__value__ == (3545558i32)) {
                        _p_3545566._flags = _flags;
                        _p_3545566._wholeRegexp = _s?.__copy__();
                        _t_3545678 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3545686i32;
                    } else if (__value__ == (3545686i32)) {
                        if (_t_3545678 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3545698i32;
                        } else {
                            _gotoNext = 3549088i32;
                        };
                    } else if (__value__ == (3545698i32)) {
                        _repeat_3545702 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545716i32;
                    } else if (__value__ == (3545716i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3545729i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3545678[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545842i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546112i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546209i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546305i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546420i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546550i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546664i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546746i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547047i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547603i32;
                                } else {
                                    _gotoNext = 3545745i32;
                                };
                            };
                        } else {
                            _gotoNext = 3549063i32;
                        };
                    } else if (__value__ == (3545745i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3545678?.__copy__());
                                _c_3545586 = @:tmpset0 __tmp__._0;
                                _t_3545678 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3545796i32;
                            } else {
                                _gotoNext = 3545826i32;
                            };
                        };
                    } else if (__value__ == (3545796i32)) {
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
                        _gotoNext = 3545826i32;
                    } else if (__value__ == (3545826i32)) {
                        @:check2 _p_3545566._literal(_c_3545586);
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3545842i32)) {
                        if ((((_p_3545566._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3545678.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3545678[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3545907i32;
                        } else {
                            _gotoNext = 3546050i32;
                        };
                    } else if (__value__ == (3545907i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3545566._parsePerlFlags(_t_3545678?.__copy__());
                                _t_3545678 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3546003i32;
                            } else {
                                _gotoNext = 3546036i32;
                            };
                        };
                    } else if (__value__ == (3546003i32)) {
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
                        _gotoNext = 3546036i32;
                    } else if (__value__ == (3546036i32)) {
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546050i32)) {
                        _p_3545566._numCap++;
                        @:check2 _p_3545566._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3545566._numCap;
                        _t_3545678 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546112i32)) {
                        {
                            _err = @:check2 _p_3545566._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3546167i32;
                            } else {
                                _gotoNext = 3546197i32;
                            };
                        };
                    } else if (__value__ == (3546167i32)) {
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
                        _gotoNext = 3546197i32;
                    } else if (__value__ == (3546197i32)) {
                        _t_3545678 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546209i32)) {
                        {
                            _err = @:check2 _p_3545566._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3546263i32;
                            } else {
                                _gotoNext = 3546293i32;
                            };
                        };
                    } else if (__value__ == (3546263i32)) {
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
                        _gotoNext = 3546293i32;
                    } else if (__value__ == (3546293i32)) {
                        _t_3545678 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546305i32)) {
                        if ((_p_3545566._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3546342i32;
                        } else {
                            _gotoNext = 3546376i32;
                        };
                    } else if (__value__ == (3546342i32)) {
                        @:check2 _p_3545566._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3546408i32;
                    } else if (__value__ == (3546376i32)) {
                        _gotoNext = 3546376i32;
                        @:check2 _p_3545566._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3546408i32;
                    } else if (__value__ == (3546408i32)) {
                        _t_3545678 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546420i32)) {
                        if ((_p_3545566._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3546457i32;
                        } else {
                            _gotoNext = 3546508i32;
                        };
                    } else if (__value__ == (3546457i32)) {
                        {
                            final __t__ = @:check2 _p_3545566._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3546538i32;
                    } else if (__value__ == (3546508i32)) {
                        _gotoNext = 3546508i32;
                        @:check2 _p_3545566._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3546538i32;
                    } else if (__value__ == (3546538i32)) {
                        _t_3545678 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546550i32)) {
                        if ((_p_3545566._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3546585i32;
                        } else {
                            _gotoNext = 3546617i32;
                        };
                    } else if (__value__ == (3546585i32)) {
                        @:check2 _p_3545566._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3546652i32;
                    } else if (__value__ == (3546617i32)) {
                        _gotoNext = 3546617i32;
                        @:check2 _p_3545566._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3546652i32;
                    } else if (__value__ == (3546652i32)) {
                        _t_3545678 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546664i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3545566._parseClass(_t_3545678?.__copy__());
                                _t_3545678 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3546717i32;
                            } else {
                                _gotoNext = 3549063i32;
                            };
                        };
                    } else if (__value__ == (3546717i32)) {
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
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3546746i32)) {
                        _before_3546769 = _t_3545678?.__copy__();
                        _gotoNext = 3546784i32;
                    } else if (__value__ == (3546784i32)) {
                        {
                            final __value__ = _t_3545678[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3546801i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3546830i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3546859i32;
                            } else {
                                _gotoNext = 3546894i32;
                            };
                        };
                    } else if (__value__ == (3546801i32)) {
                        _op_3545604 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3546894i32;
                    } else if (__value__ == (3546830i32)) {
                        _op_3545604 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3546894i32;
                    } else if (__value__ == (3546859i32)) {
                        _op_3545604 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3546894i32;
                    } else if (__value__ == (3546894i32)) {
                        _after_3546894 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3545566._repeat(_op_3545604, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3546769?.__copy__(), _after_3546894?.__copy__(), _lastRepeat_3545620?.__copy__());
                                _after_3546894 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3546986i32;
                            } else {
                                _gotoNext = 3547016i32;
                            };
                        };
                    } else if (__value__ == (3546986i32)) {
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
                        _gotoNext = 3547016i32;
                    } else if (__value__ == (3547016i32)) {
                        _repeat_3545702 = _before_3546769?.__copy__();
                        _t_3545678 = _after_3546894?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3547047i32)) {
                        _op_3545604 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3547077 = _t_3545678?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3545566._parseRepeat(_t_3545678?.__copy__());
                            _min_3547092 = @:tmpset0 __tmp__._0;
                            _max_3547097 = @:tmpset0 __tmp__._1;
                            _after_3547102 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3547109 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3547109) {
                            _gotoNext = 3547142i32;
                        } else {
                            _gotoNext = 3547250i32;
                        };
                    } else if (__value__ == (3547142i32)) {
                        @:check2 _p_3545566._literal((123 : stdgo.GoInt32));
                        _t_3545678 = (_t_3545678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3547250i32)) {
                        if (((((_min_3547092 < (0 : stdgo.GoInt) : Bool) || (_min_3547092 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3547097 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3547097 >= (0 : stdgo.GoInt) : Bool) && (_min_3547092 > _max_3547097 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3547314i32;
                        } else {
                            _gotoNext = 3547464i32;
                        };
                    } else if (__value__ == (3547314i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3547077.__slice__(0, ((_before_3547077.length) - (_after_3547102.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3547464i32;
                    } else if (__value__ == (3547464i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3545566._repeat(_op_3545604, _min_3547092, _max_3547097, _before_3547077?.__copy__(), _after_3547102?.__copy__(), _lastRepeat_3545620?.__copy__());
                                _after_3547102 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3547542i32;
                            } else {
                                _gotoNext = 3547572i32;
                            };
                        };
                    } else if (__value__ == (3547542i32)) {
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
                        _gotoNext = 3547572i32;
                    } else if (__value__ == (3547572i32)) {
                        _repeat_3545702 = _before_3547077?.__copy__();
                        _t_3545678 = _after_3547102?.__copy__();
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3547603i32)) {
                        if ((((_p_3545566._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3545678.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3547654i32;
                        } else {
                            _gotoNext = 3548378i32;
                        };
                    } else if (__value__ == (3547654i32)) {
                        _gotoNext = 3547660i32;
                    } else if (__value__ == (3547660i32)) {
                        {
                            final __value__ = _t_3545678[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3547678i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3547751i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3547827i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3547905i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3548000i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3548296i32;
                            } else {
                                _gotoNext = 3548378i32;
                            };
                        };
                    } else if (__value__ == (3547678i32)) {
                        @:check2 _p_3545566._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3545678 = (_t_3545678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3547751i32)) {
                        @:check2 _p_3545566._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3545678 = (_t_3545678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3547827i32)) {
                        @:check2 _p_3545566._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3545678 = (_t_3545678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3547905i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3545678.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3548378i32;
                    } else if (__value__ == (3548000i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3545678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3548065 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3545678 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3548123i32;
                    } else if (__value__ == (3548123i32)) {
                        if (_lit_3548065 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3548137i32;
                        } else {
                            _gotoNext = 3548276i32;
                        };
                    } else if (__value__ == (3548137i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3548065?.__copy__());
                            _c_3548145 = @:tmpset0 __tmp__._0;
                            _rest_3548148 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3548154 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3548154 != null) {
                            _gotoNext = 3548195i32;
                        } else {
                            _gotoNext = 3548234i32;
                        };
                    } else if (__value__ == (3548195i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3548154 };
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
                        _gotoNext = 3548234i32;
                    } else if (__value__ == (3548234i32)) {
                        @:check2 _p_3545566._literal(_c_3548145);
                        _lit_3548065 = _rest_3548148?.__copy__();
                        _gotoNext = 3548123i32;
                    } else if (__value__ == (3548276i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3548296i32)) {
                        @:check2 _p_3545566._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3545678 = (_t_3545678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3548378i32)) {
                        _re_3548378 = @:check2 _p_3545566._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3548378 ?? throw "null pointer dereference").flags = _p_3545566._flags;
                        if ((((_t_3545678.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3545678[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3545678[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3548534i32;
                        } else {
                            _gotoNext = 3548776i32;
                        };
                    } else if (__value__ == (3548534i32)) {
                        {
                            var __tmp__ = @:check2 _p_3545566._parseUnicodeClass(_t_3545678?.__copy__(), ((@:checkr _re_3548378 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3548540 = @:tmpset0 __tmp__._0;
                            _rest_3548543 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3548549 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3548549 != null) {
                            _gotoNext = 3548611i32;
                        } else {
                            _gotoNext = 3548644i32;
                        };
                    } else if (__value__ == (3548611i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3548549 };
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
                        _gotoNext = 3548644i32;
                    } else if (__value__ == (3548644i32)) {
                        if (_r_3548540 != null) {
                            _gotoNext = 3548656i32;
                        } else {
                            _gotoNext = 3548776i32;
                        };
                    } else if (__value__ == (3548656i32)) {
                        (@:checkr _re_3548378 ?? throw "null pointer dereference").rune = _r_3548540;
                        _t_3545678 = _rest_3548543?.__copy__();
                        @:check2 _p_3545566._push(_re_3548378);
                        bigSwitchBreak = true;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3548776i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3545566._parsePerlClassEscape(_t_3545678?.__copy__(), ((@:checkr _re_3548378 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3548779 = @:tmpset0 __tmp__._0;
                                _rest_3548782 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3548779 != null) {
                                _gotoNext = 3548840i32;
                            } else {
                                _gotoNext = 3548914i32;
                            };
                        };
                    } else if (__value__ == (3548840i32)) {
                        (@:checkr _re_3548378 ?? throw "null pointer dereference").rune = _r_3548779;
                        _t_3545678 = _rest_3548782?.__copy__();
                        @:check2 _p_3545566._push(_re_3548378);
                        bigSwitchBreak = true;
                        _gotoNext = 3545729i32;
                    } else if (__value__ == (3548914i32)) {
                        @:check2 _p_3545566._reuse(_re_3548378);
                        {
                            {
                                var __tmp__ = @:check2 _p_3545566._parseEscape(_t_3545678?.__copy__());
                                _c_3545586 = @:tmpset0 __tmp__._0;
                                _t_3545678 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3549014i32;
                            } else {
                                _gotoNext = 3549044i32;
                            };
                        };
                    } else if (__value__ == (3549014i32)) {
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
                        _gotoNext = 3549044i32;
                    } else if (__value__ == (3549044i32)) {
                        @:check2 _p_3545566._literal(_c_3545586);
                        _gotoNext = 3549063i32;
                    } else if (__value__ == (3549063i32)) {
                        _lastRepeat_3545620 = _repeat_3545702?.__copy__();
                        _gotoNext = 3545686i32;
                    } else if (__value__ == (3549088i32)) {
                        @:check2 _p_3545566._concat();
                        if (@:check2 _p_3545566._swapVerticalBar()) {
                            _gotoNext = 3549123i32;
                        } else {
                            _gotoNext = 3549188i32;
                        };
                    } else if (__value__ == (3549123i32)) {
                        _p_3545566._stack = (_p_3545566._stack.__slice__(0, ((_p_3545566._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3549188i32;
                    } else if (__value__ == (3549188i32)) {
                        @:check2 _p_3545566._alternate();
                        _n_3549204 = (_p_3545566._stack.length);
                        if (_n_3549204 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3549233i32;
                        } else {
                            _gotoNext = 3549280i32;
                        };
                    } else if (__value__ == (3549233i32)) {
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
                        _gotoNext = 3549280i32;
                    } else if (__value__ == (3549280i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3545566._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
