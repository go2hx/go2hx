package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3560971:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3560310:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3558869:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3558859:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3558844:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3557445:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _err_3559921:stdgo.Error = (null : stdgo.Error);
            var _before_3558536:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3557371:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_3557191:stdgo.Error = (null : stdgo.Error);
            var _rest_3560549:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3560546:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3560307:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3558876:Bool = false;
            var _repeat_3557469:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3560316:stdgo.Error = (null : stdgo.Error);
            var _max_3558864:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3559912:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3559915:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3558661:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3557353:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3557333:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _re_3560145:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _lit_3559832:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3557387:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3557144i32;
                        } else {
                            _gotoNext = 3557325i32;
                        };
                    } else if (__value__ == (3557144i32)) {
                        {
                            _err_3557191 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3557191 != null) {
                                _gotoNext = 3557223i32;
                            } else {
                                _gotoNext = 3557250i32;
                            };
                        };
                    } else if (__value__ == (3557223i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3557191 };
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
                        _gotoNext = 3557250i32;
                    } else if (__value__ == (3557250i32)) {
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
                        _gotoNext = 3557325i32;
                    } else if (__value__ == (3557325i32)) {
                        _p_3557333._flags = _flags;
                        _p_3557333._wholeRegexp = _s?.__copy__();
                        _t_3557445 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3557453i32;
                    } else if (__value__ == (3557453i32)) {
                        if (_t_3557445 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3557465i32;
                        } else {
                            _gotoNext = 3560855i32;
                        };
                    } else if (__value__ == (3557465i32)) {
                        _repeat_3557469 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3557483i32;
                    } else if (__value__ == (3557483i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3557496i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3557445[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3557609i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3557879i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3557976i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558072i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558187i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558317i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558431i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558513i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558814i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3559370i32;
                                } else {
                                    _gotoNext = 3557512i32;
                                };
                            };
                        } else {
                            _gotoNext = 3560830i32;
                        };
                    } else if (__value__ == (3557512i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3557445?.__copy__());
                                _c_3557353 = @:tmpset0 __tmp__._0;
                                _t_3557445 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3557563i32;
                            } else {
                                _gotoNext = 3557593i32;
                            };
                        };
                    } else if (__value__ == (3557563i32)) {
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
                        _gotoNext = 3557593i32;
                    } else if (__value__ == (3557593i32)) {
                        @:check2 _p_3557333._literal(_c_3557353);
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3557609i32)) {
                        if ((((_p_3557333._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3557445.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3557445[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3557674i32;
                        } else {
                            _gotoNext = 3557817i32;
                        };
                    } else if (__value__ == (3557674i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3557333._parsePerlFlags(_t_3557445?.__copy__());
                                _t_3557445 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3557770i32;
                            } else {
                                _gotoNext = 3557803i32;
                            };
                        };
                    } else if (__value__ == (3557770i32)) {
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
                        _gotoNext = 3557803i32;
                    } else if (__value__ == (3557803i32)) {
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3557817i32)) {
                        _p_3557333._numCap++;
                        @:check2 _p_3557333._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3557333._numCap;
                        _t_3557445 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3557879i32)) {
                        {
                            _err = @:check2 _p_3557333._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3557934i32;
                            } else {
                                _gotoNext = 3557964i32;
                            };
                        };
                    } else if (__value__ == (3557934i32)) {
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
                        _gotoNext = 3557964i32;
                    } else if (__value__ == (3557964i32)) {
                        _t_3557445 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3557976i32)) {
                        {
                            _err = @:check2 _p_3557333._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3558030i32;
                            } else {
                                _gotoNext = 3558060i32;
                            };
                        };
                    } else if (__value__ == (3558030i32)) {
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
                        _gotoNext = 3558060i32;
                    } else if (__value__ == (3558060i32)) {
                        _t_3557445 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3558072i32)) {
                        if ((_p_3557333._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3558109i32;
                        } else {
                            _gotoNext = 3558143i32;
                        };
                    } else if (__value__ == (3558109i32)) {
                        @:check2 _p_3557333._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3558175i32;
                    } else if (__value__ == (3558143i32)) {
                        _gotoNext = 3558143i32;
                        @:check2 _p_3557333._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3558175i32;
                    } else if (__value__ == (3558175i32)) {
                        _t_3557445 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3558187i32)) {
                        if ((_p_3557333._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3558224i32;
                        } else {
                            _gotoNext = 3558275i32;
                        };
                    } else if (__value__ == (3558224i32)) {
                        {
                            final __t__ = @:check2 _p_3557333._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3558305i32;
                    } else if (__value__ == (3558275i32)) {
                        _gotoNext = 3558275i32;
                        @:check2 _p_3557333._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3558305i32;
                    } else if (__value__ == (3558305i32)) {
                        _t_3557445 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3558317i32)) {
                        if ((_p_3557333._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3558352i32;
                        } else {
                            _gotoNext = 3558384i32;
                        };
                    } else if (__value__ == (3558352i32)) {
                        @:check2 _p_3557333._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3558419i32;
                    } else if (__value__ == (3558384i32)) {
                        _gotoNext = 3558384i32;
                        @:check2 _p_3557333._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3558419i32;
                    } else if (__value__ == (3558419i32)) {
                        _t_3557445 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3558431i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3557333._parseClass(_t_3557445?.__copy__());
                                _t_3557445 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3558484i32;
                            } else {
                                _gotoNext = 3560830i32;
                            };
                        };
                    } else if (__value__ == (3558484i32)) {
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
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3558513i32)) {
                        _before_3558536 = _t_3557445?.__copy__();
                        _gotoNext = 3558551i32;
                    } else if (__value__ == (3558551i32)) {
                        {
                            final __value__ = _t_3557445[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3558568i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3558597i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3558626i32;
                            } else {
                                _gotoNext = 3558661i32;
                            };
                        };
                    } else if (__value__ == (3558568i32)) {
                        _op_3557371 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3558661i32;
                    } else if (__value__ == (3558597i32)) {
                        _op_3557371 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3558661i32;
                    } else if (__value__ == (3558626i32)) {
                        _op_3557371 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3558661i32;
                    } else if (__value__ == (3558661i32)) {
                        _after_3558661 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3557333._repeat(_op_3557371, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3558536?.__copy__(), _after_3558661?.__copy__(), _lastRepeat_3557387?.__copy__());
                                _after_3558661 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3558753i32;
                            } else {
                                _gotoNext = 3558783i32;
                            };
                        };
                    } else if (__value__ == (3558753i32)) {
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
                        _gotoNext = 3558783i32;
                    } else if (__value__ == (3558783i32)) {
                        _repeat_3557469 = _before_3558536?.__copy__();
                        _t_3557445 = _after_3558661?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3558814i32)) {
                        _op_3557371 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3558844 = _t_3557445?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3557333._parseRepeat(_t_3557445?.__copy__());
                            _min_3558859 = @:tmpset0 __tmp__._0;
                            _max_3558864 = @:tmpset0 __tmp__._1;
                            _after_3558869 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3558876 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3558876) {
                            _gotoNext = 3558909i32;
                        } else {
                            _gotoNext = 3559017i32;
                        };
                    } else if (__value__ == (3558909i32)) {
                        @:check2 _p_3557333._literal((123 : stdgo.GoInt32));
                        _t_3557445 = (_t_3557445.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3559017i32)) {
                        if (((((_min_3558859 < (0 : stdgo.GoInt) : Bool) || (_min_3558859 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3558864 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3558864 >= (0 : stdgo.GoInt) : Bool) && (_min_3558859 > _max_3558864 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3559081i32;
                        } else {
                            _gotoNext = 3559231i32;
                        };
                    } else if (__value__ == (3559081i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3558844.__slice__(0, ((_before_3558844.length) - (_after_3558869.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3559231i32;
                    } else if (__value__ == (3559231i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3557333._repeat(_op_3557371, _min_3558859, _max_3558864, _before_3558844?.__copy__(), _after_3558869?.__copy__(), _lastRepeat_3557387?.__copy__());
                                _after_3558869 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3559309i32;
                            } else {
                                _gotoNext = 3559339i32;
                            };
                        };
                    } else if (__value__ == (3559309i32)) {
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
                        _gotoNext = 3559339i32;
                    } else if (__value__ == (3559339i32)) {
                        _repeat_3557469 = _before_3558844?.__copy__();
                        _t_3557445 = _after_3558869?.__copy__();
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3559370i32)) {
                        if ((((_p_3557333._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3557445.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3559421i32;
                        } else {
                            _gotoNext = 3560145i32;
                        };
                    } else if (__value__ == (3559421i32)) {
                        _gotoNext = 3559427i32;
                    } else if (__value__ == (3559427i32)) {
                        {
                            final __value__ = _t_3557445[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3559445i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3559518i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3559594i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3559672i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3559767i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3560063i32;
                            } else {
                                _gotoNext = 3560145i32;
                            };
                        };
                    } else if (__value__ == (3559445i32)) {
                        @:check2 _p_3557333._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3557445 = (_t_3557445.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3559518i32)) {
                        @:check2 _p_3557333._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3557445 = (_t_3557445.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3559594i32)) {
                        @:check2 _p_3557333._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3557445 = (_t_3557445.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3559672i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3557445.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3560145i32;
                    } else if (__value__ == (3559767i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3557445.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3559832 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3557445 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3559890i32;
                    } else if (__value__ == (3559890i32)) {
                        if (_lit_3559832 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3559904i32;
                        } else {
                            _gotoNext = 3560043i32;
                        };
                    } else if (__value__ == (3559904i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3559832?.__copy__());
                            _c_3559912 = @:tmpset0 __tmp__._0;
                            _rest_3559915 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3559921 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3559921 != null) {
                            _gotoNext = 3559962i32;
                        } else {
                            _gotoNext = 3560001i32;
                        };
                    } else if (__value__ == (3559962i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3559921 };
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
                        _gotoNext = 3560001i32;
                    } else if (__value__ == (3560001i32)) {
                        @:check2 _p_3557333._literal(_c_3559912);
                        _lit_3559832 = _rest_3559915?.__copy__();
                        _gotoNext = 3559890i32;
                    } else if (__value__ == (3560043i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3560063i32)) {
                        @:check2 _p_3557333._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3557445 = (_t_3557445.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3560145i32)) {
                        _re_3560145 = @:check2 _p_3557333._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3560145 ?? throw "null pointer dereference").flags = _p_3557333._flags;
                        if ((((_t_3557445.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3557445[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3557445[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3560301i32;
                        } else {
                            _gotoNext = 3560543i32;
                        };
                    } else if (__value__ == (3560301i32)) {
                        {
                            var __tmp__ = @:check2 _p_3557333._parseUnicodeClass(_t_3557445?.__copy__(), ((@:checkr _re_3560145 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3560307 = @:tmpset0 __tmp__._0;
                            _rest_3560310 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3560316 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3560316 != null) {
                            _gotoNext = 3560378i32;
                        } else {
                            _gotoNext = 3560411i32;
                        };
                    } else if (__value__ == (3560378i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3560316 };
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
                        _gotoNext = 3560411i32;
                    } else if (__value__ == (3560411i32)) {
                        if (_r_3560307 != null) {
                            _gotoNext = 3560423i32;
                        } else {
                            _gotoNext = 3560543i32;
                        };
                    } else if (__value__ == (3560423i32)) {
                        (@:checkr _re_3560145 ?? throw "null pointer dereference").rune = _r_3560307;
                        _t_3557445 = _rest_3560310?.__copy__();
                        @:check2 _p_3557333._push(_re_3560145);
                        bigSwitchBreak = true;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3560543i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3557333._parsePerlClassEscape(_t_3557445?.__copy__(), ((@:checkr _re_3560145 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3560546 = @:tmpset0 __tmp__._0;
                                _rest_3560549 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3560546 != null) {
                                _gotoNext = 3560607i32;
                            } else {
                                _gotoNext = 3560681i32;
                            };
                        };
                    } else if (__value__ == (3560607i32)) {
                        (@:checkr _re_3560145 ?? throw "null pointer dereference").rune = _r_3560546;
                        _t_3557445 = _rest_3560549?.__copy__();
                        @:check2 _p_3557333._push(_re_3560145);
                        bigSwitchBreak = true;
                        _gotoNext = 3557496i32;
                    } else if (__value__ == (3560681i32)) {
                        @:check2 _p_3557333._reuse(_re_3560145);
                        {
                            {
                                var __tmp__ = @:check2 _p_3557333._parseEscape(_t_3557445?.__copy__());
                                _c_3557353 = @:tmpset0 __tmp__._0;
                                _t_3557445 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3560781i32;
                            } else {
                                _gotoNext = 3560811i32;
                            };
                        };
                    } else if (__value__ == (3560781i32)) {
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
                        _gotoNext = 3560811i32;
                    } else if (__value__ == (3560811i32)) {
                        @:check2 _p_3557333._literal(_c_3557353);
                        _gotoNext = 3560830i32;
                    } else if (__value__ == (3560830i32)) {
                        _lastRepeat_3557387 = _repeat_3557469?.__copy__();
                        _gotoNext = 3557453i32;
                    } else if (__value__ == (3560855i32)) {
                        @:check2 _p_3557333._concat();
                        if (@:check2 _p_3557333._swapVerticalBar()) {
                            _gotoNext = 3560890i32;
                        } else {
                            _gotoNext = 3560955i32;
                        };
                    } else if (__value__ == (3560890i32)) {
                        _p_3557333._stack = (_p_3557333._stack.__slice__(0, ((_p_3557333._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3560955i32;
                    } else if (__value__ == (3560955i32)) {
                        @:check2 _p_3557333._alternate();
                        _n_3560971 = (_p_3557333._stack.length);
                        if (_n_3560971 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3561000i32;
                        } else {
                            _gotoNext = 3561047i32;
                        };
                    } else if (__value__ == (3561000i32)) {
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
                        _gotoNext = 3561047i32;
                    } else if (__value__ == (3561047i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3557333._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
