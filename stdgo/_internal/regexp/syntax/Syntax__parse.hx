package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3566838:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3566599:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3566434:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3563642:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3563622:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _n_3567260:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3565158:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3565153:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3564825:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3563734:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3566201:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3566121:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3566835:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3566204:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3563660:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3566605:stdgo.Error = (null : stdgo.Error);
            var _r_3566596:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _min_3565148:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3565133:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3564950:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3563758:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3563480:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _lastRepeat_3563676:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3566210:stdgo.Error = (null : stdgo.Error);
            var _ok_3565165:Bool = false;
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
                            _gotoNext = 3563433i32;
                        } else {
                            _gotoNext = 3563614i32;
                        };
                    } else if (__value__ == (3563433i32)) {
                        {
                            _err_3563480 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3563480 != null) {
                                _gotoNext = 3563512i32;
                            } else {
                                _gotoNext = 3563539i32;
                            };
                        };
                    } else if (__value__ == (3563512i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3563480 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3563539i32;
                    } else if (__value__ == (3563539i32)) {
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
                        _gotoNext = 3563614i32;
                    } else if (__value__ == (3563614i32)) {
                        _p_3563622._flags = _flags;
                        _p_3563622._wholeRegexp = _s?.__copy__();
                        _t_3563734 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3563742i32;
                    } else if (__value__ == (3563742i32)) {
                        if (_t_3563734 != (stdgo.Go.str())) {
                            _gotoNext = 3563754i32;
                        } else {
                            _gotoNext = 3567144i32;
                        };
                    } else if (__value__ == (3563754i32)) {
                        _repeat_3563758 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3563772i32;
                    } else if (__value__ == (3563772i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3563785i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3563734[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3563898i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3564168i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3564265i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3564361i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3564476i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3564606i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3564720i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3564802i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3565103i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3565659i32;
                                } else {
                                    _gotoNext = 3563801i32;
                                };
                            };
                        } else {
                            _gotoNext = 3567119i32;
                        };
                    } else if (__value__ == (3563801i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3563734?.__copy__());
                                _c_3563642 = __tmp__._0;
                                _t_3563734 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3563852i32;
                            } else {
                                _gotoNext = 3563882i32;
                            };
                        };
                    } else if (__value__ == (3563852i32)) {
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
                        _gotoNext = 3563882i32;
                    } else if (__value__ == (3563882i32)) {
                        _p_3563622._literal(_c_3563642);
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3563898i32)) {
                        if ((((_p_3563622._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3563734.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3563734[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3563963i32;
                        } else {
                            _gotoNext = 3564106i32;
                        };
                    } else if (__value__ == (3563963i32)) {
                        {
                            {
                                var __tmp__ = _p_3563622._parsePerlFlags(_t_3563734?.__copy__());
                                _t_3563734 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3564059i32;
                            } else {
                                _gotoNext = 3564092i32;
                            };
                        };
                    } else if (__value__ == (3564059i32)) {
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
                        _gotoNext = 3564092i32;
                    } else if (__value__ == (3564092i32)) {
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564106i32)) {
                        _p_3563622._numCap++;
                        _p_3563622._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3563622._numCap;
                        _t_3563734 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564168i32)) {
                        {
                            _err = _p_3563622._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3564223i32;
                            } else {
                                _gotoNext = 3564253i32;
                            };
                        };
                    } else if (__value__ == (3564223i32)) {
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
                        _gotoNext = 3564253i32;
                    } else if (__value__ == (3564253i32)) {
                        _t_3563734 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564265i32)) {
                        {
                            _err = _p_3563622._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3564319i32;
                            } else {
                                _gotoNext = 3564349i32;
                            };
                        };
                    } else if (__value__ == (3564319i32)) {
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
                        _gotoNext = 3564349i32;
                    } else if (__value__ == (3564349i32)) {
                        _t_3563734 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564361i32)) {
                        if ((_p_3563622._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3564398i32;
                        } else {
                            _gotoNext = 3564432i32;
                        };
                    } else if (__value__ == (3564398i32)) {
                        _p_3563622._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3564464i32;
                    } else if (__value__ == (3564432i32)) {
                        _gotoNext = 3564432i32;
                        _p_3563622._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3564464i32;
                    } else if (__value__ == (3564464i32)) {
                        _t_3563734 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564476i32)) {
                        if ((_p_3563622._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3564513i32;
                        } else {
                            _gotoNext = 3564564i32;
                        };
                    } else if (__value__ == (3564513i32)) {
                        _p_3563622._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3563622._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3564594i32;
                    } else if (__value__ == (3564564i32)) {
                        _gotoNext = 3564564i32;
                        _p_3563622._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3564594i32;
                    } else if (__value__ == (3564594i32)) {
                        _t_3563734 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564606i32)) {
                        if ((_p_3563622._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3564641i32;
                        } else {
                            _gotoNext = 3564673i32;
                        };
                    } else if (__value__ == (3564641i32)) {
                        _p_3563622._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3564708i32;
                    } else if (__value__ == (3564673i32)) {
                        _gotoNext = 3564673i32;
                        _p_3563622._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3564708i32;
                    } else if (__value__ == (3564708i32)) {
                        _t_3563734 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564720i32)) {
                        {
                            {
                                var __tmp__ = _p_3563622._parseClass(_t_3563734?.__copy__());
                                _t_3563734 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3564773i32;
                            } else {
                                _gotoNext = 3567119i32;
                            };
                        };
                    } else if (__value__ == (3564773i32)) {
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
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3564802i32)) {
                        _before_3564825 = _t_3563734?.__copy__();
                        _gotoNext = 3564840i32;
                    } else if (__value__ == (3564840i32)) {
                        {
                            final __value__ = _t_3563734[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3564857i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3564886i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3564915i32;
                            } else {
                                _gotoNext = 3564950i32;
                            };
                        };
                    } else if (__value__ == (3564857i32)) {
                        _op_3563660 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3564950i32;
                    } else if (__value__ == (3564886i32)) {
                        _op_3563660 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3564950i32;
                    } else if (__value__ == (3564915i32)) {
                        _op_3563660 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3564950i32;
                    } else if (__value__ == (3564950i32)) {
                        _after_3564950 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3563622._repeat(_op_3563660, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3564825?.__copy__(), _after_3564950?.__copy__(), _lastRepeat_3563676?.__copy__());
                                _after_3564950 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3565042i32;
                            } else {
                                _gotoNext = 3565072i32;
                            };
                        };
                    } else if (__value__ == (3565042i32)) {
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
                        _gotoNext = 3565072i32;
                    } else if (__value__ == (3565072i32)) {
                        _repeat_3563758 = _before_3564825?.__copy__();
                        _t_3563734 = _after_3564950?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3565103i32)) {
                        _op_3563660 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3565133 = _t_3563734?.__copy__();
                        {
                            var __tmp__ = _p_3563622._parseRepeat(_t_3563734?.__copy__());
                            _min_3565148 = __tmp__._0;
                            _max_3565153 = __tmp__._1;
                            _after_3565158 = __tmp__._2?.__copy__();
                            _ok_3565165 = __tmp__._3;
                        };
                        if (!_ok_3565165) {
                            _gotoNext = 3565198i32;
                        } else {
                            _gotoNext = 3565306i32;
                        };
                    } else if (__value__ == (3565198i32)) {
                        _p_3563622._literal((123 : stdgo.GoInt32));
                        _t_3563734 = (_t_3563734.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3565306i32)) {
                        if (((((_min_3565148 < (0 : stdgo.GoInt) : Bool) || (_min_3565148 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3565153 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3565153 >= (0 : stdgo.GoInt) : Bool) && (_min_3565148 > _max_3565153 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3565370i32;
                        } else {
                            _gotoNext = 3565520i32;
                        };
                    } else if (__value__ == (3565370i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3565133.__slice__(0, ((_before_3565133.length) - (_after_3565158.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3565520i32;
                    } else if (__value__ == (3565520i32)) {
                        {
                            {
                                var __tmp__ = _p_3563622._repeat(_op_3563660, _min_3565148, _max_3565153, _before_3565133?.__copy__(), _after_3565158?.__copy__(), _lastRepeat_3563676?.__copy__());
                                _after_3565158 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3565598i32;
                            } else {
                                _gotoNext = 3565628i32;
                            };
                        };
                    } else if (__value__ == (3565598i32)) {
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
                        _gotoNext = 3565628i32;
                    } else if (__value__ == (3565628i32)) {
                        _repeat_3563758 = _before_3565133?.__copy__();
                        _t_3563734 = _after_3565158?.__copy__();
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3565659i32)) {
                        if ((((_p_3563622._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3563734.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3565710i32;
                        } else {
                            _gotoNext = 3566434i32;
                        };
                    } else if (__value__ == (3565710i32)) {
                        _gotoNext = 3565716i32;
                    } else if (__value__ == (3565716i32)) {
                        {
                            final __value__ = _t_3563734[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3565734i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3565807i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3565883i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3565961i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3566056i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3566352i32;
                            } else {
                                _gotoNext = 3566434i32;
                            };
                        };
                    } else if (__value__ == (3565734i32)) {
                        _p_3563622._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3563734 = (_t_3563734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3565807i32)) {
                        _p_3563622._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3563734 = (_t_3563734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3565883i32)) {
                        _p_3563622._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3563734 = (_t_3563734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3565961i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3563734.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3566434i32;
                    } else if (__value__ == (3566056i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3563734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3566121 = __tmp__._0?.__copy__();
                            _t_3563734 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3566179i32;
                    } else if (__value__ == (3566179i32)) {
                        if (_lit_3566121 != (stdgo.Go.str())) {
                            _gotoNext = 3566193i32;
                        } else {
                            _gotoNext = 3566332i32;
                        };
                    } else if (__value__ == (3566193i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3566121?.__copy__());
                            _c_3566201 = __tmp__._0;
                            _rest_3566204 = __tmp__._1?.__copy__();
                            _err_3566210 = __tmp__._2;
                        };
                        if (_err_3566210 != null) {
                            _gotoNext = 3566251i32;
                        } else {
                            _gotoNext = 3566290i32;
                        };
                    } else if (__value__ == (3566251i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3566210 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3566290i32;
                    } else if (__value__ == (3566290i32)) {
                        _p_3563622._literal(_c_3566201);
                        _lit_3566121 = _rest_3566204?.__copy__();
                        _gotoNext = 3566179i32;
                    } else if (__value__ == (3566332i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3566352i32)) {
                        _p_3563622._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3563734 = (_t_3563734.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3566434i32)) {
                        _re_3566434 = _p_3563622._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3566434.flags = _p_3563622._flags;
                        if ((((_t_3563734.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3563734[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3563734[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3566590i32;
                        } else {
                            _gotoNext = 3566832i32;
                        };
                    } else if (__value__ == (3566590i32)) {
                        {
                            var __tmp__ = _p_3563622._parseUnicodeClass(_t_3563734?.__copy__(), (_re_3566434.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3566596 = __tmp__._0;
                            _rest_3566599 = __tmp__._1?.__copy__();
                            _err_3566605 = __tmp__._2;
                        };
                        if (_err_3566605 != null) {
                            _gotoNext = 3566667i32;
                        } else {
                            _gotoNext = 3566700i32;
                        };
                    } else if (__value__ == (3566667i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3566605 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3566700i32;
                    } else if (__value__ == (3566700i32)) {
                        if (_r_3566596 != null) {
                            _gotoNext = 3566712i32;
                        } else {
                            _gotoNext = 3566832i32;
                        };
                    } else if (__value__ == (3566712i32)) {
                        _re_3566434.rune = _r_3566596;
                        _t_3563734 = _rest_3566599?.__copy__();
                        _p_3563622._push(_re_3566434);
                        bigSwitchBreak = true;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3566832i32)) {
                        {
                            {
                                var __tmp__ = _p_3563622._parsePerlClassEscape(_t_3563734?.__copy__(), (_re_3566434.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3566835 = __tmp__._0;
                                _rest_3566838 = __tmp__._1?.__copy__();
                            };
                            if (_r_3566835 != null) {
                                _gotoNext = 3566896i32;
                            } else {
                                _gotoNext = 3566970i32;
                            };
                        };
                    } else if (__value__ == (3566896i32)) {
                        _re_3566434.rune = _r_3566835;
                        _t_3563734 = _rest_3566838?.__copy__();
                        _p_3563622._push(_re_3566434);
                        bigSwitchBreak = true;
                        _gotoNext = 3563785i32;
                    } else if (__value__ == (3566970i32)) {
                        _p_3563622._reuse(_re_3566434);
                        {
                            {
                                var __tmp__ = _p_3563622._parseEscape(_t_3563734?.__copy__());
                                _c_3563642 = __tmp__._0;
                                _t_3563734 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3567070i32;
                            } else {
                                _gotoNext = 3567100i32;
                            };
                        };
                    } else if (__value__ == (3567070i32)) {
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
                        _gotoNext = 3567100i32;
                    } else if (__value__ == (3567100i32)) {
                        _p_3563622._literal(_c_3563642);
                        _gotoNext = 3567119i32;
                    } else if (__value__ == (3567119i32)) {
                        _lastRepeat_3563676 = _repeat_3563758?.__copy__();
                        _gotoNext = 3563742i32;
                    } else if (__value__ == (3567144i32)) {
                        _p_3563622._concat();
                        if (_p_3563622._swapVerticalBar()) {
                            _gotoNext = 3567179i32;
                        } else {
                            _gotoNext = 3567244i32;
                        };
                    } else if (__value__ == (3567179i32)) {
                        _p_3563622._stack = (_p_3563622._stack.__slice__(0, ((_p_3563622._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3567244i32;
                    } else if (__value__ == (3567244i32)) {
                        _p_3563622._alternate();
                        _n_3567260 = (_p_3563622._stack.length);
                        if (_n_3567260 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3567289i32;
                        } else {
                            _gotoNext = 3567336i32;
                        };
                    } else if (__value__ == (3567289i32)) {
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
                        _gotoNext = 3567336i32;
                    } else if (__value__ == (3567336i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3563622._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
