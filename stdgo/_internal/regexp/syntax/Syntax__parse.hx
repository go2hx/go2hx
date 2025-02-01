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
            var _c_3339414:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3338163:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3339812:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3340473:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3340051:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3339809:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _op_3336873:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _p_3336835:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3336693:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _r_3340048:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3339423:stdgo.Error = (null : stdgo.Error);
            var _lit_3339334:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3338371:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3336947:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3336855:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_3339647:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _repeat_3336971:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3336889:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3338361:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3338038:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3339417:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3338378:Bool = false;
            var _before_3338346:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3339818:stdgo.Error = (null : stdgo.Error);
            var _max_3338366:stdgo.GoInt = (0 : stdgo.GoInt);
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
                            _gotoNext = 3336646i32;
                        } else {
                            _gotoNext = 3336827i32;
                        };
                    } else if (__value__ == (3336646i32)) {
                        {
                            _err_3336693 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3336693 != null) {
                                _gotoNext = 3336725i32;
                            } else {
                                _gotoNext = 3336752i32;
                            };
                        };
                    } else if (__value__ == (3336725i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3336693 };
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
                        _gotoNext = 3336752i32;
                    } else if (__value__ == (3336752i32)) {
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
                        _gotoNext = 3336827i32;
                    } else if (__value__ == (3336827i32)) {
                        _p_3336835._flags = _flags;
                        _p_3336835._wholeRegexp = _s?.__copy__();
                        _t_3336947 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3336955i32;
                    } else if (__value__ == (3336955i32)) {
                        if (_t_3336947 != (stdgo.Go.str())) {
                            _gotoNext = 3336967i32;
                        } else {
                            _gotoNext = 3340357i32;
                        };
                    } else if (__value__ == (3336967i32)) {
                        _repeat_3336971 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3336985i32;
                    } else if (__value__ == (3336985i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3336998i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3336947[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337111i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337381i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337478i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337574i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337689i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337819i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337933i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338015i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338316i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338872i32;
                                } else {
                                    _gotoNext = 3337014i32;
                                };
                            };
                        } else {
                            _gotoNext = 3340332i32;
                        };
                    } else if (__value__ == (3337014i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3336947?.__copy__());
                                _c_3336855 = @:tmpset0 __tmp__._0;
                                _t_3336947 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3337065i32;
                            } else {
                                _gotoNext = 3337095i32;
                            };
                        };
                    } else if (__value__ == (3337065i32)) {
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
                        _gotoNext = 3337095i32;
                    } else if (__value__ == (3337095i32)) {
                        @:check2 _p_3336835._literal(_c_3336855);
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337111i32)) {
                        if ((((_p_3336835._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3336947.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3336947[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3337176i32;
                        } else {
                            _gotoNext = 3337319i32;
                        };
                    } else if (__value__ == (3337176i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3336835._parsePerlFlags(_t_3336947?.__copy__());
                                _t_3336947 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3337272i32;
                            } else {
                                _gotoNext = 3337305i32;
                            };
                        };
                    } else if (__value__ == (3337272i32)) {
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
                        _gotoNext = 3337305i32;
                    } else if (__value__ == (3337305i32)) {
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337319i32)) {
                        _p_3336835._numCap++;
                        @:check2 _p_3336835._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3336835._numCap;
                        _t_3336947 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337381i32)) {
                        {
                            _err = @:check2 _p_3336835._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3337436i32;
                            } else {
                                _gotoNext = 3337466i32;
                            };
                        };
                    } else if (__value__ == (3337436i32)) {
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
                        _gotoNext = 3337466i32;
                    } else if (__value__ == (3337466i32)) {
                        _t_3336947 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337478i32)) {
                        {
                            _err = @:check2 _p_3336835._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3337532i32;
                            } else {
                                _gotoNext = 3337562i32;
                            };
                        };
                    } else if (__value__ == (3337532i32)) {
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
                        _gotoNext = 3337562i32;
                    } else if (__value__ == (3337562i32)) {
                        _t_3336947 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337574i32)) {
                        if ((_p_3336835._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3337611i32;
                        } else {
                            _gotoNext = 3337645i32;
                        };
                    } else if (__value__ == (3337611i32)) {
                        @:check2 _p_3336835._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3337677i32;
                    } else if (__value__ == (3337645i32)) {
                        _gotoNext = 3337645i32;
                        @:check2 _p_3336835._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3337677i32;
                    } else if (__value__ == (3337677i32)) {
                        _t_3336947 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337689i32)) {
                        if ((_p_3336835._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3337726i32;
                        } else {
                            _gotoNext = 3337777i32;
                        };
                    } else if (__value__ == (3337726i32)) {
                        {
                            final __t__ = @:check2 _p_3336835._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3337807i32;
                    } else if (__value__ == (3337777i32)) {
                        _gotoNext = 3337777i32;
                        @:check2 _p_3336835._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3337807i32;
                    } else if (__value__ == (3337807i32)) {
                        _t_3336947 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337819i32)) {
                        if ((_p_3336835._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3337854i32;
                        } else {
                            _gotoNext = 3337886i32;
                        };
                    } else if (__value__ == (3337854i32)) {
                        @:check2 _p_3336835._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3337921i32;
                    } else if (__value__ == (3337886i32)) {
                        _gotoNext = 3337886i32;
                        @:check2 _p_3336835._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3337921i32;
                    } else if (__value__ == (3337921i32)) {
                        _t_3336947 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3337933i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3336835._parseClass(_t_3336947?.__copy__());
                                _t_3336947 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3337986i32;
                            } else {
                                _gotoNext = 3340332i32;
                            };
                        };
                    } else if (__value__ == (3337986i32)) {
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
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3338015i32)) {
                        _before_3338038 = _t_3336947?.__copy__();
                        _gotoNext = 3338053i32;
                    } else if (__value__ == (3338053i32)) {
                        {
                            final __value__ = _t_3336947[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3338070i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3338099i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3338128i32;
                            } else {
                                _gotoNext = 3338163i32;
                            };
                        };
                    } else if (__value__ == (3338070i32)) {
                        _op_3336873 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338163i32;
                    } else if (__value__ == (3338099i32)) {
                        _op_3336873 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338163i32;
                    } else if (__value__ == (3338128i32)) {
                        _op_3336873 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338163i32;
                    } else if (__value__ == (3338163i32)) {
                        _after_3338163 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3336835._repeat(_op_3336873, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3338038?.__copy__(), _after_3338163?.__copy__(), _lastRepeat_3336889?.__copy__());
                                _after_3338163 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338255i32;
                            } else {
                                _gotoNext = 3338285i32;
                            };
                        };
                    } else if (__value__ == (3338255i32)) {
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
                        _gotoNext = 3338285i32;
                    } else if (__value__ == (3338285i32)) {
                        _repeat_3336971 = _before_3338038?.__copy__();
                        _t_3336947 = _after_3338163?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3338316i32)) {
                        _op_3336873 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3338346 = _t_3336947?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3336835._parseRepeat(_t_3336947?.__copy__());
                            _min_3338361 = @:tmpset0 __tmp__._0;
                            _max_3338366 = @:tmpset0 __tmp__._1;
                            _after_3338371 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3338378 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3338378) {
                            _gotoNext = 3338411i32;
                        } else {
                            _gotoNext = 3338519i32;
                        };
                    } else if (__value__ == (3338411i32)) {
                        @:check2 _p_3336835._literal((123 : stdgo.GoInt32));
                        _t_3336947 = (_t_3336947.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3338519i32)) {
                        if (((((_min_3338361 < (0 : stdgo.GoInt) : Bool) || (_min_3338361 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3338366 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3338366 >= (0 : stdgo.GoInt) : Bool) && (_min_3338361 > _max_3338366 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3338583i32;
                        } else {
                            _gotoNext = 3338733i32;
                        };
                    } else if (__value__ == (3338583i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3338346.__slice__(0, ((_before_3338346.length) - (_after_3338371.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3338733i32;
                    } else if (__value__ == (3338733i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3336835._repeat(_op_3336873, _min_3338361, _max_3338366, _before_3338346?.__copy__(), _after_3338371?.__copy__(), _lastRepeat_3336889?.__copy__());
                                _after_3338371 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338811i32;
                            } else {
                                _gotoNext = 3338841i32;
                            };
                        };
                    } else if (__value__ == (3338811i32)) {
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
                        _gotoNext = 3338841i32;
                    } else if (__value__ == (3338841i32)) {
                        _repeat_3336971 = _before_3338346?.__copy__();
                        _t_3336947 = _after_3338371?.__copy__();
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3338872i32)) {
                        if ((((_p_3336835._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3336947.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3338923i32;
                        } else {
                            _gotoNext = 3339647i32;
                        };
                    } else if (__value__ == (3338923i32)) {
                        _gotoNext = 3338929i32;
                    } else if (__value__ == (3338929i32)) {
                        {
                            final __value__ = _t_3336947[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3338947i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3339020i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3339096i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3339174i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3339269i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3339565i32;
                            } else {
                                _gotoNext = 3339647i32;
                            };
                        };
                    } else if (__value__ == (3338947i32)) {
                        @:check2 _p_3336835._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3336947 = (_t_3336947.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3339020i32)) {
                        @:check2 _p_3336835._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3336947 = (_t_3336947.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3339096i32)) {
                        @:check2 _p_3336835._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3336947 = (_t_3336947.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3339174i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3336947.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3339647i32;
                    } else if (__value__ == (3339269i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3336947.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3339334 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3336947 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3339392i32;
                    } else if (__value__ == (3339392i32)) {
                        if (_lit_3339334 != (stdgo.Go.str())) {
                            _gotoNext = 3339406i32;
                        } else {
                            _gotoNext = 3339545i32;
                        };
                    } else if (__value__ == (3339406i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3339334?.__copy__());
                            _c_3339414 = @:tmpset0 __tmp__._0;
                            _rest_3339417 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3339423 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3339423 != null) {
                            _gotoNext = 3339464i32;
                        } else {
                            _gotoNext = 3339503i32;
                        };
                    } else if (__value__ == (3339464i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3339423 };
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
                        _gotoNext = 3339503i32;
                    } else if (__value__ == (3339503i32)) {
                        @:check2 _p_3336835._literal(_c_3339414);
                        _lit_3339334 = _rest_3339417?.__copy__();
                        _gotoNext = 3339392i32;
                    } else if (__value__ == (3339545i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3339565i32)) {
                        @:check2 _p_3336835._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3336947 = (_t_3336947.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3339647i32)) {
                        _re_3339647 = @:check2 _p_3336835._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3339647 ?? throw "null pointer dereference").flags = _p_3336835._flags;
                        if ((((_t_3336947.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3336947[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3336947[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3339803i32;
                        } else {
                            _gotoNext = 3340045i32;
                        };
                    } else if (__value__ == (3339803i32)) {
                        {
                            var __tmp__ = @:check2 _p_3336835._parseUnicodeClass(_t_3336947?.__copy__(), ((@:checkr _re_3339647 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3339809 = @:tmpset0 __tmp__._0;
                            _rest_3339812 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3339818 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3339818 != null) {
                            _gotoNext = 3339880i32;
                        } else {
                            _gotoNext = 3339913i32;
                        };
                    } else if (__value__ == (3339880i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3339818 };
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
                        _gotoNext = 3339913i32;
                    } else if (__value__ == (3339913i32)) {
                        if (_r_3339809 != null) {
                            _gotoNext = 3339925i32;
                        } else {
                            _gotoNext = 3340045i32;
                        };
                    } else if (__value__ == (3339925i32)) {
                        (@:checkr _re_3339647 ?? throw "null pointer dereference").rune = _r_3339809;
                        _t_3336947 = _rest_3339812?.__copy__();
                        @:check2 _p_3336835._push(_re_3339647);
                        bigSwitchBreak = true;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3340045i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3336835._parsePerlClassEscape(_t_3336947?.__copy__(), ((@:checkr _re_3339647 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3340048 = @:tmpset0 __tmp__._0;
                                _rest_3340051 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3340048 != null) {
                                _gotoNext = 3340109i32;
                            } else {
                                _gotoNext = 3340183i32;
                            };
                        };
                    } else if (__value__ == (3340109i32)) {
                        (@:checkr _re_3339647 ?? throw "null pointer dereference").rune = _r_3340048;
                        _t_3336947 = _rest_3340051?.__copy__();
                        @:check2 _p_3336835._push(_re_3339647);
                        bigSwitchBreak = true;
                        _gotoNext = 3336998i32;
                    } else if (__value__ == (3340183i32)) {
                        @:check2 _p_3336835._reuse(_re_3339647);
                        {
                            {
                                var __tmp__ = @:check2 _p_3336835._parseEscape(_t_3336947?.__copy__());
                                _c_3336855 = @:tmpset0 __tmp__._0;
                                _t_3336947 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3340283i32;
                            } else {
                                _gotoNext = 3340313i32;
                            };
                        };
                    } else if (__value__ == (3340283i32)) {
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
                        _gotoNext = 3340313i32;
                    } else if (__value__ == (3340313i32)) {
                        @:check2 _p_3336835._literal(_c_3336855);
                        _gotoNext = 3340332i32;
                    } else if (__value__ == (3340332i32)) {
                        _lastRepeat_3336889 = _repeat_3336971?.__copy__();
                        _gotoNext = 3336955i32;
                    } else if (__value__ == (3340357i32)) {
                        @:check2 _p_3336835._concat();
                        if (@:check2 _p_3336835._swapVerticalBar()) {
                            _gotoNext = 3340392i32;
                        } else {
                            _gotoNext = 3340457i32;
                        };
                    } else if (__value__ == (3340392i32)) {
                        _p_3336835._stack = (_p_3336835._stack.__slice__(0, ((_p_3336835._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3340457i32;
                    } else if (__value__ == (3340457i32)) {
                        @:check2 _p_3336835._alternate();
                        _n_3340473 = (_p_3336835._stack.length);
                        if (_n_3340473 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3340502i32;
                        } else {
                            _gotoNext = 3340549i32;
                        };
                    } else if (__value__ == (3340502i32)) {
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
                        _gotoNext = 3340549i32;
                    } else if (__value__ == (3340549i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3336835._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
