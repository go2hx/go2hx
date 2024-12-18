package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3304740:stdgo.Error = (null : stdgo.Error);
            var _err_3304345:stdgo.Error = (null : stdgo.Error);
            var _c_3301777:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3301757:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3304973:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3304731:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lastRepeat_3301811:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3301615:stdgo.Error = (null : stdgo.Error);
            var _n_3305395:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3304734:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3303288:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3302960:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3304339:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3304336:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3303283:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3303268:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3301869:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3304569:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3304256:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3303300:Bool = false;
            var _r_3304970:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _after_3303293:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3301893:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3303085:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3301795:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
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
                            _gotoNext = 3301568i32;
                        } else {
                            _gotoNext = 3301749i32;
                        };
                    } else if (__value__ == (3301568i32)) {
                        {
                            _err_3301615 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3301615 != null) {
                                _gotoNext = 3301647i32;
                            } else {
                                _gotoNext = 3301674i32;
                            };
                        };
                    } else if (__value__ == (3301647i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3301615 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3301674i32;
                    } else if (__value__ == (3301674i32)) {
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
                        _gotoNext = 3301749i32;
                    } else if (__value__ == (3301749i32)) {
                        _p_3301757._flags = _flags;
                        _p_3301757._wholeRegexp = _s?.__copy__();
                        _t_3301869 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3301877i32;
                    } else if (__value__ == (3301877i32)) {
                        if (_t_3301869 != (stdgo.Go.str())) {
                            _gotoNext = 3301889i32;
                        } else {
                            _gotoNext = 3305279i32;
                        };
                    } else if (__value__ == (3301889i32)) {
                        _repeat_3301893 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3301907i32;
                    } else if (__value__ == (3301907i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3301920i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3301869[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302033i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302303i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302400i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302496i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302611i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302741i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302855i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3302937i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3303238i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3303794i32;
                                } else {
                                    _gotoNext = 3301936i32;
                                };
                            };
                        } else {
                            _gotoNext = 3305254i32;
                        };
                    } else if (__value__ == (3301936i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3301869?.__copy__());
                                _c_3301777 = __tmp__._0;
                                _t_3301869 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3301987i32;
                            } else {
                                _gotoNext = 3302017i32;
                            };
                        };
                    } else if (__value__ == (3301987i32)) {
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
                        _gotoNext = 3302017i32;
                    } else if (__value__ == (3302017i32)) {
                        _p_3301757._literal(_c_3301777);
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302033i32)) {
                        if ((((_p_3301757._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3301869.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3301869[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3302098i32;
                        } else {
                            _gotoNext = 3302241i32;
                        };
                    } else if (__value__ == (3302098i32)) {
                        {
                            {
                                var __tmp__ = _p_3301757._parsePerlFlags(_t_3301869?.__copy__());
                                _t_3301869 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3302194i32;
                            } else {
                                _gotoNext = 3302227i32;
                            };
                        };
                    } else if (__value__ == (3302194i32)) {
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
                        _gotoNext = 3302227i32;
                    } else if (__value__ == (3302227i32)) {
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302241i32)) {
                        _p_3301757._numCap++;
                        _p_3301757._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3301757._numCap;
                        _t_3301869 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302303i32)) {
                        {
                            _err = _p_3301757._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3302358i32;
                            } else {
                                _gotoNext = 3302388i32;
                            };
                        };
                    } else if (__value__ == (3302358i32)) {
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
                        _gotoNext = 3302388i32;
                    } else if (__value__ == (3302388i32)) {
                        _t_3301869 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302400i32)) {
                        {
                            _err = _p_3301757._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3302454i32;
                            } else {
                                _gotoNext = 3302484i32;
                            };
                        };
                    } else if (__value__ == (3302454i32)) {
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
                        _gotoNext = 3302484i32;
                    } else if (__value__ == (3302484i32)) {
                        _t_3301869 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302496i32)) {
                        if ((_p_3301757._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302533i32;
                        } else {
                            _gotoNext = 3302567i32;
                        };
                    } else if (__value__ == (3302533i32)) {
                        _p_3301757._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3302599i32;
                    } else if (__value__ == (3302567i32)) {
                        _gotoNext = 3302567i32;
                        _p_3301757._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302599i32;
                    } else if (__value__ == (3302599i32)) {
                        _t_3301869 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302611i32)) {
                        if ((_p_3301757._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302648i32;
                        } else {
                            _gotoNext = 3302699i32;
                        };
                    } else if (__value__ == (3302648i32)) {
                        _p_3301757._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3301757._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3302729i32;
                    } else if (__value__ == (3302699i32)) {
                        _gotoNext = 3302699i32;
                        _p_3301757._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302729i32;
                    } else if (__value__ == (3302729i32)) {
                        _t_3301869 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302741i32)) {
                        if ((_p_3301757._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3302776i32;
                        } else {
                            _gotoNext = 3302808i32;
                        };
                    } else if (__value__ == (3302776i32)) {
                        _p_3301757._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3302843i32;
                    } else if (__value__ == (3302808i32)) {
                        _gotoNext = 3302808i32;
                        _p_3301757._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3302843i32;
                    } else if (__value__ == (3302843i32)) {
                        _t_3301869 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302855i32)) {
                        {
                            {
                                var __tmp__ = _p_3301757._parseClass(_t_3301869?.__copy__());
                                _t_3301869 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3302908i32;
                            } else {
                                _gotoNext = 3305254i32;
                            };
                        };
                    } else if (__value__ == (3302908i32)) {
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
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3302937i32)) {
                        _before_3302960 = _t_3301869?.__copy__();
                        _gotoNext = 3302975i32;
                    } else if (__value__ == (3302975i32)) {
                        {
                            final __value__ = _t_3301869[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3302992i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3303021i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3303050i32;
                            } else {
                                _gotoNext = 3303085i32;
                            };
                        };
                    } else if (__value__ == (3302992i32)) {
                        _op_3301795 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3303085i32;
                    } else if (__value__ == (3303021i32)) {
                        _op_3301795 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3303085i32;
                    } else if (__value__ == (3303050i32)) {
                        _op_3301795 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3303085i32;
                    } else if (__value__ == (3303085i32)) {
                        _after_3303085 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3301757._repeat(_op_3301795, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3302960?.__copy__(), _after_3303085?.__copy__(), _lastRepeat_3301811?.__copy__());
                                _after_3303085 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3303177i32;
                            } else {
                                _gotoNext = 3303207i32;
                            };
                        };
                    } else if (__value__ == (3303177i32)) {
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
                        _gotoNext = 3303207i32;
                    } else if (__value__ == (3303207i32)) {
                        _repeat_3301893 = _before_3302960?.__copy__();
                        _t_3301869 = _after_3303085?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3303238i32)) {
                        _op_3301795 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3303268 = _t_3301869?.__copy__();
                        {
                            var __tmp__ = _p_3301757._parseRepeat(_t_3301869?.__copy__());
                            _min_3303283 = __tmp__._0;
                            _max_3303288 = __tmp__._1;
                            _after_3303293 = __tmp__._2?.__copy__();
                            _ok_3303300 = __tmp__._3;
                        };
                        if (!_ok_3303300) {
                            _gotoNext = 3303333i32;
                        } else {
                            _gotoNext = 3303441i32;
                        };
                    } else if (__value__ == (3303333i32)) {
                        _p_3301757._literal((123 : stdgo.GoInt32));
                        _t_3301869 = (_t_3301869.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3303441i32)) {
                        if (((((_min_3303283 < (0 : stdgo.GoInt) : Bool) || (_min_3303283 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3303288 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3303288 >= (0 : stdgo.GoInt) : Bool) && (_min_3303283 > _max_3303288 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3303505i32;
                        } else {
                            _gotoNext = 3303655i32;
                        };
                    } else if (__value__ == (3303505i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3303268.__slice__(0, ((_before_3303268.length) - (_after_3303293.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3303655i32;
                    } else if (__value__ == (3303655i32)) {
                        {
                            {
                                var __tmp__ = _p_3301757._repeat(_op_3301795, _min_3303283, _max_3303288, _before_3303268?.__copy__(), _after_3303293?.__copy__(), _lastRepeat_3301811?.__copy__());
                                _after_3303293 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3303733i32;
                            } else {
                                _gotoNext = 3303763i32;
                            };
                        };
                    } else if (__value__ == (3303733i32)) {
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
                        _gotoNext = 3303763i32;
                    } else if (__value__ == (3303763i32)) {
                        _repeat_3301893 = _before_3303268?.__copy__();
                        _t_3301869 = _after_3303293?.__copy__();
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3303794i32)) {
                        if ((((_p_3301757._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3301869.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3303845i32;
                        } else {
                            _gotoNext = 3304569i32;
                        };
                    } else if (__value__ == (3303845i32)) {
                        _gotoNext = 3303851i32;
                    } else if (__value__ == (3303851i32)) {
                        {
                            final __value__ = _t_3301869[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3303869i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3303942i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3304018i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3304096i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3304191i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3304487i32;
                            } else {
                                _gotoNext = 3304569i32;
                            };
                        };
                    } else if (__value__ == (3303869i32)) {
                        _p_3301757._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301869 = (_t_3301869.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3303942i32)) {
                        _p_3301757._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301869 = (_t_3301869.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3304018i32)) {
                        _p_3301757._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301869 = (_t_3301869.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3304096i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3301869.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3304569i32;
                    } else if (__value__ == (3304191i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3301869.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3304256 = __tmp__._0?.__copy__();
                            _t_3301869 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3304314i32;
                    } else if (__value__ == (3304314i32)) {
                        if (_lit_3304256 != (stdgo.Go.str())) {
                            _gotoNext = 3304328i32;
                        } else {
                            _gotoNext = 3304467i32;
                        };
                    } else if (__value__ == (3304328i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3304256?.__copy__());
                            _c_3304336 = __tmp__._0;
                            _rest_3304339 = __tmp__._1?.__copy__();
                            _err_3304345 = __tmp__._2;
                        };
                        if (_err_3304345 != null) {
                            _gotoNext = 3304386i32;
                        } else {
                            _gotoNext = 3304425i32;
                        };
                    } else if (__value__ == (3304386i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3304345 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3304425i32;
                    } else if (__value__ == (3304425i32)) {
                        _p_3301757._literal(_c_3304336);
                        _lit_3304256 = _rest_3304339?.__copy__();
                        _gotoNext = 3304314i32;
                    } else if (__value__ == (3304467i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3304487i32)) {
                        _p_3301757._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3301869 = (_t_3301869.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3304569i32)) {
                        _re_3304569 = _p_3301757._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3304569.flags = _p_3301757._flags;
                        if ((((_t_3301869.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3301869[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3301869[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3304725i32;
                        } else {
                            _gotoNext = 3304967i32;
                        };
                    } else if (__value__ == (3304725i32)) {
                        {
                            var __tmp__ = _p_3301757._parseUnicodeClass(_t_3301869?.__copy__(), (_re_3304569.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3304731 = __tmp__._0;
                            _rest_3304734 = __tmp__._1?.__copy__();
                            _err_3304740 = __tmp__._2;
                        };
                        if (_err_3304740 != null) {
                            _gotoNext = 3304802i32;
                        } else {
                            _gotoNext = 3304835i32;
                        };
                    } else if (__value__ == (3304802i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3304740 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3304835i32;
                    } else if (__value__ == (3304835i32)) {
                        if (_r_3304731 != null) {
                            _gotoNext = 3304847i32;
                        } else {
                            _gotoNext = 3304967i32;
                        };
                    } else if (__value__ == (3304847i32)) {
                        _re_3304569.rune = _r_3304731;
                        _t_3301869 = _rest_3304734?.__copy__();
                        _p_3301757._push(_re_3304569);
                        bigSwitchBreak = true;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3304967i32)) {
                        {
                            {
                                var __tmp__ = _p_3301757._parsePerlClassEscape(_t_3301869?.__copy__(), (_re_3304569.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3304970 = __tmp__._0;
                                _rest_3304973 = __tmp__._1?.__copy__();
                            };
                            if (_r_3304970 != null) {
                                _gotoNext = 3305031i32;
                            } else {
                                _gotoNext = 3305105i32;
                            };
                        };
                    } else if (__value__ == (3305031i32)) {
                        _re_3304569.rune = _r_3304970;
                        _t_3301869 = _rest_3304973?.__copy__();
                        _p_3301757._push(_re_3304569);
                        bigSwitchBreak = true;
                        _gotoNext = 3301920i32;
                    } else if (__value__ == (3305105i32)) {
                        _p_3301757._reuse(_re_3304569);
                        {
                            {
                                var __tmp__ = _p_3301757._parseEscape(_t_3301869?.__copy__());
                                _c_3301777 = __tmp__._0;
                                _t_3301869 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3305205i32;
                            } else {
                                _gotoNext = 3305235i32;
                            };
                        };
                    } else if (__value__ == (3305205i32)) {
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
                        _gotoNext = 3305235i32;
                    } else if (__value__ == (3305235i32)) {
                        _p_3301757._literal(_c_3301777);
                        _gotoNext = 3305254i32;
                    } else if (__value__ == (3305254i32)) {
                        _lastRepeat_3301811 = _repeat_3301893?.__copy__();
                        _gotoNext = 3301877i32;
                    } else if (__value__ == (3305279i32)) {
                        _p_3301757._concat();
                        if (_p_3301757._swapVerticalBar()) {
                            _gotoNext = 3305314i32;
                        } else {
                            _gotoNext = 3305379i32;
                        };
                    } else if (__value__ == (3305314i32)) {
                        _p_3301757._stack = (_p_3301757._stack.__slice__(0, ((_p_3301757._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3305379i32;
                    } else if (__value__ == (3305379i32)) {
                        _p_3301757._alternate();
                        _n_3305395 = (_p_3301757._stack.length);
                        if (_n_3305395 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3305424i32;
                        } else {
                            _gotoNext = 3305471i32;
                        };
                    } else if (__value__ == (3305424i32)) {
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
                        _gotoNext = 3305471i32;
                    } else if (__value__ == (3305471i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3301757._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
