package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3497437:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3496720:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3495757:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3496809:stdgo.Error = (null : stdgo.Error);
            var _c_3496800:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3495424:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3494357:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3494275:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3495764:Bool = false;
            var _max_3495752:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3494333:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3494259:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _n_3497859:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3497198:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3497033:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _rest_3496803:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3495747:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3497434:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3497204:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _before_3495732:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3494241:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _r_3497195:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3495549:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3494221:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3494079:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3494032i32;
                        } else {
                            _gotoNext = 3494213i32;
                        };
                    } else if (__value__ == (3494032i32)) {
                        {
                            _err_3494079 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3494079 != null) {
                                _gotoNext = 3494111i32;
                            } else {
                                _gotoNext = 3494138i32;
                            };
                        };
                    } else if (__value__ == (3494111i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3494079 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494138i32;
                    } else if (__value__ == (3494138i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494213i32;
                    } else if (__value__ == (3494213i32)) {
                        _p_3494221._flags = _flags;
                        _p_3494221._wholeRegexp = _s?.__copy__();
                        _t_3494333 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3494341i32;
                    } else if (__value__ == (3494341i32)) {
                        if (_t_3494333 != (stdgo.Go.str())) {
                            _gotoNext = 3494353i32;
                        } else {
                            _gotoNext = 3497743i32;
                        };
                    } else if (__value__ == (3494353i32)) {
                        _repeat_3494357 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3494371i32;
                    } else if (__value__ == (3494371i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3494384i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3494333[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494497i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494767i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494864i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494960i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495075i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495205i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495319i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495401i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3495702i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3496258i32;
                                } else {
                                    _gotoNext = 3494400i32;
                                };
                            };
                        } else {
                            _gotoNext = 3497718i32;
                        };
                    } else if (__value__ == (3494400i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3494333?.__copy__());
                                _c_3494241 = __tmp__._0;
                                _t_3494333 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3494451i32;
                            } else {
                                _gotoNext = 3494481i32;
                            };
                        };
                    } else if (__value__ == (3494451i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494481i32;
                    } else if (__value__ == (3494481i32)) {
                        _p_3494221._literal(_c_3494241);
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3494497i32)) {
                        if ((((_p_3494221._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3494333.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3494333[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3494562i32;
                        } else {
                            _gotoNext = 3494705i32;
                        };
                    } else if (__value__ == (3494562i32)) {
                        {
                            {
                                var __tmp__ = _p_3494221._parsePerlFlags(_t_3494333?.__copy__());
                                _t_3494333 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3494658i32;
                            } else {
                                _gotoNext = 3494691i32;
                            };
                        };
                    } else if (__value__ == (3494658i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494691i32;
                    } else if (__value__ == (3494691i32)) {
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3494705i32)) {
                        _p_3494221._numCap++;
                        _p_3494221._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3494221._numCap;
                        _t_3494333 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3494767i32)) {
                        {
                            _err = _p_3494221._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3494822i32;
                            } else {
                                _gotoNext = 3494852i32;
                            };
                        };
                    } else if (__value__ == (3494822i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494852i32;
                    } else if (__value__ == (3494852i32)) {
                        _t_3494333 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3494864i32)) {
                        {
                            _err = _p_3494221._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3494918i32;
                            } else {
                                _gotoNext = 3494948i32;
                            };
                        };
                    } else if (__value__ == (3494918i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494948i32;
                    } else if (__value__ == (3494948i32)) {
                        _t_3494333 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3494960i32)) {
                        if ((_p_3494221._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3494997i32;
                        } else {
                            _gotoNext = 3495031i32;
                        };
                    } else if (__value__ == (3494997i32)) {
                        _p_3494221._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3495063i32;
                    } else if (__value__ == (3495031i32)) {
                        _p_3494221._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3495063i32;
                    } else if (__value__ == (3495063i32)) {
                        _t_3494333 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3495075i32)) {
                        if ((_p_3494221._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3495112i32;
                        } else {
                            _gotoNext = 3495163i32;
                        };
                    } else if (__value__ == (3495112i32)) {
                        _p_3494221._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3494221._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3495193i32;
                    } else if (__value__ == (3495163i32)) {
                        _p_3494221._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3495193i32;
                    } else if (__value__ == (3495193i32)) {
                        _t_3494333 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3495205i32)) {
                        if ((_p_3494221._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3495240i32;
                        } else {
                            _gotoNext = 3495272i32;
                        };
                    } else if (__value__ == (3495240i32)) {
                        _p_3494221._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3495307i32;
                    } else if (__value__ == (3495272i32)) {
                        _p_3494221._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3495307i32;
                    } else if (__value__ == (3495307i32)) {
                        _t_3494333 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3495319i32)) {
                        {
                            {
                                var __tmp__ = _p_3494221._parseClass(_t_3494333?.__copy__());
                                _t_3494333 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3495372i32;
                            } else {
                                _gotoNext = 3497718i32;
                            };
                        };
                    } else if (__value__ == (3495372i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3495401i32)) {
                        _before_3495424 = _t_3494333?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3495439i32;
                    } else if (__value__ == (3495439i32)) {
                        {
                            final __value__ = _t_3494333[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3495456i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3495485i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3495514i32;
                            } else {
                                _gotoNext = 3495549i32;
                            };
                        };
                    } else if (__value__ == (3495456i32)) {
                        _op_3494259 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3495549i32;
                    } else if (__value__ == (3495485i32)) {
                        _op_3494259 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3495549i32;
                    } else if (__value__ == (3495514i32)) {
                        _op_3494259 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3495549i32;
                    } else if (__value__ == (3495549i32)) {
                        _after_3495549 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3494221._repeat(_op_3494259, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3495424?.__copy__(), _after_3495549?.__copy__(), _lastRepeat_3494275?.__copy__());
                                _after_3495549 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3495641i32;
                            } else {
                                _gotoNext = 3495671i32;
                            };
                        };
                    } else if (__value__ == (3495641i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3495671i32;
                    } else if (__value__ == (3495671i32)) {
                        _repeat_3494357 = _before_3495424?.__copy__();
                        _t_3494333 = _after_3495549?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3495702i32)) {
                        _op_3494259 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3495732 = _t_3494333?.__copy__();
                        {
                            var __tmp__ = _p_3494221._parseRepeat(_t_3494333?.__copy__());
                            _min_3495747 = __tmp__._0;
                            _max_3495752 = __tmp__._1;
                            _after_3495757 = __tmp__._2?.__copy__();
                            _ok_3495764 = __tmp__._3;
                        };
                        if (!_ok_3495764) {
                            _gotoNext = 3495797i32;
                        } else {
                            _gotoNext = 3495905i32;
                        };
                    } else if (__value__ == (3495797i32)) {
                        _p_3494221._literal((123 : stdgo.GoInt32));
                        _t_3494333 = (_t_3494333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3495905i32)) {
                        if (((((_min_3495747 < (0 : stdgo.GoInt) : Bool) || (_min_3495747 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3495752 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3495752 >= (0 : stdgo.GoInt) : Bool) && (_min_3495747 > _max_3495752 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3495969i32;
                        } else {
                            _gotoNext = 3496119i32;
                        };
                    } else if (__value__ == (3495969i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3495732.__slice__(0, ((_before_3495732.length) - (_after_3495757.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3496119i32;
                    } else if (__value__ == (3496119i32)) {
                        {
                            {
                                var __tmp__ = _p_3494221._repeat(_op_3494259, _min_3495747, _max_3495752, _before_3495732?.__copy__(), _after_3495757?.__copy__(), _lastRepeat_3494275?.__copy__());
                                _after_3495757 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3496197i32;
                            } else {
                                _gotoNext = 3496227i32;
                            };
                        };
                    } else if (__value__ == (3496197i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3496227i32;
                    } else if (__value__ == (3496227i32)) {
                        _repeat_3494357 = _before_3495732?.__copy__();
                        _t_3494333 = _after_3495757?.__copy__();
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3496258i32)) {
                        if ((((_p_3494221._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3494333.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3496309i32;
                        } else {
                            _gotoNext = 3497033i32;
                        };
                    } else if (__value__ == (3496309i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3496315i32;
                    } else if (__value__ == (3496315i32)) {
                        {
                            final __value__ = _t_3494333[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3496333i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3496406i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3496482i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3496560i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3496655i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3496951i32;
                            } else {
                                _gotoNext = 3497033i32;
                            };
                        };
                    } else if (__value__ == (3496333i32)) {
                        _p_3494221._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494333 = (_t_3494333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3496406i32)) {
                        _p_3494221._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494333 = (_t_3494333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3496482i32)) {
                        _p_3494221._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494333 = (_t_3494333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3496560i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3494333.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497033i32;
                    } else if (__value__ == (3496655i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3494333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3496720 = __tmp__._0?.__copy__();
                            _t_3494333 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3496778i32;
                    } else if (__value__ == (3496778i32)) {
                        if (_lit_3496720 != (stdgo.Go.str())) {
                            _gotoNext = 3496792i32;
                        } else {
                            _gotoNext = 3496931i32;
                        };
                    } else if (__value__ == (3496792i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3496720?.__copy__());
                            _c_3496800 = __tmp__._0;
                            _rest_3496803 = __tmp__._1?.__copy__();
                            _err_3496809 = __tmp__._2;
                        };
                        if (_err_3496809 != null) {
                            _gotoNext = 3496850i32;
                        } else {
                            _gotoNext = 3496889i32;
                        };
                    } else if (__value__ == (3496850i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3496809 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3496889i32;
                    } else if (__value__ == (3496889i32)) {
                        _p_3494221._literal(_c_3496800);
                        _lit_3496720 = _rest_3496803?.__copy__();
                        _gotoNext = 3496778i32;
                    } else if (__value__ == (3496931i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3496951i32)) {
                        _p_3494221._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3494333 = (_t_3494333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3497033i32)) {
                        _re_3497033 = _p_3494221._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3497033.flags = _p_3494221._flags;
                        if ((((_t_3494333.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3494333[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3494333[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3497189i32;
                        } else {
                            _gotoNext = 3497431i32;
                        };
                    } else if (__value__ == (3497189i32)) {
                        {
                            var __tmp__ = _p_3494221._parseUnicodeClass(_t_3494333?.__copy__(), (_re_3497033.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3497195 = __tmp__._0;
                            _rest_3497198 = __tmp__._1?.__copy__();
                            _err_3497204 = __tmp__._2;
                        };
                        if (_err_3497204 != null) {
                            _gotoNext = 3497266i32;
                        } else {
                            _gotoNext = 3497299i32;
                        };
                    } else if (__value__ == (3497266i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3497204 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497299i32;
                    } else if (__value__ == (3497299i32)) {
                        if (_r_3497195 != null) {
                            _gotoNext = 3497311i32;
                        } else {
                            _gotoNext = 3497431i32;
                        };
                    } else if (__value__ == (3497311i32)) {
                        _re_3497033.rune = _r_3497195;
                        _t_3494333 = _rest_3497198?.__copy__();
                        _p_3494221._push(_re_3497033);
                        bigSwitchBreak = true;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3497431i32)) {
                        {
                            {
                                var __tmp__ = _p_3494221._parsePerlClassEscape(_t_3494333?.__copy__(), (_re_3497033.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3497434 = __tmp__._0;
                                _rest_3497437 = __tmp__._1?.__copy__();
                            };
                            if (_r_3497434 != null) {
                                _gotoNext = 3497495i32;
                            } else {
                                _gotoNext = 3497569i32;
                            };
                        };
                    } else if (__value__ == (3497495i32)) {
                        _re_3497033.rune = _r_3497434;
                        _t_3494333 = _rest_3497437?.__copy__();
                        _p_3494221._push(_re_3497033);
                        bigSwitchBreak = true;
                        _gotoNext = 3494384i32;
                    } else if (__value__ == (3497569i32)) {
                        _p_3494221._reuse(_re_3497033);
                        {
                            {
                                var __tmp__ = _p_3494221._parseEscape(_t_3494333?.__copy__());
                                _c_3494241 = __tmp__._0;
                                _t_3494333 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3497669i32;
                            } else {
                                _gotoNext = 3497699i32;
                            };
                        };
                    } else if (__value__ == (3497669i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497699i32;
                    } else if (__value__ == (3497699i32)) {
                        _p_3494221._literal(_c_3494241);
                        _gotoNext = 3497718i32;
                    } else if (__value__ == (3497718i32)) {
                        _lastRepeat_3494275 = _repeat_3494357?.__copy__();
                        _gotoNext = 3494341i32;
                    } else if (__value__ == (3497743i32)) {
                        _p_3494221._concat();
                        if (_p_3494221._swapVerticalBar()) {
                            _gotoNext = 3497778i32;
                        } else {
                            _gotoNext = 3497843i32;
                        };
                    } else if (__value__ == (3497778i32)) {
                        _p_3494221._stack = (_p_3494221._stack.__slice__(0, ((_p_3494221._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3497843i32;
                    } else if (__value__ == (3497843i32)) {
                        _p_3494221._alternate();
                        _n_3497859 = (_p_3494221._stack.length);
                        if (_n_3497859 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3497888i32;
                        } else {
                            _gotoNext = 3497935i32;
                        };
                    } else if (__value__ == (3497888i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3497935i32;
                    } else if (__value__ == (3497935i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3494221._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
