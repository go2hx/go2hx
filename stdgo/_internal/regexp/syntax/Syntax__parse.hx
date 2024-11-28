package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _n_3548190:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3545880:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3544590:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _before_3546063:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3547131:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _t_3544664:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3544410:stdgo.Error = (null : stdgo.Error);
            var bigSwitchBreak = false;
            var _err_3547535:stdgo.Error = (null : stdgo.Error);
            var _r_3547526:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3547765:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3546095:Bool = false;
            var _repeat_3544688:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3545755:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3544572:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _rest_3547768:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3547134:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3547051:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3546083:stdgo.GoInt = (0 : stdgo.GoInt);
            var _p_3544552:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _re_3547364:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _err_3547140:stdgo.Error = (null : stdgo.Error);
            var _after_3546088:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3546078:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRepeat_3544606:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3547529:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3544363i32;
                        } else {
                            _gotoNext = 3544544i32;
                        };
                    } else if (__value__ == (3544363i32)) {
                        {
                            _err_3544410 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3544410 != null) {
                                _gotoNext = 3544442i32;
                            } else {
                                _gotoNext = 3544469i32;
                            };
                        };
                    } else if (__value__ == (3544442i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3544410 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3544469i32;
                    } else if (__value__ == (3544469i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3544544i32;
                    } else if (__value__ == (3544544i32)) {
                        _p_3544552._flags = _flags;
                        _p_3544552._wholeRegexp = _s?.__copy__();
                        _t_3544664 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3544672i32;
                    } else if (__value__ == (3544672i32)) {
                        if (_t_3544664 != (stdgo.Go.str())) {
                            _gotoNext = 3544684i32;
                        } else {
                            _gotoNext = 3548074i32;
                        };
                    } else if (__value__ == (3544684i32)) {
                        _repeat_3544688 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3544702i32;
                    } else if (__value__ == (3544702i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3544715i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3544664[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3544828i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545098i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545195i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545291i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545406i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545536i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545650i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3545732i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546033i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3546589i32;
                                } else {
                                    _gotoNext = 3544731i32;
                                };
                            };
                        } else {
                            _gotoNext = 3548049i32;
                        };
                    } else if (__value__ == (3544731i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3544664?.__copy__());
                                _c_3544572 = __tmp__._0;
                                _t_3544664 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3544782i32;
                            } else {
                                _gotoNext = 3544812i32;
                            };
                        };
                    } else if (__value__ == (3544782i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3544812i32;
                    } else if (__value__ == (3544812i32)) {
                        _p_3544552._literal(_c_3544572);
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3544828i32)) {
                        if ((((_p_3544552._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3544664.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3544664[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3544893i32;
                        } else {
                            _gotoNext = 3545036i32;
                        };
                    } else if (__value__ == (3544893i32)) {
                        {
                            {
                                var __tmp__ = _p_3544552._parsePerlFlags(_t_3544664?.__copy__());
                                _t_3544664 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3544989i32;
                            } else {
                                _gotoNext = 3545022i32;
                            };
                        };
                    } else if (__value__ == (3544989i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3545022i32;
                    } else if (__value__ == (3545022i32)) {
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545036i32)) {
                        _p_3544552._numCap++;
                        _p_3544552._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3544552._numCap;
                        _t_3544664 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545098i32)) {
                        {
                            _err = _p_3544552._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3545153i32;
                            } else {
                                _gotoNext = 3545183i32;
                            };
                        };
                    } else if (__value__ == (3545153i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3545183i32;
                    } else if (__value__ == (3545183i32)) {
                        _t_3544664 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545195i32)) {
                        {
                            _err = _p_3544552._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3545249i32;
                            } else {
                                _gotoNext = 3545279i32;
                            };
                        };
                    } else if (__value__ == (3545249i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3545279i32;
                    } else if (__value__ == (3545279i32)) {
                        _t_3544664 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545291i32)) {
                        if ((_p_3544552._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3545328i32;
                        } else {
                            _gotoNext = 3545362i32;
                        };
                    } else if (__value__ == (3545328i32)) {
                        _p_3544552._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3545394i32;
                    } else if (__value__ == (3545362i32)) {
                        _gotoNext = 3545362i32;
                        _p_3544552._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3545394i32;
                    } else if (__value__ == (3545394i32)) {
                        _t_3544664 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545406i32)) {
                        if ((_p_3544552._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3545443i32;
                        } else {
                            _gotoNext = 3545494i32;
                        };
                    } else if (__value__ == (3545443i32)) {
                        _p_3544552._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3544552._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3545524i32;
                    } else if (__value__ == (3545494i32)) {
                        _gotoNext = 3545494i32;
                        _p_3544552._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3545524i32;
                    } else if (__value__ == (3545524i32)) {
                        _t_3544664 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545536i32)) {
                        if ((_p_3544552._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3545571i32;
                        } else {
                            _gotoNext = 3545603i32;
                        };
                    } else if (__value__ == (3545571i32)) {
                        _p_3544552._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3545638i32;
                    } else if (__value__ == (3545603i32)) {
                        _gotoNext = 3545603i32;
                        _p_3544552._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3545638i32;
                    } else if (__value__ == (3545638i32)) {
                        _t_3544664 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545650i32)) {
                        {
                            {
                                var __tmp__ = _p_3544552._parseClass(_t_3544664?.__copy__());
                                _t_3544664 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3545703i32;
                            } else {
                                _gotoNext = 3548049i32;
                            };
                        };
                    } else if (__value__ == (3545703i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3545732i32)) {
                        _before_3545755 = _t_3544664?.__copy__();
                        _gotoNext = 3545770i32;
                    } else if (__value__ == (3545770i32)) {
                        {
                            final __value__ = _t_3544664[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3545787i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3545816i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3545845i32;
                            } else {
                                _gotoNext = 3545880i32;
                            };
                        };
                    } else if (__value__ == (3545787i32)) {
                        _op_3544590 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3545880i32;
                    } else if (__value__ == (3545816i32)) {
                        _op_3544590 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3545880i32;
                    } else if (__value__ == (3545845i32)) {
                        _op_3544590 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3545880i32;
                    } else if (__value__ == (3545880i32)) {
                        _after_3545880 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3544552._repeat(_op_3544590, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3545755?.__copy__(), _after_3545880?.__copy__(), _lastRepeat_3544606?.__copy__());
                                _after_3545880 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3545972i32;
                            } else {
                                _gotoNext = 3546002i32;
                            };
                        };
                    } else if (__value__ == (3545972i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546002i32;
                    } else if (__value__ == (3546002i32)) {
                        _repeat_3544688 = _before_3545755?.__copy__();
                        _t_3544664 = _after_3545880?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3546033i32)) {
                        _op_3544590 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3546063 = _t_3544664?.__copy__();
                        {
                            var __tmp__ = _p_3544552._parseRepeat(_t_3544664?.__copy__());
                            _min_3546078 = __tmp__._0;
                            _max_3546083 = __tmp__._1;
                            _after_3546088 = __tmp__._2?.__copy__();
                            _ok_3546095 = __tmp__._3;
                        };
                        if (!_ok_3546095) {
                            _gotoNext = 3546128i32;
                        } else {
                            _gotoNext = 3546236i32;
                        };
                    } else if (__value__ == (3546128i32)) {
                        _p_3544552._literal((123 : stdgo.GoInt32));
                        _t_3544664 = (_t_3544664.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3546236i32)) {
                        if (((((_min_3546078 < (0 : stdgo.GoInt) : Bool) || (_min_3546078 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3546083 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3546083 >= (0 : stdgo.GoInt) : Bool) && (_min_3546078 > _max_3546083 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3546300i32;
                        } else {
                            _gotoNext = 3546450i32;
                        };
                    } else if (__value__ == (3546300i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3546063.__slice__(0, ((_before_3546063.length) - (_after_3546088.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546450i32;
                    } else if (__value__ == (3546450i32)) {
                        {
                            {
                                var __tmp__ = _p_3544552._repeat(_op_3544590, _min_3546078, _max_3546083, _before_3546063?.__copy__(), _after_3546088?.__copy__(), _lastRepeat_3544606?.__copy__());
                                _after_3546088 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3546528i32;
                            } else {
                                _gotoNext = 3546558i32;
                            };
                        };
                    } else if (__value__ == (3546528i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3546558i32;
                    } else if (__value__ == (3546558i32)) {
                        _repeat_3544688 = _before_3546063?.__copy__();
                        _t_3544664 = _after_3546088?.__copy__();
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3546589i32)) {
                        if ((((_p_3544552._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3544664.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3546640i32;
                        } else {
                            _gotoNext = 3547364i32;
                        };
                    } else if (__value__ == (3546640i32)) {
                        _gotoNext = 3546646i32;
                    } else if (__value__ == (3546646i32)) {
                        {
                            final __value__ = _t_3544664[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3546664i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3546737i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3546813i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3546891i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3546986i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3547282i32;
                            } else {
                                _gotoNext = 3547364i32;
                            };
                        };
                    } else if (__value__ == (3546664i32)) {
                        _p_3544552._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544664 = (_t_3544664.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3546737i32)) {
                        _p_3544552._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544664 = (_t_3544664.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3546813i32)) {
                        _p_3544552._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544664 = (_t_3544664.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3546891i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3544664.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3547364i32;
                    } else if (__value__ == (3546986i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3544664.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3547051 = __tmp__._0?.__copy__();
                            _t_3544664 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3547109i32;
                    } else if (__value__ == (3547109i32)) {
                        if (_lit_3547051 != (stdgo.Go.str())) {
                            _gotoNext = 3547123i32;
                        } else {
                            _gotoNext = 3547262i32;
                        };
                    } else if (__value__ == (3547123i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3547051?.__copy__());
                            _c_3547131 = __tmp__._0;
                            _rest_3547134 = __tmp__._1?.__copy__();
                            _err_3547140 = __tmp__._2;
                        };
                        if (_err_3547140 != null) {
                            _gotoNext = 3547181i32;
                        } else {
                            _gotoNext = 3547220i32;
                        };
                    } else if (__value__ == (3547181i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3547140 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3547220i32;
                    } else if (__value__ == (3547220i32)) {
                        _p_3544552._literal(_c_3547131);
                        _lit_3547051 = _rest_3547134?.__copy__();
                        _gotoNext = 3547109i32;
                    } else if (__value__ == (3547262i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3547282i32)) {
                        _p_3544552._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3544664 = (_t_3544664.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3547364i32)) {
                        _re_3547364 = _p_3544552._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3547364.flags = _p_3544552._flags;
                        if ((((_t_3544664.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3544664[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3544664[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3547520i32;
                        } else {
                            _gotoNext = 3547762i32;
                        };
                    } else if (__value__ == (3547520i32)) {
                        {
                            var __tmp__ = _p_3544552._parseUnicodeClass(_t_3544664?.__copy__(), (_re_3547364.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3547526 = __tmp__._0;
                            _rest_3547529 = __tmp__._1?.__copy__();
                            _err_3547535 = __tmp__._2;
                        };
                        if (_err_3547535 != null) {
                            _gotoNext = 3547597i32;
                        } else {
                            _gotoNext = 3547630i32;
                        };
                    } else if (__value__ == (3547597i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3547535 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3547630i32;
                    } else if (__value__ == (3547630i32)) {
                        if (_r_3547526 != null) {
                            _gotoNext = 3547642i32;
                        } else {
                            _gotoNext = 3547762i32;
                        };
                    } else if (__value__ == (3547642i32)) {
                        _re_3547364.rune = _r_3547526;
                        _t_3544664 = _rest_3547529?.__copy__();
                        _p_3544552._push(_re_3547364);
                        bigSwitchBreak = true;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3547762i32)) {
                        {
                            {
                                var __tmp__ = _p_3544552._parsePerlClassEscape(_t_3544664?.__copy__(), (_re_3547364.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3547765 = __tmp__._0;
                                _rest_3547768 = __tmp__._1?.__copy__();
                            };
                            if (_r_3547765 != null) {
                                _gotoNext = 3547826i32;
                            } else {
                                _gotoNext = 3547900i32;
                            };
                        };
                    } else if (__value__ == (3547826i32)) {
                        _re_3547364.rune = _r_3547765;
                        _t_3544664 = _rest_3547768?.__copy__();
                        _p_3544552._push(_re_3547364);
                        bigSwitchBreak = true;
                        _gotoNext = 3544715i32;
                    } else if (__value__ == (3547900i32)) {
                        _p_3544552._reuse(_re_3547364);
                        {
                            {
                                var __tmp__ = _p_3544552._parseEscape(_t_3544664?.__copy__());
                                _c_3544572 = __tmp__._0;
                                _t_3544664 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3548000i32;
                            } else {
                                _gotoNext = 3548030i32;
                            };
                        };
                    } else if (__value__ == (3548000i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3548030i32;
                    } else if (__value__ == (3548030i32)) {
                        _p_3544552._literal(_c_3544572);
                        _gotoNext = 3548049i32;
                    } else if (__value__ == (3548049i32)) {
                        _lastRepeat_3544606 = _repeat_3544688?.__copy__();
                        _gotoNext = 3544672i32;
                    } else if (__value__ == (3548074i32)) {
                        _p_3544552._concat();
                        if (_p_3544552._swapVerticalBar()) {
                            _gotoNext = 3548109i32;
                        } else {
                            _gotoNext = 3548174i32;
                        };
                    } else if (__value__ == (3548109i32)) {
                        _p_3544552._stack = (_p_3544552._stack.__slice__(0, ((_p_3544552._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3548174i32;
                    } else if (__value__ == (3548174i32)) {
                        _p_3544552._alternate();
                        _n_3548190 = (_p_3544552._stack.length);
                        if (_n_3548190 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3548219i32;
                        } else {
                            _gotoNext = 3548266i32;
                        };
                    } else if (__value__ == (3548219i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3548266i32;
                    } else if (__value__ == (3548266i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3544552._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
