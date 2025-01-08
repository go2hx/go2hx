package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _min_3425718:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3424230:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3427405:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3427166:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3426691:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3424050:stdgo.Error = (null : stdgo.Error);
            var _rest_3427169:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3426780:stdgo.Error = (null : stdgo.Error);
            var _before_3425703:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3424328:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3427175:stdgo.Error = (null : stdgo.Error);
            var _re_3427004:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _t_3424304:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3426774:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3425728:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3425723:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3425520:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3424212:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _rest_3427408:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3425735:Bool = false;
            var _n_3427830:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3426771:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3425395:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3424246:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3424192:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
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
                            _gotoNext = 3424003i32;
                        } else {
                            _gotoNext = 3424184i32;
                        };
                    } else if (__value__ == (3424003i32)) {
                        {
                            _err_3424050 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3424050 != null) {
                                _gotoNext = 3424082i32;
                            } else {
                                _gotoNext = 3424109i32;
                            };
                        };
                    } else if (__value__ == (3424082i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3424050 };
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
                        _gotoNext = 3424109i32;
                    } else if (__value__ == (3424109i32)) {
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
                        _gotoNext = 3424184i32;
                    } else if (__value__ == (3424184i32)) {
                        _p_3424192._flags = _flags;
                        _p_3424192._wholeRegexp = _s?.__copy__();
                        _t_3424304 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3424312i32;
                    } else if (__value__ == (3424312i32)) {
                        if (_t_3424304 != (stdgo.Go.str())) {
                            _gotoNext = 3424324i32;
                        } else {
                            _gotoNext = 3427714i32;
                        };
                    } else if (__value__ == (3424324i32)) {
                        _repeat_3424328 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3424342i32;
                    } else if (__value__ == (3424342i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3424355i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3424304[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3424468i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3424738i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3424835i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3424931i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425046i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425176i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425290i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425372i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3425673i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3426229i32;
                                } else {
                                    _gotoNext = 3424371i32;
                                };
                            };
                        } else {
                            _gotoNext = 3427689i32;
                        };
                    } else if (__value__ == (3424371i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3424304?.__copy__());
                                _c_3424212 = __tmp__._0;
                                _t_3424304 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3424422i32;
                            } else {
                                _gotoNext = 3424452i32;
                            };
                        };
                    } else if (__value__ == (3424422i32)) {
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
                        _gotoNext = 3424452i32;
                    } else if (__value__ == (3424452i32)) {
                        @:check2 _p_3424192._literal(_c_3424212);
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3424468i32)) {
                        if ((((_p_3424192._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3424304.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3424304[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3424533i32;
                        } else {
                            _gotoNext = 3424676i32;
                        };
                    } else if (__value__ == (3424533i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3424192._parsePerlFlags(_t_3424304?.__copy__());
                                _t_3424304 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3424629i32;
                            } else {
                                _gotoNext = 3424662i32;
                            };
                        };
                    } else if (__value__ == (3424629i32)) {
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
                        _gotoNext = 3424662i32;
                    } else if (__value__ == (3424662i32)) {
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3424676i32)) {
                        _p_3424192._numCap++;
                        @:check2 _p_3424192._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3424192._numCap;
                        _t_3424304 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3424738i32)) {
                        {
                            _err = @:check2 _p_3424192._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3424793i32;
                            } else {
                                _gotoNext = 3424823i32;
                            };
                        };
                    } else if (__value__ == (3424793i32)) {
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
                        _gotoNext = 3424823i32;
                    } else if (__value__ == (3424823i32)) {
                        _t_3424304 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3424835i32)) {
                        {
                            _err = @:check2 _p_3424192._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3424889i32;
                            } else {
                                _gotoNext = 3424919i32;
                            };
                        };
                    } else if (__value__ == (3424889i32)) {
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
                        _gotoNext = 3424919i32;
                    } else if (__value__ == (3424919i32)) {
                        _t_3424304 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3424931i32)) {
                        if ((_p_3424192._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3424968i32;
                        } else {
                            _gotoNext = 3425002i32;
                        };
                    } else if (__value__ == (3424968i32)) {
                        @:check2 _p_3424192._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3425034i32;
                    } else if (__value__ == (3425002i32)) {
                        _gotoNext = 3425002i32;
                        @:check2 _p_3424192._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3425034i32;
                    } else if (__value__ == (3425034i32)) {
                        _t_3424304 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3425046i32)) {
                        if ((_p_3424192._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3425083i32;
                        } else {
                            _gotoNext = 3425134i32;
                        };
                    } else if (__value__ == (3425083i32)) {
                        {
                            final __t__ = @:check2 _p_3424192._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3425164i32;
                    } else if (__value__ == (3425134i32)) {
                        _gotoNext = 3425134i32;
                        @:check2 _p_3424192._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3425164i32;
                    } else if (__value__ == (3425164i32)) {
                        _t_3424304 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3425176i32)) {
                        if ((_p_3424192._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3425211i32;
                        } else {
                            _gotoNext = 3425243i32;
                        };
                    } else if (__value__ == (3425211i32)) {
                        @:check2 _p_3424192._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3425278i32;
                    } else if (__value__ == (3425243i32)) {
                        _gotoNext = 3425243i32;
                        @:check2 _p_3424192._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3425278i32;
                    } else if (__value__ == (3425278i32)) {
                        _t_3424304 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3425290i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3424192._parseClass(_t_3424304?.__copy__());
                                _t_3424304 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3425343i32;
                            } else {
                                _gotoNext = 3427689i32;
                            };
                        };
                    } else if (__value__ == (3425343i32)) {
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
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3425372i32)) {
                        _before_3425395 = _t_3424304?.__copy__();
                        _gotoNext = 3425410i32;
                    } else if (__value__ == (3425410i32)) {
                        {
                            final __value__ = _t_3424304[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3425427i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3425456i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3425485i32;
                            } else {
                                _gotoNext = 3425520i32;
                            };
                        };
                    } else if (__value__ == (3425427i32)) {
                        _op_3424230 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3425520i32;
                    } else if (__value__ == (3425456i32)) {
                        _op_3424230 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3425520i32;
                    } else if (__value__ == (3425485i32)) {
                        _op_3424230 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3425520i32;
                    } else if (__value__ == (3425520i32)) {
                        _after_3425520 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3424192._repeat(_op_3424230, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3425395?.__copy__(), _after_3425520?.__copy__(), _lastRepeat_3424246?.__copy__());
                                _after_3425520 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3425612i32;
                            } else {
                                _gotoNext = 3425642i32;
                            };
                        };
                    } else if (__value__ == (3425612i32)) {
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
                        _gotoNext = 3425642i32;
                    } else if (__value__ == (3425642i32)) {
                        _repeat_3424328 = _before_3425395?.__copy__();
                        _t_3424304 = _after_3425520?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3425673i32)) {
                        _op_3424230 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3425703 = _t_3424304?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3424192._parseRepeat(_t_3424304?.__copy__());
                            _min_3425718 = __tmp__._0;
                            _max_3425723 = __tmp__._1;
                            _after_3425728 = __tmp__._2?.__copy__();
                            _ok_3425735 = __tmp__._3;
                        };
                        if (!_ok_3425735) {
                            _gotoNext = 3425768i32;
                        } else {
                            _gotoNext = 3425876i32;
                        };
                    } else if (__value__ == (3425768i32)) {
                        @:check2 _p_3424192._literal((123 : stdgo.GoInt32));
                        _t_3424304 = (_t_3424304.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3425876i32)) {
                        if (((((_min_3425718 < (0 : stdgo.GoInt) : Bool) || (_min_3425718 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3425723 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3425723 >= (0 : stdgo.GoInt) : Bool) && (_min_3425718 > _max_3425723 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3425940i32;
                        } else {
                            _gotoNext = 3426090i32;
                        };
                    } else if (__value__ == (3425940i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3425703.__slice__(0, ((_before_3425703.length) - (_after_3425728.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3426090i32;
                    } else if (__value__ == (3426090i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3424192._repeat(_op_3424230, _min_3425718, _max_3425723, _before_3425703?.__copy__(), _after_3425728?.__copy__(), _lastRepeat_3424246?.__copy__());
                                _after_3425728 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3426168i32;
                            } else {
                                _gotoNext = 3426198i32;
                            };
                        };
                    } else if (__value__ == (3426168i32)) {
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
                        _gotoNext = 3426198i32;
                    } else if (__value__ == (3426198i32)) {
                        _repeat_3424328 = _before_3425703?.__copy__();
                        _t_3424304 = _after_3425728?.__copy__();
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3426229i32)) {
                        if ((((_p_3424192._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3424304.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3426280i32;
                        } else {
                            _gotoNext = 3427004i32;
                        };
                    } else if (__value__ == (3426280i32)) {
                        _gotoNext = 3426286i32;
                    } else if (__value__ == (3426286i32)) {
                        {
                            final __value__ = _t_3424304[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3426304i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3426377i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3426453i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3426531i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3426626i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3426922i32;
                            } else {
                                _gotoNext = 3427004i32;
                            };
                        };
                    } else if (__value__ == (3426304i32)) {
                        @:check2 _p_3424192._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3424304 = (_t_3424304.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3426377i32)) {
                        @:check2 _p_3424192._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3424304 = (_t_3424304.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3426453i32)) {
                        @:check2 _p_3424192._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3424304 = (_t_3424304.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3426531i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3424304.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3427004i32;
                    } else if (__value__ == (3426626i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3424304.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3426691 = __tmp__._0?.__copy__();
                            _t_3424304 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3426749i32;
                    } else if (__value__ == (3426749i32)) {
                        if (_lit_3426691 != (stdgo.Go.str())) {
                            _gotoNext = 3426763i32;
                        } else {
                            _gotoNext = 3426902i32;
                        };
                    } else if (__value__ == (3426763i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3426691?.__copy__());
                            _c_3426771 = __tmp__._0;
                            _rest_3426774 = __tmp__._1?.__copy__();
                            _err_3426780 = __tmp__._2;
                        };
                        if (_err_3426780 != null) {
                            _gotoNext = 3426821i32;
                        } else {
                            _gotoNext = 3426860i32;
                        };
                    } else if (__value__ == (3426821i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3426780 };
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
                        _gotoNext = 3426860i32;
                    } else if (__value__ == (3426860i32)) {
                        @:check2 _p_3424192._literal(_c_3426771);
                        _lit_3426691 = _rest_3426774?.__copy__();
                        _gotoNext = 3426749i32;
                    } else if (__value__ == (3426902i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3426922i32)) {
                        @:check2 _p_3424192._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3424304 = (_t_3424304.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3427004i32)) {
                        _re_3427004 = @:check2 _p_3424192._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3427004 ?? throw "null pointer dereference").flags = _p_3424192._flags;
                        if ((((_t_3424304.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3424304[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3424304[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3427160i32;
                        } else {
                            _gotoNext = 3427402i32;
                        };
                    } else if (__value__ == (3427160i32)) {
                        {
                            var __tmp__ = @:check2 _p_3424192._parseUnicodeClass(_t_3424304?.__copy__(), ((@:checkr _re_3427004 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3427166 = __tmp__._0;
                            _rest_3427169 = __tmp__._1?.__copy__();
                            _err_3427175 = __tmp__._2;
                        };
                        if (_err_3427175 != null) {
                            _gotoNext = 3427237i32;
                        } else {
                            _gotoNext = 3427270i32;
                        };
                    } else if (__value__ == (3427237i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3427175 };
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
                        _gotoNext = 3427270i32;
                    } else if (__value__ == (3427270i32)) {
                        if (_r_3427166 != null) {
                            _gotoNext = 3427282i32;
                        } else {
                            _gotoNext = 3427402i32;
                        };
                    } else if (__value__ == (3427282i32)) {
                        (@:checkr _re_3427004 ?? throw "null pointer dereference").rune = _r_3427166;
                        _t_3424304 = _rest_3427169?.__copy__();
                        @:check2 _p_3424192._push(_re_3427004);
                        bigSwitchBreak = true;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3427402i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3424192._parsePerlClassEscape(_t_3424304?.__copy__(), ((@:checkr _re_3427004 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3427405 = __tmp__._0;
                                _rest_3427408 = __tmp__._1?.__copy__();
                            };
                            if (_r_3427405 != null) {
                                _gotoNext = 3427466i32;
                            } else {
                                _gotoNext = 3427540i32;
                            };
                        };
                    } else if (__value__ == (3427466i32)) {
                        (@:checkr _re_3427004 ?? throw "null pointer dereference").rune = _r_3427405;
                        _t_3424304 = _rest_3427408?.__copy__();
                        @:check2 _p_3424192._push(_re_3427004);
                        bigSwitchBreak = true;
                        _gotoNext = 3424355i32;
                    } else if (__value__ == (3427540i32)) {
                        @:check2 _p_3424192._reuse(_re_3427004);
                        {
                            {
                                var __tmp__ = @:check2 _p_3424192._parseEscape(_t_3424304?.__copy__());
                                _c_3424212 = __tmp__._0;
                                _t_3424304 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3427640i32;
                            } else {
                                _gotoNext = 3427670i32;
                            };
                        };
                    } else if (__value__ == (3427640i32)) {
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
                        _gotoNext = 3427670i32;
                    } else if (__value__ == (3427670i32)) {
                        @:check2 _p_3424192._literal(_c_3424212);
                        _gotoNext = 3427689i32;
                    } else if (__value__ == (3427689i32)) {
                        _lastRepeat_3424246 = _repeat_3424328?.__copy__();
                        _gotoNext = 3424312i32;
                    } else if (__value__ == (3427714i32)) {
                        @:check2 _p_3424192._concat();
                        if (@:check2 _p_3424192._swapVerticalBar()) {
                            _gotoNext = 3427749i32;
                        } else {
                            _gotoNext = 3427814i32;
                        };
                    } else if (__value__ == (3427749i32)) {
                        _p_3424192._stack = (_p_3424192._stack.__slice__(0, ((_p_3424192._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3427814i32;
                    } else if (__value__ == (3427814i32)) {
                        @:check2 _p_3424192._alternate();
                        _n_3427830 = (_p_3424192._stack.length);
                        if (_n_3427830 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3427859i32;
                        } else {
                            _gotoNext = 3427906i32;
                        };
                    } else if (__value__ == (3427859i32)) {
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
                        _gotoNext = 3427906i32;
                    } else if (__value__ == (3427906i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3424192._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
