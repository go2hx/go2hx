package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3566996:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3565688:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3568256:stdgo.Error = (null : stdgo.Error);
            var _after_3567204:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3568881:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _before_3566871:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3565706:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3568651:stdgo.Error = (null : stdgo.Error);
            var _lit_3568167:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3565722:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3565526:stdgo.Error = (null : stdgo.Error);
            var _n_3569306:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3568642:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3568250:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3567211:Bool = false;
            var _repeat_3565804:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3568645:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3567179:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3565780:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3568247:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3567194:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3568884:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3567199:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3565668:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _re_3568480:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
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
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3565479i32;
                        } else {
                            _gotoNext = 3565660i32;
                        };
                    } else if (__value__ == (3565479i32)) {
                        {
                            _err_3565526 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3565526 != null) {
                                _gotoNext = 3565558i32;
                            } else {
                                _gotoNext = 3565585i32;
                            };
                        };
                    } else if (__value__ == (3565558i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3565526 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3565585i32;
                    } else if (__value__ == (3565585i32)) {
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
                        _gotoNext = 3565660i32;
                    } else if (__value__ == (3565660i32)) {
                        _p_3565668._flags = _flags;
                        _p_3565668._wholeRegexp = _s?.__copy__();
                        _t_3565780 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3565788i32;
                    } else if (__value__ == (3565788i32)) {
                        if (_t_3565780 != (stdgo.Go.str())) {
                            _gotoNext = 3565800i32;
                        } else {
                            _gotoNext = 3569190i32;
                        };
                    } else if (__value__ == (3565800i32)) {
                        _repeat_3565804 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3565818i32;
                    } else if (__value__ == (3565818i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3565831i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3565780[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3565944i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3566214i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3566311i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3566407i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3566522i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3566652i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3566766i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3566848i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3567149i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3567705i32;
                                } else {
                                    _gotoNext = 3565847i32;
                                };
                            };
                        } else {
                            _gotoNext = 3569165i32;
                        };
                    } else if (__value__ == (3565847i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3565780?.__copy__());
                                _c_3565688 = __tmp__._0;
                                _t_3565780 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3565898i32;
                            } else {
                                _gotoNext = 3565928i32;
                            };
                        };
                    } else if (__value__ == (3565898i32)) {
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
                        _gotoNext = 3565928i32;
                    } else if (__value__ == (3565928i32)) {
                        _p_3565668._literal(_c_3565688);
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3565944i32)) {
                        if ((((_p_3565668._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3565780.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3565780[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3566009i32;
                        } else {
                            _gotoNext = 3566152i32;
                        };
                    } else if (__value__ == (3566009i32)) {
                        {
                            {
                                var __tmp__ = _p_3565668._parsePerlFlags(_t_3565780?.__copy__());
                                _t_3565780 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3566105i32;
                            } else {
                                _gotoNext = 3566138i32;
                            };
                        };
                    } else if (__value__ == (3566105i32)) {
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
                        _gotoNext = 3566138i32;
                    } else if (__value__ == (3566138i32)) {
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566152i32)) {
                        _p_3565668._numCap++;
                        _p_3565668._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3565668._numCap;
                        _t_3565780 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566214i32)) {
                        {
                            _err = _p_3565668._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3566269i32;
                            } else {
                                _gotoNext = 3566299i32;
                            };
                        };
                    } else if (__value__ == (3566269i32)) {
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
                        _gotoNext = 3566299i32;
                    } else if (__value__ == (3566299i32)) {
                        _t_3565780 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566311i32)) {
                        {
                            _err = _p_3565668._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3566365i32;
                            } else {
                                _gotoNext = 3566395i32;
                            };
                        };
                    } else if (__value__ == (3566365i32)) {
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
                        _gotoNext = 3566395i32;
                    } else if (__value__ == (3566395i32)) {
                        _t_3565780 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566407i32)) {
                        if ((_p_3565668._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3566444i32;
                        } else {
                            _gotoNext = 3566478i32;
                        };
                    } else if (__value__ == (3566444i32)) {
                        _p_3565668._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3566510i32;
                    } else if (__value__ == (3566478i32)) {
                        _gotoNext = 3566478i32;
                        _p_3565668._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3566510i32;
                    } else if (__value__ == (3566510i32)) {
                        _t_3565780 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566522i32)) {
                        if ((_p_3565668._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3566559i32;
                        } else {
                            _gotoNext = 3566610i32;
                        };
                    } else if (__value__ == (3566559i32)) {
                        _p_3565668._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3565668._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3566640i32;
                    } else if (__value__ == (3566610i32)) {
                        _gotoNext = 3566610i32;
                        _p_3565668._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3566640i32;
                    } else if (__value__ == (3566640i32)) {
                        _t_3565780 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566652i32)) {
                        if ((_p_3565668._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3566687i32;
                        } else {
                            _gotoNext = 3566719i32;
                        };
                    } else if (__value__ == (3566687i32)) {
                        _p_3565668._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3566754i32;
                    } else if (__value__ == (3566719i32)) {
                        _gotoNext = 3566719i32;
                        _p_3565668._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3566754i32;
                    } else if (__value__ == (3566754i32)) {
                        _t_3565780 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566766i32)) {
                        {
                            {
                                var __tmp__ = _p_3565668._parseClass(_t_3565780?.__copy__());
                                _t_3565780 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3566819i32;
                            } else {
                                _gotoNext = 3569165i32;
                            };
                        };
                    } else if (__value__ == (3566819i32)) {
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
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3566848i32)) {
                        _before_3566871 = _t_3565780?.__copy__();
                        _gotoNext = 3566886i32;
                    } else if (__value__ == (3566886i32)) {
                        {
                            final __value__ = _t_3565780[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3566903i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3566932i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3566961i32;
                            } else {
                                _gotoNext = 3566996i32;
                            };
                        };
                    } else if (__value__ == (3566903i32)) {
                        _op_3565706 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3566996i32;
                    } else if (__value__ == (3566932i32)) {
                        _op_3565706 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3566996i32;
                    } else if (__value__ == (3566961i32)) {
                        _op_3565706 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3566996i32;
                    } else if (__value__ == (3566996i32)) {
                        _after_3566996 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3565668._repeat(_op_3565706, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3566871?.__copy__(), _after_3566996?.__copy__(), _lastRepeat_3565722?.__copy__());
                                _after_3566996 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3567088i32;
                            } else {
                                _gotoNext = 3567118i32;
                            };
                        };
                    } else if (__value__ == (3567088i32)) {
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
                        _gotoNext = 3567118i32;
                    } else if (__value__ == (3567118i32)) {
                        _repeat_3565804 = _before_3566871?.__copy__();
                        _t_3565780 = _after_3566996?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3567149i32)) {
                        _op_3565706 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3567179 = _t_3565780?.__copy__();
                        {
                            var __tmp__ = _p_3565668._parseRepeat(_t_3565780?.__copy__());
                            _min_3567194 = __tmp__._0;
                            _max_3567199 = __tmp__._1;
                            _after_3567204 = __tmp__._2?.__copy__();
                            _ok_3567211 = __tmp__._3;
                        };
                        if (!_ok_3567211) {
                            _gotoNext = 3567244i32;
                        } else {
                            _gotoNext = 3567352i32;
                        };
                    } else if (__value__ == (3567244i32)) {
                        _p_3565668._literal((123 : stdgo.GoInt32));
                        _t_3565780 = (_t_3565780.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3567352i32)) {
                        if (((((_min_3567194 < (0 : stdgo.GoInt) : Bool) || (_min_3567194 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3567199 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3567199 >= (0 : stdgo.GoInt) : Bool) && (_min_3567194 > _max_3567199 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3567416i32;
                        } else {
                            _gotoNext = 3567566i32;
                        };
                    } else if (__value__ == (3567416i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3567179.__slice__(0, ((_before_3567179.length) - (_after_3567204.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3567566i32;
                    } else if (__value__ == (3567566i32)) {
                        {
                            {
                                var __tmp__ = _p_3565668._repeat(_op_3565706, _min_3567194, _max_3567199, _before_3567179?.__copy__(), _after_3567204?.__copy__(), _lastRepeat_3565722?.__copy__());
                                _after_3567204 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3567644i32;
                            } else {
                                _gotoNext = 3567674i32;
                            };
                        };
                    } else if (__value__ == (3567644i32)) {
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
                        _gotoNext = 3567674i32;
                    } else if (__value__ == (3567674i32)) {
                        _repeat_3565804 = _before_3567179?.__copy__();
                        _t_3565780 = _after_3567204?.__copy__();
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3567705i32)) {
                        if ((((_p_3565668._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3565780.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3567756i32;
                        } else {
                            _gotoNext = 3568480i32;
                        };
                    } else if (__value__ == (3567756i32)) {
                        _gotoNext = 3567762i32;
                    } else if (__value__ == (3567762i32)) {
                        {
                            final __value__ = _t_3565780[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3567780i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3567853i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3567929i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3568007i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3568102i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3568398i32;
                            } else {
                                _gotoNext = 3568480i32;
                            };
                        };
                    } else if (__value__ == (3567780i32)) {
                        _p_3565668._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3565780 = (_t_3565780.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3567853i32)) {
                        _p_3565668._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3565780 = (_t_3565780.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3567929i32)) {
                        _p_3565668._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3565780 = (_t_3565780.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3568007i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3565780.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568480i32;
                    } else if (__value__ == (3568102i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3565780.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3568167 = __tmp__._0?.__copy__();
                            _t_3565780 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3568225i32;
                    } else if (__value__ == (3568225i32)) {
                        if (_lit_3568167 != (stdgo.Go.str())) {
                            _gotoNext = 3568239i32;
                        } else {
                            _gotoNext = 3568378i32;
                        };
                    } else if (__value__ == (3568239i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3568167?.__copy__());
                            _c_3568247 = __tmp__._0;
                            _rest_3568250 = __tmp__._1?.__copy__();
                            _err_3568256 = __tmp__._2;
                        };
                        if (_err_3568256 != null) {
                            _gotoNext = 3568297i32;
                        } else {
                            _gotoNext = 3568336i32;
                        };
                    } else if (__value__ == (3568297i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3568256 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568336i32;
                    } else if (__value__ == (3568336i32)) {
                        _p_3565668._literal(_c_3568247);
                        _lit_3568167 = _rest_3568250?.__copy__();
                        _gotoNext = 3568225i32;
                    } else if (__value__ == (3568378i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3568398i32)) {
                        _p_3565668._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3565780 = (_t_3565780.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3568480i32)) {
                        _re_3568480 = _p_3565668._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3568480.flags = _p_3565668._flags;
                        if ((((_t_3565780.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3565780[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3565780[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3568636i32;
                        } else {
                            _gotoNext = 3568878i32;
                        };
                    } else if (__value__ == (3568636i32)) {
                        {
                            var __tmp__ = _p_3565668._parseUnicodeClass(_t_3565780?.__copy__(), (_re_3568480.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3568642 = __tmp__._0;
                            _rest_3568645 = __tmp__._1?.__copy__();
                            _err_3568651 = __tmp__._2;
                        };
                        if (_err_3568651 != null) {
                            _gotoNext = 3568713i32;
                        } else {
                            _gotoNext = 3568746i32;
                        };
                    } else if (__value__ == (3568713i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3568651 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3568746i32;
                    } else if (__value__ == (3568746i32)) {
                        if (_r_3568642 != null) {
                            _gotoNext = 3568758i32;
                        } else {
                            _gotoNext = 3568878i32;
                        };
                    } else if (__value__ == (3568758i32)) {
                        _re_3568480.rune = _r_3568642;
                        _t_3565780 = _rest_3568645?.__copy__();
                        _p_3565668._push(_re_3568480);
                        bigSwitchBreak = true;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3568878i32)) {
                        {
                            {
                                var __tmp__ = _p_3565668._parsePerlClassEscape(_t_3565780?.__copy__(), (_re_3568480.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3568881 = __tmp__._0;
                                _rest_3568884 = __tmp__._1?.__copy__();
                            };
                            if (_r_3568881 != null) {
                                _gotoNext = 3568942i32;
                            } else {
                                _gotoNext = 3569016i32;
                            };
                        };
                    } else if (__value__ == (3568942i32)) {
                        _re_3568480.rune = _r_3568881;
                        _t_3565780 = _rest_3568884?.__copy__();
                        _p_3565668._push(_re_3568480);
                        bigSwitchBreak = true;
                        _gotoNext = 3565831i32;
                    } else if (__value__ == (3569016i32)) {
                        _p_3565668._reuse(_re_3568480);
                        {
                            {
                                var __tmp__ = _p_3565668._parseEscape(_t_3565780?.__copy__());
                                _c_3565688 = __tmp__._0;
                                _t_3565780 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3569116i32;
                            } else {
                                _gotoNext = 3569146i32;
                            };
                        };
                    } else if (__value__ == (3569116i32)) {
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
                        _gotoNext = 3569146i32;
                    } else if (__value__ == (3569146i32)) {
                        _p_3565668._literal(_c_3565688);
                        _gotoNext = 3569165i32;
                    } else if (__value__ == (3569165i32)) {
                        _lastRepeat_3565722 = _repeat_3565804?.__copy__();
                        _gotoNext = 3565788i32;
                    } else if (__value__ == (3569190i32)) {
                        _p_3565668._concat();
                        if (_p_3565668._swapVerticalBar()) {
                            _gotoNext = 3569225i32;
                        } else {
                            _gotoNext = 3569290i32;
                        };
                    } else if (__value__ == (3569225i32)) {
                        _p_3565668._stack = (_p_3565668._stack.__slice__(0, ((_p_3565668._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3569290i32;
                    } else if (__value__ == (3569290i32)) {
                        _p_3565668._alternate();
                        _n_3569306 = (_p_3565668._stack.length);
                        if (_n_3569306 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3569335i32;
                        } else {
                            _gotoNext = 3569382i32;
                        };
                    } else if (__value__ == (3569335i32)) {
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
                        _gotoNext = 3569382i32;
                    } else if (__value__ == (3569382i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3565668._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
