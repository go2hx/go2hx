package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _repeat_3284996:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3287672:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _ok_3286403:Bool = false;
            var _before_3286063:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3284860:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _rest_3288076:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3287448:stdgo.Error = (null : stdgo.Error);
            var _c_3287439:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3286391:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3284914:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3287843:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _r_3287834:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3286188:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3288498:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3288073:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3287442:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3286396:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3287359:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3287837:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3284880:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3286386:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3286371:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3284972:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3284898:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_3284718:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3284671i32;
                        } else {
                            _gotoNext = 3284852i32;
                        };
                    } else if (__value__ == (3284671i32)) {
                        {
                            _err_3284718 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3284718 != null) {
                                _gotoNext = 3284750i32;
                            } else {
                                _gotoNext = 3284777i32;
                            };
                        };
                    } else if (__value__ == (3284750i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3284718 };
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
                        _gotoNext = 3284777i32;
                    } else if (__value__ == (3284777i32)) {
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
                        _gotoNext = 3284852i32;
                    } else if (__value__ == (3284852i32)) {
                        _p_3284860._flags = _flags;
                        _p_3284860._wholeRegexp = _s?.__copy__();
                        _t_3284972 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3284980i32;
                    } else if (__value__ == (3284980i32)) {
                        if (_t_3284972 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3284992i32;
                        } else {
                            _gotoNext = 3288382i32;
                        };
                    } else if (__value__ == (3284992i32)) {
                        _repeat_3284996 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3285010i32;
                    } else if (__value__ == (3285010i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3285023i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3284972[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285136i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285406i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285503i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285599i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285714i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285844i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285958i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286040i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286341i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286897i32;
                                } else {
                                    _gotoNext = 3285039i32;
                                };
                            };
                        } else {
                            _gotoNext = 3288357i32;
                        };
                    } else if (__value__ == (3285039i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3284972?.__copy__());
                                _c_3284880 = @:tmpset0 __tmp__._0;
                                _t_3284972 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3285090i32;
                            } else {
                                _gotoNext = 3285120i32;
                            };
                        };
                    } else if (__value__ == (3285090i32)) {
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
                        _gotoNext = 3285120i32;
                    } else if (__value__ == (3285120i32)) {
                        @:check2 _p_3284860._literal(_c_3284880);
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285136i32)) {
                        if ((((_p_3284860._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3284972.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3284972[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3285201i32;
                        } else {
                            _gotoNext = 3285344i32;
                        };
                    } else if (__value__ == (3285201i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3284860._parsePerlFlags(_t_3284972?.__copy__());
                                _t_3284972 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3285297i32;
                            } else {
                                _gotoNext = 3285330i32;
                            };
                        };
                    } else if (__value__ == (3285297i32)) {
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
                        _gotoNext = 3285330i32;
                    } else if (__value__ == (3285330i32)) {
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285344i32)) {
                        _p_3284860._numCap++;
                        @:check2 _p_3284860._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3284860._numCap;
                        _t_3284972 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285406i32)) {
                        {
                            _err = @:check2 _p_3284860._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3285461i32;
                            } else {
                                _gotoNext = 3285491i32;
                            };
                        };
                    } else if (__value__ == (3285461i32)) {
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
                        _gotoNext = 3285491i32;
                    } else if (__value__ == (3285491i32)) {
                        _t_3284972 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285503i32)) {
                        {
                            _err = @:check2 _p_3284860._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3285557i32;
                            } else {
                                _gotoNext = 3285587i32;
                            };
                        };
                    } else if (__value__ == (3285557i32)) {
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
                        _gotoNext = 3285587i32;
                    } else if (__value__ == (3285587i32)) {
                        _t_3284972 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285599i32)) {
                        if ((_p_3284860._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285636i32;
                        } else {
                            _gotoNext = 3285670i32;
                        };
                    } else if (__value__ == (3285636i32)) {
                        @:check2 _p_3284860._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3285702i32;
                    } else if (__value__ == (3285670i32)) {
                        _gotoNext = 3285670i32;
                        @:check2 _p_3284860._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3285702i32;
                    } else if (__value__ == (3285702i32)) {
                        _t_3284972 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285714i32)) {
                        if ((_p_3284860._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285751i32;
                        } else {
                            _gotoNext = 3285802i32;
                        };
                    } else if (__value__ == (3285751i32)) {
                        {
                            final __t__ = @:check2 _p_3284860._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3285832i32;
                    } else if (__value__ == (3285802i32)) {
                        _gotoNext = 3285802i32;
                        @:check2 _p_3284860._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3285832i32;
                    } else if (__value__ == (3285832i32)) {
                        _t_3284972 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285844i32)) {
                        if ((_p_3284860._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285879i32;
                        } else {
                            _gotoNext = 3285911i32;
                        };
                    } else if (__value__ == (3285879i32)) {
                        @:check2 _p_3284860._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3285946i32;
                    } else if (__value__ == (3285911i32)) {
                        _gotoNext = 3285911i32;
                        @:check2 _p_3284860._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3285946i32;
                    } else if (__value__ == (3285946i32)) {
                        _t_3284972 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3285958i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3284860._parseClass(_t_3284972?.__copy__());
                                _t_3284972 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286011i32;
                            } else {
                                _gotoNext = 3288357i32;
                            };
                        };
                    } else if (__value__ == (3286011i32)) {
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
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3286040i32)) {
                        _before_3286063 = _t_3284972?.__copy__();
                        _gotoNext = 3286078i32;
                    } else if (__value__ == (3286078i32)) {
                        {
                            final __value__ = _t_3284972[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3286095i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3286124i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3286153i32;
                            } else {
                                _gotoNext = 3286188i32;
                            };
                        };
                    } else if (__value__ == (3286095i32)) {
                        _op_3284898 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286188i32;
                    } else if (__value__ == (3286124i32)) {
                        _op_3284898 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286188i32;
                    } else if (__value__ == (3286153i32)) {
                        _op_3284898 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286188i32;
                    } else if (__value__ == (3286188i32)) {
                        _after_3286188 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3284860._repeat(_op_3284898, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3286063?.__copy__(), _after_3286188?.__copy__(), _lastRepeat_3284914?.__copy__());
                                _after_3286188 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286280i32;
                            } else {
                                _gotoNext = 3286310i32;
                            };
                        };
                    } else if (__value__ == (3286280i32)) {
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
                        _gotoNext = 3286310i32;
                    } else if (__value__ == (3286310i32)) {
                        _repeat_3284996 = _before_3286063?.__copy__();
                        _t_3284972 = _after_3286188?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3286341i32)) {
                        _op_3284898 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3286371 = _t_3284972?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3284860._parseRepeat(_t_3284972?.__copy__());
                            _min_3286386 = @:tmpset0 __tmp__._0;
                            _max_3286391 = @:tmpset0 __tmp__._1;
                            _after_3286396 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3286403 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3286403) {
                            _gotoNext = 3286436i32;
                        } else {
                            _gotoNext = 3286544i32;
                        };
                    } else if (__value__ == (3286436i32)) {
                        @:check2 _p_3284860._literal((123 : stdgo.GoInt32));
                        _t_3284972 = (_t_3284972.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3286544i32)) {
                        if (((((_min_3286386 < (0 : stdgo.GoInt) : Bool) || (_min_3286386 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3286391 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3286391 >= (0 : stdgo.GoInt) : Bool) && (_min_3286386 > _max_3286391 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3286608i32;
                        } else {
                            _gotoNext = 3286758i32;
                        };
                    } else if (__value__ == (3286608i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3286371.__slice__(0, ((_before_3286371.length) - (_after_3286396.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3286758i32;
                    } else if (__value__ == (3286758i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3284860._repeat(_op_3284898, _min_3286386, _max_3286391, _before_3286371?.__copy__(), _after_3286396?.__copy__(), _lastRepeat_3284914?.__copy__());
                                _after_3286396 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286836i32;
                            } else {
                                _gotoNext = 3286866i32;
                            };
                        };
                    } else if (__value__ == (3286836i32)) {
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
                        _gotoNext = 3286866i32;
                    } else if (__value__ == (3286866i32)) {
                        _repeat_3284996 = _before_3286371?.__copy__();
                        _t_3284972 = _after_3286396?.__copy__();
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3286897i32)) {
                        if ((((_p_3284860._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3284972.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3286948i32;
                        } else {
                            _gotoNext = 3287672i32;
                        };
                    } else if (__value__ == (3286948i32)) {
                        _gotoNext = 3286954i32;
                    } else if (__value__ == (3286954i32)) {
                        {
                            final __value__ = _t_3284972[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3286972i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3287045i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3287121i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3287199i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3287294i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3287590i32;
                            } else {
                                _gotoNext = 3287672i32;
                            };
                        };
                    } else if (__value__ == (3286972i32)) {
                        @:check2 _p_3284860._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3284972 = (_t_3284972.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3287045i32)) {
                        @:check2 _p_3284860._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3284972 = (_t_3284972.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3287121i32)) {
                        @:check2 _p_3284860._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3284972 = (_t_3284972.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3287199i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3284972.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3287672i32;
                    } else if (__value__ == (3287294i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3284972.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3287359 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3284972 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3287417i32;
                    } else if (__value__ == (3287417i32)) {
                        if (_lit_3287359 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3287431i32;
                        } else {
                            _gotoNext = 3287570i32;
                        };
                    } else if (__value__ == (3287431i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3287359?.__copy__());
                            _c_3287439 = @:tmpset0 __tmp__._0;
                            _rest_3287442 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3287448 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3287448 != null) {
                            _gotoNext = 3287489i32;
                        } else {
                            _gotoNext = 3287528i32;
                        };
                    } else if (__value__ == (3287489i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3287448 };
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
                        _gotoNext = 3287528i32;
                    } else if (__value__ == (3287528i32)) {
                        @:check2 _p_3284860._literal(_c_3287439);
                        _lit_3287359 = _rest_3287442?.__copy__();
                        _gotoNext = 3287417i32;
                    } else if (__value__ == (3287570i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3287590i32)) {
                        @:check2 _p_3284860._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3284972 = (_t_3284972.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3287672i32)) {
                        _re_3287672 = @:check2 _p_3284860._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3287672 ?? throw "null pointer dereference").flags = _p_3284860._flags;
                        if ((((_t_3284972.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3284972[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3284972[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3287828i32;
                        } else {
                            _gotoNext = 3288070i32;
                        };
                    } else if (__value__ == (3287828i32)) {
                        {
                            var __tmp__ = @:check2 _p_3284860._parseUnicodeClass(_t_3284972?.__copy__(), ((@:checkr _re_3287672 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3287834 = @:tmpset0 __tmp__._0;
                            _rest_3287837 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3287843 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3287843 != null) {
                            _gotoNext = 3287905i32;
                        } else {
                            _gotoNext = 3287938i32;
                        };
                    } else if (__value__ == (3287905i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3287843 };
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
                        _gotoNext = 3287938i32;
                    } else if (__value__ == (3287938i32)) {
                        if (_r_3287834 != null) {
                            _gotoNext = 3287950i32;
                        } else {
                            _gotoNext = 3288070i32;
                        };
                    } else if (__value__ == (3287950i32)) {
                        (@:checkr _re_3287672 ?? throw "null pointer dereference").rune = _r_3287834;
                        _t_3284972 = _rest_3287837?.__copy__();
                        @:check2 _p_3284860._push(_re_3287672);
                        bigSwitchBreak = true;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3288070i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3284860._parsePerlClassEscape(_t_3284972?.__copy__(), ((@:checkr _re_3287672 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3288073 = @:tmpset0 __tmp__._0;
                                _rest_3288076 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3288073 != null) {
                                _gotoNext = 3288134i32;
                            } else {
                                _gotoNext = 3288208i32;
                            };
                        };
                    } else if (__value__ == (3288134i32)) {
                        (@:checkr _re_3287672 ?? throw "null pointer dereference").rune = _r_3288073;
                        _t_3284972 = _rest_3288076?.__copy__();
                        @:check2 _p_3284860._push(_re_3287672);
                        bigSwitchBreak = true;
                        _gotoNext = 3285023i32;
                    } else if (__value__ == (3288208i32)) {
                        @:check2 _p_3284860._reuse(_re_3287672);
                        {
                            {
                                var __tmp__ = @:check2 _p_3284860._parseEscape(_t_3284972?.__copy__());
                                _c_3284880 = @:tmpset0 __tmp__._0;
                                _t_3284972 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3288308i32;
                            } else {
                                _gotoNext = 3288338i32;
                            };
                        };
                    } else if (__value__ == (3288308i32)) {
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
                        _gotoNext = 3288338i32;
                    } else if (__value__ == (3288338i32)) {
                        @:check2 _p_3284860._literal(_c_3284880);
                        _gotoNext = 3288357i32;
                    } else if (__value__ == (3288357i32)) {
                        _lastRepeat_3284914 = _repeat_3284996?.__copy__();
                        _gotoNext = 3284980i32;
                    } else if (__value__ == (3288382i32)) {
                        @:check2 _p_3284860._concat();
                        if (@:check2 _p_3284860._swapVerticalBar()) {
                            _gotoNext = 3288417i32;
                        } else {
                            _gotoNext = 3288482i32;
                        };
                    } else if (__value__ == (3288417i32)) {
                        _p_3284860._stack = (_p_3284860._stack.__slice__(0, ((_p_3284860._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3288482i32;
                    } else if (__value__ == (3288482i32)) {
                        @:check2 _p_3284860._alternate();
                        _n_3288498 = (_p_3284860._stack.length);
                        if (_n_3288498 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3288527i32;
                        } else {
                            _gotoNext = 3288574i32;
                        };
                    } else if (__value__ == (3288527i32)) {
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
                        _gotoNext = 3288574i32;
                    } else if (__value__ == (3288574i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3284860._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
