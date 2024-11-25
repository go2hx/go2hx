package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _c_3583997:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3582929:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3582944:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n_3585056:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _err_3584401:stdgo.Error = (null : stdgo.Error);
            var _max_3582949:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3584634:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3583917:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3582746:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3581530:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3584006:stdgo.Error = (null : stdgo.Error);
            var _rest_3584000:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3582954:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3581472:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3584631:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3582621:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3581418:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3581276:stdgo.Error = (null : stdgo.Error);
            var _rest_3584395:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3584392:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3582961:Bool = false;
            var _repeat_3581554:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3581456:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3581438:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_3584230:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
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
                            _gotoNext = 3581229i32;
                        } else {
                            _gotoNext = 3581410i32;
                        };
                    } else if (__value__ == (3581229i32)) {
                        {
                            _err_3581276 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3581276 != null) {
                                _gotoNext = 3581308i32;
                            } else {
                                _gotoNext = 3581335i32;
                            };
                        };
                    } else if (__value__ == (3581308i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3581276 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3581335i32;
                    } else if (__value__ == (3581335i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3581410i32;
                    } else if (__value__ == (3581410i32)) {
                        _p_3581418._flags = _flags;
                        _p_3581418._wholeRegexp = _s?.__copy__();
                        _t_3581530 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3581538i32;
                    } else if (__value__ == (3581538i32)) {
                        if (_t_3581530 != (stdgo.Go.str())) {
                            _gotoNext = 3581550i32;
                        } else {
                            _gotoNext = 3584940i32;
                        };
                    } else if (__value__ == (3581550i32)) {
                        _repeat_3581554 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3581568i32;
                    } else if (__value__ == (3581568i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3581581i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3581530[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3581694i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3581964i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3582061i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3582157i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3582272i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3582402i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3582516i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3582598i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3582899i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3583455i32;
                                } else {
                                    _gotoNext = 3581597i32;
                                };
                            };
                        } else {
                            _gotoNext = 3584915i32;
                        };
                    } else if (__value__ == (3581597i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3581530?.__copy__());
                                _c_3581438 = __tmp__._0;
                                _t_3581530 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3581648i32;
                            } else {
                                _gotoNext = 3581678i32;
                            };
                        };
                    } else if (__value__ == (3581648i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3581678i32;
                    } else if (__value__ == (3581678i32)) {
                        _p_3581418._literal(_c_3581438);
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3581694i32)) {
                        if ((((_p_3581418._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3581530.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3581530[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3581759i32;
                        } else {
                            _gotoNext = 3581902i32;
                        };
                    } else if (__value__ == (3581759i32)) {
                        {
                            {
                                var __tmp__ = _p_3581418._parsePerlFlags(_t_3581530?.__copy__());
                                _t_3581530 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3581855i32;
                            } else {
                                _gotoNext = 3581888i32;
                            };
                        };
                    } else if (__value__ == (3581855i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3581888i32;
                    } else if (__value__ == (3581888i32)) {
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3581902i32)) {
                        _p_3581418._numCap++;
                        _p_3581418._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3581418._numCap;
                        _t_3581530 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3581964i32)) {
                        {
                            _err = _p_3581418._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3582019i32;
                            } else {
                                _gotoNext = 3582049i32;
                            };
                        };
                    } else if (__value__ == (3582019i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3582049i32;
                    } else if (__value__ == (3582049i32)) {
                        _t_3581530 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3582061i32)) {
                        {
                            _err = _p_3581418._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3582115i32;
                            } else {
                                _gotoNext = 3582145i32;
                            };
                        };
                    } else if (__value__ == (3582115i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3582145i32;
                    } else if (__value__ == (3582145i32)) {
                        _t_3581530 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3582157i32)) {
                        if ((_p_3581418._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3582194i32;
                        } else {
                            _gotoNext = 3582228i32;
                        };
                    } else if (__value__ == (3582194i32)) {
                        _p_3581418._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3582260i32;
                    } else if (__value__ == (3582228i32)) {
                        _gotoNext = 3582228i32;
                        _p_3581418._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3582260i32;
                    } else if (__value__ == (3582260i32)) {
                        _t_3581530 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3582272i32)) {
                        if ((_p_3581418._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3582309i32;
                        } else {
                            _gotoNext = 3582360i32;
                        };
                    } else if (__value__ == (3582309i32)) {
                        _p_3581418._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3581418._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3582390i32;
                    } else if (__value__ == (3582360i32)) {
                        _gotoNext = 3582360i32;
                        _p_3581418._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3582390i32;
                    } else if (__value__ == (3582390i32)) {
                        _t_3581530 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3582402i32)) {
                        if ((_p_3581418._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3582437i32;
                        } else {
                            _gotoNext = 3582469i32;
                        };
                    } else if (__value__ == (3582437i32)) {
                        _p_3581418._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3582504i32;
                    } else if (__value__ == (3582469i32)) {
                        _gotoNext = 3582469i32;
                        _p_3581418._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3582504i32;
                    } else if (__value__ == (3582504i32)) {
                        _t_3581530 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3582516i32)) {
                        {
                            {
                                var __tmp__ = _p_3581418._parseClass(_t_3581530?.__copy__());
                                _t_3581530 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3582569i32;
                            } else {
                                _gotoNext = 3584915i32;
                            };
                        };
                    } else if (__value__ == (3582569i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3582598i32)) {
                        _before_3582621 = _t_3581530?.__copy__();
                        _gotoNext = 3582636i32;
                    } else if (__value__ == (3582636i32)) {
                        {
                            final __value__ = _t_3581530[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3582653i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3582682i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3582711i32;
                            } else {
                                _gotoNext = 3582746i32;
                            };
                        };
                    } else if (__value__ == (3582653i32)) {
                        _op_3581456 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3582746i32;
                    } else if (__value__ == (3582682i32)) {
                        _op_3581456 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3582746i32;
                    } else if (__value__ == (3582711i32)) {
                        _op_3581456 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3582746i32;
                    } else if (__value__ == (3582746i32)) {
                        _after_3582746 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3581418._repeat(_op_3581456, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3582621?.__copy__(), _after_3582746?.__copy__(), _lastRepeat_3581472?.__copy__());
                                _after_3582746 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3582838i32;
                            } else {
                                _gotoNext = 3582868i32;
                            };
                        };
                    } else if (__value__ == (3582838i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3582868i32;
                    } else if (__value__ == (3582868i32)) {
                        _repeat_3581554 = _before_3582621?.__copy__();
                        _t_3581530 = _after_3582746?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3582899i32)) {
                        _op_3581456 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3582929 = _t_3581530?.__copy__();
                        {
                            var __tmp__ = _p_3581418._parseRepeat(_t_3581530?.__copy__());
                            _min_3582944 = __tmp__._0;
                            _max_3582949 = __tmp__._1;
                            _after_3582954 = __tmp__._2?.__copy__();
                            _ok_3582961 = __tmp__._3;
                        };
                        if (!_ok_3582961) {
                            _gotoNext = 3582994i32;
                        } else {
                            _gotoNext = 3583102i32;
                        };
                    } else if (__value__ == (3582994i32)) {
                        _p_3581418._literal((123 : stdgo.GoInt32));
                        _t_3581530 = (_t_3581530.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3583102i32)) {
                        if (((((_min_3582944 < (0 : stdgo.GoInt) : Bool) || (_min_3582944 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3582949 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3582949 >= (0 : stdgo.GoInt) : Bool) && (_min_3582944 > _max_3582949 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3583166i32;
                        } else {
                            _gotoNext = 3583316i32;
                        };
                    } else if (__value__ == (3583166i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3582929.__slice__(0, ((_before_3582929.length) - (_after_3582954.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3583316i32;
                    } else if (__value__ == (3583316i32)) {
                        {
                            {
                                var __tmp__ = _p_3581418._repeat(_op_3581456, _min_3582944, _max_3582949, _before_3582929?.__copy__(), _after_3582954?.__copy__(), _lastRepeat_3581472?.__copy__());
                                _after_3582954 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3583394i32;
                            } else {
                                _gotoNext = 3583424i32;
                            };
                        };
                    } else if (__value__ == (3583394i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3583424i32;
                    } else if (__value__ == (3583424i32)) {
                        _repeat_3581554 = _before_3582929?.__copy__();
                        _t_3581530 = _after_3582954?.__copy__();
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3583455i32)) {
                        if ((((_p_3581418._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3581530.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3583506i32;
                        } else {
                            _gotoNext = 3584230i32;
                        };
                    } else if (__value__ == (3583506i32)) {
                        _gotoNext = 3583512i32;
                    } else if (__value__ == (3583512i32)) {
                        {
                            final __value__ = _t_3581530[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3583530i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3583603i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3583679i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3583757i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3583852i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3584148i32;
                            } else {
                                _gotoNext = 3584230i32;
                            };
                        };
                    } else if (__value__ == (3583530i32)) {
                        _p_3581418._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3581530 = (_t_3581530.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3583603i32)) {
                        _p_3581418._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3581530 = (_t_3581530.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3583679i32)) {
                        _p_3581418._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3581530 = (_t_3581530.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3583757i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3581530.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3584230i32;
                    } else if (__value__ == (3583852i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3581530.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3583917 = __tmp__._0?.__copy__();
                            _t_3581530 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3583975i32;
                    } else if (__value__ == (3583975i32)) {
                        if (_lit_3583917 != (stdgo.Go.str())) {
                            _gotoNext = 3583989i32;
                        } else {
                            _gotoNext = 3584128i32;
                        };
                    } else if (__value__ == (3583989i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3583917?.__copy__());
                            _c_3583997 = __tmp__._0;
                            _rest_3584000 = __tmp__._1?.__copy__();
                            _err_3584006 = __tmp__._2;
                        };
                        if (_err_3584006 != null) {
                            _gotoNext = 3584047i32;
                        } else {
                            _gotoNext = 3584086i32;
                        };
                    } else if (__value__ == (3584047i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3584006 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3584086i32;
                    } else if (__value__ == (3584086i32)) {
                        _p_3581418._literal(_c_3583997);
                        _lit_3583917 = _rest_3584000?.__copy__();
                        _gotoNext = 3583975i32;
                    } else if (__value__ == (3584128i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3584148i32)) {
                        _p_3581418._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3581530 = (_t_3581530.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3584230i32)) {
                        _re_3584230 = _p_3581418._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3584230.flags = _p_3581418._flags;
                        if ((((_t_3581530.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3581530[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3581530[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3584386i32;
                        } else {
                            _gotoNext = 3584628i32;
                        };
                    } else if (__value__ == (3584386i32)) {
                        {
                            var __tmp__ = _p_3581418._parseUnicodeClass(_t_3581530?.__copy__(), (_re_3584230.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3584392 = __tmp__._0;
                            _rest_3584395 = __tmp__._1?.__copy__();
                            _err_3584401 = __tmp__._2;
                        };
                        if (_err_3584401 != null) {
                            _gotoNext = 3584463i32;
                        } else {
                            _gotoNext = 3584496i32;
                        };
                    } else if (__value__ == (3584463i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3584401 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3584496i32;
                    } else if (__value__ == (3584496i32)) {
                        if (_r_3584392 != null) {
                            _gotoNext = 3584508i32;
                        } else {
                            _gotoNext = 3584628i32;
                        };
                    } else if (__value__ == (3584508i32)) {
                        _re_3584230.rune = _r_3584392;
                        _t_3581530 = _rest_3584395?.__copy__();
                        _p_3581418._push(_re_3584230);
                        bigSwitchBreak = true;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3584628i32)) {
                        {
                            {
                                var __tmp__ = _p_3581418._parsePerlClassEscape(_t_3581530?.__copy__(), (_re_3584230.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3584631 = __tmp__._0;
                                _rest_3584634 = __tmp__._1?.__copy__();
                            };
                            if (_r_3584631 != null) {
                                _gotoNext = 3584692i32;
                            } else {
                                _gotoNext = 3584766i32;
                            };
                        };
                    } else if (__value__ == (3584692i32)) {
                        _re_3584230.rune = _r_3584631;
                        _t_3581530 = _rest_3584634?.__copy__();
                        _p_3581418._push(_re_3584230);
                        bigSwitchBreak = true;
                        _gotoNext = 3581581i32;
                    } else if (__value__ == (3584766i32)) {
                        _p_3581418._reuse(_re_3584230);
                        {
                            {
                                var __tmp__ = _p_3581418._parseEscape(_t_3581530?.__copy__());
                                _c_3581438 = __tmp__._0;
                                _t_3581530 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3584866i32;
                            } else {
                                _gotoNext = 3584896i32;
                            };
                        };
                    } else if (__value__ == (3584866i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3584896i32;
                    } else if (__value__ == (3584896i32)) {
                        _p_3581418._literal(_c_3581438);
                        _gotoNext = 3584915i32;
                    } else if (__value__ == (3584915i32)) {
                        _lastRepeat_3581472 = _repeat_3581554?.__copy__();
                        _gotoNext = 3581538i32;
                    } else if (__value__ == (3584940i32)) {
                        _p_3581418._concat();
                        if (_p_3581418._swapVerticalBar()) {
                            _gotoNext = 3584975i32;
                        } else {
                            _gotoNext = 3585040i32;
                        };
                    } else if (__value__ == (3584975i32)) {
                        _p_3581418._stack = (_p_3581418._stack.__slice__(0, ((_p_3581418._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3585040i32;
                    } else if (__value__ == (3585040i32)) {
                        _p_3581418._alternate();
                        _n_3585056 = (_p_3581418._stack.length);
                        if (_n_3585056 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3585085i32;
                        } else {
                            _gotoNext = 3585132i32;
                        };
                    } else if (__value__ == (3585085i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3585132i32;
                    } else if (__value__ == (3585132i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3581418._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
