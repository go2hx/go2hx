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
            var _c_3553224:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3550781:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3550683:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3550503:stdgo.Error = (null : stdgo.Error);
            var _re_3553457:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _rest_3553861:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3553619:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3551973:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3551848:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3552171:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3550757:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3550699:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3550645:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3553622:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3553144:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3552181:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3553858:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3552188:Bool = false;
            var _c_3550665:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3553628:stdgo.Error = (null : stdgo.Error);
            var _max_3552176:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3552156:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3554283:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _err_3553233:stdgo.Error = (null : stdgo.Error);
            var _rest_3553227:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3550456i32;
                        } else {
                            _gotoNext = 3550637i32;
                        };
                    } else if (__value__ == (3550456i32)) {
                        {
                            _err_3550503 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3550503 != null) {
                                _gotoNext = 3550535i32;
                            } else {
                                _gotoNext = 3550562i32;
                            };
                        };
                    } else if (__value__ == (3550535i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3550503 };
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
                        _gotoNext = 3550562i32;
                    } else if (__value__ == (3550562i32)) {
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
                        _gotoNext = 3550637i32;
                    } else if (__value__ == (3550637i32)) {
                        _p_3550645._flags = _flags;
                        _p_3550645._wholeRegexp = _s?.__copy__();
                        _t_3550757 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3550765i32;
                    } else if (__value__ == (3550765i32)) {
                        if (_t_3550757 != (stdgo.Go.str())) {
                            _gotoNext = 3550777i32;
                        } else {
                            _gotoNext = 3554167i32;
                        };
                    } else if (__value__ == (3550777i32)) {
                        _repeat_3550781 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3550795i32;
                    } else if (__value__ == (3550795i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3550808i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3550757[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3550921i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551191i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551288i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551384i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551499i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551629i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551743i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551825i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3552126i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3552682i32;
                                } else {
                                    _gotoNext = 3550824i32;
                                };
                            };
                        } else {
                            _gotoNext = 3554142i32;
                        };
                    } else if (__value__ == (3550824i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3550757?.__copy__());
                                _c_3550665 = @:tmpset0 __tmp__._0;
                                _t_3550757 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3550875i32;
                            } else {
                                _gotoNext = 3550905i32;
                            };
                        };
                    } else if (__value__ == (3550875i32)) {
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
                        _gotoNext = 3550905i32;
                    } else if (__value__ == (3550905i32)) {
                        @:check2 _p_3550645._literal(_c_3550665);
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3550921i32)) {
                        if ((((_p_3550645._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3550757.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3550757[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3550986i32;
                        } else {
                            _gotoNext = 3551129i32;
                        };
                    } else if (__value__ == (3550986i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3550645._parsePerlFlags(_t_3550757?.__copy__());
                                _t_3550757 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3551082i32;
                            } else {
                                _gotoNext = 3551115i32;
                            };
                        };
                    } else if (__value__ == (3551082i32)) {
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
                        _gotoNext = 3551115i32;
                    } else if (__value__ == (3551115i32)) {
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551129i32)) {
                        _p_3550645._numCap++;
                        @:check2 _p_3550645._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3550645._numCap;
                        _t_3550757 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551191i32)) {
                        {
                            _err = @:check2 _p_3550645._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3551246i32;
                            } else {
                                _gotoNext = 3551276i32;
                            };
                        };
                    } else if (__value__ == (3551246i32)) {
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
                        _gotoNext = 3551276i32;
                    } else if (__value__ == (3551276i32)) {
                        _t_3550757 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551288i32)) {
                        {
                            _err = @:check2 _p_3550645._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3551342i32;
                            } else {
                                _gotoNext = 3551372i32;
                            };
                        };
                    } else if (__value__ == (3551342i32)) {
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
                        _gotoNext = 3551372i32;
                    } else if (__value__ == (3551372i32)) {
                        _t_3550757 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551384i32)) {
                        if ((_p_3550645._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3551421i32;
                        } else {
                            _gotoNext = 3551455i32;
                        };
                    } else if (__value__ == (3551421i32)) {
                        @:check2 _p_3550645._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3551487i32;
                    } else if (__value__ == (3551455i32)) {
                        _gotoNext = 3551455i32;
                        @:check2 _p_3550645._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3551487i32;
                    } else if (__value__ == (3551487i32)) {
                        _t_3550757 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551499i32)) {
                        if ((_p_3550645._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3551536i32;
                        } else {
                            _gotoNext = 3551587i32;
                        };
                    } else if (__value__ == (3551536i32)) {
                        {
                            final __t__ = @:check2 _p_3550645._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3551617i32;
                    } else if (__value__ == (3551587i32)) {
                        _gotoNext = 3551587i32;
                        @:check2 _p_3550645._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3551617i32;
                    } else if (__value__ == (3551617i32)) {
                        _t_3550757 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551629i32)) {
                        if ((_p_3550645._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3551664i32;
                        } else {
                            _gotoNext = 3551696i32;
                        };
                    } else if (__value__ == (3551664i32)) {
                        @:check2 _p_3550645._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3551731i32;
                    } else if (__value__ == (3551696i32)) {
                        _gotoNext = 3551696i32;
                        @:check2 _p_3550645._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3551731i32;
                    } else if (__value__ == (3551731i32)) {
                        _t_3550757 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551743i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3550645._parseClass(_t_3550757?.__copy__());
                                _t_3550757 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3551796i32;
                            } else {
                                _gotoNext = 3554142i32;
                            };
                        };
                    } else if (__value__ == (3551796i32)) {
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
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3551825i32)) {
                        _before_3551848 = _t_3550757?.__copy__();
                        _gotoNext = 3551863i32;
                    } else if (__value__ == (3551863i32)) {
                        {
                            final __value__ = _t_3550757[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3551880i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3551909i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3551938i32;
                            } else {
                                _gotoNext = 3551973i32;
                            };
                        };
                    } else if (__value__ == (3551880i32)) {
                        _op_3550683 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3551973i32;
                    } else if (__value__ == (3551909i32)) {
                        _op_3550683 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3551973i32;
                    } else if (__value__ == (3551938i32)) {
                        _op_3550683 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3551973i32;
                    } else if (__value__ == (3551973i32)) {
                        _after_3551973 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3550645._repeat(_op_3550683, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3551848?.__copy__(), _after_3551973?.__copy__(), _lastRepeat_3550699?.__copy__());
                                _after_3551973 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3552065i32;
                            } else {
                                _gotoNext = 3552095i32;
                            };
                        };
                    } else if (__value__ == (3552065i32)) {
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
                        _gotoNext = 3552095i32;
                    } else if (__value__ == (3552095i32)) {
                        _repeat_3550781 = _before_3551848?.__copy__();
                        _t_3550757 = _after_3551973?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3552126i32)) {
                        _op_3550683 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3552156 = _t_3550757?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3550645._parseRepeat(_t_3550757?.__copy__());
                            _min_3552171 = @:tmpset0 __tmp__._0;
                            _max_3552176 = @:tmpset0 __tmp__._1;
                            _after_3552181 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3552188 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3552188) {
                            _gotoNext = 3552221i32;
                        } else {
                            _gotoNext = 3552329i32;
                        };
                    } else if (__value__ == (3552221i32)) {
                        @:check2 _p_3550645._literal((123 : stdgo.GoInt32));
                        _t_3550757 = (_t_3550757.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3552329i32)) {
                        if (((((_min_3552171 < (0 : stdgo.GoInt) : Bool) || (_min_3552171 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3552176 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3552176 >= (0 : stdgo.GoInt) : Bool) && (_min_3552171 > _max_3552176 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3552393i32;
                        } else {
                            _gotoNext = 3552543i32;
                        };
                    } else if (__value__ == (3552393i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3552156.__slice__(0, ((_before_3552156.length) - (_after_3552181.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3552543i32;
                    } else if (__value__ == (3552543i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3550645._repeat(_op_3550683, _min_3552171, _max_3552176, _before_3552156?.__copy__(), _after_3552181?.__copy__(), _lastRepeat_3550699?.__copy__());
                                _after_3552181 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3552621i32;
                            } else {
                                _gotoNext = 3552651i32;
                            };
                        };
                    } else if (__value__ == (3552621i32)) {
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
                        _gotoNext = 3552651i32;
                    } else if (__value__ == (3552651i32)) {
                        _repeat_3550781 = _before_3552156?.__copy__();
                        _t_3550757 = _after_3552181?.__copy__();
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3552682i32)) {
                        if ((((_p_3550645._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3550757.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3552733i32;
                        } else {
                            _gotoNext = 3553457i32;
                        };
                    } else if (__value__ == (3552733i32)) {
                        _gotoNext = 3552739i32;
                    } else if (__value__ == (3552739i32)) {
                        {
                            final __value__ = _t_3550757[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3552757i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3552830i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3552906i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3552984i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3553079i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3553375i32;
                            } else {
                                _gotoNext = 3553457i32;
                            };
                        };
                    } else if (__value__ == (3552757i32)) {
                        @:check2 _p_3550645._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3550757 = (_t_3550757.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3552830i32)) {
                        @:check2 _p_3550645._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3550757 = (_t_3550757.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3552906i32)) {
                        @:check2 _p_3550645._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3550757 = (_t_3550757.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3552984i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3550757.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3553457i32;
                    } else if (__value__ == (3553079i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3550757.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3553144 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3550757 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3553202i32;
                    } else if (__value__ == (3553202i32)) {
                        if (_lit_3553144 != (stdgo.Go.str())) {
                            _gotoNext = 3553216i32;
                        } else {
                            _gotoNext = 3553355i32;
                        };
                    } else if (__value__ == (3553216i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3553144?.__copy__());
                            _c_3553224 = @:tmpset0 __tmp__._0;
                            _rest_3553227 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3553233 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3553233 != null) {
                            _gotoNext = 3553274i32;
                        } else {
                            _gotoNext = 3553313i32;
                        };
                    } else if (__value__ == (3553274i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3553233 };
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
                        _gotoNext = 3553313i32;
                    } else if (__value__ == (3553313i32)) {
                        @:check2 _p_3550645._literal(_c_3553224);
                        _lit_3553144 = _rest_3553227?.__copy__();
                        _gotoNext = 3553202i32;
                    } else if (__value__ == (3553355i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3553375i32)) {
                        @:check2 _p_3550645._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3550757 = (_t_3550757.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3553457i32)) {
                        _re_3553457 = @:check2 _p_3550645._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3553457 ?? throw "null pointer dereference").flags = _p_3550645._flags;
                        if ((((_t_3550757.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3550757[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3550757[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3553613i32;
                        } else {
                            _gotoNext = 3553855i32;
                        };
                    } else if (__value__ == (3553613i32)) {
                        {
                            var __tmp__ = @:check2 _p_3550645._parseUnicodeClass(_t_3550757?.__copy__(), ((@:checkr _re_3553457 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3553619 = @:tmpset0 __tmp__._0;
                            _rest_3553622 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3553628 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3553628 != null) {
                            _gotoNext = 3553690i32;
                        } else {
                            _gotoNext = 3553723i32;
                        };
                    } else if (__value__ == (3553690i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3553628 };
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
                        _gotoNext = 3553723i32;
                    } else if (__value__ == (3553723i32)) {
                        if (_r_3553619 != null) {
                            _gotoNext = 3553735i32;
                        } else {
                            _gotoNext = 3553855i32;
                        };
                    } else if (__value__ == (3553735i32)) {
                        (@:checkr _re_3553457 ?? throw "null pointer dereference").rune = _r_3553619;
                        _t_3550757 = _rest_3553622?.__copy__();
                        @:check2 _p_3550645._push(_re_3553457);
                        bigSwitchBreak = true;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3553855i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3550645._parsePerlClassEscape(_t_3550757?.__copy__(), ((@:checkr _re_3553457 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3553858 = @:tmpset0 __tmp__._0;
                                _rest_3553861 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3553858 != null) {
                                _gotoNext = 3553919i32;
                            } else {
                                _gotoNext = 3553993i32;
                            };
                        };
                    } else if (__value__ == (3553919i32)) {
                        (@:checkr _re_3553457 ?? throw "null pointer dereference").rune = _r_3553858;
                        _t_3550757 = _rest_3553861?.__copy__();
                        @:check2 _p_3550645._push(_re_3553457);
                        bigSwitchBreak = true;
                        _gotoNext = 3550808i32;
                    } else if (__value__ == (3553993i32)) {
                        @:check2 _p_3550645._reuse(_re_3553457);
                        {
                            {
                                var __tmp__ = @:check2 _p_3550645._parseEscape(_t_3550757?.__copy__());
                                _c_3550665 = @:tmpset0 __tmp__._0;
                                _t_3550757 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3554093i32;
                            } else {
                                _gotoNext = 3554123i32;
                            };
                        };
                    } else if (__value__ == (3554093i32)) {
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
                        _gotoNext = 3554123i32;
                    } else if (__value__ == (3554123i32)) {
                        @:check2 _p_3550645._literal(_c_3550665);
                        _gotoNext = 3554142i32;
                    } else if (__value__ == (3554142i32)) {
                        _lastRepeat_3550699 = _repeat_3550781?.__copy__();
                        _gotoNext = 3550765i32;
                    } else if (__value__ == (3554167i32)) {
                        @:check2 _p_3550645._concat();
                        if (@:check2 _p_3550645._swapVerticalBar()) {
                            _gotoNext = 3554202i32;
                        } else {
                            _gotoNext = 3554267i32;
                        };
                    } else if (__value__ == (3554202i32)) {
                        _p_3550645._stack = (_p_3550645._stack.__slice__(0, ((_p_3550645._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3554267i32;
                    } else if (__value__ == (3554267i32)) {
                        @:check2 _p_3550645._alternate();
                        _n_3554283 = (_p_3550645._stack.length);
                        if (_n_3554283 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3554312i32;
                        } else {
                            _gotoNext = 3554359i32;
                        };
                    } else if (__value__ == (3554312i32)) {
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
                        _gotoNext = 3554359i32;
                    } else if (__value__ == (3554359i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3550645._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
