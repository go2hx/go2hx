package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3496201:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3495776:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3495142:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3492699:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3492675:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3495546:stdgo.Error = (null : stdgo.Error);
            var _err_3495151:stdgo.Error = (null : stdgo.Error);
            var _max_3494094:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3495779:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3495537:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3494074:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3493891:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3492617:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3492421:stdgo.Error = (null : stdgo.Error);
            var _re_3495375:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _ok_3494106:Bool = false;
            var _after_3494099:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3493766:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3492563:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3495540:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3492601:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var bigSwitchBreak = false;
            var _rest_3495145:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3495062:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3494089:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3492583:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3492374i32;
                        } else {
                            _gotoNext = 3492555i32;
                        };
                    } else if (__value__ == (3492374i32)) {
                        {
                            _err_3492421 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3492421 != null) {
                                _gotoNext = 3492453i32;
                            } else {
                                _gotoNext = 3492480i32;
                            };
                        };
                    } else if (__value__ == (3492453i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3492421 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3492480i32;
                    } else if (__value__ == (3492480i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3492555i32;
                    } else if (__value__ == (3492555i32)) {
                        _p_3492563._flags = _flags;
                        _p_3492563._wholeRegexp = _s?.__copy__();
                        _t_3492675 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3492683i32;
                    } else if (__value__ == (3492683i32)) {
                        if (_t_3492675 != (stdgo.Go.str())) {
                            _gotoNext = 3492695i32;
                        } else {
                            _gotoNext = 3496085i32;
                        };
                    } else if (__value__ == (3492695i32)) {
                        _repeat_3492699 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3492713i32;
                    } else if (__value__ == (3492713i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3492726i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3492675[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3492839i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3493109i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3493206i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3493302i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3493417i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3493547i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3493661i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3493743i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494044i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3494600i32;
                                } else {
                                    _gotoNext = 3492742i32;
                                };
                            };
                        } else {
                            _gotoNext = 3496060i32;
                        };
                    } else if (__value__ == (3492742i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3492675?.__copy__());
                                _c_3492583 = __tmp__._0;
                                _t_3492675 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3492793i32;
                            } else {
                                _gotoNext = 3492823i32;
                            };
                        };
                    } else if (__value__ == (3492793i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3492823i32;
                    } else if (__value__ == (3492823i32)) {
                        _p_3492563._literal(_c_3492583);
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3492839i32)) {
                        if ((((_p_3492563._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3492675.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3492675[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3492904i32;
                        } else {
                            _gotoNext = 3493047i32;
                        };
                    } else if (__value__ == (3492904i32)) {
                        {
                            {
                                var __tmp__ = _p_3492563._parsePerlFlags(_t_3492675?.__copy__());
                                _t_3492675 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3493000i32;
                            } else {
                                _gotoNext = 3493033i32;
                            };
                        };
                    } else if (__value__ == (3493000i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3493033i32;
                    } else if (__value__ == (3493033i32)) {
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493047i32)) {
                        _p_3492563._numCap++;
                        _p_3492563._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3492563._numCap;
                        _t_3492675 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493109i32)) {
                        {
                            _err = _p_3492563._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3493164i32;
                            } else {
                                _gotoNext = 3493194i32;
                            };
                        };
                    } else if (__value__ == (3493164i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3493194i32;
                    } else if (__value__ == (3493194i32)) {
                        _t_3492675 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493206i32)) {
                        {
                            _err = _p_3492563._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3493260i32;
                            } else {
                                _gotoNext = 3493290i32;
                            };
                        };
                    } else if (__value__ == (3493260i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3493290i32;
                    } else if (__value__ == (3493290i32)) {
                        _t_3492675 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493302i32)) {
                        if ((_p_3492563._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3493339i32;
                        } else {
                            _gotoNext = 3493373i32;
                        };
                    } else if (__value__ == (3493339i32)) {
                        _p_3492563._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3493405i32;
                    } else if (__value__ == (3493373i32)) {
                        _gotoNext = 3493373i32;
                        _p_3492563._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3493405i32;
                    } else if (__value__ == (3493405i32)) {
                        _t_3492675 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493417i32)) {
                        if ((_p_3492563._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3493454i32;
                        } else {
                            _gotoNext = 3493505i32;
                        };
                    } else if (__value__ == (3493454i32)) {
                        _p_3492563._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3492563._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3493535i32;
                    } else if (__value__ == (3493505i32)) {
                        _gotoNext = 3493505i32;
                        _p_3492563._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3493535i32;
                    } else if (__value__ == (3493535i32)) {
                        _t_3492675 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493547i32)) {
                        if ((_p_3492563._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3493582i32;
                        } else {
                            _gotoNext = 3493614i32;
                        };
                    } else if (__value__ == (3493582i32)) {
                        _p_3492563._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3493649i32;
                    } else if (__value__ == (3493614i32)) {
                        _gotoNext = 3493614i32;
                        _p_3492563._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3493649i32;
                    } else if (__value__ == (3493649i32)) {
                        _t_3492675 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493661i32)) {
                        {
                            {
                                var __tmp__ = _p_3492563._parseClass(_t_3492675?.__copy__());
                                _t_3492675 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3493714i32;
                            } else {
                                _gotoNext = 3496060i32;
                            };
                        };
                    } else if (__value__ == (3493714i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3493743i32)) {
                        _before_3493766 = _t_3492675?.__copy__();
                        _gotoNext = 3493781i32;
                    } else if (__value__ == (3493781i32)) {
                        {
                            final __value__ = _t_3492675[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3493798i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3493827i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3493856i32;
                            } else {
                                _gotoNext = 3493891i32;
                            };
                        };
                    } else if (__value__ == (3493798i32)) {
                        _op_3492601 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3493891i32;
                    } else if (__value__ == (3493827i32)) {
                        _op_3492601 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3493891i32;
                    } else if (__value__ == (3493856i32)) {
                        _op_3492601 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3493891i32;
                    } else if (__value__ == (3493891i32)) {
                        _after_3493891 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3492563._repeat(_op_3492601, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3493766?.__copy__(), _after_3493891?.__copy__(), _lastRepeat_3492617?.__copy__());
                                _after_3493891 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3493983i32;
                            } else {
                                _gotoNext = 3494013i32;
                            };
                        };
                    } else if (__value__ == (3493983i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494013i32;
                    } else if (__value__ == (3494013i32)) {
                        _repeat_3492699 = _before_3493766?.__copy__();
                        _t_3492675 = _after_3493891?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3494044i32)) {
                        _op_3492601 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3494074 = _t_3492675?.__copy__();
                        {
                            var __tmp__ = _p_3492563._parseRepeat(_t_3492675?.__copy__());
                            _min_3494089 = __tmp__._0;
                            _max_3494094 = __tmp__._1;
                            _after_3494099 = __tmp__._2?.__copy__();
                            _ok_3494106 = __tmp__._3;
                        };
                        if (!_ok_3494106) {
                            _gotoNext = 3494139i32;
                        } else {
                            _gotoNext = 3494247i32;
                        };
                    } else if (__value__ == (3494139i32)) {
                        _p_3492563._literal((123 : stdgo.GoInt32));
                        _t_3492675 = (_t_3492675.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3494247i32)) {
                        if (((((_min_3494089 < (0 : stdgo.GoInt) : Bool) || (_min_3494089 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3494094 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3494094 >= (0 : stdgo.GoInt) : Bool) && (_min_3494089 > _max_3494094 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3494311i32;
                        } else {
                            _gotoNext = 3494461i32;
                        };
                    } else if (__value__ == (3494311i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3494074.__slice__(0, ((_before_3494074.length) - (_after_3494099.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494461i32;
                    } else if (__value__ == (3494461i32)) {
                        {
                            {
                                var __tmp__ = _p_3492563._repeat(_op_3492601, _min_3494089, _max_3494094, _before_3494074?.__copy__(), _after_3494099?.__copy__(), _lastRepeat_3492617?.__copy__());
                                _after_3494099 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3494539i32;
                            } else {
                                _gotoNext = 3494569i32;
                            };
                        };
                    } else if (__value__ == (3494539i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3494569i32;
                    } else if (__value__ == (3494569i32)) {
                        _repeat_3492699 = _before_3494074?.__copy__();
                        _t_3492675 = _after_3494099?.__copy__();
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3494600i32)) {
                        if ((((_p_3492563._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3492675.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3494651i32;
                        } else {
                            _gotoNext = 3495375i32;
                        };
                    } else if (__value__ == (3494651i32)) {
                        _gotoNext = 3494657i32;
                    } else if (__value__ == (3494657i32)) {
                        {
                            final __value__ = _t_3492675[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3494675i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3494748i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3494824i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3494902i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3494997i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3495293i32;
                            } else {
                                _gotoNext = 3495375i32;
                            };
                        };
                    } else if (__value__ == (3494675i32)) {
                        _p_3492563._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3492675 = (_t_3492675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3494748i32)) {
                        _p_3492563._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3492675 = (_t_3492675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3494824i32)) {
                        _p_3492563._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3492675 = (_t_3492675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3494902i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3492675.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3495375i32;
                    } else if (__value__ == (3494997i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3492675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3495062 = __tmp__._0?.__copy__();
                            _t_3492675 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3495120i32;
                    } else if (__value__ == (3495120i32)) {
                        if (_lit_3495062 != (stdgo.Go.str())) {
                            _gotoNext = 3495134i32;
                        } else {
                            _gotoNext = 3495273i32;
                        };
                    } else if (__value__ == (3495134i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3495062?.__copy__());
                            _c_3495142 = __tmp__._0;
                            _rest_3495145 = __tmp__._1?.__copy__();
                            _err_3495151 = __tmp__._2;
                        };
                        if (_err_3495151 != null) {
                            _gotoNext = 3495192i32;
                        } else {
                            _gotoNext = 3495231i32;
                        };
                    } else if (__value__ == (3495192i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3495151 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3495231i32;
                    } else if (__value__ == (3495231i32)) {
                        _p_3492563._literal(_c_3495142);
                        _lit_3495062 = _rest_3495145?.__copy__();
                        _gotoNext = 3495120i32;
                    } else if (__value__ == (3495273i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3495293i32)) {
                        _p_3492563._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3492675 = (_t_3492675.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3495375i32)) {
                        _re_3495375 = _p_3492563._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3495375.flags = _p_3492563._flags;
                        if ((((_t_3492675.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3492675[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3492675[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3495531i32;
                        } else {
                            _gotoNext = 3495773i32;
                        };
                    } else if (__value__ == (3495531i32)) {
                        {
                            var __tmp__ = _p_3492563._parseUnicodeClass(_t_3492675?.__copy__(), (_re_3495375.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3495537 = __tmp__._0;
                            _rest_3495540 = __tmp__._1?.__copy__();
                            _err_3495546 = __tmp__._2;
                        };
                        if (_err_3495546 != null) {
                            _gotoNext = 3495608i32;
                        } else {
                            _gotoNext = 3495641i32;
                        };
                    } else if (__value__ == (3495608i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3495546 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3495641i32;
                    } else if (__value__ == (3495641i32)) {
                        if (_r_3495537 != null) {
                            _gotoNext = 3495653i32;
                        } else {
                            _gotoNext = 3495773i32;
                        };
                    } else if (__value__ == (3495653i32)) {
                        _re_3495375.rune = _r_3495537;
                        _t_3492675 = _rest_3495540?.__copy__();
                        _p_3492563._push(_re_3495375);
                        bigSwitchBreak = true;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3495773i32)) {
                        {
                            {
                                var __tmp__ = _p_3492563._parsePerlClassEscape(_t_3492675?.__copy__(), (_re_3495375.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3495776 = __tmp__._0;
                                _rest_3495779 = __tmp__._1?.__copy__();
                            };
                            if (_r_3495776 != null) {
                                _gotoNext = 3495837i32;
                            } else {
                                _gotoNext = 3495911i32;
                            };
                        };
                    } else if (__value__ == (3495837i32)) {
                        _re_3495375.rune = _r_3495776;
                        _t_3492675 = _rest_3495779?.__copy__();
                        _p_3492563._push(_re_3495375);
                        bigSwitchBreak = true;
                        _gotoNext = 3492726i32;
                    } else if (__value__ == (3495911i32)) {
                        _p_3492563._reuse(_re_3495375);
                        {
                            {
                                var __tmp__ = _p_3492563._parseEscape(_t_3492675?.__copy__());
                                _c_3492583 = __tmp__._0;
                                _t_3492675 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3496011i32;
                            } else {
                                _gotoNext = 3496041i32;
                            };
                        };
                    } else if (__value__ == (3496011i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3496041i32;
                    } else if (__value__ == (3496041i32)) {
                        _p_3492563._literal(_c_3492583);
                        _gotoNext = 3496060i32;
                    } else if (__value__ == (3496060i32)) {
                        _lastRepeat_3492617 = _repeat_3492699?.__copy__();
                        _gotoNext = 3492683i32;
                    } else if (__value__ == (3496085i32)) {
                        _p_3492563._concat();
                        if (_p_3492563._swapVerticalBar()) {
                            _gotoNext = 3496120i32;
                        } else {
                            _gotoNext = 3496185i32;
                        };
                    } else if (__value__ == (3496120i32)) {
                        _p_3492563._stack = (_p_3492563._stack.__slice__(0, ((_p_3492563._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3496185i32;
                    } else if (__value__ == (3496185i32)) {
                        _p_3492563._alternate();
                        _n_3496201 = (_p_3492563._stack.length);
                        if (_n_3496201 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3496230i32;
                        } else {
                            _gotoNext = 3496277i32;
                        };
                    } else if (__value__ == (3496230i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3496277i32;
                    } else if (__value__ == (3496277i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3492563._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
