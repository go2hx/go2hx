package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _min_3280357:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3280159:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3278831:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _ok_3280374:Bool = false;
            var _n_3282469:stdgo.GoInt = (0 : stdgo.GoInt);
            var _max_3280362:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3278943:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3278869:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3278851:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3281814:stdgo.Error = (null : stdgo.Error);
            var _r_3281805:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3281419:stdgo.Error = (null : stdgo.Error);
            var _c_3281410:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3281413:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3280342:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _after_3280367:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3278689:stdgo.Error = (null : stdgo.Error);
            var _rest_3281808:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3281643:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3281330:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3278885:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3282044:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _repeat_3278967:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3282047:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3280034:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
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
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
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
                                    return;
                                };
                            };
                            a();
                        });
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3278642i32;
                        } else {
                            _gotoNext = 3278823i32;
                        };
                    } else if (__value__ == (3278642i32)) {
                        {
                            _err_3278689 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3278689 != null) {
                                _gotoNext = 3278721i32;
                            } else {
                                _gotoNext = 3278748i32;
                            };
                        };
                    } else if (__value__ == (3278721i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3278689 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3278748i32;
                    } else if (__value__ == (3278748i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3278823i32;
                    } else if (__value__ == (3278823i32)) {
                        _p_3278831._flags = _flags;
                        _p_3278831._wholeRegexp = _s?.__copy__();
                        _t_3278943 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3278951i32;
                    } else if (__value__ == (3278951i32)) {
                        if (_t_3278943 != (stdgo.Go.str())) {
                            _gotoNext = 3278963i32;
                        } else {
                            _gotoNext = 3282353i32;
                        };
                    } else if (__value__ == (3278963i32)) {
                        _repeat_3278967 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3278981i32;
                    } else if (__value__ == (3278981i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3278994i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3278943[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279107i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279377i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279474i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279570i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279685i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279815i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3279929i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3280011i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3280312i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3280868i32;
                                } else {
                                    _gotoNext = 3279010i32;
                                };
                            };
                        } else {
                            _gotoNext = 3282328i32;
                        };
                    } else if (__value__ == (3279010i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3278943?.__copy__());
                                _c_3278851 = __tmp__._0;
                                _t_3278943 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3279061i32;
                            } else {
                                _gotoNext = 3279091i32;
                            };
                        };
                    } else if (__value__ == (3279061i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3279091i32;
                    } else if (__value__ == (3279091i32)) {
                        _p_3278831._literal(_c_3278851);
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279107i32)) {
                        if ((((_p_3278831._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3278943.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3278943[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3279172i32;
                        } else {
                            _gotoNext = 3279315i32;
                        };
                    } else if (__value__ == (3279172i32)) {
                        {
                            {
                                var __tmp__ = _p_3278831._parsePerlFlags(_t_3278943?.__copy__());
                                _t_3278943 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3279268i32;
                            } else {
                                _gotoNext = 3279301i32;
                            };
                        };
                    } else if (__value__ == (3279268i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3279301i32;
                    } else if (__value__ == (3279301i32)) {
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279315i32)) {
                        _p_3278831._numCap++;
                        _p_3278831._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3278831._numCap;
                        _t_3278943 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279377i32)) {
                        {
                            _err = _p_3278831._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3279432i32;
                            } else {
                                _gotoNext = 3279462i32;
                            };
                        };
                    } else if (__value__ == (3279432i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3279462i32;
                    } else if (__value__ == (3279462i32)) {
                        _t_3278943 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279474i32)) {
                        {
                            _err = _p_3278831._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3279528i32;
                            } else {
                                _gotoNext = 3279558i32;
                            };
                        };
                    } else if (__value__ == (3279528i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3279558i32;
                    } else if (__value__ == (3279558i32)) {
                        _t_3278943 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279570i32)) {
                        if ((_p_3278831._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3279607i32;
                        } else {
                            _gotoNext = 3279641i32;
                        };
                    } else if (__value__ == (3279607i32)) {
                        _p_3278831._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3279673i32;
                    } else if (__value__ == (3279641i32)) {
                        _gotoNext = 3279641i32;
                        _p_3278831._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3279673i32;
                    } else if (__value__ == (3279673i32)) {
                        _t_3278943 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279685i32)) {
                        if ((_p_3278831._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3279722i32;
                        } else {
                            _gotoNext = 3279773i32;
                        };
                    } else if (__value__ == (3279722i32)) {
                        _p_3278831._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3278831._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3279803i32;
                    } else if (__value__ == (3279773i32)) {
                        _gotoNext = 3279773i32;
                        _p_3278831._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3279803i32;
                    } else if (__value__ == (3279803i32)) {
                        _t_3278943 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279815i32)) {
                        if ((_p_3278831._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3279850i32;
                        } else {
                            _gotoNext = 3279882i32;
                        };
                    } else if (__value__ == (3279850i32)) {
                        _p_3278831._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3279917i32;
                    } else if (__value__ == (3279882i32)) {
                        _gotoNext = 3279882i32;
                        _p_3278831._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3279917i32;
                    } else if (__value__ == (3279917i32)) {
                        _t_3278943 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3279929i32)) {
                        {
                            {
                                var __tmp__ = _p_3278831._parseClass(_t_3278943?.__copy__());
                                _t_3278943 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3279982i32;
                            } else {
                                _gotoNext = 3282328i32;
                            };
                        };
                    } else if (__value__ == (3279982i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3280011i32)) {
                        _before_3280034 = _t_3278943?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3280049i32;
                    } else if (__value__ == (3280049i32)) {
                        {
                            final __value__ = _t_3278943[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3280066i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3280095i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3280124i32;
                            } else {
                                _gotoNext = 3280159i32;
                            };
                        };
                    } else if (__value__ == (3280066i32)) {
                        _op_3278869 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3280159i32;
                    } else if (__value__ == (3280095i32)) {
                        _op_3278869 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3280159i32;
                    } else if (__value__ == (3280124i32)) {
                        _op_3278869 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3280159i32;
                    } else if (__value__ == (3280159i32)) {
                        _after_3280159 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3278831._repeat(_op_3278869, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3280034?.__copy__(), _after_3280159?.__copy__(), _lastRepeat_3278885?.__copy__());
                                _after_3280159 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3280251i32;
                            } else {
                                _gotoNext = 3280281i32;
                            };
                        };
                    } else if (__value__ == (3280251i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3280281i32;
                    } else if (__value__ == (3280281i32)) {
                        _repeat_3278967 = _before_3280034?.__copy__();
                        _t_3278943 = _after_3280159?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3280312i32)) {
                        _op_3278869 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3280342 = _t_3278943?.__copy__();
                        {
                            var __tmp__ = _p_3278831._parseRepeat(_t_3278943?.__copy__());
                            _min_3280357 = __tmp__._0;
                            _max_3280362 = __tmp__._1;
                            _after_3280367 = __tmp__._2?.__copy__();
                            _ok_3280374 = __tmp__._3;
                        };
                        if (!_ok_3280374) {
                            _gotoNext = 3280407i32;
                        } else {
                            _gotoNext = 3280515i32;
                        };
                    } else if (__value__ == (3280407i32)) {
                        _p_3278831._literal((123 : stdgo.GoInt32));
                        _t_3278943 = (_t_3278943.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3280515i32)) {
                        if (((((_min_3280357 < (0 : stdgo.GoInt) : Bool) || (_min_3280357 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3280362 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3280362 >= (0 : stdgo.GoInt) : Bool) && (_min_3280357 > _max_3280362 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3280579i32;
                        } else {
                            _gotoNext = 3280729i32;
                        };
                    } else if (__value__ == (3280579i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3280342.__slice__(0, ((_before_3280342.length) - (_after_3280367.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3280729i32;
                    } else if (__value__ == (3280729i32)) {
                        {
                            {
                                var __tmp__ = _p_3278831._repeat(_op_3278869, _min_3280357, _max_3280362, _before_3280342?.__copy__(), _after_3280367?.__copy__(), _lastRepeat_3278885?.__copy__());
                                _after_3280367 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3280807i32;
                            } else {
                                _gotoNext = 3280837i32;
                            };
                        };
                    } else if (__value__ == (3280807i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3280837i32;
                    } else if (__value__ == (3280837i32)) {
                        _repeat_3278967 = _before_3280342?.__copy__();
                        _t_3278943 = _after_3280367?.__copy__();
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3280868i32)) {
                        if ((((_p_3278831._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3278943.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3280919i32;
                        } else {
                            _gotoNext = 3281643i32;
                        };
                    } else if (__value__ == (3280919i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3280925i32;
                    } else if (__value__ == (3280925i32)) {
                        {
                            final __value__ = _t_3278943[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3280943i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3281016i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3281092i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3281170i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3281265i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3281561i32;
                            } else {
                                _gotoNext = 3281643i32;
                            };
                        };
                    } else if (__value__ == (3280943i32)) {
                        _p_3278831._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3278943 = (_t_3278943.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3281016i32)) {
                        _p_3278831._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3278943 = (_t_3278943.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3281092i32)) {
                        _p_3278831._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3278943 = (_t_3278943.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3281170i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3278943.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3281643i32;
                    } else if (__value__ == (3281265i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3278943.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3281330 = __tmp__._0?.__copy__();
                            _t_3278943 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3281388i32;
                    } else if (__value__ == (3281388i32)) {
                        if (_lit_3281330 != (stdgo.Go.str())) {
                            _gotoNext = 3281402i32;
                        } else {
                            _gotoNext = 3281541i32;
                        };
                    } else if (__value__ == (3281402i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3281330?.__copy__());
                            _c_3281410 = __tmp__._0;
                            _rest_3281413 = __tmp__._1?.__copy__();
                            _err_3281419 = __tmp__._2;
                        };
                        if (_err_3281419 != null) {
                            _gotoNext = 3281460i32;
                        } else {
                            _gotoNext = 3281499i32;
                        };
                    } else if (__value__ == (3281460i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3281419 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3281499i32;
                    } else if (__value__ == (3281499i32)) {
                        _p_3278831._literal(_c_3281410);
                        _lit_3281330 = _rest_3281413?.__copy__();
                        _gotoNext = 3281388i32;
                    } else if (__value__ == (3281541i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3281561i32)) {
                        _p_3278831._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3278943 = (_t_3278943.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3281643i32)) {
                        _re_3281643 = _p_3278831._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3281643.flags = _p_3278831._flags;
                        if ((((_t_3278943.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3278943[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3278943[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3281799i32;
                        } else {
                            _gotoNext = 3282041i32;
                        };
                    } else if (__value__ == (3281799i32)) {
                        {
                            var __tmp__ = _p_3278831._parseUnicodeClass(_t_3278943?.__copy__(), (_re_3281643.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3281805 = __tmp__._0;
                            _rest_3281808 = __tmp__._1?.__copy__();
                            _err_3281814 = __tmp__._2;
                        };
                        if (_err_3281814 != null) {
                            _gotoNext = 3281876i32;
                        } else {
                            _gotoNext = 3281909i32;
                        };
                    } else if (__value__ == (3281876i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3281814 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3281909i32;
                    } else if (__value__ == (3281909i32)) {
                        if (_r_3281805 != null) {
                            _gotoNext = 3281921i32;
                        } else {
                            _gotoNext = 3282041i32;
                        };
                    } else if (__value__ == (3281921i32)) {
                        _re_3281643.rune = _r_3281805;
                        _t_3278943 = _rest_3281808?.__copy__();
                        _p_3278831._push(_re_3281643);
                        bigSwitchBreak = true;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3282041i32)) {
                        {
                            {
                                var __tmp__ = _p_3278831._parsePerlClassEscape(_t_3278943?.__copy__(), (_re_3281643.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3282044 = __tmp__._0;
                                _rest_3282047 = __tmp__._1?.__copy__();
                            };
                            if (_r_3282044 != null) {
                                _gotoNext = 3282105i32;
                            } else {
                                _gotoNext = 3282179i32;
                            };
                        };
                    } else if (__value__ == (3282105i32)) {
                        _re_3281643.rune = _r_3282044;
                        _t_3278943 = _rest_3282047?.__copy__();
                        _p_3278831._push(_re_3281643);
                        bigSwitchBreak = true;
                        _gotoNext = 3278994i32;
                    } else if (__value__ == (3282179i32)) {
                        _p_3278831._reuse(_re_3281643);
                        {
                            {
                                var __tmp__ = _p_3278831._parseEscape(_t_3278943?.__copy__());
                                _c_3278851 = __tmp__._0;
                                _t_3278943 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3282279i32;
                            } else {
                                _gotoNext = 3282309i32;
                            };
                        };
                    } else if (__value__ == (3282279i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3282309i32;
                    } else if (__value__ == (3282309i32)) {
                        _p_3278831._literal(_c_3278851);
                        _gotoNext = 3282328i32;
                    } else if (__value__ == (3282328i32)) {
                        _lastRepeat_3278885 = _repeat_3278967?.__copy__();
                        _gotoNext = 3278951i32;
                    } else if (__value__ == (3282353i32)) {
                        _p_3278831._concat();
                        if (_p_3278831._swapVerticalBar()) {
                            _gotoNext = 3282388i32;
                        } else {
                            _gotoNext = 3282453i32;
                        };
                    } else if (__value__ == (3282388i32)) {
                        _p_3278831._stack = (_p_3278831._stack.__slice__(0, ((_p_3278831._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3282453i32;
                    } else if (__value__ == (3282453i32)) {
                        _p_3278831._alternate();
                        _n_3282469 = (_p_3278831._stack.length);
                        if (_n_3282469 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3282498i32;
                        } else {
                            _gotoNext = 3282545i32;
                        };
                    } else if (__value__ == (3282498i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3282545i32;
                    } else if (__value__ == (3282545i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3278831._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
