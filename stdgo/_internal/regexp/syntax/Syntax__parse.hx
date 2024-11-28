package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3570654:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3569583:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3569400:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3571049:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3570571:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3568184:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3568110:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3568092:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3569598:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3568126:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3568072:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _n_3571710:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_3570884:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3570660:stdgo.Error = (null : stdgo.Error);
            var _ok_3569615:Bool = false;
            var _max_3569603:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3569275:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _r_3571046:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3569608:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3568208:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3571285:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3570651:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3571288:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3571055:stdgo.Error = (null : stdgo.Error);
            var _err_3567930:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3567883i32;
                        } else {
                            _gotoNext = 3568064i32;
                        };
                    } else if (__value__ == (3567883i32)) {
                        {
                            _err_3567930 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3567930 != null) {
                                _gotoNext = 3567962i32;
                            } else {
                                _gotoNext = 3567989i32;
                            };
                        };
                    } else if (__value__ == (3567962i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3567930 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3567989i32;
                    } else if (__value__ == (3567989i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568064i32;
                    } else if (__value__ == (3568064i32)) {
                        _p_3568072._flags = _flags;
                        _p_3568072._wholeRegexp = _s?.__copy__();
                        _t_3568184 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3568192i32;
                    } else if (__value__ == (3568192i32)) {
                        if (_t_3568184 != (stdgo.Go.str())) {
                            _gotoNext = 3568204i32;
                        } else {
                            _gotoNext = 3571594i32;
                        };
                    } else if (__value__ == (3568204i32)) {
                        _repeat_3568208 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3568222i32;
                    } else if (__value__ == (3568222i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3568235i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3568184[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3568348i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3568618i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3568715i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3568811i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3568926i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3569056i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3569170i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3569252i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3569553i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3570109i32;
                                } else {
                                    _gotoNext = 3568251i32;
                                };
                            };
                        } else {
                            _gotoNext = 3571569i32;
                        };
                    } else if (__value__ == (3568251i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3568184?.__copy__());
                                _c_3568092 = __tmp__._0;
                                _t_3568184 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3568302i32;
                            } else {
                                _gotoNext = 3568332i32;
                            };
                        };
                    } else if (__value__ == (3568302i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568332i32;
                    } else if (__value__ == (3568332i32)) {
                        _p_3568072._literal(_c_3568092);
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3568348i32)) {
                        if ((((_p_3568072._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3568184.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3568184[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3568413i32;
                        } else {
                            _gotoNext = 3568556i32;
                        };
                    } else if (__value__ == (3568413i32)) {
                        {
                            {
                                var __tmp__ = _p_3568072._parsePerlFlags(_t_3568184?.__copy__());
                                _t_3568184 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3568509i32;
                            } else {
                                _gotoNext = 3568542i32;
                            };
                        };
                    } else if (__value__ == (3568509i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568542i32;
                    } else if (__value__ == (3568542i32)) {
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3568556i32)) {
                        _p_3568072._numCap++;
                        _p_3568072._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3568072._numCap;
                        _t_3568184 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3568618i32)) {
                        {
                            _err = _p_3568072._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3568673i32;
                            } else {
                                _gotoNext = 3568703i32;
                            };
                        };
                    } else if (__value__ == (3568673i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568703i32;
                    } else if (__value__ == (3568703i32)) {
                        _t_3568184 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3568715i32)) {
                        {
                            _err = _p_3568072._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3568769i32;
                            } else {
                                _gotoNext = 3568799i32;
                            };
                        };
                    } else if (__value__ == (3568769i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568799i32;
                    } else if (__value__ == (3568799i32)) {
                        _t_3568184 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3568811i32)) {
                        if ((_p_3568072._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3568848i32;
                        } else {
                            _gotoNext = 3568882i32;
                        };
                    } else if (__value__ == (3568848i32)) {
                        _p_3568072._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3568914i32;
                    } else if (__value__ == (3568882i32)) {
                        _gotoNext = 3568882i32;
                        _p_3568072._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3568914i32;
                    } else if (__value__ == (3568914i32)) {
                        _t_3568184 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3568926i32)) {
                        if ((_p_3568072._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3568963i32;
                        } else {
                            _gotoNext = 3569014i32;
                        };
                    } else if (__value__ == (3568963i32)) {
                        _p_3568072._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3568072._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3569044i32;
                    } else if (__value__ == (3569014i32)) {
                        _gotoNext = 3569014i32;
                        _p_3568072._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3569044i32;
                    } else if (__value__ == (3569044i32)) {
                        _t_3568184 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3569056i32)) {
                        if ((_p_3568072._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3569091i32;
                        } else {
                            _gotoNext = 3569123i32;
                        };
                    } else if (__value__ == (3569091i32)) {
                        _p_3568072._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3569158i32;
                    } else if (__value__ == (3569123i32)) {
                        _gotoNext = 3569123i32;
                        _p_3568072._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3569158i32;
                    } else if (__value__ == (3569158i32)) {
                        _t_3568184 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3569170i32)) {
                        {
                            {
                                var __tmp__ = _p_3568072._parseClass(_t_3568184?.__copy__());
                                _t_3568184 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3569223i32;
                            } else {
                                _gotoNext = 3571569i32;
                            };
                        };
                    } else if (__value__ == (3569223i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3569252i32)) {
                        _before_3569275 = _t_3568184?.__copy__();
                        _gotoNext = 3569290i32;
                    } else if (__value__ == (3569290i32)) {
                        {
                            final __value__ = _t_3568184[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3569307i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3569336i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3569365i32;
                            } else {
                                _gotoNext = 3569400i32;
                            };
                        };
                    } else if (__value__ == (3569307i32)) {
                        _op_3568110 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3569400i32;
                    } else if (__value__ == (3569336i32)) {
                        _op_3568110 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3569400i32;
                    } else if (__value__ == (3569365i32)) {
                        _op_3568110 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3569400i32;
                    } else if (__value__ == (3569400i32)) {
                        _after_3569400 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3568072._repeat(_op_3568110, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3569275?.__copy__(), _after_3569400?.__copy__(), _lastRepeat_3568126?.__copy__());
                                _after_3569400 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3569492i32;
                            } else {
                                _gotoNext = 3569522i32;
                            };
                        };
                    } else if (__value__ == (3569492i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3569522i32;
                    } else if (__value__ == (3569522i32)) {
                        _repeat_3568208 = _before_3569275?.__copy__();
                        _t_3568184 = _after_3569400?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3569553i32)) {
                        _op_3568110 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3569583 = _t_3568184?.__copy__();
                        {
                            var __tmp__ = _p_3568072._parseRepeat(_t_3568184?.__copy__());
                            _min_3569598 = __tmp__._0;
                            _max_3569603 = __tmp__._1;
                            _after_3569608 = __tmp__._2?.__copy__();
                            _ok_3569615 = __tmp__._3;
                        };
                        if (!_ok_3569615) {
                            _gotoNext = 3569648i32;
                        } else {
                            _gotoNext = 3569756i32;
                        };
                    } else if (__value__ == (3569648i32)) {
                        _p_3568072._literal((123 : stdgo.GoInt32));
                        _t_3568184 = (_t_3568184.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3569756i32)) {
                        if (((((_min_3569598 < (0 : stdgo.GoInt) : Bool) || (_min_3569598 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3569603 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3569603 >= (0 : stdgo.GoInt) : Bool) && (_min_3569598 > _max_3569603 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3569820i32;
                        } else {
                            _gotoNext = 3569970i32;
                        };
                    } else if (__value__ == (3569820i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3569583.__slice__(0, ((_before_3569583.length) - (_after_3569608.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3569970i32;
                    } else if (__value__ == (3569970i32)) {
                        {
                            {
                                var __tmp__ = _p_3568072._repeat(_op_3568110, _min_3569598, _max_3569603, _before_3569583?.__copy__(), _after_3569608?.__copy__(), _lastRepeat_3568126?.__copy__());
                                _after_3569608 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3570048i32;
                            } else {
                                _gotoNext = 3570078i32;
                            };
                        };
                    } else if (__value__ == (3570048i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3570078i32;
                    } else if (__value__ == (3570078i32)) {
                        _repeat_3568208 = _before_3569583?.__copy__();
                        _t_3568184 = _after_3569608?.__copy__();
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3570109i32)) {
                        if ((((_p_3568072._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3568184.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3570160i32;
                        } else {
                            _gotoNext = 3570884i32;
                        };
                    } else if (__value__ == (3570160i32)) {
                        _gotoNext = 3570166i32;
                    } else if (__value__ == (3570166i32)) {
                        {
                            final __value__ = _t_3568184[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3570184i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3570257i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3570333i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3570411i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3570506i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3570802i32;
                            } else {
                                _gotoNext = 3570884i32;
                            };
                        };
                    } else if (__value__ == (3570184i32)) {
                        _p_3568072._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3568184 = (_t_3568184.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3570257i32)) {
                        _p_3568072._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3568184 = (_t_3568184.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3570333i32)) {
                        _p_3568072._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3568184 = (_t_3568184.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3570411i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3568184.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3570884i32;
                    } else if (__value__ == (3570506i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3568184.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3570571 = __tmp__._0?.__copy__();
                            _t_3568184 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3570629i32;
                    } else if (__value__ == (3570629i32)) {
                        if (_lit_3570571 != (stdgo.Go.str())) {
                            _gotoNext = 3570643i32;
                        } else {
                            _gotoNext = 3570782i32;
                        };
                    } else if (__value__ == (3570643i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3570571?.__copy__());
                            _c_3570651 = __tmp__._0;
                            _rest_3570654 = __tmp__._1?.__copy__();
                            _err_3570660 = __tmp__._2;
                        };
                        if (_err_3570660 != null) {
                            _gotoNext = 3570701i32;
                        } else {
                            _gotoNext = 3570740i32;
                        };
                    } else if (__value__ == (3570701i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3570660 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3570740i32;
                    } else if (__value__ == (3570740i32)) {
                        _p_3568072._literal(_c_3570651);
                        _lit_3570571 = _rest_3570654?.__copy__();
                        _gotoNext = 3570629i32;
                    } else if (__value__ == (3570782i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3570802i32)) {
                        _p_3568072._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3568184 = (_t_3568184.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3570884i32)) {
                        _re_3570884 = _p_3568072._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3570884.flags = _p_3568072._flags;
                        if ((((_t_3568184.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3568184[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3568184[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3571040i32;
                        } else {
                            _gotoNext = 3571282i32;
                        };
                    } else if (__value__ == (3571040i32)) {
                        {
                            var __tmp__ = _p_3568072._parseUnicodeClass(_t_3568184?.__copy__(), (_re_3570884.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3571046 = __tmp__._0;
                            _rest_3571049 = __tmp__._1?.__copy__();
                            _err_3571055 = __tmp__._2;
                        };
                        if (_err_3571055 != null) {
                            _gotoNext = 3571117i32;
                        } else {
                            _gotoNext = 3571150i32;
                        };
                    } else if (__value__ == (3571117i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3571055 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3571150i32;
                    } else if (__value__ == (3571150i32)) {
                        if (_r_3571046 != null) {
                            _gotoNext = 3571162i32;
                        } else {
                            _gotoNext = 3571282i32;
                        };
                    } else if (__value__ == (3571162i32)) {
                        _re_3570884.rune = _r_3571046;
                        _t_3568184 = _rest_3571049?.__copy__();
                        _p_3568072._push(_re_3570884);
                        bigSwitchBreak = true;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3571282i32)) {
                        {
                            {
                                var __tmp__ = _p_3568072._parsePerlClassEscape(_t_3568184?.__copy__(), (_re_3570884.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3571285 = __tmp__._0;
                                _rest_3571288 = __tmp__._1?.__copy__();
                            };
                            if (_r_3571285 != null) {
                                _gotoNext = 3571346i32;
                            } else {
                                _gotoNext = 3571420i32;
                            };
                        };
                    } else if (__value__ == (3571346i32)) {
                        _re_3570884.rune = _r_3571285;
                        _t_3568184 = _rest_3571288?.__copy__();
                        _p_3568072._push(_re_3570884);
                        bigSwitchBreak = true;
                        _gotoNext = 3568235i32;
                    } else if (__value__ == (3571420i32)) {
                        _p_3568072._reuse(_re_3570884);
                        {
                            {
                                var __tmp__ = _p_3568072._parseEscape(_t_3568184?.__copy__());
                                _c_3568092 = __tmp__._0;
                                _t_3568184 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3571520i32;
                            } else {
                                _gotoNext = 3571550i32;
                            };
                        };
                    } else if (__value__ == (3571520i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3571550i32;
                    } else if (__value__ == (3571550i32)) {
                        _p_3568072._literal(_c_3568092);
                        _gotoNext = 3571569i32;
                    } else if (__value__ == (3571569i32)) {
                        _lastRepeat_3568126 = _repeat_3568208?.__copy__();
                        _gotoNext = 3568192i32;
                    } else if (__value__ == (3571594i32)) {
                        _p_3568072._concat();
                        if (_p_3568072._swapVerticalBar()) {
                            _gotoNext = 3571629i32;
                        } else {
                            _gotoNext = 3571694i32;
                        };
                    } else if (__value__ == (3571629i32)) {
                        _p_3568072._stack = (_p_3568072._stack.__slice__(0, ((_p_3568072._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3571694i32;
                    } else if (__value__ == (3571694i32)) {
                        _p_3568072._alternate();
                        _n_3571710 = (_p_3568072._stack.length);
                        if (_n_3571710 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3571739i32;
                        } else {
                            _gotoNext = 3571786i32;
                        };
                    } else if (__value__ == (3571739i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3571786i32;
                    } else if (__value__ == (3571786i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3568072._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
