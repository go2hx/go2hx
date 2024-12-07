package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _before_3545260:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3545583:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3545568:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3544193:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3544095:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3547040:stdgo.Error = (null : stdgo.Error);
            var _rest_3547034:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3545588:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _after_3545593:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3544057:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3547031:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3546869:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3546645:stdgo.Error = (null : stdgo.Error);
            var _lastRepeat_3544111:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3545600:Bool = false;
            var _err_3543915:stdgo.Error = (null : stdgo.Error);
            var _rest_3547273:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3544169:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3546636:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3546556:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3545385:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3544077:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_3547695:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3547270:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3546639:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3543868i32;
                        } else {
                            _gotoNext = 3544049i32;
                        };
                    } else if (__value__ == (3543868i32)) {
                        {
                            _err_3543915 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3543915 != null) {
                                _gotoNext = 3543947i32;
                            } else {
                                _gotoNext = 3543974i32;
                            };
                        };
                    } else if (__value__ == (3543947i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3543915 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3543974i32;
                    } else if (__value__ == (3543974i32)) {
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
                        _gotoNext = 3544049i32;
                    } else if (__value__ == (3544049i32)) {
                        _p_3544057._flags = _flags;
                        _p_3544057._wholeRegexp = _s?.__copy__();
                        _t_3544169 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3544177i32;
                    } else if (__value__ == (3544177i32)) {
                        if (_t_3544169 != (stdgo.Go.str())) {
                            _gotoNext = 3544189i32;
                        } else {
                            _gotoNext = 3547579i32;
                        };
                    } else if (__value__ == (3544189i32)) {
                        _repeat_3544193 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3544207i32;
                    } else if (__value__ == (3544207i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3544220i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3544169[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3544333i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3544603i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3544700i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3544796i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3544911i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545041i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545155i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545237i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545538i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546094i32;
                                } else {
                                    _gotoNext = 3544236i32;
                                };
                            };
                        } else {
                            _gotoNext = 3547554i32;
                        };
                    } else if (__value__ == (3544236i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3544169?.__copy__());
                                _c_3544077 = __tmp__._0;
                                _t_3544169 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3544287i32;
                            } else {
                                _gotoNext = 3544317i32;
                            };
                        };
                    } else if (__value__ == (3544287i32)) {
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
                        _gotoNext = 3544317i32;
                    } else if (__value__ == (3544317i32)) {
                        _p_3544057._literal(_c_3544077);
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3544333i32)) {
                        if ((((_p_3544057._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3544169.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3544169[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3544398i32;
                        } else {
                            _gotoNext = 3544541i32;
                        };
                    } else if (__value__ == (3544398i32)) {
                        {
                            {
                                var __tmp__ = _p_3544057._parsePerlFlags(_t_3544169?.__copy__());
                                _t_3544169 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3544494i32;
                            } else {
                                _gotoNext = 3544527i32;
                            };
                        };
                    } else if (__value__ == (3544494i32)) {
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
                        _gotoNext = 3544527i32;
                    } else if (__value__ == (3544527i32)) {
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3544541i32)) {
                        _p_3544057._numCap++;
                        _p_3544057._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3544057._numCap;
                        _t_3544169 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3544603i32)) {
                        {
                            _err = _p_3544057._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3544658i32;
                            } else {
                                _gotoNext = 3544688i32;
                            };
                        };
                    } else if (__value__ == (3544658i32)) {
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
                        _gotoNext = 3544688i32;
                    } else if (__value__ == (3544688i32)) {
                        _t_3544169 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3544700i32)) {
                        {
                            _err = _p_3544057._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3544754i32;
                            } else {
                                _gotoNext = 3544784i32;
                            };
                        };
                    } else if (__value__ == (3544754i32)) {
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
                        _gotoNext = 3544784i32;
                    } else if (__value__ == (3544784i32)) {
                        _t_3544169 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3544796i32)) {
                        if ((_p_3544057._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3544833i32;
                        } else {
                            _gotoNext = 3544867i32;
                        };
                    } else if (__value__ == (3544833i32)) {
                        _p_3544057._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3544899i32;
                    } else if (__value__ == (3544867i32)) {
                        _gotoNext = 3544867i32;
                        _p_3544057._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3544899i32;
                    } else if (__value__ == (3544899i32)) {
                        _t_3544169 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3544911i32)) {
                        if ((_p_3544057._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3544948i32;
                        } else {
                            _gotoNext = 3544999i32;
                        };
                    } else if (__value__ == (3544948i32)) {
                        _p_3544057._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3544057._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3545029i32;
                    } else if (__value__ == (3544999i32)) {
                        _gotoNext = 3544999i32;
                        _p_3544057._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3545029i32;
                    } else if (__value__ == (3545029i32)) {
                        _t_3544169 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3545041i32)) {
                        if ((_p_3544057._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3545076i32;
                        } else {
                            _gotoNext = 3545108i32;
                        };
                    } else if (__value__ == (3545076i32)) {
                        _p_3544057._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3545143i32;
                    } else if (__value__ == (3545108i32)) {
                        _gotoNext = 3545108i32;
                        _p_3544057._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3545143i32;
                    } else if (__value__ == (3545143i32)) {
                        _t_3544169 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3545155i32)) {
                        {
                            {
                                var __tmp__ = _p_3544057._parseClass(_t_3544169?.__copy__());
                                _t_3544169 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3545208i32;
                            } else {
                                _gotoNext = 3547554i32;
                            };
                        };
                    } else if (__value__ == (3545208i32)) {
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
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3545237i32)) {
                        _before_3545260 = _t_3544169?.__copy__();
                        _gotoNext = 3545275i32;
                    } else if (__value__ == (3545275i32)) {
                        {
                            final __value__ = _t_3544169[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3545292i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3545321i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3545350i32;
                            } else {
                                _gotoNext = 3545385i32;
                            };
                        };
                    } else if (__value__ == (3545292i32)) {
                        _op_3544095 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3545385i32;
                    } else if (__value__ == (3545321i32)) {
                        _op_3544095 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3545385i32;
                    } else if (__value__ == (3545350i32)) {
                        _op_3544095 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3545385i32;
                    } else if (__value__ == (3545385i32)) {
                        _after_3545385 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3544057._repeat(_op_3544095, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3545260?.__copy__(), _after_3545385?.__copy__(), _lastRepeat_3544111?.__copy__());
                                _after_3545385 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3545477i32;
                            } else {
                                _gotoNext = 3545507i32;
                            };
                        };
                    } else if (__value__ == (3545477i32)) {
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
                        _gotoNext = 3545507i32;
                    } else if (__value__ == (3545507i32)) {
                        _repeat_3544193 = _before_3545260?.__copy__();
                        _t_3544169 = _after_3545385?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3545538i32)) {
                        _op_3544095 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3545568 = _t_3544169?.__copy__();
                        {
                            var __tmp__ = _p_3544057._parseRepeat(_t_3544169?.__copy__());
                            _min_3545583 = __tmp__._0;
                            _max_3545588 = __tmp__._1;
                            _after_3545593 = __tmp__._2?.__copy__();
                            _ok_3545600 = __tmp__._3;
                        };
                        if (!_ok_3545600) {
                            _gotoNext = 3545633i32;
                        } else {
                            _gotoNext = 3545741i32;
                        };
                    } else if (__value__ == (3545633i32)) {
                        _p_3544057._literal((123 : stdgo.GoInt32));
                        _t_3544169 = (_t_3544169.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3545741i32)) {
                        if (((((_min_3545583 < (0 : stdgo.GoInt) : Bool) || (_min_3545583 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3545588 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3545588 >= (0 : stdgo.GoInt) : Bool) && (_min_3545583 > _max_3545588 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3545805i32;
                        } else {
                            _gotoNext = 3545955i32;
                        };
                    } else if (__value__ == (3545805i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3545568.__slice__(0, ((_before_3545568.length) - (_after_3545593.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3545955i32;
                    } else if (__value__ == (3545955i32)) {
                        {
                            {
                                var __tmp__ = _p_3544057._repeat(_op_3544095, _min_3545583, _max_3545588, _before_3545568?.__copy__(), _after_3545593?.__copy__(), _lastRepeat_3544111?.__copy__());
                                _after_3545593 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3546033i32;
                            } else {
                                _gotoNext = 3546063i32;
                            };
                        };
                    } else if (__value__ == (3546033i32)) {
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
                        _gotoNext = 3546063i32;
                    } else if (__value__ == (3546063i32)) {
                        _repeat_3544193 = _before_3545568?.__copy__();
                        _t_3544169 = _after_3545593?.__copy__();
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3546094i32)) {
                        if ((((_p_3544057._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3544169.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3546145i32;
                        } else {
                            _gotoNext = 3546869i32;
                        };
                    } else if (__value__ == (3546145i32)) {
                        _gotoNext = 3546151i32;
                    } else if (__value__ == (3546151i32)) {
                        {
                            final __value__ = _t_3544169[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3546169i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3546242i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3546318i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3546396i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3546491i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3546787i32;
                            } else {
                                _gotoNext = 3546869i32;
                            };
                        };
                    } else if (__value__ == (3546169i32)) {
                        _p_3544057._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544169 = (_t_3544169.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3546242i32)) {
                        _p_3544057._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544169 = (_t_3544169.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3546318i32)) {
                        _p_3544057._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544169 = (_t_3544169.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3546396i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3544169.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546869i32;
                    } else if (__value__ == (3546491i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3544169.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3546556 = __tmp__._0?.__copy__();
                            _t_3544169 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3546614i32;
                    } else if (__value__ == (3546614i32)) {
                        if (_lit_3546556 != (stdgo.Go.str())) {
                            _gotoNext = 3546628i32;
                        } else {
                            _gotoNext = 3546767i32;
                        };
                    } else if (__value__ == (3546628i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3546556?.__copy__());
                            _c_3546636 = __tmp__._0;
                            _rest_3546639 = __tmp__._1?.__copy__();
                            _err_3546645 = __tmp__._2;
                        };
                        if (_err_3546645 != null) {
                            _gotoNext = 3546686i32;
                        } else {
                            _gotoNext = 3546725i32;
                        };
                    } else if (__value__ == (3546686i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3546645 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546725i32;
                    } else if (__value__ == (3546725i32)) {
                        _p_3544057._literal(_c_3546636);
                        _lit_3546556 = _rest_3546639?.__copy__();
                        _gotoNext = 3546614i32;
                    } else if (__value__ == (3546767i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3546787i32)) {
                        _p_3544057._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544169 = (_t_3544169.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3546869i32)) {
                        _re_3546869 = _p_3544057._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3546869.flags = _p_3544057._flags;
                        if ((((_t_3544169.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3544169[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3544169[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3547025i32;
                        } else {
                            _gotoNext = 3547267i32;
                        };
                    } else if (__value__ == (3547025i32)) {
                        {
                            var __tmp__ = _p_3544057._parseUnicodeClass(_t_3544169?.__copy__(), (_re_3546869.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3547031 = __tmp__._0;
                            _rest_3547034 = __tmp__._1?.__copy__();
                            _err_3547040 = __tmp__._2;
                        };
                        if (_err_3547040 != null) {
                            _gotoNext = 3547102i32;
                        } else {
                            _gotoNext = 3547135i32;
                        };
                    } else if (__value__ == (3547102i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3547040 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3547135i32;
                    } else if (__value__ == (3547135i32)) {
                        if (_r_3547031 != null) {
                            _gotoNext = 3547147i32;
                        } else {
                            _gotoNext = 3547267i32;
                        };
                    } else if (__value__ == (3547147i32)) {
                        _re_3546869.rune = _r_3547031;
                        _t_3544169 = _rest_3547034?.__copy__();
                        _p_3544057._push(_re_3546869);
                        bigSwitchBreak = true;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3547267i32)) {
                        {
                            {
                                var __tmp__ = _p_3544057._parsePerlClassEscape(_t_3544169?.__copy__(), (_re_3546869.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3547270 = __tmp__._0;
                                _rest_3547273 = __tmp__._1?.__copy__();
                            };
                            if (_r_3547270 != null) {
                                _gotoNext = 3547331i32;
                            } else {
                                _gotoNext = 3547405i32;
                            };
                        };
                    } else if (__value__ == (3547331i32)) {
                        _re_3546869.rune = _r_3547270;
                        _t_3544169 = _rest_3547273?.__copy__();
                        _p_3544057._push(_re_3546869);
                        bigSwitchBreak = true;
                        _gotoNext = 3544220i32;
                    } else if (__value__ == (3547405i32)) {
                        _p_3544057._reuse(_re_3546869);
                        {
                            {
                                var __tmp__ = _p_3544057._parseEscape(_t_3544169?.__copy__());
                                _c_3544077 = __tmp__._0;
                                _t_3544169 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3547505i32;
                            } else {
                                _gotoNext = 3547535i32;
                            };
                        };
                    } else if (__value__ == (3547505i32)) {
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
                        _gotoNext = 3547535i32;
                    } else if (__value__ == (3547535i32)) {
                        _p_3544057._literal(_c_3544077);
                        _gotoNext = 3547554i32;
                    } else if (__value__ == (3547554i32)) {
                        _lastRepeat_3544111 = _repeat_3544193?.__copy__();
                        _gotoNext = 3544177i32;
                    } else if (__value__ == (3547579i32)) {
                        _p_3544057._concat();
                        if (_p_3544057._swapVerticalBar()) {
                            _gotoNext = 3547614i32;
                        } else {
                            _gotoNext = 3547679i32;
                        };
                    } else if (__value__ == (3547614i32)) {
                        _p_3544057._stack = (_p_3544057._stack.__slice__(0, ((_p_3544057._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3547679i32;
                    } else if (__value__ == (3547679i32)) {
                        _p_3544057._alternate();
                        _n_3547695 = (_p_3544057._stack.length);
                        if (_n_3547695 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3547724i32;
                        } else {
                            _gotoNext = 3547771i32;
                        };
                    } else if (__value__ == (3547724i32)) {
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
                        _gotoNext = 3547771i32;
                    } else if (__value__ == (3547771i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3544057._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
