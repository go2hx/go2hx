package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    static public function _parseClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _t = ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _re = _p._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
        _re.flags = _p._flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _sign = (1 : stdgo.GoInt);
        if (((_t != stdgo.Go.str()) && (_t[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = (-1 : stdgo.GoInt);
            _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_p._flags & (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                _re.rune = (_re.rune.__append__((10 : stdgo.GoInt32), (10 : stdgo.GoInt32)));
            };
        };
        var _class = _re.rune;
        var _first = (true : Bool);
        while (((_t == (stdgo.Go.str()) || _t[(0 : stdgo.GoInt)] != ((93 : stdgo.GoUInt8)) : Bool) || _first : Bool)) {
            if (((((_t != (stdgo.Go.str()) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool) && !_first : Bool) && (((_t.length == (1 : stdgo.GoInt)) || (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : (_t.__slice__(0, ((1 : stdgo.GoInt) + _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
            };
            _first = false;
            if (((((_t.length) > (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
                var __tmp__ = _p._parseNamedClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                };
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var __tmp__ = _p._parseUnicodeClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
            };
            if (_nclass != null) {
                {
                    final __tmp__0 = _nclass;
                    final __tmp__1 = _nt?.__copy__();
                    _class = __tmp__0;
                    _t = __tmp__1;
                };
                continue;
            };
            {
                var __tmp__ = _p._parsePerlClassEscape(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1;
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var _rng = (_t?.__copy__() : stdgo.GoString);
            var __0:stdgo.GoInt32 = (0 : stdgo.GoInt32), __1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
var _hi = __1, _lo = __0;
            {
                {
                    var __tmp__ = _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                    _lo = __tmp__._0;
                    _t = __tmp__._1?.__copy__();
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                };
            };
            _hi = _lo;
            if (((((_t.length) >= (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) {
                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                {
                    {
                        var __tmp__ = _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                        _hi = __tmp__._0;
                        _t = __tmp__._1?.__copy__();
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    };
                };
                if ((_hi < _lo : Bool)) {
                    _rng = (_rng.__slice__(0, ((_rng.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _rng?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                };
            };
            if ((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                _class = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_class, _lo, _hi);
            } else {
                _class = stdgo._internal.regexp.syntax.Syntax__appendFoldedRange._appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _re.rune = _class;
        _class = stdgo._internal.regexp.syntax.Syntax__cleanClass._cleanClass((stdgo.Go.setRef(_re.rune) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
        if ((_sign < (0 : stdgo.GoInt) : Bool)) {
            _class = stdgo._internal.regexp.syntax.Syntax__negateClass._negateClass(_class);
        };
        _re.rune = _class;
        _p._push(_re);
        return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parseUnicodeClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (((((_p._flags & (128 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || _s[(0 : stdgo.GoInt)] != ((92 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != ((112 : stdgo.GoUInt8)) && _s[(1 : stdgo.GoInt)] != ((80 : stdgo.GoUInt8)) : Bool) : Bool)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _sign = (1 : stdgo.GoInt);
        if (_s[(1 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8))) {
            _sign = (-1 : stdgo.GoInt);
        };
        var _t = ((_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _name = __1, _seq = __0;
        if (_c != ((123 : stdgo.GoInt32))) {
            _seq = (_s.__slice__(0, ((_s.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _name = (_seq.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var _end = (stdgo._internal.strings.Strings_indexRune.indexRune(_s?.__copy__(), (125 : stdgo.GoInt32)) : stdgo.GoInt);
            if ((_end < (0 : stdgo.GoInt) : Bool)) {
                {
                    _err = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                    if (_err != null) {
                        return { _0 : _out, _1 : _rest, _2 : _err };
                    };
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
            };
            {
                final __tmp__0 = (_s.__slice__(0, (_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_s.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _seq = __tmp__0;
                _t = __tmp__1;
            };
            _name = (_s.__slice__((3 : stdgo.GoInt), _end) : stdgo.GoString)?.__copy__();
            {
                _err = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_name?.__copy__());
                if (_err != null) {
                    return { _0 : _out, _1 : _rest, _2 : _err };
                };
            };
        };
        if (((_name != stdgo.Go.str()) && (_name[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = -_sign;
            _name = (_name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__unicodeTable._unicodeTable(_name?.__copy__()), _tab:stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable> = __tmp__._0, _fold:stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable> = __tmp__._1;
        if ((_tab == null || (_tab : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _seq?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        if ((((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || (_fold == null || (_fold : Dynamic).__nil__) : Bool)) {
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendTable._appendTable(_r, _tab);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedTable._appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendTable._appendTable(_tmp, _tab);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendTable._appendTable(_tmp, _fold);
            _p._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanClass._cleanClass((stdgo.Go.setRef(_p._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendClass._appendClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedClass._appendNegatedClass(_r, _tmp);
            };
        };
        return { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _appendGroup( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _r:stdgo.Slice<stdgo.GoInt32>, _g:stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedClass._appendNegatedClass(_r, _g._class);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendClass._appendClass(_r, _g._class);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendFoldedClass._appendFoldedClass(_tmp, _g._class);
            _p._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanClass._cleanClass((stdgo.Go.setRef(_p._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedClass._appendNegatedClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendClass._appendClass(_r, _tmp);
            };
        };
        return _r;
    }
    @:keep
    static public function _parseNamedClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (((((_s.length) < (2 : stdgo.GoInt) : Bool) || _s[(0 : stdgo.GoInt)] != ((91 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _i = (stdgo._internal.strings.Strings_index.index((_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":]" : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        var __0 = ((_s.__slice__((0 : stdgo.GoInt), (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_s.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _s = __1, _name = __0;
        var _g = ((stdgo._internal.regexp.syntax.Syntax__posixGroup._posixGroup[_name] ?? ({} : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup);
        if (_g._sign == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _name?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : _s?.__copy__(), _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parsePerlClassEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString);
        if ((((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || (_s[(0 : stdgo.GoInt)] != (92 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _out, _1 : _rest };
        };
        var _g = ((stdgo._internal.regexp.syntax.Syntax__perlGroup._perlGroup[(_s.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)] ?? ({} : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup);
        if (_g._sign == ((0 : stdgo.GoInt))) {
            return { _0 : _out, _1 : _rest };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
    }
    @:keep
    static public function _parseClassChar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (_s == (stdgo.Go.str())) {
            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("missing closing ]" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _wholeClass?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        if (_s[(0 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
            return _p._parseEscape(_s?.__copy__());
        };
        return stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_s?.__copy__());
    }
    @:keep
    static public function _parseEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _i_3357575:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3356809:stdgo.Error = (null : stdgo.Error);
        var switchBreak = false;
        var _y_3358560:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _v_3358238:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_3356901:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3356823:stdgo.GoString = ("" : stdgo.GoString);
        var _x_3358476:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nhex_3358056:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _t_3356823 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if (_t_3356823 == (stdgo.Go.str())) {
                        _gotoNext = 3356846i32;
                    } else {
                        _gotoNext = 3356901i32;
                    };
                } else if (__value__ == (3356846i32)) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("trailing backslash at end of expression" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    _gotoNext = 3356901i32;
                } else if (__value__ == (3356901i32)) {
                    {
                        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3356823?.__copy__());
                        _c_3356901 = __tmp__._0;
                        _t_3356823 = __tmp__._1?.__copy__();
                        _err_3356809 = __tmp__._2;
                    };
                    if (_err_3356809 != null) {
                        _gotoNext = 3356941i32;
                    } else {
                        _gotoNext = 3356967i32;
                    };
                } else if (__value__ == (3356941i32)) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3356967i32;
                } else if (__value__ == (3356967i32)) {
                    _gotoNext = 3356967i32;
                    switchBreak = false;
                    _gotoNext = 3356976i32;
                } else if (__value__ == (3356976i32)) {
                    if (!switchBreak) {
                        {
                            final __value__ = _c_3356901;
                            if (__value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                                _gotoNext = 3357316i32;
                            } else if (__value__ == ((48 : stdgo.GoInt32))) {
                                _gotoNext = 3357488i32;
                            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                                _gotoNext = 3357748i32;
                            } else if (__value__ == ((97 : stdgo.GoInt32))) {
                                _gotoNext = 3358941i32;
                            } else if (__value__ == ((102 : stdgo.GoInt32))) {
                                _gotoNext = 3358974i32;
                            } else if (__value__ == ((110 : stdgo.GoInt32))) {
                                _gotoNext = 3359007i32;
                            } else if (__value__ == ((114 : stdgo.GoInt32))) {
                                _gotoNext = 3359040i32;
                            } else if (__value__ == ((116 : stdgo.GoInt32))) {
                                _gotoNext = 3359073i32;
                            } else if (__value__ == ((118 : stdgo.GoInt32))) {
                                _gotoNext = 3359106i32;
                            } else {
                                _gotoNext = 3356988i32;
                            };
                        };
                    } else {
                        _gotoNext = 3359142i32;
                    };
                } else if (__value__ == (3356988i32)) {
                    if (((_c_3356901 < (128 : stdgo.GoInt32) : Bool) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c_3356901) : Bool)) {
                        _gotoNext = 3357035i32;
                    } else {
                        _gotoNext = 3359142i32;
                    };
                } else if (__value__ == (3357035i32)) {
                    return { _0 : _c_3356901, _1 : _t_3356823?.__copy__(), _2 : (null : stdgo.Error) };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3357316i32)) {
                    if (((_t_3356823 == (stdgo.Go.str()) || (_t_3356823[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_3356823[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3357458i32;
                    } else {
                        _gotoNext = 3357475i32;
                    };
                } else if (__value__ == (3357458i32)) {
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3357475i32)) {
                    _gotoNext = 3357488i32;
                } else if (__value__ == (3357488i32)) {
                    _r = (_c_3356901 - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _i_3357575 = (1 : stdgo.GoInt);
                    _gotoNext = 3357571i32;
                } else if (__value__ == (3357571i32)) {
                    if ((_i_3357575 < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3357594i32;
                    } else {
                        _gotoNext = 3357704i32;
                    };
                } else if (__value__ == (3357594i32)) {
                    if (((_t_3356823 == (stdgo.Go.str()) || (_t_3356823[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_3356823[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3357638i32;
                    } else {
                        _gotoNext = 3357658i32;
                    };
                } else if (__value__ == (3357638i32)) {
                    _gotoNext = 3357704i32;
                } else if (__value__ == (3357658i32)) {
                    _r = (((_r * (8 : stdgo.GoInt32) : stdgo.GoInt32) + (_t_3356823[(0 : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _t_3356823 = (_t_3356823.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _i_3357575++;
                    _gotoNext = 3357571i32;
                } else if (__value__ == (3357704i32)) {
                    return { _0 : _r, _1 : _t_3356823?.__copy__(), _2 : (null : stdgo.Error) };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3357748i32)) {
                    if (_t_3356823 == (stdgo.Go.str())) {
                        _gotoNext = 3357771i32;
                    } else {
                        _gotoNext = 3357788i32;
                    };
                } else if (__value__ == (3357771i32)) {
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3357788i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3356823?.__copy__());
                            _c_3356901 = __tmp__._0;
                            _t_3356823 = __tmp__._1?.__copy__();
                            _err_3356809 = __tmp__._2;
                        };
                        if (_err_3356809 != null) {
                            _gotoNext = 3357827i32;
                        } else {
                            _gotoNext = 3357856i32;
                        };
                    };
                } else if (__value__ == (3357827i32)) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3357856i32;
                } else if (__value__ == (3357856i32)) {
                    if (_c_3356901 == ((123 : stdgo.GoInt32))) {
                        _gotoNext = 3357868i32;
                    } else {
                        _gotoNext = 3358476i32;
                    };
                } else if (__value__ == (3357868i32)) {
                    _nhex_3358056 = (0 : stdgo.GoInt);
                    _r = (0 : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3358078i32;
                } else if (__value__ == (3358078i32)) {
                    if (true) {
                        _gotoNext = 3358082i32;
                    } else {
                        _gotoNext = 3358380i32;
                    };
                } else if (__value__ == (3358082i32)) {
                    if (_t_3356823 == (stdgo.Go.str())) {
                        _gotoNext = 3358099i32;
                    } else {
                        _gotoNext = 3358129i32;
                    };
                } else if (__value__ == (3358099i32)) {
                    switchBreak = true;
                    _gotoNext = 3356976i32;
                } else if (__value__ == (3358129i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3356823?.__copy__());
                            _c_3356901 = __tmp__._0;
                            _t_3356823 = __tmp__._1?.__copy__();
                            _err_3356809 = __tmp__._2;
                        };
                        if (_err_3356809 != null) {
                            _gotoNext = 3358168i32;
                        } else {
                            _gotoNext = 3358203i32;
                        };
                    };
                } else if (__value__ == (3358168i32)) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3358203i32;
                } else if (__value__ == (3358203i32)) {
                    if (_c_3356901 == ((125 : stdgo.GoInt32))) {
                        _gotoNext = 3358215i32;
                    } else {
                        _gotoNext = 3358238i32;
                    };
                } else if (__value__ == (3358215i32)) {
                    _gotoNext = 3358380i32;
                } else if (__value__ == (3358238i32)) {
                    _v_3358238 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_3356901);
                    if ((_v_3358238 < (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3358265i32;
                    } else {
                        _gotoNext = 3358295i32;
                    };
                } else if (__value__ == (3358265i32)) {
                    switchBreak = true;
                    _gotoNext = 3356976i32;
                } else if (__value__ == (3358295i32)) {
                    _r = ((_r * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _v_3358238 : stdgo.GoInt32);
                    if ((_r > (1114111 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3358335i32;
                    } else {
                        _gotoNext = 3358365i32;
                    };
                } else if (__value__ == (3358335i32)) {
                    switchBreak = true;
                    _gotoNext = 3356976i32;
                } else if (__value__ == (3358365i32)) {
                    _nhex_3358056++;
                    _gotoNext = 3358078i32;
                } else if (__value__ == (3358380i32)) {
                    if (_nhex_3358056 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3358393i32;
                    } else {
                        _gotoNext = 3358420i32;
                    };
                } else if (__value__ == (3358393i32)) {
                    switchBreak = true;
                    _gotoNext = 3356976i32;
                } else if (__value__ == (3358420i32)) {
                    return { _0 : _r, _1 : _t_3356823?.__copy__(), _2 : (null : stdgo.Error) };
                    _gotoNext = 3358476i32;
                } else if (__value__ == (3358476i32)) {
                    _x_3358476 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_3356901);
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3356823?.__copy__());
                            _c_3356901 = __tmp__._0;
                            _t_3356823 = __tmp__._1?.__copy__();
                            _err_3356809 = __tmp__._2;
                        };
                        if (_err_3356809 != null) {
                            _gotoNext = 3358531i32;
                        } else {
                            _gotoNext = 3358560i32;
                        };
                    };
                } else if (__value__ == (3358531i32)) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3358560i32;
                } else if (__value__ == (3358560i32)) {
                    _y_3358560 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_3356901);
                    if (((_x_3358476 < (0 : stdgo.GoInt32) : Bool) || (_y_3358560 < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3358594i32;
                    } else {
                        _gotoNext = 3358611i32;
                    };
                } else if (__value__ == (3358594i32)) {
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3358611i32)) {
                    return { _0 : ((_x_3358476 * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _y_3358560 : stdgo.GoInt32), _1 : _t_3356823?.__copy__(), _2 : (null : stdgo.Error) };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3358941i32)) {
                    return { _0 : (7 : stdgo.GoInt32), _1 : _t_3356823?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3358974i32)) {
                    return { _0 : (12 : stdgo.GoInt32), _1 : _t_3356823?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3359007i32)) {
                    return { _0 : (10 : stdgo.GoInt32), _1 : _t_3356823?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3359040i32)) {
                    return { _0 : (13 : stdgo.GoInt32), _1 : _t_3356823?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3359073i32)) {
                    return { _0 : (9 : stdgo.GoInt32), _1 : _t_3356823?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3359106i32)) {
                    return { _0 : (11 : stdgo.GoInt32), _1 : _t_3356823?.__copy__(), _2 : _err_3356809 };
                    _gotoNext = 3359142i32;
                } else if (__value__ == (3359142i32)) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_3356823.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _parseRightParen( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        _p._concat();
        if (_p._swapVerticalBar()) {
            _p._stack = (_p._stack.__slice__(0, ((_p._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        };
        _p._alternate();
        var _n = (_p._stack.length : stdgo.GoInt);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _p._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
        };
        var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        _p._stack = (_p._stack.__slice__(0, (_n - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        if (_re2.op != ((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _p._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
        };
        _p._flags = _re2.flags;
        if (_re2.cap == ((0 : stdgo.GoInt))) {
            _p._push(_re1);
        } else {
            _re2.op = (13 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            _re2.sub = (_re2.sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
            _re2.sub[(0 : stdgo.GoInt)] = _re1;
            _p._push(_re2);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _swapVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _n = (_p._stack.length : stdgo.GoInt);
        if (((((_n >= (3 : stdgo.GoInt) : Bool) && _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)].op == ((129 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) && stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass(_p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass(_p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re3 = _p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)];
            if ((_re1.op > _re3.op : Bool)) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = __tmp__0;
                    _re3 = __tmp__1;
                };
                _p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] = _re3;
            };
            stdgo._internal.regexp.syntax.Syntax__mergeCharClass._mergeCharClass(_re3, _re1);
            _p._reuse(_re1);
            _p._stack = (_p._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
            return true;
        };
        if ((_n >= (2 : stdgo.GoInt) : Bool)) {
            var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re2 = _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
            if (_re2.op == ((129 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_n >= (3 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.regexp.syntax.Syntax__cleanAlt._cleanAlt(_p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]);
                };
                _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = _re1;
                _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re2;
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _parseVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        _p._concat();
        if (!_p._swapVerticalBar()) {
            _p._op((129 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _parseInt( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _n = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        if (((_s == (stdgo.Go.str()) || (_s[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || ((57 : stdgo.GoUInt8) < _s[(0 : stdgo.GoInt)] : Bool) : Bool)) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        if ((((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(1 : stdgo.GoInt)] : Bool) : Bool) && (_s[(1 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        var _t = (_s?.__copy__() : stdgo.GoString);
        while (((_s != (stdgo.Go.str()) && ((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _rest = _s?.__copy__();
        _ok = true;
        _t = (_t.__slice__(0, ((_t.length) - (_s.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_t.length) : Bool)) {
                if ((_n >= (100000000 : stdgo.GoInt) : Bool)) {
                    _n = (-1 : stdgo.GoInt);
                    break;
                };
_n = (((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + (_t[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        return { _0 : _n, _1 : _rest, _2 : _ok };
    }
    @:keep
    static public function _parsePerlFlags( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _re_3351175:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        var _end_3350731:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3349885:stdgo.GoString = ("" : stdgo.GoString);
        var _flags_3351355:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        var _c_3351325:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _name_3350935:stdgo.GoString = ("" : stdgo.GoString);
        var _capture_3350897:stdgo.GoString = ("" : stdgo.GoString);
        var loopBreak = false;
        var _sawFlag_3351385:Bool = false;
        var _sign_3351373:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _t_3349885 = _s?.__copy__();
                    if (((((_t_3349885.length) > (4 : stdgo.GoInt) : Bool) && _t_3349885[(2 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) : Bool) && (_t_3349885[(3 : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3350707i32;
                    } else {
                        _gotoNext = 3351321i32;
                    };
                } else if (__value__ == (3350707i32)) {
                    _end_3350731 = stdgo._internal.strings.Strings_indexRune.indexRune(_t_3349885?.__copy__(), (62 : stdgo.GoInt32));
                    if ((_end_3350731 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3350777i32;
                    } else {
                        _gotoNext = 3350897i32;
                    };
                } else if (__value__ == (3350777i32)) {
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_t_3349885?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3350816i32;
                        } else {
                            _gotoNext = 3350845i32;
                        };
                    };
                } else if (__value__ == (3350816i32)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    _gotoNext = 3350845i32;
                } else if (__value__ == (3350845i32)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    _gotoNext = 3350897i32;
                } else if (__value__ == (3350897i32)) {
                    _capture_3350897 = (_t_3349885.__slice__(0, (_end_3350731 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _name_3350935 = (_t_3349885.__slice__((4 : stdgo.GoInt), _end_3350731) : stdgo.GoString)?.__copy__();
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_name_3350935?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3351005i32;
                        } else {
                            _gotoNext = 3351031i32;
                        };
                    };
                } else if (__value__ == (3351005i32)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    _gotoNext = 3351031i32;
                } else if (__value__ == (3351031i32)) {
                    if (!stdgo._internal.regexp.syntax.Syntax__isValidCaptureName._isValidCaptureName(_name_3350935?.__copy__())) {
                        _gotoNext = 3351060i32;
                    } else {
                        _gotoNext = 3351162i32;
                    };
                } else if (__value__ == (3351060i32)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _capture_3350897?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    _gotoNext = 3351162i32;
                } else if (__value__ == (3351162i32)) {
                    _p._numCap++;
                    _re_3351175 = _p._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    _re_3351175.cap = _p._numCap;
                    _re_3351175.name = _name_3350935?.__copy__();
                    return { _0 : (_t_3349885.__slice__((_end_3350731 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                    _gotoNext = 3351321i32;
                } else if (__value__ == (3351321i32)) {
                    _t_3349885 = (_t_3349885.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _flags_3351355 = _p._flags;
                    _sign_3351373 = (1 : stdgo.GoInt);
                    _sawFlag_3351385 = false;
                    _gotoNext = 3351402i32;
                } else if (__value__ == (3351402i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3351409i32;
                } else if (__value__ == (3351409i32)) {
                    if (!loopBreak && (_t_3349885 != stdgo.Go.str())) {
                        _gotoNext = 3351421i32;
                    } else {
                        _gotoNext = 3352236i32;
                    };
                } else if (__value__ == (3351421i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3349885?.__copy__());
                            _c_3351325 = __tmp__._0;
                            _t_3349885 = __tmp__._1?.__copy__();
                            _err = __tmp__._2;
                        };
                        if (_err != null) {
                            _gotoNext = 3351464i32;
                        } else {
                            _gotoNext = 3351490i32;
                        };
                    };
                } else if (__value__ == (3351464i32)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    _gotoNext = 3351490i32;
                } else if (__value__ == (3351490i32)) {
                    _gotoNext = 3351490i32;
                    {
                        final __value__ = _c_3351325;
                        if (__value__ == ((105 : stdgo.GoInt32))) {
                            _gotoNext = 3351541i32;
                        } else if (__value__ == ((109 : stdgo.GoInt32))) {
                            _gotoNext = 3351592i32;
                        } else if (__value__ == ((115 : stdgo.GoInt32))) {
                            _gotoNext = 3351643i32;
                        } else if (__value__ == ((85 : stdgo.GoInt32))) {
                            _gotoNext = 3351691i32;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 3351769i32;
                        } else if (__value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 3352029i32;
                        } else {
                            _gotoNext = 3351503i32;
                        };
                    };
                } else if (__value__ == (3351503i32)) {
                    loopBreak = true;
                    _gotoNext = 3351409i32;
                } else if (__value__ == (3351541i32)) {
                    _flags_3351355 = (_flags_3351355 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3351385 = true;
                    _gotoNext = 3352236i32;
                } else if (__value__ == (3351592i32)) {
                    _flags_3351355 = (_flags_3351355 & ((((16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3351385 = true;
                    _gotoNext = 3352236i32;
                } else if (__value__ == (3351643i32)) {
                    _flags_3351355 = (_flags_3351355 | ((8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3351385 = true;
                    _gotoNext = 3352236i32;
                } else if (__value__ == (3351691i32)) {
                    _flags_3351355 = (_flags_3351355 | ((32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3351385 = true;
                    _gotoNext = 3352236i32;
                } else if (__value__ == (3351769i32)) {
                    if ((_sign_3351373 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3351794i32;
                    } else {
                        _gotoNext = 3351819i32;
                    };
                } else if (__value__ == (3351794i32)) {
                    loopBreak = true;
                    _gotoNext = 3351409i32;
                } else if (__value__ == (3351819i32)) {
                    _sign_3351373 = (-1 : stdgo.GoInt);
                    _flags_3351355 = (-1 ^ _flags_3351355);
                    _sawFlag_3351385 = false;
                    _gotoNext = 3352236i32;
                } else if (__value__ == (3352029i32)) {
                    if ((_sign_3351373 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3352059i32;
                    } else {
                        _gotoNext = 3352128i32;
                    };
                } else if (__value__ == (3352059i32)) {
                    if (!_sawFlag_3351385) {
                        _gotoNext = 3352077i32;
                    } else {
                        _gotoNext = 3352105i32;
                    };
                } else if (__value__ == (3352077i32)) {
                    loopBreak = true;
                    _gotoNext = 3351409i32;
                } else if (__value__ == (3352105i32)) {
                    _flags_3351355 = (-1 ^ _flags_3351355);
                    _gotoNext = 3352128i32;
                } else if (__value__ == (3352128i32)) {
                    if (_c_3351325 == ((58 : stdgo.GoInt32))) {
                        _gotoNext = 3352140i32;
                    } else {
                        _gotoNext = 3352194i32;
                    };
                } else if (__value__ == (3352140i32)) {
                    _p._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    _gotoNext = 3352194i32;
                } else if (__value__ == (3352194i32)) {
                    _p._flags = _flags_3351355;
                    return { _0 : _t_3349885?.__copy__(), _1 : (null : stdgo.Error) };
                    _gotoNext = 3352236i32;
                } else if (__value__ == (3352236i32)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_3349885.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _parseRepeat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _min = (0 : stdgo.GoInt), _max = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        if (((_s == stdgo.Go.str()) || (_s[(0 : stdgo.GoInt)] != (123 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var _ok1:Bool = false;
        {
            {
                var __tmp__ = _p._parseInt(_s?.__copy__());
                _min = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok1 = __tmp__._2;
            };
            if (!_ok1) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
        };
        if (_s == (stdgo.Go.str())) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        if (_s[(0 : stdgo.GoInt)] != ((44 : stdgo.GoUInt8))) {
            _max = _min;
        } else {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (_s == (stdgo.Go.str())) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
            if (_s[(0 : stdgo.GoInt)] == ((125 : stdgo.GoUInt8))) {
                _max = (-1 : stdgo.GoInt);
            } else {
                {
                    var __tmp__ = _p._parseInt(_s?.__copy__());
                    _max = __tmp__._0;
                    _s = __tmp__._1?.__copy__();
                    _ok1 = __tmp__._2;
                };
                if (!_ok1) {
                    return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
                } else if ((_max < (0 : stdgo.GoInt) : Bool)) {
                    _min = (-1 : stdgo.GoInt);
                };
            };
        };
        if (((_s == stdgo.Go.str()) || (_s[(0 : stdgo.GoInt)] != (125 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _rest = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _ok = true;
        return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
    }
    @:keep
    static public function _removeLeadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _reuse:Bool):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if (_reuse) {
                _p._reuse(_re.sub[(0 : stdgo.GoInt)]);
            };
            _re.sub = (_re.sub.__slice__(0, stdgo.Go.copySlice(_re.sub, (_re.sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>))) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
            {
                final __value__ = (_re.sub.length);
                if (__value__ == ((0 : stdgo.GoInt))) {
                    _re.op = (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                    _re.sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    var _old = _re;
                    _re = _re.sub[(0 : stdgo.GoInt)];
                    _p._reuse(_old);
                };
            };
            return _re;
        };
        if (_reuse) {
            _p._reuse(_re);
        };
        return _p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
    }
    @:keep
    static public function _leadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (_re.op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return null;
        };
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = _re.sub[(0 : stdgo.GoInt)];
            if (_sub.op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return null;
            };
            return _sub;
        };
        return _re;
    }
    @:keep
    static public function _removeLeadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = _re.sub[(0 : stdgo.GoInt)];
            _sub = _p._removeLeadingString(_sub, _n);
            _re.sub[(0 : stdgo.GoInt)] = _sub;
            if (_sub.op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                _p._reuse(_sub);
                {
                    final __value__ = (_re.sub.length);
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        _re.op = (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _re.sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        var _old = _re;
                        _re = _re.sub[(1 : stdgo.GoInt)];
                        _p._reuse(_old);
                    } else {
                        stdgo.Go.copySlice(_re.sub, (_re.sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>));
                        _re.sub = (_re.sub.__slice__(0, ((_re.sub.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                    };
                };
            };
            return _re;
        };
        if (_re.op == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            _re.rune = (_re.rune.__slice__(0, stdgo.Go.copySlice(_re.rune, (_re.rune.__slice__(_n) : stdgo.Slice<stdgo.GoInt32>))) : stdgo.Slice<stdgo.GoInt32>);
            if ((_re.rune.length) == ((0 : stdgo.GoInt))) {
                _re.op = (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            };
        };
        return _re;
    }
    @:keep
    static public function _leadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _re = _re.sub[(0 : stdgo.GoInt)];
        };
        if (_re.op != ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) };
        };
        return { _0 : _re.rune, _1 : (_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) };
    }
    @:keep
    static public function _factor( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>):stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (((_sub.length) < (2 : stdgo.GoInt) : Bool)) {
            return _sub;
        };
        var _str:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _strflags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        var _start = (0 : stdgo.GoInt);
        var _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                var _istr:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
var _iflags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
if ((_i < (_sub.length) : Bool)) {
                    {
                        var __tmp__ = _p._leadingString(_sub[(_i : stdgo.GoInt)]);
                        _istr = __tmp__._0;
                        _iflags = __tmp__._1;
                    };
                    if (_iflags == (_strflags)) {
                        var _same = (0 : stdgo.GoInt);
                        while ((((_same < (_str.length) : Bool) && (_same < (_istr.length) : Bool) : Bool) && (_str[(_same : stdgo.GoInt)] == _istr[(_same : stdgo.GoInt)]) : Bool)) {
                            _same++;
                        };
                        if ((_same > (0 : stdgo.GoInt) : Bool)) {
                            _str = (_str.__slice__(0, _same) : stdgo.Slice<stdgo.GoInt32>);
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
                };
if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                } else {
                    var _prefix = _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    _prefix.flags = _strflags;
                    _prefix.rune = ((_prefix.rune.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...(_str : Array<stdgo.GoInt32>)));
                    {
                        var _j = (_start : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            _sub[(_j : stdgo.GoInt)] = _p._removeLeadingString(_sub[(_j : stdgo.GoInt)], (_str.length));
_p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    var _re = _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
_start = _i;
_str = _istr;
_strflags = _iflags;
                _i++;
            };
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        var _first:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                var _ifirst:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
if ((_i < (_sub.length) : Bool)) {
                    _ifirst = _p._leadingRegexp(_sub[(_i : stdgo.GoInt)]);
                    if ((((_first != null && ((_first : Dynamic).__nil__ == null || !(_first : Dynamic).__nil__)) && _first.equal(_ifirst) : Bool) && ((stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass(_first) || (((_first.op == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && _first.min == (_first.max) : Bool) && stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass(_first.sub[(0 : stdgo.GoInt)]) : Bool)) : Bool)) : Bool)) {
                        {
                            _i++;
                            continue;
                        };
                    };
                };
if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                } else {
                    var _prefix = _first;
                    {
                        var _j = (_start : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            var _reuse = (_j != (_start) : Bool);
_sub[(_j : stdgo.GoInt)] = _p._removeLeadingRegexp(_sub[(_j : stdgo.GoInt)], _reuse);
_p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    var _re = _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
_start = _i;
_first = _ifirst;
                _i++;
            };
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                if (((_i < (_sub.length) : Bool) && stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass(_sub[(_i : stdgo.GoInt)]) : Bool)) {
                    {
                        _i++;
                        continue;
                    };
                };
if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                } else {
                    var _max = (_start : stdgo.GoInt);
                    {
                        var _j = (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            if (((_sub[(_max : stdgo.GoInt)].op < _sub[(_j : stdgo.GoInt)].op : Bool) || (_sub[(_max : stdgo.GoInt)].op == (_sub[(_j : stdgo.GoInt)].op) && ((_sub[(_max : stdgo.GoInt)].rune.length) < (_sub[(_j : stdgo.GoInt)].rune.length) : Bool) : Bool) : Bool)) {
                                _max = _j;
                            };
                            _j++;
                        };
                    };
                    {
                        final __tmp__0 = _sub[(_max : stdgo.GoInt)];
                        final __tmp__1 = _sub[(_start : stdgo.GoInt)];
                        final __tmp__2 = _sub;
                        final __tmp__3 = (_start : stdgo.GoInt);
                        final __tmp__4 = _sub;
                        final __tmp__5 = (_max : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    {
                        var _j = (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            stdgo._internal.regexp.syntax.Syntax__mergeCharClass._mergeCharClass(_sub[(_start : stdgo.GoInt)], _sub[(_j : stdgo.GoInt)]);
_p._reuse(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    stdgo._internal.regexp.syntax.Syntax__cleanAlt._cleanAlt(_sub[(_start : stdgo.GoInt)]);
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                };
if ((_i < (_sub.length) : Bool)) {
                    _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]));
                };
_start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        for (_i => _ in _sub) {
            if (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_sub.length) : Bool) && _sub[(_i : stdgo.GoInt)].op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) && (_sub[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].op == (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool)) {
                continue;
            };
            _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]));
        };
        _sub = _out;
        return _sub;
    }
    @:keep
    static public function _collapse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _subs:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((_subs.length) == ((1 : stdgo.GoInt))) {
            return _subs[(0 : stdgo.GoInt)];
        };
        var _re = _p._newRegexp(_op);
        _re.sub = (_re.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        for (__1 => _sub in _subs) {
            if (_sub.op == (_op)) {
                _re.sub = (_re.sub.__append__(...(_sub.sub : Array<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>)));
                _p._reuse(_sub);
            } else {
                _re.sub = (_re.sub.__append__(_sub));
            };
        };
        if (_op == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            _re.sub = _p._factor(_re.sub);
            if ((_re.sub.length) == ((1 : stdgo.GoInt))) {
                var _old = _re;
                _re = _re.sub[(0 : stdgo.GoInt)];
                _p._reuse(_old);
            };
        };
        return _re;
    }
    @:keep
    static public function _alternate( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _i = (_p._stack.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_p._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].op < (128 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        if (((_subs.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.regexp.syntax.Syntax__cleanAlt._cleanAlt(_subs[((_subs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
        };
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return _p._push(_p._newRegexp((1 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
        };
        return _p._push(_p._collapse(_subs, (19 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
    }
    @:keep
    static public function _concat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
        var _i = (_p._stack.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_p._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].op < (128 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return _p._push(_p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
        };
        return _p._push(_p._collapse(_subs, (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
    }
    @:keep
    static public function _repeat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _flags = (_p._flags : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        if ((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
            if ((((_after.length) > (0 : stdgo.GoInt) : Bool) && (_after[(0 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                _after = (_after.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _flags = (_flags ^ ((32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            };
            if (_lastRepeat != (stdgo.Go.str())) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid nested repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_lastRepeat.__slice__(0, ((_lastRepeat.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
            };
        };
        var _n = (_p._stack.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        var _sub = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        if ((_sub.op >= (128 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        var _re = _p._newRegexp(_op);
        _re.min = _min;
        _re.max = _max;
        _re.flags = _flags;
        _re.sub = (_re.sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        _re.sub[(0 : stdgo.GoInt)] = _sub;
        _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re;
        _p._checkLimits(_re);
        if (((_op == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (((_min >= (2 : stdgo.GoInt) : Bool) || (_max >= (2 : stdgo.GoInt) : Bool) : Bool)) : Bool) && !stdgo._internal.regexp.syntax.Syntax__repeatIsValid._repeatIsValid(_re, (1000 : stdgo.GoInt)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        return { _0 : _after?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _op( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _re = _p._newRegexp(_op);
        _re.flags = _p._flags;
        return _p._push(_re);
    }
    @:keep
    static public function _literal( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _r:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _re = _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
        _re.flags = _p._flags;
        if ((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
            _r = stdgo._internal.regexp.syntax.Syntax__minFoldRune._minFoldRune(_r);
        };
        _re.rune0[(0 : stdgo.GoInt)] = _r;
        _re.rune = (_re.rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        _p._push(_re);
    }
    @:keep
    static public function _maybeConcat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _r:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _n = (_p._stack.length : stdgo.GoInt);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        if (((_re1.op != ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || _re2.op != ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) || ((_re1.flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (_re2.flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool)) {
            return false;
        };
        _re2.rune = (_re2.rune.__append__(...(_re1.rune : Array<stdgo.GoInt32>)));
        if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
            _re1.rune = (_re1.rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _re1.rune[(0 : stdgo.GoInt)] = _r;
            _re1.flags = _flags;
            return true;
        };
        _p._stack = (_p._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        _p._reuse(_re1);
        return false;
    }
    @:keep
    static public function _push( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        _p._numRunes = (_p._numRunes + ((_re.rune.length)) : stdgo.GoInt);
        if (((_re.op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (_re.rune.length) == ((2 : stdgo.GoInt)) : Bool) && (_re.rune[(0 : stdgo.GoInt)] == _re.rune[(1 : stdgo.GoInt)]) : Bool)) {
            if (_p._maybeConcat(_re.rune[(0 : stdgo.GoInt)], (_p._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                return null;
            };
            _re.op = (3 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _re.flags = (_p._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        } else if (((((((_re.op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (_re.rune.length) == ((4 : stdgo.GoInt)) : Bool) && _re.rune[(0 : stdgo.GoInt)] == (_re.rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && _re.rune[(2 : stdgo.GoInt)] == (_re.rune[((3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_re.rune[(0 : stdgo.GoInt)]) == (_re.rune[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_re.rune[(2 : stdgo.GoInt)]) == (_re.rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || ((((_re.op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (_re.rune.length) == ((2 : stdgo.GoInt)) : Bool) && (_re.rune[(0 : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (_re.rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_re.rune[(0 : stdgo.GoInt)]) == (_re.rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_re.rune[(1 : stdgo.GoInt)]) == (_re.rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
            if (_p._maybeConcat(_re.rune[(0 : stdgo.GoInt)], (_p._flags | (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                return null;
            };
            _re.op = (3 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _re.flags = (_p._flags | (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        } else {
            _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
        };
        _p._stack = (_p._stack.__append__(_re));
        _p._checkLimits(_re);
        return _re;
    }
    @:keep
    static public function _calcHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _force:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = (_p._height != null && _p._height.exists(_re) ? { _0 : _p._height[_re], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _h:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _h;
                };
            };
        };
        var _h = (1 : stdgo.GoInt);
        for (__1 => _sub in _re.sub) {
            var _hsub = (_p._calcHeight(_sub, false) : stdgo.GoInt);
            if ((_h < ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt) : Bool)) {
                _h = ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt);
            };
        };
        _p._height[_re] = _h;
        return _h;
    }
    @:keep
    static public function _checkHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((_p._numRegexp < (1000 : stdgo.GoInt) : Bool)) {
            return;
        };
        if (_p._height == null) {
            _p._height = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>);
            for (__1 => _re in _p._stack) {
                _p._checkHeight(_re);
            };
        };
        if ((_p._calcHeight(_re, true) > (1000 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode)));
        };
    }
    @:keep
    static public function _calcSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _force:Bool):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = (_p._size != null && _p._size.exists(_re) ? { _0 : _p._size[_re], _1 : true } : { _0 : (0 : stdgo.GoInt64), _1 : false }), _size:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _size;
                };
            };
        };
        var _size:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _size = (_re.rune.length : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _size = ((2i64 : stdgo.GoInt64) + _p._calcSize(_re.sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _size = ((1i64 : stdgo.GoInt64) + _p._calcSize(_re.sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        for (__1 => _sub in _re.sub) {
                            _size = (_size + (_p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        for (__1 => _sub in _re.sub) {
                            _size = (_size + (_p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        if (((_re.sub.length) > (1 : stdgo.GoInt) : Bool)) {
                            _size = (_size + (((_re.sub.length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        var _sub = (_p._calcSize(_re.sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        if (_re.max == ((-1 : stdgo.GoInt))) {
                            if (_re.min == ((0 : stdgo.GoInt))) {
                                _size = ((2i64 : stdgo.GoInt64) + _sub : stdgo.GoInt64);
                            } else {
                                _size = ((1i64 : stdgo.GoInt64) + ((_re.min : stdgo.GoInt64) * _sub : stdgo.GoInt64) : stdgo.GoInt64);
                            };
                            break;
                        };
                        _size = (((_re.max : stdgo.GoInt64) * _sub : stdgo.GoInt64) + ((_re.max - _re.min : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        break;
                    };
                };
                break;
            };
        };
        if ((_size < (1i64 : stdgo.GoInt64) : Bool)) {
            _size = (1i64 : stdgo.GoInt64);
        };
        _p._size[_re] = _size;
        return _size;
    }
    @:keep
    static public function _checkSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (_p._size == null) {
            if (_p._repeats == ((0i64 : stdgo.GoInt64))) {
                _p._repeats = (1i64 : stdgo.GoInt64);
            };
            if (_re.op == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _n = (_re.max : stdgo.GoInt);
                if (_n == ((-1 : stdgo.GoInt))) {
                    _n = _re.min;
                };
                if ((_n <= (0 : stdgo.GoInt) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                if (((_n : stdgo.GoInt64) > ((3355443i64 : stdgo.GoInt64) / _p._repeats : stdgo.GoInt64) : Bool)) {
                    _p._repeats = (3355443i64 : stdgo.GoInt64);
                } else {
                    _p._repeats = (_p._repeats * ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                };
            };
            if (((_p._numRegexp : stdgo.GoInt64) < ((3355443i64 : stdgo.GoInt64) / _p._repeats : stdgo.GoInt64) : Bool)) {
                return;
            };
            _p._size = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>);
            for (__1 => _re in _p._stack) {
                _p._checkSize(_re);
            };
        };
        if ((_p._calcSize(_re, true) > (3355443i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode)));
        };
    }
    @:keep
    static public function _checkLimits( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((_p._numRunes > (33554432 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode)));
        };
        _p._checkSize(_re);
        _p._checkHeight(_re);
    }
    @:keep
    static public function _reuse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (_p._height != null) {
            if (_p._height != null) _p._height.remove(_re);
        };
        _re.sub0[(0 : stdgo.GoInt)] = _p._free;
        _p._free = _re;
    }
    @:keep
    static public function _newRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _re = _p._free;
        if ((_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__))) {
            _p._free = _re.sub0[(0 : stdgo.GoInt)];
            {
                var __tmp__ = (new stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp() : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp);
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).op = __tmp__.op;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).flags = __tmp__.flags;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).sub = __tmp__.sub;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).sub0 = __tmp__.sub0;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).rune = __tmp__.rune;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).rune0 = __tmp__.rune0;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).min = __tmp__.min;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).max = __tmp__.max;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).cap = __tmp__.cap;
                (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp).name = __tmp__.name;
            };
        } else {
            _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            _p._numRegexp++;
        };
        _re.op = _op;
        return _re;
    }
}
