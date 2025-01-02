package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3555032:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3555027:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3553632:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3555995:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3556308:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3556084:stdgo.Error = (null : stdgo.Error);
            var _p_3553496:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var bigSwitchBreak = false;
            var _after_3554824:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3553534:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3557134:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3556078:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3556473:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3553354:stdgo.Error = (null : stdgo.Error);
            var _r_3556709:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _t_3553608:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3556075:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3555007:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3553550:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3556712:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3556479:stdgo.Error = (null : stdgo.Error);
            var _min_3555022:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3554699:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3553516:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3556470:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3555039:Bool = false;
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
                            _gotoNext = 3553307i32;
                        } else {
                            _gotoNext = 3553488i32;
                        };
                    } else if (__value__ == (3553307i32)) {
                        {
                            _err_3553354 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3553354 != null) {
                                _gotoNext = 3553386i32;
                            } else {
                                _gotoNext = 3553413i32;
                            };
                        };
                    } else if (__value__ == (3553386i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3553354 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3553413i32;
                    } else if (__value__ == (3553413i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3553488i32;
                    } else if (__value__ == (3553488i32)) {
                        _p_3553496._flags = _flags;
                        _p_3553496._wholeRegexp = _s?.__copy__();
                        _t_3553608 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3553616i32;
                    } else if (__value__ == (3553616i32)) {
                        if (_t_3553608 != (stdgo.Go.str())) {
                            _gotoNext = 3553628i32;
                        } else {
                            _gotoNext = 3557018i32;
                        };
                    } else if (__value__ == (3553628i32)) {
                        _repeat_3553632 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3553646i32;
                    } else if (__value__ == (3553646i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3553659i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3553608[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3553772i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554042i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554139i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554235i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554350i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554480i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554594i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554676i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3554977i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3555533i32;
                                } else {
                                    _gotoNext = 3553675i32;
                                };
                            };
                        } else {
                            _gotoNext = 3556993i32;
                        };
                    } else if (__value__ == (3553675i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3553608?.__copy__());
                                _c_3553516 = __tmp__._0;
                                _t_3553608 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3553726i32;
                            } else {
                                _gotoNext = 3553756i32;
                            };
                        };
                    } else if (__value__ == (3553726i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3553756i32;
                    } else if (__value__ == (3553756i32)) {
                        @:check2 _p_3553496._literal(_c_3553516);
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3553772i32)) {
                        if ((((_p_3553496._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3553608.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3553608[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3553837i32;
                        } else {
                            _gotoNext = 3553980i32;
                        };
                    } else if (__value__ == (3553837i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3553496._parsePerlFlags(_t_3553608?.__copy__());
                                _t_3553608 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3553933i32;
                            } else {
                                _gotoNext = 3553966i32;
                            };
                        };
                    } else if (__value__ == (3553933i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3553966i32;
                    } else if (__value__ == (3553966i32)) {
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3553980i32)) {
                        _p_3553496._numCap++;
                        @:check2 _p_3553496._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3553496._numCap;
                        _t_3553608 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554042i32)) {
                        {
                            _err = @:check2 _p_3553496._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3554097i32;
                            } else {
                                _gotoNext = 3554127i32;
                            };
                        };
                    } else if (__value__ == (3554097i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3554127i32;
                    } else if (__value__ == (3554127i32)) {
                        _t_3553608 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554139i32)) {
                        {
                            _err = @:check2 _p_3553496._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3554193i32;
                            } else {
                                _gotoNext = 3554223i32;
                            };
                        };
                    } else if (__value__ == (3554193i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3554223i32;
                    } else if (__value__ == (3554223i32)) {
                        _t_3553608 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554235i32)) {
                        if ((_p_3553496._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3554272i32;
                        } else {
                            _gotoNext = 3554306i32;
                        };
                    } else if (__value__ == (3554272i32)) {
                        @:check2 _p_3553496._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3554338i32;
                    } else if (__value__ == (3554306i32)) {
                        _gotoNext = 3554306i32;
                        @:check2 _p_3553496._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3554338i32;
                    } else if (__value__ == (3554338i32)) {
                        _t_3553608 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554350i32)) {
                        if ((_p_3553496._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3554387i32;
                        } else {
                            _gotoNext = 3554438i32;
                        };
                    } else if (__value__ == (3554387i32)) {
                        {
                            final __t__ = @:check2 _p_3553496._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3554468i32;
                    } else if (__value__ == (3554438i32)) {
                        _gotoNext = 3554438i32;
                        @:check2 _p_3553496._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3554468i32;
                    } else if (__value__ == (3554468i32)) {
                        _t_3553608 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554480i32)) {
                        if ((_p_3553496._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3554515i32;
                        } else {
                            _gotoNext = 3554547i32;
                        };
                    } else if (__value__ == (3554515i32)) {
                        @:check2 _p_3553496._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3554582i32;
                    } else if (__value__ == (3554547i32)) {
                        _gotoNext = 3554547i32;
                        @:check2 _p_3553496._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3554582i32;
                    } else if (__value__ == (3554582i32)) {
                        _t_3553608 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554594i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3553496._parseClass(_t_3553608?.__copy__());
                                _t_3553608 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3554647i32;
                            } else {
                                _gotoNext = 3556993i32;
                            };
                        };
                    } else if (__value__ == (3554647i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554676i32)) {
                        _before_3554699 = _t_3553608?.__copy__();
                        _gotoNext = 3554714i32;
                    } else if (__value__ == (3554714i32)) {
                        {
                            final __value__ = _t_3553608[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3554731i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3554760i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3554789i32;
                            } else {
                                _gotoNext = 3554824i32;
                            };
                        };
                    } else if (__value__ == (3554731i32)) {
                        _op_3553534 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3554824i32;
                    } else if (__value__ == (3554760i32)) {
                        _op_3553534 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3554824i32;
                    } else if (__value__ == (3554789i32)) {
                        _op_3553534 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3554824i32;
                    } else if (__value__ == (3554824i32)) {
                        _after_3554824 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3553496._repeat(_op_3553534, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3554699?.__copy__(), _after_3554824?.__copy__(), _lastRepeat_3553550?.__copy__());
                                _after_3554824 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3554916i32;
                            } else {
                                _gotoNext = 3554946i32;
                            };
                        };
                    } else if (__value__ == (3554916i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3554946i32;
                    } else if (__value__ == (3554946i32)) {
                        _repeat_3553632 = _before_3554699?.__copy__();
                        _t_3553608 = _after_3554824?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3554977i32)) {
                        _op_3553534 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3555007 = _t_3553608?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3553496._parseRepeat(_t_3553608?.__copy__());
                            _min_3555022 = __tmp__._0;
                            _max_3555027 = __tmp__._1;
                            _after_3555032 = __tmp__._2?.__copy__();
                            _ok_3555039 = __tmp__._3;
                        };
                        if (!_ok_3555039) {
                            _gotoNext = 3555072i32;
                        } else {
                            _gotoNext = 3555180i32;
                        };
                    } else if (__value__ == (3555072i32)) {
                        @:check2 _p_3553496._literal((123 : stdgo.GoInt32));
                        _t_3553608 = (_t_3553608.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3555180i32)) {
                        if (((((_min_3555022 < (0 : stdgo.GoInt) : Bool) || (_min_3555022 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3555027 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3555027 >= (0 : stdgo.GoInt) : Bool) && (_min_3555022 > _max_3555027 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3555244i32;
                        } else {
                            _gotoNext = 3555394i32;
                        };
                    } else if (__value__ == (3555244i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3555007.__slice__(0, ((_before_3555007.length) - (_after_3555032.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3555394i32;
                    } else if (__value__ == (3555394i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3553496._repeat(_op_3553534, _min_3555022, _max_3555027, _before_3555007?.__copy__(), _after_3555032?.__copy__(), _lastRepeat_3553550?.__copy__());
                                _after_3555032 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3555472i32;
                            } else {
                                _gotoNext = 3555502i32;
                            };
                        };
                    } else if (__value__ == (3555472i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3555502i32;
                    } else if (__value__ == (3555502i32)) {
                        _repeat_3553632 = _before_3555007?.__copy__();
                        _t_3553608 = _after_3555032?.__copy__();
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3555533i32)) {
                        if ((((_p_3553496._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3553608.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3555584i32;
                        } else {
                            _gotoNext = 3556308i32;
                        };
                    } else if (__value__ == (3555584i32)) {
                        _gotoNext = 3555590i32;
                    } else if (__value__ == (3555590i32)) {
                        {
                            final __value__ = _t_3553608[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3555608i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3555681i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3555757i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3555835i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3555930i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3556226i32;
                            } else {
                                _gotoNext = 3556308i32;
                            };
                        };
                    } else if (__value__ == (3555608i32)) {
                        @:check2 _p_3553496._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3553608 = (_t_3553608.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3555681i32)) {
                        @:check2 _p_3553496._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3553608 = (_t_3553608.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3555757i32)) {
                        @:check2 _p_3553496._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3553608 = (_t_3553608.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3555835i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3553608.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3556308i32;
                    } else if (__value__ == (3555930i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3553608.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3555995 = __tmp__._0?.__copy__();
                            _t_3553608 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3556053i32;
                    } else if (__value__ == (3556053i32)) {
                        if (_lit_3555995 != (stdgo.Go.str())) {
                            _gotoNext = 3556067i32;
                        } else {
                            _gotoNext = 3556206i32;
                        };
                    } else if (__value__ == (3556067i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3555995?.__copy__());
                            _c_3556075 = __tmp__._0;
                            _rest_3556078 = __tmp__._1?.__copy__();
                            _err_3556084 = __tmp__._2;
                        };
                        if (_err_3556084 != null) {
                            _gotoNext = 3556125i32;
                        } else {
                            _gotoNext = 3556164i32;
                        };
                    } else if (__value__ == (3556125i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3556084 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3556164i32;
                    } else if (__value__ == (3556164i32)) {
                        @:check2 _p_3553496._literal(_c_3556075);
                        _lit_3555995 = _rest_3556078?.__copy__();
                        _gotoNext = 3556053i32;
                    } else if (__value__ == (3556206i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3556226i32)) {
                        @:check2 _p_3553496._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3553608 = (_t_3553608.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3556308i32)) {
                        _re_3556308 = @:check2 _p_3553496._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3556308 ?? throw "null pointer dereference").flags = _p_3553496._flags;
                        if ((((_t_3553608.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3553608[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3553608[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3556464i32;
                        } else {
                            _gotoNext = 3556706i32;
                        };
                    } else if (__value__ == (3556464i32)) {
                        {
                            var __tmp__ = @:check2 _p_3553496._parseUnicodeClass(_t_3553608?.__copy__(), ((@:checkr _re_3556308 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3556470 = __tmp__._0;
                            _rest_3556473 = __tmp__._1?.__copy__();
                            _err_3556479 = __tmp__._2;
                        };
                        if (_err_3556479 != null) {
                            _gotoNext = 3556541i32;
                        } else {
                            _gotoNext = 3556574i32;
                        };
                    } else if (__value__ == (3556541i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3556479 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3556574i32;
                    } else if (__value__ == (3556574i32)) {
                        if (_r_3556470 != null) {
                            _gotoNext = 3556586i32;
                        } else {
                            _gotoNext = 3556706i32;
                        };
                    } else if (__value__ == (3556586i32)) {
                        (@:checkr _re_3556308 ?? throw "null pointer dereference").rune = _r_3556470;
                        _t_3553608 = _rest_3556473?.__copy__();
                        @:check2 _p_3553496._push(_re_3556308);
                        bigSwitchBreak = true;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3556706i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3553496._parsePerlClassEscape(_t_3553608?.__copy__(), ((@:checkr _re_3556308 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3556709 = __tmp__._0;
                                _rest_3556712 = __tmp__._1?.__copy__();
                            };
                            if (_r_3556709 != null) {
                                _gotoNext = 3556770i32;
                            } else {
                                _gotoNext = 3556844i32;
                            };
                        };
                    } else if (__value__ == (3556770i32)) {
                        (@:checkr _re_3556308 ?? throw "null pointer dereference").rune = _r_3556709;
                        _t_3553608 = _rest_3556712?.__copy__();
                        @:check2 _p_3553496._push(_re_3556308);
                        bigSwitchBreak = true;
                        _gotoNext = 3553659i32;
                    } else if (__value__ == (3556844i32)) {
                        @:check2 _p_3553496._reuse(_re_3556308);
                        {
                            {
                                var __tmp__ = @:check2 _p_3553496._parseEscape(_t_3553608?.__copy__());
                                _c_3553516 = __tmp__._0;
                                _t_3553608 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3556944i32;
                            } else {
                                _gotoNext = 3556974i32;
                            };
                        };
                    } else if (__value__ == (3556944i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3556974i32;
                    } else if (__value__ == (3556974i32)) {
                        @:check2 _p_3553496._literal(_c_3553516);
                        _gotoNext = 3556993i32;
                    } else if (__value__ == (3556993i32)) {
                        _lastRepeat_3553550 = _repeat_3553632?.__copy__();
                        _gotoNext = 3553616i32;
                    } else if (__value__ == (3557018i32)) {
                        @:check2 _p_3553496._concat();
                        if (@:check2 _p_3553496._swapVerticalBar()) {
                            _gotoNext = 3557053i32;
                        } else {
                            _gotoNext = 3557118i32;
                        };
                    } else if (__value__ == (3557053i32)) {
                        _p_3553496._stack = (_p_3553496._stack.__slice__(0, ((_p_3553496._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3557118i32;
                    } else if (__value__ == (3557118i32)) {
                        @:check2 _p_3553496._alternate();
                        _n_3557134 = (_p_3553496._stack.length);
                        if (_n_3557134 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3557163i32;
                        } else {
                            _gotoNext = 3557210i32;
                        };
                    } else if (__value__ == (3557163i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3557210i32;
                    } else if (__value__ == (3557210i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3553496._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
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
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _0, _1 : _err };
        };
    }
