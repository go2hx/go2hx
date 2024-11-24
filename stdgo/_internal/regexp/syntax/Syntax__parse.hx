package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_3346623:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3346420:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3345228:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3345130:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3348308:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3347591:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3348066:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3346628:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3345146:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3348730:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3347674:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3348305:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3347671:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3346603:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3345112:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3346295:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3345204:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3348075:stdgo.Error = (null : stdgo.Error);
            var _re_3347904:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _ok_3346635:Bool = false;
            var _err_3344950:stdgo.Error = (null : stdgo.Error);
            var _rest_3348069:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3347680:stdgo.Error = (null : stdgo.Error);
            var _min_3346618:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3345092:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
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
                            _gotoNext = 3344903i32;
                        } else {
                            _gotoNext = 3345084i32;
                        };
                    } else if (__value__ == (3344903i32)) {
                        {
                            _err_3344950 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3344950 != null) {
                                _gotoNext = 3344982i32;
                            } else {
                                _gotoNext = 3345009i32;
                            };
                        };
                    } else if (__value__ == (3344982i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3344950 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3345009i32;
                    } else if (__value__ == (3345009i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3345084i32;
                    } else if (__value__ == (3345084i32)) {
                        _p_3345092._flags = _flags;
                        _p_3345092._wholeRegexp = _s?.__copy__();
                        _t_3345204 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3345212i32;
                    } else if (__value__ == (3345212i32)) {
                        if (_t_3345204 != (stdgo.Go.str())) {
                            _gotoNext = 3345224i32;
                        } else {
                            _gotoNext = 3348614i32;
                        };
                    } else if (__value__ == (3345224i32)) {
                        _repeat_3345228 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3345242i32;
                    } else if (__value__ == (3345242i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3345255i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3345204[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3345368i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3345638i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3345735i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3345831i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3345946i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3346076i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3346190i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3346272i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3346573i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3347129i32;
                                } else {
                                    _gotoNext = 3345271i32;
                                };
                            };
                        } else {
                            _gotoNext = 3348589i32;
                        };
                    } else if (__value__ == (3345271i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3345204?.__copy__());
                                _c_3345112 = __tmp__._0;
                                _t_3345204 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3345322i32;
                            } else {
                                _gotoNext = 3345352i32;
                            };
                        };
                    } else if (__value__ == (3345322i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3345352i32;
                    } else if (__value__ == (3345352i32)) {
                        _p_3345092._literal(_c_3345112);
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3345368i32)) {
                        if ((((_p_3345092._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3345204.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3345204[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3345433i32;
                        } else {
                            _gotoNext = 3345576i32;
                        };
                    } else if (__value__ == (3345433i32)) {
                        {
                            {
                                var __tmp__ = _p_3345092._parsePerlFlags(_t_3345204?.__copy__());
                                _t_3345204 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3345529i32;
                            } else {
                                _gotoNext = 3345562i32;
                            };
                        };
                    } else if (__value__ == (3345529i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3345562i32;
                    } else if (__value__ == (3345562i32)) {
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3345576i32)) {
                        _p_3345092._numCap++;
                        _p_3345092._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3345092._numCap;
                        _t_3345204 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3345638i32)) {
                        {
                            _err = _p_3345092._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3345693i32;
                            } else {
                                _gotoNext = 3345723i32;
                            };
                        };
                    } else if (__value__ == (3345693i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3345723i32;
                    } else if (__value__ == (3345723i32)) {
                        _t_3345204 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3345735i32)) {
                        {
                            _err = _p_3345092._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3345789i32;
                            } else {
                                _gotoNext = 3345819i32;
                            };
                        };
                    } else if (__value__ == (3345789i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3345819i32;
                    } else if (__value__ == (3345819i32)) {
                        _t_3345204 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3345831i32)) {
                        if ((_p_3345092._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3345868i32;
                        } else {
                            _gotoNext = 3345902i32;
                        };
                    } else if (__value__ == (3345868i32)) {
                        _p_3345092._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3345934i32;
                    } else if (__value__ == (3345902i32)) {
                        _gotoNext = 3345902i32;
                        _p_3345092._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3345934i32;
                    } else if (__value__ == (3345934i32)) {
                        _t_3345204 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3345946i32)) {
                        if ((_p_3345092._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3345983i32;
                        } else {
                            _gotoNext = 3346034i32;
                        };
                    } else if (__value__ == (3345983i32)) {
                        _p_3345092._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3345092._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3346064i32;
                    } else if (__value__ == (3346034i32)) {
                        _gotoNext = 3346034i32;
                        _p_3345092._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3346064i32;
                    } else if (__value__ == (3346064i32)) {
                        _t_3345204 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3346076i32)) {
                        if ((_p_3345092._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3346111i32;
                        } else {
                            _gotoNext = 3346143i32;
                        };
                    } else if (__value__ == (3346111i32)) {
                        _p_3345092._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3346178i32;
                    } else if (__value__ == (3346143i32)) {
                        _gotoNext = 3346143i32;
                        _p_3345092._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3346178i32;
                    } else if (__value__ == (3346178i32)) {
                        _t_3345204 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3346190i32)) {
                        {
                            {
                                var __tmp__ = _p_3345092._parseClass(_t_3345204?.__copy__());
                                _t_3345204 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3346243i32;
                            } else {
                                _gotoNext = 3348589i32;
                            };
                        };
                    } else if (__value__ == (3346243i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3346272i32)) {
                        _before_3346295 = _t_3345204?.__copy__();
                        _gotoNext = 3346310i32;
                    } else if (__value__ == (3346310i32)) {
                        {
                            final __value__ = _t_3345204[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3346327i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3346356i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3346385i32;
                            } else {
                                _gotoNext = 3346420i32;
                            };
                        };
                    } else if (__value__ == (3346327i32)) {
                        _op_3345130 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3346420i32;
                    } else if (__value__ == (3346356i32)) {
                        _op_3345130 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3346420i32;
                    } else if (__value__ == (3346385i32)) {
                        _op_3345130 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3346420i32;
                    } else if (__value__ == (3346420i32)) {
                        _after_3346420 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3345092._repeat(_op_3345130, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3346295?.__copy__(), _after_3346420?.__copy__(), _lastRepeat_3345146?.__copy__());
                                _after_3346420 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3346512i32;
                            } else {
                                _gotoNext = 3346542i32;
                            };
                        };
                    } else if (__value__ == (3346512i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3346542i32;
                    } else if (__value__ == (3346542i32)) {
                        _repeat_3345228 = _before_3346295?.__copy__();
                        _t_3345204 = _after_3346420?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3346573i32)) {
                        _op_3345130 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3346603 = _t_3345204?.__copy__();
                        {
                            var __tmp__ = _p_3345092._parseRepeat(_t_3345204?.__copy__());
                            _min_3346618 = __tmp__._0;
                            _max_3346623 = __tmp__._1;
                            _after_3346628 = __tmp__._2?.__copy__();
                            _ok_3346635 = __tmp__._3;
                        };
                        if (!_ok_3346635) {
                            _gotoNext = 3346668i32;
                        } else {
                            _gotoNext = 3346776i32;
                        };
                    } else if (__value__ == (3346668i32)) {
                        _p_3345092._literal((123 : stdgo.GoInt32));
                        _t_3345204 = (_t_3345204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3346776i32)) {
                        if (((((_min_3346618 < (0 : stdgo.GoInt) : Bool) || (_min_3346618 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3346623 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3346623 >= (0 : stdgo.GoInt) : Bool) && (_min_3346618 > _max_3346623 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3346840i32;
                        } else {
                            _gotoNext = 3346990i32;
                        };
                    } else if (__value__ == (3346840i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3346603.__slice__(0, ((_before_3346603.length) - (_after_3346628.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3346990i32;
                    } else if (__value__ == (3346990i32)) {
                        {
                            {
                                var __tmp__ = _p_3345092._repeat(_op_3345130, _min_3346618, _max_3346623, _before_3346603?.__copy__(), _after_3346628?.__copy__(), _lastRepeat_3345146?.__copy__());
                                _after_3346628 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3347068i32;
                            } else {
                                _gotoNext = 3347098i32;
                            };
                        };
                    } else if (__value__ == (3347068i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3347098i32;
                    } else if (__value__ == (3347098i32)) {
                        _repeat_3345228 = _before_3346603?.__copy__();
                        _t_3345204 = _after_3346628?.__copy__();
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3347129i32)) {
                        if ((((_p_3345092._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3345204.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3347180i32;
                        } else {
                            _gotoNext = 3347904i32;
                        };
                    } else if (__value__ == (3347180i32)) {
                        _gotoNext = 3347186i32;
                    } else if (__value__ == (3347186i32)) {
                        {
                            final __value__ = _t_3345204[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3347204i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3347277i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3347353i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3347431i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3347526i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3347822i32;
                            } else {
                                _gotoNext = 3347904i32;
                            };
                        };
                    } else if (__value__ == (3347204i32)) {
                        _p_3345092._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3345204 = (_t_3345204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3347277i32)) {
                        _p_3345092._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3345204 = (_t_3345204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3347353i32)) {
                        _p_3345092._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3345204 = (_t_3345204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3347431i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3345204.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3347904i32;
                    } else if (__value__ == (3347526i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3345204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3347591 = __tmp__._0?.__copy__();
                            _t_3345204 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3347649i32;
                    } else if (__value__ == (3347649i32)) {
                        if (_lit_3347591 != (stdgo.Go.str())) {
                            _gotoNext = 3347663i32;
                        } else {
                            _gotoNext = 3347802i32;
                        };
                    } else if (__value__ == (3347663i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3347591?.__copy__());
                            _c_3347671 = __tmp__._0;
                            _rest_3347674 = __tmp__._1?.__copy__();
                            _err_3347680 = __tmp__._2;
                        };
                        if (_err_3347680 != null) {
                            _gotoNext = 3347721i32;
                        } else {
                            _gotoNext = 3347760i32;
                        };
                    } else if (__value__ == (3347721i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3347680 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3347760i32;
                    } else if (__value__ == (3347760i32)) {
                        _p_3345092._literal(_c_3347671);
                        _lit_3347591 = _rest_3347674?.__copy__();
                        _gotoNext = 3347649i32;
                    } else if (__value__ == (3347802i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3347822i32)) {
                        _p_3345092._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3345204 = (_t_3345204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3347904i32)) {
                        _re_3347904 = _p_3345092._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3347904.flags = _p_3345092._flags;
                        if ((((_t_3345204.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3345204[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3345204[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3348060i32;
                        } else {
                            _gotoNext = 3348302i32;
                        };
                    } else if (__value__ == (3348060i32)) {
                        {
                            var __tmp__ = _p_3345092._parseUnicodeClass(_t_3345204?.__copy__(), (_re_3347904.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3348066 = __tmp__._0;
                            _rest_3348069 = __tmp__._1?.__copy__();
                            _err_3348075 = __tmp__._2;
                        };
                        if (_err_3348075 != null) {
                            _gotoNext = 3348137i32;
                        } else {
                            _gotoNext = 3348170i32;
                        };
                    } else if (__value__ == (3348137i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3348075 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3348170i32;
                    } else if (__value__ == (3348170i32)) {
                        if (_r_3348066 != null) {
                            _gotoNext = 3348182i32;
                        } else {
                            _gotoNext = 3348302i32;
                        };
                    } else if (__value__ == (3348182i32)) {
                        _re_3347904.rune = _r_3348066;
                        _t_3345204 = _rest_3348069?.__copy__();
                        _p_3345092._push(_re_3347904);
                        bigSwitchBreak = true;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3348302i32)) {
                        {
                            {
                                var __tmp__ = _p_3345092._parsePerlClassEscape(_t_3345204?.__copy__(), (_re_3347904.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3348305 = __tmp__._0;
                                _rest_3348308 = __tmp__._1?.__copy__();
                            };
                            if (_r_3348305 != null) {
                                _gotoNext = 3348366i32;
                            } else {
                                _gotoNext = 3348440i32;
                            };
                        };
                    } else if (__value__ == (3348366i32)) {
                        _re_3347904.rune = _r_3348305;
                        _t_3345204 = _rest_3348308?.__copy__();
                        _p_3345092._push(_re_3347904);
                        bigSwitchBreak = true;
                        _gotoNext = 3345255i32;
                    } else if (__value__ == (3348440i32)) {
                        _p_3345092._reuse(_re_3347904);
                        {
                            {
                                var __tmp__ = _p_3345092._parseEscape(_t_3345204?.__copy__());
                                _c_3345112 = __tmp__._0;
                                _t_3345204 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3348540i32;
                            } else {
                                _gotoNext = 3348570i32;
                            };
                        };
                    } else if (__value__ == (3348540i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3348570i32;
                    } else if (__value__ == (3348570i32)) {
                        _p_3345092._literal(_c_3345112);
                        _gotoNext = 3348589i32;
                    } else if (__value__ == (3348589i32)) {
                        _lastRepeat_3345146 = _repeat_3345228?.__copy__();
                        _gotoNext = 3345212i32;
                    } else if (__value__ == (3348614i32)) {
                        _p_3345092._concat();
                        if (_p_3345092._swapVerticalBar()) {
                            _gotoNext = 3348649i32;
                        } else {
                            _gotoNext = 3348714i32;
                        };
                    } else if (__value__ == (3348649i32)) {
                        _p_3345092._stack = (_p_3345092._stack.__slice__(0, ((_p_3345092._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3348714i32;
                    } else if (__value__ == (3348714i32)) {
                        _p_3345092._alternate();
                        _n_3348730 = (_p_3345092._stack.length);
                        if (_n_3348730 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3348759i32;
                        } else {
                            _gotoNext = 3348806i32;
                        };
                    } else if (__value__ == (3348759i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3348806i32;
                    } else if (__value__ == (3348806i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3345092._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
