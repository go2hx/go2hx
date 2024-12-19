package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3333246:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _op_3331748:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _t_3331822:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3331730:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3331568:stdgo.Error = (null : stdgo.Error);
            var _r_3334684:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3334292:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3333253:Bool = false;
            var _after_3333038:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3331764:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3331710:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3334926:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3334923:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3334522:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3334289:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3333221:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3332913:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3331846:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3334693:stdgo.Error = (null : stdgo.Error);
            var _err_3334298:stdgo.Error = (null : stdgo.Error);
            var _min_3333236:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n_3335348:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3334687:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3334209:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3333241:stdgo.GoInt = (0 : stdgo.GoInt);
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
                            _gotoNext = 3331521i32;
                        } else {
                            _gotoNext = 3331702i32;
                        };
                    } else if (__value__ == (3331521i32)) {
                        {
                            _err_3331568 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3331568 != null) {
                                _gotoNext = 3331600i32;
                            } else {
                                _gotoNext = 3331627i32;
                            };
                        };
                    } else if (__value__ == (3331600i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3331568 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3331627i32;
                    } else if (__value__ == (3331627i32)) {
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
                        _gotoNext = 3331702i32;
                    } else if (__value__ == (3331702i32)) {
                        _p_3331710._flags = _flags;
                        _p_3331710._wholeRegexp = _s?.__copy__();
                        _t_3331822 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3331830i32;
                    } else if (__value__ == (3331830i32)) {
                        if (_t_3331822 != (stdgo.Go.str())) {
                            _gotoNext = 3331842i32;
                        } else {
                            _gotoNext = 3335232i32;
                        };
                    } else if (__value__ == (3331842i32)) {
                        _repeat_3331846 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3331860i32;
                    } else if (__value__ == (3331860i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3331873i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3331822[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3331986i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332256i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332353i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332449i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332564i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332694i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332808i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3332890i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333191i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3333747i32;
                                } else {
                                    _gotoNext = 3331889i32;
                                };
                            };
                        } else {
                            _gotoNext = 3335207i32;
                        };
                    } else if (__value__ == (3331889i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3331822?.__copy__());
                                _c_3331730 = __tmp__._0;
                                _t_3331822 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3331940i32;
                            } else {
                                _gotoNext = 3331970i32;
                            };
                        };
                    } else if (__value__ == (3331940i32)) {
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
                        _gotoNext = 3331970i32;
                    } else if (__value__ == (3331970i32)) {
                        _p_3331710._literal(_c_3331730);
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3331986i32)) {
                        if ((((_p_3331710._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3331822.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3331822[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3332051i32;
                        } else {
                            _gotoNext = 3332194i32;
                        };
                    } else if (__value__ == (3332051i32)) {
                        {
                            {
                                var __tmp__ = _p_3331710._parsePerlFlags(_t_3331822?.__copy__());
                                _t_3331822 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3332147i32;
                            } else {
                                _gotoNext = 3332180i32;
                            };
                        };
                    } else if (__value__ == (3332147i32)) {
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
                        _gotoNext = 3332180i32;
                    } else if (__value__ == (3332180i32)) {
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332194i32)) {
                        _p_3331710._numCap++;
                        _p_3331710._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3331710._numCap;
                        _t_3331822 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332256i32)) {
                        {
                            _err = _p_3331710._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3332311i32;
                            } else {
                                _gotoNext = 3332341i32;
                            };
                        };
                    } else if (__value__ == (3332311i32)) {
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
                        _gotoNext = 3332341i32;
                    } else if (__value__ == (3332341i32)) {
                        _t_3331822 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332353i32)) {
                        {
                            _err = _p_3331710._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3332407i32;
                            } else {
                                _gotoNext = 3332437i32;
                            };
                        };
                    } else if (__value__ == (3332407i32)) {
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
                        _gotoNext = 3332437i32;
                    } else if (__value__ == (3332437i32)) {
                        _t_3331822 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332449i32)) {
                        if ((_p_3331710._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3332486i32;
                        } else {
                            _gotoNext = 3332520i32;
                        };
                    } else if (__value__ == (3332486i32)) {
                        _p_3331710._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3332552i32;
                    } else if (__value__ == (3332520i32)) {
                        _gotoNext = 3332520i32;
                        _p_3331710._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3332552i32;
                    } else if (__value__ == (3332552i32)) {
                        _t_3331822 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332564i32)) {
                        if ((_p_3331710._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3332601i32;
                        } else {
                            _gotoNext = 3332652i32;
                        };
                    } else if (__value__ == (3332601i32)) {
                        _p_3331710._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3331710._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3332682i32;
                    } else if (__value__ == (3332652i32)) {
                        _gotoNext = 3332652i32;
                        _p_3331710._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3332682i32;
                    } else if (__value__ == (3332682i32)) {
                        _t_3331822 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332694i32)) {
                        if ((_p_3331710._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3332729i32;
                        } else {
                            _gotoNext = 3332761i32;
                        };
                    } else if (__value__ == (3332729i32)) {
                        _p_3331710._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3332796i32;
                    } else if (__value__ == (3332761i32)) {
                        _gotoNext = 3332761i32;
                        _p_3331710._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3332796i32;
                    } else if (__value__ == (3332796i32)) {
                        _t_3331822 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332808i32)) {
                        {
                            {
                                var __tmp__ = _p_3331710._parseClass(_t_3331822?.__copy__());
                                _t_3331822 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3332861i32;
                            } else {
                                _gotoNext = 3335207i32;
                            };
                        };
                    } else if (__value__ == (3332861i32)) {
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
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3332890i32)) {
                        _before_3332913 = _t_3331822?.__copy__();
                        _gotoNext = 3332928i32;
                    } else if (__value__ == (3332928i32)) {
                        {
                            final __value__ = _t_3331822[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3332945i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3332974i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3333003i32;
                            } else {
                                _gotoNext = 3333038i32;
                            };
                        };
                    } else if (__value__ == (3332945i32)) {
                        _op_3331748 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3333038i32;
                    } else if (__value__ == (3332974i32)) {
                        _op_3331748 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3333038i32;
                    } else if (__value__ == (3333003i32)) {
                        _op_3331748 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3333038i32;
                    } else if (__value__ == (3333038i32)) {
                        _after_3333038 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3331710._repeat(_op_3331748, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3332913?.__copy__(), _after_3333038?.__copy__(), _lastRepeat_3331764?.__copy__());
                                _after_3333038 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3333130i32;
                            } else {
                                _gotoNext = 3333160i32;
                            };
                        };
                    } else if (__value__ == (3333130i32)) {
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
                        _gotoNext = 3333160i32;
                    } else if (__value__ == (3333160i32)) {
                        _repeat_3331846 = _before_3332913?.__copy__();
                        _t_3331822 = _after_3333038?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3333191i32)) {
                        _op_3331748 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3333221 = _t_3331822?.__copy__();
                        {
                            var __tmp__ = _p_3331710._parseRepeat(_t_3331822?.__copy__());
                            _min_3333236 = __tmp__._0;
                            _max_3333241 = __tmp__._1;
                            _after_3333246 = __tmp__._2?.__copy__();
                            _ok_3333253 = __tmp__._3;
                        };
                        if (!_ok_3333253) {
                            _gotoNext = 3333286i32;
                        } else {
                            _gotoNext = 3333394i32;
                        };
                    } else if (__value__ == (3333286i32)) {
                        _p_3331710._literal((123 : stdgo.GoInt32));
                        _t_3331822 = (_t_3331822.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3333394i32)) {
                        if (((((_min_3333236 < (0 : stdgo.GoInt) : Bool) || (_min_3333236 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3333241 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3333241 >= (0 : stdgo.GoInt) : Bool) && (_min_3333236 > _max_3333241 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3333458i32;
                        } else {
                            _gotoNext = 3333608i32;
                        };
                    } else if (__value__ == (3333458i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3333221.__slice__(0, ((_before_3333221.length) - (_after_3333246.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3333608i32;
                    } else if (__value__ == (3333608i32)) {
                        {
                            {
                                var __tmp__ = _p_3331710._repeat(_op_3331748, _min_3333236, _max_3333241, _before_3333221?.__copy__(), _after_3333246?.__copy__(), _lastRepeat_3331764?.__copy__());
                                _after_3333246 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3333686i32;
                            } else {
                                _gotoNext = 3333716i32;
                            };
                        };
                    } else if (__value__ == (3333686i32)) {
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
                        _gotoNext = 3333716i32;
                    } else if (__value__ == (3333716i32)) {
                        _repeat_3331846 = _before_3333221?.__copy__();
                        _t_3331822 = _after_3333246?.__copy__();
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3333747i32)) {
                        if ((((_p_3331710._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3331822.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3333798i32;
                        } else {
                            _gotoNext = 3334522i32;
                        };
                    } else if (__value__ == (3333798i32)) {
                        _gotoNext = 3333804i32;
                    } else if (__value__ == (3333804i32)) {
                        {
                            final __value__ = _t_3331822[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3333822i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3333895i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3333971i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3334049i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3334144i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3334440i32;
                            } else {
                                _gotoNext = 3334522i32;
                            };
                        };
                    } else if (__value__ == (3333822i32)) {
                        _p_3331710._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331822 = (_t_3331822.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3333895i32)) {
                        _p_3331710._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331822 = (_t_3331822.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3333971i32)) {
                        _p_3331710._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331822 = (_t_3331822.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3334049i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3331822.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3334522i32;
                    } else if (__value__ == (3334144i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3331822.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3334209 = __tmp__._0?.__copy__();
                            _t_3331822 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3334267i32;
                    } else if (__value__ == (3334267i32)) {
                        if (_lit_3334209 != (stdgo.Go.str())) {
                            _gotoNext = 3334281i32;
                        } else {
                            _gotoNext = 3334420i32;
                        };
                    } else if (__value__ == (3334281i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3334209?.__copy__());
                            _c_3334289 = __tmp__._0;
                            _rest_3334292 = __tmp__._1?.__copy__();
                            _err_3334298 = __tmp__._2;
                        };
                        if (_err_3334298 != null) {
                            _gotoNext = 3334339i32;
                        } else {
                            _gotoNext = 3334378i32;
                        };
                    } else if (__value__ == (3334339i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3334298 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3334378i32;
                    } else if (__value__ == (3334378i32)) {
                        _p_3331710._literal(_c_3334289);
                        _lit_3334209 = _rest_3334292?.__copy__();
                        _gotoNext = 3334267i32;
                    } else if (__value__ == (3334420i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3334440i32)) {
                        _p_3331710._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3331822 = (_t_3331822.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3334522i32)) {
                        _re_3334522 = _p_3331710._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3334522.flags = _p_3331710._flags;
                        if ((((_t_3331822.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3331822[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3331822[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3334678i32;
                        } else {
                            _gotoNext = 3334920i32;
                        };
                    } else if (__value__ == (3334678i32)) {
                        {
                            var __tmp__ = _p_3331710._parseUnicodeClass(_t_3331822?.__copy__(), (_re_3334522.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3334684 = __tmp__._0;
                            _rest_3334687 = __tmp__._1?.__copy__();
                            _err_3334693 = __tmp__._2;
                        };
                        if (_err_3334693 != null) {
                            _gotoNext = 3334755i32;
                        } else {
                            _gotoNext = 3334788i32;
                        };
                    } else if (__value__ == (3334755i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3334693 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3334788i32;
                    } else if (__value__ == (3334788i32)) {
                        if (_r_3334684 != null) {
                            _gotoNext = 3334800i32;
                        } else {
                            _gotoNext = 3334920i32;
                        };
                    } else if (__value__ == (3334800i32)) {
                        _re_3334522.rune = _r_3334684;
                        _t_3331822 = _rest_3334687?.__copy__();
                        _p_3331710._push(_re_3334522);
                        bigSwitchBreak = true;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3334920i32)) {
                        {
                            {
                                var __tmp__ = _p_3331710._parsePerlClassEscape(_t_3331822?.__copy__(), (_re_3334522.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3334923 = __tmp__._0;
                                _rest_3334926 = __tmp__._1?.__copy__();
                            };
                            if (_r_3334923 != null) {
                                _gotoNext = 3334984i32;
                            } else {
                                _gotoNext = 3335058i32;
                            };
                        };
                    } else if (__value__ == (3334984i32)) {
                        _re_3334522.rune = _r_3334923;
                        _t_3331822 = _rest_3334926?.__copy__();
                        _p_3331710._push(_re_3334522);
                        bigSwitchBreak = true;
                        _gotoNext = 3331873i32;
                    } else if (__value__ == (3335058i32)) {
                        _p_3331710._reuse(_re_3334522);
                        {
                            {
                                var __tmp__ = _p_3331710._parseEscape(_t_3331822?.__copy__());
                                _c_3331730 = __tmp__._0;
                                _t_3331822 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3335158i32;
                            } else {
                                _gotoNext = 3335188i32;
                            };
                        };
                    } else if (__value__ == (3335158i32)) {
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
                        _gotoNext = 3335188i32;
                    } else if (__value__ == (3335188i32)) {
                        _p_3331710._literal(_c_3331730);
                        _gotoNext = 3335207i32;
                    } else if (__value__ == (3335207i32)) {
                        _lastRepeat_3331764 = _repeat_3331846?.__copy__();
                        _gotoNext = 3331830i32;
                    } else if (__value__ == (3335232i32)) {
                        _p_3331710._concat();
                        if (_p_3331710._swapVerticalBar()) {
                            _gotoNext = 3335267i32;
                        } else {
                            _gotoNext = 3335332i32;
                        };
                    } else if (__value__ == (3335267i32)) {
                        _p_3331710._stack = (_p_3331710._stack.__slice__(0, ((_p_3331710._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3335332i32;
                    } else if (__value__ == (3335332i32)) {
                        _p_3331710._alternate();
                        _n_3335348 = (_p_3331710._stack.length);
                        if (_n_3335348 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3335377i32;
                        } else {
                            _gotoNext = 3335424i32;
                        };
                    } else if (__value__ == (3335377i32)) {
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
                        _gotoNext = 3335424i32;
                    } else if (__value__ == (3335424i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3331710._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
