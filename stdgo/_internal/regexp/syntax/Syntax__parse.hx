package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3357835:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _n_3358260:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3354642:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3357210:stdgo.Error = (null : stdgo.Error);
            var _t_3354734:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3354676:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3357121:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3355825:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3354622:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3357605:stdgo.Error = (null : stdgo.Error);
            var _rest_3357599:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3357434:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _min_3356148:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3355950:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3354660:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3357838:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3356165:Bool = false;
            var _after_3356158:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3357204:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3354758:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _r_3357596:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _c_3357201:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3354480:stdgo.Error = (null : stdgo.Error);
            var _max_3356153:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3356133:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3354433i32;
                        } else {
                            _gotoNext = 3354614i32;
                        };
                    } else if (__value__ == (3354433i32)) {
                        {
                            _err_3354480 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3354480 != null) {
                                _gotoNext = 3354512i32;
                            } else {
                                _gotoNext = 3354539i32;
                            };
                        };
                    } else if (__value__ == (3354512i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3354480 };
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
                        _gotoNext = 3354539i32;
                    } else if (__value__ == (3354539i32)) {
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
                        _gotoNext = 3354614i32;
                    } else if (__value__ == (3354614i32)) {
                        _p_3354622._flags = _flags;
                        _p_3354622._wholeRegexp = _s?.__copy__();
                        _t_3354734 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3354742i32;
                    } else if (__value__ == (3354742i32)) {
                        if (_t_3354734 != (stdgo.Go.str())) {
                            _gotoNext = 3354754i32;
                        } else {
                            _gotoNext = 3358144i32;
                        };
                    } else if (__value__ == (3354754i32)) {
                        _repeat_3354758 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3354772i32;
                    } else if (__value__ == (3354772i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3354785i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3354734[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3354898i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3355168i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3355265i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3355361i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3355476i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3355606i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3355720i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3355802i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3356103i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3356659i32;
                                } else {
                                    _gotoNext = 3354801i32;
                                };
                            };
                        } else {
                            _gotoNext = 3358119i32;
                        };
                    } else if (__value__ == (3354801i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3354734?.__copy__());
                                _c_3354642 = __tmp__._0;
                                _t_3354734 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3354852i32;
                            } else {
                                _gotoNext = 3354882i32;
                            };
                        };
                    } else if (__value__ == (3354852i32)) {
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
                        _gotoNext = 3354882i32;
                    } else if (__value__ == (3354882i32)) {
                        @:check2 _p_3354622._literal(_c_3354642);
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3354898i32)) {
                        if ((((_p_3354622._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3354734.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3354734[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3354963i32;
                        } else {
                            _gotoNext = 3355106i32;
                        };
                    } else if (__value__ == (3354963i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3354622._parsePerlFlags(_t_3354734?.__copy__());
                                _t_3354734 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3355059i32;
                            } else {
                                _gotoNext = 3355092i32;
                            };
                        };
                    } else if (__value__ == (3355059i32)) {
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
                        _gotoNext = 3355092i32;
                    } else if (__value__ == (3355092i32)) {
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355106i32)) {
                        _p_3354622._numCap++;
                        @:check2 _p_3354622._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3354622._numCap;
                        _t_3354734 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355168i32)) {
                        {
                            _err = @:check2 _p_3354622._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3355223i32;
                            } else {
                                _gotoNext = 3355253i32;
                            };
                        };
                    } else if (__value__ == (3355223i32)) {
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
                        _gotoNext = 3355253i32;
                    } else if (__value__ == (3355253i32)) {
                        _t_3354734 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355265i32)) {
                        {
                            _err = @:check2 _p_3354622._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3355319i32;
                            } else {
                                _gotoNext = 3355349i32;
                            };
                        };
                    } else if (__value__ == (3355319i32)) {
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
                        _gotoNext = 3355349i32;
                    } else if (__value__ == (3355349i32)) {
                        _t_3354734 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355361i32)) {
                        if ((_p_3354622._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3355398i32;
                        } else {
                            _gotoNext = 3355432i32;
                        };
                    } else if (__value__ == (3355398i32)) {
                        @:check2 _p_3354622._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3355464i32;
                    } else if (__value__ == (3355432i32)) {
                        _gotoNext = 3355432i32;
                        @:check2 _p_3354622._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3355464i32;
                    } else if (__value__ == (3355464i32)) {
                        _t_3354734 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355476i32)) {
                        if ((_p_3354622._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3355513i32;
                        } else {
                            _gotoNext = 3355564i32;
                        };
                    } else if (__value__ == (3355513i32)) {
                        {
                            final __t__ = @:check2 _p_3354622._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3355594i32;
                    } else if (__value__ == (3355564i32)) {
                        _gotoNext = 3355564i32;
                        @:check2 _p_3354622._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3355594i32;
                    } else if (__value__ == (3355594i32)) {
                        _t_3354734 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355606i32)) {
                        if ((_p_3354622._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3355641i32;
                        } else {
                            _gotoNext = 3355673i32;
                        };
                    } else if (__value__ == (3355641i32)) {
                        @:check2 _p_3354622._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3355708i32;
                    } else if (__value__ == (3355673i32)) {
                        _gotoNext = 3355673i32;
                        @:check2 _p_3354622._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3355708i32;
                    } else if (__value__ == (3355708i32)) {
                        _t_3354734 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355720i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3354622._parseClass(_t_3354734?.__copy__());
                                _t_3354734 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3355773i32;
                            } else {
                                _gotoNext = 3358119i32;
                            };
                        };
                    } else if (__value__ == (3355773i32)) {
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
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3355802i32)) {
                        _before_3355825 = _t_3354734?.__copy__();
                        _gotoNext = 3355840i32;
                    } else if (__value__ == (3355840i32)) {
                        {
                            final __value__ = _t_3354734[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3355857i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3355886i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3355915i32;
                            } else {
                                _gotoNext = 3355950i32;
                            };
                        };
                    } else if (__value__ == (3355857i32)) {
                        _op_3354660 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3355950i32;
                    } else if (__value__ == (3355886i32)) {
                        _op_3354660 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3355950i32;
                    } else if (__value__ == (3355915i32)) {
                        _op_3354660 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3355950i32;
                    } else if (__value__ == (3355950i32)) {
                        _after_3355950 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3354622._repeat(_op_3354660, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3355825?.__copy__(), _after_3355950?.__copy__(), _lastRepeat_3354676?.__copy__());
                                _after_3355950 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3356042i32;
                            } else {
                                _gotoNext = 3356072i32;
                            };
                        };
                    } else if (__value__ == (3356042i32)) {
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
                        _gotoNext = 3356072i32;
                    } else if (__value__ == (3356072i32)) {
                        _repeat_3354758 = _before_3355825?.__copy__();
                        _t_3354734 = _after_3355950?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3356103i32)) {
                        _op_3354660 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3356133 = _t_3354734?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3354622._parseRepeat(_t_3354734?.__copy__());
                            _min_3356148 = __tmp__._0;
                            _max_3356153 = __tmp__._1;
                            _after_3356158 = __tmp__._2?.__copy__();
                            _ok_3356165 = __tmp__._3;
                        };
                        if (!_ok_3356165) {
                            _gotoNext = 3356198i32;
                        } else {
                            _gotoNext = 3356306i32;
                        };
                    } else if (__value__ == (3356198i32)) {
                        @:check2 _p_3354622._literal((123 : stdgo.GoInt32));
                        _t_3354734 = (_t_3354734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3356306i32)) {
                        if (((((_min_3356148 < (0 : stdgo.GoInt) : Bool) || (_min_3356148 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3356153 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3356153 >= (0 : stdgo.GoInt) : Bool) && (_min_3356148 > _max_3356153 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3356370i32;
                        } else {
                            _gotoNext = 3356520i32;
                        };
                    } else if (__value__ == (3356370i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3356133.__slice__(0, ((_before_3356133.length) - (_after_3356158.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3356520i32;
                    } else if (__value__ == (3356520i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3354622._repeat(_op_3354660, _min_3356148, _max_3356153, _before_3356133?.__copy__(), _after_3356158?.__copy__(), _lastRepeat_3354676?.__copy__());
                                _after_3356158 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3356598i32;
                            } else {
                                _gotoNext = 3356628i32;
                            };
                        };
                    } else if (__value__ == (3356598i32)) {
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
                        _gotoNext = 3356628i32;
                    } else if (__value__ == (3356628i32)) {
                        _repeat_3354758 = _before_3356133?.__copy__();
                        _t_3354734 = _after_3356158?.__copy__();
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3356659i32)) {
                        if ((((_p_3354622._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3354734.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3356710i32;
                        } else {
                            _gotoNext = 3357434i32;
                        };
                    } else if (__value__ == (3356710i32)) {
                        _gotoNext = 3356716i32;
                    } else if (__value__ == (3356716i32)) {
                        {
                            final __value__ = _t_3354734[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3356734i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3356807i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3356883i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3356961i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3357056i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3357352i32;
                            } else {
                                _gotoNext = 3357434i32;
                            };
                        };
                    } else if (__value__ == (3356734i32)) {
                        @:check2 _p_3354622._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3354734 = (_t_3354734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3356807i32)) {
                        @:check2 _p_3354622._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3354734 = (_t_3354734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3356883i32)) {
                        @:check2 _p_3354622._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3354734 = (_t_3354734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3356961i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3354734.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3357434i32;
                    } else if (__value__ == (3357056i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3354734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3357121 = __tmp__._0?.__copy__();
                            _t_3354734 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3357179i32;
                    } else if (__value__ == (3357179i32)) {
                        if (_lit_3357121 != (stdgo.Go.str())) {
                            _gotoNext = 3357193i32;
                        } else {
                            _gotoNext = 3357332i32;
                        };
                    } else if (__value__ == (3357193i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3357121?.__copy__());
                            _c_3357201 = __tmp__._0;
                            _rest_3357204 = __tmp__._1?.__copy__();
                            _err_3357210 = __tmp__._2;
                        };
                        if (_err_3357210 != null) {
                            _gotoNext = 3357251i32;
                        } else {
                            _gotoNext = 3357290i32;
                        };
                    } else if (__value__ == (3357251i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3357210 };
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
                        _gotoNext = 3357290i32;
                    } else if (__value__ == (3357290i32)) {
                        @:check2 _p_3354622._literal(_c_3357201);
                        _lit_3357121 = _rest_3357204?.__copy__();
                        _gotoNext = 3357179i32;
                    } else if (__value__ == (3357332i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3357352i32)) {
                        @:check2 _p_3354622._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3354734 = (_t_3354734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3357434i32)) {
                        _re_3357434 = @:check2 _p_3354622._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3357434 ?? throw "null pointer dereference").flags = _p_3354622._flags;
                        if ((((_t_3354734.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3354734[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3354734[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3357590i32;
                        } else {
                            _gotoNext = 3357832i32;
                        };
                    } else if (__value__ == (3357590i32)) {
                        {
                            var __tmp__ = @:check2 _p_3354622._parseUnicodeClass(_t_3354734?.__copy__(), ((@:checkr _re_3357434 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3357596 = __tmp__._0;
                            _rest_3357599 = __tmp__._1?.__copy__();
                            _err_3357605 = __tmp__._2;
                        };
                        if (_err_3357605 != null) {
                            _gotoNext = 3357667i32;
                        } else {
                            _gotoNext = 3357700i32;
                        };
                    } else if (__value__ == (3357667i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3357605 };
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
                        _gotoNext = 3357700i32;
                    } else if (__value__ == (3357700i32)) {
                        if (_r_3357596 != null) {
                            _gotoNext = 3357712i32;
                        } else {
                            _gotoNext = 3357832i32;
                        };
                    } else if (__value__ == (3357712i32)) {
                        (@:checkr _re_3357434 ?? throw "null pointer dereference").rune = _r_3357596;
                        _t_3354734 = _rest_3357599?.__copy__();
                        @:check2 _p_3354622._push(_re_3357434);
                        bigSwitchBreak = true;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3357832i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3354622._parsePerlClassEscape(_t_3354734?.__copy__(), ((@:checkr _re_3357434 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3357835 = __tmp__._0;
                                _rest_3357838 = __tmp__._1?.__copy__();
                            };
                            if (_r_3357835 != null) {
                                _gotoNext = 3357896i32;
                            } else {
                                _gotoNext = 3357970i32;
                            };
                        };
                    } else if (__value__ == (3357896i32)) {
                        (@:checkr _re_3357434 ?? throw "null pointer dereference").rune = _r_3357835;
                        _t_3354734 = _rest_3357838?.__copy__();
                        @:check2 _p_3354622._push(_re_3357434);
                        bigSwitchBreak = true;
                        _gotoNext = 3354785i32;
                    } else if (__value__ == (3357970i32)) {
                        @:check2 _p_3354622._reuse(_re_3357434);
                        {
                            {
                                var __tmp__ = @:check2 _p_3354622._parseEscape(_t_3354734?.__copy__());
                                _c_3354642 = __tmp__._0;
                                _t_3354734 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3358070i32;
                            } else {
                                _gotoNext = 3358100i32;
                            };
                        };
                    } else if (__value__ == (3358070i32)) {
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
                        _gotoNext = 3358100i32;
                    } else if (__value__ == (3358100i32)) {
                        @:check2 _p_3354622._literal(_c_3354642);
                        _gotoNext = 3358119i32;
                    } else if (__value__ == (3358119i32)) {
                        _lastRepeat_3354676 = _repeat_3354758?.__copy__();
                        _gotoNext = 3354742i32;
                    } else if (__value__ == (3358144i32)) {
                        @:check2 _p_3354622._concat();
                        if (@:check2 _p_3354622._swapVerticalBar()) {
                            _gotoNext = 3358179i32;
                        } else {
                            _gotoNext = 3358244i32;
                        };
                    } else if (__value__ == (3358179i32)) {
                        _p_3354622._stack = (_p_3354622._stack.__slice__(0, ((_p_3354622._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3358244i32;
                    } else if (__value__ == (3358244i32)) {
                        @:check2 _p_3354622._alternate();
                        _n_3358260 = (_p_3354622._stack.length);
                        if (_n_3358260 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3358289i32;
                        } else {
                            _gotoNext = 3358336i32;
                        };
                    } else if (__value__ == (3358289i32)) {
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
                        _gotoNext = 3358336i32;
                    } else if (__value__ == (3358336i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3354622._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
