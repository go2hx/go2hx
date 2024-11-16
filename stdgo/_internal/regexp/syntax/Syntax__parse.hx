package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var bigSwitchBreak = false;
            var _c_3414602:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3413226:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3411881:stdgo.Error = (null : stdgo.Error);
            var _n_3415661:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3415000:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3414605:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3412159:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3413559:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3412135:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3412077:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3413534:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3413351:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3412061:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3412043:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3414997:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _max_3413554:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3413549:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3412023:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3415239:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3415236:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3414611:stdgo.Error = (null : stdgo.Error);
            var _ok_3413566:Bool = false;
            var _err_3415006:stdgo.Error = (null : stdgo.Error);
            var _re_3414835:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3414522:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3411834i32;
                        } else {
                            _gotoNext = 3412015i32;
                        };
                    } else if (__value__ == (3411834i32)) {
                        {
                            _err_3411881 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3411881 != null) {
                                _gotoNext = 3411913i32;
                            } else {
                                _gotoNext = 3411940i32;
                            };
                        };
                    } else if (__value__ == (3411913i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3411881 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3411940i32;
                    } else if (__value__ == (3411940i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3412015i32;
                    } else if (__value__ == (3412015i32)) {
                        _p_3412023._flags = _flags;
                        _p_3412023._wholeRegexp = _s?.__copy__();
                        _t_3412135 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3412143i32;
                    } else if (__value__ == (3412143i32)) {
                        if (_t_3412135 != (stdgo.Go.str())) {
                            _gotoNext = 3412155i32;
                        } else {
                            _gotoNext = 3415545i32;
                        };
                    } else if (__value__ == (3412155i32)) {
                        _repeat_3412159 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3412173i32;
                    } else if (__value__ == (3412173i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3412186i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3412135[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3412299i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3412569i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3412666i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3412762i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3412877i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3413007i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3413121i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3413203i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3413504i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414060i32;
                                } else {
                                    _gotoNext = 3412202i32;
                                };
                            };
                        } else {
                            _gotoNext = 3415520i32;
                        };
                    } else if (__value__ == (3412202i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3412135?.__copy__());
                                _c_3412043 = __tmp__._0;
                                _t_3412135 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3412253i32;
                            } else {
                                _gotoNext = 3412283i32;
                            };
                        };
                    } else if (__value__ == (3412253i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3412283i32;
                    } else if (__value__ == (3412283i32)) {
                        _p_3412023._literal(_c_3412043);
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3412299i32)) {
                        if ((((_p_3412023._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3412135.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3412135[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3412364i32;
                        } else {
                            _gotoNext = 3412507i32;
                        };
                    } else if (__value__ == (3412364i32)) {
                        {
                            {
                                var __tmp__ = _p_3412023._parsePerlFlags(_t_3412135?.__copy__());
                                _t_3412135 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3412460i32;
                            } else {
                                _gotoNext = 3412493i32;
                            };
                        };
                    } else if (__value__ == (3412460i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3412493i32;
                    } else if (__value__ == (3412493i32)) {
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3412507i32)) {
                        _p_3412023._numCap++;
                        _p_3412023._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3412023._numCap;
                        _t_3412135 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3412569i32)) {
                        {
                            _err = _p_3412023._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3412624i32;
                            } else {
                                _gotoNext = 3412654i32;
                            };
                        };
                    } else if (__value__ == (3412624i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3412654i32;
                    } else if (__value__ == (3412654i32)) {
                        _t_3412135 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3412666i32)) {
                        {
                            _err = _p_3412023._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3412720i32;
                            } else {
                                _gotoNext = 3412750i32;
                            };
                        };
                    } else if (__value__ == (3412720i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3412750i32;
                    } else if (__value__ == (3412750i32)) {
                        _t_3412135 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3412762i32)) {
                        if ((_p_3412023._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3412799i32;
                        } else {
                            _gotoNext = 3412833i32;
                        };
                    } else if (__value__ == (3412799i32)) {
                        _p_3412023._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3412865i32;
                    } else if (__value__ == (3412833i32)) {
                        _gotoNext = 3412833i32;
                        _p_3412023._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3412865i32;
                    } else if (__value__ == (3412865i32)) {
                        _t_3412135 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3412877i32)) {
                        if ((_p_3412023._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3412914i32;
                        } else {
                            _gotoNext = 3412965i32;
                        };
                    } else if (__value__ == (3412914i32)) {
                        _p_3412023._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3412023._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3412995i32;
                    } else if (__value__ == (3412965i32)) {
                        _gotoNext = 3412965i32;
                        _p_3412023._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3412995i32;
                    } else if (__value__ == (3412995i32)) {
                        _t_3412135 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3413007i32)) {
                        if ((_p_3412023._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3413042i32;
                        } else {
                            _gotoNext = 3413074i32;
                        };
                    } else if (__value__ == (3413042i32)) {
                        _p_3412023._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3413109i32;
                    } else if (__value__ == (3413074i32)) {
                        _gotoNext = 3413074i32;
                        _p_3412023._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3413109i32;
                    } else if (__value__ == (3413109i32)) {
                        _t_3412135 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3413121i32)) {
                        {
                            {
                                var __tmp__ = _p_3412023._parseClass(_t_3412135?.__copy__());
                                _t_3412135 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3413174i32;
                            } else {
                                _gotoNext = 3415520i32;
                            };
                        };
                    } else if (__value__ == (3413174i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3413203i32)) {
                        _before_3413226 = _t_3412135?.__copy__();
                        _gotoNext = 3413241i32;
                    } else if (__value__ == (3413241i32)) {
                        {
                            final __value__ = _t_3412135[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3413258i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3413287i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3413316i32;
                            } else {
                                _gotoNext = 3413351i32;
                            };
                        };
                    } else if (__value__ == (3413258i32)) {
                        _op_3412061 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3413351i32;
                    } else if (__value__ == (3413287i32)) {
                        _op_3412061 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3413351i32;
                    } else if (__value__ == (3413316i32)) {
                        _op_3412061 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3413351i32;
                    } else if (__value__ == (3413351i32)) {
                        _after_3413351 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3412023._repeat(_op_3412061, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3413226?.__copy__(), _after_3413351?.__copy__(), _lastRepeat_3412077?.__copy__());
                                _after_3413351 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3413443i32;
                            } else {
                                _gotoNext = 3413473i32;
                            };
                        };
                    } else if (__value__ == (3413443i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3413473i32;
                    } else if (__value__ == (3413473i32)) {
                        _repeat_3412159 = _before_3413226?.__copy__();
                        _t_3412135 = _after_3413351?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3413504i32)) {
                        _op_3412061 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3413534 = _t_3412135?.__copy__();
                        {
                            var __tmp__ = _p_3412023._parseRepeat(_t_3412135?.__copy__());
                            _min_3413549 = __tmp__._0;
                            _max_3413554 = __tmp__._1;
                            _after_3413559 = __tmp__._2?.__copy__();
                            _ok_3413566 = __tmp__._3;
                        };
                        if (!_ok_3413566) {
                            _gotoNext = 3413599i32;
                        } else {
                            _gotoNext = 3413707i32;
                        };
                    } else if (__value__ == (3413599i32)) {
                        _p_3412023._literal((123 : stdgo.GoInt32));
                        _t_3412135 = (_t_3412135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3413707i32)) {
                        if (((((_min_3413549 < (0 : stdgo.GoInt) : Bool) || (_min_3413549 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3413554 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3413554 >= (0 : stdgo.GoInt) : Bool) && (_min_3413549 > _max_3413554 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3413771i32;
                        } else {
                            _gotoNext = 3413921i32;
                        };
                    } else if (__value__ == (3413771i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3413534.__slice__(0, ((_before_3413534.length) - (_after_3413559.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3413921i32;
                    } else if (__value__ == (3413921i32)) {
                        {
                            {
                                var __tmp__ = _p_3412023._repeat(_op_3412061, _min_3413549, _max_3413554, _before_3413534?.__copy__(), _after_3413559?.__copy__(), _lastRepeat_3412077?.__copy__());
                                _after_3413559 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3413999i32;
                            } else {
                                _gotoNext = 3414029i32;
                            };
                        };
                    } else if (__value__ == (3413999i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3414029i32;
                    } else if (__value__ == (3414029i32)) {
                        _repeat_3412159 = _before_3413534?.__copy__();
                        _t_3412135 = _after_3413559?.__copy__();
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3414060i32)) {
                        if ((((_p_3412023._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3412135.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3414111i32;
                        } else {
                            _gotoNext = 3414835i32;
                        };
                    } else if (__value__ == (3414111i32)) {
                        _gotoNext = 3414117i32;
                    } else if (__value__ == (3414117i32)) {
                        {
                            final __value__ = _t_3412135[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3414135i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3414208i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3414284i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3414362i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3414457i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3414753i32;
                            } else {
                                _gotoNext = 3414835i32;
                            };
                        };
                    } else if (__value__ == (3414135i32)) {
                        _p_3412023._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3412135 = (_t_3412135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3414208i32)) {
                        _p_3412023._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3412135 = (_t_3412135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3414284i32)) {
                        _p_3412023._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3412135 = (_t_3412135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3414362i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3412135.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3414835i32;
                    } else if (__value__ == (3414457i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3412135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3414522 = __tmp__._0?.__copy__();
                            _t_3412135 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3414580i32;
                    } else if (__value__ == (3414580i32)) {
                        if (_lit_3414522 != (stdgo.Go.str())) {
                            _gotoNext = 3414594i32;
                        } else {
                            _gotoNext = 3414733i32;
                        };
                    } else if (__value__ == (3414594i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3414522?.__copy__());
                            _c_3414602 = __tmp__._0;
                            _rest_3414605 = __tmp__._1?.__copy__();
                            _err_3414611 = __tmp__._2;
                        };
                        if (_err_3414611 != null) {
                            _gotoNext = 3414652i32;
                        } else {
                            _gotoNext = 3414691i32;
                        };
                    } else if (__value__ == (3414652i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3414611 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3414691i32;
                    } else if (__value__ == (3414691i32)) {
                        _p_3412023._literal(_c_3414602);
                        _lit_3414522 = _rest_3414605?.__copy__();
                        _gotoNext = 3414580i32;
                    } else if (__value__ == (3414733i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3414753i32)) {
                        _p_3412023._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3412135 = (_t_3412135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3414835i32)) {
                        _re_3414835 = _p_3412023._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3414835.flags = _p_3412023._flags;
                        if ((((_t_3412135.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3412135[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3412135[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3414991i32;
                        } else {
                            _gotoNext = 3415233i32;
                        };
                    } else if (__value__ == (3414991i32)) {
                        {
                            var __tmp__ = _p_3412023._parseUnicodeClass(_t_3412135?.__copy__(), (_re_3414835.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3414997 = __tmp__._0;
                            _rest_3415000 = __tmp__._1?.__copy__();
                            _err_3415006 = __tmp__._2;
                        };
                        if (_err_3415006 != null) {
                            _gotoNext = 3415068i32;
                        } else {
                            _gotoNext = 3415101i32;
                        };
                    } else if (__value__ == (3415068i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3415006 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3415101i32;
                    } else if (__value__ == (3415101i32)) {
                        if (_r_3414997 != null) {
                            _gotoNext = 3415113i32;
                        } else {
                            _gotoNext = 3415233i32;
                        };
                    } else if (__value__ == (3415113i32)) {
                        _re_3414835.rune = _r_3414997;
                        _t_3412135 = _rest_3415000?.__copy__();
                        _p_3412023._push(_re_3414835);
                        bigSwitchBreak = true;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3415233i32)) {
                        {
                            {
                                var __tmp__ = _p_3412023._parsePerlClassEscape(_t_3412135?.__copy__(), (_re_3414835.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3415236 = __tmp__._0;
                                _rest_3415239 = __tmp__._1?.__copy__();
                            };
                            if (_r_3415236 != null) {
                                _gotoNext = 3415297i32;
                            } else {
                                _gotoNext = 3415371i32;
                            };
                        };
                    } else if (__value__ == (3415297i32)) {
                        _re_3414835.rune = _r_3415236;
                        _t_3412135 = _rest_3415239?.__copy__();
                        _p_3412023._push(_re_3414835);
                        bigSwitchBreak = true;
                        _gotoNext = 3412186i32;
                    } else if (__value__ == (3415371i32)) {
                        _p_3412023._reuse(_re_3414835);
                        {
                            {
                                var __tmp__ = _p_3412023._parseEscape(_t_3412135?.__copy__());
                                _c_3412043 = __tmp__._0;
                                _t_3412135 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3415471i32;
                            } else {
                                _gotoNext = 3415501i32;
                            };
                        };
                    } else if (__value__ == (3415471i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3415501i32;
                    } else if (__value__ == (3415501i32)) {
                        _p_3412023._literal(_c_3412043);
                        _gotoNext = 3415520i32;
                    } else if (__value__ == (3415520i32)) {
                        _lastRepeat_3412077 = _repeat_3412159?.__copy__();
                        _gotoNext = 3412143i32;
                    } else if (__value__ == (3415545i32)) {
                        _p_3412023._concat();
                        if (_p_3412023._swapVerticalBar()) {
                            _gotoNext = 3415580i32;
                        } else {
                            _gotoNext = 3415645i32;
                        };
                    } else if (__value__ == (3415580i32)) {
                        _p_3412023._stack = (_p_3412023._stack.__slice__(0, ((_p_3412023._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3415645i32;
                    } else if (__value__ == (3415645i32)) {
                        _p_3412023._alternate();
                        _n_3415661 = (_p_3412023._stack.length);
                        if (_n_3415661 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3415690i32;
                        } else {
                            _gotoNext = 3415737i32;
                        };
                    } else if (__value__ == (3415690i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3415737i32;
                    } else if (__value__ == (3415737i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3412023._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
