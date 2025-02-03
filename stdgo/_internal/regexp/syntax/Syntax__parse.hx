package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3514970:stdgo.Error = (null : stdgo.Error);
            var _p_3512382:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3515595:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3515365:stdgo.Error = (null : stdgo.Error);
            var _r_3515356:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _max_3513913:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3513710:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3513585:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3515359:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3512402:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3514881:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3513925:Bool = false;
            var _repeat_3512518:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3512436:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3514964:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _op_3512420:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3516020:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_3515194:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _before_3513893:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3515598:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3514961:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3513918:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3513908:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3512240:stdgo.Error = (null : stdgo.Error);
            var _t_3512494:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3512193i32;
                        } else {
                            _gotoNext = 3512374i32;
                        };
                    } else if (__value__ == (3512193i32)) {
                        {
                            _err_3512240 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3512240 != null) {
                                _gotoNext = 3512272i32;
                            } else {
                                _gotoNext = 3512299i32;
                            };
                        };
                    } else if (__value__ == (3512272i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3512240 };
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
                        _gotoNext = 3512299i32;
                    } else if (__value__ == (3512299i32)) {
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
                        _gotoNext = 3512374i32;
                    } else if (__value__ == (3512374i32)) {
                        _p_3512382._flags = _flags;
                        _p_3512382._wholeRegexp = _s?.__copy__();
                        _t_3512494 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3512502i32;
                    } else if (__value__ == (3512502i32)) {
                        if (_t_3512494 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3512514i32;
                        } else {
                            _gotoNext = 3515904i32;
                        };
                    } else if (__value__ == (3512514i32)) {
                        _repeat_3512518 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3512532i32;
                    } else if (__value__ == (3512532i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3512545i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3512494[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3512658i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3512928i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3513025i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3513121i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3513236i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3513366i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3513480i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3513562i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3513863i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3514419i32;
                                } else {
                                    _gotoNext = 3512561i32;
                                };
                            };
                        } else {
                            _gotoNext = 3515879i32;
                        };
                    } else if (__value__ == (3512561i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3512494?.__copy__());
                                _c_3512402 = @:tmpset0 __tmp__._0;
                                _t_3512494 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3512612i32;
                            } else {
                                _gotoNext = 3512642i32;
                            };
                        };
                    } else if (__value__ == (3512612i32)) {
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
                        _gotoNext = 3512642i32;
                    } else if (__value__ == (3512642i32)) {
                        @:check2 _p_3512382._literal(_c_3512402);
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3512658i32)) {
                        if ((((_p_3512382._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3512494.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3512494[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3512723i32;
                        } else {
                            _gotoNext = 3512866i32;
                        };
                    } else if (__value__ == (3512723i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3512382._parsePerlFlags(_t_3512494?.__copy__());
                                _t_3512494 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3512819i32;
                            } else {
                                _gotoNext = 3512852i32;
                            };
                        };
                    } else if (__value__ == (3512819i32)) {
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
                        _gotoNext = 3512852i32;
                    } else if (__value__ == (3512852i32)) {
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3512866i32)) {
                        _p_3512382._numCap++;
                        @:check2 _p_3512382._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3512382._numCap;
                        _t_3512494 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3512928i32)) {
                        {
                            _err = @:check2 _p_3512382._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3512983i32;
                            } else {
                                _gotoNext = 3513013i32;
                            };
                        };
                    } else if (__value__ == (3512983i32)) {
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
                        _gotoNext = 3513013i32;
                    } else if (__value__ == (3513013i32)) {
                        _t_3512494 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3513025i32)) {
                        {
                            _err = @:check2 _p_3512382._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3513079i32;
                            } else {
                                _gotoNext = 3513109i32;
                            };
                        };
                    } else if (__value__ == (3513079i32)) {
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
                        _gotoNext = 3513109i32;
                    } else if (__value__ == (3513109i32)) {
                        _t_3512494 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3513121i32)) {
                        if ((_p_3512382._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3513158i32;
                        } else {
                            _gotoNext = 3513192i32;
                        };
                    } else if (__value__ == (3513158i32)) {
                        @:check2 _p_3512382._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3513224i32;
                    } else if (__value__ == (3513192i32)) {
                        _gotoNext = 3513192i32;
                        @:check2 _p_3512382._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3513224i32;
                    } else if (__value__ == (3513224i32)) {
                        _t_3512494 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3513236i32)) {
                        if ((_p_3512382._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3513273i32;
                        } else {
                            _gotoNext = 3513324i32;
                        };
                    } else if (__value__ == (3513273i32)) {
                        {
                            final __t__ = @:check2 _p_3512382._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3513354i32;
                    } else if (__value__ == (3513324i32)) {
                        _gotoNext = 3513324i32;
                        @:check2 _p_3512382._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3513354i32;
                    } else if (__value__ == (3513354i32)) {
                        _t_3512494 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3513366i32)) {
                        if ((_p_3512382._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3513401i32;
                        } else {
                            _gotoNext = 3513433i32;
                        };
                    } else if (__value__ == (3513401i32)) {
                        @:check2 _p_3512382._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3513468i32;
                    } else if (__value__ == (3513433i32)) {
                        _gotoNext = 3513433i32;
                        @:check2 _p_3512382._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3513468i32;
                    } else if (__value__ == (3513468i32)) {
                        _t_3512494 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3513480i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3512382._parseClass(_t_3512494?.__copy__());
                                _t_3512494 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3513533i32;
                            } else {
                                _gotoNext = 3515879i32;
                            };
                        };
                    } else if (__value__ == (3513533i32)) {
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
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3513562i32)) {
                        _before_3513585 = _t_3512494?.__copy__();
                        _gotoNext = 3513600i32;
                    } else if (__value__ == (3513600i32)) {
                        {
                            final __value__ = _t_3512494[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3513617i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3513646i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3513675i32;
                            } else {
                                _gotoNext = 3513710i32;
                            };
                        };
                    } else if (__value__ == (3513617i32)) {
                        _op_3512420 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3513710i32;
                    } else if (__value__ == (3513646i32)) {
                        _op_3512420 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3513710i32;
                    } else if (__value__ == (3513675i32)) {
                        _op_3512420 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3513710i32;
                    } else if (__value__ == (3513710i32)) {
                        _after_3513710 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3512382._repeat(_op_3512420, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3513585?.__copy__(), _after_3513710?.__copy__(), _lastRepeat_3512436?.__copy__());
                                _after_3513710 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3513802i32;
                            } else {
                                _gotoNext = 3513832i32;
                            };
                        };
                    } else if (__value__ == (3513802i32)) {
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
                        _gotoNext = 3513832i32;
                    } else if (__value__ == (3513832i32)) {
                        _repeat_3512518 = _before_3513585?.__copy__();
                        _t_3512494 = _after_3513710?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3513863i32)) {
                        _op_3512420 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3513893 = _t_3512494?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3512382._parseRepeat(_t_3512494?.__copy__());
                            _min_3513908 = @:tmpset0 __tmp__._0;
                            _max_3513913 = @:tmpset0 __tmp__._1;
                            _after_3513918 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3513925 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3513925) {
                            _gotoNext = 3513958i32;
                        } else {
                            _gotoNext = 3514066i32;
                        };
                    } else if (__value__ == (3513958i32)) {
                        @:check2 _p_3512382._literal((123 : stdgo.GoInt32));
                        _t_3512494 = (_t_3512494.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3514066i32)) {
                        if (((((_min_3513908 < (0 : stdgo.GoInt) : Bool) || (_min_3513908 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3513913 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3513913 >= (0 : stdgo.GoInt) : Bool) && (_min_3513908 > _max_3513913 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3514130i32;
                        } else {
                            _gotoNext = 3514280i32;
                        };
                    } else if (__value__ == (3514130i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3513893.__slice__(0, ((_before_3513893.length) - (_after_3513918.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3514280i32;
                    } else if (__value__ == (3514280i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3512382._repeat(_op_3512420, _min_3513908, _max_3513913, _before_3513893?.__copy__(), _after_3513918?.__copy__(), _lastRepeat_3512436?.__copy__());
                                _after_3513918 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3514358i32;
                            } else {
                                _gotoNext = 3514388i32;
                            };
                        };
                    } else if (__value__ == (3514358i32)) {
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
                        _gotoNext = 3514388i32;
                    } else if (__value__ == (3514388i32)) {
                        _repeat_3512518 = _before_3513893?.__copy__();
                        _t_3512494 = _after_3513918?.__copy__();
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3514419i32)) {
                        if ((((_p_3512382._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3512494.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3514470i32;
                        } else {
                            _gotoNext = 3515194i32;
                        };
                    } else if (__value__ == (3514470i32)) {
                        _gotoNext = 3514476i32;
                    } else if (__value__ == (3514476i32)) {
                        {
                            final __value__ = _t_3512494[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3514494i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3514567i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3514643i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3514721i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3514816i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3515112i32;
                            } else {
                                _gotoNext = 3515194i32;
                            };
                        };
                    } else if (__value__ == (3514494i32)) {
                        @:check2 _p_3512382._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3512494 = (_t_3512494.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3514567i32)) {
                        @:check2 _p_3512382._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3512494 = (_t_3512494.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3514643i32)) {
                        @:check2 _p_3512382._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3512494 = (_t_3512494.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3514721i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3512494.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3515194i32;
                    } else if (__value__ == (3514816i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3512494.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3514881 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3512494 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3514939i32;
                    } else if (__value__ == (3514939i32)) {
                        if (_lit_3514881 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3514953i32;
                        } else {
                            _gotoNext = 3515092i32;
                        };
                    } else if (__value__ == (3514953i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3514881?.__copy__());
                            _c_3514961 = @:tmpset0 __tmp__._0;
                            _rest_3514964 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3514970 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3514970 != null) {
                            _gotoNext = 3515011i32;
                        } else {
                            _gotoNext = 3515050i32;
                        };
                    } else if (__value__ == (3515011i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3514970 };
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
                        _gotoNext = 3515050i32;
                    } else if (__value__ == (3515050i32)) {
                        @:check2 _p_3512382._literal(_c_3514961);
                        _lit_3514881 = _rest_3514964?.__copy__();
                        _gotoNext = 3514939i32;
                    } else if (__value__ == (3515092i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3515112i32)) {
                        @:check2 _p_3512382._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3512494 = (_t_3512494.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3515194i32)) {
                        _re_3515194 = @:check2 _p_3512382._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3515194 ?? throw "null pointer dereference").flags = _p_3512382._flags;
                        if ((((_t_3512494.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3512494[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3512494[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3515350i32;
                        } else {
                            _gotoNext = 3515592i32;
                        };
                    } else if (__value__ == (3515350i32)) {
                        {
                            var __tmp__ = @:check2 _p_3512382._parseUnicodeClass(_t_3512494?.__copy__(), ((@:checkr _re_3515194 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3515356 = @:tmpset0 __tmp__._0;
                            _rest_3515359 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3515365 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3515365 != null) {
                            _gotoNext = 3515427i32;
                        } else {
                            _gotoNext = 3515460i32;
                        };
                    } else if (__value__ == (3515427i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3515365 };
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
                        _gotoNext = 3515460i32;
                    } else if (__value__ == (3515460i32)) {
                        if (_r_3515356 != null) {
                            _gotoNext = 3515472i32;
                        } else {
                            _gotoNext = 3515592i32;
                        };
                    } else if (__value__ == (3515472i32)) {
                        (@:checkr _re_3515194 ?? throw "null pointer dereference").rune = _r_3515356;
                        _t_3512494 = _rest_3515359?.__copy__();
                        @:check2 _p_3512382._push(_re_3515194);
                        bigSwitchBreak = true;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3515592i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3512382._parsePerlClassEscape(_t_3512494?.__copy__(), ((@:checkr _re_3515194 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3515595 = @:tmpset0 __tmp__._0;
                                _rest_3515598 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3515595 != null) {
                                _gotoNext = 3515656i32;
                            } else {
                                _gotoNext = 3515730i32;
                            };
                        };
                    } else if (__value__ == (3515656i32)) {
                        (@:checkr _re_3515194 ?? throw "null pointer dereference").rune = _r_3515595;
                        _t_3512494 = _rest_3515598?.__copy__();
                        @:check2 _p_3512382._push(_re_3515194);
                        bigSwitchBreak = true;
                        _gotoNext = 3512545i32;
                    } else if (__value__ == (3515730i32)) {
                        @:check2 _p_3512382._reuse(_re_3515194);
                        {
                            {
                                var __tmp__ = @:check2 _p_3512382._parseEscape(_t_3512494?.__copy__());
                                _c_3512402 = @:tmpset0 __tmp__._0;
                                _t_3512494 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3515830i32;
                            } else {
                                _gotoNext = 3515860i32;
                            };
                        };
                    } else if (__value__ == (3515830i32)) {
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
                        _gotoNext = 3515860i32;
                    } else if (__value__ == (3515860i32)) {
                        @:check2 _p_3512382._literal(_c_3512402);
                        _gotoNext = 3515879i32;
                    } else if (__value__ == (3515879i32)) {
                        _lastRepeat_3512436 = _repeat_3512518?.__copy__();
                        _gotoNext = 3512502i32;
                    } else if (__value__ == (3515904i32)) {
                        @:check2 _p_3512382._concat();
                        if (@:check2 _p_3512382._swapVerticalBar()) {
                            _gotoNext = 3515939i32;
                        } else {
                            _gotoNext = 3516004i32;
                        };
                    } else if (__value__ == (3515939i32)) {
                        _p_3512382._stack = (_p_3512382._stack.__slice__(0, ((_p_3512382._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3516004i32;
                    } else if (__value__ == (3516004i32)) {
                        @:check2 _p_3512382._alternate();
                        _n_3516020 = (_p_3512382._stack.length);
                        if (_n_3516020 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3516049i32;
                        } else {
                            _gotoNext = 3516096i32;
                        };
                    } else if (__value__ == (3516049i32)) {
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
                        _gotoNext = 3516096i32;
                    } else if (__value__ == (3516096i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3512382._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
