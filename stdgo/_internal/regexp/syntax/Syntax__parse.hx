package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3546375:stdgo.Error = (null : stdgo.Error);
            var _re_3549329:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3548053:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3546653:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3546537:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3550155:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3549733:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3548043:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3546571:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3547845:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3546629:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3549105:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _rest_3549494:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3546555:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _lit_3549016:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3548060:Bool = false;
            var _p_3546517:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _c_3549096:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3548048:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3548028:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3547720:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3549730:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3549500:stdgo.Error = (null : stdgo.Error);
            var _r_3549491:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3549099:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            __deferstack__.unshift(() -> ({
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
                            }));
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3546328i32;
                        } else {
                            _gotoNext = 3546509i32;
                        };
                    } else if (__value__ == (3546328i32)) {
                        {
                            _err_3546375 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3546375 != null) {
                                _gotoNext = 3546407i32;
                            } else {
                                _gotoNext = 3546434i32;
                            };
                        };
                    } else if (__value__ == (3546407i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3546375 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546434i32;
                    } else if (__value__ == (3546434i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546509i32;
                    } else if (__value__ == (3546509i32)) {
                        _p_3546517._flags = _flags;
                        _p_3546517._wholeRegexp = _s?.__copy__();
                        _t_3546629 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3546637i32;
                    } else if (__value__ == (3546637i32)) {
                        if (_t_3546629 != (stdgo.Go.str())) {
                            _gotoNext = 3546649i32;
                        } else {
                            _gotoNext = 3550039i32;
                        };
                    } else if (__value__ == (3546649i32)) {
                        _repeat_3546653 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3546667i32;
                    } else if (__value__ == (3546667i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3546680i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3546629[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546793i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547063i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547160i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547256i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547371i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547501i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547615i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547697i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3547998i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3548554i32;
                                } else {
                                    _gotoNext = 3546696i32;
                                };
                            };
                        } else {
                            _gotoNext = 3550014i32;
                        };
                    } else if (__value__ == (3546696i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3546629?.__copy__());
                                _c_3546537 = __tmp__._0;
                                _t_3546629 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3546747i32;
                            } else {
                                _gotoNext = 3546777i32;
                            };
                        };
                    } else if (__value__ == (3546747i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546777i32;
                    } else if (__value__ == (3546777i32)) {
                        _p_3546517._literal(_c_3546537);
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3546793i32)) {
                        if ((((_p_3546517._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3546629.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3546629[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3546858i32;
                        } else {
                            _gotoNext = 3547001i32;
                        };
                    } else if (__value__ == (3546858i32)) {
                        {
                            {
                                var __tmp__ = _p_3546517._parsePerlFlags(_t_3546629?.__copy__());
                                _t_3546629 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3546954i32;
                            } else {
                                _gotoNext = 3546987i32;
                            };
                        };
                    } else if (__value__ == (3546954i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546987i32;
                    } else if (__value__ == (3546987i32)) {
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547001i32)) {
                        _p_3546517._numCap++;
                        _p_3546517._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3546517._numCap;
                        _t_3546629 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547063i32)) {
                        {
                            _err = _p_3546517._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3547118i32;
                            } else {
                                _gotoNext = 3547148i32;
                            };
                        };
                    } else if (__value__ == (3547118i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3547148i32;
                    } else if (__value__ == (3547148i32)) {
                        _t_3546629 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547160i32)) {
                        {
                            _err = _p_3546517._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3547214i32;
                            } else {
                                _gotoNext = 3547244i32;
                            };
                        };
                    } else if (__value__ == (3547214i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3547244i32;
                    } else if (__value__ == (3547244i32)) {
                        _t_3546629 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547256i32)) {
                        if ((_p_3546517._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3547293i32;
                        } else {
                            _gotoNext = 3547327i32;
                        };
                    } else if (__value__ == (3547293i32)) {
                        _p_3546517._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3547359i32;
                    } else if (__value__ == (3547327i32)) {
                        _gotoNext = 3547327i32;
                        _p_3546517._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3547359i32;
                    } else if (__value__ == (3547359i32)) {
                        _t_3546629 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547371i32)) {
                        if ((_p_3546517._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3547408i32;
                        } else {
                            _gotoNext = 3547459i32;
                        };
                    } else if (__value__ == (3547408i32)) {
                        _p_3546517._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3546517._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3547489i32;
                    } else if (__value__ == (3547459i32)) {
                        _gotoNext = 3547459i32;
                        _p_3546517._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3547489i32;
                    } else if (__value__ == (3547489i32)) {
                        _t_3546629 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547501i32)) {
                        if ((_p_3546517._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3547536i32;
                        } else {
                            _gotoNext = 3547568i32;
                        };
                    } else if (__value__ == (3547536i32)) {
                        _p_3546517._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3547603i32;
                    } else if (__value__ == (3547568i32)) {
                        _gotoNext = 3547568i32;
                        _p_3546517._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3547603i32;
                    } else if (__value__ == (3547603i32)) {
                        _t_3546629 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547615i32)) {
                        {
                            {
                                var __tmp__ = _p_3546517._parseClass(_t_3546629?.__copy__());
                                _t_3546629 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3547668i32;
                            } else {
                                _gotoNext = 3550014i32;
                            };
                        };
                    } else if (__value__ == (3547668i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547697i32)) {
                        _before_3547720 = _t_3546629?.__copy__();
                        _gotoNext = 3547735i32;
                    } else if (__value__ == (3547735i32)) {
                        {
                            final __value__ = _t_3546629[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3547752i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3547781i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3547810i32;
                            } else {
                                _gotoNext = 3547845i32;
                            };
                        };
                    } else if (__value__ == (3547752i32)) {
                        _op_3546555 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3547845i32;
                    } else if (__value__ == (3547781i32)) {
                        _op_3546555 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3547845i32;
                    } else if (__value__ == (3547810i32)) {
                        _op_3546555 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3547845i32;
                    } else if (__value__ == (3547845i32)) {
                        _after_3547845 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3546517._repeat(_op_3546555, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3547720?.__copy__(), _after_3547845?.__copy__(), _lastRepeat_3546571?.__copy__());
                                _after_3547845 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3547937i32;
                            } else {
                                _gotoNext = 3547967i32;
                            };
                        };
                    } else if (__value__ == (3547937i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3547967i32;
                    } else if (__value__ == (3547967i32)) {
                        _repeat_3546653 = _before_3547720?.__copy__();
                        _t_3546629 = _after_3547845?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3547998i32)) {
                        _op_3546555 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3548028 = _t_3546629?.__copy__();
                        {
                            var __tmp__ = _p_3546517._parseRepeat(_t_3546629?.__copy__());
                            _min_3548043 = __tmp__._0;
                            _max_3548048 = __tmp__._1;
                            _after_3548053 = __tmp__._2?.__copy__();
                            _ok_3548060 = __tmp__._3;
                        };
                        if (!_ok_3548060) {
                            _gotoNext = 3548093i32;
                        } else {
                            _gotoNext = 3548201i32;
                        };
                    } else if (__value__ == (3548093i32)) {
                        _p_3546517._literal((123 : stdgo.GoInt32));
                        _t_3546629 = (_t_3546629.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3548201i32)) {
                        if (((((_min_3548043 < (0 : stdgo.GoInt) : Bool) || (_min_3548043 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3548048 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3548048 >= (0 : stdgo.GoInt) : Bool) && (_min_3548043 > _max_3548048 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3548265i32;
                        } else {
                            _gotoNext = 3548415i32;
                        };
                    } else if (__value__ == (3548265i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3548028.__slice__(0, ((_before_3548028.length) - (_after_3548053.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3548415i32;
                    } else if (__value__ == (3548415i32)) {
                        {
                            {
                                var __tmp__ = _p_3546517._repeat(_op_3546555, _min_3548043, _max_3548048, _before_3548028?.__copy__(), _after_3548053?.__copy__(), _lastRepeat_3546571?.__copy__());
                                _after_3548053 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3548493i32;
                            } else {
                                _gotoNext = 3548523i32;
                            };
                        };
                    } else if (__value__ == (3548493i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3548523i32;
                    } else if (__value__ == (3548523i32)) {
                        _repeat_3546653 = _before_3548028?.__copy__();
                        _t_3546629 = _after_3548053?.__copy__();
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3548554i32)) {
                        if ((((_p_3546517._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3546629.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3548605i32;
                        } else {
                            _gotoNext = 3549329i32;
                        };
                    } else if (__value__ == (3548605i32)) {
                        _gotoNext = 3548611i32;
                    } else if (__value__ == (3548611i32)) {
                        {
                            final __value__ = _t_3546629[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3548629i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3548702i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3548778i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3548856i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3548951i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3549247i32;
                            } else {
                                _gotoNext = 3549329i32;
                            };
                        };
                    } else if (__value__ == (3548629i32)) {
                        _p_3546517._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3546629 = (_t_3546629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3548702i32)) {
                        _p_3546517._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3546629 = (_t_3546629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3548778i32)) {
                        _p_3546517._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3546629 = (_t_3546629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3548856i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3546629.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3549329i32;
                    } else if (__value__ == (3548951i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3546629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3549016 = __tmp__._0?.__copy__();
                            _t_3546629 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3549074i32;
                    } else if (__value__ == (3549074i32)) {
                        if (_lit_3549016 != (stdgo.Go.str())) {
                            _gotoNext = 3549088i32;
                        } else {
                            _gotoNext = 3549227i32;
                        };
                    } else if (__value__ == (3549088i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3549016?.__copy__());
                            _c_3549096 = __tmp__._0;
                            _rest_3549099 = __tmp__._1?.__copy__();
                            _err_3549105 = __tmp__._2;
                        };
                        if (_err_3549105 != null) {
                            _gotoNext = 3549146i32;
                        } else {
                            _gotoNext = 3549185i32;
                        };
                    } else if (__value__ == (3549146i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3549105 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3549185i32;
                    } else if (__value__ == (3549185i32)) {
                        _p_3546517._literal(_c_3549096);
                        _lit_3549016 = _rest_3549099?.__copy__();
                        _gotoNext = 3549074i32;
                    } else if (__value__ == (3549227i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3549247i32)) {
                        _p_3546517._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3546629 = (_t_3546629.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3549329i32)) {
                        _re_3549329 = _p_3546517._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3549329.flags = _p_3546517._flags;
                        if ((((_t_3546629.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3546629[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3546629[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3549485i32;
                        } else {
                            _gotoNext = 3549727i32;
                        };
                    } else if (__value__ == (3549485i32)) {
                        {
                            var __tmp__ = _p_3546517._parseUnicodeClass(_t_3546629?.__copy__(), (_re_3549329.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3549491 = __tmp__._0;
                            _rest_3549494 = __tmp__._1?.__copy__();
                            _err_3549500 = __tmp__._2;
                        };
                        if (_err_3549500 != null) {
                            _gotoNext = 3549562i32;
                        } else {
                            _gotoNext = 3549595i32;
                        };
                    } else if (__value__ == (3549562i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3549500 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3549595i32;
                    } else if (__value__ == (3549595i32)) {
                        if (_r_3549491 != null) {
                            _gotoNext = 3549607i32;
                        } else {
                            _gotoNext = 3549727i32;
                        };
                    } else if (__value__ == (3549607i32)) {
                        _re_3549329.rune = _r_3549491;
                        _t_3546629 = _rest_3549494?.__copy__();
                        _p_3546517._push(_re_3549329);
                        bigSwitchBreak = true;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3549727i32)) {
                        {
                            {
                                var __tmp__ = _p_3546517._parsePerlClassEscape(_t_3546629?.__copy__(), (_re_3549329.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3549730 = __tmp__._0;
                                _rest_3549733 = __tmp__._1?.__copy__();
                            };
                            if (_r_3549730 != null) {
                                _gotoNext = 3549791i32;
                            } else {
                                _gotoNext = 3549865i32;
                            };
                        };
                    } else if (__value__ == (3549791i32)) {
                        _re_3549329.rune = _r_3549730;
                        _t_3546629 = _rest_3549733?.__copy__();
                        _p_3546517._push(_re_3549329);
                        bigSwitchBreak = true;
                        _gotoNext = 3546680i32;
                    } else if (__value__ == (3549865i32)) {
                        _p_3546517._reuse(_re_3549329);
                        {
                            {
                                var __tmp__ = _p_3546517._parseEscape(_t_3546629?.__copy__());
                                _c_3546537 = __tmp__._0;
                                _t_3546629 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3549965i32;
                            } else {
                                _gotoNext = 3549995i32;
                            };
                        };
                    } else if (__value__ == (3549965i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3549995i32;
                    } else if (__value__ == (3549995i32)) {
                        _p_3546517._literal(_c_3546537);
                        _gotoNext = 3550014i32;
                    } else if (__value__ == (3550014i32)) {
                        _lastRepeat_3546571 = _repeat_3546653?.__copy__();
                        _gotoNext = 3546637i32;
                    } else if (__value__ == (3550039i32)) {
                        _p_3546517._concat();
                        if (_p_3546517._swapVerticalBar()) {
                            _gotoNext = 3550074i32;
                        } else {
                            _gotoNext = 3550139i32;
                        };
                    } else if (__value__ == (3550074i32)) {
                        _p_3546517._stack = (_p_3546517._stack.__slice__(0, ((_p_3546517._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3550139i32;
                    } else if (__value__ == (3550139i32)) {
                        _p_3546517._alternate();
                        _n_3550155 = (_p_3546517._stack.length);
                        if (_n_3550155 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3550184i32;
                        } else {
                            _gotoNext = 3550231i32;
                        };
                    } else if (__value__ == (3550184i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3550231i32;
                    } else if (__value__ == (3550231i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3546517._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
