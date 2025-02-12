package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_3527999:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3526604:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3526326:stdgo.Error = (null : stdgo.Error);
            var _op_3526506:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _r_3529681:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3529445:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3529047:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3528967:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3530106:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3529442:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3527796:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3526522:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3526488:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3526468:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var bigSwitchBreak = false;
            var _re_3529280:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _min_3527994:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3529056:stdgo.Error = (null : stdgo.Error);
            var _before_3527671:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3526580:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3529684:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3528011:Bool = false;
            var _after_3528004:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3527979:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3529451:stdgo.Error = (null : stdgo.Error);
            var _rest_3529050:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3526279i32;
                        } else {
                            _gotoNext = 3526460i32;
                        };
                    } else if (__value__ == (3526279i32)) {
                        {
                            _err_3526326 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3526326 != null) {
                                _gotoNext = 3526358i32;
                            } else {
                                _gotoNext = 3526385i32;
                            };
                        };
                    } else if (__value__ == (3526358i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3526326 };
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
                        _gotoNext = 3526385i32;
                    } else if (__value__ == (3526385i32)) {
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
                        _gotoNext = 3526460i32;
                    } else if (__value__ == (3526460i32)) {
                        _p_3526468._flags = _flags;
                        _p_3526468._wholeRegexp = _s?.__copy__();
                        _t_3526580 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3526588i32;
                    } else if (__value__ == (3526588i32)) {
                        if (_t_3526580 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3526600i32;
                        } else {
                            _gotoNext = 3529990i32;
                        };
                    } else if (__value__ == (3526600i32)) {
                        _repeat_3526604 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3526618i32;
                    } else if (__value__ == (3526618i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3526631i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3526580[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3526744i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527014i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527111i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527207i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527322i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527452i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527566i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527648i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3527949i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3528505i32;
                                } else {
                                    _gotoNext = 3526647i32;
                                };
                            };
                        } else {
                            _gotoNext = 3529965i32;
                        };
                    } else if (__value__ == (3526647i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3526580?.__copy__());
                                _c_3526488 = @:tmpset0 __tmp__._0;
                                _t_3526580 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3526698i32;
                            } else {
                                _gotoNext = 3526728i32;
                            };
                        };
                    } else if (__value__ == (3526698i32)) {
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
                        _gotoNext = 3526728i32;
                    } else if (__value__ == (3526728i32)) {
                        @:check2 _p_3526468._literal(_c_3526488);
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3526744i32)) {
                        if ((((_p_3526468._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3526580.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3526580[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3526809i32;
                        } else {
                            _gotoNext = 3526952i32;
                        };
                    } else if (__value__ == (3526809i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3526468._parsePerlFlags(_t_3526580?.__copy__());
                                _t_3526580 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3526905i32;
                            } else {
                                _gotoNext = 3526938i32;
                            };
                        };
                    } else if (__value__ == (3526905i32)) {
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
                        _gotoNext = 3526938i32;
                    } else if (__value__ == (3526938i32)) {
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3526952i32)) {
                        _p_3526468._numCap++;
                        @:check2 _p_3526468._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3526468._numCap;
                        _t_3526580 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527014i32)) {
                        {
                            _err = @:check2 _p_3526468._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3527069i32;
                            } else {
                                _gotoNext = 3527099i32;
                            };
                        };
                    } else if (__value__ == (3527069i32)) {
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
                        _gotoNext = 3527099i32;
                    } else if (__value__ == (3527099i32)) {
                        _t_3526580 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527111i32)) {
                        {
                            _err = @:check2 _p_3526468._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3527165i32;
                            } else {
                                _gotoNext = 3527195i32;
                            };
                        };
                    } else if (__value__ == (3527165i32)) {
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
                        _gotoNext = 3527195i32;
                    } else if (__value__ == (3527195i32)) {
                        _t_3526580 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527207i32)) {
                        if ((_p_3526468._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3527244i32;
                        } else {
                            _gotoNext = 3527278i32;
                        };
                    } else if (__value__ == (3527244i32)) {
                        @:check2 _p_3526468._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3527310i32;
                    } else if (__value__ == (3527278i32)) {
                        _gotoNext = 3527278i32;
                        @:check2 _p_3526468._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3527310i32;
                    } else if (__value__ == (3527310i32)) {
                        _t_3526580 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527322i32)) {
                        if ((_p_3526468._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3527359i32;
                        } else {
                            _gotoNext = 3527410i32;
                        };
                    } else if (__value__ == (3527359i32)) {
                        {
                            final __t__ = @:check2 _p_3526468._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3527440i32;
                    } else if (__value__ == (3527410i32)) {
                        _gotoNext = 3527410i32;
                        @:check2 _p_3526468._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3527440i32;
                    } else if (__value__ == (3527440i32)) {
                        _t_3526580 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527452i32)) {
                        if ((_p_3526468._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3527487i32;
                        } else {
                            _gotoNext = 3527519i32;
                        };
                    } else if (__value__ == (3527487i32)) {
                        @:check2 _p_3526468._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3527554i32;
                    } else if (__value__ == (3527519i32)) {
                        _gotoNext = 3527519i32;
                        @:check2 _p_3526468._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3527554i32;
                    } else if (__value__ == (3527554i32)) {
                        _t_3526580 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527566i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3526468._parseClass(_t_3526580?.__copy__());
                                _t_3526580 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3527619i32;
                            } else {
                                _gotoNext = 3529965i32;
                            };
                        };
                    } else if (__value__ == (3527619i32)) {
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
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527648i32)) {
                        _before_3527671 = _t_3526580?.__copy__();
                        _gotoNext = 3527686i32;
                    } else if (__value__ == (3527686i32)) {
                        {
                            final __value__ = _t_3526580[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3527703i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3527732i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3527761i32;
                            } else {
                                _gotoNext = 3527796i32;
                            };
                        };
                    } else if (__value__ == (3527703i32)) {
                        _op_3526506 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3527796i32;
                    } else if (__value__ == (3527732i32)) {
                        _op_3526506 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3527796i32;
                    } else if (__value__ == (3527761i32)) {
                        _op_3526506 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3527796i32;
                    } else if (__value__ == (3527796i32)) {
                        _after_3527796 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3526468._repeat(_op_3526506, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3527671?.__copy__(), _after_3527796?.__copy__(), _lastRepeat_3526522?.__copy__());
                                _after_3527796 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3527888i32;
                            } else {
                                _gotoNext = 3527918i32;
                            };
                        };
                    } else if (__value__ == (3527888i32)) {
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
                        _gotoNext = 3527918i32;
                    } else if (__value__ == (3527918i32)) {
                        _repeat_3526604 = _before_3527671?.__copy__();
                        _t_3526580 = _after_3527796?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3527949i32)) {
                        _op_3526506 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3527979 = _t_3526580?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3526468._parseRepeat(_t_3526580?.__copy__());
                            _min_3527994 = @:tmpset0 __tmp__._0;
                            _max_3527999 = @:tmpset0 __tmp__._1;
                            _after_3528004 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3528011 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3528011) {
                            _gotoNext = 3528044i32;
                        } else {
                            _gotoNext = 3528152i32;
                        };
                    } else if (__value__ == (3528044i32)) {
                        @:check2 _p_3526468._literal((123 : stdgo.GoInt32));
                        _t_3526580 = (_t_3526580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3528152i32)) {
                        if (((((_min_3527994 < (0 : stdgo.GoInt) : Bool) || (_min_3527994 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3527999 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3527999 >= (0 : stdgo.GoInt) : Bool) && (_min_3527994 > _max_3527999 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3528216i32;
                        } else {
                            _gotoNext = 3528366i32;
                        };
                    } else if (__value__ == (3528216i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3527979.__slice__(0, ((_before_3527979.length) - (_after_3528004.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3528366i32;
                    } else if (__value__ == (3528366i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3526468._repeat(_op_3526506, _min_3527994, _max_3527999, _before_3527979?.__copy__(), _after_3528004?.__copy__(), _lastRepeat_3526522?.__copy__());
                                _after_3528004 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3528444i32;
                            } else {
                                _gotoNext = 3528474i32;
                            };
                        };
                    } else if (__value__ == (3528444i32)) {
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
                        _gotoNext = 3528474i32;
                    } else if (__value__ == (3528474i32)) {
                        _repeat_3526604 = _before_3527979?.__copy__();
                        _t_3526580 = _after_3528004?.__copy__();
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3528505i32)) {
                        if ((((_p_3526468._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3526580.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3528556i32;
                        } else {
                            _gotoNext = 3529280i32;
                        };
                    } else if (__value__ == (3528556i32)) {
                        _gotoNext = 3528562i32;
                    } else if (__value__ == (3528562i32)) {
                        {
                            final __value__ = _t_3526580[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3528580i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3528653i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3528729i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3528807i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3528902i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3529198i32;
                            } else {
                                _gotoNext = 3529280i32;
                            };
                        };
                    } else if (__value__ == (3528580i32)) {
                        @:check2 _p_3526468._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3526580 = (_t_3526580.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3528653i32)) {
                        @:check2 _p_3526468._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3526580 = (_t_3526580.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3528729i32)) {
                        @:check2 _p_3526468._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3526580 = (_t_3526580.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3528807i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3526580.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3529280i32;
                    } else if (__value__ == (3528902i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3526580.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3528967 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3526580 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3529025i32;
                    } else if (__value__ == (3529025i32)) {
                        if (_lit_3528967 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3529039i32;
                        } else {
                            _gotoNext = 3529178i32;
                        };
                    } else if (__value__ == (3529039i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3528967?.__copy__());
                            _c_3529047 = @:tmpset0 __tmp__._0;
                            _rest_3529050 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3529056 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3529056 != null) {
                            _gotoNext = 3529097i32;
                        } else {
                            _gotoNext = 3529136i32;
                        };
                    } else if (__value__ == (3529097i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3529056 };
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
                        _gotoNext = 3529136i32;
                    } else if (__value__ == (3529136i32)) {
                        @:check2 _p_3526468._literal(_c_3529047);
                        _lit_3528967 = _rest_3529050?.__copy__();
                        _gotoNext = 3529025i32;
                    } else if (__value__ == (3529178i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3529198i32)) {
                        @:check2 _p_3526468._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3526580 = (_t_3526580.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3529280i32)) {
                        _re_3529280 = @:check2 _p_3526468._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3529280 ?? throw "null pointer dereference").flags = _p_3526468._flags;
                        if ((((_t_3526580.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3526580[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3526580[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3529436i32;
                        } else {
                            _gotoNext = 3529678i32;
                        };
                    } else if (__value__ == (3529436i32)) {
                        {
                            var __tmp__ = @:check2 _p_3526468._parseUnicodeClass(_t_3526580?.__copy__(), ((@:checkr _re_3529280 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3529442 = @:tmpset0 __tmp__._0;
                            _rest_3529445 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3529451 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3529451 != null) {
                            _gotoNext = 3529513i32;
                        } else {
                            _gotoNext = 3529546i32;
                        };
                    } else if (__value__ == (3529513i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3529451 };
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
                        _gotoNext = 3529546i32;
                    } else if (__value__ == (3529546i32)) {
                        if (_r_3529442 != null) {
                            _gotoNext = 3529558i32;
                        } else {
                            _gotoNext = 3529678i32;
                        };
                    } else if (__value__ == (3529558i32)) {
                        (@:checkr _re_3529280 ?? throw "null pointer dereference").rune = _r_3529442;
                        _t_3526580 = _rest_3529445?.__copy__();
                        @:check2 _p_3526468._push(_re_3529280);
                        bigSwitchBreak = true;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3529678i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3526468._parsePerlClassEscape(_t_3526580?.__copy__(), ((@:checkr _re_3529280 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3529681 = @:tmpset0 __tmp__._0;
                                _rest_3529684 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3529681 != null) {
                                _gotoNext = 3529742i32;
                            } else {
                                _gotoNext = 3529816i32;
                            };
                        };
                    } else if (__value__ == (3529742i32)) {
                        (@:checkr _re_3529280 ?? throw "null pointer dereference").rune = _r_3529681;
                        _t_3526580 = _rest_3529684?.__copy__();
                        @:check2 _p_3526468._push(_re_3529280);
                        bigSwitchBreak = true;
                        _gotoNext = 3526631i32;
                    } else if (__value__ == (3529816i32)) {
                        @:check2 _p_3526468._reuse(_re_3529280);
                        {
                            {
                                var __tmp__ = @:check2 _p_3526468._parseEscape(_t_3526580?.__copy__());
                                _c_3526488 = @:tmpset0 __tmp__._0;
                                _t_3526580 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3529916i32;
                            } else {
                                _gotoNext = 3529946i32;
                            };
                        };
                    } else if (__value__ == (3529916i32)) {
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
                        _gotoNext = 3529946i32;
                    } else if (__value__ == (3529946i32)) {
                        @:check2 _p_3526468._literal(_c_3526488);
                        _gotoNext = 3529965i32;
                    } else if (__value__ == (3529965i32)) {
                        _lastRepeat_3526522 = _repeat_3526604?.__copy__();
                        _gotoNext = 3526588i32;
                    } else if (__value__ == (3529990i32)) {
                        @:check2 _p_3526468._concat();
                        if (@:check2 _p_3526468._swapVerticalBar()) {
                            _gotoNext = 3530025i32;
                        } else {
                            _gotoNext = 3530090i32;
                        };
                    } else if (__value__ == (3530025i32)) {
                        _p_3526468._stack = (_p_3526468._stack.__slice__(0, ((_p_3526468._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3530090i32;
                    } else if (__value__ == (3530090i32)) {
                        @:check2 _p_3526468._alternate();
                        _n_3530106 = (_p_3526468._stack.length);
                        if (_n_3530106 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3530135i32;
                        } else {
                            _gotoNext = 3530182i32;
                        };
                    } else if (__value__ == (3530135i32)) {
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
                        _gotoNext = 3530182i32;
                    } else if (__value__ == (3530182i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3526468._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
