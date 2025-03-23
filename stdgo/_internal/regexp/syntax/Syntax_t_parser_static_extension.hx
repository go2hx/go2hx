package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _parseClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _t = ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _re = @:check2r _p._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
        (@:checkr _re ?? throw "null pointer dereference").flags = (@:checkr _p ?? throw "null pointer dereference")._flags;
        (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _sign = (1 : stdgo.GoInt);
        if (((_t != (stdgo.Go.str() : stdgo.GoString)) && (_t[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = (-1 : stdgo.GoInt);
            _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (((@:checkr _p ?? throw "null pointer dereference")._flags & (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__append__((10 : stdgo.GoInt32), (10 : stdgo.GoInt32)));
            };
        };
        var _class = (@:checkr _re ?? throw "null pointer dereference").rune;
        var _first = (true : Bool);
        while (((_t == ((stdgo.Go.str() : stdgo.GoString)) || _t[(0 : stdgo.GoInt)] != ((93 : stdgo.GoUInt8)) : Bool) || _first : Bool)) {
            if (((((_t != ((stdgo.Go.str() : stdgo.GoString)) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool) && !_first : Bool) && (((_t.length == (1 : stdgo.GoInt)) || (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : (_t.__slice__(0, ((1 : stdgo.GoInt) + _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    continue;
                };
            };
            var __tmp__ = @:check2r _p._parseUnicodeClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                    _rest = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (_nclass != null) {
                {
                    final __tmp__0 = _nclass;
                    final __tmp__1 = _nt?.__copy__();
                    _class = @:binopAssign __tmp__0;
                    _t = @:binopAssign __tmp__1;
                };
                continue;
            };
            {
                var __tmp__ = @:check2r _p._parsePerlClassEscape(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1;
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    continue;
                };
            };
            var _rng = (_t?.__copy__() : stdgo.GoString);
            var _lo:stdgo.GoInt32 = (0 : stdgo.GoInt32), _hi:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            {
                {
                    var __tmp__ = @:check2r _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                    _lo = @:tmpset0 __tmp__._0;
                    _t = @:tmpset0 __tmp__._1?.__copy__();
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
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
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                            _rest = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                if ((_hi < _lo : Bool)) {
                    _rng = (_rng.__slice__(0, ((_rng.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _rng?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            if (((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                _class = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_class, _lo, _hi);
            } else {
                _class = stdgo._internal.regexp.syntax.Syntax__appendfoldedrange._appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        (@:checkr _re ?? throw "null pointer dereference").rune = _class;
        _class = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _re ?? throw "null pointer dereference").rune) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
        if ((_sign < (0 : stdgo.GoInt) : Bool)) {
            _class = stdgo._internal.regexp.syntax.Syntax__negateclass._negateClass(_class);
        };
        (@:checkr _re ?? throw "null pointer dereference").rune = _class;
        @:check2r _p._push(_re);
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            _rest = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseUnicodeClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if ((((((@:checkr _p ?? throw "null pointer dereference")._flags & (128 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || _s[(0 : stdgo.GoInt)] != ((92 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != ((112 : stdgo.GoUInt8)) && _s[(1 : stdgo.GoInt)] != ((80 : stdgo.GoUInt8)) : Bool) : Bool)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _sign = (1 : stdgo.GoInt);
        if (_s[(1 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8))) {
            _sign = (-1 : stdgo.GoInt);
        };
        var _t = ((_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _seq:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = ("" : stdgo.GoString);
        if (_c != ((123 : stdgo.GoInt32))) {
            _seq = (_s.__slice__(0, ((_s.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _name = (_seq.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var _end = (stdgo._internal.strings.Strings_indexrune.indexRune(_s?.__copy__(), (125 : stdgo.GoInt32)) : stdgo.GoInt);
            if ((_end < (0 : stdgo.GoInt) : Bool)) {
                {
                    _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                    if (_err != null) {
                        return { _0 : _out, _1 : _rest, _2 : _err };
                    };
                };
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                    _out = __tmp__._0;
                    _rest = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            {
                final __tmp__0 = (_s.__slice__(0, (_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_s.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _seq = @:binopAssign __tmp__0;
                _t = @:binopAssign __tmp__1;
            };
            _name = (_s.__slice__((3 : stdgo.GoInt), _end) : stdgo.GoString)?.__copy__();
            {
                _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_name?.__copy__());
                if (_err != null) {
                    return { _0 : _out, _1 : _rest, _2 : _err };
                };
            };
        };
        if (((_name != (stdgo.Go.str() : stdgo.GoString)) && (_name[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = -_sign;
            _name = (_name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__unicodetable._unicodeTable(_name?.__copy__()), _tab:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._0, _fold:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._1;
        if (({
            final value = _tab;
            (value == null || (value : Dynamic).__nil__);
        })) {
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _seq?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                _out = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (((((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || ({
            final value = _fold;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendtable._appendTable(_r, _tab);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedtable._appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = ((@:checkr _p ?? throw "null pointer dereference")._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendtable._appendTable(_tmp, _tab);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendtable._appendTable(_tmp, _fold);
            (@:checkr _p ?? throw "null pointer dereference")._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendclass._appendClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedclass._appendNegatedClass(_r, _tmp);
            };
        };
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _appendGroup( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _r:stdgo.Slice<stdgo.GoInt32>, _g:stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedclass._appendNegatedClass(_r, _g._class);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendclass._appendClass(_r, _g._class);
            };
        } else {
            var _tmp = ((@:checkr _p ?? throw "null pointer dereference")._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendfoldedclass._appendFoldedClass(_tmp, _g._class);
            (@:checkr _p ?? throw "null pointer dereference")._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedclass._appendNegatedClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendclass._appendClass(_r, _tmp);
            };
        };
        return _r;
    }
    @:keep
    @:tdfield
    static public function _parseNamedClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
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
        var _g = ((stdgo._internal.regexp.syntax.Syntax__posixgroup._posixGroup[_name] ?? ({} : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup);
        if (_g._sign == ((0 : stdgo.GoInt))) {
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _name?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                _out = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : @:check2r _p._appendGroup(_r, _g?.__copy__()), _1 : _s?.__copy__(), _2 : (null : stdgo.Error) };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parsePerlClassEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString);
        if (((((@:checkr _p ?? throw "null pointer dereference")._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || (_s[(0 : stdgo.GoInt)] != (92 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _out, _1 : _rest };
        };
        var _g = ((stdgo._internal.regexp.syntax.Syntax__perlgroup._perlGroup[(_s.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)] ?? ({} : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup);
        if (_g._sign == ((0 : stdgo.GoInt))) {
            return { _0 : _out, _1 : _rest };
        };
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } = { _0 : @:check2r _p._appendGroup(_r, _g?.__copy__()), _1 : (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseClassChar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("missing closing ]" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _wholeClass?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                _r = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (_s[(0 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
            return @:check2r _p._parseEscape(_s?.__copy__());
        };
        return stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _parseEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var switchBreak = false;
        var _x_40:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _v_39:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_36:stdgo.Error = (null : stdgo.Error);
        var _c_35:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _y_41:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nhex_38:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_37:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_34:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _t_34 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if (_t_34 == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3577422i32;
                    } else {
                        _gotoNext = 3577477i32;
                    };
                } else if (__value__ == (3577422i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("trailing backslash at end of expression" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3577477i32;
                } else if (__value__ == (3577477i32)) {
                    {
                        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_34?.__copy__());
                        _c_35 = @:tmpset0 __tmp__._0;
                        _t_34 = @:tmpset0 __tmp__._1?.__copy__();
                        _err_36 = @:tmpset0 __tmp__._2;
                    };
                    if (_err_36 != null) {
                        _gotoNext = 3577517i32;
                    } else {
                        _gotoNext = 3577543i32;
                    };
                } else if (__value__ == (3577517i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3577543i32;
                } else if (__value__ == (3577543i32)) {
                    _gotoNext = 3577543i32;
                    switchBreak = false;
                    _gotoNext = 3577552i32;
                } else if (__value__ == (3577552i32)) {
                    if (!switchBreak) {
                        {
                            final __value__ = _c_35;
                            if (__value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                                _gotoNext = 3577892i32;
                            } else if (__value__ == ((48 : stdgo.GoInt32))) {
                                _gotoNext = 3578064i32;
                            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                                _gotoNext = 3578324i32;
                            } else if (__value__ == ((97 : stdgo.GoInt32))) {
                                _gotoNext = 3579517i32;
                            } else if (__value__ == ((102 : stdgo.GoInt32))) {
                                _gotoNext = 3579550i32;
                            } else if (__value__ == ((110 : stdgo.GoInt32))) {
                                _gotoNext = 3579583i32;
                            } else if (__value__ == ((114 : stdgo.GoInt32))) {
                                _gotoNext = 3579616i32;
                            } else if (__value__ == ((116 : stdgo.GoInt32))) {
                                _gotoNext = 3579649i32;
                            } else if (__value__ == ((118 : stdgo.GoInt32))) {
                                _gotoNext = 3579682i32;
                            } else {
                                _gotoNext = 3577564i32;
                            };
                        };
                    } else {
                        _gotoNext = 3579718i32;
                    };
                } else if (__value__ == (3577564i32)) {
                    if (((_c_35 < (128 : stdgo.GoInt32) : Bool) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c_35) : Bool)) {
                        _gotoNext = 3577611i32;
                    } else {
                        _gotoNext = 3579718i32;
                    };
                } else if (__value__ == (3577611i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _c_35, _1 : _t_34?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3577892i32)) {
                    if (((_t_34 == ((stdgo.Go.str() : stdgo.GoString)) || (_t_34[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_34[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3578034i32;
                    } else {
                        _gotoNext = 3578051i32;
                    };
                } else if (__value__ == (3578034i32)) {
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3578051i32)) {
                    _gotoNext = 3578064i32;
                } else if (__value__ == (3578064i32)) {
                    _r = (_c_35 - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _i_37 = (1 : stdgo.GoInt);
                    _gotoNext = 3578147i32;
                } else if (__value__ == (3578147i32)) {
                    if ((_i_37 < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3578170i32;
                    } else {
                        _gotoNext = 3578280i32;
                    };
                } else if (__value__ == (3578170i32)) {
                    if (((_t_34 == ((stdgo.Go.str() : stdgo.GoString)) || (_t_34[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_34[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3578214i32;
                    } else {
                        _gotoNext = 3578234i32;
                    };
                } else if (__value__ == (3578214i32)) {
                    _gotoNext = 3578280i32;
                } else if (__value__ == (3578234i32)) {
                    _r = (((_r * (8 : stdgo.GoInt32) : stdgo.GoInt32) + (_t_34[(0 : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _t_34 = (_t_34.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _i_37++;
                    _gotoNext = 3578147i32;
                } else if (__value__ == (3578280i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t_34?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3578324i32)) {
                    if (_t_34 == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3578347i32;
                    } else {
                        _gotoNext = 3578364i32;
                    };
                } else if (__value__ == (3578347i32)) {
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3578364i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_34?.__copy__());
                            _c_35 = @:tmpset0 __tmp__._0;
                            _t_34 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_36 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_36 != null) {
                            _gotoNext = 3578403i32;
                        } else {
                            _gotoNext = 3578432i32;
                        };
                    };
                } else if (__value__ == (3578403i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3578432i32;
                } else if (__value__ == (3578432i32)) {
                    if (_c_35 == ((123 : stdgo.GoInt32))) {
                        _gotoNext = 3578444i32;
                    } else {
                        _gotoNext = 3579052i32;
                    };
                } else if (__value__ == (3578444i32)) {
                    _nhex_38 = (0 : stdgo.GoInt);
                    _r = (0 : stdgo.GoInt32);
                    0i32;
                    _gotoNext = 3578654i32;
                } else if (__value__ == (3578654i32)) {
                    if (true) {
                        _gotoNext = 3578658i32;
                    } else {
                        _gotoNext = 3578956i32;
                    };
                } else if (__value__ == (3578658i32)) {
                    if (_t_34 == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3578675i32;
                    } else {
                        _gotoNext = 3578705i32;
                    };
                } else if (__value__ == (3578675i32)) {
                    switchBreak = true;
                    _gotoNext = 3577552i32;
                } else if (__value__ == (3578705i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_34?.__copy__());
                            _c_35 = @:tmpset0 __tmp__._0;
                            _t_34 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_36 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_36 != null) {
                            _gotoNext = 3578744i32;
                        } else {
                            _gotoNext = 3578779i32;
                        };
                    };
                } else if (__value__ == (3578744i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3578779i32;
                } else if (__value__ == (3578779i32)) {
                    if (_c_35 == ((125 : stdgo.GoInt32))) {
                        _gotoNext = 3578791i32;
                    } else {
                        _gotoNext = 3578814i32;
                    };
                } else if (__value__ == (3578791i32)) {
                    _gotoNext = 3578956i32;
                } else if (__value__ == (3578814i32)) {
                    _v_39 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_35);
                    if ((_v_39 < (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3578841i32;
                    } else {
                        _gotoNext = 3578871i32;
                    };
                } else if (__value__ == (3578841i32)) {
                    switchBreak = true;
                    _gotoNext = 3577552i32;
                } else if (__value__ == (3578871i32)) {
                    _r = ((_r * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _v_39 : stdgo.GoInt32);
                    if ((_r > (1114111 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3578911i32;
                    } else {
                        _gotoNext = 3578941i32;
                    };
                } else if (__value__ == (3578911i32)) {
                    switchBreak = true;
                    _gotoNext = 3577552i32;
                } else if (__value__ == (3578941i32)) {
                    _nhex_38++;
                    _gotoNext = 3578654i32;
                } else if (__value__ == (3578956i32)) {
                    if (_nhex_38 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3578969i32;
                    } else {
                        _gotoNext = 3578996i32;
                    };
                } else if (__value__ == (3578969i32)) {
                    switchBreak = true;
                    _gotoNext = 3577552i32;
                } else if (__value__ == (3578996i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t_34?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579052i32;
                } else if (__value__ == (3579052i32)) {
                    _x_40 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_35);
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_34?.__copy__());
                            _c_35 = @:tmpset0 __tmp__._0;
                            _t_34 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_36 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_36 != null) {
                            _gotoNext = 3579107i32;
                        } else {
                            _gotoNext = 3579136i32;
                        };
                    };
                } else if (__value__ == (3579107i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579136i32;
                } else if (__value__ == (3579136i32)) {
                    _y_41 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_35);
                    if (((_x_40 < (0 : stdgo.GoInt32) : Bool) || (_y_41 < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3579170i32;
                    } else {
                        _gotoNext = 3579187i32;
                    };
                } else if (__value__ == (3579170i32)) {
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579187i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : ((_x_40 * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _y_41 : stdgo.GoInt32), _1 : _t_34?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579517i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (7 : stdgo.GoInt32), _1 : _t_34?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579550i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (12 : stdgo.GoInt32), _1 : _t_34?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579583i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (10 : stdgo.GoInt32), _1 : _t_34?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579616i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (13 : stdgo.GoInt32), _1 : _t_34?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579649i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (9 : stdgo.GoInt32), _1 : _t_34?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579682i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (11 : stdgo.GoInt32), _1 : _t_34?.__copy__(), _2 : _err_36 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3579718i32;
                } else if (__value__ == (3579718i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_34.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
    static public function _parseRightParen( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        @:check2r _p._concat();
        if (@:check2r _p._swapVerticalBar()) {
            (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (((@:checkr _p ?? throw "null pointer dereference")._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        };
        @:check2r _p._alternate();
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (@:checkr _p ?? throw "null pointer dereference")._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
        };
        var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (_n - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        if ((@:checkr _re2 ?? throw "null pointer dereference").op != ((128 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (@:checkr _p ?? throw "null pointer dereference")._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
        };
        (@:checkr _p ?? throw "null pointer dereference")._flags = (@:checkr _re2 ?? throw "null pointer dereference").flags;
        if ((@:checkr _re2 ?? throw "null pointer dereference").cap == ((0 : stdgo.GoInt))) {
            @:check2r _p._push(_re1);
        } else {
            (@:checkr _re2 ?? throw "null pointer dereference").op = (13 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            (@:checkr _re2 ?? throw "null pointer dereference").sub = ((@:checkr _re2 ?? throw "null pointer dereference").sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
            (@:checkr _re2 ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)] = _re1;
            @:check2r _p._push(_re2);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _swapVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if (((((_n >= (3 : stdgo.GoInt) : Bool) && (@:checkr (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op == ((129 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass((@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass((@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re3 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)];
            if (((@:checkr _re1 ?? throw "null pointer dereference").op > (@:checkr _re3 ?? throw "null pointer dereference").op : Bool)) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = @:binopAssign __tmp__0;
                    _re3 = @:binopAssign __tmp__1;
                };
                (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] = _re3;
            };
            stdgo._internal.regexp.syntax.Syntax__mergecharclass._mergeCharClass(_re3, _re1);
            @:check2r _p._reuse(_re1);
            (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
            return true;
        };
        if ((_n >= (2 : stdgo.GoInt) : Bool)) {
            var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re2 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
            if ((@:checkr _re2 ?? throw "null pointer dereference").op == ((129 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if ((_n >= (3 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.regexp.syntax.Syntax__cleanalt._cleanAlt((@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]);
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
    static public function _parseVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        @:check2r _p._concat();
        if (!@:check2r _p._swapVerticalBar()) {
            @:check2r _p._op((129 : stdgo._internal.regexp.syntax.Syntax_op.Op));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _parseInt( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _n = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        if (((_s == ((stdgo.Go.str() : stdgo.GoString)) || (_s[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || ((57 : stdgo.GoUInt8) < _s[(0 : stdgo.GoInt)] : Bool) : Bool)) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        if ((((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(1 : stdgo.GoInt)] : Bool) : Bool) && (_s[(1 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        var _t = (_s?.__copy__() : stdgo.GoString);
        while (((_s != ((stdgo.Go.str() : stdgo.GoString)) && ((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
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
    static public function _parsePerlFlags( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var loopBreak = false;
        var _sign_32:stdgo.GoInt = (0 : stdgo.GoInt);
        var _re_29:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        var _name_28:stdgo.GoString = ("" : stdgo.GoString);
        var _capture_27:stdgo.GoString = ("" : stdgo.GoString);
        var _sawFlag_33:Bool = false;
        var _flags_31:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        var _c_30:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _end_26:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_25:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _t_25 = _s?.__copy__();
                    if (((((_t_25.length) > (4 : stdgo.GoInt) : Bool) && _t_25[(2 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) : Bool) && (_t_25[(3 : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3571283i32;
                    } else {
                        _gotoNext = 3571897i32;
                    };
                } else if (__value__ == (3571283i32)) {
                    _end_26 = stdgo._internal.strings.Strings_indexrune.indexRune(_t_25?.__copy__(), (62 : stdgo.GoInt32));
                    if ((_end_26 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3571353i32;
                    } else {
                        _gotoNext = 3571473i32;
                    };
                } else if (__value__ == (3571353i32)) {
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_t_25?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3571392i32;
                        } else {
                            _gotoNext = 3571421i32;
                        };
                    };
                } else if (__value__ == (3571392i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3571421i32;
                } else if (__value__ == (3571421i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3571473i32;
                } else if (__value__ == (3571473i32)) {
                    _capture_27 = (_t_25.__slice__(0, (_end_26 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _name_28 = (_t_25.__slice__((4 : stdgo.GoInt), _end_26) : stdgo.GoString)?.__copy__();
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_name_28?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3571581i32;
                        } else {
                            _gotoNext = 3571607i32;
                        };
                    };
                } else if (__value__ == (3571581i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3571607i32;
                } else if (__value__ == (3571607i32)) {
                    if (!stdgo._internal.regexp.syntax.Syntax__isvalidcapturename._isValidCaptureName(_name_28?.__copy__())) {
                        _gotoNext = 3571636i32;
                    } else {
                        _gotoNext = 3571738i32;
                    };
                } else if (__value__ == (3571636i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _capture_27?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3571738i32;
                } else if (__value__ == (3571738i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._numCap++;
                    _re_29 = @:check2r _p._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    (@:checkr _re_29 ?? throw "null pointer dereference").cap = (@:checkr _p ?? throw "null pointer dereference")._numCap;
                    (@:checkr _re_29 ?? throw "null pointer dereference").name = _name_28?.__copy__();
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_t_25.__slice__((_end_26 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3571897i32;
                } else if (__value__ == (3571897i32)) {
                    _t_25 = (_t_25.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _flags_31 = (@:checkr _p ?? throw "null pointer dereference")._flags;
                    _sign_32 = (1 : stdgo.GoInt);
                    _sawFlag_33 = false;
                    _gotoNext = 3571978i32;
                } else if (__value__ == (3571978i32)) {
                    0i32;
                    loopBreak = false;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3571985i32)) {
                    if (!loopBreak && (_t_25 != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3571997i32;
                    } else {
                        _gotoNext = 3572812i32;
                    };
                } else if (__value__ == (3571997i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_25?.__copy__());
                            _c_30 = @:tmpset0 __tmp__._0;
                            _t_25 = @:tmpset0 __tmp__._1?.__copy__();
                            _err = @:tmpset0 __tmp__._2;
                        };
                        if (_err != null) {
                            _gotoNext = 3572040i32;
                        } else {
                            _gotoNext = 3572066i32;
                        };
                    };
                } else if (__value__ == (3572040i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3572066i32;
                } else if (__value__ == (3572066i32)) {
                    _gotoNext = 3572066i32;
                    {
                        final __value__ = _c_30;
                        if (__value__ == ((105 : stdgo.GoInt32))) {
                            _gotoNext = 3572117i32;
                        } else if (__value__ == ((109 : stdgo.GoInt32))) {
                            _gotoNext = 3572168i32;
                        } else if (__value__ == ((115 : stdgo.GoInt32))) {
                            _gotoNext = 3572219i32;
                        } else if (__value__ == ((85 : stdgo.GoInt32))) {
                            _gotoNext = 3572267i32;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 3572345i32;
                        } else if (__value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 3572605i32;
                        } else {
                            _gotoNext = 3572079i32;
                        };
                    };
                } else if (__value__ == (3572079i32)) {
                    loopBreak = true;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572117i32)) {
                    _flags_31 = (_flags_31 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_33 = true;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572168i32)) {
                    _flags_31 = (_flags_31 & ((((16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_33 = true;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572219i32)) {
                    _flags_31 = (_flags_31 | ((8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_33 = true;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572267i32)) {
                    _flags_31 = (_flags_31 | ((32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_33 = true;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572345i32)) {
                    if ((_sign_32 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3572370i32;
                    } else {
                        _gotoNext = 3572395i32;
                    };
                } else if (__value__ == (3572370i32)) {
                    loopBreak = true;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572395i32)) {
                    _sign_32 = (-1 : stdgo.GoInt);
                    _flags_31 = (-1 ^ _flags_31);
                    _sawFlag_33 = false;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572605i32)) {
                    if ((_sign_32 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3572635i32;
                    } else {
                        _gotoNext = 3572704i32;
                    };
                } else if (__value__ == (3572635i32)) {
                    if (!_sawFlag_33) {
                        _gotoNext = 3572653i32;
                    } else {
                        _gotoNext = 3572681i32;
                    };
                } else if (__value__ == (3572653i32)) {
                    loopBreak = true;
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572681i32)) {
                    _flags_31 = (-1 ^ _flags_31);
                    _gotoNext = 3572704i32;
                } else if (__value__ == (3572704i32)) {
                    if (_c_30 == ((58 : stdgo.GoInt32))) {
                        _gotoNext = 3572716i32;
                    } else {
                        _gotoNext = 3572770i32;
                    };
                } else if (__value__ == (3572716i32)) {
                    @:check2r _p._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    _gotoNext = 3572770i32;
                } else if (__value__ == (3572770i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._flags = _flags_31;
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _t_25?.__copy__(), _1 : (null : stdgo.Error) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3571985i32;
                } else if (__value__ == (3572812i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_25.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
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
    static public function _parseRepeat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _min = (0 : stdgo.GoInt), _max = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_s[(0 : stdgo.GoInt)] != (123 : stdgo.GoUInt8)) : Bool)) {
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
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        if (_s[(0 : stdgo.GoInt)] != ((44 : stdgo.GoUInt8))) {
            _max = _min;
        } else {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
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
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_s[(0 : stdgo.GoInt)] != (125 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _rest = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _ok = true;
        return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
    }
    @:keep
    @:tdfield
    static public function _removeLeadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _reuse:Bool):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if (_reuse) {
                @:check2r _p._reuse((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
            };
            (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (@:checkr _re ?? throw "null pointer dereference").sub.__copyTo__(((@:checkr _re ?? throw "null pointer dereference").sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>))) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
            {
                final __value__ = ((@:checkr _re ?? throw "null pointer dereference").sub.length);
                if (__value__ == ((0 : stdgo.GoInt))) {
                    (@:checkr _re ?? throw "null pointer dereference").op = (2 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                    (@:checkr _re ?? throw "null pointer dereference").sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
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
        return @:check2r _p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_op.Op));
    }
    @:keep
    @:tdfield
    static public function _leadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            return null;
        };
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
            if ((@:checkr _sub ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                return null;
            };
            return _sub;
        };
        return _re;
    }
    @:keep
    @:tdfield
    static public function _removeLeadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
            _sub = @:check2r _p._removeLeadingString(_sub, _n);
            (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)] = _sub;
            if ((@:checkr _sub ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                @:check2r _p._reuse(_sub);
                {
                    final __value__ = ((@:checkr _re ?? throw "null pointer dereference").sub.length);
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        (@:checkr _re ?? throw "null pointer dereference").op = (2 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        (@:checkr _re ?? throw "null pointer dereference").sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        var _old = _re;
                        _re = (@:checkr _re ?? throw "null pointer dereference").sub[(1 : stdgo.GoInt)];
                        @:check2r _p._reuse(_old);
                    } else {
                        (@:checkr _re ?? throw "null pointer dereference").sub.__copyTo__(((@:checkr _re ?? throw "null pointer dereference").sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>));
                        (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (((@:checkr _re ?? throw "null pointer dereference").sub.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    };
                };
            };
            return _re;
        };
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(0, (@:checkr _re ?? throw "null pointer dereference").rune.__copyTo__(((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(_n) : stdgo.Slice<stdgo.GoInt32>))) : stdgo.Slice<stdgo.GoInt32>);
            if (((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((0 : stdgo.GoInt))) {
                (@:checkr _re ?? throw "null pointer dereference").op = (2 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            };
        };
        return _re;
    }
    @:keep
    @:tdfield
    static public function _leadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if ((((@:checkr _re ?? throw "null pointer dereference").op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw "null pointer dereference").sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _re = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
        };
        if ((@:checkr _re ?? throw "null pointer dereference").op != ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) };
        };
        return { _0 : (@:checkr _re ?? throw "null pointer dereference").rune, _1 : ((@:checkr _re ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) };
    }
    @:keep
    @:tdfield
    static public function _factor( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>):stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if (((_sub.length) < (2 : stdgo.GoInt) : Bool)) {
            return _sub;
        };
        var _str:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _strflags:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        var _start = (0 : stdgo.GoInt);
        var _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                var _istr:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
var _iflags:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
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
                    var _prefix = @:check2r _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_op.Op));
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
                    var _suffix = @:check2r _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    var _re = @:check2r _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    (@:checkr _re ?? throw "null pointer dereference").sub = (((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(_prefix, _suffix));
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
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        var _first:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                var _ifirst:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
if ((_i < (_sub.length) : Bool)) {
                    _ifirst = @:check2r _p._leadingRegexp(_sub[(_i : stdgo.GoInt)]);
                    if (((({
                        final value = _first;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && @:check2r _first.equal(_ifirst) : Bool) && ((stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass(_first) || ((((@:checkr _first ?? throw "null pointer dereference").op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (@:checkr _first ?? throw "null pointer dereference").min == ((@:checkr _first ?? throw "null pointer dereference").max) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass((@:checkr _first ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) : Bool)) : Bool)) {
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
                    var _suffix = @:check2r _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    var _re = @:check2r _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    (@:checkr _re ?? throw "null pointer dereference").sub = (((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
_start = _i;
_first = _ifirst;
                _i++;
            };
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                if (((_i < (_sub.length) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass(_sub[(_i : stdgo.GoInt)]) : Bool)) {
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
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    {
                        var _j = (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            stdgo._internal.regexp.syntax.Syntax__mergecharclass._mergeCharClass(_sub[(_start : stdgo.GoInt)], _sub[(_j : stdgo.GoInt)]);
@:check2r _p._reuse(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    stdgo._internal.regexp.syntax.Syntax__cleanalt._cleanAlt(_sub[(_start : stdgo.GoInt)]);
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
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        for (_i => _ in _sub) {
            if (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_sub.length) : Bool) && (@:checkr _sub[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) && ((@:checkr _sub[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op == (2 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool)) {
                continue;
            };
            _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]));
        };
        _sub = _out;
        return _sub;
    }
    @:keep
    @:tdfield
    static public function _collapse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _subs:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if ((_subs.length) == ((1 : stdgo.GoInt))) {
            return _subs[(0 : stdgo.GoInt)];
        };
        var _re = @:check2r _p._newRegexp(_op);
        (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        for (__1 => _sub in _subs) {
            if ((@:checkr _sub ?? throw "null pointer dereference").op == (_op)) {
                (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__append__(...((@:checkr _sub ?? throw "null pointer dereference").sub : Array<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>)));
                @:check2r _p._reuse(_sub);
            } else {
                (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub.__append__(_sub));
            };
        };
        if (_op == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
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
    static public function _alternate( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op < (128 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        if (((_subs.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.regexp.syntax.Syntax__cleanalt._cleanAlt(_subs[((_subs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
        };
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return @:check2r _p._push(@:check2r _p._newRegexp((1 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
        };
        return @:check2r _p._push(@:check2r _p._collapse(_subs, (19 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
    }
    @:keep
    @:tdfield
    static public function _concat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        @:check2r _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
        var _i = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").op < (128 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return @:check2r _p._push(@:check2r _p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
        };
        return @:check2r _p._push(@:check2r _p._collapse(_subs, (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
    }
    @:keep
    @:tdfield
    static public function _repeat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _flags = ((@:checkr _p ?? throw "null pointer dereference")._flags : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        if (((@:checkr _p ?? throw "null pointer dereference")._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            if ((((_after.length) > (0 : stdgo.GoInt) : Bool) && (_after[(0 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                _after = (_after.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _flags = (_flags ^ ((32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            };
            if (_lastRepeat != ((stdgo.Go.str() : stdgo.GoString))) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid nested repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_lastRepeat.__slice__(0, ((_lastRepeat.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
            };
        };
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
        };
        var _sub = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        if (((@:checkr _sub ?? throw "null pointer dereference").op >= (128 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
        };
        var _re = @:check2r _p._newRegexp(_op);
        (@:checkr _re ?? throw "null pointer dereference").min = _min;
        (@:checkr _re ?? throw "null pointer dereference").max = _max;
        (@:checkr _re ?? throw "null pointer dereference").flags = _flags;
        (@:checkr _re ?? throw "null pointer dereference").sub = ((@:checkr _re ?? throw "null pointer dereference").sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)] = _sub;
        (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re;
        @:check2r _p._checkLimits(_re);
        if (((_op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((_min >= (2 : stdgo.GoInt) : Bool) || (_max >= (2 : stdgo.GoInt) : Bool) : Bool)) : Bool) && !stdgo._internal.regexp.syntax.Syntax__repeatisvalid._repeatIsValid(_re, (1000 : stdgo.GoInt)) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
        };
        return { _0 : _after?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _op( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _re = @:check2r _p._newRegexp(_op);
        (@:checkr _re ?? throw "null pointer dereference").flags = (@:checkr _p ?? throw "null pointer dereference")._flags;
        return @:check2r _p._push(_re);
    }
    @:keep
    @:tdfield
    static public function _literal( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _r:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _re = @:check2r _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_op.Op));
        (@:checkr _re ?? throw "null pointer dereference").flags = (@:checkr _p ?? throw "null pointer dereference")._flags;
        if (((@:checkr _p ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            _r = stdgo._internal.regexp.syntax.Syntax__minfoldrune._minFoldRune(_r);
        };
        (@:checkr _re ?? throw "null pointer dereference").rune0[(0 : stdgo.GoInt)] = _r;
        (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        @:check2r _p._push(_re);
    }
    @:keep
    @:tdfield
    static public function _maybeConcat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _r:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._stack.length : stdgo.GoInt);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _re1 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = (@:checkr _p ?? throw "null pointer dereference")._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        if ((((@:checkr _re1 ?? throw "null pointer dereference").op != ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || (@:checkr _re2 ?? throw "null pointer dereference").op != ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) || (((@:checkr _re1 ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((@:checkr _re2 ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool)) {
            return false;
        };
        (@:checkr _re2 ?? throw "null pointer dereference").rune = ((@:checkr _re2 ?? throw "null pointer dereference").rune.__append__(...((@:checkr _re1 ?? throw "null pointer dereference").rune : Array<stdgo.GoInt32>)));
        if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
            (@:checkr _re1 ?? throw "null pointer dereference").rune = ((@:checkr _re1 ?? throw "null pointer dereference").rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re1 ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] = _r;
            (@:checkr _re1 ?? throw "null pointer dereference").flags = _flags;
            return true;
        };
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        @:check2r _p._reuse(_re1);
        return false;
    }
    @:keep
    @:tdfield
    static public function _push( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._numRunes = ((@:checkr _p ?? throw "null pointer dereference")._numRunes + (((@:checkr _re ?? throw "null pointer dereference").rune.length)) : stdgo.GoInt);
        if ((((@:checkr _re ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && ((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((2 : stdgo.GoInt)) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == (@:checkr _re ?? throw "null pointer dereference").rune[(1 : stdgo.GoInt)]) : Bool)) {
            if (@:check2r _p._maybeConcat((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)], ((@:checkr _p ?? throw "null pointer dereference")._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                return null;
            };
            (@:checkr _re ?? throw "null pointer dereference").op = (3 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re ?? throw "null pointer dereference").flags = ((@:checkr _p ?? throw "null pointer dereference")._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        } else if ((((((((@:checkr _re ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && ((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((4 : stdgo.GoInt)) : Bool) && (@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == ((@:checkr _re ?? throw "null pointer dereference").rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && (@:checkr _re ?? throw "null pointer dereference").rune[(2 : stdgo.GoInt)] == ((@:checkr _re ?? throw "null pointer dereference").rune[((3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(2 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || (((((@:checkr _re ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && ((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((2 : stdgo.GoInt)) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32) == ((@:checkr _re ?? throw "null pointer dereference").rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw "null pointer dereference").rune[(1 : stdgo.GoInt)]) == ((@:checkr _re ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
            if (@:check2r _p._maybeConcat((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)], ((@:checkr _p ?? throw "null pointer dereference")._flags | (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                return null;
            };
            (@:checkr _re ?? throw "null pointer dereference").op = (3 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re ?? throw "null pointer dereference").flags = ((@:checkr _p ?? throw "null pointer dereference")._flags | (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        } else {
            @:check2r _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
        };
        (@:checkr _p ?? throw "null pointer dereference")._stack = ((@:checkr _p ?? throw "null pointer dereference")._stack.__append__(_re));
        @:check2r _p._checkLimits(_re);
        return _re;
    }
    @:keep
    @:tdfield
    static public function _calcHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _force:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._height != null && (@:checkr _p ?? throw "null pointer dereference")._height.__exists__(_re) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._height[_re], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _h:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
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
    static public function _checkHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._numRegexp < (1000 : stdgo.GoInt) : Bool)) {
            return;
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._height == null) {
            (@:checkr _p ?? throw "null pointer dereference")._height = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>);
            for (__1 => _re in (@:checkr _p ?? throw "null pointer dereference")._stack) {
                @:check2r _p._checkHeight(_re);
            };
        };
        if ((@:check2r _p._calcHeight(_re, true) > (1000 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode)));
        };
    }
    @:keep
    @:tdfield
    static public function _calcSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _force:Bool):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._size != null && (@:checkr _p ?? throw "null pointer dereference")._size.__exists__(_re) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._size[_re], _1 : true } : { _0 : (0 : stdgo.GoInt64), _1 : false }), _size:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
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
                    if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        _size = ((@:checkr _re ?? throw "null pointer dereference").rune.length : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        _size = ((2i64 : stdgo.GoInt64) + @:check2r _p._calcSize((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        _size = ((1i64 : stdgo.GoInt64) + @:check2r _p._calcSize((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                            _size = (_size + (@:check2r _p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                            _size = (_size + (@:check2r _p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        if ((((@:checkr _re ?? throw "null pointer dereference").sub.length) > (1 : stdgo.GoInt) : Bool)) {
                            _size = (_size + ((((@:checkr _re ?? throw "null pointer dereference").sub.length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
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
    static public function _checkSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._size == null) {
            if ((@:checkr _p ?? throw "null pointer dereference")._repeats == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _p ?? throw "null pointer dereference")._repeats = (1i64 : stdgo.GoInt64);
            };
            if ((@:checkr _re ?? throw "null pointer dereference").op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
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
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>);
            for (__1 => _re in (@:checkr _p ?? throw "null pointer dereference")._stack) {
                @:check2r _p._checkSize(_re);
            };
        };
        if ((@:check2r _p._calcSize(_re, true) > (3355443i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode)));
        };
    }
    @:keep
    @:tdfield
    static public function _checkLimits( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._numRunes > (33554432 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode)));
        };
        @:check2r _p._checkSize(_re);
        @:check2r _p._checkHeight(_re);
    }
    @:keep
    @:tdfield
    static public function _reuse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._height != null) {
            if ((@:checkr _p ?? throw "null pointer dereference")._height != null) (@:checkr _p ?? throw "null pointer dereference")._height.__remove__(_re);
        };
        (@:checkr _re ?? throw "null pointer dereference").sub0[(0 : stdgo.GoInt)] = (@:checkr _p ?? throw "null pointer dereference")._free;
        (@:checkr _p ?? throw "null pointer dereference")._free = _re;
    }
    @:keep
    @:tdfield
    static public function _newRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _re = (@:checkr _p ?? throw "null pointer dereference")._free;
        if (({
            final value = _re;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _p ?? throw "null pointer dereference")._free = (@:checkr _re ?? throw "null pointer dereference").sub0[(0 : stdgo.GoInt)];
            {
                var __tmp__ = (new stdgo._internal.regexp.syntax.Syntax_regexp.Regexp() : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp);
                var x = (_re : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp);
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
            _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            (@:checkr _p ?? throw "null pointer dereference")._numRegexp++;
        };
        (@:checkr _re ?? throw "null pointer dereference").op = _op;
        return _re;
    }
}
