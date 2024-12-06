package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3656198:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _min_3654750:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3653278:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3655806:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3655803:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3653082:stdgo.Error = (null : stdgo.Error);
            var _re_3656036:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3654552:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3653262:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _p_3653224:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _before_3654735:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3656862:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _ok_3654767:Bool = false;
            var _before_3654427:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3656440:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3656207:stdgo.Error = (null : stdgo.Error);
            var _rest_3656201:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3654760:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3653360:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3653336:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3653244:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3656437:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3655812:stdgo.Error = (null : stdgo.Error);
            var _lit_3655723:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3654755:stdgo.GoInt = (0 : stdgo.GoInt);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
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
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3653035i32;
                        } else {
                            _gotoNext = 3653216i32;
                        };
                    } else if (__value__ == (3653035i32)) {
                        {
                            _err_3653082 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3653082 != null) {
                                _gotoNext = 3653114i32;
                            } else {
                                _gotoNext = 3653141i32;
                            };
                        };
                    } else if (__value__ == (3653114i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3653082 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3653141i32;
                    } else if (__value__ == (3653141i32)) {
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
                        _gotoNext = 3653216i32;
                    } else if (__value__ == (3653216i32)) {
                        _p_3653224._flags = _flags;
                        _p_3653224._wholeRegexp = _s?.__copy__();
                        _t_3653336 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3653344i32;
                    } else if (__value__ == (3653344i32)) {
                        if (_t_3653336 != (stdgo.Go.str())) {
                            _gotoNext = 3653356i32;
                        } else {
                            _gotoNext = 3656746i32;
                        };
                    } else if (__value__ == (3653356i32)) {
                        _repeat_3653360 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3653374i32;
                    } else if (__value__ == (3653374i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3653387i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3653336[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3653500i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3653770i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3653867i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3653963i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3654078i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3654208i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3654322i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3654404i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3654705i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3655261i32;
                                } else {
                                    _gotoNext = 3653403i32;
                                };
                            };
                        } else {
                            _gotoNext = 3656721i32;
                        };
                    } else if (__value__ == (3653403i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3653336?.__copy__());
                                _c_3653244 = __tmp__._0;
                                _t_3653336 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3653454i32;
                            } else {
                                _gotoNext = 3653484i32;
                            };
                        };
                    } else if (__value__ == (3653454i32)) {
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
                        _gotoNext = 3653484i32;
                    } else if (__value__ == (3653484i32)) {
                        _p_3653224._literal(_c_3653244);
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3653500i32)) {
                        if ((((_p_3653224._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3653336.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3653336[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3653565i32;
                        } else {
                            _gotoNext = 3653708i32;
                        };
                    } else if (__value__ == (3653565i32)) {
                        {
                            {
                                var __tmp__ = _p_3653224._parsePerlFlags(_t_3653336?.__copy__());
                                _t_3653336 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3653661i32;
                            } else {
                                _gotoNext = 3653694i32;
                            };
                        };
                    } else if (__value__ == (3653661i32)) {
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
                        _gotoNext = 3653694i32;
                    } else if (__value__ == (3653694i32)) {
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3653708i32)) {
                        _p_3653224._numCap++;
                        _p_3653224._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3653224._numCap;
                        _t_3653336 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3653770i32)) {
                        {
                            _err = _p_3653224._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3653825i32;
                            } else {
                                _gotoNext = 3653855i32;
                            };
                        };
                    } else if (__value__ == (3653825i32)) {
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
                        _gotoNext = 3653855i32;
                    } else if (__value__ == (3653855i32)) {
                        _t_3653336 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3653867i32)) {
                        {
                            _err = _p_3653224._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3653921i32;
                            } else {
                                _gotoNext = 3653951i32;
                            };
                        };
                    } else if (__value__ == (3653921i32)) {
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
                        _gotoNext = 3653951i32;
                    } else if (__value__ == (3653951i32)) {
                        _t_3653336 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3653963i32)) {
                        if ((_p_3653224._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3654000i32;
                        } else {
                            _gotoNext = 3654034i32;
                        };
                    } else if (__value__ == (3654000i32)) {
                        _p_3653224._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3654066i32;
                    } else if (__value__ == (3654034i32)) {
                        _gotoNext = 3654034i32;
                        _p_3653224._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3654066i32;
                    } else if (__value__ == (3654066i32)) {
                        _t_3653336 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3654078i32)) {
                        if ((_p_3653224._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3654115i32;
                        } else {
                            _gotoNext = 3654166i32;
                        };
                    } else if (__value__ == (3654115i32)) {
                        _p_3653224._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3653224._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3654196i32;
                    } else if (__value__ == (3654166i32)) {
                        _gotoNext = 3654166i32;
                        _p_3653224._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3654196i32;
                    } else if (__value__ == (3654196i32)) {
                        _t_3653336 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3654208i32)) {
                        if ((_p_3653224._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3654243i32;
                        } else {
                            _gotoNext = 3654275i32;
                        };
                    } else if (__value__ == (3654243i32)) {
                        _p_3653224._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3654310i32;
                    } else if (__value__ == (3654275i32)) {
                        _gotoNext = 3654275i32;
                        _p_3653224._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3654310i32;
                    } else if (__value__ == (3654310i32)) {
                        _t_3653336 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3654322i32)) {
                        {
                            {
                                var __tmp__ = _p_3653224._parseClass(_t_3653336?.__copy__());
                                _t_3653336 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3654375i32;
                            } else {
                                _gotoNext = 3656721i32;
                            };
                        };
                    } else if (__value__ == (3654375i32)) {
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
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3654404i32)) {
                        _before_3654427 = _t_3653336?.__copy__();
                        _gotoNext = 3654442i32;
                    } else if (__value__ == (3654442i32)) {
                        {
                            final __value__ = _t_3653336[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3654459i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3654488i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3654517i32;
                            } else {
                                _gotoNext = 3654552i32;
                            };
                        };
                    } else if (__value__ == (3654459i32)) {
                        _op_3653262 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3654552i32;
                    } else if (__value__ == (3654488i32)) {
                        _op_3653262 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3654552i32;
                    } else if (__value__ == (3654517i32)) {
                        _op_3653262 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3654552i32;
                    } else if (__value__ == (3654552i32)) {
                        _after_3654552 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3653224._repeat(_op_3653262, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3654427?.__copy__(), _after_3654552?.__copy__(), _lastRepeat_3653278?.__copy__());
                                _after_3654552 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3654644i32;
                            } else {
                                _gotoNext = 3654674i32;
                            };
                        };
                    } else if (__value__ == (3654644i32)) {
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
                        _gotoNext = 3654674i32;
                    } else if (__value__ == (3654674i32)) {
                        _repeat_3653360 = _before_3654427?.__copy__();
                        _t_3653336 = _after_3654552?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3654705i32)) {
                        _op_3653262 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3654735 = _t_3653336?.__copy__();
                        {
                            var __tmp__ = _p_3653224._parseRepeat(_t_3653336?.__copy__());
                            _min_3654750 = __tmp__._0;
                            _max_3654755 = __tmp__._1;
                            _after_3654760 = __tmp__._2?.__copy__();
                            _ok_3654767 = __tmp__._3;
                        };
                        if (!_ok_3654767) {
                            _gotoNext = 3654800i32;
                        } else {
                            _gotoNext = 3654908i32;
                        };
                    } else if (__value__ == (3654800i32)) {
                        _p_3653224._literal((123 : stdgo.GoInt32));
                        _t_3653336 = (_t_3653336.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3654908i32)) {
                        if (((((_min_3654750 < (0 : stdgo.GoInt) : Bool) || (_min_3654750 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3654755 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3654755 >= (0 : stdgo.GoInt) : Bool) && (_min_3654750 > _max_3654755 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3654972i32;
                        } else {
                            _gotoNext = 3655122i32;
                        };
                    } else if (__value__ == (3654972i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3654735.__slice__(0, ((_before_3654735.length) - (_after_3654760.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3655122i32;
                    } else if (__value__ == (3655122i32)) {
                        {
                            {
                                var __tmp__ = _p_3653224._repeat(_op_3653262, _min_3654750, _max_3654755, _before_3654735?.__copy__(), _after_3654760?.__copy__(), _lastRepeat_3653278?.__copy__());
                                _after_3654760 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3655200i32;
                            } else {
                                _gotoNext = 3655230i32;
                            };
                        };
                    } else if (__value__ == (3655200i32)) {
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
                        _gotoNext = 3655230i32;
                    } else if (__value__ == (3655230i32)) {
                        _repeat_3653360 = _before_3654735?.__copy__();
                        _t_3653336 = _after_3654760?.__copy__();
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3655261i32)) {
                        if ((((_p_3653224._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3653336.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3655312i32;
                        } else {
                            _gotoNext = 3656036i32;
                        };
                    } else if (__value__ == (3655312i32)) {
                        _gotoNext = 3655318i32;
                    } else if (__value__ == (3655318i32)) {
                        {
                            final __value__ = _t_3653336[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3655336i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3655409i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3655485i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3655563i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3655658i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3655954i32;
                            } else {
                                _gotoNext = 3656036i32;
                            };
                        };
                    } else if (__value__ == (3655336i32)) {
                        _p_3653224._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3653336 = (_t_3653336.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3655409i32)) {
                        _p_3653224._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3653336 = (_t_3653336.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3655485i32)) {
                        _p_3653224._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3653336 = (_t_3653336.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3655563i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3653336.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3656036i32;
                    } else if (__value__ == (3655658i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3653336.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3655723 = __tmp__._0?.__copy__();
                            _t_3653336 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3655781i32;
                    } else if (__value__ == (3655781i32)) {
                        if (_lit_3655723 != (stdgo.Go.str())) {
                            _gotoNext = 3655795i32;
                        } else {
                            _gotoNext = 3655934i32;
                        };
                    } else if (__value__ == (3655795i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3655723?.__copy__());
                            _c_3655803 = __tmp__._0;
                            _rest_3655806 = __tmp__._1?.__copy__();
                            _err_3655812 = __tmp__._2;
                        };
                        if (_err_3655812 != null) {
                            _gotoNext = 3655853i32;
                        } else {
                            _gotoNext = 3655892i32;
                        };
                    } else if (__value__ == (3655853i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3655812 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3655892i32;
                    } else if (__value__ == (3655892i32)) {
                        _p_3653224._literal(_c_3655803);
                        _lit_3655723 = _rest_3655806?.__copy__();
                        _gotoNext = 3655781i32;
                    } else if (__value__ == (3655934i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3655954i32)) {
                        _p_3653224._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3653336 = (_t_3653336.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3656036i32)) {
                        _re_3656036 = _p_3653224._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3656036.flags = _p_3653224._flags;
                        if ((((_t_3653336.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3653336[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3653336[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3656192i32;
                        } else {
                            _gotoNext = 3656434i32;
                        };
                    } else if (__value__ == (3656192i32)) {
                        {
                            var __tmp__ = _p_3653224._parseUnicodeClass(_t_3653336?.__copy__(), (_re_3656036.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3656198 = __tmp__._0;
                            _rest_3656201 = __tmp__._1?.__copy__();
                            _err_3656207 = __tmp__._2;
                        };
                        if (_err_3656207 != null) {
                            _gotoNext = 3656269i32;
                        } else {
                            _gotoNext = 3656302i32;
                        };
                    } else if (__value__ == (3656269i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3656207 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3656302i32;
                    } else if (__value__ == (3656302i32)) {
                        if (_r_3656198 != null) {
                            _gotoNext = 3656314i32;
                        } else {
                            _gotoNext = 3656434i32;
                        };
                    } else if (__value__ == (3656314i32)) {
                        _re_3656036.rune = _r_3656198;
                        _t_3653336 = _rest_3656201?.__copy__();
                        _p_3653224._push(_re_3656036);
                        bigSwitchBreak = true;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3656434i32)) {
                        {
                            {
                                var __tmp__ = _p_3653224._parsePerlClassEscape(_t_3653336?.__copy__(), (_re_3656036.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3656437 = __tmp__._0;
                                _rest_3656440 = __tmp__._1?.__copy__();
                            };
                            if (_r_3656437 != null) {
                                _gotoNext = 3656498i32;
                            } else {
                                _gotoNext = 3656572i32;
                            };
                        };
                    } else if (__value__ == (3656498i32)) {
                        _re_3656036.rune = _r_3656437;
                        _t_3653336 = _rest_3656440?.__copy__();
                        _p_3653224._push(_re_3656036);
                        bigSwitchBreak = true;
                        _gotoNext = 3653387i32;
                    } else if (__value__ == (3656572i32)) {
                        _p_3653224._reuse(_re_3656036);
                        {
                            {
                                var __tmp__ = _p_3653224._parseEscape(_t_3653336?.__copy__());
                                _c_3653244 = __tmp__._0;
                                _t_3653336 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3656672i32;
                            } else {
                                _gotoNext = 3656702i32;
                            };
                        };
                    } else if (__value__ == (3656672i32)) {
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
                        _gotoNext = 3656702i32;
                    } else if (__value__ == (3656702i32)) {
                        _p_3653224._literal(_c_3653244);
                        _gotoNext = 3656721i32;
                    } else if (__value__ == (3656721i32)) {
                        _lastRepeat_3653278 = _repeat_3653360?.__copy__();
                        _gotoNext = 3653344i32;
                    } else if (__value__ == (3656746i32)) {
                        _p_3653224._concat();
                        if (_p_3653224._swapVerticalBar()) {
                            _gotoNext = 3656781i32;
                        } else {
                            _gotoNext = 3656846i32;
                        };
                    } else if (__value__ == (3656781i32)) {
                        _p_3653224._stack = (_p_3653224._stack.__slice__(0, ((_p_3653224._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3656846i32;
                    } else if (__value__ == (3656846i32)) {
                        _p_3653224._alternate();
                        _n_3656862 = (_p_3653224._stack.length);
                        if (_n_3656862 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3656891i32;
                        } else {
                            _gotoNext = 3656938i32;
                        };
                    } else if (__value__ == (3656891i32)) {
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
                        _gotoNext = 3656938i32;
                    } else if (__value__ == (3656938i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3653224._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
