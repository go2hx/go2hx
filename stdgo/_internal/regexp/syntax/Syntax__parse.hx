package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3575755:stdgo.Error = (null : stdgo.Error);
            var _lastRepeat_3575951:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3578880:stdgo.Error = (null : stdgo.Error);
            var _ok_3577440:Bool = false;
            var _after_3577433:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3578396:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3577100:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3575935:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _r_3579110:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3578479:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3576033:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3579535:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3578485:stdgo.Error = (null : stdgo.Error);
            var _t_3576009:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3577428:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3577408:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3579113:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3578709:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _min_3577423:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3577225:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3575897:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var bigSwitchBreak = false;
            var _c_3578476:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3578874:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3578871:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3575917:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3575708i32;
                        } else {
                            _gotoNext = 3575889i32;
                        };
                    } else if (__value__ == (3575708i32)) {
                        {
                            _err_3575755 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3575755 != null) {
                                _gotoNext = 3575787i32;
                            } else {
                                _gotoNext = 3575814i32;
                            };
                        };
                    } else if (__value__ == (3575787i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3575755 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3575814i32;
                    } else if (__value__ == (3575814i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3575889i32;
                    } else if (__value__ == (3575889i32)) {
                        _p_3575897._flags = _flags;
                        _p_3575897._wholeRegexp = _s?.__copy__();
                        _t_3576009 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3576017i32;
                    } else if (__value__ == (3576017i32)) {
                        if (_t_3576009 != (stdgo.Go.str())) {
                            _gotoNext = 3576029i32;
                        } else {
                            _gotoNext = 3579419i32;
                        };
                    } else if (__value__ == (3576029i32)) {
                        _repeat_3576033 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3576047i32;
                    } else if (__value__ == (3576047i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3576060i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3576009[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3576173i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3576443i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3576540i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3576636i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3576751i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3576881i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3576995i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3577077i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3577378i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3577934i32;
                                } else {
                                    _gotoNext = 3576076i32;
                                };
                            };
                        } else {
                            _gotoNext = 3579394i32;
                        };
                    } else if (__value__ == (3576076i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3576009?.__copy__());
                                _c_3575917 = __tmp__._0;
                                _t_3576009 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3576127i32;
                            } else {
                                _gotoNext = 3576157i32;
                            };
                        };
                    } else if (__value__ == (3576127i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3576157i32;
                    } else if (__value__ == (3576157i32)) {
                        _p_3575897._literal(_c_3575917);
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576173i32)) {
                        if ((((_p_3575897._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3576009.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3576009[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3576238i32;
                        } else {
                            _gotoNext = 3576381i32;
                        };
                    } else if (__value__ == (3576238i32)) {
                        {
                            {
                                var __tmp__ = _p_3575897._parsePerlFlags(_t_3576009?.__copy__());
                                _t_3576009 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3576334i32;
                            } else {
                                _gotoNext = 3576367i32;
                            };
                        };
                    } else if (__value__ == (3576334i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3576367i32;
                    } else if (__value__ == (3576367i32)) {
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576381i32)) {
                        _p_3575897._numCap++;
                        _p_3575897._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3575897._numCap;
                        _t_3576009 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576443i32)) {
                        {
                            _err = _p_3575897._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3576498i32;
                            } else {
                                _gotoNext = 3576528i32;
                            };
                        };
                    } else if (__value__ == (3576498i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3576528i32;
                    } else if (__value__ == (3576528i32)) {
                        _t_3576009 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576540i32)) {
                        {
                            _err = _p_3575897._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3576594i32;
                            } else {
                                _gotoNext = 3576624i32;
                            };
                        };
                    } else if (__value__ == (3576594i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3576624i32;
                    } else if (__value__ == (3576624i32)) {
                        _t_3576009 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576636i32)) {
                        if ((_p_3575897._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3576673i32;
                        } else {
                            _gotoNext = 3576707i32;
                        };
                    } else if (__value__ == (3576673i32)) {
                        _p_3575897._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3576739i32;
                    } else if (__value__ == (3576707i32)) {
                        _p_3575897._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3576739i32;
                    } else if (__value__ == (3576739i32)) {
                        _t_3576009 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576751i32)) {
                        if ((_p_3575897._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3576788i32;
                        } else {
                            _gotoNext = 3576839i32;
                        };
                    } else if (__value__ == (3576788i32)) {
                        _p_3575897._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3575897._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3576869i32;
                    } else if (__value__ == (3576839i32)) {
                        _p_3575897._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3576869i32;
                    } else if (__value__ == (3576869i32)) {
                        _t_3576009 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576881i32)) {
                        if ((_p_3575897._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3576916i32;
                        } else {
                            _gotoNext = 3576948i32;
                        };
                    } else if (__value__ == (3576916i32)) {
                        _p_3575897._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3576983i32;
                    } else if (__value__ == (3576948i32)) {
                        _p_3575897._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3576983i32;
                    } else if (__value__ == (3576983i32)) {
                        _t_3576009 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3576995i32)) {
                        {
                            {
                                var __tmp__ = _p_3575897._parseClass(_t_3576009?.__copy__());
                                _t_3576009 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3577048i32;
                            } else {
                                _gotoNext = 3579394i32;
                            };
                        };
                    } else if (__value__ == (3577048i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3577077i32)) {
                        _before_3577100 = _t_3576009?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3577115i32;
                    } else if (__value__ == (3577115i32)) {
                        {
                            final __value__ = _t_3576009[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3577132i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3577161i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3577190i32;
                            } else {
                                _gotoNext = 3577225i32;
                            };
                        };
                    } else if (__value__ == (3577132i32)) {
                        _op_3575935 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3577225i32;
                    } else if (__value__ == (3577161i32)) {
                        _op_3575935 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3577225i32;
                    } else if (__value__ == (3577190i32)) {
                        _op_3575935 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3577225i32;
                    } else if (__value__ == (3577225i32)) {
                        _after_3577225 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3575897._repeat(_op_3575935, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3577100?.__copy__(), _after_3577225?.__copy__(), _lastRepeat_3575951?.__copy__());
                                _after_3577225 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3577317i32;
                            } else {
                                _gotoNext = 3577347i32;
                            };
                        };
                    } else if (__value__ == (3577317i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3577347i32;
                    } else if (__value__ == (3577347i32)) {
                        _repeat_3576033 = _before_3577100?.__copy__();
                        _t_3576009 = _after_3577225?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3577378i32)) {
                        _op_3575935 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3577408 = _t_3576009?.__copy__();
                        {
                            var __tmp__ = _p_3575897._parseRepeat(_t_3576009?.__copy__());
                            _min_3577423 = __tmp__._0;
                            _max_3577428 = __tmp__._1;
                            _after_3577433 = __tmp__._2?.__copy__();
                            _ok_3577440 = __tmp__._3;
                        };
                        if (!_ok_3577440) {
                            _gotoNext = 3577473i32;
                        } else {
                            _gotoNext = 3577581i32;
                        };
                    } else if (__value__ == (3577473i32)) {
                        _p_3575897._literal((123 : stdgo.GoInt32));
                        _t_3576009 = (_t_3576009.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3577581i32)) {
                        if (((((_min_3577423 < (0 : stdgo.GoInt) : Bool) || (_min_3577423 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3577428 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3577428 >= (0 : stdgo.GoInt) : Bool) && (_min_3577423 > _max_3577428 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3577645i32;
                        } else {
                            _gotoNext = 3577795i32;
                        };
                    } else if (__value__ == (3577645i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3577408.__slice__(0, ((_before_3577408.length) - (_after_3577433.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3577795i32;
                    } else if (__value__ == (3577795i32)) {
                        {
                            {
                                var __tmp__ = _p_3575897._repeat(_op_3575935, _min_3577423, _max_3577428, _before_3577408?.__copy__(), _after_3577433?.__copy__(), _lastRepeat_3575951?.__copy__());
                                _after_3577433 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3577873i32;
                            } else {
                                _gotoNext = 3577903i32;
                            };
                        };
                    } else if (__value__ == (3577873i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3577903i32;
                    } else if (__value__ == (3577903i32)) {
                        _repeat_3576033 = _before_3577408?.__copy__();
                        _t_3576009 = _after_3577433?.__copy__();
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3577934i32)) {
                        if ((((_p_3575897._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3576009.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3577985i32;
                        } else {
                            _gotoNext = 3578709i32;
                        };
                    } else if (__value__ == (3577985i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3577991i32;
                    } else if (__value__ == (3577991i32)) {
                        {
                            final __value__ = _t_3576009[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3578009i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3578082i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3578158i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3578236i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3578331i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3578627i32;
                            } else {
                                _gotoNext = 3578709i32;
                            };
                        };
                    } else if (__value__ == (3578009i32)) {
                        _p_3575897._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3576009 = (_t_3576009.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3578082i32)) {
                        _p_3575897._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3576009 = (_t_3576009.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3578158i32)) {
                        _p_3575897._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3576009 = (_t_3576009.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3578236i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3576009.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3578709i32;
                    } else if (__value__ == (3578331i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3576009.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3578396 = __tmp__._0?.__copy__();
                            _t_3576009 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3578454i32;
                    } else if (__value__ == (3578454i32)) {
                        if (_lit_3578396 != (stdgo.Go.str())) {
                            _gotoNext = 3578468i32;
                        } else {
                            _gotoNext = 3578607i32;
                        };
                    } else if (__value__ == (3578468i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3578396?.__copy__());
                            _c_3578476 = __tmp__._0;
                            _rest_3578479 = __tmp__._1?.__copy__();
                            _err_3578485 = __tmp__._2;
                        };
                        if (_err_3578485 != null) {
                            _gotoNext = 3578526i32;
                        } else {
                            _gotoNext = 3578565i32;
                        };
                    } else if (__value__ == (3578526i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3578485 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3578565i32;
                    } else if (__value__ == (3578565i32)) {
                        _p_3575897._literal(_c_3578476);
                        _lit_3578396 = _rest_3578479?.__copy__();
                        _gotoNext = 3578454i32;
                    } else if (__value__ == (3578607i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3578627i32)) {
                        _p_3575897._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3576009 = (_t_3576009.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3578709i32)) {
                        _re_3578709 = _p_3575897._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3578709.flags = _p_3575897._flags;
                        if ((((_t_3576009.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3576009[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3576009[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3578865i32;
                        } else {
                            _gotoNext = 3579107i32;
                        };
                    } else if (__value__ == (3578865i32)) {
                        {
                            var __tmp__ = _p_3575897._parseUnicodeClass(_t_3576009?.__copy__(), (_re_3578709.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3578871 = __tmp__._0;
                            _rest_3578874 = __tmp__._1?.__copy__();
                            _err_3578880 = __tmp__._2;
                        };
                        if (_err_3578880 != null) {
                            _gotoNext = 3578942i32;
                        } else {
                            _gotoNext = 3578975i32;
                        };
                    } else if (__value__ == (3578942i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3578880 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3578975i32;
                    } else if (__value__ == (3578975i32)) {
                        if (_r_3578871 != null) {
                            _gotoNext = 3578987i32;
                        } else {
                            _gotoNext = 3579107i32;
                        };
                    } else if (__value__ == (3578987i32)) {
                        _re_3578709.rune = _r_3578871;
                        _t_3576009 = _rest_3578874?.__copy__();
                        _p_3575897._push(_re_3578709);
                        bigSwitchBreak = true;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3579107i32)) {
                        {
                            {
                                var __tmp__ = _p_3575897._parsePerlClassEscape(_t_3576009?.__copy__(), (_re_3578709.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3579110 = __tmp__._0;
                                _rest_3579113 = __tmp__._1?.__copy__();
                            };
                            if (_r_3579110 != null) {
                                _gotoNext = 3579171i32;
                            } else {
                                _gotoNext = 3579245i32;
                            };
                        };
                    } else if (__value__ == (3579171i32)) {
                        _re_3578709.rune = _r_3579110;
                        _t_3576009 = _rest_3579113?.__copy__();
                        _p_3575897._push(_re_3578709);
                        bigSwitchBreak = true;
                        _gotoNext = 3576060i32;
                    } else if (__value__ == (3579245i32)) {
                        _p_3575897._reuse(_re_3578709);
                        {
                            {
                                var __tmp__ = _p_3575897._parseEscape(_t_3576009?.__copy__());
                                _c_3575917 = __tmp__._0;
                                _t_3576009 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3579345i32;
                            } else {
                                _gotoNext = 3579375i32;
                            };
                        };
                    } else if (__value__ == (3579345i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3579375i32;
                    } else if (__value__ == (3579375i32)) {
                        _p_3575897._literal(_c_3575917);
                        _gotoNext = 3579394i32;
                    } else if (__value__ == (3579394i32)) {
                        _lastRepeat_3575951 = _repeat_3576033?.__copy__();
                        _gotoNext = 3576017i32;
                    } else if (__value__ == (3579419i32)) {
                        _p_3575897._concat();
                        if (_p_3575897._swapVerticalBar()) {
                            _gotoNext = 3579454i32;
                        } else {
                            _gotoNext = 3579519i32;
                        };
                    } else if (__value__ == (3579454i32)) {
                        _p_3575897._stack = (_p_3575897._stack.__slice__(0, ((_p_3575897._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3579519i32;
                    } else if (__value__ == (3579519i32)) {
                        _p_3575897._alternate();
                        _n_3579535 = (_p_3575897._stack.length);
                        if (_n_3579535 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3579564i32;
                        } else {
                            _gotoNext = 3579611i32;
                        };
                    } else if (__value__ == (3579564i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3579611i32;
                    } else if (__value__ == (3579611i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3575897._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
