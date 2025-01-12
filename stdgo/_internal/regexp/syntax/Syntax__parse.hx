package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3531684:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3534641:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3532992:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3531800:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3533175:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3534877:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3534246:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3532867:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3533200:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3534163:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3531702:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3535302:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3534638:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3534476:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3534243:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _t_3531776:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3533190:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3534880:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3533207:Bool = false;
            var _err_3531522:stdgo.Error = (null : stdgo.Error);
            var _max_3533195:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3531664:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _lastRepeat_3531718:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3534647:stdgo.Error = (null : stdgo.Error);
            var _err_3534252:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3531475i32;
                        } else {
                            _gotoNext = 3531656i32;
                        };
                    } else if (__value__ == (3531475i32)) {
                        {
                            _err_3531522 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3531522 != null) {
                                _gotoNext = 3531554i32;
                            } else {
                                _gotoNext = 3531581i32;
                            };
                        };
                    } else if (__value__ == (3531554i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3531522 };
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
                        _gotoNext = 3531581i32;
                    } else if (__value__ == (3531581i32)) {
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
                        _gotoNext = 3531656i32;
                    } else if (__value__ == (3531656i32)) {
                        _p_3531664._flags = _flags;
                        _p_3531664._wholeRegexp = _s?.__copy__();
                        _t_3531776 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3531784i32;
                    } else if (__value__ == (3531784i32)) {
                        if (_t_3531776 != (stdgo.Go.str())) {
                            _gotoNext = 3531796i32;
                        } else {
                            _gotoNext = 3535186i32;
                        };
                    } else if (__value__ == (3531796i32)) {
                        _repeat_3531800 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3531814i32;
                    } else if (__value__ == (3531814i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3531827i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3531776[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3531940i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3532210i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3532307i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3532403i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3532518i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3532648i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3532762i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3532844i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3533145i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3533701i32;
                                } else {
                                    _gotoNext = 3531843i32;
                                };
                            };
                        } else {
                            _gotoNext = 3535161i32;
                        };
                    } else if (__value__ == (3531843i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3531776?.__copy__());
                                _c_3531684 = __tmp__._0;
                                _t_3531776 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3531894i32;
                            } else {
                                _gotoNext = 3531924i32;
                            };
                        };
                    } else if (__value__ == (3531894i32)) {
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
                        _gotoNext = 3531924i32;
                    } else if (__value__ == (3531924i32)) {
                        @:check2 _p_3531664._literal(_c_3531684);
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3531940i32)) {
                        if ((((_p_3531664._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3531776.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3531776[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3532005i32;
                        } else {
                            _gotoNext = 3532148i32;
                        };
                    } else if (__value__ == (3532005i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3531664._parsePerlFlags(_t_3531776?.__copy__());
                                _t_3531776 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3532101i32;
                            } else {
                                _gotoNext = 3532134i32;
                            };
                        };
                    } else if (__value__ == (3532101i32)) {
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
                        _gotoNext = 3532134i32;
                    } else if (__value__ == (3532134i32)) {
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532148i32)) {
                        _p_3531664._numCap++;
                        @:check2 _p_3531664._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3531664._numCap;
                        _t_3531776 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532210i32)) {
                        {
                            _err = @:check2 _p_3531664._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3532265i32;
                            } else {
                                _gotoNext = 3532295i32;
                            };
                        };
                    } else if (__value__ == (3532265i32)) {
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
                        _gotoNext = 3532295i32;
                    } else if (__value__ == (3532295i32)) {
                        _t_3531776 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532307i32)) {
                        {
                            _err = @:check2 _p_3531664._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3532361i32;
                            } else {
                                _gotoNext = 3532391i32;
                            };
                        };
                    } else if (__value__ == (3532361i32)) {
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
                        _gotoNext = 3532391i32;
                    } else if (__value__ == (3532391i32)) {
                        _t_3531776 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532403i32)) {
                        if ((_p_3531664._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3532440i32;
                        } else {
                            _gotoNext = 3532474i32;
                        };
                    } else if (__value__ == (3532440i32)) {
                        @:check2 _p_3531664._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3532506i32;
                    } else if (__value__ == (3532474i32)) {
                        _gotoNext = 3532474i32;
                        @:check2 _p_3531664._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3532506i32;
                    } else if (__value__ == (3532506i32)) {
                        _t_3531776 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532518i32)) {
                        if ((_p_3531664._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3532555i32;
                        } else {
                            _gotoNext = 3532606i32;
                        };
                    } else if (__value__ == (3532555i32)) {
                        {
                            final __t__ = @:check2 _p_3531664._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3532636i32;
                    } else if (__value__ == (3532606i32)) {
                        _gotoNext = 3532606i32;
                        @:check2 _p_3531664._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3532636i32;
                    } else if (__value__ == (3532636i32)) {
                        _t_3531776 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532648i32)) {
                        if ((_p_3531664._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3532683i32;
                        } else {
                            _gotoNext = 3532715i32;
                        };
                    } else if (__value__ == (3532683i32)) {
                        @:check2 _p_3531664._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3532750i32;
                    } else if (__value__ == (3532715i32)) {
                        _gotoNext = 3532715i32;
                        @:check2 _p_3531664._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3532750i32;
                    } else if (__value__ == (3532750i32)) {
                        _t_3531776 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532762i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3531664._parseClass(_t_3531776?.__copy__());
                                _t_3531776 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3532815i32;
                            } else {
                                _gotoNext = 3535161i32;
                            };
                        };
                    } else if (__value__ == (3532815i32)) {
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
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3532844i32)) {
                        _before_3532867 = _t_3531776?.__copy__();
                        _gotoNext = 3532882i32;
                    } else if (__value__ == (3532882i32)) {
                        {
                            final __value__ = _t_3531776[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3532899i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3532928i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3532957i32;
                            } else {
                                _gotoNext = 3532992i32;
                            };
                        };
                    } else if (__value__ == (3532899i32)) {
                        _op_3531702 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3532992i32;
                    } else if (__value__ == (3532928i32)) {
                        _op_3531702 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3532992i32;
                    } else if (__value__ == (3532957i32)) {
                        _op_3531702 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3532992i32;
                    } else if (__value__ == (3532992i32)) {
                        _after_3532992 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3531664._repeat(_op_3531702, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3532867?.__copy__(), _after_3532992?.__copy__(), _lastRepeat_3531718?.__copy__());
                                _after_3532992 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3533084i32;
                            } else {
                                _gotoNext = 3533114i32;
                            };
                        };
                    } else if (__value__ == (3533084i32)) {
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
                        _gotoNext = 3533114i32;
                    } else if (__value__ == (3533114i32)) {
                        _repeat_3531800 = _before_3532867?.__copy__();
                        _t_3531776 = _after_3532992?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3533145i32)) {
                        _op_3531702 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3533175 = _t_3531776?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3531664._parseRepeat(_t_3531776?.__copy__());
                            _min_3533190 = __tmp__._0;
                            _max_3533195 = __tmp__._1;
                            _after_3533200 = __tmp__._2?.__copy__();
                            _ok_3533207 = __tmp__._3;
                        };
                        if (!_ok_3533207) {
                            _gotoNext = 3533240i32;
                        } else {
                            _gotoNext = 3533348i32;
                        };
                    } else if (__value__ == (3533240i32)) {
                        @:check2 _p_3531664._literal((123 : stdgo.GoInt32));
                        _t_3531776 = (_t_3531776.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3533348i32)) {
                        if (((((_min_3533190 < (0 : stdgo.GoInt) : Bool) || (_min_3533190 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3533195 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3533195 >= (0 : stdgo.GoInt) : Bool) && (_min_3533190 > _max_3533195 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3533412i32;
                        } else {
                            _gotoNext = 3533562i32;
                        };
                    } else if (__value__ == (3533412i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3533175.__slice__(0, ((_before_3533175.length) - (_after_3533200.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3533562i32;
                    } else if (__value__ == (3533562i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3531664._repeat(_op_3531702, _min_3533190, _max_3533195, _before_3533175?.__copy__(), _after_3533200?.__copy__(), _lastRepeat_3531718?.__copy__());
                                _after_3533200 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3533640i32;
                            } else {
                                _gotoNext = 3533670i32;
                            };
                        };
                    } else if (__value__ == (3533640i32)) {
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
                        _gotoNext = 3533670i32;
                    } else if (__value__ == (3533670i32)) {
                        _repeat_3531800 = _before_3533175?.__copy__();
                        _t_3531776 = _after_3533200?.__copy__();
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3533701i32)) {
                        if ((((_p_3531664._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3531776.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3533752i32;
                        } else {
                            _gotoNext = 3534476i32;
                        };
                    } else if (__value__ == (3533752i32)) {
                        _gotoNext = 3533758i32;
                    } else if (__value__ == (3533758i32)) {
                        {
                            final __value__ = _t_3531776[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3533776i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3533849i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3533925i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3534003i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3534098i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3534394i32;
                            } else {
                                _gotoNext = 3534476i32;
                            };
                        };
                    } else if (__value__ == (3533776i32)) {
                        @:check2 _p_3531664._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3531776 = (_t_3531776.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3533849i32)) {
                        @:check2 _p_3531664._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3531776 = (_t_3531776.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3533925i32)) {
                        @:check2 _p_3531664._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3531776 = (_t_3531776.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3534003i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3531776.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3534476i32;
                    } else if (__value__ == (3534098i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3531776.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3534163 = __tmp__._0?.__copy__();
                            _t_3531776 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3534221i32;
                    } else if (__value__ == (3534221i32)) {
                        if (_lit_3534163 != (stdgo.Go.str())) {
                            _gotoNext = 3534235i32;
                        } else {
                            _gotoNext = 3534374i32;
                        };
                    } else if (__value__ == (3534235i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3534163?.__copy__());
                            _c_3534243 = __tmp__._0;
                            _rest_3534246 = __tmp__._1?.__copy__();
                            _err_3534252 = __tmp__._2;
                        };
                        if (_err_3534252 != null) {
                            _gotoNext = 3534293i32;
                        } else {
                            _gotoNext = 3534332i32;
                        };
                    } else if (__value__ == (3534293i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3534252 };
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
                        _gotoNext = 3534332i32;
                    } else if (__value__ == (3534332i32)) {
                        @:check2 _p_3531664._literal(_c_3534243);
                        _lit_3534163 = _rest_3534246?.__copy__();
                        _gotoNext = 3534221i32;
                    } else if (__value__ == (3534374i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3534394i32)) {
                        @:check2 _p_3531664._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3531776 = (_t_3531776.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3534476i32)) {
                        _re_3534476 = @:check2 _p_3531664._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3534476 ?? throw "null pointer dereference").flags = _p_3531664._flags;
                        if ((((_t_3531776.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3531776[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3531776[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3534632i32;
                        } else {
                            _gotoNext = 3534874i32;
                        };
                    } else if (__value__ == (3534632i32)) {
                        {
                            var __tmp__ = @:check2 _p_3531664._parseUnicodeClass(_t_3531776?.__copy__(), ((@:checkr _re_3534476 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3534638 = __tmp__._0;
                            _rest_3534641 = __tmp__._1?.__copy__();
                            _err_3534647 = __tmp__._2;
                        };
                        if (_err_3534647 != null) {
                            _gotoNext = 3534709i32;
                        } else {
                            _gotoNext = 3534742i32;
                        };
                    } else if (__value__ == (3534709i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3534647 };
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
                        _gotoNext = 3534742i32;
                    } else if (__value__ == (3534742i32)) {
                        if (_r_3534638 != null) {
                            _gotoNext = 3534754i32;
                        } else {
                            _gotoNext = 3534874i32;
                        };
                    } else if (__value__ == (3534754i32)) {
                        (@:checkr _re_3534476 ?? throw "null pointer dereference").rune = _r_3534638;
                        _t_3531776 = _rest_3534641?.__copy__();
                        @:check2 _p_3531664._push(_re_3534476);
                        bigSwitchBreak = true;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3534874i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3531664._parsePerlClassEscape(_t_3531776?.__copy__(), ((@:checkr _re_3534476 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3534877 = __tmp__._0;
                                _rest_3534880 = __tmp__._1?.__copy__();
                            };
                            if (_r_3534877 != null) {
                                _gotoNext = 3534938i32;
                            } else {
                                _gotoNext = 3535012i32;
                            };
                        };
                    } else if (__value__ == (3534938i32)) {
                        (@:checkr _re_3534476 ?? throw "null pointer dereference").rune = _r_3534877;
                        _t_3531776 = _rest_3534880?.__copy__();
                        @:check2 _p_3531664._push(_re_3534476);
                        bigSwitchBreak = true;
                        _gotoNext = 3531827i32;
                    } else if (__value__ == (3535012i32)) {
                        @:check2 _p_3531664._reuse(_re_3534476);
                        {
                            {
                                var __tmp__ = @:check2 _p_3531664._parseEscape(_t_3531776?.__copy__());
                                _c_3531684 = __tmp__._0;
                                _t_3531776 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3535112i32;
                            } else {
                                _gotoNext = 3535142i32;
                            };
                        };
                    } else if (__value__ == (3535112i32)) {
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
                        _gotoNext = 3535142i32;
                    } else if (__value__ == (3535142i32)) {
                        @:check2 _p_3531664._literal(_c_3531684);
                        _gotoNext = 3535161i32;
                    } else if (__value__ == (3535161i32)) {
                        _lastRepeat_3531718 = _repeat_3531800?.__copy__();
                        _gotoNext = 3531784i32;
                    } else if (__value__ == (3535186i32)) {
                        @:check2 _p_3531664._concat();
                        if (@:check2 _p_3531664._swapVerticalBar()) {
                            _gotoNext = 3535221i32;
                        } else {
                            _gotoNext = 3535286i32;
                        };
                    } else if (__value__ == (3535221i32)) {
                        _p_3531664._stack = (_p_3531664._stack.__slice__(0, ((_p_3531664._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3535286i32;
                    } else if (__value__ == (3535286i32)) {
                        @:check2 _p_3531664._alternate();
                        _n_3535302 = (_p_3531664._stack.length);
                        if (_n_3535302 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3535331i32;
                        } else {
                            _gotoNext = 3535378i32;
                        };
                    } else if (__value__ == (3535331i32)) {
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
                        _gotoNext = 3535378i32;
                    } else if (__value__ == (3535378i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3531664._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
