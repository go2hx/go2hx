package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _rest_3561437:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3560809:stdgo.Error = (null : stdgo.Error);
            var _ok_3559764:Bool = false;
            var _min_3559747:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_3560803:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3559752:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3559424:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _r_3561434:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3561033:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3560800:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3560720:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3559732:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3558333:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3561198:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3561195:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _repeat_3558357:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3558275:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3561204:stdgo.Error = (null : stdgo.Error);
            var _op_3558259:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3558241:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _p_3558221:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _after_3559757:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3559549:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3561859:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3558079:stdgo.Error = (null : stdgo.Error);
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
                            _gotoNext = 3558032i32;
                        } else {
                            _gotoNext = 3558213i32;
                        };
                    } else if (__value__ == (3558032i32)) {
                        {
                            _err_3558079 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3558079 != null) {
                                _gotoNext = 3558111i32;
                            } else {
                                _gotoNext = 3558138i32;
                            };
                        };
                    } else if (__value__ == (3558111i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3558079 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3558138i32;
                    } else if (__value__ == (3558138i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3558213i32;
                    } else if (__value__ == (3558213i32)) {
                        _p_3558221._flags = _flags;
                        _p_3558221._wholeRegexp = _s?.__copy__();
                        _t_3558333 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3558341i32;
                    } else if (__value__ == (3558341i32)) {
                        if (_t_3558333 != (stdgo.Go.str())) {
                            _gotoNext = 3558353i32;
                        } else {
                            _gotoNext = 3561743i32;
                        };
                    } else if (__value__ == (3558353i32)) {
                        _repeat_3558357 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3558371i32;
                    } else if (__value__ == (3558371i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3558384i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3558333[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558497i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558767i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558864i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3558960i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3559075i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3559205i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3559319i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3559401i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3559702i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3560258i32;
                                } else {
                                    _gotoNext = 3558400i32;
                                };
                            };
                        } else {
                            _gotoNext = 3561718i32;
                        };
                    } else if (__value__ == (3558400i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3558333?.__copy__());
                                _c_3558241 = __tmp__._0;
                                _t_3558333 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3558451i32;
                            } else {
                                _gotoNext = 3558481i32;
                            };
                        };
                    } else if (__value__ == (3558451i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3558481i32;
                    } else if (__value__ == (3558481i32)) {
                        _p_3558221._literal(_c_3558241);
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3558497i32)) {
                        if ((((_p_3558221._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3558333.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3558333[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3558562i32;
                        } else {
                            _gotoNext = 3558705i32;
                        };
                    } else if (__value__ == (3558562i32)) {
                        {
                            {
                                var __tmp__ = _p_3558221._parsePerlFlags(_t_3558333?.__copy__());
                                _t_3558333 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3558658i32;
                            } else {
                                _gotoNext = 3558691i32;
                            };
                        };
                    } else if (__value__ == (3558658i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3558691i32;
                    } else if (__value__ == (3558691i32)) {
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3558705i32)) {
                        _p_3558221._numCap++;
                        _p_3558221._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3558221._numCap;
                        _t_3558333 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3558767i32)) {
                        {
                            _err = _p_3558221._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3558822i32;
                            } else {
                                _gotoNext = 3558852i32;
                            };
                        };
                    } else if (__value__ == (3558822i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3558852i32;
                    } else if (__value__ == (3558852i32)) {
                        _t_3558333 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3558864i32)) {
                        {
                            _err = _p_3558221._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3558918i32;
                            } else {
                                _gotoNext = 3558948i32;
                            };
                        };
                    } else if (__value__ == (3558918i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3558948i32;
                    } else if (__value__ == (3558948i32)) {
                        _t_3558333 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3558960i32)) {
                        if ((_p_3558221._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3558997i32;
                        } else {
                            _gotoNext = 3559031i32;
                        };
                    } else if (__value__ == (3558997i32)) {
                        _p_3558221._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3559063i32;
                    } else if (__value__ == (3559031i32)) {
                        _gotoNext = 3559031i32;
                        _p_3558221._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3559063i32;
                    } else if (__value__ == (3559063i32)) {
                        _t_3558333 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3559075i32)) {
                        if ((_p_3558221._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3559112i32;
                        } else {
                            _gotoNext = 3559163i32;
                        };
                    } else if (__value__ == (3559112i32)) {
                        _p_3558221._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3558221._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3559193i32;
                    } else if (__value__ == (3559163i32)) {
                        _gotoNext = 3559163i32;
                        _p_3558221._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3559193i32;
                    } else if (__value__ == (3559193i32)) {
                        _t_3558333 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3559205i32)) {
                        if ((_p_3558221._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3559240i32;
                        } else {
                            _gotoNext = 3559272i32;
                        };
                    } else if (__value__ == (3559240i32)) {
                        _p_3558221._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3559307i32;
                    } else if (__value__ == (3559272i32)) {
                        _gotoNext = 3559272i32;
                        _p_3558221._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3559307i32;
                    } else if (__value__ == (3559307i32)) {
                        _t_3558333 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3559319i32)) {
                        {
                            {
                                var __tmp__ = _p_3558221._parseClass(_t_3558333?.__copy__());
                                _t_3558333 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3559372i32;
                            } else {
                                _gotoNext = 3561718i32;
                            };
                        };
                    } else if (__value__ == (3559372i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3559401i32)) {
                        _before_3559424 = _t_3558333?.__copy__();
                        _gotoNext = 3559439i32;
                    } else if (__value__ == (3559439i32)) {
                        {
                            final __value__ = _t_3558333[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3559456i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3559485i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3559514i32;
                            } else {
                                _gotoNext = 3559549i32;
                            };
                        };
                    } else if (__value__ == (3559456i32)) {
                        _op_3558259 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3559549i32;
                    } else if (__value__ == (3559485i32)) {
                        _op_3558259 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3559549i32;
                    } else if (__value__ == (3559514i32)) {
                        _op_3558259 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3559549i32;
                    } else if (__value__ == (3559549i32)) {
                        _after_3559549 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3558221._repeat(_op_3558259, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3559424?.__copy__(), _after_3559549?.__copy__(), _lastRepeat_3558275?.__copy__());
                                _after_3559549 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3559641i32;
                            } else {
                                _gotoNext = 3559671i32;
                            };
                        };
                    } else if (__value__ == (3559641i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3559671i32;
                    } else if (__value__ == (3559671i32)) {
                        _repeat_3558357 = _before_3559424?.__copy__();
                        _t_3558333 = _after_3559549?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3559702i32)) {
                        _op_3558259 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3559732 = _t_3558333?.__copy__();
                        {
                            var __tmp__ = _p_3558221._parseRepeat(_t_3558333?.__copy__());
                            _min_3559747 = __tmp__._0;
                            _max_3559752 = __tmp__._1;
                            _after_3559757 = __tmp__._2?.__copy__();
                            _ok_3559764 = __tmp__._3;
                        };
                        if (!_ok_3559764) {
                            _gotoNext = 3559797i32;
                        } else {
                            _gotoNext = 3559905i32;
                        };
                    } else if (__value__ == (3559797i32)) {
                        _p_3558221._literal((123 : stdgo.GoInt32));
                        _t_3558333 = (_t_3558333.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3559905i32)) {
                        if (((((_min_3559747 < (0 : stdgo.GoInt) : Bool) || (_min_3559747 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3559752 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3559752 >= (0 : stdgo.GoInt) : Bool) && (_min_3559747 > _max_3559752 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3559969i32;
                        } else {
                            _gotoNext = 3560119i32;
                        };
                    } else if (__value__ == (3559969i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3559732.__slice__(0, ((_before_3559732.length) - (_after_3559757.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3560119i32;
                    } else if (__value__ == (3560119i32)) {
                        {
                            {
                                var __tmp__ = _p_3558221._repeat(_op_3558259, _min_3559747, _max_3559752, _before_3559732?.__copy__(), _after_3559757?.__copy__(), _lastRepeat_3558275?.__copy__());
                                _after_3559757 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3560197i32;
                            } else {
                                _gotoNext = 3560227i32;
                            };
                        };
                    } else if (__value__ == (3560197i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3560227i32;
                    } else if (__value__ == (3560227i32)) {
                        _repeat_3558357 = _before_3559732?.__copy__();
                        _t_3558333 = _after_3559757?.__copy__();
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3560258i32)) {
                        if ((((_p_3558221._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3558333.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3560309i32;
                        } else {
                            _gotoNext = 3561033i32;
                        };
                    } else if (__value__ == (3560309i32)) {
                        _gotoNext = 3560315i32;
                    } else if (__value__ == (3560315i32)) {
                        {
                            final __value__ = _t_3558333[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3560333i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3560406i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3560482i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3560560i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3560655i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3560951i32;
                            } else {
                                _gotoNext = 3561033i32;
                            };
                        };
                    } else if (__value__ == (3560333i32)) {
                        _p_3558221._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3558333 = (_t_3558333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3560406i32)) {
                        _p_3558221._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3558333 = (_t_3558333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3560482i32)) {
                        _p_3558221._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3558333 = (_t_3558333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3560560i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3558333.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3561033i32;
                    } else if (__value__ == (3560655i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3558333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3560720 = __tmp__._0?.__copy__();
                            _t_3558333 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3560778i32;
                    } else if (__value__ == (3560778i32)) {
                        if (_lit_3560720 != (stdgo.Go.str())) {
                            _gotoNext = 3560792i32;
                        } else {
                            _gotoNext = 3560931i32;
                        };
                    } else if (__value__ == (3560792i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3560720?.__copy__());
                            _c_3560800 = __tmp__._0;
                            _rest_3560803 = __tmp__._1?.__copy__();
                            _err_3560809 = __tmp__._2;
                        };
                        if (_err_3560809 != null) {
                            _gotoNext = 3560850i32;
                        } else {
                            _gotoNext = 3560889i32;
                        };
                    } else if (__value__ == (3560850i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3560809 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3560889i32;
                    } else if (__value__ == (3560889i32)) {
                        _p_3558221._literal(_c_3560800);
                        _lit_3560720 = _rest_3560803?.__copy__();
                        _gotoNext = 3560778i32;
                    } else if (__value__ == (3560931i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3560951i32)) {
                        _p_3558221._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3558333 = (_t_3558333.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3561033i32)) {
                        _re_3561033 = _p_3558221._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3561033.flags = _p_3558221._flags;
                        if ((((_t_3558333.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3558333[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3558333[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3561189i32;
                        } else {
                            _gotoNext = 3561431i32;
                        };
                    } else if (__value__ == (3561189i32)) {
                        {
                            var __tmp__ = _p_3558221._parseUnicodeClass(_t_3558333?.__copy__(), (_re_3561033.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3561195 = __tmp__._0;
                            _rest_3561198 = __tmp__._1?.__copy__();
                            _err_3561204 = __tmp__._2;
                        };
                        if (_err_3561204 != null) {
                            _gotoNext = 3561266i32;
                        } else {
                            _gotoNext = 3561299i32;
                        };
                    } else if (__value__ == (3561266i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3561204 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3561299i32;
                    } else if (__value__ == (3561299i32)) {
                        if (_r_3561195 != null) {
                            _gotoNext = 3561311i32;
                        } else {
                            _gotoNext = 3561431i32;
                        };
                    } else if (__value__ == (3561311i32)) {
                        _re_3561033.rune = _r_3561195;
                        _t_3558333 = _rest_3561198?.__copy__();
                        _p_3558221._push(_re_3561033);
                        bigSwitchBreak = true;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3561431i32)) {
                        {
                            {
                                var __tmp__ = _p_3558221._parsePerlClassEscape(_t_3558333?.__copy__(), (_re_3561033.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3561434 = __tmp__._0;
                                _rest_3561437 = __tmp__._1?.__copy__();
                            };
                            if (_r_3561434 != null) {
                                _gotoNext = 3561495i32;
                            } else {
                                _gotoNext = 3561569i32;
                            };
                        };
                    } else if (__value__ == (3561495i32)) {
                        _re_3561033.rune = _r_3561434;
                        _t_3558333 = _rest_3561437?.__copy__();
                        _p_3558221._push(_re_3561033);
                        bigSwitchBreak = true;
                        _gotoNext = 3558384i32;
                    } else if (__value__ == (3561569i32)) {
                        _p_3558221._reuse(_re_3561033);
                        {
                            {
                                var __tmp__ = _p_3558221._parseEscape(_t_3558333?.__copy__());
                                _c_3558241 = __tmp__._0;
                                _t_3558333 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3561669i32;
                            } else {
                                _gotoNext = 3561699i32;
                            };
                        };
                    } else if (__value__ == (3561669i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3561699i32;
                    } else if (__value__ == (3561699i32)) {
                        _p_3558221._literal(_c_3558241);
                        _gotoNext = 3561718i32;
                    } else if (__value__ == (3561718i32)) {
                        _lastRepeat_3558275 = _repeat_3558357?.__copy__();
                        _gotoNext = 3558341i32;
                    } else if (__value__ == (3561743i32)) {
                        _p_3558221._concat();
                        if (_p_3558221._swapVerticalBar()) {
                            _gotoNext = 3561778i32;
                        } else {
                            _gotoNext = 3561843i32;
                        };
                    } else if (__value__ == (3561778i32)) {
                        _p_3558221._stack = (_p_3558221._stack.__slice__(0, ((_p_3558221._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3561843i32;
                    } else if (__value__ == (3561843i32)) {
                        _p_3558221._alternate();
                        _n_3561859 = (_p_3558221._stack.length);
                        if (_n_3561859 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3561888i32;
                        } else {
                            _gotoNext = 3561935i32;
                        };
                    } else if (__value__ == (3561888i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3561935i32;
                    } else if (__value__ == (3561935i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3558221._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
