package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _re_18:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _ok_13:Bool = false;
            var _max_11:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_22:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_21:stdgo.Error = (null : stdgo.Error);
            var _repeat_6:stdgo.GoString = ("" : stdgo.GoString);
            var _p_1:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _rest_23:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_20:stdgo.GoString = ("" : stdgo.GoString);
            var _min_10:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _r_19:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_9:stdgo.GoString = ("" : stdgo.GoString);
            var _before_7:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_4:stdgo.GoString = ("" : stdgo.GoString);
            var _c_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_24:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_16:stdgo.GoString = ("" : stdgo.GoString);
            var _c_15:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _op_3:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_17:stdgo.Error = (null : stdgo.Error);
            var _t_5:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_14:stdgo.GoString = ("" : stdgo.GoString);
            var _after_12:stdgo.GoString = ("" : stdgo.GoString);
            var _after_8:stdgo.GoString = ("" : stdgo.GoString);
            var _err_0:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3277580i64;
                        } else {
                            _gotoNext = 3277761i64;
                        };
                    } else if (__value__ == (3277580i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L910"
                        {
                            _err_0 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_0 != null) {
                                _gotoNext = 3277659i64;
                            } else {
                                _gotoNext = 3277686i64;
                            };
                        };
                    } else if (__value__ == (3277659i64)) {
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
                        _gotoNext = 3277686i64;
                    } else if (__value__ == (3277686i64)) {
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
                        _gotoNext = 3277761i64;
                    } else if (__value__ == (3277761i64)) {
                        _p_1._flags = _flags;
                        _p_1._wholeRegexp = _s?.__copy__();
                        _t_5 = _s?.__copy__();
                        0i64;
                        _gotoNext = 3277889i64;
                    } else if (__value__ == (3277889i64)) {
                        //"file://#L0"
                        if (_t_5 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3277901i64;
                        } else {
                            _gotoNext = 3281291i64;
                        };
                    } else if (__value__ == (3277901i64)) {
                        _repeat_6 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3277919i64;
                    } else if (__value__ == (3277919i64)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3277932i64)) {
                        //"file://#L0"
                        if (!bigSwitchBreak) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L929"
                            {
                                final __value__ = _t_5[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278045i64;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278315i64;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278412i64;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278508i64;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278623i64;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278753i64;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278867i64;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3278949i64;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279250i64;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279806i64;
                                } else {
                                    _gotoNext = 3277948i64;
                                };
                            };
                        } else {
                            _gotoNext = 3281266i64;
                        };
                    } else if (__value__ == (3277948i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L931"
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_5?.__copy__());
                                _c_2 = @:tmpset0 __tmp__._0;
                                _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3277999i64;
                            } else {
                                _gotoNext = 3278029i64;
                            };
                        };
                    } else if (__value__ == (3277999i64)) {
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
                        _gotoNext = 3278029i64;
                    } else if (__value__ == (3278029i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L934"
                        _p_1._literal(_c_2);
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278045i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L937"
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_5[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3278110i64;
                        } else {
                            _gotoNext = 3278253i64;
                        };
                    } else if (__value__ == (3278110i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L939"
                        {
                            {
                                var __tmp__ = _p_1._parsePerlFlags(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3278206i64;
                            } else {
                                _gotoNext = 3278239i64;
                            };
                        };
                    } else if (__value__ == (3278206i64)) {
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
                        _gotoNext = 3278239i64;
                    } else if (__value__ == (3278239i64)) {
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278253i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L944"
                        _p_1._numCap++;
                        _p_1._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_1._numCap;
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278315i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L948"
                        {
                            _err = _p_1._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3278370i64;
                            } else {
                                _gotoNext = 3278400i64;
                            };
                        };
                    } else if (__value__ == (3278370i64)) {
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
                        _gotoNext = 3278400i64;
                    } else if (__value__ == (3278400i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278412i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L953"
                        {
                            _err = _p_1._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3278466i64;
                            } else {
                                _gotoNext = 3278496i64;
                            };
                        };
                    } else if (__value__ == (3278466i64)) {
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
                        _gotoNext = 3278496i64;
                    } else if (__value__ == (3278496i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278508i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L958"
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3278545i64;
                        } else {
                            _gotoNext = 3278579i64;
                        };
                    } else if (__value__ == (3278545i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L959"
                        _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3278611i64;
                    } else if (__value__ == (3278579i64)) {
                        _gotoNext = 3278579i64;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L961"
                        _p_1._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3278611i64;
                    } else if (__value__ == (3278611i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278623i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L965"
                        if ((_p_1._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3278660i64;
                        } else {
                            _gotoNext = 3278711i64;
                        };
                    } else if (__value__ == (3278660i64)) {
                        {
                            final __t__ = _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3278741i64;
                    } else if (__value__ == (3278711i64)) {
                        _gotoNext = 3278711i64;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L968"
                        _p_1._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3278741i64;
                    } else if (__value__ == (3278741i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278753i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L972"
                        if ((_p_1._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3278788i64;
                        } else {
                            _gotoNext = 3278820i64;
                        };
                    } else if (__value__ == (3278788i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L973"
                        _p_1._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3278855i64;
                    } else if (__value__ == (3278820i64)) {
                        _gotoNext = 3278820i64;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L975"
                        _p_1._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3278855i64;
                    } else if (__value__ == (3278855i64)) {
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278867i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L979"
                        {
                            {
                                var __tmp__ = _p_1._parseClass(_t_5?.__copy__());
                                _t_5 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3278920i64;
                            } else {
                                _gotoNext = 3281266i64;
                            };
                        };
                    } else if (__value__ == (3278920i64)) {
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
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3278949i64)) {
                        _before_7 = _t_5?.__copy__();
                        _gotoNext = 3278987i64;
                    } else if (__value__ == (3278987i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L984"
                        {
                            final __value__ = _t_5[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3279004i64;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3279033i64;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3279062i64;
                            } else {
                                _gotoNext = 3279097i64;
                            };
                        };
                    } else if (__value__ == (3279004i64)) {
                        _op_3 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3279097i64;
                    } else if (__value__ == (3279033i64)) {
                        _op_3 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3279097i64;
                    } else if (__value__ == (3279062i64)) {
                        _op_3 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3279097i64;
                    } else if (__value__ == (3279097i64)) {
                        _after_8 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L993"
                        {
                            {
                                var __tmp__ = _p_1._repeat(_op_3, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_7?.__copy__(), _after_8?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_8 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3279189i64;
                            } else {
                                _gotoNext = 3279219i64;
                            };
                        };
                    } else if (__value__ == (3279189i64)) {
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
                        _gotoNext = 3279219i64;
                    } else if (__value__ == (3279219i64)) {
                        _repeat_6 = _before_7?.__copy__();
                        _t_5 = _after_8?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3279250i64)) {
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
                            _gotoNext = 3279345i64;
                        } else {
                            _gotoNext = 3279453i64;
                        };
                    } else if (__value__ == (3279345i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1004"
                        _p_1._literal((123 : stdgo.GoInt32));
                        _t_5 = (_t_5.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3279453i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1008"
                        if (((((_min_10 < (0 : stdgo.GoInt) : Bool) || (_min_10 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_11 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_11 >= (0 : stdgo.GoInt) : Bool) && (_min_10 > _max_11 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3279517i64;
                        } else {
                            _gotoNext = 3279667i64;
                        };
                    } else if (__value__ == (3279517i64)) {
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
                        _gotoNext = 3279667i64;
                    } else if (__value__ == (3279667i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1012"
                        {
                            {
                                var __tmp__ = _p_1._repeat(_op_3, _min_10, _max_11, _before_9?.__copy__(), _after_12?.__copy__(), _lastRepeat_4?.__copy__());
                                _after_12 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3279745i64;
                            } else {
                                _gotoNext = 3279775i64;
                            };
                        };
                    } else if (__value__ == (3279745i64)) {
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
                        _gotoNext = 3279775i64;
                    } else if (__value__ == (3279775i64)) {
                        _repeat_6 = _before_9?.__copy__();
                        _t_5 = _after_12?.__copy__();
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3279806i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1018"
                        if ((((_p_1._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3279857i64;
                        } else {
                            _gotoNext = 3280581i64;
                        };
                    } else if (__value__ == (3279857i64)) {
                        _gotoNext = 3279863i64;
                    } else if (__value__ == (3279863i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1019"
                        {
                            final __value__ = _t_5[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3279881i64;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3279954i64;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3280030i64;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3280108i64;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3280203i64;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3280499i64;
                            } else {
                                _gotoNext = 3280581i64;
                            };
                        };
                    } else if (__value__ == (3279881i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1021"
                        _p_1._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3279954i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1025"
                        _p_1._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3280030i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1029"
                        _p_1._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3280108i64)) {
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
                        _gotoNext = 3280581i64;
                    } else if (__value__ == (3280203i64)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_14 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_5 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        0i64;
                        _gotoNext = 3280326i64;
                    } else if (__value__ == (3280326i64)) {
                        //"file://#L0"
                        if (_lit_14 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3280340i64;
                        } else {
                            _gotoNext = 3280479i64;
                        };
                    } else if (__value__ == (3280340i64)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_14?.__copy__());
                            _c_15 = @:tmpset0 __tmp__._0;
                            _rest_16 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_17 = @:tmpset0 __tmp__._2;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1041"
                        if (_err_17 != null) {
                            _gotoNext = 3280398i64;
                        } else {
                            _gotoNext = 3280437i64;
                        };
                    } else if (__value__ == (3280398i64)) {
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
                        _gotoNext = 3280437i64;
                    } else if (__value__ == (3280437i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1044"
                        _p_1._literal(_c_15);
                        _lit_14 = _rest_16?.__copy__();
                        _gotoNext = 3280326i64;
                    } else if (__value__ == (3280479i64)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3280499i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1049"
                        _p_1._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_5 = (_t_5.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3280581i64)) {
                        _re_18 = _p_1._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_18 ?? throw "null pointer dereference").flags = _p_1._flags;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1059"
                        if ((((_t_5.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_5[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_5[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3280737i64;
                        } else {
                            _gotoNext = 3280979i64;
                        };
                    } else if (__value__ == (3280737i64)) {
                        {
                            var __tmp__ = _p_1._parseUnicodeClass(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_19 = @:tmpset0 __tmp__._0;
                            _rest_20 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_21 = @:tmpset0 __tmp__._2;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1061"
                        if (_err_21 != null) {
                            _gotoNext = 3280814i64;
                        } else {
                            _gotoNext = 3280847i64;
                        };
                    } else if (__value__ == (3280814i64)) {
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
                        _gotoNext = 3280847i64;
                    } else if (__value__ == (3280847i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1064"
                        if (_r_19 != null) {
                            _gotoNext = 3280859i64;
                        } else {
                            _gotoNext = 3280979i64;
                        };
                    } else if (__value__ == (3280859i64)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_19;
                        _t_5 = _rest_20?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1067"
                        _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3280979i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1073"
                        {
                            {
                                var __tmp__ = _p_1._parsePerlClassEscape(_t_5?.__copy__(), ((@:checkr _re_18 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_22 = @:tmpset0 __tmp__._0;
                                _rest_23 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_22 != null) {
                                _gotoNext = 3281043i64;
                            } else {
                                _gotoNext = 3281117i64;
                            };
                        };
                    } else if (__value__ == (3281043i64)) {
                        (@:checkr _re_18 ?? throw "null pointer dereference").rune = _r_22;
                        _t_5 = _rest_23?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1076"
                        _p_1._push(_re_18);
                        bigSwitchBreak = true;
                        _gotoNext = 3277932i64;
                    } else if (__value__ == (3281117i64)) {
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
                                _gotoNext = 3281217i64;
                            } else {
                                _gotoNext = 3281247i64;
                            };
                        };
                    } else if (__value__ == (3281217i64)) {
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
                        _gotoNext = 3281247i64;
                    } else if (__value__ == (3281247i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1085"
                        _p_1._literal(_c_2);
                        _gotoNext = 3281266i64;
                    } else if (__value__ == (3281266i64)) {
                        _lastRepeat_4 = _repeat_6?.__copy__();
                        _gotoNext = 3277889i64;
                    } else if (__value__ == (3281291i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1090"
                        _p_1._concat();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1091"
                        if (_p_1._swapVerticalBar()) {
                            _gotoNext = 3281326i64;
                        } else {
                            _gotoNext = 3281391i64;
                        };
                    } else if (__value__ == (3281326i64)) {
                        _p_1._stack = (_p_1._stack.__slice__(0, ((_p_1._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3281391i64;
                    } else if (__value__ == (3281391i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1095"
                        _p_1._alternate();
                        _n_24 = (_p_1._stack.length);
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1098"
                        if (_n_24 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3281436i64;
                        } else {
                            _gotoNext = 3281483i64;
                        };
                    } else if (__value__ == (3281436i64)) {
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
                        _gotoNext = 3281483i64;
                    } else if (__value__ == (3281483i64)) {
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
