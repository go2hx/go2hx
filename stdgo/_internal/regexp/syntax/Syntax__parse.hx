package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _t_3374309:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3377835:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3377174:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3375733:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3377410:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3377180:stdgo.Error = (null : stdgo.Error);
            var _err_3376785:stdgo.Error = (null : stdgo.Error);
            var _ok_3375740:Bool = false;
            var _before_3375708:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3374197:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3377413:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3374235:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _after_3375525:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3376779:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3375723:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3377171:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3376776:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3374333:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3377009:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3374217:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3375728:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3375400:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3374055:stdgo.Error = (null : stdgo.Error);
            var _lit_3376696:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3374251:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
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
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3374008i32;
                        } else {
                            _gotoNext = 3374189i32;
                        };
                    } else if (__value__ == (3374008i32)) {
                        {
                            _err_3374055 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3374055 != null) {
                                _gotoNext = 3374087i32;
                            } else {
                                _gotoNext = 3374114i32;
                            };
                        };
                    } else if (__value__ == (3374087i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3374055 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3374114i32;
                    } else if (__value__ == (3374114i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3374189i32;
                    } else if (__value__ == (3374189i32)) {
                        _p_3374197._flags = _flags;
                        _p_3374197._wholeRegexp = _s?.__copy__();
                        _t_3374309 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3374317i32;
                    } else if (__value__ == (3374317i32)) {
                        if (_t_3374309 != (stdgo.Go.str())) {
                            _gotoNext = 3374329i32;
                        } else {
                            _gotoNext = 3377719i32;
                        };
                    } else if (__value__ == (3374329i32)) {
                        _repeat_3374333 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3374347i32;
                    } else if (__value__ == (3374347i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3374360i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3374309[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3374473i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3374743i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3374840i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3374936i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3375051i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3375181i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3375295i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3375377i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3375678i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3376234i32;
                                } else {
                                    _gotoNext = 3374376i32;
                                };
                            };
                        } else {
                            _gotoNext = 3377694i32;
                        };
                    } else if (__value__ == (3374376i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3374309?.__copy__());
                                _c_3374217 = __tmp__._0;
                                _t_3374309 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3374427i32;
                            } else {
                                _gotoNext = 3374457i32;
                            };
                        };
                    } else if (__value__ == (3374427i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3374457i32;
                    } else if (__value__ == (3374457i32)) {
                        @:check2 _p_3374197._literal(_c_3374217);
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3374473i32)) {
                        if ((((_p_3374197._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3374309.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3374309[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3374538i32;
                        } else {
                            _gotoNext = 3374681i32;
                        };
                    } else if (__value__ == (3374538i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3374197._parsePerlFlags(_t_3374309?.__copy__());
                                _t_3374309 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3374634i32;
                            } else {
                                _gotoNext = 3374667i32;
                            };
                        };
                    } else if (__value__ == (3374634i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3374667i32;
                    } else if (__value__ == (3374667i32)) {
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3374681i32)) {
                        _p_3374197._numCap++;
                        @:check2 _p_3374197._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3374197._numCap;
                        _t_3374309 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3374743i32)) {
                        {
                            _err = @:check2 _p_3374197._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3374798i32;
                            } else {
                                _gotoNext = 3374828i32;
                            };
                        };
                    } else if (__value__ == (3374798i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3374828i32;
                    } else if (__value__ == (3374828i32)) {
                        _t_3374309 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3374840i32)) {
                        {
                            _err = @:check2 _p_3374197._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3374894i32;
                            } else {
                                _gotoNext = 3374924i32;
                            };
                        };
                    } else if (__value__ == (3374894i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3374924i32;
                    } else if (__value__ == (3374924i32)) {
                        _t_3374309 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3374936i32)) {
                        if ((_p_3374197._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3374973i32;
                        } else {
                            _gotoNext = 3375007i32;
                        };
                    } else if (__value__ == (3374973i32)) {
                        @:check2 _p_3374197._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3375039i32;
                    } else if (__value__ == (3375007i32)) {
                        _gotoNext = 3375007i32;
                        @:check2 _p_3374197._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3375039i32;
                    } else if (__value__ == (3375039i32)) {
                        _t_3374309 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3375051i32)) {
                        if ((_p_3374197._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3375088i32;
                        } else {
                            _gotoNext = 3375139i32;
                        };
                    } else if (__value__ == (3375088i32)) {
                        {
                            final __t__ = @:check2 _p_3374197._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3375169i32;
                    } else if (__value__ == (3375139i32)) {
                        _gotoNext = 3375139i32;
                        @:check2 _p_3374197._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3375169i32;
                    } else if (__value__ == (3375169i32)) {
                        _t_3374309 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3375181i32)) {
                        if ((_p_3374197._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3375216i32;
                        } else {
                            _gotoNext = 3375248i32;
                        };
                    } else if (__value__ == (3375216i32)) {
                        @:check2 _p_3374197._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3375283i32;
                    } else if (__value__ == (3375248i32)) {
                        _gotoNext = 3375248i32;
                        @:check2 _p_3374197._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3375283i32;
                    } else if (__value__ == (3375283i32)) {
                        _t_3374309 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3375295i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3374197._parseClass(_t_3374309?.__copy__());
                                _t_3374309 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3375348i32;
                            } else {
                                _gotoNext = 3377694i32;
                            };
                        };
                    } else if (__value__ == (3375348i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3375377i32)) {
                        _before_3375400 = _t_3374309?.__copy__();
                        _gotoNext = 3375415i32;
                    } else if (__value__ == (3375415i32)) {
                        {
                            final __value__ = _t_3374309[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3375432i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3375461i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3375490i32;
                            } else {
                                _gotoNext = 3375525i32;
                            };
                        };
                    } else if (__value__ == (3375432i32)) {
                        _op_3374235 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3375525i32;
                    } else if (__value__ == (3375461i32)) {
                        _op_3374235 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3375525i32;
                    } else if (__value__ == (3375490i32)) {
                        _op_3374235 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3375525i32;
                    } else if (__value__ == (3375525i32)) {
                        _after_3375525 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3374197._repeat(_op_3374235, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3375400?.__copy__(), _after_3375525?.__copy__(), _lastRepeat_3374251?.__copy__());
                                _after_3375525 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3375617i32;
                            } else {
                                _gotoNext = 3375647i32;
                            };
                        };
                    } else if (__value__ == (3375617i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3375647i32;
                    } else if (__value__ == (3375647i32)) {
                        _repeat_3374333 = _before_3375400?.__copy__();
                        _t_3374309 = _after_3375525?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3375678i32)) {
                        _op_3374235 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3375708 = _t_3374309?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3374197._parseRepeat(_t_3374309?.__copy__());
                            _min_3375723 = __tmp__._0;
                            _max_3375728 = __tmp__._1;
                            _after_3375733 = __tmp__._2?.__copy__();
                            _ok_3375740 = __tmp__._3;
                        };
                        if (!_ok_3375740) {
                            _gotoNext = 3375773i32;
                        } else {
                            _gotoNext = 3375881i32;
                        };
                    } else if (__value__ == (3375773i32)) {
                        @:check2 _p_3374197._literal((123 : stdgo.GoInt32));
                        _t_3374309 = (_t_3374309.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3375881i32)) {
                        if (((((_min_3375723 < (0 : stdgo.GoInt) : Bool) || (_min_3375723 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3375728 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3375728 >= (0 : stdgo.GoInt) : Bool) && (_min_3375723 > _max_3375728 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3375945i32;
                        } else {
                            _gotoNext = 3376095i32;
                        };
                    } else if (__value__ == (3375945i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3375708.__slice__(0, ((_before_3375708.length) - (_after_3375733.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3376095i32;
                    } else if (__value__ == (3376095i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3374197._repeat(_op_3374235, _min_3375723, _max_3375728, _before_3375708?.__copy__(), _after_3375733?.__copy__(), _lastRepeat_3374251?.__copy__());
                                _after_3375733 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3376173i32;
                            } else {
                                _gotoNext = 3376203i32;
                            };
                        };
                    } else if (__value__ == (3376173i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3376203i32;
                    } else if (__value__ == (3376203i32)) {
                        _repeat_3374333 = _before_3375708?.__copy__();
                        _t_3374309 = _after_3375733?.__copy__();
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3376234i32)) {
                        if ((((_p_3374197._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3374309.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3376285i32;
                        } else {
                            _gotoNext = 3377009i32;
                        };
                    } else if (__value__ == (3376285i32)) {
                        _gotoNext = 3376291i32;
                    } else if (__value__ == (3376291i32)) {
                        {
                            final __value__ = _t_3374309[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3376309i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3376382i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3376458i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3376536i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3376631i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3376927i32;
                            } else {
                                _gotoNext = 3377009i32;
                            };
                        };
                    } else if (__value__ == (3376309i32)) {
                        @:check2 _p_3374197._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3374309 = (_t_3374309.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3376382i32)) {
                        @:check2 _p_3374197._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3374309 = (_t_3374309.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3376458i32)) {
                        @:check2 _p_3374197._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3374309 = (_t_3374309.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3376536i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3374309.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3377009i32;
                    } else if (__value__ == (3376631i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3374309.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3376696 = __tmp__._0?.__copy__();
                            _t_3374309 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3376754i32;
                    } else if (__value__ == (3376754i32)) {
                        if (_lit_3376696 != (stdgo.Go.str())) {
                            _gotoNext = 3376768i32;
                        } else {
                            _gotoNext = 3376907i32;
                        };
                    } else if (__value__ == (3376768i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3376696?.__copy__());
                            _c_3376776 = __tmp__._0;
                            _rest_3376779 = __tmp__._1?.__copy__();
                            _err_3376785 = __tmp__._2;
                        };
                        if (_err_3376785 != null) {
                            _gotoNext = 3376826i32;
                        } else {
                            _gotoNext = 3376865i32;
                        };
                    } else if (__value__ == (3376826i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3376785 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3376865i32;
                    } else if (__value__ == (3376865i32)) {
                        @:check2 _p_3374197._literal(_c_3376776);
                        _lit_3376696 = _rest_3376779?.__copy__();
                        _gotoNext = 3376754i32;
                    } else if (__value__ == (3376907i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3376927i32)) {
                        @:check2 _p_3374197._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3374309 = (_t_3374309.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3377009i32)) {
                        _re_3377009 = @:check2 _p_3374197._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3377009 ?? throw "null pointer dereference").flags = _p_3374197._flags;
                        if ((((_t_3374309.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3374309[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3374309[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3377165i32;
                        } else {
                            _gotoNext = 3377407i32;
                        };
                    } else if (__value__ == (3377165i32)) {
                        {
                            var __tmp__ = @:check2 _p_3374197._parseUnicodeClass(_t_3374309?.__copy__(), ((@:checkr _re_3377009 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3377171 = __tmp__._0;
                            _rest_3377174 = __tmp__._1?.__copy__();
                            _err_3377180 = __tmp__._2;
                        };
                        if (_err_3377180 != null) {
                            _gotoNext = 3377242i32;
                        } else {
                            _gotoNext = 3377275i32;
                        };
                    } else if (__value__ == (3377242i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3377180 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3377275i32;
                    } else if (__value__ == (3377275i32)) {
                        if (_r_3377171 != null) {
                            _gotoNext = 3377287i32;
                        } else {
                            _gotoNext = 3377407i32;
                        };
                    } else if (__value__ == (3377287i32)) {
                        (@:checkr _re_3377009 ?? throw "null pointer dereference").rune = _r_3377171;
                        _t_3374309 = _rest_3377174?.__copy__();
                        @:check2 _p_3374197._push(_re_3377009);
                        bigSwitchBreak = true;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3377407i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3374197._parsePerlClassEscape(_t_3374309?.__copy__(), ((@:checkr _re_3377009 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3377410 = __tmp__._0;
                                _rest_3377413 = __tmp__._1?.__copy__();
                            };
                            if (_r_3377410 != null) {
                                _gotoNext = 3377471i32;
                            } else {
                                _gotoNext = 3377545i32;
                            };
                        };
                    } else if (__value__ == (3377471i32)) {
                        (@:checkr _re_3377009 ?? throw "null pointer dereference").rune = _r_3377410;
                        _t_3374309 = _rest_3377413?.__copy__();
                        @:check2 _p_3374197._push(_re_3377009);
                        bigSwitchBreak = true;
                        _gotoNext = 3374360i32;
                    } else if (__value__ == (3377545i32)) {
                        @:check2 _p_3374197._reuse(_re_3377009);
                        {
                            {
                                var __tmp__ = @:check2 _p_3374197._parseEscape(_t_3374309?.__copy__());
                                _c_3374217 = __tmp__._0;
                                _t_3374309 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3377645i32;
                            } else {
                                _gotoNext = 3377675i32;
                            };
                        };
                    } else if (__value__ == (3377645i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3377675i32;
                    } else if (__value__ == (3377675i32)) {
                        @:check2 _p_3374197._literal(_c_3374217);
                        _gotoNext = 3377694i32;
                    } else if (__value__ == (3377694i32)) {
                        _lastRepeat_3374251 = _repeat_3374333?.__copy__();
                        _gotoNext = 3374317i32;
                    } else if (__value__ == (3377719i32)) {
                        @:check2 _p_3374197._concat();
                        if (@:check2 _p_3374197._swapVerticalBar()) {
                            _gotoNext = 3377754i32;
                        } else {
                            _gotoNext = 3377819i32;
                        };
                    } else if (__value__ == (3377754i32)) {
                        _p_3374197._stack = (_p_3374197._stack.__slice__(0, ((_p_3374197._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3377819i32;
                    } else if (__value__ == (3377819i32)) {
                        @:check2 _p_3374197._alternate();
                        _n_3377835 = (_p_3374197._stack.length);
                        if (_n_3377835 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3377864i32;
                        } else {
                            _gotoNext = 3377911i32;
                        };
                    } else if (__value__ == (3377864i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3377911i32;
                    } else if (__value__ == (3377911i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3374197._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
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
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        };
    }
