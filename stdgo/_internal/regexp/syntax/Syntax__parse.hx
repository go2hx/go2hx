package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3342559:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3344214:stdgo.Error = (null : stdgo.Error);
            var _err_3343819:stdgo.Error = (null : stdgo.Error);
            var _op_3341269:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3344208:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3341367:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3341089:stdgo.Error = (null : stdgo.Error);
            var _rest_3343813:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3343810:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _max_3342762:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t_3341343:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3341251:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3341231:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3344447:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3341285:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3344205:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3342774:Bool = false;
            var _before_3342434:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _lit_3343730:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3342757:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3342742:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3344869:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3344444:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3344043:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _after_3342767:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> {
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
                        });
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3341042i32;
                        } else {
                            _gotoNext = 3341223i32;
                        };
                    } else if (__value__ == (3341042i32)) {
                        {
                            _err_3341089 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3341089 != null) {
                                _gotoNext = 3341121i32;
                            } else {
                                _gotoNext = 3341148i32;
                            };
                        };
                    } else if (__value__ == (3341121i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3341089 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341148i32;
                    } else if (__value__ == (3341148i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341223i32;
                    } else if (__value__ == (3341223i32)) {
                        _p_3341231._flags = _flags;
                        _p_3341231._wholeRegexp = _s?.__copy__();
                        _t_3341343 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3341351i32;
                    } else if (__value__ == (3341351i32)) {
                        if (_t_3341343 != (stdgo.Go.str())) {
                            _gotoNext = 3341363i32;
                        } else {
                            _gotoNext = 3344753i32;
                        };
                    } else if (__value__ == (3341363i32)) {
                        _repeat_3341367 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3341381i32;
                    } else if (__value__ == (3341381i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3341394i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3341343[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3341507i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3341777i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3341874i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3341970i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3342085i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3342215i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3342329i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3342411i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3342712i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3343268i32;
                                } else {
                                    _gotoNext = 3341410i32;
                                };
                            };
                        } else {
                            _gotoNext = 3344728i32;
                        };
                    } else if (__value__ == (3341410i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3341343?.__copy__());
                                _c_3341251 = __tmp__._0;
                                _t_3341343 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3341461i32;
                            } else {
                                _gotoNext = 3341491i32;
                            };
                        };
                    } else if (__value__ == (3341461i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341491i32;
                    } else if (__value__ == (3341491i32)) {
                        _p_3341231._literal(_c_3341251);
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3341507i32)) {
                        if ((((_p_3341231._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3341343.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3341343[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3341572i32;
                        } else {
                            _gotoNext = 3341715i32;
                        };
                    } else if (__value__ == (3341572i32)) {
                        {
                            {
                                var __tmp__ = _p_3341231._parsePerlFlags(_t_3341343?.__copy__());
                                _t_3341343 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3341668i32;
                            } else {
                                _gotoNext = 3341701i32;
                            };
                        };
                    } else if (__value__ == (3341668i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341701i32;
                    } else if (__value__ == (3341701i32)) {
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3341715i32)) {
                        _p_3341231._numCap++;
                        _p_3341231._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3341231._numCap;
                        _t_3341343 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3341777i32)) {
                        {
                            _err = _p_3341231._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3341832i32;
                            } else {
                                _gotoNext = 3341862i32;
                            };
                        };
                    } else if (__value__ == (3341832i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341862i32;
                    } else if (__value__ == (3341862i32)) {
                        _t_3341343 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3341874i32)) {
                        {
                            _err = _p_3341231._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3341928i32;
                            } else {
                                _gotoNext = 3341958i32;
                            };
                        };
                    } else if (__value__ == (3341928i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3341958i32;
                    } else if (__value__ == (3341958i32)) {
                        _t_3341343 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3341970i32)) {
                        if ((_p_3341231._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3342007i32;
                        } else {
                            _gotoNext = 3342041i32;
                        };
                    } else if (__value__ == (3342007i32)) {
                        _p_3341231._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3342073i32;
                    } else if (__value__ == (3342041i32)) {
                        _gotoNext = 3342041i32;
                        _p_3341231._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3342073i32;
                    } else if (__value__ == (3342073i32)) {
                        _t_3341343 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3342085i32)) {
                        if ((_p_3341231._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3342122i32;
                        } else {
                            _gotoNext = 3342173i32;
                        };
                    } else if (__value__ == (3342122i32)) {
                        _p_3341231._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3341231._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3342203i32;
                    } else if (__value__ == (3342173i32)) {
                        _gotoNext = 3342173i32;
                        _p_3341231._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3342203i32;
                    } else if (__value__ == (3342203i32)) {
                        _t_3341343 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3342215i32)) {
                        if ((_p_3341231._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3342250i32;
                        } else {
                            _gotoNext = 3342282i32;
                        };
                    } else if (__value__ == (3342250i32)) {
                        _p_3341231._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3342317i32;
                    } else if (__value__ == (3342282i32)) {
                        _gotoNext = 3342282i32;
                        _p_3341231._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3342317i32;
                    } else if (__value__ == (3342317i32)) {
                        _t_3341343 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3342329i32)) {
                        {
                            {
                                var __tmp__ = _p_3341231._parseClass(_t_3341343?.__copy__());
                                _t_3341343 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3342382i32;
                            } else {
                                _gotoNext = 3344728i32;
                            };
                        };
                    } else if (__value__ == (3342382i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3342411i32)) {
                        _before_3342434 = _t_3341343?.__copy__();
                        _gotoNext = 3342449i32;
                    } else if (__value__ == (3342449i32)) {
                        {
                            final __value__ = _t_3341343[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3342466i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3342495i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3342524i32;
                            } else {
                                _gotoNext = 3342559i32;
                            };
                        };
                    } else if (__value__ == (3342466i32)) {
                        _op_3341269 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3342559i32;
                    } else if (__value__ == (3342495i32)) {
                        _op_3341269 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3342559i32;
                    } else if (__value__ == (3342524i32)) {
                        _op_3341269 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3342559i32;
                    } else if (__value__ == (3342559i32)) {
                        _after_3342559 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3341231._repeat(_op_3341269, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3342434?.__copy__(), _after_3342559?.__copy__(), _lastRepeat_3341285?.__copy__());
                                _after_3342559 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3342651i32;
                            } else {
                                _gotoNext = 3342681i32;
                            };
                        };
                    } else if (__value__ == (3342651i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3342681i32;
                    } else if (__value__ == (3342681i32)) {
                        _repeat_3341367 = _before_3342434?.__copy__();
                        _t_3341343 = _after_3342559?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3342712i32)) {
                        _op_3341269 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3342742 = _t_3341343?.__copy__();
                        {
                            var __tmp__ = _p_3341231._parseRepeat(_t_3341343?.__copy__());
                            _min_3342757 = __tmp__._0;
                            _max_3342762 = __tmp__._1;
                            _after_3342767 = __tmp__._2?.__copy__();
                            _ok_3342774 = __tmp__._3;
                        };
                        if (!_ok_3342774) {
                            _gotoNext = 3342807i32;
                        } else {
                            _gotoNext = 3342915i32;
                        };
                    } else if (__value__ == (3342807i32)) {
                        _p_3341231._literal((123 : stdgo.GoInt32));
                        _t_3341343 = (_t_3341343.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3342915i32)) {
                        if (((((_min_3342757 < (0 : stdgo.GoInt) : Bool) || (_min_3342757 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3342762 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3342762 >= (0 : stdgo.GoInt) : Bool) && (_min_3342757 > _max_3342762 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3342979i32;
                        } else {
                            _gotoNext = 3343129i32;
                        };
                    } else if (__value__ == (3342979i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3342742.__slice__(0, ((_before_3342742.length) - (_after_3342767.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3343129i32;
                    } else if (__value__ == (3343129i32)) {
                        {
                            {
                                var __tmp__ = _p_3341231._repeat(_op_3341269, _min_3342757, _max_3342762, _before_3342742?.__copy__(), _after_3342767?.__copy__(), _lastRepeat_3341285?.__copy__());
                                _after_3342767 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3343207i32;
                            } else {
                                _gotoNext = 3343237i32;
                            };
                        };
                    } else if (__value__ == (3343207i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3343237i32;
                    } else if (__value__ == (3343237i32)) {
                        _repeat_3341367 = _before_3342742?.__copy__();
                        _t_3341343 = _after_3342767?.__copy__();
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3343268i32)) {
                        if ((((_p_3341231._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3341343.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3343319i32;
                        } else {
                            _gotoNext = 3344043i32;
                        };
                    } else if (__value__ == (3343319i32)) {
                        _gotoNext = 3343325i32;
                    } else if (__value__ == (3343325i32)) {
                        {
                            final __value__ = _t_3341343[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3343343i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3343416i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3343492i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3343570i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3343665i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3343961i32;
                            } else {
                                _gotoNext = 3344043i32;
                            };
                        };
                    } else if (__value__ == (3343343i32)) {
                        _p_3341231._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3341343 = (_t_3341343.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3343416i32)) {
                        _p_3341231._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3341343 = (_t_3341343.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3343492i32)) {
                        _p_3341231._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3341343 = (_t_3341343.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3343570i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3341343.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3344043i32;
                    } else if (__value__ == (3343665i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3341343.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3343730 = __tmp__._0?.__copy__();
                            _t_3341343 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3343788i32;
                    } else if (__value__ == (3343788i32)) {
                        if (_lit_3343730 != (stdgo.Go.str())) {
                            _gotoNext = 3343802i32;
                        } else {
                            _gotoNext = 3343941i32;
                        };
                    } else if (__value__ == (3343802i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3343730?.__copy__());
                            _c_3343810 = __tmp__._0;
                            _rest_3343813 = __tmp__._1?.__copy__();
                            _err_3343819 = __tmp__._2;
                        };
                        if (_err_3343819 != null) {
                            _gotoNext = 3343860i32;
                        } else {
                            _gotoNext = 3343899i32;
                        };
                    } else if (__value__ == (3343860i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3343819 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3343899i32;
                    } else if (__value__ == (3343899i32)) {
                        _p_3341231._literal(_c_3343810);
                        _lit_3343730 = _rest_3343813?.__copy__();
                        _gotoNext = 3343788i32;
                    } else if (__value__ == (3343941i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3343961i32)) {
                        _p_3341231._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3341343 = (_t_3341343.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3344043i32)) {
                        _re_3344043 = _p_3341231._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3344043.flags = _p_3341231._flags;
                        if ((((_t_3341343.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3341343[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3341343[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3344199i32;
                        } else {
                            _gotoNext = 3344441i32;
                        };
                    } else if (__value__ == (3344199i32)) {
                        {
                            var __tmp__ = _p_3341231._parseUnicodeClass(_t_3341343?.__copy__(), (_re_3344043.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3344205 = __tmp__._0;
                            _rest_3344208 = __tmp__._1?.__copy__();
                            _err_3344214 = __tmp__._2;
                        };
                        if (_err_3344214 != null) {
                            _gotoNext = 3344276i32;
                        } else {
                            _gotoNext = 3344309i32;
                        };
                    } else if (__value__ == (3344276i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3344214 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3344309i32;
                    } else if (__value__ == (3344309i32)) {
                        if (_r_3344205 != null) {
                            _gotoNext = 3344321i32;
                        } else {
                            _gotoNext = 3344441i32;
                        };
                    } else if (__value__ == (3344321i32)) {
                        _re_3344043.rune = _r_3344205;
                        _t_3341343 = _rest_3344208?.__copy__();
                        _p_3341231._push(_re_3344043);
                        bigSwitchBreak = true;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3344441i32)) {
                        {
                            {
                                var __tmp__ = _p_3341231._parsePerlClassEscape(_t_3341343?.__copy__(), (_re_3344043.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3344444 = __tmp__._0;
                                _rest_3344447 = __tmp__._1?.__copy__();
                            };
                            if (_r_3344444 != null) {
                                _gotoNext = 3344505i32;
                            } else {
                                _gotoNext = 3344579i32;
                            };
                        };
                    } else if (__value__ == (3344505i32)) {
                        _re_3344043.rune = _r_3344444;
                        _t_3341343 = _rest_3344447?.__copy__();
                        _p_3341231._push(_re_3344043);
                        bigSwitchBreak = true;
                        _gotoNext = 3341394i32;
                    } else if (__value__ == (3344579i32)) {
                        _p_3341231._reuse(_re_3344043);
                        {
                            {
                                var __tmp__ = _p_3341231._parseEscape(_t_3341343?.__copy__());
                                _c_3341251 = __tmp__._0;
                                _t_3341343 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3344679i32;
                            } else {
                                _gotoNext = 3344709i32;
                            };
                        };
                    } else if (__value__ == (3344679i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3344709i32;
                    } else if (__value__ == (3344709i32)) {
                        _p_3341231._literal(_c_3341251);
                        _gotoNext = 3344728i32;
                    } else if (__value__ == (3344728i32)) {
                        _lastRepeat_3341285 = _repeat_3341367?.__copy__();
                        _gotoNext = 3341351i32;
                    } else if (__value__ == (3344753i32)) {
                        _p_3341231._concat();
                        if (_p_3341231._swapVerticalBar()) {
                            _gotoNext = 3344788i32;
                        } else {
                            _gotoNext = 3344853i32;
                        };
                    } else if (__value__ == (3344788i32)) {
                        _p_3341231._stack = (_p_3341231._stack.__slice__(0, ((_p_3341231._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3344853i32;
                    } else if (__value__ == (3344853i32)) {
                        _p_3341231._alternate();
                        _n_3344869 = (_p_3341231._stack.length);
                        if (_n_3344869 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3344898i32;
                        } else {
                            _gotoNext = 3344945i32;
                        };
                    } else if (__value__ == (3344898i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3344945i32;
                    } else if (__value__ == (3344945i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3341231._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
