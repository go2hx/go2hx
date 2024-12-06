package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3338881:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3337365:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3337345:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3340561:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3340558:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3339927:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3338871:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n_3340983:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3337481:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3337457:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3340157:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _max_3338876:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3337383:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3339924:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lastRepeat_3337399:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3339844:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3338673:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3338548:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _rest_3340322:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3340319:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3340328:stdgo.Error = (null : stdgo.Error);
            var _err_3339933:stdgo.Error = (null : stdgo.Error);
            var _ok_3338888:Bool = false;
            var _before_3338856:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3337203:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3337156i32;
                        } else {
                            _gotoNext = 3337337i32;
                        };
                    } else if (__value__ == (3337156i32)) {
                        {
                            _err_3337203 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3337203 != null) {
                                _gotoNext = 3337235i32;
                            } else {
                                _gotoNext = 3337262i32;
                            };
                        };
                    } else if (__value__ == (3337235i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3337203 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3337262i32;
                    } else if (__value__ == (3337262i32)) {
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
                        _gotoNext = 3337337i32;
                    } else if (__value__ == (3337337i32)) {
                        _p_3337345._flags = _flags;
                        _p_3337345._wholeRegexp = _s?.__copy__();
                        _t_3337457 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3337465i32;
                    } else if (__value__ == (3337465i32)) {
                        if (_t_3337457 != (stdgo.Go.str())) {
                            _gotoNext = 3337477i32;
                        } else {
                            _gotoNext = 3340867i32;
                        };
                    } else if (__value__ == (3337477i32)) {
                        _repeat_3337481 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3337495i32;
                    } else if (__value__ == (3337495i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3337508i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3337457[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337621i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337891i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337988i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338084i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338199i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338329i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338443i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338525i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338826i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3339382i32;
                                } else {
                                    _gotoNext = 3337524i32;
                                };
                            };
                        } else {
                            _gotoNext = 3340842i32;
                        };
                    } else if (__value__ == (3337524i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3337457?.__copy__());
                                _c_3337365 = __tmp__._0;
                                _t_3337457 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3337575i32;
                            } else {
                                _gotoNext = 3337605i32;
                            };
                        };
                    } else if (__value__ == (3337575i32)) {
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
                        _gotoNext = 3337605i32;
                    } else if (__value__ == (3337605i32)) {
                        _p_3337345._literal(_c_3337365);
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3337621i32)) {
                        if ((((_p_3337345._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3337457.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3337457[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3337686i32;
                        } else {
                            _gotoNext = 3337829i32;
                        };
                    } else if (__value__ == (3337686i32)) {
                        {
                            {
                                var __tmp__ = _p_3337345._parsePerlFlags(_t_3337457?.__copy__());
                                _t_3337457 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3337782i32;
                            } else {
                                _gotoNext = 3337815i32;
                            };
                        };
                    } else if (__value__ == (3337782i32)) {
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
                        _gotoNext = 3337815i32;
                    } else if (__value__ == (3337815i32)) {
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3337829i32)) {
                        _p_3337345._numCap++;
                        _p_3337345._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3337345._numCap;
                        _t_3337457 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3337891i32)) {
                        {
                            _err = _p_3337345._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3337946i32;
                            } else {
                                _gotoNext = 3337976i32;
                            };
                        };
                    } else if (__value__ == (3337946i32)) {
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
                        _gotoNext = 3337976i32;
                    } else if (__value__ == (3337976i32)) {
                        _t_3337457 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3337988i32)) {
                        {
                            _err = _p_3337345._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3338042i32;
                            } else {
                                _gotoNext = 3338072i32;
                            };
                        };
                    } else if (__value__ == (3338042i32)) {
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
                        _gotoNext = 3338072i32;
                    } else if (__value__ == (3338072i32)) {
                        _t_3337457 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3338084i32)) {
                        if ((_p_3337345._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3338121i32;
                        } else {
                            _gotoNext = 3338155i32;
                        };
                    } else if (__value__ == (3338121i32)) {
                        _p_3337345._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3338187i32;
                    } else if (__value__ == (3338155i32)) {
                        _gotoNext = 3338155i32;
                        _p_3337345._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3338187i32;
                    } else if (__value__ == (3338187i32)) {
                        _t_3337457 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3338199i32)) {
                        if ((_p_3337345._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3338236i32;
                        } else {
                            _gotoNext = 3338287i32;
                        };
                    } else if (__value__ == (3338236i32)) {
                        _p_3337345._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3337345._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3338317i32;
                    } else if (__value__ == (3338287i32)) {
                        _gotoNext = 3338287i32;
                        _p_3337345._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3338317i32;
                    } else if (__value__ == (3338317i32)) {
                        _t_3337457 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3338329i32)) {
                        if ((_p_3337345._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3338364i32;
                        } else {
                            _gotoNext = 3338396i32;
                        };
                    } else if (__value__ == (3338364i32)) {
                        _p_3337345._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3338431i32;
                    } else if (__value__ == (3338396i32)) {
                        _gotoNext = 3338396i32;
                        _p_3337345._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3338431i32;
                    } else if (__value__ == (3338431i32)) {
                        _t_3337457 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3338443i32)) {
                        {
                            {
                                var __tmp__ = _p_3337345._parseClass(_t_3337457?.__copy__());
                                _t_3337457 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338496i32;
                            } else {
                                _gotoNext = 3340842i32;
                            };
                        };
                    } else if (__value__ == (3338496i32)) {
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
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3338525i32)) {
                        _before_3338548 = _t_3337457?.__copy__();
                        _gotoNext = 3338563i32;
                    } else if (__value__ == (3338563i32)) {
                        {
                            final __value__ = _t_3337457[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3338580i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3338609i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3338638i32;
                            } else {
                                _gotoNext = 3338673i32;
                            };
                        };
                    } else if (__value__ == (3338580i32)) {
                        _op_3337383 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338673i32;
                    } else if (__value__ == (3338609i32)) {
                        _op_3337383 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338673i32;
                    } else if (__value__ == (3338638i32)) {
                        _op_3337383 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338673i32;
                    } else if (__value__ == (3338673i32)) {
                        _after_3338673 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3337345._repeat(_op_3337383, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3338548?.__copy__(), _after_3338673?.__copy__(), _lastRepeat_3337399?.__copy__());
                                _after_3338673 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338765i32;
                            } else {
                                _gotoNext = 3338795i32;
                            };
                        };
                    } else if (__value__ == (3338765i32)) {
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
                        _gotoNext = 3338795i32;
                    } else if (__value__ == (3338795i32)) {
                        _repeat_3337481 = _before_3338548?.__copy__();
                        _t_3337457 = _after_3338673?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3338826i32)) {
                        _op_3337383 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3338856 = _t_3337457?.__copy__();
                        {
                            var __tmp__ = _p_3337345._parseRepeat(_t_3337457?.__copy__());
                            _min_3338871 = __tmp__._0;
                            _max_3338876 = __tmp__._1;
                            _after_3338881 = __tmp__._2?.__copy__();
                            _ok_3338888 = __tmp__._3;
                        };
                        if (!_ok_3338888) {
                            _gotoNext = 3338921i32;
                        } else {
                            _gotoNext = 3339029i32;
                        };
                    } else if (__value__ == (3338921i32)) {
                        _p_3337345._literal((123 : stdgo.GoInt32));
                        _t_3337457 = (_t_3337457.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3339029i32)) {
                        if (((((_min_3338871 < (0 : stdgo.GoInt) : Bool) || (_min_3338871 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3338876 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3338876 >= (0 : stdgo.GoInt) : Bool) && (_min_3338871 > _max_3338876 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3339093i32;
                        } else {
                            _gotoNext = 3339243i32;
                        };
                    } else if (__value__ == (3339093i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3338856.__slice__(0, ((_before_3338856.length) - (_after_3338881.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3339243i32;
                    } else if (__value__ == (3339243i32)) {
                        {
                            {
                                var __tmp__ = _p_3337345._repeat(_op_3337383, _min_3338871, _max_3338876, _before_3338856?.__copy__(), _after_3338881?.__copy__(), _lastRepeat_3337399?.__copy__());
                                _after_3338881 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3339321i32;
                            } else {
                                _gotoNext = 3339351i32;
                            };
                        };
                    } else if (__value__ == (3339321i32)) {
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
                        _gotoNext = 3339351i32;
                    } else if (__value__ == (3339351i32)) {
                        _repeat_3337481 = _before_3338856?.__copy__();
                        _t_3337457 = _after_3338881?.__copy__();
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3339382i32)) {
                        if ((((_p_3337345._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3337457.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3339433i32;
                        } else {
                            _gotoNext = 3340157i32;
                        };
                    } else if (__value__ == (3339433i32)) {
                        _gotoNext = 3339439i32;
                    } else if (__value__ == (3339439i32)) {
                        {
                            final __value__ = _t_3337457[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3339457i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3339530i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3339606i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3339684i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3339779i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3340075i32;
                            } else {
                                _gotoNext = 3340157i32;
                            };
                        };
                    } else if (__value__ == (3339457i32)) {
                        _p_3337345._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337457 = (_t_3337457.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3339530i32)) {
                        _p_3337345._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337457 = (_t_3337457.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3339606i32)) {
                        _p_3337345._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337457 = (_t_3337457.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3339684i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3337457.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3340157i32;
                    } else if (__value__ == (3339779i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3337457.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3339844 = __tmp__._0?.__copy__();
                            _t_3337457 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3339902i32;
                    } else if (__value__ == (3339902i32)) {
                        if (_lit_3339844 != (stdgo.Go.str())) {
                            _gotoNext = 3339916i32;
                        } else {
                            _gotoNext = 3340055i32;
                        };
                    } else if (__value__ == (3339916i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3339844?.__copy__());
                            _c_3339924 = __tmp__._0;
                            _rest_3339927 = __tmp__._1?.__copy__();
                            _err_3339933 = __tmp__._2;
                        };
                        if (_err_3339933 != null) {
                            _gotoNext = 3339974i32;
                        } else {
                            _gotoNext = 3340013i32;
                        };
                    } else if (__value__ == (3339974i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3339933 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3340013i32;
                    } else if (__value__ == (3340013i32)) {
                        _p_3337345._literal(_c_3339924);
                        _lit_3339844 = _rest_3339927?.__copy__();
                        _gotoNext = 3339902i32;
                    } else if (__value__ == (3340055i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3340075i32)) {
                        _p_3337345._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337457 = (_t_3337457.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3340157i32)) {
                        _re_3340157 = _p_3337345._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3340157.flags = _p_3337345._flags;
                        if ((((_t_3337457.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3337457[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3337457[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3340313i32;
                        } else {
                            _gotoNext = 3340555i32;
                        };
                    } else if (__value__ == (3340313i32)) {
                        {
                            var __tmp__ = _p_3337345._parseUnicodeClass(_t_3337457?.__copy__(), (_re_3340157.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3340319 = __tmp__._0;
                            _rest_3340322 = __tmp__._1?.__copy__();
                            _err_3340328 = __tmp__._2;
                        };
                        if (_err_3340328 != null) {
                            _gotoNext = 3340390i32;
                        } else {
                            _gotoNext = 3340423i32;
                        };
                    } else if (__value__ == (3340390i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3340328 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3340423i32;
                    } else if (__value__ == (3340423i32)) {
                        if (_r_3340319 != null) {
                            _gotoNext = 3340435i32;
                        } else {
                            _gotoNext = 3340555i32;
                        };
                    } else if (__value__ == (3340435i32)) {
                        _re_3340157.rune = _r_3340319;
                        _t_3337457 = _rest_3340322?.__copy__();
                        _p_3337345._push(_re_3340157);
                        bigSwitchBreak = true;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3340555i32)) {
                        {
                            {
                                var __tmp__ = _p_3337345._parsePerlClassEscape(_t_3337457?.__copy__(), (_re_3340157.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3340558 = __tmp__._0;
                                _rest_3340561 = __tmp__._1?.__copy__();
                            };
                            if (_r_3340558 != null) {
                                _gotoNext = 3340619i32;
                            } else {
                                _gotoNext = 3340693i32;
                            };
                        };
                    } else if (__value__ == (3340619i32)) {
                        _re_3340157.rune = _r_3340558;
                        _t_3337457 = _rest_3340561?.__copy__();
                        _p_3337345._push(_re_3340157);
                        bigSwitchBreak = true;
                        _gotoNext = 3337508i32;
                    } else if (__value__ == (3340693i32)) {
                        _p_3337345._reuse(_re_3340157);
                        {
                            {
                                var __tmp__ = _p_3337345._parseEscape(_t_3337457?.__copy__());
                                _c_3337365 = __tmp__._0;
                                _t_3337457 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3340793i32;
                            } else {
                                _gotoNext = 3340823i32;
                            };
                        };
                    } else if (__value__ == (3340793i32)) {
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
                        _gotoNext = 3340823i32;
                    } else if (__value__ == (3340823i32)) {
                        _p_3337345._literal(_c_3337365);
                        _gotoNext = 3340842i32;
                    } else if (__value__ == (3340842i32)) {
                        _lastRepeat_3337399 = _repeat_3337481?.__copy__();
                        _gotoNext = 3337465i32;
                    } else if (__value__ == (3340867i32)) {
                        _p_3337345._concat();
                        if (_p_3337345._swapVerticalBar()) {
                            _gotoNext = 3340902i32;
                        } else {
                            _gotoNext = 3340967i32;
                        };
                    } else if (__value__ == (3340902i32)) {
                        _p_3337345._stack = (_p_3337345._stack.__slice__(0, ((_p_3337345._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3340967i32;
                    } else if (__value__ == (3340967i32)) {
                        _p_3337345._alternate();
                        _n_3340983 = (_p_3337345._stack.length);
                        if (_n_3340983 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3341012i32;
                        } else {
                            _gotoNext = 3341059i32;
                        };
                    } else if (__value__ == (3341012i32)) {
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
                        _gotoNext = 3341059i32;
                    } else if (__value__ == (3341059i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3337345._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
