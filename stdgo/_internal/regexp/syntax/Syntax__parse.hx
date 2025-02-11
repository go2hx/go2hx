package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3531451:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3531846:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3530383:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3530403:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3528892:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _rest_3531849:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3530415:Bool = false;
            var _after_3530408:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3532510:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3528926:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3531371:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3530075:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3531684:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _err_3531460:stdgo.Error = (null : stdgo.Error);
            var _p_3528872:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _rest_3531454:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3530200:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3532088:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3531855:stdgo.Error = (null : stdgo.Error);
            var _op_3528910:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_3528730:stdgo.Error = (null : stdgo.Error);
            var _r_3532085:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _min_3530398:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3529008:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3528984:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3528683i32;
                        } else {
                            _gotoNext = 3528864i32;
                        };
                    } else if (__value__ == (3528683i32)) {
                        {
                            _err_3528730 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3528730 != null) {
                                _gotoNext = 3528762i32;
                            } else {
                                _gotoNext = 3528789i32;
                            };
                        };
                    } else if (__value__ == (3528762i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3528730 };
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
                        _gotoNext = 3528789i32;
                    } else if (__value__ == (3528789i32)) {
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
                        _gotoNext = 3528864i32;
                    } else if (__value__ == (3528864i32)) {
                        _p_3528872._flags = _flags;
                        _p_3528872._wholeRegexp = _s?.__copy__();
                        _t_3528984 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3528992i32;
                    } else if (__value__ == (3528992i32)) {
                        if (_t_3528984 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3529004i32;
                        } else {
                            _gotoNext = 3532394i32;
                        };
                    } else if (__value__ == (3529004i32)) {
                        _repeat_3529008 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3529022i32;
                    } else if (__value__ == (3529022i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3529035i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3528984[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529148i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529418i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529515i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529611i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529726i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529856i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529970i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530052i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530353i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530909i32;
                                } else {
                                    _gotoNext = 3529051i32;
                                };
                            };
                        } else {
                            _gotoNext = 3532369i32;
                        };
                    } else if (__value__ == (3529051i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3528984?.__copy__());
                                _c_3528892 = @:tmpset0 __tmp__._0;
                                _t_3528984 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3529102i32;
                            } else {
                                _gotoNext = 3529132i32;
                            };
                        };
                    } else if (__value__ == (3529102i32)) {
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
                        _gotoNext = 3529132i32;
                    } else if (__value__ == (3529132i32)) {
                        @:check2 _p_3528872._literal(_c_3528892);
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529148i32)) {
                        if ((((_p_3528872._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3528984.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3528984[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3529213i32;
                        } else {
                            _gotoNext = 3529356i32;
                        };
                    } else if (__value__ == (3529213i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528872._parsePerlFlags(_t_3528984?.__copy__());
                                _t_3528984 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3529309i32;
                            } else {
                                _gotoNext = 3529342i32;
                            };
                        };
                    } else if (__value__ == (3529309i32)) {
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
                        _gotoNext = 3529342i32;
                    } else if (__value__ == (3529342i32)) {
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529356i32)) {
                        _p_3528872._numCap++;
                        @:check2 _p_3528872._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3528872._numCap;
                        _t_3528984 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529418i32)) {
                        {
                            _err = @:check2 _p_3528872._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3529473i32;
                            } else {
                                _gotoNext = 3529503i32;
                            };
                        };
                    } else if (__value__ == (3529473i32)) {
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
                        _gotoNext = 3529503i32;
                    } else if (__value__ == (3529503i32)) {
                        _t_3528984 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529515i32)) {
                        {
                            _err = @:check2 _p_3528872._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3529569i32;
                            } else {
                                _gotoNext = 3529599i32;
                            };
                        };
                    } else if (__value__ == (3529569i32)) {
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
                        _gotoNext = 3529599i32;
                    } else if (__value__ == (3529599i32)) {
                        _t_3528984 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529611i32)) {
                        if ((_p_3528872._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3529648i32;
                        } else {
                            _gotoNext = 3529682i32;
                        };
                    } else if (__value__ == (3529648i32)) {
                        @:check2 _p_3528872._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3529714i32;
                    } else if (__value__ == (3529682i32)) {
                        _gotoNext = 3529682i32;
                        @:check2 _p_3528872._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3529714i32;
                    } else if (__value__ == (3529714i32)) {
                        _t_3528984 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529726i32)) {
                        if ((_p_3528872._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3529763i32;
                        } else {
                            _gotoNext = 3529814i32;
                        };
                    } else if (__value__ == (3529763i32)) {
                        {
                            final __t__ = @:check2 _p_3528872._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3529844i32;
                    } else if (__value__ == (3529814i32)) {
                        _gotoNext = 3529814i32;
                        @:check2 _p_3528872._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3529844i32;
                    } else if (__value__ == (3529844i32)) {
                        _t_3528984 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529856i32)) {
                        if ((_p_3528872._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3529891i32;
                        } else {
                            _gotoNext = 3529923i32;
                        };
                    } else if (__value__ == (3529891i32)) {
                        @:check2 _p_3528872._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3529958i32;
                    } else if (__value__ == (3529923i32)) {
                        _gotoNext = 3529923i32;
                        @:check2 _p_3528872._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3529958i32;
                    } else if (__value__ == (3529958i32)) {
                        _t_3528984 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3529970i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528872._parseClass(_t_3528984?.__copy__());
                                _t_3528984 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530023i32;
                            } else {
                                _gotoNext = 3532369i32;
                            };
                        };
                    } else if (__value__ == (3530023i32)) {
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
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3530052i32)) {
                        _before_3530075 = _t_3528984?.__copy__();
                        _gotoNext = 3530090i32;
                    } else if (__value__ == (3530090i32)) {
                        {
                            final __value__ = _t_3528984[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3530107i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3530136i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3530165i32;
                            } else {
                                _gotoNext = 3530200i32;
                            };
                        };
                    } else if (__value__ == (3530107i32)) {
                        _op_3528910 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3530200i32;
                    } else if (__value__ == (3530136i32)) {
                        _op_3528910 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3530200i32;
                    } else if (__value__ == (3530165i32)) {
                        _op_3528910 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3530200i32;
                    } else if (__value__ == (3530200i32)) {
                        _after_3530200 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3528872._repeat(_op_3528910, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3530075?.__copy__(), _after_3530200?.__copy__(), _lastRepeat_3528926?.__copy__());
                                _after_3530200 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530292i32;
                            } else {
                                _gotoNext = 3530322i32;
                            };
                        };
                    } else if (__value__ == (3530292i32)) {
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
                        _gotoNext = 3530322i32;
                    } else if (__value__ == (3530322i32)) {
                        _repeat_3529008 = _before_3530075?.__copy__();
                        _t_3528984 = _after_3530200?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3530353i32)) {
                        _op_3528910 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3530383 = _t_3528984?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3528872._parseRepeat(_t_3528984?.__copy__());
                            _min_3530398 = @:tmpset0 __tmp__._0;
                            _max_3530403 = @:tmpset0 __tmp__._1;
                            _after_3530408 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3530415 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3530415) {
                            _gotoNext = 3530448i32;
                        } else {
                            _gotoNext = 3530556i32;
                        };
                    } else if (__value__ == (3530448i32)) {
                        @:check2 _p_3528872._literal((123 : stdgo.GoInt32));
                        _t_3528984 = (_t_3528984.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3530556i32)) {
                        if (((((_min_3530398 < (0 : stdgo.GoInt) : Bool) || (_min_3530398 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3530403 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3530403 >= (0 : stdgo.GoInt) : Bool) && (_min_3530398 > _max_3530403 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3530620i32;
                        } else {
                            _gotoNext = 3530770i32;
                        };
                    } else if (__value__ == (3530620i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3530383.__slice__(0, ((_before_3530383.length) - (_after_3530408.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3530770i32;
                    } else if (__value__ == (3530770i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528872._repeat(_op_3528910, _min_3530398, _max_3530403, _before_3530383?.__copy__(), _after_3530408?.__copy__(), _lastRepeat_3528926?.__copy__());
                                _after_3530408 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530848i32;
                            } else {
                                _gotoNext = 3530878i32;
                            };
                        };
                    } else if (__value__ == (3530848i32)) {
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
                        _gotoNext = 3530878i32;
                    } else if (__value__ == (3530878i32)) {
                        _repeat_3529008 = _before_3530383?.__copy__();
                        _t_3528984 = _after_3530408?.__copy__();
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3530909i32)) {
                        if ((((_p_3528872._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3528984.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3530960i32;
                        } else {
                            _gotoNext = 3531684i32;
                        };
                    } else if (__value__ == (3530960i32)) {
                        _gotoNext = 3530966i32;
                    } else if (__value__ == (3530966i32)) {
                        {
                            final __value__ = _t_3528984[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3530984i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3531057i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3531133i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3531211i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3531306i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3531602i32;
                            } else {
                                _gotoNext = 3531684i32;
                            };
                        };
                    } else if (__value__ == (3530984i32)) {
                        @:check2 _p_3528872._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3528984 = (_t_3528984.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3531057i32)) {
                        @:check2 _p_3528872._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3528984 = (_t_3528984.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3531133i32)) {
                        @:check2 _p_3528872._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3528984 = (_t_3528984.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3531211i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3528984.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3531684i32;
                    } else if (__value__ == (3531306i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3528984.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3531371 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3528984 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3531429i32;
                    } else if (__value__ == (3531429i32)) {
                        if (_lit_3531371 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3531443i32;
                        } else {
                            _gotoNext = 3531582i32;
                        };
                    } else if (__value__ == (3531443i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3531371?.__copy__());
                            _c_3531451 = @:tmpset0 __tmp__._0;
                            _rest_3531454 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3531460 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3531460 != null) {
                            _gotoNext = 3531501i32;
                        } else {
                            _gotoNext = 3531540i32;
                        };
                    } else if (__value__ == (3531501i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3531460 };
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
                        _gotoNext = 3531540i32;
                    } else if (__value__ == (3531540i32)) {
                        @:check2 _p_3528872._literal(_c_3531451);
                        _lit_3531371 = _rest_3531454?.__copy__();
                        _gotoNext = 3531429i32;
                    } else if (__value__ == (3531582i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3531602i32)) {
                        @:check2 _p_3528872._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3528984 = (_t_3528984.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3531684i32)) {
                        _re_3531684 = @:check2 _p_3528872._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3531684 ?? throw "null pointer dereference").flags = _p_3528872._flags;
                        if ((((_t_3528984.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3528984[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3528984[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3531840i32;
                        } else {
                            _gotoNext = 3532082i32;
                        };
                    } else if (__value__ == (3531840i32)) {
                        {
                            var __tmp__ = @:check2 _p_3528872._parseUnicodeClass(_t_3528984?.__copy__(), ((@:checkr _re_3531684 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3531846 = @:tmpset0 __tmp__._0;
                            _rest_3531849 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3531855 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3531855 != null) {
                            _gotoNext = 3531917i32;
                        } else {
                            _gotoNext = 3531950i32;
                        };
                    } else if (__value__ == (3531917i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3531855 };
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
                        _gotoNext = 3531950i32;
                    } else if (__value__ == (3531950i32)) {
                        if (_r_3531846 != null) {
                            _gotoNext = 3531962i32;
                        } else {
                            _gotoNext = 3532082i32;
                        };
                    } else if (__value__ == (3531962i32)) {
                        (@:checkr _re_3531684 ?? throw "null pointer dereference").rune = _r_3531846;
                        _t_3528984 = _rest_3531849?.__copy__();
                        @:check2 _p_3528872._push(_re_3531684);
                        bigSwitchBreak = true;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3532082i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528872._parsePerlClassEscape(_t_3528984?.__copy__(), ((@:checkr _re_3531684 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3532085 = @:tmpset0 __tmp__._0;
                                _rest_3532088 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3532085 != null) {
                                _gotoNext = 3532146i32;
                            } else {
                                _gotoNext = 3532220i32;
                            };
                        };
                    } else if (__value__ == (3532146i32)) {
                        (@:checkr _re_3531684 ?? throw "null pointer dereference").rune = _r_3532085;
                        _t_3528984 = _rest_3532088?.__copy__();
                        @:check2 _p_3528872._push(_re_3531684);
                        bigSwitchBreak = true;
                        _gotoNext = 3529035i32;
                    } else if (__value__ == (3532220i32)) {
                        @:check2 _p_3528872._reuse(_re_3531684);
                        {
                            {
                                var __tmp__ = @:check2 _p_3528872._parseEscape(_t_3528984?.__copy__());
                                _c_3528892 = @:tmpset0 __tmp__._0;
                                _t_3528984 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3532320i32;
                            } else {
                                _gotoNext = 3532350i32;
                            };
                        };
                    } else if (__value__ == (3532320i32)) {
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
                        _gotoNext = 3532350i32;
                    } else if (__value__ == (3532350i32)) {
                        @:check2 _p_3528872._literal(_c_3528892);
                        _gotoNext = 3532369i32;
                    } else if (__value__ == (3532369i32)) {
                        _lastRepeat_3528926 = _repeat_3529008?.__copy__();
                        _gotoNext = 3528992i32;
                    } else if (__value__ == (3532394i32)) {
                        @:check2 _p_3528872._concat();
                        if (@:check2 _p_3528872._swapVerticalBar()) {
                            _gotoNext = 3532429i32;
                        } else {
                            _gotoNext = 3532494i32;
                        };
                    } else if (__value__ == (3532429i32)) {
                        _p_3528872._stack = (_p_3528872._stack.__slice__(0, ((_p_3528872._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3532494i32;
                    } else if (__value__ == (3532494i32)) {
                        @:check2 _p_3528872._alternate();
                        _n_3532510 = (_p_3528872._stack.length);
                        if (_n_3532510 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3532539i32;
                        } else {
                            _gotoNext = 3532586i32;
                        };
                    } else if (__value__ == (3532539i32)) {
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
                        _gotoNext = 3532586i32;
                    } else if (__value__ == (3532586i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3528872._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
