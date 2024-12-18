package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3334762:stdgo.Error = (null : stdgo.Error);
            var _c_3334358:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _t_3331891:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3331833:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3331637:stdgo.Error = (null : stdgo.Error);
            var _re_3334591:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _rest_3334756:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3333322:Bool = false;
            var _op_3331817:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var bigSwitchBreak = false;
            var _rest_3334995:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3334753:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _n_3335417:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3334361:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3333315:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3333310:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3332982:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3334367:stdgo.Error = (null : stdgo.Error);
            var _repeat_3331915:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3334992:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3334278:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3333305:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3333290:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3333107:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3331799:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3331779:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
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
                            _gotoNext = 3331590i32;
                        } else {
                            _gotoNext = 3331771i32;
                        };
                    } else if (__value__ == (3331590i32)) {
                        {
                            _err_3331637 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3331637 != null) {
                                _gotoNext = 3331669i32;
                            } else {
                                _gotoNext = 3331696i32;
                            };
                        };
                    } else if (__value__ == (3331669i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3331637 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3331696i32;
                    } else if (__value__ == (3331696i32)) {
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
                        _gotoNext = 3331771i32;
                    } else if (__value__ == (3331771i32)) {
                        _p_3331779._flags = _flags;
                        _p_3331779._wholeRegexp = _s?.__copy__();
                        _t_3331891 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3331899i32;
                    } else if (__value__ == (3331899i32)) {
                        if (_t_3331891 != (stdgo.Go.str())) {
                            _gotoNext = 3331911i32;
                        } else {
                            _gotoNext = 3335301i32;
                        };
                    } else if (__value__ == (3331911i32)) {
                        _repeat_3331915 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3331929i32;
                    } else if (__value__ == (3331929i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3331942i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3331891[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332055i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332325i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332422i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332518i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332633i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332763i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332877i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332959i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333260i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333816i32;
                                } else {
                                    _gotoNext = 3331958i32;
                                };
                            };
                        } else {
                            _gotoNext = 3335276i32;
                        };
                    } else if (__value__ == (3331958i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3331891?.__copy__());
                                _c_3331799 = __tmp__._0;
                                _t_3331891 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3332009i32;
                            } else {
                                _gotoNext = 3332039i32;
                            };
                        };
                    } else if (__value__ == (3332009i32)) {
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
                        _gotoNext = 3332039i32;
                    } else if (__value__ == (3332039i32)) {
                        _p_3331779._literal(_c_3331799);
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332055i32)) {
                        if ((((_p_3331779._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3331891.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3331891[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3332120i32;
                        } else {
                            _gotoNext = 3332263i32;
                        };
                    } else if (__value__ == (3332120i32)) {
                        {
                            {
                                var __tmp__ = _p_3331779._parsePerlFlags(_t_3331891?.__copy__());
                                _t_3331891 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3332216i32;
                            } else {
                                _gotoNext = 3332249i32;
                            };
                        };
                    } else if (__value__ == (3332216i32)) {
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
                        _gotoNext = 3332249i32;
                    } else if (__value__ == (3332249i32)) {
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332263i32)) {
                        _p_3331779._numCap++;
                        _p_3331779._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3331779._numCap;
                        _t_3331891 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332325i32)) {
                        {
                            _err = _p_3331779._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3332380i32;
                            } else {
                                _gotoNext = 3332410i32;
                            };
                        };
                    } else if (__value__ == (3332380i32)) {
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
                        _gotoNext = 3332410i32;
                    } else if (__value__ == (3332410i32)) {
                        _t_3331891 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332422i32)) {
                        {
                            _err = _p_3331779._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3332476i32;
                            } else {
                                _gotoNext = 3332506i32;
                            };
                        };
                    } else if (__value__ == (3332476i32)) {
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
                        _gotoNext = 3332506i32;
                    } else if (__value__ == (3332506i32)) {
                        _t_3331891 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332518i32)) {
                        if ((_p_3331779._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3332555i32;
                        } else {
                            _gotoNext = 3332589i32;
                        };
                    } else if (__value__ == (3332555i32)) {
                        _p_3331779._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3332621i32;
                    } else if (__value__ == (3332589i32)) {
                        _gotoNext = 3332589i32;
                        _p_3331779._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3332621i32;
                    } else if (__value__ == (3332621i32)) {
                        _t_3331891 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332633i32)) {
                        if ((_p_3331779._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3332670i32;
                        } else {
                            _gotoNext = 3332721i32;
                        };
                    } else if (__value__ == (3332670i32)) {
                        _p_3331779._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3331779._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3332751i32;
                    } else if (__value__ == (3332721i32)) {
                        _gotoNext = 3332721i32;
                        _p_3331779._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3332751i32;
                    } else if (__value__ == (3332751i32)) {
                        _t_3331891 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332763i32)) {
                        if ((_p_3331779._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3332798i32;
                        } else {
                            _gotoNext = 3332830i32;
                        };
                    } else if (__value__ == (3332798i32)) {
                        _p_3331779._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3332865i32;
                    } else if (__value__ == (3332830i32)) {
                        _gotoNext = 3332830i32;
                        _p_3331779._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3332865i32;
                    } else if (__value__ == (3332865i32)) {
                        _t_3331891 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332877i32)) {
                        {
                            {
                                var __tmp__ = _p_3331779._parseClass(_t_3331891?.__copy__());
                                _t_3331891 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3332930i32;
                            } else {
                                _gotoNext = 3335276i32;
                            };
                        };
                    } else if (__value__ == (3332930i32)) {
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
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3332959i32)) {
                        _before_3332982 = _t_3331891?.__copy__();
                        _gotoNext = 3332997i32;
                    } else if (__value__ == (3332997i32)) {
                        {
                            final __value__ = _t_3331891[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3333014i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3333043i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3333072i32;
                            } else {
                                _gotoNext = 3333107i32;
                            };
                        };
                    } else if (__value__ == (3333014i32)) {
                        _op_3331817 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3333107i32;
                    } else if (__value__ == (3333043i32)) {
                        _op_3331817 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3333107i32;
                    } else if (__value__ == (3333072i32)) {
                        _op_3331817 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3333107i32;
                    } else if (__value__ == (3333107i32)) {
                        _after_3333107 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3331779._repeat(_op_3331817, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3332982?.__copy__(), _after_3333107?.__copy__(), _lastRepeat_3331833?.__copy__());
                                _after_3333107 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3333199i32;
                            } else {
                                _gotoNext = 3333229i32;
                            };
                        };
                    } else if (__value__ == (3333199i32)) {
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
                        _gotoNext = 3333229i32;
                    } else if (__value__ == (3333229i32)) {
                        _repeat_3331915 = _before_3332982?.__copy__();
                        _t_3331891 = _after_3333107?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3333260i32)) {
                        _op_3331817 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3333290 = _t_3331891?.__copy__();
                        {
                            var __tmp__ = _p_3331779._parseRepeat(_t_3331891?.__copy__());
                            _min_3333305 = __tmp__._0;
                            _max_3333310 = __tmp__._1;
                            _after_3333315 = __tmp__._2?.__copy__();
                            _ok_3333322 = __tmp__._3;
                        };
                        if (!_ok_3333322) {
                            _gotoNext = 3333355i32;
                        } else {
                            _gotoNext = 3333463i32;
                        };
                    } else if (__value__ == (3333355i32)) {
                        _p_3331779._literal((123 : stdgo.GoInt32));
                        _t_3331891 = (_t_3331891.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3333463i32)) {
                        if (((((_min_3333305 < (0 : stdgo.GoInt) : Bool) || (_min_3333305 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3333310 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3333310 >= (0 : stdgo.GoInt) : Bool) && (_min_3333305 > _max_3333310 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3333527i32;
                        } else {
                            _gotoNext = 3333677i32;
                        };
                    } else if (__value__ == (3333527i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3333290.__slice__(0, ((_before_3333290.length) - (_after_3333315.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3333677i32;
                    } else if (__value__ == (3333677i32)) {
                        {
                            {
                                var __tmp__ = _p_3331779._repeat(_op_3331817, _min_3333305, _max_3333310, _before_3333290?.__copy__(), _after_3333315?.__copy__(), _lastRepeat_3331833?.__copy__());
                                _after_3333315 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3333755i32;
                            } else {
                                _gotoNext = 3333785i32;
                            };
                        };
                    } else if (__value__ == (3333755i32)) {
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
                        _gotoNext = 3333785i32;
                    } else if (__value__ == (3333785i32)) {
                        _repeat_3331915 = _before_3333290?.__copy__();
                        _t_3331891 = _after_3333315?.__copy__();
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3333816i32)) {
                        if ((((_p_3331779._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3331891.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3333867i32;
                        } else {
                            _gotoNext = 3334591i32;
                        };
                    } else if (__value__ == (3333867i32)) {
                        _gotoNext = 3333873i32;
                    } else if (__value__ == (3333873i32)) {
                        {
                            final __value__ = _t_3331891[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3333891i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3333964i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3334040i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3334118i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3334213i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3334509i32;
                            } else {
                                _gotoNext = 3334591i32;
                            };
                        };
                    } else if (__value__ == (3333891i32)) {
                        _p_3331779._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331891 = (_t_3331891.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3333964i32)) {
                        _p_3331779._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331891 = (_t_3331891.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3334040i32)) {
                        _p_3331779._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331891 = (_t_3331891.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3334118i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3331891.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3334591i32;
                    } else if (__value__ == (3334213i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3331891.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3334278 = __tmp__._0?.__copy__();
                            _t_3331891 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3334336i32;
                    } else if (__value__ == (3334336i32)) {
                        if (_lit_3334278 != (stdgo.Go.str())) {
                            _gotoNext = 3334350i32;
                        } else {
                            _gotoNext = 3334489i32;
                        };
                    } else if (__value__ == (3334350i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3334278?.__copy__());
                            _c_3334358 = __tmp__._0;
                            _rest_3334361 = __tmp__._1?.__copy__();
                            _err_3334367 = __tmp__._2;
                        };
                        if (_err_3334367 != null) {
                            _gotoNext = 3334408i32;
                        } else {
                            _gotoNext = 3334447i32;
                        };
                    } else if (__value__ == (3334408i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3334367 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3334447i32;
                    } else if (__value__ == (3334447i32)) {
                        _p_3331779._literal(_c_3334358);
                        _lit_3334278 = _rest_3334361?.__copy__();
                        _gotoNext = 3334336i32;
                    } else if (__value__ == (3334489i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3334509i32)) {
                        _p_3331779._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331891 = (_t_3331891.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3334591i32)) {
                        _re_3334591 = _p_3331779._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3334591.flags = _p_3331779._flags;
                        if ((((_t_3331891.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3331891[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3331891[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3334747i32;
                        } else {
                            _gotoNext = 3334989i32;
                        };
                    } else if (__value__ == (3334747i32)) {
                        {
                            var __tmp__ = _p_3331779._parseUnicodeClass(_t_3331891?.__copy__(), (_re_3334591.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3334753 = __tmp__._0;
                            _rest_3334756 = __tmp__._1?.__copy__();
                            _err_3334762 = __tmp__._2;
                        };
                        if (_err_3334762 != null) {
                            _gotoNext = 3334824i32;
                        } else {
                            _gotoNext = 3334857i32;
                        };
                    } else if (__value__ == (3334824i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3334762 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3334857i32;
                    } else if (__value__ == (3334857i32)) {
                        if (_r_3334753 != null) {
                            _gotoNext = 3334869i32;
                        } else {
                            _gotoNext = 3334989i32;
                        };
                    } else if (__value__ == (3334869i32)) {
                        _re_3334591.rune = _r_3334753;
                        _t_3331891 = _rest_3334756?.__copy__();
                        _p_3331779._push(_re_3334591);
                        bigSwitchBreak = true;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3334989i32)) {
                        {
                            {
                                var __tmp__ = _p_3331779._parsePerlClassEscape(_t_3331891?.__copy__(), (_re_3334591.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3334992 = __tmp__._0;
                                _rest_3334995 = __tmp__._1?.__copy__();
                            };
                            if (_r_3334992 != null) {
                                _gotoNext = 3335053i32;
                            } else {
                                _gotoNext = 3335127i32;
                            };
                        };
                    } else if (__value__ == (3335053i32)) {
                        _re_3334591.rune = _r_3334992;
                        _t_3331891 = _rest_3334995?.__copy__();
                        _p_3331779._push(_re_3334591);
                        bigSwitchBreak = true;
                        _gotoNext = 3331942i32;
                    } else if (__value__ == (3335127i32)) {
                        _p_3331779._reuse(_re_3334591);
                        {
                            {
                                var __tmp__ = _p_3331779._parseEscape(_t_3331891?.__copy__());
                                _c_3331799 = __tmp__._0;
                                _t_3331891 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3335227i32;
                            } else {
                                _gotoNext = 3335257i32;
                            };
                        };
                    } else if (__value__ == (3335227i32)) {
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
                        _gotoNext = 3335257i32;
                    } else if (__value__ == (3335257i32)) {
                        _p_3331779._literal(_c_3331799);
                        _gotoNext = 3335276i32;
                    } else if (__value__ == (3335276i32)) {
                        _lastRepeat_3331833 = _repeat_3331915?.__copy__();
                        _gotoNext = 3331899i32;
                    } else if (__value__ == (3335301i32)) {
                        _p_3331779._concat();
                        if (_p_3331779._swapVerticalBar()) {
                            _gotoNext = 3335336i32;
                        } else {
                            _gotoNext = 3335401i32;
                        };
                    } else if (__value__ == (3335336i32)) {
                        _p_3331779._stack = (_p_3331779._stack.__slice__(0, ((_p_3331779._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3335401i32;
                    } else if (__value__ == (3335401i32)) {
                        _p_3331779._alternate();
                        _n_3335417 = (_p_3331779._stack.length);
                        if (_n_3335417 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3335446i32;
                        } else {
                            _gotoNext = 3335493i32;
                        };
                    } else if (__value__ == (3335446i32)) {
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
                        _gotoNext = 3335493i32;
                    } else if (__value__ == (3335493i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3331779._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
