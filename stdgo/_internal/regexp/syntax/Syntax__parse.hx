package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_15:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_12:stdgo.GoString = ("" : stdgo.GoString);
            var _err_0:stdgo.Error = (null : stdgo.Error);
            var _min_10:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_9:stdgo.GoString = ("" : stdgo.GoString);
            var _before_7:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_4:stdgo.GoString = ("" : stdgo.GoString);
            var _after_8:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_6:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_14:stdgo.GoString = ("" : stdgo.GoString);
            var _max_11:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_1:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _r_22:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_20:stdgo.GoString = ("" : stdgo.GoString);
            var _re_18:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _rest_16:stdgo.GoString = ("" : stdgo.GoString);
            var _err_17:stdgo.Error = (null : stdgo.Error);
            var _rest_23:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_13:Bool = false;
            var _t_5:stdgo.GoString = ("" : stdgo.GoString);
            var _n_24:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_21:stdgo.Error = (null : stdgo.Error);
            var _r_19:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _op_3:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var bigSwitchBreak = false;
            var _gotoNext = 0i64;
            _gotoNext == ((0i64 : stdgo.GoInt));
            //"file://#L0"
            while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
                //"file://#L0"
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i64)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L896"
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
                                                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L898"
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L908"
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3392533i64;
                        } else {
                            _gotoNext = 3392714i64;
                        };
                    } else if (__value__ == (3392533i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L910"
                        {
                            _err_0 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_0 != null) {
                                _gotoNext = 3392612i64;
                            } else {
                                _gotoNext = 3392639i64;
                            };
                        };
                    } else if (__value__ == (3392612i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L911"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_0 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3392639i64;
                    } else if (__value__ == (3392639i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L913"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3392714i64;
                    } else if (__value__ == (3392714i64)) {
                        _p_1._flags = _flags;
                        _p_1._wholeRegexp = _s?.__copy__();
                        _t_5 = _s?.__copy__();
                        0i64;
                        _gotoNext = 3392842i64;
                    } else if (__value__ == (3392842i64)) {
                        //"file://#L0"
                        if (_t_5 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3392854i64;
                        } else {
                            _gotoNext = 3396244i64;
                        };
                    } else if (__value__ == (3392854i64)) {
                        _repeat_6 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3392872i64;
                    } else if (__value__ == (3392872i64)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3392885i64)) {
                        //"file://#L0"
                        if (!bigSwitchBreak) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L929"
                            {
                                final __value__ = _t_5[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3392998i64;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3393268i64;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3393365i64;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3393461i64;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3393576i64;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3393706i64;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3393820i64;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3393902i64;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3394203i64;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3394759i64;
                                } else {
                                    _gotoNext = 3392901i64;
                                };
                            };
                        } else {
                            _gotoNext = 3396219i64;
                        };
                    } else if (__value__ == (3392901i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L931"
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3392952i64;
                            } else {
                                _gotoNext = 3392982i64;
                            };
                        };
                    } else if (__value__ == (3392952i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L932"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3392982i64;
                    } else if (__value__ == (3392982i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L934"
                        _p_1._literal(_c_2);
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3392998i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L937"
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_5[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3393063i64;
                        } else {
                            _gotoNext = 3393206i64;
                        };
                    } else if (__value__ == (3393063i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L939"
                        {
                            {
                                var __tmp__ = _p_1._parsePerlFlags(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3393159i64;
                            } else {
                                _gotoNext = 3393192i64;
                            };
                        };
                    } else if (__value__ == (3393159i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L940"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3393192i64;
                    } else if (__value__ == (3393192i64)) {
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393206i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L944"
                        _p_1._numCap++;
                        _p_1._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_1._numCap;
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393268i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L948"
                        {
                            _err = _p_1._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3393323i64;
                            } else {
                                _gotoNext = 3393353i64;
                            };
                        };
                    } else if (__value__ == (3393323i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L949"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3393353i64;
                    } else if (__value__ == (3393353i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393365i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L953"
                        {
                            _err = _p_1._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3393419i64;
                            } else {
                                _gotoNext = 3393449i64;
                            };
                        };
                    } else if (__value__ == (3393419i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L954"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3393449i64;
                    } else if (__value__ == (3393449i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393461i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L958"
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3393498i64;
                        } else {
                            _gotoNext = 3393532i64;
                        };
                    } else if (__value__ == (3393498i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L959"
                        _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3393564i64;
                    } else if (__value__ == (3393532i64)) {
                        _gotoNext = 3393532i64;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L961"
                        _p_1._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3393564i64;
                    } else if (__value__ == (3393564i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393576i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L965"
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3393613i64;
                        } else {
                            _gotoNext = 3393664i64;
                        };
                    } else if (__value__ == (3393613i64)) {
                        {
                            final __t__ = _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3393694i64;
                    } else if (__value__ == (3393664i64)) {
                        _gotoNext = 3393664i64;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L968"
                        _p_1._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3393694i64;
                    } else if (__value__ == (3393694i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393706i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L972"
                        if ((_p_1._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3393741i64;
                        } else {
                            _gotoNext = 3393773i64;
                        };
                    } else if (__value__ == (3393741i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L973"
                        _p_1._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3393808i64;
                    } else if (__value__ == (3393773i64)) {
                        _gotoNext = 3393773i64;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L975"
                        _p_1._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3393808i64;
                    } else if (__value__ == (3393808i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393820i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L979"
                        {
                            {
                                var __tmp__ = _p_1._parseClass(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3393873i64;
                            } else {
                                _gotoNext = 3396219i64;
                            };
                        };
                    } else if (__value__ == (3393873i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L980"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3393902i64)) {
                        _before_7 = _t_5?.__copy__();
                        _gotoNext = 3393940i64;
                    } else if (__value__ == (3393940i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L984"
                        {
                            final __value__ = _t_5[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3393957i64;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3393986i64;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3394015i64;
                            } else {
                                _gotoNext = 3394050i64;
                            };
                        };
                    } else if (__value__ == (3393957i64)) {
                        _op_3 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3394050i64;
                    } else if (__value__ == (3393986i64)) {
                        _op_3 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3394050i64;
                    } else if (__value__ == (3394015i64)) {
                        _op_3 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3394050i64;
                    } else if (__value__ == (3394050i64)) {
                        _after_8 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L993"
                        {
                            {
                                var __tmp__ = _p_1._repeat(_op_3, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_7?.__copy__(), _after_8?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_8 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3394142i64;
                            } else {
                                _gotoNext = 3394172i64;
                            };
                        };
                    } else if (__value__ == (3394142i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L994"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3394172i64;
                    } else if (__value__ == (3394172i64)) {
                        _repeat_6 = _before_7?.__copy__();
                        _t_5 = _after_8?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3394203i64)) {
                        _op_3 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_9 = _t_5?.__copy__();
                        {
                            var __tmp__ = _p_1._parseRepeat(_t_5?.__copy__());
                            _min_10 = @:tmpset0 __tmp__._0;
                            _max_11 = @:tmpset0 __tmp__._1;
                            _after_12 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_13 = @:tmpset0 __tmp__._3;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1002"
                        if (!_ok_13) {
                            _gotoNext = 3394298i64;
                        } else {
                            _gotoNext = 3394406i64;
                        };
                    } else if (__value__ == (3394298i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1004"
                        _p_1._literal((123 : stdgo.GoInt32));
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3394406i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1008"
                        if (((((_min_10 < (0 : stdgo.GoInt) : Bool) || (_min_10 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_11 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_11 >= (0 : stdgo.GoInt) : Bool) && (_min_10 > _max_11 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3394470i64;
                        } else {
                            _gotoNext = 3394620i64;
                        };
                    } else if (__value__ == (3394470i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1010"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_9.__slice__(0, ((_before_9.length) - (_after_12.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3394620i64;
                    } else if (__value__ == (3394620i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1012"
                        {
                            {
                                var __tmp__ = _p_1._repeat(_op_3, _min_10, _max_11, _before_9?.__copy__(), _after_12?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_12 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3394698i64;
                            } else {
                                _gotoNext = 3394728i64;
                            };
                        };
                    } else if (__value__ == (3394698i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1013"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3394728i64;
                    } else if (__value__ == (3394728i64)) {
                        _repeat_6 = _before_9?.__copy__();
                        _t_5 = _after_12?.__copy__();
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3394759i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1018"
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3394810i64;
                        } else {
                            _gotoNext = 3395534i64;
                        };
                    } else if (__value__ == (3394810i64)) {
                        _gotoNext = 3394816i64;
                    } else if (__value__ == (3394816i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1019"
                        {
                            final __value__ = _t_5[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3394834i64;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3394907i64;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3394983i64;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3395061i64;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3395156i64;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3395452i64;
                            } else {
                                _gotoNext = 3395534i64;
                            };
                        };
                    } else if (__value__ == (3394834i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1021"
                        _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3394907i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1025"
                        _p_1._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3394983i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1029"
                        _p_1._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3395061i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1034"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_5.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3395534i64;
                    } else if (__value__ == (3395156i64)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_14 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        0i64;
                        _gotoNext = 3395279i64;
                    } else if (__value__ == (3395279i64)) {
                        //"file://#L0"
                        if (_lit_14 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3395293i64;
                        } else {
                            _gotoNext = 3395432i64;
                        };
                    } else if (__value__ == (3395293i64)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_14?.__copy__());
                            _c_15 = @:tmpset0 __tmp__._0;
                            _rest_16 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_17 = @:tmpset0 __tmp__._2;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1041"
                        if (_err_17 != null) {
                            _gotoNext = 3395351i64;
                        } else {
                            _gotoNext = 3395390i64;
                        };
                    } else if (__value__ == (3395351i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1042"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_17 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3395390i64;
                    } else if (__value__ == (3395390i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1044"
                        _p_1._literal(_c_15);
                        _lit_14 = _rest_16?.__copy__();
                        _gotoNext = 3395279i64;
                    } else if (__value__ == (3395432i64)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3395452i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1049"
                        _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3395534i64)) {
                        _re_18 = _p_1._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_18 ?? throw "null pointer dereference").flags = _p_1._flags;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1059"
                        if ((((_t_5.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_5[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_5[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3395690i64;
                        } else {
                            _gotoNext = 3395932i64;
                        };
                    } else if (__value__ == (3395690i64)) {
                        {
                            var __tmp__ = _p_1._parseUnicodeClass(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_19 = @:tmpset0 __tmp__._0;
                            _rest_20 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_21 = @:tmpset0 __tmp__._2;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1061"
                        if (_err_21 != null) {
                            _gotoNext = 3395767i64;
                        } else {
                            _gotoNext = 3395800i64;
                        };
                    } else if (__value__ == (3395767i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1062"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_21 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3395800i64;
                    } else if (__value__ == (3395800i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1064"
                        if (_r_19 != null) {
                            _gotoNext = 3395812i64;
                        } else {
                            _gotoNext = 3395932i64;
                        };
                    } else if (__value__ == (3395812i64)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_19;
                        _t_5 = _rest_20?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1067"
                        _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3395932i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1073"
                        {
                            {
                                var __tmp__ = _p_1._parsePerlClassEscape(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_22 = @:tmpset0 __tmp__._0;
                                _rest_23 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_22 != null) {
                                _gotoNext = 3395996i64;
                            } else {
                                _gotoNext = 3396070i64;
                            };
                        };
                    } else if (__value__ == (3395996i64)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_22;
                        _t_5 = _rest_23?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1076"
                        _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3392885i64;
                    } else if (__value__ == (3396070i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1079"
                        _p_1._reuse(_re_18);
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1082"
                        {
                            {
                                var __tmp__ = _p_1._parseEscape(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3396170i64;
                            } else {
                                _gotoNext = 3396200i64;
                            };
                        };
                    } else if (__value__ == (3396170i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1083"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3396200i64;
                    } else if (__value__ == (3396200i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1085"
                        _p_1._literal(_c_2);
                        _gotoNext = 3396219i64;
                    } else if (__value__ == (3396219i64)) {
                        _lastRepeat_4 = _repeat_6?.__copy__();
                        _gotoNext = 3392842i64;
                    } else if (__value__ == (3396244i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1090"
                        _p_1._concat();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1091"
                        if (_p_1._swapVerticalBar()) {
                            _gotoNext = 3396279i64;
                        } else {
                            _gotoNext = 3396344i64;
                        };
                    } else if (__value__ == (3396279i64)) {
                        _p_1._stack = (_p_1._stack.__slice__(0, ((_p_1._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3396344i64;
                    } else if (__value__ == (3396344i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1095"
                        _p_1._alternate();
                        _n_24 = (_p_1._stack.length);
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1098"
                        if (_n_24 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3396389i64;
                        } else {
                            _gotoNext = 3396436i64;
                        };
                    } else if (__value__ == (3396389i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1099"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3396436i64;
                    } else if (__value__ == (3396436i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1101"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_1._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i64;
                    };
                };
            };
            //"file://#L0"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
