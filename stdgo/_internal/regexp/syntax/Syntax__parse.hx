package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3315942:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3313380:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3313218:stdgo.Error = (null : stdgo.Error);
            var _n_3316998:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lit_3315859:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3314903:Bool = false;
            var _before_3314871:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3316576:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3316343:stdgo.Error = (null : stdgo.Error);
            var _rest_3316337:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3316172:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3315948:stdgo.Error = (null : stdgo.Error);
            var _before_3314563:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3313496:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3315939:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3314896:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3313398:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _min_3314886:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3313414:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3316334:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _max_3314891:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _r_3316573:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3314688:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3313472:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3313360:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
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
                            _gotoNext = 3313171i32;
                        } else {
                            _gotoNext = 3313352i32;
                        };
                    } else if (__value__ == (3313171i32)) {
                        {
                            _err_3313218 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3313218 != null) {
                                _gotoNext = 3313250i32;
                            } else {
                                _gotoNext = 3313277i32;
                            };
                        };
                    } else if (__value__ == (3313250i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3313218 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3313277i32;
                    } else if (__value__ == (3313277i32)) {
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
                        _gotoNext = 3313352i32;
                    } else if (__value__ == (3313352i32)) {
                        _p_3313360._flags = _flags;
                        _p_3313360._wholeRegexp = _s?.__copy__();
                        _t_3313472 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3313480i32;
                    } else if (__value__ == (3313480i32)) {
                        if (_t_3313472 != (stdgo.Go.str())) {
                            _gotoNext = 3313492i32;
                        } else {
                            _gotoNext = 3316882i32;
                        };
                    } else if (__value__ == (3313492i32)) {
                        _repeat_3313496 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3313510i32;
                    } else if (__value__ == (3313510i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3313523i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3313472[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3313636i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3313906i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314003i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314099i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314214i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314344i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314458i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314540i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3314841i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3315397i32;
                                } else {
                                    _gotoNext = 3313539i32;
                                };
                            };
                        } else {
                            _gotoNext = 3316857i32;
                        };
                    } else if (__value__ == (3313539i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3313472?.__copy__());
                                _c_3313380 = __tmp__._0;
                                _t_3313472 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3313590i32;
                            } else {
                                _gotoNext = 3313620i32;
                            };
                        };
                    } else if (__value__ == (3313590i32)) {
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
                        _gotoNext = 3313620i32;
                    } else if (__value__ == (3313620i32)) {
                        _p_3313360._literal(_c_3313380);
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3313636i32)) {
                        if ((((_p_3313360._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3313472.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3313472[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3313701i32;
                        } else {
                            _gotoNext = 3313844i32;
                        };
                    } else if (__value__ == (3313701i32)) {
                        {
                            {
                                var __tmp__ = _p_3313360._parsePerlFlags(_t_3313472?.__copy__());
                                _t_3313472 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3313797i32;
                            } else {
                                _gotoNext = 3313830i32;
                            };
                        };
                    } else if (__value__ == (3313797i32)) {
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
                        _gotoNext = 3313830i32;
                    } else if (__value__ == (3313830i32)) {
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3313844i32)) {
                        _p_3313360._numCap++;
                        _p_3313360._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3313360._numCap;
                        _t_3313472 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3313906i32)) {
                        {
                            _err = _p_3313360._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3313961i32;
                            } else {
                                _gotoNext = 3313991i32;
                            };
                        };
                    } else if (__value__ == (3313961i32)) {
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
                        _gotoNext = 3313991i32;
                    } else if (__value__ == (3313991i32)) {
                        _t_3313472 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3314003i32)) {
                        {
                            _err = _p_3313360._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3314057i32;
                            } else {
                                _gotoNext = 3314087i32;
                            };
                        };
                    } else if (__value__ == (3314057i32)) {
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
                        _gotoNext = 3314087i32;
                    } else if (__value__ == (3314087i32)) {
                        _t_3313472 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3314099i32)) {
                        if ((_p_3313360._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3314136i32;
                        } else {
                            _gotoNext = 3314170i32;
                        };
                    } else if (__value__ == (3314136i32)) {
                        _p_3313360._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3314202i32;
                    } else if (__value__ == (3314170i32)) {
                        _gotoNext = 3314170i32;
                        _p_3313360._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3314202i32;
                    } else if (__value__ == (3314202i32)) {
                        _t_3313472 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3314214i32)) {
                        if ((_p_3313360._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3314251i32;
                        } else {
                            _gotoNext = 3314302i32;
                        };
                    } else if (__value__ == (3314251i32)) {
                        {
                            final __t__ = _p_3313360._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3314332i32;
                    } else if (__value__ == (3314302i32)) {
                        _gotoNext = 3314302i32;
                        _p_3313360._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3314332i32;
                    } else if (__value__ == (3314332i32)) {
                        _t_3313472 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3314344i32)) {
                        if ((_p_3313360._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3314379i32;
                        } else {
                            _gotoNext = 3314411i32;
                        };
                    } else if (__value__ == (3314379i32)) {
                        _p_3313360._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3314446i32;
                    } else if (__value__ == (3314411i32)) {
                        _gotoNext = 3314411i32;
                        _p_3313360._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3314446i32;
                    } else if (__value__ == (3314446i32)) {
                        _t_3313472 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3314458i32)) {
                        {
                            {
                                var __tmp__ = _p_3313360._parseClass(_t_3313472?.__copy__());
                                _t_3313472 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3314511i32;
                            } else {
                                _gotoNext = 3316857i32;
                            };
                        };
                    } else if (__value__ == (3314511i32)) {
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
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3314540i32)) {
                        _before_3314563 = _t_3313472?.__copy__();
                        _gotoNext = 3314578i32;
                    } else if (__value__ == (3314578i32)) {
                        {
                            final __value__ = _t_3313472[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3314595i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3314624i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3314653i32;
                            } else {
                                _gotoNext = 3314688i32;
                            };
                        };
                    } else if (__value__ == (3314595i32)) {
                        _op_3313398 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3314688i32;
                    } else if (__value__ == (3314624i32)) {
                        _op_3313398 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3314688i32;
                    } else if (__value__ == (3314653i32)) {
                        _op_3313398 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3314688i32;
                    } else if (__value__ == (3314688i32)) {
                        _after_3314688 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3313360._repeat(_op_3313398, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3314563?.__copy__(), _after_3314688?.__copy__(), _lastRepeat_3313414?.__copy__());
                                _after_3314688 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3314780i32;
                            } else {
                                _gotoNext = 3314810i32;
                            };
                        };
                    } else if (__value__ == (3314780i32)) {
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
                        _gotoNext = 3314810i32;
                    } else if (__value__ == (3314810i32)) {
                        _repeat_3313496 = _before_3314563?.__copy__();
                        _t_3313472 = _after_3314688?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3314841i32)) {
                        _op_3313398 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3314871 = _t_3313472?.__copy__();
                        {
                            var __tmp__ = _p_3313360._parseRepeat(_t_3313472?.__copy__());
                            _min_3314886 = __tmp__._0;
                            _max_3314891 = __tmp__._1;
                            _after_3314896 = __tmp__._2?.__copy__();
                            _ok_3314903 = __tmp__._3;
                        };
                        if (!_ok_3314903) {
                            _gotoNext = 3314936i32;
                        } else {
                            _gotoNext = 3315044i32;
                        };
                    } else if (__value__ == (3314936i32)) {
                        _p_3313360._literal((123 : stdgo.GoInt32));
                        _t_3313472 = (_t_3313472.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3315044i32)) {
                        if (((((_min_3314886 < (0 : stdgo.GoInt) : Bool) || (_min_3314886 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3314891 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3314891 >= (0 : stdgo.GoInt) : Bool) && (_min_3314886 > _max_3314891 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3315108i32;
                        } else {
                            _gotoNext = 3315258i32;
                        };
                    } else if (__value__ == (3315108i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3314871.__slice__(0, ((_before_3314871.length) - (_after_3314896.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3315258i32;
                    } else if (__value__ == (3315258i32)) {
                        {
                            {
                                var __tmp__ = _p_3313360._repeat(_op_3313398, _min_3314886, _max_3314891, _before_3314871?.__copy__(), _after_3314896?.__copy__(), _lastRepeat_3313414?.__copy__());
                                _after_3314896 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3315336i32;
                            } else {
                                _gotoNext = 3315366i32;
                            };
                        };
                    } else if (__value__ == (3315336i32)) {
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
                        _gotoNext = 3315366i32;
                    } else if (__value__ == (3315366i32)) {
                        _repeat_3313496 = _before_3314871?.__copy__();
                        _t_3313472 = _after_3314896?.__copy__();
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3315397i32)) {
                        if ((((_p_3313360._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3313472.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3315448i32;
                        } else {
                            _gotoNext = 3316172i32;
                        };
                    } else if (__value__ == (3315448i32)) {
                        _gotoNext = 3315454i32;
                    } else if (__value__ == (3315454i32)) {
                        {
                            final __value__ = _t_3313472[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3315472i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3315545i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3315621i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3315699i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3315794i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3316090i32;
                            } else {
                                _gotoNext = 3316172i32;
                            };
                        };
                    } else if (__value__ == (3315472i32)) {
                        _p_3313360._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313472 = (_t_3313472.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3315545i32)) {
                        _p_3313360._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313472 = (_t_3313472.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3315621i32)) {
                        _p_3313360._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313472 = (_t_3313472.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3315699i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3313472.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3316172i32;
                    } else if (__value__ == (3315794i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3313472.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3315859 = __tmp__._0?.__copy__();
                            _t_3313472 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3315917i32;
                    } else if (__value__ == (3315917i32)) {
                        if (_lit_3315859 != (stdgo.Go.str())) {
                            _gotoNext = 3315931i32;
                        } else {
                            _gotoNext = 3316070i32;
                        };
                    } else if (__value__ == (3315931i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3315859?.__copy__());
                            _c_3315939 = __tmp__._0;
                            _rest_3315942 = __tmp__._1?.__copy__();
                            _err_3315948 = __tmp__._2;
                        };
                        if (_err_3315948 != null) {
                            _gotoNext = 3315989i32;
                        } else {
                            _gotoNext = 3316028i32;
                        };
                    } else if (__value__ == (3315989i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3315948 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3316028i32;
                    } else if (__value__ == (3316028i32)) {
                        _p_3313360._literal(_c_3315939);
                        _lit_3315859 = _rest_3315942?.__copy__();
                        _gotoNext = 3315917i32;
                    } else if (__value__ == (3316070i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3316090i32)) {
                        _p_3313360._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3313472 = (_t_3313472.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3316172i32)) {
                        _re_3316172 = _p_3313360._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3316172.flags = _p_3313360._flags;
                        if ((((_t_3313472.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3313472[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3313472[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3316328i32;
                        } else {
                            _gotoNext = 3316570i32;
                        };
                    } else if (__value__ == (3316328i32)) {
                        {
                            var __tmp__ = _p_3313360._parseUnicodeClass(_t_3313472?.__copy__(), (_re_3316172.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3316334 = __tmp__._0;
                            _rest_3316337 = __tmp__._1?.__copy__();
                            _err_3316343 = __tmp__._2;
                        };
                        if (_err_3316343 != null) {
                            _gotoNext = 3316405i32;
                        } else {
                            _gotoNext = 3316438i32;
                        };
                    } else if (__value__ == (3316405i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3316343 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3316438i32;
                    } else if (__value__ == (3316438i32)) {
                        if (_r_3316334 != null) {
                            _gotoNext = 3316450i32;
                        } else {
                            _gotoNext = 3316570i32;
                        };
                    } else if (__value__ == (3316450i32)) {
                        _re_3316172.rune = _r_3316334;
                        _t_3313472 = _rest_3316337?.__copy__();
                        _p_3313360._push(_re_3316172);
                        bigSwitchBreak = true;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3316570i32)) {
                        {
                            {
                                var __tmp__ = _p_3313360._parsePerlClassEscape(_t_3313472?.__copy__(), (_re_3316172.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3316573 = __tmp__._0;
                                _rest_3316576 = __tmp__._1?.__copy__();
                            };
                            if (_r_3316573 != null) {
                                _gotoNext = 3316634i32;
                            } else {
                                _gotoNext = 3316708i32;
                            };
                        };
                    } else if (__value__ == (3316634i32)) {
                        _re_3316172.rune = _r_3316573;
                        _t_3313472 = _rest_3316576?.__copy__();
                        _p_3313360._push(_re_3316172);
                        bigSwitchBreak = true;
                        _gotoNext = 3313523i32;
                    } else if (__value__ == (3316708i32)) {
                        _p_3313360._reuse(_re_3316172);
                        {
                            {
                                var __tmp__ = _p_3313360._parseEscape(_t_3313472?.__copy__());
                                _c_3313380 = __tmp__._0;
                                _t_3313472 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3316808i32;
                            } else {
                                _gotoNext = 3316838i32;
                            };
                        };
                    } else if (__value__ == (3316808i32)) {
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
                        _gotoNext = 3316838i32;
                    } else if (__value__ == (3316838i32)) {
                        _p_3313360._literal(_c_3313380);
                        _gotoNext = 3316857i32;
                    } else if (__value__ == (3316857i32)) {
                        _lastRepeat_3313414 = _repeat_3313496?.__copy__();
                        _gotoNext = 3313480i32;
                    } else if (__value__ == (3316882i32)) {
                        _p_3313360._concat();
                        if (_p_3313360._swapVerticalBar()) {
                            _gotoNext = 3316917i32;
                        } else {
                            _gotoNext = 3316982i32;
                        };
                    } else if (__value__ == (3316917i32)) {
                        _p_3313360._stack = (_p_3313360._stack.__slice__(0, ((_p_3313360._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3316982i32;
                    } else if (__value__ == (3316982i32)) {
                        _p_3313360._alternate();
                        _n_3316998 = (_p_3313360._stack.length);
                        if (_n_3316998 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3317027i32;
                        } else {
                            _gotoNext = 3317074i32;
                        };
                    } else if (__value__ == (3317027i32)) {
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
                        _gotoNext = 3317074i32;
                    } else if (__value__ == (3317074i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3313360._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
