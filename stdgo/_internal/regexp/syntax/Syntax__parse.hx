package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_3338554:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3338549:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3338351:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3338534:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3337135:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3338226:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3339522:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3338559:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3337077:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3339997:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3339835:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3339611:stdgo.Error = (null : stdgo.Error);
            var _op_3337061:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3337043:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3337023:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _err_3340006:stdgo.Error = (null : stdgo.Error);
            var _rest_3340000:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3340661:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3336881:stdgo.Error = (null : stdgo.Error);
            var _ok_3338566:Bool = false;
            var bigSwitchBreak = false;
            var _rest_3340239:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3340236:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3339605:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3339602:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _repeat_3337159:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3336834i32;
                        } else {
                            _gotoNext = 3337015i32;
                        };
                    } else if (__value__ == (3336834i32)) {
                        {
                            _err_3336881 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3336881 != null) {
                                _gotoNext = 3336913i32;
                            } else {
                                _gotoNext = 3336940i32;
                            };
                        };
                    } else if (__value__ == (3336913i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3336881 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3336940i32;
                    } else if (__value__ == (3336940i32)) {
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
                        _gotoNext = 3337015i32;
                    } else if (__value__ == (3337015i32)) {
                        _p_3337023._flags = _flags;
                        _p_3337023._wholeRegexp = _s?.__copy__();
                        _t_3337135 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3337143i32;
                    } else if (__value__ == (3337143i32)) {
                        if (_t_3337135 != (stdgo.Go.str())) {
                            _gotoNext = 3337155i32;
                        } else {
                            _gotoNext = 3340545i32;
                        };
                    } else if (__value__ == (3337155i32)) {
                        _repeat_3337159 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3337173i32;
                    } else if (__value__ == (3337173i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3337186i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3337135[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337299i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337569i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337666i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337762i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3337877i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338007i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338121i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338203i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3338504i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3339060i32;
                                } else {
                                    _gotoNext = 3337202i32;
                                };
                            };
                        } else {
                            _gotoNext = 3340520i32;
                        };
                    } else if (__value__ == (3337202i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3337135?.__copy__());
                                _c_3337043 = __tmp__._0;
                                _t_3337135 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3337253i32;
                            } else {
                                _gotoNext = 3337283i32;
                            };
                        };
                    } else if (__value__ == (3337253i32)) {
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
                        _gotoNext = 3337283i32;
                    } else if (__value__ == (3337283i32)) {
                        _p_3337023._literal(_c_3337043);
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3337299i32)) {
                        if ((((_p_3337023._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3337135.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3337135[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3337364i32;
                        } else {
                            _gotoNext = 3337507i32;
                        };
                    } else if (__value__ == (3337364i32)) {
                        {
                            {
                                var __tmp__ = _p_3337023._parsePerlFlags(_t_3337135?.__copy__());
                                _t_3337135 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3337460i32;
                            } else {
                                _gotoNext = 3337493i32;
                            };
                        };
                    } else if (__value__ == (3337460i32)) {
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
                        _gotoNext = 3337493i32;
                    } else if (__value__ == (3337493i32)) {
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3337507i32)) {
                        _p_3337023._numCap++;
                        _p_3337023._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3337023._numCap;
                        _t_3337135 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3337569i32)) {
                        {
                            _err = _p_3337023._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3337624i32;
                            } else {
                                _gotoNext = 3337654i32;
                            };
                        };
                    } else if (__value__ == (3337624i32)) {
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
                        _gotoNext = 3337654i32;
                    } else if (__value__ == (3337654i32)) {
                        _t_3337135 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3337666i32)) {
                        {
                            _err = _p_3337023._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3337720i32;
                            } else {
                                _gotoNext = 3337750i32;
                            };
                        };
                    } else if (__value__ == (3337720i32)) {
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
                        _gotoNext = 3337750i32;
                    } else if (__value__ == (3337750i32)) {
                        _t_3337135 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3337762i32)) {
                        if ((_p_3337023._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3337799i32;
                        } else {
                            _gotoNext = 3337833i32;
                        };
                    } else if (__value__ == (3337799i32)) {
                        _p_3337023._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3337865i32;
                    } else if (__value__ == (3337833i32)) {
                        _gotoNext = 3337833i32;
                        _p_3337023._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3337865i32;
                    } else if (__value__ == (3337865i32)) {
                        _t_3337135 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3337877i32)) {
                        if ((_p_3337023._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3337914i32;
                        } else {
                            _gotoNext = 3337965i32;
                        };
                    } else if (__value__ == (3337914i32)) {
                        _p_3337023._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3337023._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3337995i32;
                    } else if (__value__ == (3337965i32)) {
                        _gotoNext = 3337965i32;
                        _p_3337023._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3337995i32;
                    } else if (__value__ == (3337995i32)) {
                        _t_3337135 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3338007i32)) {
                        if ((_p_3337023._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3338042i32;
                        } else {
                            _gotoNext = 3338074i32;
                        };
                    } else if (__value__ == (3338042i32)) {
                        _p_3337023._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3338109i32;
                    } else if (__value__ == (3338074i32)) {
                        _gotoNext = 3338074i32;
                        _p_3337023._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3338109i32;
                    } else if (__value__ == (3338109i32)) {
                        _t_3337135 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3338121i32)) {
                        {
                            {
                                var __tmp__ = _p_3337023._parseClass(_t_3337135?.__copy__());
                                _t_3337135 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338174i32;
                            } else {
                                _gotoNext = 3340520i32;
                            };
                        };
                    } else if (__value__ == (3338174i32)) {
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
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3338203i32)) {
                        _before_3338226 = _t_3337135?.__copy__();
                        _gotoNext = 3338241i32;
                    } else if (__value__ == (3338241i32)) {
                        {
                            final __value__ = _t_3337135[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3338258i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3338287i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3338316i32;
                            } else {
                                _gotoNext = 3338351i32;
                            };
                        };
                    } else if (__value__ == (3338258i32)) {
                        _op_3337061 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338351i32;
                    } else if (__value__ == (3338287i32)) {
                        _op_3337061 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338351i32;
                    } else if (__value__ == (3338316i32)) {
                        _op_3337061 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3338351i32;
                    } else if (__value__ == (3338351i32)) {
                        _after_3338351 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3337023._repeat(_op_3337061, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3338226?.__copy__(), _after_3338351?.__copy__(), _lastRepeat_3337077?.__copy__());
                                _after_3338351 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338443i32;
                            } else {
                                _gotoNext = 3338473i32;
                            };
                        };
                    } else if (__value__ == (3338443i32)) {
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
                        _gotoNext = 3338473i32;
                    } else if (__value__ == (3338473i32)) {
                        _repeat_3337159 = _before_3338226?.__copy__();
                        _t_3337135 = _after_3338351?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3338504i32)) {
                        _op_3337061 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3338534 = _t_3337135?.__copy__();
                        {
                            var __tmp__ = _p_3337023._parseRepeat(_t_3337135?.__copy__());
                            _min_3338549 = __tmp__._0;
                            _max_3338554 = __tmp__._1;
                            _after_3338559 = __tmp__._2?.__copy__();
                            _ok_3338566 = __tmp__._3;
                        };
                        if (!_ok_3338566) {
                            _gotoNext = 3338599i32;
                        } else {
                            _gotoNext = 3338707i32;
                        };
                    } else if (__value__ == (3338599i32)) {
                        _p_3337023._literal((123 : stdgo.GoInt32));
                        _t_3337135 = (_t_3337135.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3338707i32)) {
                        if (((((_min_3338549 < (0 : stdgo.GoInt) : Bool) || (_min_3338549 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3338554 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3338554 >= (0 : stdgo.GoInt) : Bool) && (_min_3338549 > _max_3338554 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3338771i32;
                        } else {
                            _gotoNext = 3338921i32;
                        };
                    } else if (__value__ == (3338771i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3338534.__slice__(0, ((_before_3338534.length) - (_after_3338559.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3338921i32;
                    } else if (__value__ == (3338921i32)) {
                        {
                            {
                                var __tmp__ = _p_3337023._repeat(_op_3337061, _min_3338549, _max_3338554, _before_3338534?.__copy__(), _after_3338559?.__copy__(), _lastRepeat_3337077?.__copy__());
                                _after_3338559 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3338999i32;
                            } else {
                                _gotoNext = 3339029i32;
                            };
                        };
                    } else if (__value__ == (3338999i32)) {
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
                        _gotoNext = 3339029i32;
                    } else if (__value__ == (3339029i32)) {
                        _repeat_3337159 = _before_3338534?.__copy__();
                        _t_3337135 = _after_3338559?.__copy__();
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3339060i32)) {
                        if ((((_p_3337023._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3337135.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3339111i32;
                        } else {
                            _gotoNext = 3339835i32;
                        };
                    } else if (__value__ == (3339111i32)) {
                        _gotoNext = 3339117i32;
                    } else if (__value__ == (3339117i32)) {
                        {
                            final __value__ = _t_3337135[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3339135i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3339208i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3339284i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3339362i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3339457i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3339753i32;
                            } else {
                                _gotoNext = 3339835i32;
                            };
                        };
                    } else if (__value__ == (3339135i32)) {
                        _p_3337023._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337135 = (_t_3337135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3339208i32)) {
                        _p_3337023._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337135 = (_t_3337135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3339284i32)) {
                        _p_3337023._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337135 = (_t_3337135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3339362i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3337135.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3339835i32;
                    } else if (__value__ == (3339457i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3337135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3339522 = __tmp__._0?.__copy__();
                            _t_3337135 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3339580i32;
                    } else if (__value__ == (3339580i32)) {
                        if (_lit_3339522 != (stdgo.Go.str())) {
                            _gotoNext = 3339594i32;
                        } else {
                            _gotoNext = 3339733i32;
                        };
                    } else if (__value__ == (3339594i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3339522?.__copy__());
                            _c_3339602 = __tmp__._0;
                            _rest_3339605 = __tmp__._1?.__copy__();
                            _err_3339611 = __tmp__._2;
                        };
                        if (_err_3339611 != null) {
                            _gotoNext = 3339652i32;
                        } else {
                            _gotoNext = 3339691i32;
                        };
                    } else if (__value__ == (3339652i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3339611 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3339691i32;
                    } else if (__value__ == (3339691i32)) {
                        _p_3337023._literal(_c_3339602);
                        _lit_3339522 = _rest_3339605?.__copy__();
                        _gotoNext = 3339580i32;
                    } else if (__value__ == (3339733i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3339753i32)) {
                        _p_3337023._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3337135 = (_t_3337135.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3339835i32)) {
                        _re_3339835 = _p_3337023._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3339835.flags = _p_3337023._flags;
                        if ((((_t_3337135.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3337135[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3337135[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3339991i32;
                        } else {
                            _gotoNext = 3340233i32;
                        };
                    } else if (__value__ == (3339991i32)) {
                        {
                            var __tmp__ = _p_3337023._parseUnicodeClass(_t_3337135?.__copy__(), (_re_3339835.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3339997 = __tmp__._0;
                            _rest_3340000 = __tmp__._1?.__copy__();
                            _err_3340006 = __tmp__._2;
                        };
                        if (_err_3340006 != null) {
                            _gotoNext = 3340068i32;
                        } else {
                            _gotoNext = 3340101i32;
                        };
                    } else if (__value__ == (3340068i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3340006 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3340101i32;
                    } else if (__value__ == (3340101i32)) {
                        if (_r_3339997 != null) {
                            _gotoNext = 3340113i32;
                        } else {
                            _gotoNext = 3340233i32;
                        };
                    } else if (__value__ == (3340113i32)) {
                        _re_3339835.rune = _r_3339997;
                        _t_3337135 = _rest_3340000?.__copy__();
                        _p_3337023._push(_re_3339835);
                        bigSwitchBreak = true;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3340233i32)) {
                        {
                            {
                                var __tmp__ = _p_3337023._parsePerlClassEscape(_t_3337135?.__copy__(), (_re_3339835.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3340236 = __tmp__._0;
                                _rest_3340239 = __tmp__._1?.__copy__();
                            };
                            if (_r_3340236 != null) {
                                _gotoNext = 3340297i32;
                            } else {
                                _gotoNext = 3340371i32;
                            };
                        };
                    } else if (__value__ == (3340297i32)) {
                        _re_3339835.rune = _r_3340236;
                        _t_3337135 = _rest_3340239?.__copy__();
                        _p_3337023._push(_re_3339835);
                        bigSwitchBreak = true;
                        _gotoNext = 3337186i32;
                    } else if (__value__ == (3340371i32)) {
                        _p_3337023._reuse(_re_3339835);
                        {
                            {
                                var __tmp__ = _p_3337023._parseEscape(_t_3337135?.__copy__());
                                _c_3337043 = __tmp__._0;
                                _t_3337135 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3340471i32;
                            } else {
                                _gotoNext = 3340501i32;
                            };
                        };
                    } else if (__value__ == (3340471i32)) {
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
                        _gotoNext = 3340501i32;
                    } else if (__value__ == (3340501i32)) {
                        _p_3337023._literal(_c_3337043);
                        _gotoNext = 3340520i32;
                    } else if (__value__ == (3340520i32)) {
                        _lastRepeat_3337077 = _repeat_3337159?.__copy__();
                        _gotoNext = 3337143i32;
                    } else if (__value__ == (3340545i32)) {
                        _p_3337023._concat();
                        if (_p_3337023._swapVerticalBar()) {
                            _gotoNext = 3340580i32;
                        } else {
                            _gotoNext = 3340645i32;
                        };
                    } else if (__value__ == (3340580i32)) {
                        _p_3337023._stack = (_p_3337023._stack.__slice__(0, ((_p_3337023._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3340645i32;
                    } else if (__value__ == (3340645i32)) {
                        _p_3337023._alternate();
                        _n_3340661 = (_p_3337023._stack.length);
                        if (_n_3340661 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3340690i32;
                        } else {
                            _gotoNext = 3340737i32;
                        };
                    } else if (__value__ == (3340690i32)) {
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
                        _gotoNext = 3340737i32;
                    } else if (__value__ == (3340737i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3337023._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
