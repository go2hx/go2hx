package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3342623:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3341177:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3339646:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _r_3342859:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3342145:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3341157:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3339782:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3339684:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3339666:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3342228:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3341189:Bool = false;
            var _min_3341172:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3339504:stdgo.Error = (null : stdgo.Error);
            var _err_3342629:stdgo.Error = (null : stdgo.Error);
            var _re_3342458:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _rest_3342862:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3343284:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3342620:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _t_3339758:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _err_3342234:stdgo.Error = (null : stdgo.Error);
            var _c_3342225:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lastRepeat_3339700:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3341182:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3340974:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3340849:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3339457i32;
                        } else {
                            _gotoNext = 3339638i32;
                        };
                    } else if (__value__ == (3339457i32)) {
                        {
                            _err_3339504 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3339504 != null) {
                                _gotoNext = 3339536i32;
                            } else {
                                _gotoNext = 3339563i32;
                            };
                        };
                    } else if (__value__ == (3339536i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3339504 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3339563i32;
                    } else if (__value__ == (3339563i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3339638i32;
                    } else if (__value__ == (3339638i32)) {
                        _p_3339646._flags = _flags;
                        _p_3339646._wholeRegexp = _s?.__copy__();
                        _t_3339758 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3339766i32;
                    } else if (__value__ == (3339766i32)) {
                        if (_t_3339758 != (stdgo.Go.str())) {
                            _gotoNext = 3339778i32;
                        } else {
                            _gotoNext = 3343168i32;
                        };
                    } else if (__value__ == (3339778i32)) {
                        _repeat_3339782 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3339796i32;
                    } else if (__value__ == (3339796i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3339809i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3339758[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3339922i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3340192i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3340289i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3340385i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3340500i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3340630i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3340744i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3340826i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3341127i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3341683i32;
                                } else {
                                    _gotoNext = 3339825i32;
                                };
                            };
                        } else {
                            _gotoNext = 3343143i32;
                        };
                    } else if (__value__ == (3339825i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3339758?.__copy__());
                                _c_3339666 = __tmp__._0;
                                _t_3339758 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3339876i32;
                            } else {
                                _gotoNext = 3339906i32;
                            };
                        };
                    } else if (__value__ == (3339876i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3339906i32;
                    } else if (__value__ == (3339906i32)) {
                        _p_3339646._literal(_c_3339666);
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3339922i32)) {
                        if ((((_p_3339646._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3339758.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3339758[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3339987i32;
                        } else {
                            _gotoNext = 3340130i32;
                        };
                    } else if (__value__ == (3339987i32)) {
                        {
                            {
                                var __tmp__ = _p_3339646._parsePerlFlags(_t_3339758?.__copy__());
                                _t_3339758 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3340083i32;
                            } else {
                                _gotoNext = 3340116i32;
                            };
                        };
                    } else if (__value__ == (3340083i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3340116i32;
                    } else if (__value__ == (3340116i32)) {
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340130i32)) {
                        _p_3339646._numCap++;
                        _p_3339646._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3339646._numCap;
                        _t_3339758 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340192i32)) {
                        {
                            _err = _p_3339646._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3340247i32;
                            } else {
                                _gotoNext = 3340277i32;
                            };
                        };
                    } else if (__value__ == (3340247i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3340277i32;
                    } else if (__value__ == (3340277i32)) {
                        _t_3339758 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340289i32)) {
                        {
                            _err = _p_3339646._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3340343i32;
                            } else {
                                _gotoNext = 3340373i32;
                            };
                        };
                    } else if (__value__ == (3340343i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3340373i32;
                    } else if (__value__ == (3340373i32)) {
                        _t_3339758 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340385i32)) {
                        if ((_p_3339646._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3340422i32;
                        } else {
                            _gotoNext = 3340456i32;
                        };
                    } else if (__value__ == (3340422i32)) {
                        _p_3339646._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3340488i32;
                    } else if (__value__ == (3340456i32)) {
                        _p_3339646._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3340488i32;
                    } else if (__value__ == (3340488i32)) {
                        _t_3339758 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340500i32)) {
                        if ((_p_3339646._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3340537i32;
                        } else {
                            _gotoNext = 3340588i32;
                        };
                    } else if (__value__ == (3340537i32)) {
                        _p_3339646._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3339646._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3340618i32;
                    } else if (__value__ == (3340588i32)) {
                        _p_3339646._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3340618i32;
                    } else if (__value__ == (3340618i32)) {
                        _t_3339758 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340630i32)) {
                        if ((_p_3339646._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3340665i32;
                        } else {
                            _gotoNext = 3340697i32;
                        };
                    } else if (__value__ == (3340665i32)) {
                        _p_3339646._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3340732i32;
                    } else if (__value__ == (3340697i32)) {
                        _p_3339646._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3340732i32;
                    } else if (__value__ == (3340732i32)) {
                        _t_3339758 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340744i32)) {
                        {
                            {
                                var __tmp__ = _p_3339646._parseClass(_t_3339758?.__copy__());
                                _t_3339758 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3340797i32;
                            } else {
                                _gotoNext = 3343143i32;
                            };
                        };
                    } else if (__value__ == (3340797i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3340826i32)) {
                        _before_3340849 = _t_3339758?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3340864i32;
                    } else if (__value__ == (3340864i32)) {
                        {
                            final __value__ = _t_3339758[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3340881i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3340910i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3340939i32;
                            } else {
                                _gotoNext = 3340974i32;
                            };
                        };
                    } else if (__value__ == (3340881i32)) {
                        _op_3339684 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3340974i32;
                    } else if (__value__ == (3340910i32)) {
                        _op_3339684 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3340974i32;
                    } else if (__value__ == (3340939i32)) {
                        _op_3339684 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3340974i32;
                    } else if (__value__ == (3340974i32)) {
                        _after_3340974 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3339646._repeat(_op_3339684, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3340849?.__copy__(), _after_3340974?.__copy__(), _lastRepeat_3339700?.__copy__());
                                _after_3340974 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3341066i32;
                            } else {
                                _gotoNext = 3341096i32;
                            };
                        };
                    } else if (__value__ == (3341066i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341096i32;
                    } else if (__value__ == (3341096i32)) {
                        _repeat_3339782 = _before_3340849?.__copy__();
                        _t_3339758 = _after_3340974?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3341127i32)) {
                        _op_3339684 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3341157 = _t_3339758?.__copy__();
                        {
                            var __tmp__ = _p_3339646._parseRepeat(_t_3339758?.__copy__());
                            _min_3341172 = __tmp__._0;
                            _max_3341177 = __tmp__._1;
                            _after_3341182 = __tmp__._2?.__copy__();
                            _ok_3341189 = __tmp__._3;
                        };
                        if (!_ok_3341189) {
                            _gotoNext = 3341222i32;
                        } else {
                            _gotoNext = 3341330i32;
                        };
                    } else if (__value__ == (3341222i32)) {
                        _p_3339646._literal((123 : stdgo.GoInt32));
                        _t_3339758 = (_t_3339758.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3341330i32)) {
                        if (((((_min_3341172 < (0 : stdgo.GoInt) : Bool) || (_min_3341172 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3341177 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3341177 >= (0 : stdgo.GoInt) : Bool) && (_min_3341172 > _max_3341177 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3341394i32;
                        } else {
                            _gotoNext = 3341544i32;
                        };
                    } else if (__value__ == (3341394i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3341157.__slice__(0, ((_before_3341157.length) - (_after_3341182.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341544i32;
                    } else if (__value__ == (3341544i32)) {
                        {
                            {
                                var __tmp__ = _p_3339646._repeat(_op_3339684, _min_3341172, _max_3341177, _before_3341157?.__copy__(), _after_3341182?.__copy__(), _lastRepeat_3339700?.__copy__());
                                _after_3341182 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3341622i32;
                            } else {
                                _gotoNext = 3341652i32;
                            };
                        };
                    } else if (__value__ == (3341622i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341652i32;
                    } else if (__value__ == (3341652i32)) {
                        _repeat_3339782 = _before_3341157?.__copy__();
                        _t_3339758 = _after_3341182?.__copy__();
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3341683i32)) {
                        if ((((_p_3339646._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3339758.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3341734i32;
                        } else {
                            _gotoNext = 3342458i32;
                        };
                    } else if (__value__ == (3341734i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3341740i32;
                    } else if (__value__ == (3341740i32)) {
                        {
                            final __value__ = _t_3339758[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3341758i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3341831i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3341907i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3341985i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3342080i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3342376i32;
                            } else {
                                _gotoNext = 3342458i32;
                            };
                        };
                    } else if (__value__ == (3341758i32)) {
                        _p_3339646._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3339758 = (_t_3339758.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3341831i32)) {
                        _p_3339646._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3339758 = (_t_3339758.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3341907i32)) {
                        _p_3339646._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3339758 = (_t_3339758.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3341985i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3339758.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3342458i32;
                    } else if (__value__ == (3342080i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3339758.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3342145 = __tmp__._0?.__copy__();
                            _t_3339758 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3342203i32;
                    } else if (__value__ == (3342203i32)) {
                        if (_lit_3342145 != (stdgo.Go.str())) {
                            _gotoNext = 3342217i32;
                        } else {
                            _gotoNext = 3342356i32;
                        };
                    } else if (__value__ == (3342217i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3342145?.__copy__());
                            _c_3342225 = __tmp__._0;
                            _rest_3342228 = __tmp__._1?.__copy__();
                            _err_3342234 = __tmp__._2;
                        };
                        if (_err_3342234 != null) {
                            _gotoNext = 3342275i32;
                        } else {
                            _gotoNext = 3342314i32;
                        };
                    } else if (__value__ == (3342275i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3342234 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3342314i32;
                    } else if (__value__ == (3342314i32)) {
                        _p_3339646._literal(_c_3342225);
                        _lit_3342145 = _rest_3342228?.__copy__();
                        _gotoNext = 3342203i32;
                    } else if (__value__ == (3342356i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3342376i32)) {
                        _p_3339646._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3339758 = (_t_3339758.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3342458i32)) {
                        _re_3342458 = _p_3339646._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3342458.flags = _p_3339646._flags;
                        if ((((_t_3339758.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3339758[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3339758[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3342614i32;
                        } else {
                            _gotoNext = 3342856i32;
                        };
                    } else if (__value__ == (3342614i32)) {
                        {
                            var __tmp__ = _p_3339646._parseUnicodeClass(_t_3339758?.__copy__(), (_re_3342458.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3342620 = __tmp__._0;
                            _rest_3342623 = __tmp__._1?.__copy__();
                            _err_3342629 = __tmp__._2;
                        };
                        if (_err_3342629 != null) {
                            _gotoNext = 3342691i32;
                        } else {
                            _gotoNext = 3342724i32;
                        };
                    } else if (__value__ == (3342691i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3342629 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3342724i32;
                    } else if (__value__ == (3342724i32)) {
                        if (_r_3342620 != null) {
                            _gotoNext = 3342736i32;
                        } else {
                            _gotoNext = 3342856i32;
                        };
                    } else if (__value__ == (3342736i32)) {
                        _re_3342458.rune = _r_3342620;
                        _t_3339758 = _rest_3342623?.__copy__();
                        _p_3339646._push(_re_3342458);
                        bigSwitchBreak = true;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3342856i32)) {
                        {
                            {
                                var __tmp__ = _p_3339646._parsePerlClassEscape(_t_3339758?.__copy__(), (_re_3342458.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3342859 = __tmp__._0;
                                _rest_3342862 = __tmp__._1?.__copy__();
                            };
                            if (_r_3342859 != null) {
                                _gotoNext = 3342920i32;
                            } else {
                                _gotoNext = 3342994i32;
                            };
                        };
                    } else if (__value__ == (3342920i32)) {
                        _re_3342458.rune = _r_3342859;
                        _t_3339758 = _rest_3342862?.__copy__();
                        _p_3339646._push(_re_3342458);
                        bigSwitchBreak = true;
                        _gotoNext = 3339809i32;
                    } else if (__value__ == (3342994i32)) {
                        _p_3339646._reuse(_re_3342458);
                        {
                            {
                                var __tmp__ = _p_3339646._parseEscape(_t_3339758?.__copy__());
                                _c_3339666 = __tmp__._0;
                                _t_3339758 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3343094i32;
                            } else {
                                _gotoNext = 3343124i32;
                            };
                        };
                    } else if (__value__ == (3343094i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3343124i32;
                    } else if (__value__ == (3343124i32)) {
                        _p_3339646._literal(_c_3339666);
                        _gotoNext = 3343143i32;
                    } else if (__value__ == (3343143i32)) {
                        _lastRepeat_3339700 = _repeat_3339782?.__copy__();
                        _gotoNext = 3339766i32;
                    } else if (__value__ == (3343168i32)) {
                        _p_3339646._concat();
                        if (_p_3339646._swapVerticalBar()) {
                            _gotoNext = 3343203i32;
                        } else {
                            _gotoNext = 3343268i32;
                        };
                    } else if (__value__ == (3343203i32)) {
                        _p_3339646._stack = (_p_3339646._stack.__slice__(0, ((_p_3339646._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3343268i32;
                    } else if (__value__ == (3343268i32)) {
                        _p_3339646._alternate();
                        _n_3343284 = (_p_3339646._stack.length);
                        if (_n_3343284 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3343313i32;
                        } else {
                            _gotoNext = 3343360i32;
                        };
                    } else if (__value__ == (3343313i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3343360i32;
                    } else if (__value__ == (3343360i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3339646._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
