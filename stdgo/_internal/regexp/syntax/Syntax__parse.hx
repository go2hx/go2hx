package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3417035:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _err_3416380:stdgo.Error = (null : stdgo.Error);
            var _max_3414928:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3416613:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3415985:stdgo.Error = (null : stdgo.Error);
            var _ok_3414940:Bool = false;
            var _after_3414725:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3413435:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _re_3416209:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3415896:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3414600:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3416371:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _min_3414923:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3413417:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3416610:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3414933:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3413533:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3413255:stdgo.Error = (null : stdgo.Error);
            var _lastRepeat_3413451:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3413397:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3416374:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3415979:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3415976:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3414908:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3413509:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3413208i32;
                        } else {
                            _gotoNext = 3413389i32;
                        };
                    } else if (__value__ == (3413208i32)) {
                        {
                            _err_3413255 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3413255 != null) {
                                _gotoNext = 3413287i32;
                            } else {
                                _gotoNext = 3413314i32;
                            };
                        };
                    } else if (__value__ == (3413287i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3413255 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3413314i32;
                    } else if (__value__ == (3413314i32)) {
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
                        _gotoNext = 3413389i32;
                    } else if (__value__ == (3413389i32)) {
                        _p_3413397._flags = _flags;
                        _p_3413397._wholeRegexp = _s?.__copy__();
                        _t_3413509 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3413517i32;
                    } else if (__value__ == (3413517i32)) {
                        if (_t_3413509 != (stdgo.Go.str())) {
                            _gotoNext = 3413529i32;
                        } else {
                            _gotoNext = 3416919i32;
                        };
                    } else if (__value__ == (3413529i32)) {
                        _repeat_3413533 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3413547i32;
                    } else if (__value__ == (3413547i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3413560i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3413509[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3413673i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3413943i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414040i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414136i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414251i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414381i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414495i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414577i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3414878i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3415434i32;
                                } else {
                                    _gotoNext = 3413576i32;
                                };
                            };
                        } else {
                            _gotoNext = 3416894i32;
                        };
                    } else if (__value__ == (3413576i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3413509?.__copy__());
                                _c_3413417 = __tmp__._0;
                                _t_3413509 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3413627i32;
                            } else {
                                _gotoNext = 3413657i32;
                            };
                        };
                    } else if (__value__ == (3413627i32)) {
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
                        _gotoNext = 3413657i32;
                    } else if (__value__ == (3413657i32)) {
                        _p_3413397._literal(_c_3413417);
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3413673i32)) {
                        if ((((_p_3413397._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3413509.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3413509[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3413738i32;
                        } else {
                            _gotoNext = 3413881i32;
                        };
                    } else if (__value__ == (3413738i32)) {
                        {
                            {
                                var __tmp__ = _p_3413397._parsePerlFlags(_t_3413509?.__copy__());
                                _t_3413509 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3413834i32;
                            } else {
                                _gotoNext = 3413867i32;
                            };
                        };
                    } else if (__value__ == (3413834i32)) {
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
                        _gotoNext = 3413867i32;
                    } else if (__value__ == (3413867i32)) {
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3413881i32)) {
                        _p_3413397._numCap++;
                        _p_3413397._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3413397._numCap;
                        _t_3413509 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3413943i32)) {
                        {
                            _err = _p_3413397._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3413998i32;
                            } else {
                                _gotoNext = 3414028i32;
                            };
                        };
                    } else if (__value__ == (3413998i32)) {
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
                        _gotoNext = 3414028i32;
                    } else if (__value__ == (3414028i32)) {
                        _t_3413509 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3414040i32)) {
                        {
                            _err = _p_3413397._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3414094i32;
                            } else {
                                _gotoNext = 3414124i32;
                            };
                        };
                    } else if (__value__ == (3414094i32)) {
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
                        _gotoNext = 3414124i32;
                    } else if (__value__ == (3414124i32)) {
                        _t_3413509 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3414136i32)) {
                        if ((_p_3413397._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3414173i32;
                        } else {
                            _gotoNext = 3414207i32;
                        };
                    } else if (__value__ == (3414173i32)) {
                        _p_3413397._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3414239i32;
                    } else if (__value__ == (3414207i32)) {
                        _gotoNext = 3414207i32;
                        _p_3413397._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3414239i32;
                    } else if (__value__ == (3414239i32)) {
                        _t_3413509 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3414251i32)) {
                        if ((_p_3413397._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3414288i32;
                        } else {
                            _gotoNext = 3414339i32;
                        };
                    } else if (__value__ == (3414288i32)) {
                        {
                            final __t__ = _p_3413397._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3414369i32;
                    } else if (__value__ == (3414339i32)) {
                        _gotoNext = 3414339i32;
                        _p_3413397._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3414369i32;
                    } else if (__value__ == (3414369i32)) {
                        _t_3413509 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3414381i32)) {
                        if ((_p_3413397._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3414416i32;
                        } else {
                            _gotoNext = 3414448i32;
                        };
                    } else if (__value__ == (3414416i32)) {
                        _p_3413397._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3414483i32;
                    } else if (__value__ == (3414448i32)) {
                        _gotoNext = 3414448i32;
                        _p_3413397._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3414483i32;
                    } else if (__value__ == (3414483i32)) {
                        _t_3413509 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3414495i32)) {
                        {
                            {
                                var __tmp__ = _p_3413397._parseClass(_t_3413509?.__copy__());
                                _t_3413509 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3414548i32;
                            } else {
                                _gotoNext = 3416894i32;
                            };
                        };
                    } else if (__value__ == (3414548i32)) {
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
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3414577i32)) {
                        _before_3414600 = _t_3413509?.__copy__();
                        _gotoNext = 3414615i32;
                    } else if (__value__ == (3414615i32)) {
                        {
                            final __value__ = _t_3413509[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3414632i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3414661i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3414690i32;
                            } else {
                                _gotoNext = 3414725i32;
                            };
                        };
                    } else if (__value__ == (3414632i32)) {
                        _op_3413435 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3414725i32;
                    } else if (__value__ == (3414661i32)) {
                        _op_3413435 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3414725i32;
                    } else if (__value__ == (3414690i32)) {
                        _op_3413435 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3414725i32;
                    } else if (__value__ == (3414725i32)) {
                        _after_3414725 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3413397._repeat(_op_3413435, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3414600?.__copy__(), _after_3414725?.__copy__(), _lastRepeat_3413451?.__copy__());
                                _after_3414725 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3414817i32;
                            } else {
                                _gotoNext = 3414847i32;
                            };
                        };
                    } else if (__value__ == (3414817i32)) {
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
                        _gotoNext = 3414847i32;
                    } else if (__value__ == (3414847i32)) {
                        _repeat_3413533 = _before_3414600?.__copy__();
                        _t_3413509 = _after_3414725?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3414878i32)) {
                        _op_3413435 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3414908 = _t_3413509?.__copy__();
                        {
                            var __tmp__ = _p_3413397._parseRepeat(_t_3413509?.__copy__());
                            _min_3414923 = __tmp__._0;
                            _max_3414928 = __tmp__._1;
                            _after_3414933 = __tmp__._2?.__copy__();
                            _ok_3414940 = __tmp__._3;
                        };
                        if (!_ok_3414940) {
                            _gotoNext = 3414973i32;
                        } else {
                            _gotoNext = 3415081i32;
                        };
                    } else if (__value__ == (3414973i32)) {
                        _p_3413397._literal((123 : stdgo.GoInt32));
                        _t_3413509 = (_t_3413509.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3415081i32)) {
                        if (((((_min_3414923 < (0 : stdgo.GoInt) : Bool) || (_min_3414923 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3414928 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3414928 >= (0 : stdgo.GoInt) : Bool) && (_min_3414923 > _max_3414928 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3415145i32;
                        } else {
                            _gotoNext = 3415295i32;
                        };
                    } else if (__value__ == (3415145i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3414908.__slice__(0, ((_before_3414908.length) - (_after_3414933.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3415295i32;
                    } else if (__value__ == (3415295i32)) {
                        {
                            {
                                var __tmp__ = _p_3413397._repeat(_op_3413435, _min_3414923, _max_3414928, _before_3414908?.__copy__(), _after_3414933?.__copy__(), _lastRepeat_3413451?.__copy__());
                                _after_3414933 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3415373i32;
                            } else {
                                _gotoNext = 3415403i32;
                            };
                        };
                    } else if (__value__ == (3415373i32)) {
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
                        _gotoNext = 3415403i32;
                    } else if (__value__ == (3415403i32)) {
                        _repeat_3413533 = _before_3414908?.__copy__();
                        _t_3413509 = _after_3414933?.__copy__();
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3415434i32)) {
                        if ((((_p_3413397._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3413509.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3415485i32;
                        } else {
                            _gotoNext = 3416209i32;
                        };
                    } else if (__value__ == (3415485i32)) {
                        _gotoNext = 3415491i32;
                    } else if (__value__ == (3415491i32)) {
                        {
                            final __value__ = _t_3413509[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3415509i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3415582i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3415658i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3415736i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3415831i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3416127i32;
                            } else {
                                _gotoNext = 3416209i32;
                            };
                        };
                    } else if (__value__ == (3415509i32)) {
                        _p_3413397._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3413509 = (_t_3413509.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3415582i32)) {
                        _p_3413397._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3413509 = (_t_3413509.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3415658i32)) {
                        _p_3413397._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3413509 = (_t_3413509.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3415736i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3413509.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416209i32;
                    } else if (__value__ == (3415831i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3413509.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3415896 = __tmp__._0?.__copy__();
                            _t_3413509 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3415954i32;
                    } else if (__value__ == (3415954i32)) {
                        if (_lit_3415896 != (stdgo.Go.str())) {
                            _gotoNext = 3415968i32;
                        } else {
                            _gotoNext = 3416107i32;
                        };
                    } else if (__value__ == (3415968i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3415896?.__copy__());
                            _c_3415976 = __tmp__._0;
                            _rest_3415979 = __tmp__._1?.__copy__();
                            _err_3415985 = __tmp__._2;
                        };
                        if (_err_3415985 != null) {
                            _gotoNext = 3416026i32;
                        } else {
                            _gotoNext = 3416065i32;
                        };
                    } else if (__value__ == (3416026i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3415985 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416065i32;
                    } else if (__value__ == (3416065i32)) {
                        _p_3413397._literal(_c_3415976);
                        _lit_3415896 = _rest_3415979?.__copy__();
                        _gotoNext = 3415954i32;
                    } else if (__value__ == (3416107i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3416127i32)) {
                        _p_3413397._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3413509 = (_t_3413509.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3416209i32)) {
                        _re_3416209 = _p_3413397._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3416209.flags = _p_3413397._flags;
                        if ((((_t_3413509.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3413509[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3413509[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3416365i32;
                        } else {
                            _gotoNext = 3416607i32;
                        };
                    } else if (__value__ == (3416365i32)) {
                        {
                            var __tmp__ = _p_3413397._parseUnicodeClass(_t_3413509?.__copy__(), (_re_3416209.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3416371 = __tmp__._0;
                            _rest_3416374 = __tmp__._1?.__copy__();
                            _err_3416380 = __tmp__._2;
                        };
                        if (_err_3416380 != null) {
                            _gotoNext = 3416442i32;
                        } else {
                            _gotoNext = 3416475i32;
                        };
                    } else if (__value__ == (3416442i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3416380 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3416475i32;
                    } else if (__value__ == (3416475i32)) {
                        if (_r_3416371 != null) {
                            _gotoNext = 3416487i32;
                        } else {
                            _gotoNext = 3416607i32;
                        };
                    } else if (__value__ == (3416487i32)) {
                        _re_3416209.rune = _r_3416371;
                        _t_3413509 = _rest_3416374?.__copy__();
                        _p_3413397._push(_re_3416209);
                        bigSwitchBreak = true;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3416607i32)) {
                        {
                            {
                                var __tmp__ = _p_3413397._parsePerlClassEscape(_t_3413509?.__copy__(), (_re_3416209.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3416610 = __tmp__._0;
                                _rest_3416613 = __tmp__._1?.__copy__();
                            };
                            if (_r_3416610 != null) {
                                _gotoNext = 3416671i32;
                            } else {
                                _gotoNext = 3416745i32;
                            };
                        };
                    } else if (__value__ == (3416671i32)) {
                        _re_3416209.rune = _r_3416610;
                        _t_3413509 = _rest_3416613?.__copy__();
                        _p_3413397._push(_re_3416209);
                        bigSwitchBreak = true;
                        _gotoNext = 3413560i32;
                    } else if (__value__ == (3416745i32)) {
                        _p_3413397._reuse(_re_3416209);
                        {
                            {
                                var __tmp__ = _p_3413397._parseEscape(_t_3413509?.__copy__());
                                _c_3413417 = __tmp__._0;
                                _t_3413509 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3416845i32;
                            } else {
                                _gotoNext = 3416875i32;
                            };
                        };
                    } else if (__value__ == (3416845i32)) {
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
                        _gotoNext = 3416875i32;
                    } else if (__value__ == (3416875i32)) {
                        _p_3413397._literal(_c_3413417);
                        _gotoNext = 3416894i32;
                    } else if (__value__ == (3416894i32)) {
                        _lastRepeat_3413451 = _repeat_3413533?.__copy__();
                        _gotoNext = 3413517i32;
                    } else if (__value__ == (3416919i32)) {
                        _p_3413397._concat();
                        if (_p_3413397._swapVerticalBar()) {
                            _gotoNext = 3416954i32;
                        } else {
                            _gotoNext = 3417019i32;
                        };
                    } else if (__value__ == (3416954i32)) {
                        _p_3413397._stack = (_p_3413397._stack.__slice__(0, ((_p_3413397._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3417019i32;
                    } else if (__value__ == (3417019i32)) {
                        _p_3413397._alternate();
                        _n_3417035 = (_p_3413397._stack.length);
                        if (_n_3417035 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3417064i32;
                        } else {
                            _gotoNext = 3417111i32;
                        };
                    } else if (__value__ == (3417064i32)) {
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
                        _gotoNext = 3417111i32;
                    } else if (__value__ == (3417111i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3413397._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _0, _1 : _err };
        };
    }
