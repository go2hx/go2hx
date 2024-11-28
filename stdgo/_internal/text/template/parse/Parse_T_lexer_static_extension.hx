package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_lexer_asInterface) class T_lexer_static_extension {
    @:keep
    static public function _scanNumber( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        _l._accept(("+-" : stdgo.GoString));
        var _digits = ("0123456789_" : stdgo.GoString);
        if (_l._accept(("0" : stdgo.GoString))) {
            if (_l._accept(("xX" : stdgo.GoString))) {
                _digits = ("0123456789abcdefABCDEF_" : stdgo.GoString);
            } else if (_l._accept(("oO" : stdgo.GoString))) {
                _digits = ("01234567_" : stdgo.GoString);
            } else if (_l._accept(("bB" : stdgo.GoString))) {
                _digits = ("01_" : stdgo.GoString);
            };
        };
        _l._acceptRun(_digits?.__copy__());
        if (_l._accept(("." : stdgo.GoString))) {
            _l._acceptRun(_digits?.__copy__());
        };
        if (((_digits.length == (11 : stdgo.GoInt)) && _l._accept(("eE" : stdgo.GoString)) : Bool)) {
            _l._accept(("+-" : stdgo.GoString));
            _l._acceptRun(("0123456789_" : stdgo.GoString));
        };
        if (((_digits.length == (23 : stdgo.GoInt)) && _l._accept(("pP" : stdgo.GoString)) : Bool)) {
            _l._accept(("+-" : stdgo.GoString));
            _l._acceptRun(("0123456789_" : stdgo.GoString));
        };
        _l._accept(("i" : stdgo.GoString));
        if (stdgo._internal.text.template.parse.Parse__isAlphaNumeric._isAlphaNumeric(_l._peek())) {
            _l._next();
            return false;
        };
        return true;
    }
    @:keep
    static public function _atTerminator( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        var _r = (_l._peek() : stdgo.GoInt32);
        if (stdgo._internal.text.template.parse.Parse__isSpace._isSpace(_r)) {
            return true;
        };
        {
            final __value__ = _r;
            if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((46 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((124 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((40 : stdgo.GoInt32))) {
                return true;
            };
        };
        return stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__(), _l._rightDelim?.__copy__());
    }
    @:keep
    static public function _atRightDelim( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        var _delim = false, _trimSpaces = false;
        if ((stdgo._internal.text.template.parse.Parse__hasRightTrimMarker._hasRightTrimMarker((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__()) && stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_l._input.__slice__((_l._pos + (2 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo.GoString)?.__copy__(), _l._rightDelim?.__copy__()) : Bool)) {
            return { _0 : _delim = true, _1 : _trimSpaces = true };
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__(), _l._rightDelim?.__copy__())) {
            return { _0 : _delim = true, _1 : _trimSpaces = false };
        };
        return { _0 : _delim = false, _1 : _trimSpaces = false };
    }
    @:keep
    static public function _nextItem( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        _l._item = (new stdgo._internal.text.template.parse.Parse_T_item.T_item((8 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType), _l._pos, ("EOF" : stdgo.GoString), _l._startLine) : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        var _state = stdgo._internal.text.template.parse.Parse__lexText._lexText;
        if (_l._insideAction) {
            _state = stdgo._internal.text.template.parse.Parse__lexInsideAction._lexInsideAction;
        };
        while (true) {
            _state = _state(_l);
            if (_state == null) {
                return _l._item?.__copy__();
            };
        };
    }
    @:keep
    static public function _errorf( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        _l._item = (new stdgo._internal.text.template.parse.Parse_T_item.T_item((0 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType), _l._start, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__(), _l._startLine) : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        _l._start = (0 : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        _l._pos = (0 : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        _l._input = (_l._input.__slice__(0, (0 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        return null;
    }
    @:keep
    static public function _acceptRun( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _valid:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        while (stdgo._internal.strings.Strings_containsRune.containsRune(_valid?.__copy__(), _l._next())) {};
        _l._backup();
    }
    @:keep
    static public function _accept( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _valid:stdgo.GoString):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        if (stdgo._internal.strings.Strings_containsRune.containsRune(_valid?.__copy__(), _l._next())) {
            return true;
        };
        _l._backup();
        return false;
    }
    @:keep
    static public function _ignore( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        _l._line = (_l._line + (stdgo._internal.strings.Strings_count.count((_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) : stdgo.GoInt);
        _l._start = _l._pos;
        _l._startLine = _l._line;
    }
    @:keep
    static public function _emitItem( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _i:stdgo._internal.text.template.parse.Parse_T_item.T_item):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        _l._item = _i?.__copy__();
        return null;
    }
    @:keep
    static public function _emit( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _t:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        return _l._emitItem(_l._thisItem(_t)?.__copy__());
    }
    @:keep
    static public function _thisItem( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _t:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo._internal.text.template.parse.Parse_T_item.T_item {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        var _i = (new stdgo._internal.text.template.parse.Parse_T_item.T_item(_t, _l._start, (_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)?.__copy__(), _l._startLine) : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        _l._start = _l._pos;
        _l._startLine = _l._line;
        return _i?.__copy__();
    }
    @:keep
    static public function _backup( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        if ((!_l._atEOF && (_l._pos > (0 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRuneInString.decodeLastRuneInString((_l._input.__slice__(0, _l._pos) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            _l._pos = (_l._pos - ((_w : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
            if (_r == ((10 : stdgo.GoInt32))) {
                _l._line--;
            };
        };
    }
    @:keep
    static public function _peek( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo.GoInt32 {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        var _r = (_l._next() : stdgo.GoInt32);
        _l._backup();
        return _r;
    }
    @:keep
    static public function _next( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo.GoInt32 {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer> = _l;
        if (((_l._pos : stdgo.GoInt) >= (_l._input.length) : Bool)) {
            _l._atEOF = true;
            return (-1 : stdgo.GoInt32);
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
        _l._pos = (_l._pos + ((_w : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        if (_r == ((10 : stdgo.GoInt32))) {
            _l._line++;
        };
        return _r;
    }
}
