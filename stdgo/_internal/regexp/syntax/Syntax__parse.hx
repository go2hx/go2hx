package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3331829:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3329386:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3329304:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3332062:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _n_3332888:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3329270:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3332224:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3330786:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3330761:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3330781:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3330578:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3330453:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3329288:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _err_3329108:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _lit_3331749:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3330793:Bool = false;
            var _min_3330776:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3331832:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3329250:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _rest_3332466:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3332227:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3329362:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3332463:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3332233:stdgo.Error = (null : stdgo.Error);
            var _err_3331838:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3329061i32;
                        } else {
                            _gotoNext = 3329242i32;
                        };
                    } else if (__value__ == (3329061i32)) {
                        {
                            _err_3329108 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3329108 != null) {
                                _gotoNext = 3329140i32;
                            } else {
                                _gotoNext = 3329167i32;
                            };
                        };
                    } else if (__value__ == (3329140i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3329108 };
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
                        _gotoNext = 3329167i32;
                    } else if (__value__ == (3329167i32)) {
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
                        _gotoNext = 3329242i32;
                    } else if (__value__ == (3329242i32)) {
                        _p_3329250._flags = _flags;
                        _p_3329250._wholeRegexp = _s?.__copy__();
                        _t_3329362 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3329370i32;
                    } else if (__value__ == (3329370i32)) {
                        if (_t_3329362 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3329382i32;
                        } else {
                            _gotoNext = 3332772i32;
                        };
                    } else if (__value__ == (3329382i32)) {
                        _repeat_3329386 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3329400i32;
                    } else if (__value__ == (3329400i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3329413i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3329362[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3329526i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3329796i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3329893i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3329989i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330104i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330234i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330348i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330430i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3330731i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331287i32;
                                } else {
                                    _gotoNext = 3329429i32;
                                };
                            };
                        } else {
                            _gotoNext = 3332747i32;
                        };
                    } else if (__value__ == (3329429i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3329362?.__copy__());
                                _c_3329270 = @:tmpset0 __tmp__._0;
                                _t_3329362 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3329480i32;
                            } else {
                                _gotoNext = 3329510i32;
                            };
                        };
                    } else if (__value__ == (3329480i32)) {
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
                        _gotoNext = 3329510i32;
                    } else if (__value__ == (3329510i32)) {
                        @:check2 _p_3329250._literal(_c_3329270);
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3329526i32)) {
                        if ((((_p_3329250._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3329362.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3329362[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3329591i32;
                        } else {
                            _gotoNext = 3329734i32;
                        };
                    } else if (__value__ == (3329591i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329250._parsePerlFlags(_t_3329362?.__copy__());
                                _t_3329362 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3329687i32;
                            } else {
                                _gotoNext = 3329720i32;
                            };
                        };
                    } else if (__value__ == (3329687i32)) {
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
                        _gotoNext = 3329720i32;
                    } else if (__value__ == (3329720i32)) {
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3329734i32)) {
                        _p_3329250._numCap++;
                        @:check2 _p_3329250._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3329250._numCap;
                        _t_3329362 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3329796i32)) {
                        {
                            _err = @:check2 _p_3329250._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3329851i32;
                            } else {
                                _gotoNext = 3329881i32;
                            };
                        };
                    } else if (__value__ == (3329851i32)) {
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
                        _gotoNext = 3329881i32;
                    } else if (__value__ == (3329881i32)) {
                        _t_3329362 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3329893i32)) {
                        {
                            _err = @:check2 _p_3329250._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3329947i32;
                            } else {
                                _gotoNext = 3329977i32;
                            };
                        };
                    } else if (__value__ == (3329947i32)) {
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
                        _gotoNext = 3329977i32;
                    } else if (__value__ == (3329977i32)) {
                        _t_3329362 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3329989i32)) {
                        if ((_p_3329250._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3330026i32;
                        } else {
                            _gotoNext = 3330060i32;
                        };
                    } else if (__value__ == (3330026i32)) {
                        @:check2 _p_3329250._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3330092i32;
                    } else if (__value__ == (3330060i32)) {
                        _gotoNext = 3330060i32;
                        @:check2 _p_3329250._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3330092i32;
                    } else if (__value__ == (3330092i32)) {
                        _t_3329362 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3330104i32)) {
                        if ((_p_3329250._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3330141i32;
                        } else {
                            _gotoNext = 3330192i32;
                        };
                    } else if (__value__ == (3330141i32)) {
                        {
                            final __t__ = @:check2 _p_3329250._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3330222i32;
                    } else if (__value__ == (3330192i32)) {
                        _gotoNext = 3330192i32;
                        @:check2 _p_3329250._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3330222i32;
                    } else if (__value__ == (3330222i32)) {
                        _t_3329362 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3330234i32)) {
                        if ((_p_3329250._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3330269i32;
                        } else {
                            _gotoNext = 3330301i32;
                        };
                    } else if (__value__ == (3330269i32)) {
                        @:check2 _p_3329250._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3330336i32;
                    } else if (__value__ == (3330301i32)) {
                        _gotoNext = 3330301i32;
                        @:check2 _p_3329250._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3330336i32;
                    } else if (__value__ == (3330336i32)) {
                        _t_3329362 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3330348i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329250._parseClass(_t_3329362?.__copy__());
                                _t_3329362 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3330401i32;
                            } else {
                                _gotoNext = 3332747i32;
                            };
                        };
                    } else if (__value__ == (3330401i32)) {
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
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3330430i32)) {
                        _before_3330453 = _t_3329362?.__copy__();
                        _gotoNext = 3330468i32;
                    } else if (__value__ == (3330468i32)) {
                        {
                            final __value__ = _t_3329362[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3330485i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3330514i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3330543i32;
                            } else {
                                _gotoNext = 3330578i32;
                            };
                        };
                    } else if (__value__ == (3330485i32)) {
                        _op_3329288 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3330578i32;
                    } else if (__value__ == (3330514i32)) {
                        _op_3329288 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3330578i32;
                    } else if (__value__ == (3330543i32)) {
                        _op_3329288 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3330578i32;
                    } else if (__value__ == (3330578i32)) {
                        _after_3330578 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3329250._repeat(_op_3329288, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3330453?.__copy__(), _after_3330578?.__copy__(), _lastRepeat_3329304?.__copy__());
                                _after_3330578 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3330670i32;
                            } else {
                                _gotoNext = 3330700i32;
                            };
                        };
                    } else if (__value__ == (3330670i32)) {
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
                        _gotoNext = 3330700i32;
                    } else if (__value__ == (3330700i32)) {
                        _repeat_3329386 = _before_3330453?.__copy__();
                        _t_3329362 = _after_3330578?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3330731i32)) {
                        _op_3329288 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3330761 = _t_3329362?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3329250._parseRepeat(_t_3329362?.__copy__());
                            _min_3330776 = @:tmpset0 __tmp__._0;
                            _max_3330781 = @:tmpset0 __tmp__._1;
                            _after_3330786 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3330793 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3330793) {
                            _gotoNext = 3330826i32;
                        } else {
                            _gotoNext = 3330934i32;
                        };
                    } else if (__value__ == (3330826i32)) {
                        @:check2 _p_3329250._literal((123 : stdgo.GoInt32));
                        _t_3329362 = (_t_3329362.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3330934i32)) {
                        if (((((_min_3330776 < (0 : stdgo.GoInt) : Bool) || (_min_3330776 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3330781 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3330781 >= (0 : stdgo.GoInt) : Bool) && (_min_3330776 > _max_3330781 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3330998i32;
                        } else {
                            _gotoNext = 3331148i32;
                        };
                    } else if (__value__ == (3330998i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3330761.__slice__(0, ((_before_3330761.length) - (_after_3330786.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3331148i32;
                    } else if (__value__ == (3331148i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329250._repeat(_op_3329288, _min_3330776, _max_3330781, _before_3330761?.__copy__(), _after_3330786?.__copy__(), _lastRepeat_3329304?.__copy__());
                                _after_3330786 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3331226i32;
                            } else {
                                _gotoNext = 3331256i32;
                            };
                        };
                    } else if (__value__ == (3331226i32)) {
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
                        _gotoNext = 3331256i32;
                    } else if (__value__ == (3331256i32)) {
                        _repeat_3329386 = _before_3330761?.__copy__();
                        _t_3329362 = _after_3330786?.__copy__();
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3331287i32)) {
                        if ((((_p_3329250._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3329362.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3331338i32;
                        } else {
                            _gotoNext = 3332062i32;
                        };
                    } else if (__value__ == (3331338i32)) {
                        _gotoNext = 3331344i32;
                    } else if (__value__ == (3331344i32)) {
                        {
                            final __value__ = _t_3329362[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3331362i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3331435i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3331511i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3331589i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3331684i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3331980i32;
                            } else {
                                _gotoNext = 3332062i32;
                            };
                        };
                    } else if (__value__ == (3331362i32)) {
                        @:check2 _p_3329250._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3329362 = (_t_3329362.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3331435i32)) {
                        @:check2 _p_3329250._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3329362 = (_t_3329362.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3331511i32)) {
                        @:check2 _p_3329250._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3329362 = (_t_3329362.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3331589i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3329362.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        _gotoNext = 3332062i32;
                    } else if (__value__ == (3331684i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3329362.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3331749 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3329362 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3331807i32;
                    } else if (__value__ == (3331807i32)) {
                        if (_lit_3331749 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3331821i32;
                        } else {
                            _gotoNext = 3331960i32;
                        };
                    } else if (__value__ == (3331821i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3331749?.__copy__());
                            _c_3331829 = @:tmpset0 __tmp__._0;
                            _rest_3331832 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3331838 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3331838 != null) {
                            _gotoNext = 3331879i32;
                        } else {
                            _gotoNext = 3331918i32;
                        };
                    } else if (__value__ == (3331879i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3331838 };
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
                        _gotoNext = 3331918i32;
                    } else if (__value__ == (3331918i32)) {
                        @:check2 _p_3329250._literal(_c_3331829);
                        _lit_3331749 = _rest_3331832?.__copy__();
                        _gotoNext = 3331807i32;
                    } else if (__value__ == (3331960i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3331980i32)) {
                        @:check2 _p_3329250._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3329362 = (_t_3329362.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3332062i32)) {
                        _re_3332062 = @:check2 _p_3329250._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3332062 ?? throw "null pointer dereference").flags = _p_3329250._flags;
                        if ((((_t_3329362.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3329362[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3329362[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3332218i32;
                        } else {
                            _gotoNext = 3332460i32;
                        };
                    } else if (__value__ == (3332218i32)) {
                        {
                            var __tmp__ = @:check2 _p_3329250._parseUnicodeClass(_t_3329362?.__copy__(), ((@:checkr _re_3332062 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3332224 = @:tmpset0 __tmp__._0;
                            _rest_3332227 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3332233 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3332233 != null) {
                            _gotoNext = 3332295i32;
                        } else {
                            _gotoNext = 3332328i32;
                        };
                    } else if (__value__ == (3332295i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3332233 };
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
                        _gotoNext = 3332328i32;
                    } else if (__value__ == (3332328i32)) {
                        if (_r_3332224 != null) {
                            _gotoNext = 3332340i32;
                        } else {
                            _gotoNext = 3332460i32;
                        };
                    } else if (__value__ == (3332340i32)) {
                        (@:checkr _re_3332062 ?? throw "null pointer dereference").rune = _r_3332224;
                        _t_3329362 = _rest_3332227?.__copy__();
                        @:check2 _p_3329250._push(_re_3332062);
                        bigSwitchBreak = true;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3332460i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3329250._parsePerlClassEscape(_t_3329362?.__copy__(), ((@:checkr _re_3332062 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3332463 = @:tmpset0 __tmp__._0;
                                _rest_3332466 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3332463 != null) {
                                _gotoNext = 3332524i32;
                            } else {
                                _gotoNext = 3332598i32;
                            };
                        };
                    } else if (__value__ == (3332524i32)) {
                        (@:checkr _re_3332062 ?? throw "null pointer dereference").rune = _r_3332463;
                        _t_3329362 = _rest_3332466?.__copy__();
                        @:check2 _p_3329250._push(_re_3332062);
                        bigSwitchBreak = true;
                        _gotoNext = 3329413i32;
                    } else if (__value__ == (3332598i32)) {
                        @:check2 _p_3329250._reuse(_re_3332062);
                        {
                            {
                                var __tmp__ = @:check2 _p_3329250._parseEscape(_t_3329362?.__copy__());
                                _c_3329270 = @:tmpset0 __tmp__._0;
                                _t_3329362 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3332698i32;
                            } else {
                                _gotoNext = 3332728i32;
                            };
                        };
                    } else if (__value__ == (3332698i32)) {
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
                        _gotoNext = 3332728i32;
                    } else if (__value__ == (3332728i32)) {
                        @:check2 _p_3329250._literal(_c_3329270);
                        _gotoNext = 3332747i32;
                    } else if (__value__ == (3332747i32)) {
                        _lastRepeat_3329304 = _repeat_3329386?.__copy__();
                        _gotoNext = 3329370i32;
                    } else if (__value__ == (3332772i32)) {
                        @:check2 _p_3329250._concat();
                        if (@:check2 _p_3329250._swapVerticalBar()) {
                            _gotoNext = 3332807i32;
                        } else {
                            _gotoNext = 3332872i32;
                        };
                    } else if (__value__ == (3332807i32)) {
                        _p_3329250._stack = (_p_3329250._stack.__slice__(0, ((_p_3329250._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3332872i32;
                    } else if (__value__ == (3332872i32)) {
                        @:check2 _p_3329250._alternate();
                        _n_3332888 = (_p_3329250._stack.length);
                        if (_n_3332888 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3332917i32;
                        } else {
                            _gotoNext = 3332964i32;
                        };
                    } else if (__value__ == (3332917i32)) {
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
                        _gotoNext = 3332964i32;
                    } else if (__value__ == (3332964i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3329250._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
