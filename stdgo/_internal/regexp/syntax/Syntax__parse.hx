package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _p_3268330:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var bigSwitchBreak = false;
            var _rest_3271546:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3271313:stdgo.Error = (null : stdgo.Error);
            var _after_3269866:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3269861:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3269841:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3268350:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _op_3268368:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3271543:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3270909:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3269533:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3268384:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3268466:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3271142:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _min_3269856:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3269658:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3271304:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _t_3268442:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3271968:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3268188:stdgo.Error = (null : stdgo.Error);
            var _err_3270918:stdgo.Error = (null : stdgo.Error);
            var _rest_3271307:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3270912:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3270829:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3269873:Bool = false;
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
                            _gotoNext = 3268141i32;
                        } else {
                            _gotoNext = 3268322i32;
                        };
                    } else if (__value__ == (3268141i32)) {
                        {
                            _err_3268188 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3268188 != null) {
                                _gotoNext = 3268220i32;
                            } else {
                                _gotoNext = 3268247i32;
                            };
                        };
                    } else if (__value__ == (3268220i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3268188 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3268247i32;
                    } else if (__value__ == (3268247i32)) {
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
                        _gotoNext = 3268322i32;
                    } else if (__value__ == (3268322i32)) {
                        _p_3268330._flags = _flags;
                        _p_3268330._wholeRegexp = _s?.__copy__();
                        _t_3268442 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3268450i32;
                    } else if (__value__ == (3268450i32)) {
                        if (_t_3268442 != (stdgo.Go.str())) {
                            _gotoNext = 3268462i32;
                        } else {
                            _gotoNext = 3271852i32;
                        };
                    } else if (__value__ == (3268462i32)) {
                        _repeat_3268466 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3268480i32;
                    } else if (__value__ == (3268480i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3268493i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3268442[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268606i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268876i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3268973i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269069i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269184i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269314i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269428i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269510i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3269811i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3270367i32;
                                } else {
                                    _gotoNext = 3268509i32;
                                };
                            };
                        } else {
                            _gotoNext = 3271827i32;
                        };
                    } else if (__value__ == (3268509i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3268442?.__copy__());
                                _c_3268350 = __tmp__._0;
                                _t_3268442 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3268560i32;
                            } else {
                                _gotoNext = 3268590i32;
                            };
                        };
                    } else if (__value__ == (3268560i32)) {
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
                        _gotoNext = 3268590i32;
                    } else if (__value__ == (3268590i32)) {
                        _p_3268330._literal(_c_3268350);
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3268606i32)) {
                        if ((((_p_3268330._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3268442.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3268442[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3268671i32;
                        } else {
                            _gotoNext = 3268814i32;
                        };
                    } else if (__value__ == (3268671i32)) {
                        {
                            {
                                var __tmp__ = _p_3268330._parsePerlFlags(_t_3268442?.__copy__());
                                _t_3268442 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3268767i32;
                            } else {
                                _gotoNext = 3268800i32;
                            };
                        };
                    } else if (__value__ == (3268767i32)) {
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
                        _gotoNext = 3268800i32;
                    } else if (__value__ == (3268800i32)) {
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3268814i32)) {
                        _p_3268330._numCap++;
                        _p_3268330._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3268330._numCap;
                        _t_3268442 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3268876i32)) {
                        {
                            _err = _p_3268330._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3268931i32;
                            } else {
                                _gotoNext = 3268961i32;
                            };
                        };
                    } else if (__value__ == (3268931i32)) {
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
                        _gotoNext = 3268961i32;
                    } else if (__value__ == (3268961i32)) {
                        _t_3268442 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3268973i32)) {
                        {
                            _err = _p_3268330._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3269027i32;
                            } else {
                                _gotoNext = 3269057i32;
                            };
                        };
                    } else if (__value__ == (3269027i32)) {
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
                        _gotoNext = 3269057i32;
                    } else if (__value__ == (3269057i32)) {
                        _t_3268442 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3269069i32)) {
                        if ((_p_3268330._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3269106i32;
                        } else {
                            _gotoNext = 3269140i32;
                        };
                    } else if (__value__ == (3269106i32)) {
                        _p_3268330._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3269172i32;
                    } else if (__value__ == (3269140i32)) {
                        _gotoNext = 3269140i32;
                        _p_3268330._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3269172i32;
                    } else if (__value__ == (3269172i32)) {
                        _t_3268442 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3269184i32)) {
                        if ((_p_3268330._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3269221i32;
                        } else {
                            _gotoNext = 3269272i32;
                        };
                    } else if (__value__ == (3269221i32)) {
                        _p_3268330._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3268330._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3269302i32;
                    } else if (__value__ == (3269272i32)) {
                        _gotoNext = 3269272i32;
                        _p_3268330._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3269302i32;
                    } else if (__value__ == (3269302i32)) {
                        _t_3268442 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3269314i32)) {
                        if ((_p_3268330._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3269349i32;
                        } else {
                            _gotoNext = 3269381i32;
                        };
                    } else if (__value__ == (3269349i32)) {
                        _p_3268330._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3269416i32;
                    } else if (__value__ == (3269381i32)) {
                        _gotoNext = 3269381i32;
                        _p_3268330._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3269416i32;
                    } else if (__value__ == (3269416i32)) {
                        _t_3268442 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3269428i32)) {
                        {
                            {
                                var __tmp__ = _p_3268330._parseClass(_t_3268442?.__copy__());
                                _t_3268442 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3269481i32;
                            } else {
                                _gotoNext = 3271827i32;
                            };
                        };
                    } else if (__value__ == (3269481i32)) {
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
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3269510i32)) {
                        _before_3269533 = _t_3268442?.__copy__();
                        _gotoNext = 3269548i32;
                    } else if (__value__ == (3269548i32)) {
                        {
                            final __value__ = _t_3268442[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3269565i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3269594i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3269623i32;
                            } else {
                                _gotoNext = 3269658i32;
                            };
                        };
                    } else if (__value__ == (3269565i32)) {
                        _op_3268368 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3269658i32;
                    } else if (__value__ == (3269594i32)) {
                        _op_3268368 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3269658i32;
                    } else if (__value__ == (3269623i32)) {
                        _op_3268368 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3269658i32;
                    } else if (__value__ == (3269658i32)) {
                        _after_3269658 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3268330._repeat(_op_3268368, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3269533?.__copy__(), _after_3269658?.__copy__(), _lastRepeat_3268384?.__copy__());
                                _after_3269658 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3269750i32;
                            } else {
                                _gotoNext = 3269780i32;
                            };
                        };
                    } else if (__value__ == (3269750i32)) {
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
                        _gotoNext = 3269780i32;
                    } else if (__value__ == (3269780i32)) {
                        _repeat_3268466 = _before_3269533?.__copy__();
                        _t_3268442 = _after_3269658?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3269811i32)) {
                        _op_3268368 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3269841 = _t_3268442?.__copy__();
                        {
                            var __tmp__ = _p_3268330._parseRepeat(_t_3268442?.__copy__());
                            _min_3269856 = __tmp__._0;
                            _max_3269861 = __tmp__._1;
                            _after_3269866 = __tmp__._2?.__copy__();
                            _ok_3269873 = __tmp__._3;
                        };
                        if (!_ok_3269873) {
                            _gotoNext = 3269906i32;
                        } else {
                            _gotoNext = 3270014i32;
                        };
                    } else if (__value__ == (3269906i32)) {
                        _p_3268330._literal((123 : stdgo.GoInt32));
                        _t_3268442 = (_t_3268442.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3270014i32)) {
                        if (((((_min_3269856 < (0 : stdgo.GoInt) : Bool) || (_min_3269856 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3269861 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3269861 >= (0 : stdgo.GoInt) : Bool) && (_min_3269856 > _max_3269861 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3270078i32;
                        } else {
                            _gotoNext = 3270228i32;
                        };
                    } else if (__value__ == (3270078i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3269841.__slice__(0, ((_before_3269841.length) - (_after_3269866.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3270228i32;
                    } else if (__value__ == (3270228i32)) {
                        {
                            {
                                var __tmp__ = _p_3268330._repeat(_op_3268368, _min_3269856, _max_3269861, _before_3269841?.__copy__(), _after_3269866?.__copy__(), _lastRepeat_3268384?.__copy__());
                                _after_3269866 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3270306i32;
                            } else {
                                _gotoNext = 3270336i32;
                            };
                        };
                    } else if (__value__ == (3270306i32)) {
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
                        _gotoNext = 3270336i32;
                    } else if (__value__ == (3270336i32)) {
                        _repeat_3268466 = _before_3269841?.__copy__();
                        _t_3268442 = _after_3269866?.__copy__();
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3270367i32)) {
                        if ((((_p_3268330._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3268442.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3270418i32;
                        } else {
                            _gotoNext = 3271142i32;
                        };
                    } else if (__value__ == (3270418i32)) {
                        _gotoNext = 3270424i32;
                    } else if (__value__ == (3270424i32)) {
                        {
                            final __value__ = _t_3268442[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3270442i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3270515i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3270591i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3270669i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3270764i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3271060i32;
                            } else {
                                _gotoNext = 3271142i32;
                            };
                        };
                    } else if (__value__ == (3270442i32)) {
                        _p_3268330._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3268442 = (_t_3268442.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3270515i32)) {
                        _p_3268330._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3268442 = (_t_3268442.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3270591i32)) {
                        _p_3268330._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3268442 = (_t_3268442.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3270669i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3268442.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3271142i32;
                    } else if (__value__ == (3270764i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3268442.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3270829 = __tmp__._0?.__copy__();
                            _t_3268442 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3270887i32;
                    } else if (__value__ == (3270887i32)) {
                        if (_lit_3270829 != (stdgo.Go.str())) {
                            _gotoNext = 3270901i32;
                        } else {
                            _gotoNext = 3271040i32;
                        };
                    } else if (__value__ == (3270901i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3270829?.__copy__());
                            _c_3270909 = __tmp__._0;
                            _rest_3270912 = __tmp__._1?.__copy__();
                            _err_3270918 = __tmp__._2;
                        };
                        if (_err_3270918 != null) {
                            _gotoNext = 3270959i32;
                        } else {
                            _gotoNext = 3270998i32;
                        };
                    } else if (__value__ == (3270959i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3270918 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3270998i32;
                    } else if (__value__ == (3270998i32)) {
                        _p_3268330._literal(_c_3270909);
                        _lit_3270829 = _rest_3270912?.__copy__();
                        _gotoNext = 3270887i32;
                    } else if (__value__ == (3271040i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3271060i32)) {
                        _p_3268330._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3268442 = (_t_3268442.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3271142i32)) {
                        _re_3271142 = _p_3268330._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3271142.flags = _p_3268330._flags;
                        if ((((_t_3268442.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3268442[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3268442[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3271298i32;
                        } else {
                            _gotoNext = 3271540i32;
                        };
                    } else if (__value__ == (3271298i32)) {
                        {
                            var __tmp__ = _p_3268330._parseUnicodeClass(_t_3268442?.__copy__(), (_re_3271142.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3271304 = __tmp__._0;
                            _rest_3271307 = __tmp__._1?.__copy__();
                            _err_3271313 = __tmp__._2;
                        };
                        if (_err_3271313 != null) {
                            _gotoNext = 3271375i32;
                        } else {
                            _gotoNext = 3271408i32;
                        };
                    } else if (__value__ == (3271375i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3271313 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3271408i32;
                    } else if (__value__ == (3271408i32)) {
                        if (_r_3271304 != null) {
                            _gotoNext = 3271420i32;
                        } else {
                            _gotoNext = 3271540i32;
                        };
                    } else if (__value__ == (3271420i32)) {
                        _re_3271142.rune = _r_3271304;
                        _t_3268442 = _rest_3271307?.__copy__();
                        _p_3268330._push(_re_3271142);
                        bigSwitchBreak = true;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3271540i32)) {
                        {
                            {
                                var __tmp__ = _p_3268330._parsePerlClassEscape(_t_3268442?.__copy__(), (_re_3271142.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3271543 = __tmp__._0;
                                _rest_3271546 = __tmp__._1?.__copy__();
                            };
                            if (_r_3271543 != null) {
                                _gotoNext = 3271604i32;
                            } else {
                                _gotoNext = 3271678i32;
                            };
                        };
                    } else if (__value__ == (3271604i32)) {
                        _re_3271142.rune = _r_3271543;
                        _t_3268442 = _rest_3271546?.__copy__();
                        _p_3268330._push(_re_3271142);
                        bigSwitchBreak = true;
                        _gotoNext = 3268493i32;
                    } else if (__value__ == (3271678i32)) {
                        _p_3268330._reuse(_re_3271142);
                        {
                            {
                                var __tmp__ = _p_3268330._parseEscape(_t_3268442?.__copy__());
                                _c_3268350 = __tmp__._0;
                                _t_3268442 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3271778i32;
                            } else {
                                _gotoNext = 3271808i32;
                            };
                        };
                    } else if (__value__ == (3271778i32)) {
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
                        _gotoNext = 3271808i32;
                    } else if (__value__ == (3271808i32)) {
                        _p_3268330._literal(_c_3268350);
                        _gotoNext = 3271827i32;
                    } else if (__value__ == (3271827i32)) {
                        _lastRepeat_3268384 = _repeat_3268466?.__copy__();
                        _gotoNext = 3268450i32;
                    } else if (__value__ == (3271852i32)) {
                        _p_3268330._concat();
                        if (_p_3268330._swapVerticalBar()) {
                            _gotoNext = 3271887i32;
                        } else {
                            _gotoNext = 3271952i32;
                        };
                    } else if (__value__ == (3271887i32)) {
                        _p_3268330._stack = (_p_3268330._stack.__slice__(0, ((_p_3268330._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3271952i32;
                    } else if (__value__ == (3271952i32)) {
                        _p_3268330._alternate();
                        _n_3271968 = (_p_3268330._stack.length);
                        if (_n_3271968 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3271997i32;
                        } else {
                            _gotoNext = 3272044i32;
                        };
                    } else if (__value__ == (3271997i32)) {
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
                        _gotoNext = 3272044i32;
                    } else if (__value__ == (3272044i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3268330._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
