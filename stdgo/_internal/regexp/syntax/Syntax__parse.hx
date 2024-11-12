package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3154199:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3155715:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3156758:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3156678:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3154315:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3154291:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3157153:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3157392:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3157162:stdgo.Error = (null : stdgo.Error);
            var _rest_3156761:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3154233:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _max_3155710:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3155690:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3155382:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3156991:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _ok_3155722:Bool = false;
            var _rest_3157156:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3154217:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3157395:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3156767:stdgo.Error = (null : stdgo.Error);
            var _p_3154179:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3154037:stdgo.Error = (null : stdgo.Error);
            var _n_3157817:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3155705:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3155507:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3153990i32;
                        } else {
                            _gotoNext = 3154171i32;
                        };
                    } else if (__value__ == (3153990i32)) {
                        {
                            _err_3154037 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3154037 != null) {
                                _gotoNext = 3154069i32;
                            } else {
                                _gotoNext = 3154096i32;
                            };
                        };
                    } else if (__value__ == (3154069i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3154037 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3154096i32;
                    } else if (__value__ == (3154096i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3154171i32;
                    } else if (__value__ == (3154171i32)) {
                        _p_3154179._flags = _flags;
                        _p_3154179._wholeRegexp = _s?.__copy__();
                        _t_3154291 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3154299i32;
                    } else if (__value__ == (3154299i32)) {
                        if (_t_3154291 != (stdgo.Go.str())) {
                            _gotoNext = 3154311i32;
                        } else {
                            _gotoNext = 3157701i32;
                        };
                    } else if (__value__ == (3154311i32)) {
                        _repeat_3154315 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3154329i32;
                    } else if (__value__ == (3154329i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3154342i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3154291[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3154455i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3154725i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3154822i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3154918i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155033i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155163i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155277i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155359i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3155660i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3156216i32;
                                } else {
                                    _gotoNext = 3154358i32;
                                };
                            };
                        } else {
                            _gotoNext = 3157676i32;
                        };
                    } else if (__value__ == (3154358i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3154291?.__copy__());
                                _c_3154199 = __tmp__._0;
                                _t_3154291 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3154409i32;
                            } else {
                                _gotoNext = 3154439i32;
                            };
                        };
                    } else if (__value__ == (3154409i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3154439i32;
                    } else if (__value__ == (3154439i32)) {
                        _p_3154179._literal(_c_3154199);
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3154455i32)) {
                        if ((((_p_3154179._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3154291.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3154291[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3154520i32;
                        } else {
                            _gotoNext = 3154663i32;
                        };
                    } else if (__value__ == (3154520i32)) {
                        {
                            {
                                var __tmp__ = _p_3154179._parsePerlFlags(_t_3154291?.__copy__());
                                _t_3154291 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3154616i32;
                            } else {
                                _gotoNext = 3154649i32;
                            };
                        };
                    } else if (__value__ == (3154616i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3154649i32;
                    } else if (__value__ == (3154649i32)) {
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3154663i32)) {
                        _p_3154179._numCap++;
                        _p_3154179._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3154179._numCap;
                        _t_3154291 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3154725i32)) {
                        {
                            _err = _p_3154179._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3154780i32;
                            } else {
                                _gotoNext = 3154810i32;
                            };
                        };
                    } else if (__value__ == (3154780i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3154810i32;
                    } else if (__value__ == (3154810i32)) {
                        _t_3154291 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3154822i32)) {
                        {
                            _err = _p_3154179._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3154876i32;
                            } else {
                                _gotoNext = 3154906i32;
                            };
                        };
                    } else if (__value__ == (3154876i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3154906i32;
                    } else if (__value__ == (3154906i32)) {
                        _t_3154291 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3154918i32)) {
                        if ((_p_3154179._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3154955i32;
                        } else {
                            _gotoNext = 3154989i32;
                        };
                    } else if (__value__ == (3154955i32)) {
                        _p_3154179._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3155021i32;
                    } else if (__value__ == (3154989i32)) {
                        _gotoNext = 3154989i32;
                        _p_3154179._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3155021i32;
                    } else if (__value__ == (3155021i32)) {
                        _t_3154291 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3155033i32)) {
                        if ((_p_3154179._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3155070i32;
                        } else {
                            _gotoNext = 3155121i32;
                        };
                    } else if (__value__ == (3155070i32)) {
                        _p_3154179._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3154179._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3155151i32;
                    } else if (__value__ == (3155121i32)) {
                        _gotoNext = 3155121i32;
                        _p_3154179._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3155151i32;
                    } else if (__value__ == (3155151i32)) {
                        _t_3154291 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3155163i32)) {
                        if ((_p_3154179._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3155198i32;
                        } else {
                            _gotoNext = 3155230i32;
                        };
                    } else if (__value__ == (3155198i32)) {
                        _p_3154179._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3155265i32;
                    } else if (__value__ == (3155230i32)) {
                        _gotoNext = 3155230i32;
                        _p_3154179._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3155265i32;
                    } else if (__value__ == (3155265i32)) {
                        _t_3154291 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3155277i32)) {
                        {
                            {
                                var __tmp__ = _p_3154179._parseClass(_t_3154291?.__copy__());
                                _t_3154291 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3155330i32;
                            } else {
                                _gotoNext = 3157676i32;
                            };
                        };
                    } else if (__value__ == (3155330i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3155359i32)) {
                        _before_3155382 = _t_3154291?.__copy__();
                        _gotoNext = 3155397i32;
                    } else if (__value__ == (3155397i32)) {
                        {
                            final __value__ = _t_3154291[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3155414i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3155443i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3155472i32;
                            } else {
                                _gotoNext = 3155507i32;
                            };
                        };
                    } else if (__value__ == (3155414i32)) {
                        _op_3154217 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3155507i32;
                    } else if (__value__ == (3155443i32)) {
                        _op_3154217 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3155507i32;
                    } else if (__value__ == (3155472i32)) {
                        _op_3154217 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3155507i32;
                    } else if (__value__ == (3155507i32)) {
                        _after_3155507 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3154179._repeat(_op_3154217, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3155382?.__copy__(), _after_3155507?.__copy__(), _lastRepeat_3154233?.__copy__());
                                _after_3155507 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3155599i32;
                            } else {
                                _gotoNext = 3155629i32;
                            };
                        };
                    } else if (__value__ == (3155599i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3155629i32;
                    } else if (__value__ == (3155629i32)) {
                        _repeat_3154315 = _before_3155382?.__copy__();
                        _t_3154291 = _after_3155507?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3155660i32)) {
                        _op_3154217 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3155690 = _t_3154291?.__copy__();
                        {
                            var __tmp__ = _p_3154179._parseRepeat(_t_3154291?.__copy__());
                            _min_3155705 = __tmp__._0;
                            _max_3155710 = __tmp__._1;
                            _after_3155715 = __tmp__._2?.__copy__();
                            _ok_3155722 = __tmp__._3;
                        };
                        if (!_ok_3155722) {
                            _gotoNext = 3155755i32;
                        } else {
                            _gotoNext = 3155863i32;
                        };
                    } else if (__value__ == (3155755i32)) {
                        _p_3154179._literal((123 : stdgo.GoInt32));
                        _t_3154291 = (_t_3154291.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3155863i32)) {
                        if (((((_min_3155705 < (0 : stdgo.GoInt) : Bool) || (_min_3155705 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3155710 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3155710 >= (0 : stdgo.GoInt) : Bool) && (_min_3155705 > _max_3155710 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3155927i32;
                        } else {
                            _gotoNext = 3156077i32;
                        };
                    } else if (__value__ == (3155927i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3155690.__slice__(0, ((_before_3155690.length) - (_after_3155715.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3156077i32;
                    } else if (__value__ == (3156077i32)) {
                        {
                            {
                                var __tmp__ = _p_3154179._repeat(_op_3154217, _min_3155705, _max_3155710, _before_3155690?.__copy__(), _after_3155715?.__copy__(), _lastRepeat_3154233?.__copy__());
                                _after_3155715 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3156155i32;
                            } else {
                                _gotoNext = 3156185i32;
                            };
                        };
                    } else if (__value__ == (3156155i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3156185i32;
                    } else if (__value__ == (3156185i32)) {
                        _repeat_3154315 = _before_3155690?.__copy__();
                        _t_3154291 = _after_3155715?.__copy__();
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3156216i32)) {
                        if ((((_p_3154179._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3154291.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3156267i32;
                        } else {
                            _gotoNext = 3156991i32;
                        };
                    } else if (__value__ == (3156267i32)) {
                        _gotoNext = 3156273i32;
                    } else if (__value__ == (3156273i32)) {
                        {
                            final __value__ = _t_3154291[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3156291i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3156364i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3156440i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3156518i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3156613i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3156909i32;
                            } else {
                                _gotoNext = 3156991i32;
                            };
                        };
                    } else if (__value__ == (3156291i32)) {
                        _p_3154179._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3154291 = (_t_3154291.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3156364i32)) {
                        _p_3154179._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3154291 = (_t_3154291.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3156440i32)) {
                        _p_3154179._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3154291 = (_t_3154291.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3156518i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3154291.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3156991i32;
                    } else if (__value__ == (3156613i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3154291.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3156678 = __tmp__._0?.__copy__();
                            _t_3154291 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3156736i32;
                    } else if (__value__ == (3156736i32)) {
                        if (_lit_3156678 != (stdgo.Go.str())) {
                            _gotoNext = 3156750i32;
                        } else {
                            _gotoNext = 3156889i32;
                        };
                    } else if (__value__ == (3156750i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3156678?.__copy__());
                            _c_3156758 = __tmp__._0;
                            _rest_3156761 = __tmp__._1?.__copy__();
                            _err_3156767 = __tmp__._2;
                        };
                        if (_err_3156767 != null) {
                            _gotoNext = 3156808i32;
                        } else {
                            _gotoNext = 3156847i32;
                        };
                    } else if (__value__ == (3156808i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3156767 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3156847i32;
                    } else if (__value__ == (3156847i32)) {
                        _p_3154179._literal(_c_3156758);
                        _lit_3156678 = _rest_3156761?.__copy__();
                        _gotoNext = 3156736i32;
                    } else if (__value__ == (3156889i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3156909i32)) {
                        _p_3154179._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3154291 = (_t_3154291.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3156991i32)) {
                        _re_3156991 = _p_3154179._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3156991.flags = _p_3154179._flags;
                        if ((((_t_3154291.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3154291[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3154291[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3157147i32;
                        } else {
                            _gotoNext = 3157389i32;
                        };
                    } else if (__value__ == (3157147i32)) {
                        {
                            var __tmp__ = _p_3154179._parseUnicodeClass(_t_3154291?.__copy__(), (_re_3156991.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3157153 = __tmp__._0;
                            _rest_3157156 = __tmp__._1?.__copy__();
                            _err_3157162 = __tmp__._2;
                        };
                        if (_err_3157162 != null) {
                            _gotoNext = 3157224i32;
                        } else {
                            _gotoNext = 3157257i32;
                        };
                    } else if (__value__ == (3157224i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3157162 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3157257i32;
                    } else if (__value__ == (3157257i32)) {
                        if (_r_3157153 != null) {
                            _gotoNext = 3157269i32;
                        } else {
                            _gotoNext = 3157389i32;
                        };
                    } else if (__value__ == (3157269i32)) {
                        _re_3156991.rune = _r_3157153;
                        _t_3154291 = _rest_3157156?.__copy__();
                        _p_3154179._push(_re_3156991);
                        bigSwitchBreak = true;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3157389i32)) {
                        {
                            {
                                var __tmp__ = _p_3154179._parsePerlClassEscape(_t_3154291?.__copy__(), (_re_3156991.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3157392 = __tmp__._0;
                                _rest_3157395 = __tmp__._1?.__copy__();
                            };
                            if (_r_3157392 != null) {
                                _gotoNext = 3157453i32;
                            } else {
                                _gotoNext = 3157527i32;
                            };
                        };
                    } else if (__value__ == (3157453i32)) {
                        _re_3156991.rune = _r_3157392;
                        _t_3154291 = _rest_3157395?.__copy__();
                        _p_3154179._push(_re_3156991);
                        bigSwitchBreak = true;
                        _gotoNext = 3154342i32;
                    } else if (__value__ == (3157527i32)) {
                        _p_3154179._reuse(_re_3156991);
                        {
                            {
                                var __tmp__ = _p_3154179._parseEscape(_t_3154291?.__copy__());
                                _c_3154199 = __tmp__._0;
                                _t_3154291 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3157627i32;
                            } else {
                                _gotoNext = 3157657i32;
                            };
                        };
                    } else if (__value__ == (3157627i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3157657i32;
                    } else if (__value__ == (3157657i32)) {
                        _p_3154179._literal(_c_3154199);
                        _gotoNext = 3157676i32;
                    } else if (__value__ == (3157676i32)) {
                        _lastRepeat_3154233 = _repeat_3154315?.__copy__();
                        _gotoNext = 3154299i32;
                    } else if (__value__ == (3157701i32)) {
                        _p_3154179._concat();
                        if (_p_3154179._swapVerticalBar()) {
                            _gotoNext = 3157736i32;
                        } else {
                            _gotoNext = 3157801i32;
                        };
                    } else if (__value__ == (3157736i32)) {
                        _p_3154179._stack = (_p_3154179._stack.__slice__(0, ((_p_3154179._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3157801i32;
                    } else if (__value__ == (3157801i32)) {
                        _p_3154179._alternate();
                        _n_3157817 = (_p_3154179._stack.length);
                        if (_n_3157817 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3157846i32;
                        } else {
                            _gotoNext = 3157893i32;
                        };
                    } else if (__value__ == (3157846i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3157893i32;
                    } else if (__value__ == (3157893i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3154179._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
