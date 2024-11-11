package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3544740:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3544339:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _before_3543038:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3544510:stdgo.Error = (null : stdgo.Error);
            var _rest_3544109:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3541527:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3544504:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3543053:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3541565:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3541385:stdgo.Error = (null : stdgo.Error);
            var _n_3545165:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lit_3544026:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _c_3544106:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _t_3541639:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3544743:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3543063:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3542730:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3544501:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _max_3543058:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3542855:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3541547:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3544115:stdgo.Error = (null : stdgo.Error);
            var _ok_3543070:Bool = false;
            var _repeat_3541663:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3541581:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3541338i32;
                        } else {
                            _gotoNext = 3541519i32;
                        };
                    } else if (__value__ == (3541338i32)) {
                        {
                            _err_3541385 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3541385 != null) {
                                _gotoNext = 3541417i32;
                            } else {
                                _gotoNext = 3541444i32;
                            };
                        };
                    } else if (__value__ == (3541417i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3541385 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3541444i32;
                    } else if (__value__ == (3541444i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3541519i32;
                    } else if (__value__ == (3541519i32)) {
                        _p_3541527._flags = _flags;
                        _p_3541527._wholeRegexp = _s?.__copy__();
                        _t_3541639 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3541647i32;
                    } else if (__value__ == (3541647i32)) {
                        if (_t_3541639 != (stdgo.Go.str())) {
                            _gotoNext = 3541659i32;
                        } else {
                            _gotoNext = 3545049i32;
                        };
                    } else if (__value__ == (3541659i32)) {
                        _repeat_3541663 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3541677i32;
                    } else if (__value__ == (3541677i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3541690i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3541639[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3541803i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3542073i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3542170i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3542266i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3542381i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3542511i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3542625i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3542707i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3543008i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3543564i32;
                                } else {
                                    _gotoNext = 3541706i32;
                                };
                            };
                        } else {
                            _gotoNext = 3545024i32;
                        };
                    } else if (__value__ == (3541706i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3541639?.__copy__());
                                _c_3541547 = __tmp__._0;
                                _t_3541639 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3541757i32;
                            } else {
                                _gotoNext = 3541787i32;
                            };
                        };
                    } else if (__value__ == (3541757i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3541787i32;
                    } else if (__value__ == (3541787i32)) {
                        _p_3541527._literal(_c_3541547);
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3541803i32)) {
                        if ((((_p_3541527._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3541639.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3541639[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3541868i32;
                        } else {
                            _gotoNext = 3542011i32;
                        };
                    } else if (__value__ == (3541868i32)) {
                        {
                            {
                                var __tmp__ = _p_3541527._parsePerlFlags(_t_3541639?.__copy__());
                                _t_3541639 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3541964i32;
                            } else {
                                _gotoNext = 3541997i32;
                            };
                        };
                    } else if (__value__ == (3541964i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3541997i32;
                    } else if (__value__ == (3541997i32)) {
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542011i32)) {
                        _p_3541527._numCap++;
                        _p_3541527._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3541527._numCap;
                        _t_3541639 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542073i32)) {
                        {
                            _err = _p_3541527._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3542128i32;
                            } else {
                                _gotoNext = 3542158i32;
                            };
                        };
                    } else if (__value__ == (3542128i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3542158i32;
                    } else if (__value__ == (3542158i32)) {
                        _t_3541639 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542170i32)) {
                        {
                            _err = _p_3541527._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3542224i32;
                            } else {
                                _gotoNext = 3542254i32;
                            };
                        };
                    } else if (__value__ == (3542224i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3542254i32;
                    } else if (__value__ == (3542254i32)) {
                        _t_3541639 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542266i32)) {
                        if ((_p_3541527._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3542303i32;
                        } else {
                            _gotoNext = 3542337i32;
                        };
                    } else if (__value__ == (3542303i32)) {
                        _p_3541527._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3542369i32;
                    } else if (__value__ == (3542337i32)) {
                        _gotoNext = 3542337i32;
                        _p_3541527._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3542369i32;
                    } else if (__value__ == (3542369i32)) {
                        _t_3541639 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542381i32)) {
                        if ((_p_3541527._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3542418i32;
                        } else {
                            _gotoNext = 3542469i32;
                        };
                    } else if (__value__ == (3542418i32)) {
                        _p_3541527._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3541527._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3542499i32;
                    } else if (__value__ == (3542469i32)) {
                        _gotoNext = 3542469i32;
                        _p_3541527._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3542499i32;
                    } else if (__value__ == (3542499i32)) {
                        _t_3541639 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542511i32)) {
                        if ((_p_3541527._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3542546i32;
                        } else {
                            _gotoNext = 3542578i32;
                        };
                    } else if (__value__ == (3542546i32)) {
                        _p_3541527._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3542613i32;
                    } else if (__value__ == (3542578i32)) {
                        _gotoNext = 3542578i32;
                        _p_3541527._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3542613i32;
                    } else if (__value__ == (3542613i32)) {
                        _t_3541639 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542625i32)) {
                        {
                            {
                                var __tmp__ = _p_3541527._parseClass(_t_3541639?.__copy__());
                                _t_3541639 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3542678i32;
                            } else {
                                _gotoNext = 3545024i32;
                            };
                        };
                    } else if (__value__ == (3542678i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3542707i32)) {
                        _before_3542730 = _t_3541639?.__copy__();
                        _gotoNext = 3542745i32;
                    } else if (__value__ == (3542745i32)) {
                        {
                            final __value__ = _t_3541639[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3542762i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3542791i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3542820i32;
                            } else {
                                _gotoNext = 3542855i32;
                            };
                        };
                    } else if (__value__ == (3542762i32)) {
                        _op_3541565 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3542855i32;
                    } else if (__value__ == (3542791i32)) {
                        _op_3541565 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3542855i32;
                    } else if (__value__ == (3542820i32)) {
                        _op_3541565 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3542855i32;
                    } else if (__value__ == (3542855i32)) {
                        _after_3542855 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3541527._repeat(_op_3541565, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3542730?.__copy__(), _after_3542855?.__copy__(), _lastRepeat_3541581?.__copy__());
                                _after_3542855 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3542947i32;
                            } else {
                                _gotoNext = 3542977i32;
                            };
                        };
                    } else if (__value__ == (3542947i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3542977i32;
                    } else if (__value__ == (3542977i32)) {
                        _repeat_3541663 = _before_3542730?.__copy__();
                        _t_3541639 = _after_3542855?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3543008i32)) {
                        _op_3541565 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3543038 = _t_3541639?.__copy__();
                        {
                            var __tmp__ = _p_3541527._parseRepeat(_t_3541639?.__copy__());
                            _min_3543053 = __tmp__._0;
                            _max_3543058 = __tmp__._1;
                            _after_3543063 = __tmp__._2?.__copy__();
                            _ok_3543070 = __tmp__._3;
                        };
                        if (!_ok_3543070) {
                            _gotoNext = 3543103i32;
                        } else {
                            _gotoNext = 3543211i32;
                        };
                    } else if (__value__ == (3543103i32)) {
                        _p_3541527._literal((123 : stdgo.GoInt32));
                        _t_3541639 = (_t_3541639.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3543211i32)) {
                        if (((((_min_3543053 < (0 : stdgo.GoInt) : Bool) || (_min_3543053 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3543058 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3543058 >= (0 : stdgo.GoInt) : Bool) && (_min_3543053 > _max_3543058 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3543275i32;
                        } else {
                            _gotoNext = 3543425i32;
                        };
                    } else if (__value__ == (3543275i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3543038.__slice__(0, ((_before_3543038.length) - (_after_3543063.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3543425i32;
                    } else if (__value__ == (3543425i32)) {
                        {
                            {
                                var __tmp__ = _p_3541527._repeat(_op_3541565, _min_3543053, _max_3543058, _before_3543038?.__copy__(), _after_3543063?.__copy__(), _lastRepeat_3541581?.__copy__());
                                _after_3543063 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3543503i32;
                            } else {
                                _gotoNext = 3543533i32;
                            };
                        };
                    } else if (__value__ == (3543503i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3543533i32;
                    } else if (__value__ == (3543533i32)) {
                        _repeat_3541663 = _before_3543038?.__copy__();
                        _t_3541639 = _after_3543063?.__copy__();
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3543564i32)) {
                        if ((((_p_3541527._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3541639.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3543615i32;
                        } else {
                            _gotoNext = 3544339i32;
                        };
                    } else if (__value__ == (3543615i32)) {
                        _gotoNext = 3543621i32;
                    } else if (__value__ == (3543621i32)) {
                        {
                            final __value__ = _t_3541639[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3543639i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3543712i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3543788i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3543866i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3543961i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3544257i32;
                            } else {
                                _gotoNext = 3544339i32;
                            };
                        };
                    } else if (__value__ == (3543639i32)) {
                        _p_3541527._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3541639 = (_t_3541639.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3543712i32)) {
                        _p_3541527._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3541639 = (_t_3541639.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3543788i32)) {
                        _p_3541527._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3541639 = (_t_3541639.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3543866i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3541639.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3544339i32;
                    } else if (__value__ == (3543961i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3541639.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3544026 = __tmp__._0?.__copy__();
                            _t_3541639 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3544084i32;
                    } else if (__value__ == (3544084i32)) {
                        if (_lit_3544026 != (stdgo.Go.str())) {
                            _gotoNext = 3544098i32;
                        } else {
                            _gotoNext = 3544237i32;
                        };
                    } else if (__value__ == (3544098i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3544026?.__copy__());
                            _c_3544106 = __tmp__._0;
                            _rest_3544109 = __tmp__._1?.__copy__();
                            _err_3544115 = __tmp__._2;
                        };
                        if (_err_3544115 != null) {
                            _gotoNext = 3544156i32;
                        } else {
                            _gotoNext = 3544195i32;
                        };
                    } else if (__value__ == (3544156i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3544115 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3544195i32;
                    } else if (__value__ == (3544195i32)) {
                        _p_3541527._literal(_c_3544106);
                        _lit_3544026 = _rest_3544109?.__copy__();
                        _gotoNext = 3544084i32;
                    } else if (__value__ == (3544237i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3544257i32)) {
                        _p_3541527._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3541639 = (_t_3541639.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3544339i32)) {
                        _re_3544339 = _p_3541527._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3544339.flags = _p_3541527._flags;
                        if ((((_t_3541639.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3541639[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3541639[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3544495i32;
                        } else {
                            _gotoNext = 3544737i32;
                        };
                    } else if (__value__ == (3544495i32)) {
                        {
                            var __tmp__ = _p_3541527._parseUnicodeClass(_t_3541639?.__copy__(), (_re_3544339.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3544501 = __tmp__._0;
                            _rest_3544504 = __tmp__._1?.__copy__();
                            _err_3544510 = __tmp__._2;
                        };
                        if (_err_3544510 != null) {
                            _gotoNext = 3544572i32;
                        } else {
                            _gotoNext = 3544605i32;
                        };
                    } else if (__value__ == (3544572i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3544510 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3544605i32;
                    } else if (__value__ == (3544605i32)) {
                        if (_r_3544501 != null) {
                            _gotoNext = 3544617i32;
                        } else {
                            _gotoNext = 3544737i32;
                        };
                    } else if (__value__ == (3544617i32)) {
                        _re_3544339.rune = _r_3544501;
                        _t_3541639 = _rest_3544504?.__copy__();
                        _p_3541527._push(_re_3544339);
                        bigSwitchBreak = true;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3544737i32)) {
                        {
                            {
                                var __tmp__ = _p_3541527._parsePerlClassEscape(_t_3541639?.__copy__(), (_re_3544339.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3544740 = __tmp__._0;
                                _rest_3544743 = __tmp__._1?.__copy__();
                            };
                            if (_r_3544740 != null) {
                                _gotoNext = 3544801i32;
                            } else {
                                _gotoNext = 3544875i32;
                            };
                        };
                    } else if (__value__ == (3544801i32)) {
                        _re_3544339.rune = _r_3544740;
                        _t_3541639 = _rest_3544743?.__copy__();
                        _p_3541527._push(_re_3544339);
                        bigSwitchBreak = true;
                        _gotoNext = 3541690i32;
                    } else if (__value__ == (3544875i32)) {
                        _p_3541527._reuse(_re_3544339);
                        {
                            {
                                var __tmp__ = _p_3541527._parseEscape(_t_3541639?.__copy__());
                                _c_3541547 = __tmp__._0;
                                _t_3541639 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3544975i32;
                            } else {
                                _gotoNext = 3545005i32;
                            };
                        };
                    } else if (__value__ == (3544975i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3545005i32;
                    } else if (__value__ == (3545005i32)) {
                        _p_3541527._literal(_c_3541547);
                        _gotoNext = 3545024i32;
                    } else if (__value__ == (3545024i32)) {
                        _lastRepeat_3541581 = _repeat_3541663?.__copy__();
                        _gotoNext = 3541647i32;
                    } else if (__value__ == (3545049i32)) {
                        _p_3541527._concat();
                        if (_p_3541527._swapVerticalBar()) {
                            _gotoNext = 3545084i32;
                        } else {
                            _gotoNext = 3545149i32;
                        };
                    } else if (__value__ == (3545084i32)) {
                        _p_3541527._stack = (_p_3541527._stack.__slice__(0, ((_p_3541527._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3545149i32;
                    } else if (__value__ == (3545149i32)) {
                        _p_3541527._alternate();
                        _n_3545165 = (_p_3541527._stack.length);
                        if (_n_3545165 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3545194i32;
                        } else {
                            _gotoNext = 3545241i32;
                        };
                    } else if (__value__ == (3545194i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3545241i32;
                    } else if (__value__ == (3545241i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3541527._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
