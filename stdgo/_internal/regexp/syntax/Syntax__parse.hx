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
            var _c_3340096:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3339048:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3338720:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _re_3340329:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3338845:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3337653:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3337537:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3340733:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3340500:stdgo.Error = (null : stdgo.Error);
            var _p_3337517:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _ok_3339060:Bool = false;
            var _after_3339053:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3340491:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3340105:stdgo.Error = (null : stdgo.Error);
            var _op_3337555:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3341155:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3340494:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3339043:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3339028:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3340016:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3337571:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3337375:stdgo.Error = (null : stdgo.Error);
            var _r_3340730:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3340099:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3337629:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3337328i32;
                        } else {
                            _gotoNext = 3337509i32;
                        };
                    } else if (__value__ == (3337328i32)) {
                        {
                            _err_3337375 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3337375 != null) {
                                _gotoNext = 3337407i32;
                            } else {
                                _gotoNext = 3337434i32;
                            };
                        };
                    } else if (__value__ == (3337407i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3337375 };
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
                        _gotoNext = 3337434i32;
                    } else if (__value__ == (3337434i32)) {
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
                        _gotoNext = 3337509i32;
                    } else if (__value__ == (3337509i32)) {
                        _p_3337517._flags = _flags;
                        _p_3337517._wholeRegexp = _s?.__copy__();
                        _t_3337629 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3337637i32;
                    } else if (__value__ == (3337637i32)) {
                        if (_t_3337629 != (stdgo.Go.str())) {
                            _gotoNext = 3337649i32;
                        } else {
                            _gotoNext = 3341039i32;
                        };
                    } else if (__value__ == (3337649i32)) {
                        _repeat_3337653 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3337667i32;
                    } else if (__value__ == (3337667i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3337680i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3337629[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337793i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338063i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338160i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338256i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338371i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338501i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338615i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338697i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338998i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3339554i32;
                                } else {
                                    _gotoNext = 3337696i32;
                                };
                            };
                        } else {
                            _gotoNext = 3341014i32;
                        };
                    } else if (__value__ == (3337696i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3337629?.__copy__());
                                _c_3337537 = @:tmpset0 __tmp__._0;
                                _t_3337629 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3337747i32;
                            } else {
                                _gotoNext = 3337777i32;
                            };
                        };
                    } else if (__value__ == (3337747i32)) {
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
                        _gotoNext = 3337777i32;
                    } else if (__value__ == (3337777i32)) {
                        @:check2 _p_3337517._literal(_c_3337537);
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3337793i32)) {
                        if ((((_p_3337517._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3337629.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3337629[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3337858i32;
                        } else {
                            _gotoNext = 3338001i32;
                        };
                    } else if (__value__ == (3337858i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3337517._parsePerlFlags(_t_3337629?.__copy__());
                                _t_3337629 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3337954i32;
                            } else {
                                _gotoNext = 3337987i32;
                            };
                        };
                    } else if (__value__ == (3337954i32)) {
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
                        _gotoNext = 3337987i32;
                    } else if (__value__ == (3337987i32)) {
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338001i32)) {
                        _p_3337517._numCap++;
                        @:check2 _p_3337517._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3337517._numCap;
                        _t_3337629 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338063i32)) {
                        {
                            _err = @:check2 _p_3337517._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3338118i32;
                            } else {
                                _gotoNext = 3338148i32;
                            };
                        };
                    } else if (__value__ == (3338118i32)) {
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
                        _gotoNext = 3338148i32;
                    } else if (__value__ == (3338148i32)) {
                        _t_3337629 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338160i32)) {
                        {
                            _err = @:check2 _p_3337517._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3338214i32;
                            } else {
                                _gotoNext = 3338244i32;
                            };
                        };
                    } else if (__value__ == (3338214i32)) {
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
                        _gotoNext = 3338244i32;
                    } else if (__value__ == (3338244i32)) {
                        _t_3337629 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338256i32)) {
                        if ((_p_3337517._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3338293i32;
                        } else {
                            _gotoNext = 3338327i32;
                        };
                    } else if (__value__ == (3338293i32)) {
                        @:check2 _p_3337517._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3338359i32;
                    } else if (__value__ == (3338327i32)) {
                        _gotoNext = 3338327i32;
                        @:check2 _p_3337517._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3338359i32;
                    } else if (__value__ == (3338359i32)) {
                        _t_3337629 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338371i32)) {
                        if ((_p_3337517._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3338408i32;
                        } else {
                            _gotoNext = 3338459i32;
                        };
                    } else if (__value__ == (3338408i32)) {
                        {
                            final __t__ = @:check2 _p_3337517._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3338489i32;
                    } else if (__value__ == (3338459i32)) {
                        _gotoNext = 3338459i32;
                        @:check2 _p_3337517._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3338489i32;
                    } else if (__value__ == (3338489i32)) {
                        _t_3337629 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338501i32)) {
                        if ((_p_3337517._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3338536i32;
                        } else {
                            _gotoNext = 3338568i32;
                        };
                    } else if (__value__ == (3338536i32)) {
                        @:check2 _p_3337517._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3338603i32;
                    } else if (__value__ == (3338568i32)) {
                        _gotoNext = 3338568i32;
                        @:check2 _p_3337517._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3338603i32;
                    } else if (__value__ == (3338603i32)) {
                        _t_3337629 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338615i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3337517._parseClass(_t_3337629?.__copy__());
                                _t_3337629 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338668i32;
                            } else {
                                _gotoNext = 3341014i32;
                            };
                        };
                    } else if (__value__ == (3338668i32)) {
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
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338697i32)) {
                        _before_3338720 = _t_3337629?.__copy__();
                        _gotoNext = 3338735i32;
                    } else if (__value__ == (3338735i32)) {
                        {
                            final __value__ = _t_3337629[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3338752i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3338781i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3338810i32;
                            } else {
                                _gotoNext = 3338845i32;
                            };
                        };
                    } else if (__value__ == (3338752i32)) {
                        _op_3337555 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338845i32;
                    } else if (__value__ == (3338781i32)) {
                        _op_3337555 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338845i32;
                    } else if (__value__ == (3338810i32)) {
                        _op_3337555 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338845i32;
                    } else if (__value__ == (3338845i32)) {
                        _after_3338845 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3337517._repeat(_op_3337555, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3338720?.__copy__(), _after_3338845?.__copy__(), _lastRepeat_3337571?.__copy__());
                                _after_3338845 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338937i32;
                            } else {
                                _gotoNext = 3338967i32;
                            };
                        };
                    } else if (__value__ == (3338937i32)) {
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
                        _gotoNext = 3338967i32;
                    } else if (__value__ == (3338967i32)) {
                        _repeat_3337653 = _before_3338720?.__copy__();
                        _t_3337629 = _after_3338845?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3338998i32)) {
                        _op_3337555 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3339028 = _t_3337629?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3337517._parseRepeat(_t_3337629?.__copy__());
                            _min_3339043 = @:tmpset0 __tmp__._0;
                            _max_3339048 = @:tmpset0 __tmp__._1;
                            _after_3339053 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3339060 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3339060) {
                            _gotoNext = 3339093i32;
                        } else {
                            _gotoNext = 3339201i32;
                        };
                    } else if (__value__ == (3339093i32)) {
                        @:check2 _p_3337517._literal((123 : stdgo.GoInt32));
                        _t_3337629 = (_t_3337629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3339201i32)) {
                        if (((((_min_3339043 < (0 : stdgo.GoInt) : Bool) || (_min_3339043 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3339048 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3339048 >= (0 : stdgo.GoInt) : Bool) && (_min_3339043 > _max_3339048 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3339265i32;
                        } else {
                            _gotoNext = 3339415i32;
                        };
                    } else if (__value__ == (3339265i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3339028.__slice__(0, ((_before_3339028.length) - (_after_3339053.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3339415i32;
                    } else if (__value__ == (3339415i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3337517._repeat(_op_3337555, _min_3339043, _max_3339048, _before_3339028?.__copy__(), _after_3339053?.__copy__(), _lastRepeat_3337571?.__copy__());
                                _after_3339053 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3339493i32;
                            } else {
                                _gotoNext = 3339523i32;
                            };
                        };
                    } else if (__value__ == (3339493i32)) {
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
                        _gotoNext = 3339523i32;
                    } else if (__value__ == (3339523i32)) {
                        _repeat_3337653 = _before_3339028?.__copy__();
                        _t_3337629 = _after_3339053?.__copy__();
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3339554i32)) {
                        if ((((_p_3337517._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3337629.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3339605i32;
                        } else {
                            _gotoNext = 3340329i32;
                        };
                    } else if (__value__ == (3339605i32)) {
                        _gotoNext = 3339611i32;
                    } else if (__value__ == (3339611i32)) {
                        {
                            final __value__ = _t_3337629[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3339629i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3339702i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3339778i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3339856i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3339951i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3340247i32;
                            } else {
                                _gotoNext = 3340329i32;
                            };
                        };
                    } else if (__value__ == (3339629i32)) {
                        @:check2 _p_3337517._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337629 = (_t_3337629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3339702i32)) {
                        @:check2 _p_3337517._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337629 = (_t_3337629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3339778i32)) {
                        @:check2 _p_3337517._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337629 = (_t_3337629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3339856i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3337629.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3340329i32;
                    } else if (__value__ == (3339951i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3337629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3340016 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3337629 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3340074i32;
                    } else if (__value__ == (3340074i32)) {
                        if (_lit_3340016 != (stdgo.Go.str())) {
                            _gotoNext = 3340088i32;
                        } else {
                            _gotoNext = 3340227i32;
                        };
                    } else if (__value__ == (3340088i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3340016?.__copy__());
                            _c_3340096 = @:tmpset0 __tmp__._0;
                            _rest_3340099 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3340105 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3340105 != null) {
                            _gotoNext = 3340146i32;
                        } else {
                            _gotoNext = 3340185i32;
                        };
                    } else if (__value__ == (3340146i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3340105 };
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
                        _gotoNext = 3340185i32;
                    } else if (__value__ == (3340185i32)) {
                        @:check2 _p_3337517._literal(_c_3340096);
                        _lit_3340016 = _rest_3340099?.__copy__();
                        _gotoNext = 3340074i32;
                    } else if (__value__ == (3340227i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3340247i32)) {
                        @:check2 _p_3337517._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337629 = (_t_3337629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3340329i32)) {
                        _re_3340329 = @:check2 _p_3337517._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3340329 ?? throw "null pointer dereference").flags = _p_3337517._flags;
                        if ((((_t_3337629.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3337629[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3337629[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3340485i32;
                        } else {
                            _gotoNext = 3340727i32;
                        };
                    } else if (__value__ == (3340485i32)) {
                        {
                            var __tmp__ = @:check2 _p_3337517._parseUnicodeClass(_t_3337629?.__copy__(), ((@:checkr _re_3340329 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3340491 = @:tmpset0 __tmp__._0;
                            _rest_3340494 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3340500 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3340500 != null) {
                            _gotoNext = 3340562i32;
                        } else {
                            _gotoNext = 3340595i32;
                        };
                    } else if (__value__ == (3340562i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3340500 };
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
                        _gotoNext = 3340595i32;
                    } else if (__value__ == (3340595i32)) {
                        if (_r_3340491 != null) {
                            _gotoNext = 3340607i32;
                        } else {
                            _gotoNext = 3340727i32;
                        };
                    } else if (__value__ == (3340607i32)) {
                        (@:checkr _re_3340329 ?? throw "null pointer dereference").rune = _r_3340491;
                        _t_3337629 = _rest_3340494?.__copy__();
                        @:check2 _p_3337517._push(_re_3340329);
                        bigSwitchBreak = true;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3340727i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3337517._parsePerlClassEscape(_t_3337629?.__copy__(), ((@:checkr _re_3340329 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3340730 = @:tmpset0 __tmp__._0;
                                _rest_3340733 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3340730 != null) {
                                _gotoNext = 3340791i32;
                            } else {
                                _gotoNext = 3340865i32;
                            };
                        };
                    } else if (__value__ == (3340791i32)) {
                        (@:checkr _re_3340329 ?? throw "null pointer dereference").rune = _r_3340730;
                        _t_3337629 = _rest_3340733?.__copy__();
                        @:check2 _p_3337517._push(_re_3340329);
                        bigSwitchBreak = true;
                        _gotoNext = 3337680i32;
                    } else if (__value__ == (3340865i32)) {
                        @:check2 _p_3337517._reuse(_re_3340329);
                        {
                            {
                                var __tmp__ = @:check2 _p_3337517._parseEscape(_t_3337629?.__copy__());
                                _c_3337537 = @:tmpset0 __tmp__._0;
                                _t_3337629 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3340965i32;
                            } else {
                                _gotoNext = 3340995i32;
                            };
                        };
                    } else if (__value__ == (3340965i32)) {
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
                        _gotoNext = 3340995i32;
                    } else if (__value__ == (3340995i32)) {
                        @:check2 _p_3337517._literal(_c_3337537);
                        _gotoNext = 3341014i32;
                    } else if (__value__ == (3341014i32)) {
                        _lastRepeat_3337571 = _repeat_3337653?.__copy__();
                        _gotoNext = 3337637i32;
                    } else if (__value__ == (3341039i32)) {
                        @:check2 _p_3337517._concat();
                        if (@:check2 _p_3337517._swapVerticalBar()) {
                            _gotoNext = 3341074i32;
                        } else {
                            _gotoNext = 3341139i32;
                        };
                    } else if (__value__ == (3341074i32)) {
                        _p_3337517._stack = (_p_3337517._stack.__slice__(0, ((_p_3337517._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3341139i32;
                    } else if (__value__ == (3341139i32)) {
                        @:check2 _p_3337517._alternate();
                        _n_3341155 = (_p_3337517._stack.length);
                        if (_n_3341155 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3341184i32;
                        } else {
                            _gotoNext = 3341231i32;
                        };
                    } else if (__value__ == (3341184i32)) {
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
                        _gotoNext = 3341231i32;
                    } else if (__value__ == (3341231i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3337517._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
