package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _p_3456998:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _rest_3459975:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3458509:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3460211:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3459981:stdgo.Error = (null : stdgo.Error);
            var _err_3459586:stdgo.Error = (null : stdgo.Error);
            var _c_3459577:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3458529:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3458524:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3457052:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3457018:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_3459810:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _after_3458534:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3460636:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3459580:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3457036:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var bigSwitchBreak = false;
            var _rest_3460214:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3459972:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3459497:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3457110:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3456856:stdgo.Error = (null : stdgo.Error);
            var _after_3458326:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3457134:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3458201:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3458541:Bool = false;
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
                            _gotoNext = 3456809i32;
                        } else {
                            _gotoNext = 3456990i32;
                        };
                    } else if (__value__ == (3456809i32)) {
                        {
                            _err_3456856 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3456856 != null) {
                                _gotoNext = 3456888i32;
                            } else {
                                _gotoNext = 3456915i32;
                            };
                        };
                    } else if (__value__ == (3456888i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3456856 };
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
                        _gotoNext = 3456915i32;
                    } else if (__value__ == (3456915i32)) {
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
                        _gotoNext = 3456990i32;
                    } else if (__value__ == (3456990i32)) {
                        _p_3456998._flags = _flags;
                        _p_3456998._wholeRegexp = _s?.__copy__();
                        _t_3457110 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3457118i32;
                    } else if (__value__ == (3457118i32)) {
                        if (_t_3457110 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3457130i32;
                        } else {
                            _gotoNext = 3460520i32;
                        };
                    } else if (__value__ == (3457130i32)) {
                        _repeat_3457134 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3457148i32;
                    } else if (__value__ == (3457148i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3457161i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3457110[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3457274i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3457544i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3457641i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3457737i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3457852i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3457982i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3458096i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3458178i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3458479i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3459035i32;
                                } else {
                                    _gotoNext = 3457177i32;
                                };
                            };
                        } else {
                            _gotoNext = 3460495i32;
                        };
                    } else if (__value__ == (3457177i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3457110?.__copy__());
                                _c_3457018 = @:tmpset0 __tmp__._0;
                                _t_3457110 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3457228i32;
                            } else {
                                _gotoNext = 3457258i32;
                            };
                        };
                    } else if (__value__ == (3457228i32)) {
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
                        _gotoNext = 3457258i32;
                    } else if (__value__ == (3457258i32)) {
                        @:check2 _p_3456998._literal(_c_3457018);
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3457274i32)) {
                        if ((((_p_3456998._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3457110.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3457110[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3457339i32;
                        } else {
                            _gotoNext = 3457482i32;
                        };
                    } else if (__value__ == (3457339i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3456998._parsePerlFlags(_t_3457110?.__copy__());
                                _t_3457110 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3457435i32;
                            } else {
                                _gotoNext = 3457468i32;
                            };
                        };
                    } else if (__value__ == (3457435i32)) {
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
                        _gotoNext = 3457468i32;
                    } else if (__value__ == (3457468i32)) {
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3457482i32)) {
                        _p_3456998._numCap++;
                        @:check2 _p_3456998._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3456998._numCap;
                        _t_3457110 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3457544i32)) {
                        {
                            _err = @:check2 _p_3456998._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3457599i32;
                            } else {
                                _gotoNext = 3457629i32;
                            };
                        };
                    } else if (__value__ == (3457599i32)) {
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
                        _gotoNext = 3457629i32;
                    } else if (__value__ == (3457629i32)) {
                        _t_3457110 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3457641i32)) {
                        {
                            _err = @:check2 _p_3456998._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3457695i32;
                            } else {
                                _gotoNext = 3457725i32;
                            };
                        };
                    } else if (__value__ == (3457695i32)) {
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
                        _gotoNext = 3457725i32;
                    } else if (__value__ == (3457725i32)) {
                        _t_3457110 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3457737i32)) {
                        if ((_p_3456998._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3457774i32;
                        } else {
                            _gotoNext = 3457808i32;
                        };
                    } else if (__value__ == (3457774i32)) {
                        @:check2 _p_3456998._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3457840i32;
                    } else if (__value__ == (3457808i32)) {
                        _gotoNext = 3457808i32;
                        @:check2 _p_3456998._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3457840i32;
                    } else if (__value__ == (3457840i32)) {
                        _t_3457110 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3457852i32)) {
                        if ((_p_3456998._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3457889i32;
                        } else {
                            _gotoNext = 3457940i32;
                        };
                    } else if (__value__ == (3457889i32)) {
                        {
                            final __t__ = @:check2 _p_3456998._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3457970i32;
                    } else if (__value__ == (3457940i32)) {
                        _gotoNext = 3457940i32;
                        @:check2 _p_3456998._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3457970i32;
                    } else if (__value__ == (3457970i32)) {
                        _t_3457110 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3457982i32)) {
                        if ((_p_3456998._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3458017i32;
                        } else {
                            _gotoNext = 3458049i32;
                        };
                    } else if (__value__ == (3458017i32)) {
                        @:check2 _p_3456998._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3458084i32;
                    } else if (__value__ == (3458049i32)) {
                        _gotoNext = 3458049i32;
                        @:check2 _p_3456998._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3458084i32;
                    } else if (__value__ == (3458084i32)) {
                        _t_3457110 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3458096i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3456998._parseClass(_t_3457110?.__copy__());
                                _t_3457110 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3458149i32;
                            } else {
                                _gotoNext = 3460495i32;
                            };
                        };
                    } else if (__value__ == (3458149i32)) {
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
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3458178i32)) {
                        _before_3458201 = _t_3457110?.__copy__();
                        _gotoNext = 3458216i32;
                    } else if (__value__ == (3458216i32)) {
                        {
                            final __value__ = _t_3457110[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3458233i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3458262i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3458291i32;
                            } else {
                                _gotoNext = 3458326i32;
                            };
                        };
                    } else if (__value__ == (3458233i32)) {
                        _op_3457036 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3458326i32;
                    } else if (__value__ == (3458262i32)) {
                        _op_3457036 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3458326i32;
                    } else if (__value__ == (3458291i32)) {
                        _op_3457036 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3458326i32;
                    } else if (__value__ == (3458326i32)) {
                        _after_3458326 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3456998._repeat(_op_3457036, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3458201?.__copy__(), _after_3458326?.__copy__(), _lastRepeat_3457052?.__copy__());
                                _after_3458326 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3458418i32;
                            } else {
                                _gotoNext = 3458448i32;
                            };
                        };
                    } else if (__value__ == (3458418i32)) {
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
                        _gotoNext = 3458448i32;
                    } else if (__value__ == (3458448i32)) {
                        _repeat_3457134 = _before_3458201?.__copy__();
                        _t_3457110 = _after_3458326?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3458479i32)) {
                        _op_3457036 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3458509 = _t_3457110?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3456998._parseRepeat(_t_3457110?.__copy__());
                            _min_3458524 = @:tmpset0 __tmp__._0;
                            _max_3458529 = @:tmpset0 __tmp__._1;
                            _after_3458534 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3458541 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3458541) {
                            _gotoNext = 3458574i32;
                        } else {
                            _gotoNext = 3458682i32;
                        };
                    } else if (__value__ == (3458574i32)) {
                        @:check2 _p_3456998._literal((123 : stdgo.GoInt32));
                        _t_3457110 = (_t_3457110.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3458682i32)) {
                        if (((((_min_3458524 < (0 : stdgo.GoInt) : Bool) || (_min_3458524 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3458529 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3458529 >= (0 : stdgo.GoInt) : Bool) && (_min_3458524 > _max_3458529 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3458746i32;
                        } else {
                            _gotoNext = 3458896i32;
                        };
                    } else if (__value__ == (3458746i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3458509.__slice__(0, ((_before_3458509.length) - (_after_3458534.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3458896i32;
                    } else if (__value__ == (3458896i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3456998._repeat(_op_3457036, _min_3458524, _max_3458529, _before_3458509?.__copy__(), _after_3458534?.__copy__(), _lastRepeat_3457052?.__copy__());
                                _after_3458534 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3458974i32;
                            } else {
                                _gotoNext = 3459004i32;
                            };
                        };
                    } else if (__value__ == (3458974i32)) {
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
                        _gotoNext = 3459004i32;
                    } else if (__value__ == (3459004i32)) {
                        _repeat_3457134 = _before_3458509?.__copy__();
                        _t_3457110 = _after_3458534?.__copy__();
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3459035i32)) {
                        if ((((_p_3456998._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3457110.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3459086i32;
                        } else {
                            _gotoNext = 3459810i32;
                        };
                    } else if (__value__ == (3459086i32)) {
                        _gotoNext = 3459092i32;
                    } else if (__value__ == (3459092i32)) {
                        {
                            final __value__ = _t_3457110[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3459110i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3459183i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3459259i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3459337i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3459432i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3459728i32;
                            } else {
                                _gotoNext = 3459810i32;
                            };
                        };
                    } else if (__value__ == (3459110i32)) {
                        @:check2 _p_3456998._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3457110 = (_t_3457110.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3459183i32)) {
                        @:check2 _p_3456998._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3457110 = (_t_3457110.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3459259i32)) {
                        @:check2 _p_3456998._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3457110 = (_t_3457110.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3459337i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3457110.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3459810i32;
                    } else if (__value__ == (3459432i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3457110.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3459497 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3457110 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3459555i32;
                    } else if (__value__ == (3459555i32)) {
                        if (_lit_3459497 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3459569i32;
                        } else {
                            _gotoNext = 3459708i32;
                        };
                    } else if (__value__ == (3459569i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3459497?.__copy__());
                            _c_3459577 = @:tmpset0 __tmp__._0;
                            _rest_3459580 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3459586 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3459586 != null) {
                            _gotoNext = 3459627i32;
                        } else {
                            _gotoNext = 3459666i32;
                        };
                    } else if (__value__ == (3459627i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3459586 };
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
                        _gotoNext = 3459666i32;
                    } else if (__value__ == (3459666i32)) {
                        @:check2 _p_3456998._literal(_c_3459577);
                        _lit_3459497 = _rest_3459580?.__copy__();
                        _gotoNext = 3459555i32;
                    } else if (__value__ == (3459708i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3459728i32)) {
                        @:check2 _p_3456998._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3457110 = (_t_3457110.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3459810i32)) {
                        _re_3459810 = @:check2 _p_3456998._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3459810 ?? throw "null pointer dereference").flags = _p_3456998._flags;
                        if ((((_t_3457110.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3457110[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3457110[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3459966i32;
                        } else {
                            _gotoNext = 3460208i32;
                        };
                    } else if (__value__ == (3459966i32)) {
                        {
                            var __tmp__ = @:check2 _p_3456998._parseUnicodeClass(_t_3457110?.__copy__(), ((@:checkr _re_3459810 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3459972 = @:tmpset0 __tmp__._0;
                            _rest_3459975 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3459981 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3459981 != null) {
                            _gotoNext = 3460043i32;
                        } else {
                            _gotoNext = 3460076i32;
                        };
                    } else if (__value__ == (3460043i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3459981 };
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
                        _gotoNext = 3460076i32;
                    } else if (__value__ == (3460076i32)) {
                        if (_r_3459972 != null) {
                            _gotoNext = 3460088i32;
                        } else {
                            _gotoNext = 3460208i32;
                        };
                    } else if (__value__ == (3460088i32)) {
                        (@:checkr _re_3459810 ?? throw "null pointer dereference").rune = _r_3459972;
                        _t_3457110 = _rest_3459975?.__copy__();
                        @:check2 _p_3456998._push(_re_3459810);
                        bigSwitchBreak = true;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3460208i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3456998._parsePerlClassEscape(_t_3457110?.__copy__(), ((@:checkr _re_3459810 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3460211 = @:tmpset0 __tmp__._0;
                                _rest_3460214 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3460211 != null) {
                                _gotoNext = 3460272i32;
                            } else {
                                _gotoNext = 3460346i32;
                            };
                        };
                    } else if (__value__ == (3460272i32)) {
                        (@:checkr _re_3459810 ?? throw "null pointer dereference").rune = _r_3460211;
                        _t_3457110 = _rest_3460214?.__copy__();
                        @:check2 _p_3456998._push(_re_3459810);
                        bigSwitchBreak = true;
                        _gotoNext = 3457161i32;
                    } else if (__value__ == (3460346i32)) {
                        @:check2 _p_3456998._reuse(_re_3459810);
                        {
                            {
                                var __tmp__ = @:check2 _p_3456998._parseEscape(_t_3457110?.__copy__());
                                _c_3457018 = @:tmpset0 __tmp__._0;
                                _t_3457110 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3460446i32;
                            } else {
                                _gotoNext = 3460476i32;
                            };
                        };
                    } else if (__value__ == (3460446i32)) {
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
                        _gotoNext = 3460476i32;
                    } else if (__value__ == (3460476i32)) {
                        @:check2 _p_3456998._literal(_c_3457018);
                        _gotoNext = 3460495i32;
                    } else if (__value__ == (3460495i32)) {
                        _lastRepeat_3457052 = _repeat_3457134?.__copy__();
                        _gotoNext = 3457118i32;
                    } else if (__value__ == (3460520i32)) {
                        @:check2 _p_3456998._concat();
                        if (@:check2 _p_3456998._swapVerticalBar()) {
                            _gotoNext = 3460555i32;
                        } else {
                            _gotoNext = 3460620i32;
                        };
                    } else if (__value__ == (3460555i32)) {
                        _p_3456998._stack = (_p_3456998._stack.__slice__(0, ((_p_3456998._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3460620i32;
                    } else if (__value__ == (3460620i32)) {
                        @:check2 _p_3456998._alternate();
                        _n_3460636 = (_p_3456998._stack.length);
                        if (_n_3460636 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3460665i32;
                        } else {
                            _gotoNext = 3460712i32;
                        };
                    } else if (__value__ == (3460665i32)) {
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
                        _gotoNext = 3460712i32;
                    } else if (__value__ == (3460712i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3456998._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
