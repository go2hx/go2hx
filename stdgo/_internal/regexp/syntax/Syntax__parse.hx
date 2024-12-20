package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3497561:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3497325:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3497322:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3494368:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3495879:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3494348:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _after_3495676:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3494484:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3494460:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3494386:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3497564:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3495891:Bool = false;
            var bigSwitchBreak = false;
            var _min_3495874:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3495859:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3495551:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3494206:stdgo.Error = (null : stdgo.Error);
            var _re_3497160:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3496936:stdgo.Error = (null : stdgo.Error);
            var _c_3496927:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3496847:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3497986:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3497331:stdgo.Error = (null : stdgo.Error);
            var _rest_3496930:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3495884:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3494402:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3494159i32;
                        } else {
                            _gotoNext = 3494340i32;
                        };
                    } else if (__value__ == (3494159i32)) {
                        {
                            _err_3494206 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3494206 != null) {
                                _gotoNext = 3494238i32;
                            } else {
                                _gotoNext = 3494265i32;
                            };
                        };
                    } else if (__value__ == (3494238i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3494206 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494265i32;
                    } else if (__value__ == (3494265i32)) {
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
                        _gotoNext = 3494340i32;
                    } else if (__value__ == (3494340i32)) {
                        _p_3494348._flags = _flags;
                        _p_3494348._wholeRegexp = _s?.__copy__();
                        _t_3494460 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3494468i32;
                    } else if (__value__ == (3494468i32)) {
                        if (_t_3494460 != (stdgo.Go.str())) {
                            _gotoNext = 3494480i32;
                        } else {
                            _gotoNext = 3497870i32;
                        };
                    } else if (__value__ == (3494480i32)) {
                        _repeat_3494484 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3494498i32;
                    } else if (__value__ == (3494498i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3494511i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3494460[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494624i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494894i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494991i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495087i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495202i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495332i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495446i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495528i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495829i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3496385i32;
                                } else {
                                    _gotoNext = 3494527i32;
                                };
                            };
                        } else {
                            _gotoNext = 3497845i32;
                        };
                    } else if (__value__ == (3494527i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3494460?.__copy__());
                                _c_3494368 = __tmp__._0;
                                _t_3494460 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3494578i32;
                            } else {
                                _gotoNext = 3494608i32;
                            };
                        };
                    } else if (__value__ == (3494578i32)) {
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
                        _gotoNext = 3494608i32;
                    } else if (__value__ == (3494608i32)) {
                        _p_3494348._literal(_c_3494368);
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3494624i32)) {
                        if ((((_p_3494348._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3494460.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3494460[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3494689i32;
                        } else {
                            _gotoNext = 3494832i32;
                        };
                    } else if (__value__ == (3494689i32)) {
                        {
                            {
                                var __tmp__ = _p_3494348._parsePerlFlags(_t_3494460?.__copy__());
                                _t_3494460 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3494785i32;
                            } else {
                                _gotoNext = 3494818i32;
                            };
                        };
                    } else if (__value__ == (3494785i32)) {
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
                        _gotoNext = 3494818i32;
                    } else if (__value__ == (3494818i32)) {
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3494832i32)) {
                        _p_3494348._numCap++;
                        _p_3494348._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3494348._numCap;
                        _t_3494460 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3494894i32)) {
                        {
                            _err = _p_3494348._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3494949i32;
                            } else {
                                _gotoNext = 3494979i32;
                            };
                        };
                    } else if (__value__ == (3494949i32)) {
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
                        _gotoNext = 3494979i32;
                    } else if (__value__ == (3494979i32)) {
                        _t_3494460 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3494991i32)) {
                        {
                            _err = _p_3494348._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3495045i32;
                            } else {
                                _gotoNext = 3495075i32;
                            };
                        };
                    } else if (__value__ == (3495045i32)) {
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
                        _gotoNext = 3495075i32;
                    } else if (__value__ == (3495075i32)) {
                        _t_3494460 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3495087i32)) {
                        if ((_p_3494348._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3495124i32;
                        } else {
                            _gotoNext = 3495158i32;
                        };
                    } else if (__value__ == (3495124i32)) {
                        _p_3494348._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3495190i32;
                    } else if (__value__ == (3495158i32)) {
                        _gotoNext = 3495158i32;
                        _p_3494348._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3495190i32;
                    } else if (__value__ == (3495190i32)) {
                        _t_3494460 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3495202i32)) {
                        if ((_p_3494348._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3495239i32;
                        } else {
                            _gotoNext = 3495290i32;
                        };
                    } else if (__value__ == (3495239i32)) {
                        _p_3494348._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3494348._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3495320i32;
                    } else if (__value__ == (3495290i32)) {
                        _gotoNext = 3495290i32;
                        _p_3494348._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3495320i32;
                    } else if (__value__ == (3495320i32)) {
                        _t_3494460 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3495332i32)) {
                        if ((_p_3494348._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3495367i32;
                        } else {
                            _gotoNext = 3495399i32;
                        };
                    } else if (__value__ == (3495367i32)) {
                        _p_3494348._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3495434i32;
                    } else if (__value__ == (3495399i32)) {
                        _gotoNext = 3495399i32;
                        _p_3494348._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3495434i32;
                    } else if (__value__ == (3495434i32)) {
                        _t_3494460 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3495446i32)) {
                        {
                            {
                                var __tmp__ = _p_3494348._parseClass(_t_3494460?.__copy__());
                                _t_3494460 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3495499i32;
                            } else {
                                _gotoNext = 3497845i32;
                            };
                        };
                    } else if (__value__ == (3495499i32)) {
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
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3495528i32)) {
                        _before_3495551 = _t_3494460?.__copy__();
                        _gotoNext = 3495566i32;
                    } else if (__value__ == (3495566i32)) {
                        {
                            final __value__ = _t_3494460[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3495583i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3495612i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3495641i32;
                            } else {
                                _gotoNext = 3495676i32;
                            };
                        };
                    } else if (__value__ == (3495583i32)) {
                        _op_3494386 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3495676i32;
                    } else if (__value__ == (3495612i32)) {
                        _op_3494386 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3495676i32;
                    } else if (__value__ == (3495641i32)) {
                        _op_3494386 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3495676i32;
                    } else if (__value__ == (3495676i32)) {
                        _after_3495676 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3494348._repeat(_op_3494386, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3495551?.__copy__(), _after_3495676?.__copy__(), _lastRepeat_3494402?.__copy__());
                                _after_3495676 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3495768i32;
                            } else {
                                _gotoNext = 3495798i32;
                            };
                        };
                    } else if (__value__ == (3495768i32)) {
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
                        _gotoNext = 3495798i32;
                    } else if (__value__ == (3495798i32)) {
                        _repeat_3494484 = _before_3495551?.__copy__();
                        _t_3494460 = _after_3495676?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3495829i32)) {
                        _op_3494386 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3495859 = _t_3494460?.__copy__();
                        {
                            var __tmp__ = _p_3494348._parseRepeat(_t_3494460?.__copy__());
                            _min_3495874 = __tmp__._0;
                            _max_3495879 = __tmp__._1;
                            _after_3495884 = __tmp__._2?.__copy__();
                            _ok_3495891 = __tmp__._3;
                        };
                        if (!_ok_3495891) {
                            _gotoNext = 3495924i32;
                        } else {
                            _gotoNext = 3496032i32;
                        };
                    } else if (__value__ == (3495924i32)) {
                        _p_3494348._literal((123 : stdgo.GoInt32));
                        _t_3494460 = (_t_3494460.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3496032i32)) {
                        if (((((_min_3495874 < (0 : stdgo.GoInt) : Bool) || (_min_3495874 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3495879 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3495879 >= (0 : stdgo.GoInt) : Bool) && (_min_3495874 > _max_3495879 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3496096i32;
                        } else {
                            _gotoNext = 3496246i32;
                        };
                    } else if (__value__ == (3496096i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3495859.__slice__(0, ((_before_3495859.length) - (_after_3495884.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3496246i32;
                    } else if (__value__ == (3496246i32)) {
                        {
                            {
                                var __tmp__ = _p_3494348._repeat(_op_3494386, _min_3495874, _max_3495879, _before_3495859?.__copy__(), _after_3495884?.__copy__(), _lastRepeat_3494402?.__copy__());
                                _after_3495884 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3496324i32;
                            } else {
                                _gotoNext = 3496354i32;
                            };
                        };
                    } else if (__value__ == (3496324i32)) {
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
                        _gotoNext = 3496354i32;
                    } else if (__value__ == (3496354i32)) {
                        _repeat_3494484 = _before_3495859?.__copy__();
                        _t_3494460 = _after_3495884?.__copy__();
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3496385i32)) {
                        if ((((_p_3494348._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3494460.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3496436i32;
                        } else {
                            _gotoNext = 3497160i32;
                        };
                    } else if (__value__ == (3496436i32)) {
                        _gotoNext = 3496442i32;
                    } else if (__value__ == (3496442i32)) {
                        {
                            final __value__ = _t_3494460[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3496460i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3496533i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3496609i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3496687i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3496782i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3497078i32;
                            } else {
                                _gotoNext = 3497160i32;
                            };
                        };
                    } else if (__value__ == (3496460i32)) {
                        _p_3494348._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494460 = (_t_3494460.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3496533i32)) {
                        _p_3494348._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494460 = (_t_3494460.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3496609i32)) {
                        _p_3494348._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494460 = (_t_3494460.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3496687i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3494460.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497160i32;
                    } else if (__value__ == (3496782i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3494460.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3496847 = __tmp__._0?.__copy__();
                            _t_3494460 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3496905i32;
                    } else if (__value__ == (3496905i32)) {
                        if (_lit_3496847 != (stdgo.Go.str())) {
                            _gotoNext = 3496919i32;
                        } else {
                            _gotoNext = 3497058i32;
                        };
                    } else if (__value__ == (3496919i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3496847?.__copy__());
                            _c_3496927 = __tmp__._0;
                            _rest_3496930 = __tmp__._1?.__copy__();
                            _err_3496936 = __tmp__._2;
                        };
                        if (_err_3496936 != null) {
                            _gotoNext = 3496977i32;
                        } else {
                            _gotoNext = 3497016i32;
                        };
                    } else if (__value__ == (3496977i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3496936 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497016i32;
                    } else if (__value__ == (3497016i32)) {
                        _p_3494348._literal(_c_3496927);
                        _lit_3496847 = _rest_3496930?.__copy__();
                        _gotoNext = 3496905i32;
                    } else if (__value__ == (3497058i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3497078i32)) {
                        _p_3494348._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494460 = (_t_3494460.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3497160i32)) {
                        _re_3497160 = _p_3494348._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3497160.flags = _p_3494348._flags;
                        if ((((_t_3494460.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3494460[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3494460[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3497316i32;
                        } else {
                            _gotoNext = 3497558i32;
                        };
                    } else if (__value__ == (3497316i32)) {
                        {
                            var __tmp__ = _p_3494348._parseUnicodeClass(_t_3494460?.__copy__(), (_re_3497160.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3497322 = __tmp__._0;
                            _rest_3497325 = __tmp__._1?.__copy__();
                            _err_3497331 = __tmp__._2;
                        };
                        if (_err_3497331 != null) {
                            _gotoNext = 3497393i32;
                        } else {
                            _gotoNext = 3497426i32;
                        };
                    } else if (__value__ == (3497393i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3497331 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497426i32;
                    } else if (__value__ == (3497426i32)) {
                        if (_r_3497322 != null) {
                            _gotoNext = 3497438i32;
                        } else {
                            _gotoNext = 3497558i32;
                        };
                    } else if (__value__ == (3497438i32)) {
                        _re_3497160.rune = _r_3497322;
                        _t_3494460 = _rest_3497325?.__copy__();
                        _p_3494348._push(_re_3497160);
                        bigSwitchBreak = true;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3497558i32)) {
                        {
                            {
                                var __tmp__ = _p_3494348._parsePerlClassEscape(_t_3494460?.__copy__(), (_re_3497160.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3497561 = __tmp__._0;
                                _rest_3497564 = __tmp__._1?.__copy__();
                            };
                            if (_r_3497561 != null) {
                                _gotoNext = 3497622i32;
                            } else {
                                _gotoNext = 3497696i32;
                            };
                        };
                    } else if (__value__ == (3497622i32)) {
                        _re_3497160.rune = _r_3497561;
                        _t_3494460 = _rest_3497564?.__copy__();
                        _p_3494348._push(_re_3497160);
                        bigSwitchBreak = true;
                        _gotoNext = 3494511i32;
                    } else if (__value__ == (3497696i32)) {
                        _p_3494348._reuse(_re_3497160);
                        {
                            {
                                var __tmp__ = _p_3494348._parseEscape(_t_3494460?.__copy__());
                                _c_3494368 = __tmp__._0;
                                _t_3494460 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3497796i32;
                            } else {
                                _gotoNext = 3497826i32;
                            };
                        };
                    } else if (__value__ == (3497796i32)) {
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
                        _gotoNext = 3497826i32;
                    } else if (__value__ == (3497826i32)) {
                        _p_3494348._literal(_c_3494368);
                        _gotoNext = 3497845i32;
                    } else if (__value__ == (3497845i32)) {
                        _lastRepeat_3494402 = _repeat_3494484?.__copy__();
                        _gotoNext = 3494468i32;
                    } else if (__value__ == (3497870i32)) {
                        _p_3494348._concat();
                        if (_p_3494348._swapVerticalBar()) {
                            _gotoNext = 3497905i32;
                        } else {
                            _gotoNext = 3497970i32;
                        };
                    } else if (__value__ == (3497905i32)) {
                        _p_3494348._stack = (_p_3494348._stack.__slice__(0, ((_p_3494348._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3497970i32;
                    } else if (__value__ == (3497970i32)) {
                        _p_3494348._alternate();
                        _n_3497986 = (_p_3494348._stack.length);
                        if (_n_3497986 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3498015i32;
                        } else {
                            _gotoNext = 3498062i32;
                        };
                    } else if (__value__ == (3498015i32)) {
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
                        _gotoNext = 3498062i32;
                    } else if (__value__ == (3498062i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3494348._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
