package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3420022:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3419385:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3418134:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3418342:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3416826:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3419783:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3418317:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3420019:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3419789:stdgo.Error = (null : stdgo.Error);
            var _rest_3419388:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3418349:Bool = false;
            var _max_3418337:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3418332:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3416942:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3416860:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3416806:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var bigSwitchBreak = false;
            var _re_3419618:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3419394:stdgo.Error = (null : stdgo.Error);
            var _before_3418009:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3419305:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3416918:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3416844:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3419780:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3416664:stdgo.Error = (null : stdgo.Error);
            var _n_3420444:stdgo.GoInt = (0 : stdgo.GoInt);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> {
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
                        });
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3416617i32;
                        } else {
                            _gotoNext = 3416798i32;
                        };
                    } else if (__value__ == (3416617i32)) {
                        {
                            _err_3416664 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3416664 != null) {
                                _gotoNext = 3416696i32;
                            } else {
                                _gotoNext = 3416723i32;
                            };
                        };
                    } else if (__value__ == (3416696i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3416664 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416723i32;
                    } else if (__value__ == (3416723i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416798i32;
                    } else if (__value__ == (3416798i32)) {
                        _p_3416806._flags = _flags;
                        _p_3416806._wholeRegexp = _s?.__copy__();
                        _t_3416918 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3416926i32;
                    } else if (__value__ == (3416926i32)) {
                        if (_t_3416918 != (stdgo.Go.str())) {
                            _gotoNext = 3416938i32;
                        } else {
                            _gotoNext = 3420328i32;
                        };
                    } else if (__value__ == (3416938i32)) {
                        _repeat_3416942 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3416956i32;
                    } else if (__value__ == (3416956i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3416969i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3416918[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417082i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417352i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417449i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417545i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417660i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417790i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417904i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3417986i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3418287i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3418843i32;
                                } else {
                                    _gotoNext = 3416985i32;
                                };
                            };
                        } else {
                            _gotoNext = 3420303i32;
                        };
                    } else if (__value__ == (3416985i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3416918?.__copy__());
                                _c_3416826 = __tmp__._0;
                                _t_3416918 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3417036i32;
                            } else {
                                _gotoNext = 3417066i32;
                            };
                        };
                    } else if (__value__ == (3417036i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417066i32;
                    } else if (__value__ == (3417066i32)) {
                        _p_3416806._literal(_c_3416826);
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417082i32)) {
                        if ((((_p_3416806._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3416918.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3416918[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3417147i32;
                        } else {
                            _gotoNext = 3417290i32;
                        };
                    } else if (__value__ == (3417147i32)) {
                        {
                            {
                                var __tmp__ = _p_3416806._parsePerlFlags(_t_3416918?.__copy__());
                                _t_3416918 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3417243i32;
                            } else {
                                _gotoNext = 3417276i32;
                            };
                        };
                    } else if (__value__ == (3417243i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417276i32;
                    } else if (__value__ == (3417276i32)) {
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417290i32)) {
                        _p_3416806._numCap++;
                        _p_3416806._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3416806._numCap;
                        _t_3416918 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417352i32)) {
                        {
                            _err = _p_3416806._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3417407i32;
                            } else {
                                _gotoNext = 3417437i32;
                            };
                        };
                    } else if (__value__ == (3417407i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417437i32;
                    } else if (__value__ == (3417437i32)) {
                        _t_3416918 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417449i32)) {
                        {
                            _err = _p_3416806._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3417503i32;
                            } else {
                                _gotoNext = 3417533i32;
                            };
                        };
                    } else if (__value__ == (3417503i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3417533i32;
                    } else if (__value__ == (3417533i32)) {
                        _t_3416918 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417545i32)) {
                        if ((_p_3416806._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3417582i32;
                        } else {
                            _gotoNext = 3417616i32;
                        };
                    } else if (__value__ == (3417582i32)) {
                        _p_3416806._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3417648i32;
                    } else if (__value__ == (3417616i32)) {
                        _gotoNext = 3417616i32;
                        _p_3416806._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3417648i32;
                    } else if (__value__ == (3417648i32)) {
                        _t_3416918 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417660i32)) {
                        if ((_p_3416806._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3417697i32;
                        } else {
                            _gotoNext = 3417748i32;
                        };
                    } else if (__value__ == (3417697i32)) {
                        _p_3416806._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3416806._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3417778i32;
                    } else if (__value__ == (3417748i32)) {
                        _gotoNext = 3417748i32;
                        _p_3416806._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3417778i32;
                    } else if (__value__ == (3417778i32)) {
                        _t_3416918 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417790i32)) {
                        if ((_p_3416806._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3417825i32;
                        } else {
                            _gotoNext = 3417857i32;
                        };
                    } else if (__value__ == (3417825i32)) {
                        _p_3416806._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3417892i32;
                    } else if (__value__ == (3417857i32)) {
                        _gotoNext = 3417857i32;
                        _p_3416806._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3417892i32;
                    } else if (__value__ == (3417892i32)) {
                        _t_3416918 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417904i32)) {
                        {
                            {
                                var __tmp__ = _p_3416806._parseClass(_t_3416918?.__copy__());
                                _t_3416918 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3417957i32;
                            } else {
                                _gotoNext = 3420303i32;
                            };
                        };
                    } else if (__value__ == (3417957i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3417986i32)) {
                        _before_3418009 = _t_3416918?.__copy__();
                        _gotoNext = 3418024i32;
                    } else if (__value__ == (3418024i32)) {
                        {
                            final __value__ = _t_3416918[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3418041i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3418070i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3418099i32;
                            } else {
                                _gotoNext = 3418134i32;
                            };
                        };
                    } else if (__value__ == (3418041i32)) {
                        _op_3416844 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3418134i32;
                    } else if (__value__ == (3418070i32)) {
                        _op_3416844 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3418134i32;
                    } else if (__value__ == (3418099i32)) {
                        _op_3416844 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3418134i32;
                    } else if (__value__ == (3418134i32)) {
                        _after_3418134 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3416806._repeat(_op_3416844, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3418009?.__copy__(), _after_3418134?.__copy__(), _lastRepeat_3416860?.__copy__());
                                _after_3418134 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3418226i32;
                            } else {
                                _gotoNext = 3418256i32;
                            };
                        };
                    } else if (__value__ == (3418226i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418256i32;
                    } else if (__value__ == (3418256i32)) {
                        _repeat_3416942 = _before_3418009?.__copy__();
                        _t_3416918 = _after_3418134?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3418287i32)) {
                        _op_3416844 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3418317 = _t_3416918?.__copy__();
                        {
                            var __tmp__ = _p_3416806._parseRepeat(_t_3416918?.__copy__());
                            _min_3418332 = __tmp__._0;
                            _max_3418337 = __tmp__._1;
                            _after_3418342 = __tmp__._2?.__copy__();
                            _ok_3418349 = __tmp__._3;
                        };
                        if (!_ok_3418349) {
                            _gotoNext = 3418382i32;
                        } else {
                            _gotoNext = 3418490i32;
                        };
                    } else if (__value__ == (3418382i32)) {
                        _p_3416806._literal((123 : stdgo.GoInt32));
                        _t_3416918 = (_t_3416918.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3418490i32)) {
                        if (((((_min_3418332 < (0 : stdgo.GoInt) : Bool) || (_min_3418332 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3418337 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3418337 >= (0 : stdgo.GoInt) : Bool) && (_min_3418332 > _max_3418337 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3418554i32;
                        } else {
                            _gotoNext = 3418704i32;
                        };
                    } else if (__value__ == (3418554i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3418317.__slice__(0, ((_before_3418317.length) - (_after_3418342.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418704i32;
                    } else if (__value__ == (3418704i32)) {
                        {
                            {
                                var __tmp__ = _p_3416806._repeat(_op_3416844, _min_3418332, _max_3418337, _before_3418317?.__copy__(), _after_3418342?.__copy__(), _lastRepeat_3416860?.__copy__());
                                _after_3418342 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3418782i32;
                            } else {
                                _gotoNext = 3418812i32;
                            };
                        };
                    } else if (__value__ == (3418782i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3418812i32;
                    } else if (__value__ == (3418812i32)) {
                        _repeat_3416942 = _before_3418317?.__copy__();
                        _t_3416918 = _after_3418342?.__copy__();
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3418843i32)) {
                        if ((((_p_3416806._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3416918.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3418894i32;
                        } else {
                            _gotoNext = 3419618i32;
                        };
                    } else if (__value__ == (3418894i32)) {
                        _gotoNext = 3418900i32;
                    } else if (__value__ == (3418900i32)) {
                        {
                            final __value__ = _t_3416918[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3418918i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3418991i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3419067i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3419145i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3419240i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3419536i32;
                            } else {
                                _gotoNext = 3419618i32;
                            };
                        };
                    } else if (__value__ == (3418918i32)) {
                        _p_3416806._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416918 = (_t_3416918.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3418991i32)) {
                        _p_3416806._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416918 = (_t_3416918.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3419067i32)) {
                        _p_3416806._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416918 = (_t_3416918.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3419145i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3416918.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419618i32;
                    } else if (__value__ == (3419240i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3416918.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3419305 = __tmp__._0?.__copy__();
                            _t_3416918 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3419363i32;
                    } else if (__value__ == (3419363i32)) {
                        if (_lit_3419305 != (stdgo.Go.str())) {
                            _gotoNext = 3419377i32;
                        } else {
                            _gotoNext = 3419516i32;
                        };
                    } else if (__value__ == (3419377i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3419305?.__copy__());
                            _c_3419385 = __tmp__._0;
                            _rest_3419388 = __tmp__._1?.__copy__();
                            _err_3419394 = __tmp__._2;
                        };
                        if (_err_3419394 != null) {
                            _gotoNext = 3419435i32;
                        } else {
                            _gotoNext = 3419474i32;
                        };
                    } else if (__value__ == (3419435i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3419394 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419474i32;
                    } else if (__value__ == (3419474i32)) {
                        _p_3416806._literal(_c_3419385);
                        _lit_3419305 = _rest_3419388?.__copy__();
                        _gotoNext = 3419363i32;
                    } else if (__value__ == (3419516i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3419536i32)) {
                        _p_3416806._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3416918 = (_t_3416918.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3419618i32)) {
                        _re_3419618 = _p_3416806._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3419618.flags = _p_3416806._flags;
                        if ((((_t_3416918.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3416918[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3416918[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3419774i32;
                        } else {
                            _gotoNext = 3420016i32;
                        };
                    } else if (__value__ == (3419774i32)) {
                        {
                            var __tmp__ = _p_3416806._parseUnicodeClass(_t_3416918?.__copy__(), (_re_3419618.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3419780 = __tmp__._0;
                            _rest_3419783 = __tmp__._1?.__copy__();
                            _err_3419789 = __tmp__._2;
                        };
                        if (_err_3419789 != null) {
                            _gotoNext = 3419851i32;
                        } else {
                            _gotoNext = 3419884i32;
                        };
                    } else if (__value__ == (3419851i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3419789 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3419884i32;
                    } else if (__value__ == (3419884i32)) {
                        if (_r_3419780 != null) {
                            _gotoNext = 3419896i32;
                        } else {
                            _gotoNext = 3420016i32;
                        };
                    } else if (__value__ == (3419896i32)) {
                        _re_3419618.rune = _r_3419780;
                        _t_3416918 = _rest_3419783?.__copy__();
                        _p_3416806._push(_re_3419618);
                        bigSwitchBreak = true;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3420016i32)) {
                        {
                            {
                                var __tmp__ = _p_3416806._parsePerlClassEscape(_t_3416918?.__copy__(), (_re_3419618.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3420019 = __tmp__._0;
                                _rest_3420022 = __tmp__._1?.__copy__();
                            };
                            if (_r_3420019 != null) {
                                _gotoNext = 3420080i32;
                            } else {
                                _gotoNext = 3420154i32;
                            };
                        };
                    } else if (__value__ == (3420080i32)) {
                        _re_3419618.rune = _r_3420019;
                        _t_3416918 = _rest_3420022?.__copy__();
                        _p_3416806._push(_re_3419618);
                        bigSwitchBreak = true;
                        _gotoNext = 3416969i32;
                    } else if (__value__ == (3420154i32)) {
                        _p_3416806._reuse(_re_3419618);
                        {
                            {
                                var __tmp__ = _p_3416806._parseEscape(_t_3416918?.__copy__());
                                _c_3416826 = __tmp__._0;
                                _t_3416918 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3420254i32;
                            } else {
                                _gotoNext = 3420284i32;
                            };
                        };
                    } else if (__value__ == (3420254i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3420284i32;
                    } else if (__value__ == (3420284i32)) {
                        _p_3416806._literal(_c_3416826);
                        _gotoNext = 3420303i32;
                    } else if (__value__ == (3420303i32)) {
                        _lastRepeat_3416860 = _repeat_3416942?.__copy__();
                        _gotoNext = 3416926i32;
                    } else if (__value__ == (3420328i32)) {
                        _p_3416806._concat();
                        if (_p_3416806._swapVerticalBar()) {
                            _gotoNext = 3420363i32;
                        } else {
                            _gotoNext = 3420428i32;
                        };
                    } else if (__value__ == (3420363i32)) {
                        _p_3416806._stack = (_p_3416806._stack.__slice__(0, ((_p_3416806._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3420428i32;
                    } else if (__value__ == (3420428i32)) {
                        _p_3416806._alternate();
                        _n_3420444 = (_p_3416806._stack.length);
                        if (_n_3420444 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3420473i32;
                        } else {
                            _gotoNext = 3420520i32;
                        };
                    } else if (__value__ == (3420473i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3420520i32;
                    } else if (__value__ == (3420520i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3416806._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
