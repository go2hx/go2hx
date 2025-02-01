package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _re_3297378:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _ok_3296109:Bool = false;
            var _repeat_3294702:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3294566:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _c_3297145:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3296077:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3297549:stdgo.Error = (null : stdgo.Error);
            var _lit_3297065:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3297154:stdgo.Error = (null : stdgo.Error);
            var _min_3296092:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3294678:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3297782:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3294620:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3294604:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3297148:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3294424:stdgo.Error = (null : stdgo.Error);
            var _n_3298204:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3297779:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3296102:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3295769:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3294586:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3297543:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3297540:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _max_3296097:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3295894:stdgo.GoString = ("" : stdgo.GoString);
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
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3294377i32;
                        } else {
                            _gotoNext = 3294558i32;
                        };
                    } else if (__value__ == (3294377i32)) {
                        {
                            _err_3294424 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3294424 != null) {
                                _gotoNext = 3294456i32;
                            } else {
                                _gotoNext = 3294483i32;
                            };
                        };
                    } else if (__value__ == (3294456i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3294424 };
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
                        _gotoNext = 3294483i32;
                    } else if (__value__ == (3294483i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
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
                        _gotoNext = 3294558i32;
                    } else if (__value__ == (3294558i32)) {
                        _p_3294566._flags = _flags;
                        _p_3294566._wholeRegexp = _s?.__copy__();
                        _t_3294678 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3294686i32;
                    } else if (__value__ == (3294686i32)) {
                        if (_t_3294678 != (stdgo.Go.str())) {
                            _gotoNext = 3294698i32;
                        } else {
                            _gotoNext = 3298088i32;
                        };
                    } else if (__value__ == (3294698i32)) {
                        _repeat_3294702 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3294716i32;
                    } else if (__value__ == (3294716i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3294729i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3294678[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3294842i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295112i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295209i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295305i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295420i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295550i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295664i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295746i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296047i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296603i32;
                                } else {
                                    _gotoNext = 3294745i32;
                                };
                            };
                        } else {
                            _gotoNext = 3298063i32;
                        };
                    } else if (__value__ == (3294745i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3294678?.__copy__());
                                _c_3294586 = @:tmpset0 __tmp__._0;
                                _t_3294678 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3294796i32;
                            } else {
                                _gotoNext = 3294826i32;
                            };
                        };
                    } else if (__value__ == (3294796i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3294826i32;
                    } else if (__value__ == (3294826i32)) {
                        @:check2 _p_3294566._literal(_c_3294586);
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3294842i32)) {
                        if ((((_p_3294566._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3294678.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3294678[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3294907i32;
                        } else {
                            _gotoNext = 3295050i32;
                        };
                    } else if (__value__ == (3294907i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3294566._parsePerlFlags(_t_3294678?.__copy__());
                                _t_3294678 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3295003i32;
                            } else {
                                _gotoNext = 3295036i32;
                            };
                        };
                    } else if (__value__ == (3295003i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3295036i32;
                    } else if (__value__ == (3295036i32)) {
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295050i32)) {
                        _p_3294566._numCap++;
                        @:check2 _p_3294566._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3294566._numCap;
                        _t_3294678 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295112i32)) {
                        {
                            _err = @:check2 _p_3294566._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3295167i32;
                            } else {
                                _gotoNext = 3295197i32;
                            };
                        };
                    } else if (__value__ == (3295167i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3295197i32;
                    } else if (__value__ == (3295197i32)) {
                        _t_3294678 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295209i32)) {
                        {
                            _err = @:check2 _p_3294566._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3295263i32;
                            } else {
                                _gotoNext = 3295293i32;
                            };
                        };
                    } else if (__value__ == (3295263i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3295293i32;
                    } else if (__value__ == (3295293i32)) {
                        _t_3294678 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295305i32)) {
                        if ((_p_3294566._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3295342i32;
                        } else {
                            _gotoNext = 3295376i32;
                        };
                    } else if (__value__ == (3295342i32)) {
                        @:check2 _p_3294566._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3295408i32;
                    } else if (__value__ == (3295376i32)) {
                        _gotoNext = 3295376i32;
                        @:check2 _p_3294566._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3295408i32;
                    } else if (__value__ == (3295408i32)) {
                        _t_3294678 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295420i32)) {
                        if ((_p_3294566._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3295457i32;
                        } else {
                            _gotoNext = 3295508i32;
                        };
                    } else if (__value__ == (3295457i32)) {
                        {
                            final __t__ = @:check2 _p_3294566._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3295538i32;
                    } else if (__value__ == (3295508i32)) {
                        _gotoNext = 3295508i32;
                        @:check2 _p_3294566._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3295538i32;
                    } else if (__value__ == (3295538i32)) {
                        _t_3294678 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295550i32)) {
                        if ((_p_3294566._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3295585i32;
                        } else {
                            _gotoNext = 3295617i32;
                        };
                    } else if (__value__ == (3295585i32)) {
                        @:check2 _p_3294566._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3295652i32;
                    } else if (__value__ == (3295617i32)) {
                        _gotoNext = 3295617i32;
                        @:check2 _p_3294566._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3295652i32;
                    } else if (__value__ == (3295652i32)) {
                        _t_3294678 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295664i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3294566._parseClass(_t_3294678?.__copy__());
                                _t_3294678 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3295717i32;
                            } else {
                                _gotoNext = 3298063i32;
                            };
                        };
                    } else if (__value__ == (3295717i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3295746i32)) {
                        _before_3295769 = _t_3294678?.__copy__();
                        _gotoNext = 3295784i32;
                    } else if (__value__ == (3295784i32)) {
                        {
                            final __value__ = _t_3294678[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3295801i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3295830i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3295859i32;
                            } else {
                                _gotoNext = 3295894i32;
                            };
                        };
                    } else if (__value__ == (3295801i32)) {
                        _op_3294604 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3295894i32;
                    } else if (__value__ == (3295830i32)) {
                        _op_3294604 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3295894i32;
                    } else if (__value__ == (3295859i32)) {
                        _op_3294604 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3295894i32;
                    } else if (__value__ == (3295894i32)) {
                        _after_3295894 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3294566._repeat(_op_3294604, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3295769?.__copy__(), _after_3295894?.__copy__(), _lastRepeat_3294620?.__copy__());
                                _after_3295894 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3295986i32;
                            } else {
                                _gotoNext = 3296016i32;
                            };
                        };
                    } else if (__value__ == (3295986i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3296016i32;
                    } else if (__value__ == (3296016i32)) {
                        _repeat_3294702 = _before_3295769?.__copy__();
                        _t_3294678 = _after_3295894?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3296047i32)) {
                        _op_3294604 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3296077 = _t_3294678?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3294566._parseRepeat(_t_3294678?.__copy__());
                            _min_3296092 = @:tmpset0 __tmp__._0;
                            _max_3296097 = @:tmpset0 __tmp__._1;
                            _after_3296102 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3296109 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3296109) {
                            _gotoNext = 3296142i32;
                        } else {
                            _gotoNext = 3296250i32;
                        };
                    } else if (__value__ == (3296142i32)) {
                        @:check2 _p_3294566._literal((123 : stdgo.GoInt32));
                        _t_3294678 = (_t_3294678.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3296250i32)) {
                        if (((((_min_3296092 < (0 : stdgo.GoInt) : Bool) || (_min_3296092 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3296097 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3296097 >= (0 : stdgo.GoInt) : Bool) && (_min_3296092 > _max_3296097 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3296314i32;
                        } else {
                            _gotoNext = 3296464i32;
                        };
                    } else if (__value__ == (3296314i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3296077.__slice__(0, ((_before_3296077.length) - (_after_3296102.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3296464i32;
                    } else if (__value__ == (3296464i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3294566._repeat(_op_3294604, _min_3296092, _max_3296097, _before_3296077?.__copy__(), _after_3296102?.__copy__(), _lastRepeat_3294620?.__copy__());
                                _after_3296102 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3296542i32;
                            } else {
                                _gotoNext = 3296572i32;
                            };
                        };
                    } else if (__value__ == (3296542i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3296572i32;
                    } else if (__value__ == (3296572i32)) {
                        _repeat_3294702 = _before_3296077?.__copy__();
                        _t_3294678 = _after_3296102?.__copy__();
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3296603i32)) {
                        if ((((_p_3294566._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3294678.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3296654i32;
                        } else {
                            _gotoNext = 3297378i32;
                        };
                    } else if (__value__ == (3296654i32)) {
                        _gotoNext = 3296660i32;
                    } else if (__value__ == (3296660i32)) {
                        {
                            final __value__ = _t_3294678[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3296678i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3296751i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3296827i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3296905i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3297000i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3297296i32;
                            } else {
                                _gotoNext = 3297378i32;
                            };
                        };
                    } else if (__value__ == (3296678i32)) {
                        @:check2 _p_3294566._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3294678 = (_t_3294678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3296751i32)) {
                        @:check2 _p_3294566._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3294678 = (_t_3294678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3296827i32)) {
                        @:check2 _p_3294566._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3294678 = (_t_3294678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3296905i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3294678.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3297378i32;
                    } else if (__value__ == (3297000i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3294678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3297065 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3294678 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3297123i32;
                    } else if (__value__ == (3297123i32)) {
                        if (_lit_3297065 != (stdgo.Go.str())) {
                            _gotoNext = 3297137i32;
                        } else {
                            _gotoNext = 3297276i32;
                        };
                    } else if (__value__ == (3297137i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3297065?.__copy__());
                            _c_3297145 = @:tmpset0 __tmp__._0;
                            _rest_3297148 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3297154 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3297154 != null) {
                            _gotoNext = 3297195i32;
                        } else {
                            _gotoNext = 3297234i32;
                        };
                    } else if (__value__ == (3297195i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3297154 };
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
                        _gotoNext = 3297234i32;
                    } else if (__value__ == (3297234i32)) {
                        @:check2 _p_3294566._literal(_c_3297145);
                        _lit_3297065 = _rest_3297148?.__copy__();
                        _gotoNext = 3297123i32;
                    } else if (__value__ == (3297276i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3297296i32)) {
                        @:check2 _p_3294566._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3294678 = (_t_3294678.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3297378i32)) {
                        _re_3297378 = @:check2 _p_3294566._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3297378 ?? throw "null pointer dereference").flags = _p_3294566._flags;
                        if ((((_t_3294678.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3294678[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3294678[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3297534i32;
                        } else {
                            _gotoNext = 3297776i32;
                        };
                    } else if (__value__ == (3297534i32)) {
                        {
                            var __tmp__ = @:check2 _p_3294566._parseUnicodeClass(_t_3294678?.__copy__(), ((@:checkr _re_3297378 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3297540 = @:tmpset0 __tmp__._0;
                            _rest_3297543 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3297549 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3297549 != null) {
                            _gotoNext = 3297611i32;
                        } else {
                            _gotoNext = 3297644i32;
                        };
                    } else if (__value__ == (3297611i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3297549 };
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
                        _gotoNext = 3297644i32;
                    } else if (__value__ == (3297644i32)) {
                        if (_r_3297540 != null) {
                            _gotoNext = 3297656i32;
                        } else {
                            _gotoNext = 3297776i32;
                        };
                    } else if (__value__ == (3297656i32)) {
                        (@:checkr _re_3297378 ?? throw "null pointer dereference").rune = _r_3297540;
                        _t_3294678 = _rest_3297543?.__copy__();
                        @:check2 _p_3294566._push(_re_3297378);
                        bigSwitchBreak = true;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3297776i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3294566._parsePerlClassEscape(_t_3294678?.__copy__(), ((@:checkr _re_3297378 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3297779 = @:tmpset0 __tmp__._0;
                                _rest_3297782 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3297779 != null) {
                                _gotoNext = 3297840i32;
                            } else {
                                _gotoNext = 3297914i32;
                            };
                        };
                    } else if (__value__ == (3297840i32)) {
                        (@:checkr _re_3297378 ?? throw "null pointer dereference").rune = _r_3297779;
                        _t_3294678 = _rest_3297782?.__copy__();
                        @:check2 _p_3294566._push(_re_3297378);
                        bigSwitchBreak = true;
                        _gotoNext = 3294729i32;
                    } else if (__value__ == (3297914i32)) {
                        @:check2 _p_3294566._reuse(_re_3297378);
                        {
                            {
                                var __tmp__ = @:check2 _p_3294566._parseEscape(_t_3294678?.__copy__());
                                _c_3294586 = @:tmpset0 __tmp__._0;
                                _t_3294678 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3298014i32;
                            } else {
                                _gotoNext = 3298044i32;
                            };
                        };
                    } else if (__value__ == (3298014i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                        _gotoNext = 3298044i32;
                    } else if (__value__ == (3298044i32)) {
                        @:check2 _p_3294566._literal(_c_3294586);
                        _gotoNext = 3298063i32;
                    } else if (__value__ == (3298063i32)) {
                        _lastRepeat_3294620 = _repeat_3294702?.__copy__();
                        _gotoNext = 3294686i32;
                    } else if (__value__ == (3298088i32)) {
                        @:check2 _p_3294566._concat();
                        if (@:check2 _p_3294566._swapVerticalBar()) {
                            _gotoNext = 3298123i32;
                        } else {
                            _gotoNext = 3298188i32;
                        };
                    } else if (__value__ == (3298123i32)) {
                        _p_3294566._stack = (_p_3294566._stack.__slice__(0, ((_p_3294566._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3298188i32;
                    } else if (__value__ == (3298188i32)) {
                        @:check2 _p_3294566._alternate();
                        _n_3298204 = (_p_3294566._stack.length);
                        if (_n_3298204 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3298233i32;
                        } else {
                            _gotoNext = 3298280i32;
                        };
                    } else if (__value__ == (3298233i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3298280i32;
                    } else if (__value__ == (3298280i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3294566._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
