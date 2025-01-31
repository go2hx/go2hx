package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _parseClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _t = ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _re = @:check2r _p._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
        (@:checkr _re ?? throw "null pointer dereference").flags = (@:checkr _p ?? throw "null pointer dereference")._flags;
        (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _sign = (1 : stdgo.GoInt);
        if (((_t != stdgo.Go.str()) && (_t[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = (-1 : stdgo.GoInt);
            _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (((@:checkr _p ?? throw "null pointer dereference")._flags & (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__append__((10 : stdgo.GoInt32), (10 : stdgo.GoInt32)));
            };
        };
        var _class = (@:checkr _re ?? throw "null pointer dereference").rune;
        var _first = (true : Bool);
        while (((_t == (stdgo.Go.str()) || _t[(0 : stdgo.GoInt)] != ((93 : stdgo.GoUInt8)) : Bool) || _first : Bool)) {
            if (((((_t != (stdgo.Go.str()) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool) && !_first : Bool) && (((_t.length == (1 : stdgo.GoInt)) || (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : (_t.__slice__(0, ((1 : stdgo.GoInt) + _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    _rest = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _first = false;
            if (((((_t.length) > (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
                var __tmp__ = @:check2r _p._parseNamedClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
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
            var __tmp__ = @:check2r _p._parseUnicodeClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    _rest = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
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
                var __tmp__ = @:check2r _p._parsePerlClassEscape(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1;
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
                    var __tmp__ = @:check2r _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                    _lo = @:tmpset0 __tmp__._0;
                    _t = @:tmpset0 __tmp__._1?.__copy__();
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _hi = _lo;
            if (((((_t.length) >= (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) {
                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                {
                    {
                        var __tmp__ = @:check2r _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                        _hi = @:tmpset0 __tmp__._0;
                        _t = @:tmpset0 __tmp__._1?.__copy__();
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                            _rest = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                if ((_hi < _lo : Bool)) {
                    _rng = (_rng.__slice__(0, ((_rng.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _rng?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            if (((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                _class = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_class, _lo, _hi);
            } else {
                _class = stdgo._internal.regexp.syntax.Syntax__appendFoldedRange._appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        (@:checkr _re ?? throw "null pointer dereference").rune = _class;
        _class = stdgo._internal.regexp.syntax.Syntax__cleanClass._cleanClass((stdgo.Go.setRef((@:checkr _re ?? throw "null pointer dereference").rune) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
        if ((_sign < (0 : stdgo.GoInt) : Bool)) {
            _class = stdgo._internal.regexp.syntax.Syntax__negateClass._negateClass(_class);
        };
        (@:checkr _re ?? throw "null pointer dereference").rune = _class;
        @:check2r _p._push(_re);
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            _rest = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseUnicodeClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if ((((((@:checkr _p ?? throw "null pointer dereference")._flags & (128 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || _s[(0 : stdgo.GoInt)] != ((92 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != ((112 : stdgo.GoUInt8)) && _s[(1 : stdgo.GoInt)] != ((80 : stdgo.GoUInt8)) : Bool) : Bool)) {
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
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                    _out = __tmp__._0;
                    _rest = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
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
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _seq?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                _out = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (((((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || (_fold == null || (_fold : Dynamic).__nil__) : Bool)) {
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendTable._appendTable(_r, _tab);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedTable._appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = ((@:checkr _p ?? throw "null pointer dereference")._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendTable._appendTable(_tmp, _tab);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendTable._appendTable(_tmp, _fold);
            (@:checkr _p ?? throw "null pointer dereference")._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanClass._cleanClass((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendClass._appendClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedClass._appendNegatedClass(_r, _tmp);
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _appendGroup( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _r:stdgo.Slice<stdgo.GoInt32>, _g:stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedClass._appendNegatedClass(_r, _g._class);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendClass._appendClass(_r, _g._class);
            };
        } else {
            var _tmp = ((@:checkr _p ?? throw "null pointer dereference")._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendFoldedClass._appendFoldedClass(_tmp, _g._class);
            (@:checkr _p ?? throw "null pointer dereference")._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanClass._cleanClass((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendNegatedClass._appendNegatedClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendClass._appendClass(_r, _tmp);
            };
        };
        return _r;
    }
    @:keep
    @:tdfield
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
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _name?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                _out = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : @:check2r _p._appendGroup(_r, _g?.__copy__()), _1 : _s?.__copy__(), _2 : (null : stdgo.Error) };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parsePerlClassEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString);
        if (((((@:checkr _p ?? throw "null pointer dereference")._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || (_s[(0 : stdgo.GoInt)] != (92 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _out, _1 : _rest };
        };
        var _g = ((stdgo._internal.regexp.syntax.Syntax__perlGroup._perlGroup[(_s.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)] ?? ({} : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup);
        if (_g._sign == ((0 : stdgo.GoInt))) {
            return { _0 : _out, _1 : _rest };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } = { _0 : @:check2r _p._appendGroup(_r, _g?.__copy__()), _1 : (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseClassChar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (_s == (stdgo.Go.str())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("missing closing ]" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _wholeClass?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                _r = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (_s[(0 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = @:check2r _p._parseEscape(_s?.__copy__());
                _r = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_s?.__copy__());
            _r = __tmp__._0;
            _rest = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _nhex_3350481:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3349234:stdgo.Error = (null : stdgo.Error);
        var switchBreak = false;
        var _x_3350901:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _v_3350663:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_3349326:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3349248:stdgo.GoString = ("" : stdgo.GoString);
        var _y_3350985:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3350000:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _t_3349248 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if (_t_3349248 == (stdgo.Go.str())) {
                        _gotoNext = 3349271i32;
                    } else {
                        _gotoNext = 3349326i32;
                    };
                } else if (__value__ == (3349271i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("trailing backslash at end of expression" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3349326i32;
                } else if (__value__ == (3349326i32)) {
                    {
                        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3349248?.__copy__());
                        _c_3349326 = @:tmpset0 __tmp__._0;
                        _t_3349248 = @:tmpset0 __tmp__._1?.__copy__();
                        _err_3349234 = @:tmpset0 __tmp__._2;
                    };
                    if (_err_3349234 != null) {
                        _gotoNext = 3349366i32;
                    } else {
                        _gotoNext = 3349392i32;
                    };
                } else if (__value__ == (3349366i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3349392i32;
                } else if (__value__ == (3349392i32)) {
                    _gotoNext = 3349392i32;
                    switchBreak = false;
                    _gotoNext = 3349401i32;
                } else if (__value__ == (3349401i32)) {
                    if (!switchBreak) {
                        {
                            final __value__ = _c_3349326;
                            if (__value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                                _gotoNext = 3349741i32;
                            } else if (__value__ == ((48 : stdgo.GoInt32))) {
                                _gotoNext = 3349913i32;
                            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                                _gotoNext = 3350173i32;
                            } else if (__value__ == ((97 : stdgo.GoInt32))) {
                                _gotoNext = 3351366i32;
                            } else if (__value__ == ((102 : stdgo.GoInt32))) {
                                _gotoNext = 3351399i32;
                            } else if (__value__ == ((110 : stdgo.GoInt32))) {
                                _gotoNext = 3351432i32;
                            } else if (__value__ == ((114 : stdgo.GoInt32))) {
                                _gotoNext = 3351465i32;
                            } else if (__value__ == ((116 : stdgo.GoInt32))) {
                                _gotoNext = 3351498i32;
                            } else if (__value__ == ((118 : stdgo.GoInt32))) {
                                _gotoNext = 3351531i32;
                            } else {
                                _gotoNext = 3349413i32;
                            };
                        };
                    } else {
                        _gotoNext = 3351567i32;
                    };
                } else if (__value__ == (3349413i32)) {
                    if (((_c_3349326 < (128 : stdgo.GoInt32) : Bool) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c_3349326) : Bool)) {
                        _gotoNext = 3349460i32;
                    } else {
                        _gotoNext = 3351567i32;
                    };
                } else if (__value__ == (3349460i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _c_3349326, _1 : _t_3349248?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3349741i32)) {
                    if (((_t_3349248 == (stdgo.Go.str()) || (_t_3349248[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_3349248[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3349883i32;
                    } else {
                        _gotoNext = 3349900i32;
                    };
                } else if (__value__ == (3349883i32)) {
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3349900i32)) {
                    _gotoNext = 3349913i32;
                } else if (__value__ == (3349913i32)) {
                    _r = (_c_3349326 - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _i_3350000 = (1 : stdgo.GoInt);
                    _gotoNext = 3349996i32;
                } else if (__value__ == (3349996i32)) {
                    if ((_i_3350000 < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3350019i32;
                    } else {
                        _gotoNext = 3350129i32;
                    };
                } else if (__value__ == (3350019i32)) {
                    if (((_t_3349248 == (stdgo.Go.str()) || (_t_3349248[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_3349248[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3350063i32;
                    } else {
                        _gotoNext = 3350083i32;
                    };
                } else if (__value__ == (3350063i32)) {
                    _gotoNext = 3350129i32;
                } else if (__value__ == (3350083i32)) {
                    _r = (((_r * (8 : stdgo.GoInt32) : stdgo.GoInt32) + (_t_3349248[(0 : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _t_3349248 = (_t_3349248.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _i_3350000++;
                    _gotoNext = 3349996i32;
                } else if (__value__ == (3350129i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t_3349248?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3350173i32)) {
                    if (_t_3349248 == (stdgo.Go.str())) {
                        _gotoNext = 3350196i32;
                    } else {
                        _gotoNext = 3350213i32;
                    };
                } else if (__value__ == (3350196i32)) {
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3350213i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3349248?.__copy__());
                            _c_3349326 = @:tmpset0 __tmp__._0;
                            _t_3349248 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3349234 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3349234 != null) {
                            _gotoNext = 3350252i32;
                        } else {
                            _gotoNext = 3350281i32;
                        };
                    };
                } else if (__value__ == (3350252i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3350281i32;
                } else if (__value__ == (3350281i32)) {
                    if (_c_3349326 == ((123 : stdgo.GoInt32))) {
                        _gotoNext = 3350293i32;
                    } else {
                        _gotoNext = 3350901i32;
                    };
                } else if (__value__ == (3350293i32)) {
                    _nhex_3350481 = (0 : stdgo.GoInt);
                    _r = (0 : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3350503i32;
                } else if (__value__ == (3350503i32)) {
                    if (true) {
                        _gotoNext = 3350507i32;
                    } else {
                        _gotoNext = 3350805i32;
                    };
                } else if (__value__ == (3350507i32)) {
                    if (_t_3349248 == (stdgo.Go.str())) {
                        _gotoNext = 3350524i32;
                    } else {
                        _gotoNext = 3350554i32;
                    };
                } else if (__value__ == (3350524i32)) {
                    switchBreak = true;
                    _gotoNext = 3349401i32;
                } else if (__value__ == (3350554i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3349248?.__copy__());
                            _c_3349326 = @:tmpset0 __tmp__._0;
                            _t_3349248 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3349234 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3349234 != null) {
                            _gotoNext = 3350593i32;
                        } else {
                            _gotoNext = 3350628i32;
                        };
                    };
                } else if (__value__ == (3350593i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3350628i32;
                } else if (__value__ == (3350628i32)) {
                    if (_c_3349326 == ((125 : stdgo.GoInt32))) {
                        _gotoNext = 3350640i32;
                    } else {
                        _gotoNext = 3350663i32;
                    };
                } else if (__value__ == (3350640i32)) {
                    _gotoNext = 3350805i32;
                } else if (__value__ == (3350663i32)) {
                    _v_3350663 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_3349326);
                    if ((_v_3350663 < (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3350690i32;
                    } else {
                        _gotoNext = 3350720i32;
                    };
                } else if (__value__ == (3350690i32)) {
                    switchBreak = true;
                    _gotoNext = 3349401i32;
                } else if (__value__ == (3350720i32)) {
                    _r = ((_r * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _v_3350663 : stdgo.GoInt32);
                    if ((_r > (1114111 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3350760i32;
                    } else {
                        _gotoNext = 3350790i32;
                    };
                } else if (__value__ == (3350760i32)) {
                    switchBreak = true;
                    _gotoNext = 3349401i32;
                } else if (__value__ == (3350790i32)) {
                    _nhex_3350481++;
                    _gotoNext = 3350503i32;
                } else if (__value__ == (3350805i32)) {
                    if (_nhex_3350481 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3350818i32;
                    } else {
                        _gotoNext = 3350845i32;
                    };
                } else if (__value__ == (3350818i32)) {
                    switchBreak = true;
                    _gotoNext = 3349401i32;
                } else if (__value__ == (3350845i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t_3349248?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3350901i32;
                } else if (__value__ == (3350901i32)) {
                    _x_3350901 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_3349326);
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3349248?.__copy__());
                            _c_3349326 = @:tmpset0 __tmp__._0;
                            _t_3349248 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3349234 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3349234 != null) {
                            _gotoNext = 3350956i32;
                        } else {
                            _gotoNext = 3350985i32;
                        };
                    };
                } else if (__value__ == (3350956i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3350985i32;
                } else if (__value__ == (3350985i32)) {
                    _y_3350985 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_3349326);
                    if (((_x_3350901 < (0 : stdgo.GoInt32) : Bool) || (_y_3350985 < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3351019i32;
                    } else {
                        _gotoNext = 3351036i32;
                    };
                } else if (__value__ == (3351019i32)) {
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351036i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : ((_x_3350901 * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _y_3350985 : stdgo.GoInt32), _1 : _t_3349248?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351366i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (7 : stdgo.GoInt32), _1 : _t_3349248?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351399i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (12 : stdgo.GoInt32), _1 : _t_3349248?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351432i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (10 : stdgo.GoInt32), _1 : _t_3349248?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351465i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (13 : stdgo.GoInt32), _1 : _t_3349248?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351498i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (9 : stdgo.GoInt32), _1 : _t_3349248?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351531i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (11 : stdgo.GoInt32), _1 : _t_3349248?.__copy__(), _2 : _err_3349234 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3351567i32;
                } else if (__value__ == (3351567i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_3349248.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _parseRightParen( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        @:check2r _p._concat();
        if (@:check2r _p._swapVerticalBar()) {
            (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (((@:checkr _p ?? throw "null pointer dereference")._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        };
        @:check2r _p._alternate();
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (@:checkr _p ?? throw "null pointer dereference")._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
        };
        var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (_n - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        if ((@:checkr _re2 ?? throw "null pointer dereference").op != ((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (@:checkr _p ?? throw "null pointer dereference")._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
        };
        (@:checkr _p ?? throw "null pointer dereference")._flags = (@:checkr _re2 ?? throw "null pointer dereference").flags;
        if ((@:checkr _re2 ?? throw "null pointer dereference").cap == ((0 : stdgo.GoInt))) {
            @:check2r _p._push(_re1);
        } else {
            (@:checkr _re2 ?? throw "null pointer dereference").op = (13 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            (@:checkr _re2 ?? throw "null pointer dereference").sub = ((@:checkr _re2 ?? throw "null pointer dereference").sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
            (@:checkr _re2 ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)] = _re1;
            @:check2r _p._push(_re2);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _swapVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if (((((_n >= (3 : stdgo.GoInt) : Bool) && (@:checkr (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op == ((129 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) && stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass((@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass((@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re3 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)];
            if (((@:checkr _re1 ?? throw "null pointer dereference").op > (@:checkr _re3 ?? throw "null pointer dereference").op : Bool)) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = __tmp__0;
                    _re3 = __tmp__1;
                };
                (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] = _re3;
            };
            stdgo._internal.regexp.syntax.Syntax__mergeCharClass._mergeCharClass(_re3, _re1);
            @:check2r _p._reuse(_re1);
            (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
            return true;
        };
        if ((_n >= (2 : stdgo.GoInt) : Bool)) {
            var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re2 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
            if ((@:checkr _re2 ?? throw "null pointer dereference").op == ((129 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_n >= (3 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.regexp.syntax.Syntax__cleanAlt._cleanAlt((@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]);
                };
                (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = _re1;
                (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re2;
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _parseVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        @:check2r _p._concat();
        if (!@:check2r _p._swapVerticalBar()) {
            @:check2r _p._op((129 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
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
    @:tdfield
    static public function _parsePerlFlags( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var loopBreak = false;
        var _sign_3343798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capture_3343322:stdgo.GoString = ("" : stdgo.GoString);
        var _t_3342310:stdgo.GoString = ("" : stdgo.GoString);
        var _flags_3343780:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        var _c_3343750:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _re_3343600:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        var _name_3343360:stdgo.GoString = ("" : stdgo.GoString);
        var _end_3343156:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawFlag_3343810:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _t_3342310 = _s?.__copy__();
                    if (((((_t_3342310.length) > (4 : stdgo.GoInt) : Bool) && _t_3342310[(2 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) : Bool) && (_t_3342310[(3 : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3343132i32;
                    } else {
                        _gotoNext = 3343746i32;
                    };
                } else if (__value__ == (3343132i32)) {
                    _end_3343156 = stdgo._internal.strings.Strings_indexRune.indexRune(_t_3342310?.__copy__(), (62 : stdgo.GoInt32));
                    if ((_end_3343156 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3343202i32;
                    } else {
                        _gotoNext = 3343322i32;
                    };
                } else if (__value__ == (3343202i32)) {
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_t_3342310?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3343241i32;
                        } else {
                            _gotoNext = 3343270i32;
                        };
                    };
                } else if (__value__ == (3343241i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3343270i32;
                } else if (__value__ == (3343270i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3343322i32;
                } else if (__value__ == (3343322i32)) {
                    _capture_3343322 = (_t_3342310.__slice__(0, (_end_3343156 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _name_3343360 = (_t_3342310.__slice__((4 : stdgo.GoInt), _end_3343156) : stdgo.GoString)?.__copy__();
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_name_3343360?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3343430i32;
                        } else {
                            _gotoNext = 3343456i32;
                        };
                    };
                } else if (__value__ == (3343430i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3343456i32;
                } else if (__value__ == (3343456i32)) {
                    if (!stdgo._internal.regexp.syntax.Syntax__isValidCaptureName._isValidCaptureName(_name_3343360?.__copy__())) {
                        _gotoNext = 3343485i32;
                    } else {
                        _gotoNext = 3343587i32;
                    };
                } else if (__value__ == (3343485i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _capture_3343322?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3343587i32;
                } else if (__value__ == (3343587i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._numCap++;
                    _re_3343600 = @:check2r _p._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    (@:checkr _re_3343600 ?? throw "null pointer dereference").cap = (@:checkr _p ?? throw "null pointer dereference")._numCap;
                    (@:checkr _re_3343600 ?? throw "null pointer dereference").name = _name_3343360?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_t_3342310.__slice__((_end_3343156 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3343746i32;
                } else if (__value__ == (3343746i32)) {
                    _t_3342310 = (_t_3342310.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _flags_3343780 = (@:checkr _p ?? throw "null pointer dereference")._flags;
                    _sign_3343798 = (1 : stdgo.GoInt);
                    _sawFlag_3343810 = false;
                    _gotoNext = 3343827i32;
                } else if (__value__ == (3343827i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3343834i32)) {
                    if (!loopBreak && (_t_3342310 != stdgo.Go.str())) {
                        _gotoNext = 3343846i32;
                    } else {
                        _gotoNext = 3344661i32;
                    };
                } else if (__value__ == (3343846i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3342310?.__copy__());
                            _c_3343750 = @:tmpset0 __tmp__._0;
                            _t_3342310 = @:tmpset0 __tmp__._1?.__copy__();
                            _err = @:tmpset0 __tmp__._2;
                        };
                        if (_err != null) {
                            _gotoNext = 3343889i32;
                        } else {
                            _gotoNext = 3343915i32;
                        };
                    };
                } else if (__value__ == (3343889i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3343915i32;
                } else if (__value__ == (3343915i32)) {
                    _gotoNext = 3343915i32;
                    {
                        final __value__ = _c_3343750;
                        if (__value__ == ((105 : stdgo.GoInt32))) {
                            _gotoNext = 3343966i32;
                        } else if (__value__ == ((109 : stdgo.GoInt32))) {
                            _gotoNext = 3344017i32;
                        } else if (__value__ == ((115 : stdgo.GoInt32))) {
                            _gotoNext = 3344068i32;
                        } else if (__value__ == ((85 : stdgo.GoInt32))) {
                            _gotoNext = 3344116i32;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 3344194i32;
                        } else if (__value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 3344454i32;
                        } else {
                            _gotoNext = 3343928i32;
                        };
                    };
                } else if (__value__ == (3343928i32)) {
                    loopBreak = true;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3343966i32)) {
                    _flags_3343780 = (_flags_3343780 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3343810 = true;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344017i32)) {
                    _flags_3343780 = (_flags_3343780 & ((((16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3343810 = true;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344068i32)) {
                    _flags_3343780 = (_flags_3343780 | ((8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3343810 = true;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344116i32)) {
                    _flags_3343780 = (_flags_3343780 | ((32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                    _sawFlag_3343810 = true;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344194i32)) {
                    if ((_sign_3343798 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3344219i32;
                    } else {
                        _gotoNext = 3344244i32;
                    };
                } else if (__value__ == (3344219i32)) {
                    loopBreak = true;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344244i32)) {
                    _sign_3343798 = (-1 : stdgo.GoInt);
                    _flags_3343780 = (-1 ^ _flags_3343780);
                    _sawFlag_3343810 = false;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344454i32)) {
                    if ((_sign_3343798 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3344484i32;
                    } else {
                        _gotoNext = 3344553i32;
                    };
                } else if (__value__ == (3344484i32)) {
                    if (!_sawFlag_3343810) {
                        _gotoNext = 3344502i32;
                    } else {
                        _gotoNext = 3344530i32;
                    };
                } else if (__value__ == (3344502i32)) {
                    loopBreak = true;
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344530i32)) {
                    _flags_3343780 = (-1 ^ _flags_3343780);
                    _gotoNext = 3344553i32;
                } else if (__value__ == (3344553i32)) {
                    if (_c_3343750 == ((58 : stdgo.GoInt32))) {
                        _gotoNext = 3344565i32;
                    } else {
                        _gotoNext = 3344619i32;
                    };
                } else if (__value__ == (3344565i32)) {
                    @:check2r _p._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    _gotoNext = 3344619i32;
                } else if (__value__ == (3344619i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._flags = _flags_3343780;
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _t_3342310?.__copy__(), _1 : (null : stdgo.Error) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3343834i32;
                } else if (__value__ == (3344661i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_3342310.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
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
                var __tmp__ = @:check2r _p._parseInt(_s?.__copy__());
                _min = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok1 = @:tmpset0 __tmp__._2;
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
                    var __tmp__ = @:check2r _p._parseInt(_s?.__copy__());
                    _max = @:tmpset0 __tmp__._0;
                    _s = @:tmpset0 __tmp__._1?.__copy__();
                    _ok1 = @:tmpset0 __tmp__._2;
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
    @:tdfield
    static public function _removeLeadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _reuse:Bool):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if (_reuse) {
                @:check2r _p._reuse((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
            };
            (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (@:checkr _re ?? throw "null pointer dereference").sub.__copyTo__(((@:checkr _re ?? throw "null pointer dereference").sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>))) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
            {
                final __value__ = ((@:checkr _re ?? throw "null pointer dereference").sub.length);
                if (__value__ == ((0 : stdgo.GoInt))) {
                    (@:checkr _re ?? throw "null pointer dereference").op = (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                    (@:checkr _re ?? throw "null pointer dereference").sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    var _old = _re;
                    _re = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
                    @:check2r _p._reuse(_old);
                };
            };
            return _re;
        };
        if (_reuse) {
            @:check2r _p._reuse(_re);
        };
        return @:check2r _p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
    }
    @:keep
    @:tdfield
    static public function _leadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return null;
        };
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
            if ((@:checkr _sub ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return null;
            };
            return _sub;
        };
        return _re;
    }
    @:keep
    @:tdfield
    static public function _removeLeadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
            _sub = @:check2r _p._removeLeadingString(_sub, _n);
            (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)] = _sub;
            if ((@:checkr _sub ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                @:check2r _p._reuse(_sub);
                {
                    final __value__ = ((@:checkr _re ?? throw "null pointer dereference").sub.length);
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        (@:checkr _re ?? throw "null pointer dereference").op = (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        (@:checkr _re ?? throw "null pointer dereference").sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        var _old = _re;
                        _re = (@:checkr _re ?? throw "null pointer dereference").sub[(1 : stdgo.GoInt)];
                        @:check2r _p._reuse(_old);
                    } else {
                        (@:checkr _re ?? throw "null pointer dereference").sub.__copyTo__(((@:checkr _re ?? throw "null pointer dereference").sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>));
                        (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (((@:checkr _re ?? throw "null pointer dereference").sub.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                    };
                };
            };
            return _re;
        };
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(0, (@:checkr _re ?? throw "null pointer dereference").rune.__copyTo__(((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(_n) : stdgo.Slice<stdgo.GoInt32>))) : stdgo.Slice<stdgo.GoInt32>);
            if (((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((0 : stdgo.GoInt))) {
                (@:checkr _re ?? throw "null pointer dereference").op = (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            };
        };
        return _re;
    }
    @:keep
    @:tdfield
    static public function _leadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _re = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
        };
        if ((@:checkr _re ?? throw "null pointer dereference").op != ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) };
        };
        return { _0 : (@:checkr _re ?? throw "null pointer dereference").rune, _1 : ((@:checkr _re ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) };
    }
    @:keep
    @:tdfield
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
                        var __tmp__ = @:check2r _p._leadingString(_sub[(_i : stdgo.GoInt)]);
                        _istr = @:tmpset0 __tmp__._0;
                        _iflags = @:tmpset0 __tmp__._1;
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
                    var _prefix = @:check2r _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    (@:checkr _prefix ?? throw "null pointer dereference").flags = _strflags;
                    (@:checkr _prefix ?? throw "null pointer dereference").rune = (((@:checkr _prefix ?? throw "null pointer dereference").rune.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...(_str : Array<stdgo.GoInt32>)));
                    {
                        var _j = (_start : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            _sub[(_j : stdgo.GoInt)] = @:check2r _p._removeLeadingString(_sub[(_j : stdgo.GoInt)], (_str.length));
@:check2r _p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    var _suffix = @:check2r _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    var _re = @:check2r _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    (@:checkr _re ?? throw "null pointer dereference").sub = (((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(_prefix, _suffix));
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
                    _ifirst = @:check2r _p._leadingRegexp(_sub[(_i : stdgo.GoInt)]);
                    if ((((_first != null && ((_first : Dynamic).__nil__ == null || !(_first : Dynamic).__nil__)) && @:check2r _first.equal(_ifirst) : Bool) && ((stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass(_first) || ((((@:checkr _first ?? throw "null pointer dereference").op == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (@:checkr _first ?? throw "null pointer dereference").min == ((@:checkr _first ?? throw "null pointer dereference").max) : Bool) && stdgo._internal.regexp.syntax.Syntax__isCharClass._isCharClass((@:checkr _first ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) : Bool)) : Bool)) {
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
_sub[(_j : stdgo.GoInt)] = @:check2r _p._removeLeadingRegexp(_sub[(_j : stdgo.GoInt)], _reuse);
@:check2r _p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    var _suffix = @:check2r _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    var _re = @:check2r _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                    (@:checkr _re ?? throw "null pointer dereference").sub = (((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(_prefix, _suffix));
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
                            if ((((@:checkr _sub[(_max : stdgo.GoInt)] ?? throw "null pointer dereference").op < (@:checkr _sub[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").op : Bool) || ((@:checkr _sub[(_max : stdgo.GoInt)] ?? throw "null pointer dereference").op == ((@:checkr _sub[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").op) && (((@:checkr _sub[(_max : stdgo.GoInt)] ?? throw "null pointer dereference").rune.length) < ((@:checkr _sub[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").rune.length) : Bool) : Bool) : Bool)) {
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
@:check2r _p._reuse(_sub[(_j : stdgo.GoInt)]);
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
            if (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_sub.length) : Bool) && (@:checkr _sub[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) && ((@:checkr _sub[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op == (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool)) {
                continue;
            };
            _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]));
        };
        _sub = _out;
        return _sub;
    }
    @:keep
    @:tdfield
    static public function _collapse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _subs:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((_subs.length) == ((1 : stdgo.GoInt))) {
            return _subs[(0 : stdgo.GoInt)];
        };
        var _re = @:check2r _p._newRegexp(_op);
        (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        for (__1 => _sub in _subs) {
            if ((@:checkr _sub ?? throw "null pointer dereference").op == (_op)) {
                (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__append__(...((@:checkr _sub ?? throw "null pointer dereference").sub : Array<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>)));
                @:check2r _p._reuse(_sub);
            } else {
                (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__append__(_sub));
            };
        };
        if (_op == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            (@:checkr _re ?? throw "null pointer dereference").sub = @:check2r _p._factor((@:checkr _re ?? throw "null pointer dereference").sub);
            if (((@:checkr _re ?? throw "null pointer dereference").sub.length) == ((1 : stdgo.GoInt))) {
                var _old = _re;
                _re = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
                @:check2r _p._reuse(_old);
            };
        };
        return _re;
    }
    @:keep
    @:tdfield
    static public function _alternate( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _i = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op < (128 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        if (((_subs.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.regexp.syntax.Syntax__cleanAlt._cleanAlt(_subs[((_subs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
        };
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return @:check2r _p._push(@:check2r _p._newRegexp((1 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
        };
        return @:check2r _p._push(@:check2r _p._collapse(_subs, (19 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
    }
    @:keep
    @:tdfield
    static public function _concat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        @:check2r _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
        var _i = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op < (128 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return @:check2r _p._push(@:check2r _p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
        };
        return @:check2r _p._push(@:check2r _p._collapse(_subs, (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)));
    }
    @:keep
    @:tdfield
    static public function _repeat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _flags = ((@:checkr _p ?? throw "null pointer dereference")._flags : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        if (((@:checkr _p ?? throw "null pointer dereference")._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
            if ((((_after.length) > (0 : stdgo.GoInt) : Bool) && (_after[(0 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                _after = (_after.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _flags = (_flags ^ ((32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            };
            if (_lastRepeat != (stdgo.Go.str())) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid nested repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_lastRepeat.__slice__(0, ((_lastRepeat.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
            };
        };
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        var _sub = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        if (((@:checkr _sub ?? throw "null pointer dereference").op >= (128 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        var _re = @:check2r _p._newRegexp(_op);
        (@:checkr _re ?? throw "null pointer dereference").min = _min;
        (@:checkr _re ?? throw "null pointer dereference").max = _max;
        (@:checkr _re ?? throw "null pointer dereference").flags = _flags;
        (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)] = _sub;
        (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re;
        @:check2r _p._checkLimits(_re);
        if (((_op == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (((_min >= (2 : stdgo.GoInt) : Bool) || (_max >= (2 : stdgo.GoInt) : Bool) : Bool)) : Bool) && !stdgo._internal.regexp.syntax.Syntax__repeatIsValid._repeatIsValid(_re, (1000 : stdgo.GoInt)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
        };
        return { _0 : _after?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _op( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _re = @:check2r _p._newRegexp(_op);
        (@:checkr _re ?? throw "null pointer dereference").flags = (@:checkr _p ?? throw "null pointer dereference")._flags;
        return @:check2r _p._push(_re);
    }
    @:keep
    @:tdfield
    static public function _literal( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _r:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _re = @:check2r _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
        (@:checkr _re ?? throw "null pointer dereference").flags = (@:checkr _p ?? throw "null pointer dereference")._flags;
        if (((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
            _r = stdgo._internal.regexp.syntax.Syntax__minFoldRune._minFoldRune(_r);
        };
        (@:checkr _re ?? throw "null pointer dereference").rune0[(0 : stdgo.GoInt)] = _r;
        (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        @:check2r _p._push(_re);
    }
    @:keep
    @:tdfield
    static public function _maybeConcat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _r:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        if ((((@:checkr _re1 ?? throw "null pointer dereference").op != ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || (@:checkr _re2 ?? throw "null pointer dereference").op != ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) || (((@:checkr _re1 ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((@:checkr _re2 ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool)) {
            return false;
        };
        (@:checkr _re2 ?? throw "null pointer dereference").rune = ((@:checkr _re2 ?? throw "null pointer dereference").rune.__append__(...((@:checkr _re1 ?? throw "null pointer dereference").rune : Array<stdgo.GoInt32>)));
        if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
            (@:checkr _re1 ?? throw "null pointer dereference").rune = ((@:checkr _re1 ?? throw "null pointer dereference").rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re1 ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] = _r;
            (@:checkr _re1 ?? throw "null pointer dereference").flags = _flags;
            return true;
        };
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        @:check2r _p._reuse(_re1);
        return false;
    }
    @:keep
    @:tdfield
    static public function _push( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._numRunes = ((@:checkr _p ?? throw "null pointer dereference")._numRunes + (((@:checkr _re ?? throw "null pointer dereference").rune.length)) : stdgo.GoInt);
        if ((((@:checkr _re ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((2 : stdgo.GoInt)) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == (@:checkr _re ?? throw "null pointer dereference").rune[(1 : stdgo.GoInt)]) : Bool)) {
            if (@:check2r _p._maybeConcat((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)], ((@:checkr _p ?? throw "null pointer dereference")._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                return null;
            };
            (@:checkr _re ?? throw "null pointer dereference").op = (3 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re ?? throw "null pointer dereference").flags = ((@:checkr _p ?? throw "null pointer dereference")._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        } else if ((((((((@:checkr _re ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((4 : stdgo.GoInt)) : Bool) && (@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == ((@:checkr _re ?? throw "null pointer dereference").rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && (@:checkr _re ?? throw "null pointer dereference").rune[(2 : stdgo.GoInt)] == ((@:checkr _re ?? throw "null pointer dereference").rune[((3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(2 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || (((((@:checkr _re ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((2 : stdgo.GoInt)) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32) == ((@:checkr _re ?? throw "null pointer dereference").rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simpleFold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(1 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
            if (@:check2r _p._maybeConcat((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)], ((@:checkr _p ?? throw "null pointer dereference")._flags | (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                return null;
            };
            (@:checkr _re ?? throw "null pointer dereference").op = (3 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re ?? throw "null pointer dereference").flags = ((@:checkr _p ?? throw "null pointer dereference")._flags | (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        } else {
            @:check2r _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
        };
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__append__(_re));
        @:check2r _p._checkLimits(_re);
        return _re;
    }
    @:keep
    @:tdfield
    static public function _calcHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _force:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._height != null && (@:checkr _p ?? throw "null pointer dereference")._height.exists(_re) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._height[_re], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _h:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _h;
                };
            };
        };
        var _h = (1 : stdgo.GoInt);
        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
            var _hsub = (@:check2r _p._calcHeight(_sub, false) : stdgo.GoInt);
            if ((_h < ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt) : Bool)) {
                _h = ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt);
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._height[_re] = _h;
        return _h;
    }
    @:keep
    @:tdfield
    static public function _checkHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._numRegexp < (1000 : stdgo.GoInt) : Bool)) {
            return;
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._height == null) {
            (@:checkr _p ?? throw "null pointer dereference")._height = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>);
            for (__1 => _re in (@:checkr _p ?? throw "null pointer dereference")._stack) {
                @:check2r _p._checkHeight(_re);
            };
        };
        if ((@:check2r _p._calcHeight(_re, true) > (1000 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode)));
        };
    }
    @:keep
    @:tdfield
    static public function _calcSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _force:Bool):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._size != null && (@:checkr _p ?? throw "null pointer dereference")._size.exists(_re) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._size[_re], _1 : true } : { _0 : (0 : stdgo.GoInt64), _1 : false }), _size:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
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
                    final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
                    if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _size = ((@:checkr _re ?? throw "null pointer dereference").rune.length : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _size = ((2i64 : stdgo.GoInt64) + @:check2r _p._calcSize((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _size = ((1i64 : stdgo.GoInt64) + @:check2r _p._calcSize((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                            _size = (_size + (@:check2r _p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                            _size = (_size + (@:check2r _p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        if ((((@:checkr _re ?? throw "null pointer dereference").sub.length) > (1 : stdgo.GoInt) : Bool)) {
                            _size = (_size + ((((@:checkr _re ?? throw "null pointer dereference").sub.length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        var _sub = (@:check2r _p._calcSize((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        if ((@:checkr _re ?? throw "null pointer dereference").max == ((-1 : stdgo.GoInt))) {
                            if ((@:checkr _re ?? throw "null pointer dereference").min == ((0 : stdgo.GoInt))) {
                                _size = ((2i64 : stdgo.GoInt64) + _sub : stdgo.GoInt64);
                            } else {
                                _size = ((1i64 : stdgo.GoInt64) + (((@:checkr _re ?? throw "null pointer dereference").min : stdgo.GoInt64) * _sub : stdgo.GoInt64) : stdgo.GoInt64);
                            };
                            break;
                        };
                        _size = ((((@:checkr _re ?? throw "null pointer dereference").max : stdgo.GoInt64) * _sub : stdgo.GoInt64) + (((@:checkr _re ?? throw "null pointer dereference").max - (@:checkr _re ?? throw "null pointer dereference").min : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        break;
                    };
                };
                break;
            };
        };
        if ((_size < (1i64 : stdgo.GoInt64) : Bool)) {
            _size = (1i64 : stdgo.GoInt64);
        };
        (@:checkr _p ?? throw "null pointer dereference")._size[_re] = _size;
        return _size;
    }
    @:keep
    @:tdfield
    static public function _checkSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._size == null) {
            if ((@:checkr _p ?? throw "null pointer dereference")._repeats == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _p ?? throw "null pointer dereference")._repeats = (1i64 : stdgo.GoInt64);
            };
            if ((@:checkr _re ?? throw "null pointer dereference").op == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _n = ((@:checkr _re ?? throw "null pointer dereference").max : stdgo.GoInt);
                if (_n == ((-1 : stdgo.GoInt))) {
                    _n = (@:checkr _re ?? throw "null pointer dereference").min;
                };
                if ((_n <= (0 : stdgo.GoInt) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                if (((_n : stdgo.GoInt64) > ((3355443i64 : stdgo.GoInt64) / (@:checkr _p ?? throw "null pointer dereference")._repeats : stdgo.GoInt64) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._repeats = (3355443i64 : stdgo.GoInt64);
                } else {
                    (@:checkr _p ?? throw "null pointer dereference")._repeats = ((@:checkr _p ?? throw "null pointer dereference")._repeats * ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                };
            };
            if ((((@:checkr _p ?? throw "null pointer dereference")._numRegexp : stdgo.GoInt64) < ((3355443i64 : stdgo.GoInt64) / (@:checkr _p ?? throw "null pointer dereference")._repeats : stdgo.GoInt64) : Bool)) {
                return;
            };
            (@:checkr _p ?? throw "null pointer dereference")._size = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>);
            for (__1 => _re in (@:checkr _p ?? throw "null pointer dereference")._stack) {
                @:check2r _p._checkSize(_re);
            };
        };
        if ((@:check2r _p._calcSize(_re, true) > (3355443i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode)));
        };
    }
    @:keep
    @:tdfield
    static public function _checkLimits( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._numRunes > (33554432 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode)));
        };
        @:check2r _p._checkSize(_re);
        @:check2r _p._checkHeight(_re);
    }
    @:keep
    @:tdfield
    static public function _reuse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._height != null) {
            if ((@:checkr _p ?? throw "null pointer dereference")._height != null) (@:checkr _p ?? throw "null pointer dereference")._height.remove(_re);
        };
        (@:checkr _re ?? throw "null pointer dereference").sub0[(0 : stdgo.GoInt)] = (@:checkr _p ?? throw "null pointer dereference")._free;
        (@:checkr _p ?? throw "null pointer dereference")._free = _re;
    }
    @:keep
    @:tdfield
    static public function _newRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser> = _p;
        var _re = (@:checkr _p ?? throw "null pointer dereference")._free;
        if ((_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__))) {
            (@:checkr _p ?? throw "null pointer dereference")._free = (@:checkr _re ?? throw "null pointer dereference").sub0[(0 : stdgo.GoInt)];
            {
                var __tmp__ = (new stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp() : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp);
                var x = (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp);
                x.op = __tmp__?.op;
                x.flags = __tmp__?.flags;
                x.sub = __tmp__?.sub;
                x.sub0 = __tmp__?.sub0;
                x.rune = __tmp__?.rune;
                x.rune0 = __tmp__?.rune0;
                x.min = __tmp__?.min;
                x.max = __tmp__?.max;
                x.cap = __tmp__?.cap;
                x.name = __tmp__?.name;
            };
        } else {
            _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            (@:checkr _p ?? throw "null pointer dereference")._numRegexp++;
        };
        (@:checkr _re ?? throw "null pointer dereference").op = _op;
        return _re;
    }
}
