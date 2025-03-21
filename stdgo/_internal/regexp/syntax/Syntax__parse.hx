package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _re_18:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _err_21:stdgo.Error = (null : stdgo.Error);
            var _err_17:stdgo.Error = (null : stdgo.Error);
            var _c_15:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _t_5:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_23:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_20:stdgo.GoString = ("" : stdgo.GoString);
            var _after_12:stdgo.GoString = ("" : stdgo.GoString);
            var _p_1:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _lastRepeat_4:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_16:stdgo.GoString = ("" : stdgo.GoString);
            var _before_9:stdgo.GoString = ("" : stdgo.GoString);
            var _after_8:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_6:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_0:stdgo.Error = (null : stdgo.Error);
            var _r_22:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_19:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _n_24:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _min_10:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_7:stdgo.GoString = ("" : stdgo.GoString);
            var _c_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_14:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_13:Bool = false;
            var _max_11:stdgo.GoInt = (0 : stdgo.GoInt);
            var _gotoNext = 0i32;
            _gotoNext == ((0i32 : stdgo.GoInt));
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
                            _gotoNext = 3284675i32;
                        } else {
                            _gotoNext = 3284856i32;
                        };
                    } else if (__value__ == (3284675i32)) {
                        {
                            _err_0 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_0 != null) {
                                _gotoNext = 3284754i32;
                            } else {
                                _gotoNext = 3284781i32;
                            };
                        };
                    } else if (__value__ == (3284754i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_0 };
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
                        _gotoNext = 3284781i32;
                    } else if (__value__ == (3284781i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
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
                        _gotoNext = 3284856i32;
                    } else if (__value__ == (3284856i32)) {
                        _p_1._flags = _flags;
                        _p_1._wholeRegexp = _s?.__copy__();
                        _t_5 = _s?.__copy__();
                        0i32;
                        _gotoNext = 3284984i32;
                    } else if (__value__ == (3284984i32)) {
                        if (_t_5 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3284996i32;
                        } else {
                            _gotoNext = 3288386i32;
                        };
                    } else if (__value__ == (3284996i32)) {
                        _repeat_6 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3285014i32;
                    } else if (__value__ == (3285014i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3285027i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_5[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285140i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285410i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285507i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285603i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285718i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285848i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3285962i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286044i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286345i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3286901i32;
                                } else {
                                    _gotoNext = 3285043i32;
                                };
                            };
                        } else {
                            _gotoNext = 3288361i32;
                        };
                    } else if (__value__ == (3285043i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3285094i32;
                            } else {
                                _gotoNext = 3285124i32;
                            };
                        };
                    } else if (__value__ == (3285094i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3285124i32;
                    } else if (__value__ == (3285124i32)) {
                        @:check2 _p_1._literal(_c_2);
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285140i32)) {
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_5[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3285205i32;
                        } else {
                            _gotoNext = 3285348i32;
                        };
                    } else if (__value__ == (3285205i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parsePerlFlags(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3285301i32;
                            } else {
                                _gotoNext = 3285334i32;
                            };
                        };
                    } else if (__value__ == (3285301i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3285334i32;
                    } else if (__value__ == (3285334i32)) {
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285348i32)) {
                        _p_1._numCap++;
                        @:check2 _p_1._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_1._numCap;
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285410i32)) {
                        {
                            _err = @:check2 _p_1._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3285465i32;
                            } else {
                                _gotoNext = 3285495i32;
                            };
                        };
                    } else if (__value__ == (3285465i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3285495i32;
                    } else if (__value__ == (3285495i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285507i32)) {
                        {
                            _err = @:check2 _p_1._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3285561i32;
                            } else {
                                _gotoNext = 3285591i32;
                            };
                        };
                    } else if (__value__ == (3285561i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3285591i32;
                    } else if (__value__ == (3285591i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285603i32)) {
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285640i32;
                        } else {
                            _gotoNext = 3285674i32;
                        };
                    } else if (__value__ == (3285640i32)) {
                        @:check2 _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3285706i32;
                    } else if (__value__ == (3285674i32)) {
                        _gotoNext = 3285674i32;
                        @:check2 _p_1._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i32;
                        _gotoNext = 3285706i32;
                    } else if (__value__ == (3285706i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285718i32)) {
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285755i32;
                        } else {
                            _gotoNext = 3285806i32;
                        };
                    } else if (__value__ == (3285755i32)) {
                        {
                            final __t__ = @:check2 _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3285836i32;
                    } else if (__value__ == (3285806i32)) {
                        _gotoNext = 3285806i32;
                        @:check2 _p_1._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i32;
                        _gotoNext = 3285836i32;
                    } else if (__value__ == (3285836i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285848i32)) {
                        if ((_p_1._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3285883i32;
                        } else {
                            _gotoNext = 3285915i32;
                        };
                    } else if (__value__ == (3285883i32)) {
                        @:check2 _p_1._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3285950i32;
                    } else if (__value__ == (3285915i32)) {
                        _gotoNext = 3285915i32;
                        @:check2 _p_1._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i32;
                        _gotoNext = 3285950i32;
                    } else if (__value__ == (3285950i32)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3285962i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parseClass(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286015i32;
                            } else {
                                _gotoNext = 3288361i32;
                            };
                        };
                    } else if (__value__ == (3286015i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3286044i32)) {
                        _before_7 = _t_5?.__copy__();
                        _gotoNext = 3286082i32;
                    } else if (__value__ == (3286082i32)) {
                        {
                            final __value__ = _t_5[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3286099i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3286128i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3286157i32;
                            } else {
                                _gotoNext = 3286192i32;
                            };
                        };
                    } else if (__value__ == (3286099i32)) {
                        _op_3 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286192i32;
                    } else if (__value__ == (3286128i32)) {
                        _op_3 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286192i32;
                    } else if (__value__ == (3286157i32)) {
                        _op_3 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3286192i32;
                    } else if (__value__ == (3286192i32)) {
                        _after_8 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_1._repeat(_op_3, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_7?.__copy__(), _after_8?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_8 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286284i32;
                            } else {
                                _gotoNext = 3286314i32;
                            };
                        };
                    } else if (__value__ == (3286284i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3286314i32;
                    } else if (__value__ == (3286314i32)) {
                        _repeat_6 = _before_7?.__copy__();
                        _t_5 = _after_8?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3286345i32)) {
                        _op_3 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_9 = _t_5?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_1._parseRepeat(_t_5?.__copy__());
                            _min_10 = @:tmpset0 __tmp__._0;
                            _max_11 = @:tmpset0 __tmp__._1;
                            _after_12 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_13 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_13) {
                            _gotoNext = 3286440i32;
                        } else {
                            _gotoNext = 3286548i32;
                        };
                    } else if (__value__ == (3286440i32)) {
                        @:check2 _p_1._literal((123 : stdgo.GoInt32));
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3286548i32)) {
                        if (((((_min_10 < (0 : stdgo.GoInt) : Bool) || (_min_10 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_11 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_11 >= (0 : stdgo.GoInt) : Bool) && (_min_10 > _max_11 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3286612i32;
                        } else {
                            _gotoNext = 3286762i32;
                        };
                    } else if (__value__ == (3286612i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_9.__slice__(0, ((_before_9.length) - (_after_12.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3286762i32;
                    } else if (__value__ == (3286762i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._repeat(_op_3, _min_10, _max_11, _before_9?.__copy__(), _after_12?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_12 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3286840i32;
                            } else {
                                _gotoNext = 3286870i32;
                            };
                        };
                    } else if (__value__ == (3286840i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3286870i32;
                    } else if (__value__ == (3286870i32)) {
                        _repeat_6 = _before_9?.__copy__();
                        _t_5 = _after_12?.__copy__();
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3286901i32)) {
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3286952i32;
                        } else {
                            _gotoNext = 3287676i32;
                        };
                    } else if (__value__ == (3286952i32)) {
                        _gotoNext = 3286958i32;
                    } else if (__value__ == (3286958i32)) {
                        {
                            final __value__ = _t_5[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3286976i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3287049i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3287125i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3287203i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3287298i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3287594i32;
                            } else {
                                _gotoNext = 3287676i32;
                            };
                        };
                    } else if (__value__ == (3286976i32)) {
                        @:check2 _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3287049i32)) {
                        @:check2 _p_1._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3287125i32)) {
                        @:check2 _p_1._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3287203i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_5.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3287676i32;
                    } else if (__value__ == (3287298i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_14 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        0i32;
                        _gotoNext = 3287421i32;
                    } else if (__value__ == (3287421i32)) {
                        if (_lit_14 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3287435i32;
                        } else {
                            _gotoNext = 3287574i32;
                        };
                    } else if (__value__ == (3287435i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_14?.__copy__());
                            _c_15 = @:tmpset0 __tmp__._0;
                            _rest_16 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_17 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_17 != null) {
                            _gotoNext = 3287493i32;
                        } else {
                            _gotoNext = 3287532i32;
                        };
                    } else if (__value__ == (3287493i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_17 };
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
                        _gotoNext = 3287532i32;
                    } else if (__value__ == (3287532i32)) {
                        @:check2 _p_1._literal(_c_15);
                        _lit_14 = _rest_16?.__copy__();
                        _gotoNext = 3287421i32;
                    } else if (__value__ == (3287574i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3287594i32)) {
                        @:check2 _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3287676i32)) {
                        _re_18 = @:check2 _p_1._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_18 ?? throw "null pointer dereference").flags = _p_1._flags;
                        if ((((_t_5.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_5[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_5[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3287832i32;
                        } else {
                            _gotoNext = 3288074i32;
                        };
                    } else if (__value__ == (3287832i32)) {
                        {
                            var __tmp__ = @:check2 _p_1._parseUnicodeClass(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_19 = @:tmpset0 __tmp__._0;
                            _rest_20 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_21 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_21 != null) {
                            _gotoNext = 3287909i32;
                        } else {
                            _gotoNext = 3287942i32;
                        };
                    } else if (__value__ == (3287909i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_21 };
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
                        _gotoNext = 3287942i32;
                    } else if (__value__ == (3287942i32)) {
                        if (_r_19 != null) {
                            _gotoNext = 3287954i32;
                        } else {
                            _gotoNext = 3288074i32;
                        };
                    } else if (__value__ == (3287954i32)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_19;
                        _t_5 = _rest_20?.__copy__();
                        @:check2 _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3288074i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parsePerlClassEscape(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_22 = @:tmpset0 __tmp__._0;
                                _rest_23 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_22 != null) {
                                _gotoNext = 3288138i32;
                            } else {
                                _gotoNext = 3288212i32;
                            };
                        };
                    } else if (__value__ == (3288138i32)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_22;
                        _t_5 = _rest_23?.__copy__();
                        @:check2 _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3285027i32;
                    } else if (__value__ == (3288212i32)) {
                        @:check2 _p_1._reuse(_re_18);
                        {
                            {
                                var __tmp__ = @:check2 _p_1._parseEscape(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3288312i32;
                            } else {
                                _gotoNext = 3288342i32;
                            };
                        };
                    } else if (__value__ == (3288312i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3288342i32;
                    } else if (__value__ == (3288342i32)) {
                        @:check2 _p_1._literal(_c_2);
                        _gotoNext = 3288361i32;
                    } else if (__value__ == (3288361i32)) {
                        _lastRepeat_4 = _repeat_6?.__copy__();
                        _gotoNext = 3284984i32;
                    } else if (__value__ == (3288386i32)) {
                        @:check2 _p_1._concat();
                        if (@:check2 _p_1._swapVerticalBar()) {
                            _gotoNext = 3288421i32;
                        } else {
                            _gotoNext = 3288486i32;
                        };
                    } else if (__value__ == (3288421i32)) {
                        _p_1._stack = (_p_1._stack.__slice__(0, ((_p_1._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3288486i32;
                    } else if (__value__ == (3288486i32)) {
                        @:check2 _p_1._alternate();
                        _n_24 = (_p_1._stack.length);
                        if (_n_24 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3288531i32;
                        } else {
                            _gotoNext = 3288578i32;
                        };
                    } else if (__value__ == (3288531i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3288578i32;
                    } else if (__value__ == (3288578i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_1._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
