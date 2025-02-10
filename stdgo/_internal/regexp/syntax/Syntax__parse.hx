package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3479696:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3478255:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3479935:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3476577:stdgo.Error = (null : stdgo.Error);
            var _n_3480357:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3479301:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3479298:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _r_3479932:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _op_3476757:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _c_3476739:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3477922:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3476855:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3476831:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3478262:Bool = false;
            var _min_3478245:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3479693:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lastRepeat_3476773:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3476719:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _err_3479702:stdgo.Error = (null : stdgo.Error);
            var _max_3478250:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3478230:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3479531:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _err_3479307:stdgo.Error = (null : stdgo.Error);
            var _lit_3479218:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3478047:stdgo.GoString = ("" : stdgo.GoString);
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
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3476530i32;
                        } else {
                            _gotoNext = 3476711i32;
                        };
                    } else if (__value__ == (3476530i32)) {
                        {
                            _err_3476577 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3476577 != null) {
                                _gotoNext = 3476609i32;
                            } else {
                                _gotoNext = 3476636i32;
                            };
                        };
                    } else if (__value__ == (3476609i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3476577 };
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
                        _gotoNext = 3476636i32;
                    } else if (__value__ == (3476636i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
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
                        _gotoNext = 3476711i32;
                    } else if (__value__ == (3476711i32)) {
                        _p_3476719._flags = _flags;
                        _p_3476719._wholeRegexp = _s?.__copy__();
                        _t_3476831 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3476839i32;
                    } else if (__value__ == (3476839i32)) {
                        if (_t_3476831 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3476851i32;
                        } else {
                            _gotoNext = 3480241i32;
                        };
                    } else if (__value__ == (3476851i32)) {
                        _repeat_3476855 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3476869i32;
                    } else if (__value__ == (3476869i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3476882i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3476831[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3476995i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3477265i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3477362i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3477458i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3477573i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3477703i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3477817i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3477899i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3478200i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3478756i32;
                                } else {
                                    _gotoNext = 3476898i32;
                                };
                            };
                        } else {
                            _gotoNext = 3480216i32;
                        };
                    } else if (__value__ == (3476898i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3476831?.__copy__());
                                _c_3476739 = @:tmpset0 __tmp__._0;
                                _t_3476831 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3476949i32;
                            } else {
                                _gotoNext = 3476979i32;
                            };
                        };
                    } else if (__value__ == (3476949i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3476979i32;
                    } else if (__value__ == (3476979i32)) {
                        @:check2 _p_3476719._literal(_c_3476739);
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3476995i32)) {
                        if ((((_p_3476719._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3476831.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3476831[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3477060i32;
                        } else {
                            _gotoNext = 3477203i32;
                        };
                    } else if (__value__ == (3477060i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3476719._parsePerlFlags(_t_3476831?.__copy__());
                                _t_3476831 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3477156i32;
                            } else {
                                _gotoNext = 3477189i32;
                            };
                        };
                    } else if (__value__ == (3477156i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3477189i32;
                    } else if (__value__ == (3477189i32)) {
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477203i32)) {
                        _p_3476719._numCap++;
                        @:check2 _p_3476719._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3476719._numCap;
                        _t_3476831 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477265i32)) {
                        {
                            _err = @:check2 _p_3476719._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3477320i32;
                            } else {
                                _gotoNext = 3477350i32;
                            };
                        };
                    } else if (__value__ == (3477320i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3477350i32;
                    } else if (__value__ == (3477350i32)) {
                        _t_3476831 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477362i32)) {
                        {
                            _err = @:check2 _p_3476719._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3477416i32;
                            } else {
                                _gotoNext = 3477446i32;
                            };
                        };
                    } else if (__value__ == (3477416i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3477446i32;
                    } else if (__value__ == (3477446i32)) {
                        _t_3476831 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477458i32)) {
                        if ((_p_3476719._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3477495i32;
                        } else {
                            _gotoNext = 3477529i32;
                        };
                    } else if (__value__ == (3477495i32)) {
                        @:check2 _p_3476719._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3477561i32;
                    } else if (__value__ == (3477529i32)) {
                        _gotoNext = 3477529i32;
                        @:check2 _p_3476719._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3477561i32;
                    } else if (__value__ == (3477561i32)) {
                        _t_3476831 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477573i32)) {
                        if ((_p_3476719._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3477610i32;
                        } else {
                            _gotoNext = 3477661i32;
                        };
                    } else if (__value__ == (3477610i32)) {
                        {
                            final __t__ = @:check2 _p_3476719._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3477691i32;
                    } else if (__value__ == (3477661i32)) {
                        _gotoNext = 3477661i32;
                        @:check2 _p_3476719._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3477691i32;
                    } else if (__value__ == (3477691i32)) {
                        _t_3476831 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477703i32)) {
                        if ((_p_3476719._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3477738i32;
                        } else {
                            _gotoNext = 3477770i32;
                        };
                    } else if (__value__ == (3477738i32)) {
                        @:check2 _p_3476719._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3477805i32;
                    } else if (__value__ == (3477770i32)) {
                        _gotoNext = 3477770i32;
                        @:check2 _p_3476719._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3477805i32;
                    } else if (__value__ == (3477805i32)) {
                        _t_3476831 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477817i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3476719._parseClass(_t_3476831?.__copy__());
                                _t_3476831 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3477870i32;
                            } else {
                                _gotoNext = 3480216i32;
                            };
                        };
                    } else if (__value__ == (3477870i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3477899i32)) {
                        _before_3477922 = _t_3476831?.__copy__();
                        _gotoNext = 3477937i32;
                    } else if (__value__ == (3477937i32)) {
                        {
                            final __value__ = _t_3476831[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3477954i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3477983i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3478012i32;
                            } else {
                                _gotoNext = 3478047i32;
                            };
                        };
                    } else if (__value__ == (3477954i32)) {
                        _op_3476757 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3478047i32;
                    } else if (__value__ == (3477983i32)) {
                        _op_3476757 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3478047i32;
                    } else if (__value__ == (3478012i32)) {
                        _op_3476757 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3478047i32;
                    } else if (__value__ == (3478047i32)) {
                        _after_3478047 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3476719._repeat(_op_3476757, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3477922?.__copy__(), _after_3478047?.__copy__(), _lastRepeat_3476773?.__copy__());
                                _after_3478047 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3478139i32;
                            } else {
                                _gotoNext = 3478169i32;
                            };
                        };
                    } else if (__value__ == (3478139i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3478169i32;
                    } else if (__value__ == (3478169i32)) {
                        _repeat_3476855 = _before_3477922?.__copy__();
                        _t_3476831 = _after_3478047?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3478200i32)) {
                        _op_3476757 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3478230 = _t_3476831?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3476719._parseRepeat(_t_3476831?.__copy__());
                            _min_3478245 = @:tmpset0 __tmp__._0;
                            _max_3478250 = @:tmpset0 __tmp__._1;
                            _after_3478255 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3478262 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3478262) {
                            _gotoNext = 3478295i32;
                        } else {
                            _gotoNext = 3478403i32;
                        };
                    } else if (__value__ == (3478295i32)) {
                        @:check2 _p_3476719._literal((123 : stdgo.GoInt32));
                        _t_3476831 = (_t_3476831.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3478403i32)) {
                        if (((((_min_3478245 < (0 : stdgo.GoInt) : Bool) || (_min_3478245 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3478250 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3478250 >= (0 : stdgo.GoInt) : Bool) && (_min_3478245 > _max_3478250 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3478467i32;
                        } else {
                            _gotoNext = 3478617i32;
                        };
                    } else if (__value__ == (3478467i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3478230.__slice__(0, ((_before_3478230.length) - (_after_3478255.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3478617i32;
                    } else if (__value__ == (3478617i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3476719._repeat(_op_3476757, _min_3478245, _max_3478250, _before_3478230?.__copy__(), _after_3478255?.__copy__(), _lastRepeat_3476773?.__copy__());
                                _after_3478255 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3478695i32;
                            } else {
                                _gotoNext = 3478725i32;
                            };
                        };
                    } else if (__value__ == (3478695i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3478725i32;
                    } else if (__value__ == (3478725i32)) {
                        _repeat_3476855 = _before_3478230?.__copy__();
                        _t_3476831 = _after_3478255?.__copy__();
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3478756i32)) {
                        if ((((_p_3476719._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3476831.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3478807i32;
                        } else {
                            _gotoNext = 3479531i32;
                        };
                    } else if (__value__ == (3478807i32)) {
                        _gotoNext = 3478813i32;
                    } else if (__value__ == (3478813i32)) {
                        {
                            final __value__ = _t_3476831[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3478831i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3478904i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3478980i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3479058i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3479153i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3479449i32;
                            } else {
                                _gotoNext = 3479531i32;
                            };
                        };
                    } else if (__value__ == (3478831i32)) {
                        @:check2 _p_3476719._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3476831 = (_t_3476831.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3478904i32)) {
                        @:check2 _p_3476719._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3476831 = (_t_3476831.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3478980i32)) {
                        @:check2 _p_3476719._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3476831 = (_t_3476831.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3479058i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3476831.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3479531i32;
                    } else if (__value__ == (3479153i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3476831.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3479218 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3476831 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3479276i32;
                    } else if (__value__ == (3479276i32)) {
                        if (_lit_3479218 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3479290i32;
                        } else {
                            _gotoNext = 3479429i32;
                        };
                    } else if (__value__ == (3479290i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3479218?.__copy__());
                            _c_3479298 = @:tmpset0 __tmp__._0;
                            _rest_3479301 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3479307 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3479307 != null) {
                            _gotoNext = 3479348i32;
                        } else {
                            _gotoNext = 3479387i32;
                        };
                    } else if (__value__ == (3479348i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3479307 };
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
                        _gotoNext = 3479387i32;
                    } else if (__value__ == (3479387i32)) {
                        @:check2 _p_3476719._literal(_c_3479298);
                        _lit_3479218 = _rest_3479301?.__copy__();
                        _gotoNext = 3479276i32;
                    } else if (__value__ == (3479429i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3479449i32)) {
                        @:check2 _p_3476719._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3476831 = (_t_3476831.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3479531i32)) {
                        _re_3479531 = @:check2 _p_3476719._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3479531 ?? throw "null pointer dereference").flags = _p_3476719._flags;
                        if ((((_t_3476831.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3476831[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3476831[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3479687i32;
                        } else {
                            _gotoNext = 3479929i32;
                        };
                    } else if (__value__ == (3479687i32)) {
                        {
                            var __tmp__ = @:check2 _p_3476719._parseUnicodeClass(_t_3476831?.__copy__(), ((@:checkr _re_3479531 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3479693 = @:tmpset0 __tmp__._0;
                            _rest_3479696 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3479702 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3479702 != null) {
                            _gotoNext = 3479764i32;
                        } else {
                            _gotoNext = 3479797i32;
                        };
                    } else if (__value__ == (3479764i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3479702 };
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
                        _gotoNext = 3479797i32;
                    } else if (__value__ == (3479797i32)) {
                        if (_r_3479693 != null) {
                            _gotoNext = 3479809i32;
                        } else {
                            _gotoNext = 3479929i32;
                        };
                    } else if (__value__ == (3479809i32)) {
                        (@:checkr _re_3479531 ?? throw "null pointer dereference").rune = _r_3479693;
                        _t_3476831 = _rest_3479696?.__copy__();
                        @:check2 _p_3476719._push(_re_3479531);
                        bigSwitchBreak = true;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3479929i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3476719._parsePerlClassEscape(_t_3476831?.__copy__(), ((@:checkr _re_3479531 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3479932 = @:tmpset0 __tmp__._0;
                                _rest_3479935 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3479932 != null) {
                                _gotoNext = 3479993i32;
                            } else {
                                _gotoNext = 3480067i32;
                            };
                        };
                    } else if (__value__ == (3479993i32)) {
                        (@:checkr _re_3479531 ?? throw "null pointer dereference").rune = _r_3479932;
                        _t_3476831 = _rest_3479935?.__copy__();
                        @:check2 _p_3476719._push(_re_3479531);
                        bigSwitchBreak = true;
                        _gotoNext = 3476882i32;
                    } else if (__value__ == (3480067i32)) {
                        @:check2 _p_3476719._reuse(_re_3479531);
                        {
                            {
                                var __tmp__ = @:check2 _p_3476719._parseEscape(_t_3476831?.__copy__());
                                _c_3476739 = @:tmpset0 __tmp__._0;
                                _t_3476831 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3480167i32;
                            } else {
                                _gotoNext = 3480197i32;
                            };
                        };
                    } else if (__value__ == (3480167i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3480197i32;
                    } else if (__value__ == (3480197i32)) {
                        @:check2 _p_3476719._literal(_c_3476739);
                        _gotoNext = 3480216i32;
                    } else if (__value__ == (3480216i32)) {
                        _lastRepeat_3476773 = _repeat_3476855?.__copy__();
                        _gotoNext = 3476839i32;
                    } else if (__value__ == (3480241i32)) {
                        @:check2 _p_3476719._concat();
                        if (@:check2 _p_3476719._swapVerticalBar()) {
                            _gotoNext = 3480276i32;
                        } else {
                            _gotoNext = 3480341i32;
                        };
                    } else if (__value__ == (3480276i32)) {
                        _p_3476719._stack = (_p_3476719._stack.__slice__(0, ((_p_3476719._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3480341i32;
                    } else if (__value__ == (3480341i32)) {
                        @:check2 _p_3476719._alternate();
                        _n_3480357 = (_p_3476719._stack.length);
                        if (_n_3480357 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3480386i32;
                        } else {
                            _gotoNext = 3480433i32;
                        };
                    } else if (__value__ == (3480386i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3480433i32;
                    } else if (__value__ == (3480433i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3476719._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
