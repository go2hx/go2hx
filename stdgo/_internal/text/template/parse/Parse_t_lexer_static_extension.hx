package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_lexer_asInterface) class T_lexer_static_extension {
    @:keep
    @:tdfield
    static public function _scanNumber( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        @:check2r _l._accept(("+-" : stdgo.GoString));
        var _digits = (("0123456789_" : stdgo.GoString) : stdgo.GoString);
        if (@:check2r _l._accept(("0" : stdgo.GoString))) {
            if (@:check2r _l._accept(("xX" : stdgo.GoString))) {
                _digits = ("0123456789abcdefABCDEF_" : stdgo.GoString);
            } else if (@:check2r _l._accept(("oO" : stdgo.GoString))) {
                _digits = ("01234567_" : stdgo.GoString);
            } else if (@:check2r _l._accept(("bB" : stdgo.GoString))) {
                _digits = ("01_" : stdgo.GoString);
            };
        };
        @:check2r _l._acceptRun(_digits?.__copy__());
        if (@:check2r _l._accept(("." : stdgo.GoString))) {
            @:check2r _l._acceptRun(_digits?.__copy__());
        };
        if (((_digits.length == (11 : stdgo.GoInt)) && @:check2r _l._accept(("eE" : stdgo.GoString)) : Bool)) {
            @:check2r _l._accept(("+-" : stdgo.GoString));
            @:check2r _l._acceptRun(("0123456789_" : stdgo.GoString));
        };
        if (((_digits.length == (23 : stdgo.GoInt)) && @:check2r _l._accept(("pP" : stdgo.GoString)) : Bool)) {
            @:check2r _l._accept(("+-" : stdgo.GoString));
            @:check2r _l._acceptRun(("0123456789_" : stdgo.GoString));
        };
        @:check2r _l._accept(("i" : stdgo.GoString));
        if (stdgo._internal.text.template.parse.Parse__isalphanumeric._isAlphaNumeric(@:check2r _l._peek())) {
            @:check2r _l._next();
            return false;
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _atTerminator( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _r = (@:check2r _l._peek() : stdgo.GoInt32);
        if (stdgo._internal.text.template.parse.Parse__isspace._isSpace(_r)) {
            return true;
        };
        {
            final __value__ = _r;
            if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((46 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((124 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((40 : stdgo.GoInt32))) {
                return true;
            };
        };
        return stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _atRightDelim( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _delim = false, _trimSpaces = false;
        if ((stdgo._internal.text.template.parse.Parse__hasrighttrimmarker._hasRightTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(((@:checkr _l ?? throw "null pointer dereference")._pos + (2 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__()) : Bool)) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : true };
                _delim = __tmp__._0;
                _trimSpaces = __tmp__._1;
                __tmp__;
            };
        };
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__())) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : false };
                _delim = __tmp__._0;
                _trimSpaces = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : false };
            _delim = __tmp__._0;
            _trimSpaces = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _nextItem( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        (@:checkr _l ?? throw "null pointer dereference")._item = (new stdgo._internal.text.template.parse.Parse_t_item.T_item((8 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType), (@:checkr _l ?? throw "null pointer dereference")._pos, ("EOF" : stdgo.GoString), (@:checkr _l ?? throw "null pointer dereference")._startLine) : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        var _state = stdgo._internal.text.template.parse.Parse__lextext._lexText;
        if ((@:checkr _l ?? throw "null pointer dereference")._insideAction) {
            _state = stdgo._internal.text.template.parse.Parse__lexinsideaction._lexInsideAction;
        };
        while (true) {
            _state = _state(_l);
            if (_state == null) {
                return (@:checkr _l ?? throw "null pointer dereference")._item?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _errorf( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        (@:checkr _l ?? throw "null pointer dereference")._item = (new stdgo._internal.text.template.parse.Parse_t_item.T_item((0 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType), (@:checkr _l ?? throw "null pointer dereference")._start, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._startLine) : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        (@:checkr _l ?? throw "null pointer dereference")._start = (0 : stdgo._internal.text.template.parse.Parse_pos.Pos);
        (@:checkr _l ?? throw "null pointer dereference")._pos = (0 : stdgo._internal.text.template.parse.Parse_pos.Pos);
        (@:checkr _l ?? throw "null pointer dereference")._input = ((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(0, (0 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        return null;
    }
    @:keep
    @:tdfield
    static public function _acceptRun( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _valid:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        while (stdgo._internal.strings.Strings_containsrune.containsRune(_valid?.__copy__(), @:check2r _l._next())) {};
        @:check2r _l._backup();
    }
    @:keep
    @:tdfield
    static public function _accept( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _valid:stdgo.GoString):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        if (stdgo._internal.strings.Strings_containsrune.containsRune(_valid?.__copy__(), @:check2r _l._next())) {
            return true;
        };
        @:check2r _l._backup();
        return false;
    }
    @:keep
    @:tdfield
    static public function _ignore( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        (@:checkr _l ?? throw "null pointer dereference")._line = ((@:checkr _l ?? throw "null pointer dereference")._line + (stdgo._internal.strings.Strings_count.count(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (("\n" : stdgo.GoString) : stdgo.GoString))) : stdgo.GoInt);
        (@:checkr _l ?? throw "null pointer dereference")._start = (@:checkr _l ?? throw "null pointer dereference")._pos;
        (@:checkr _l ?? throw "null pointer dereference")._startLine = (@:checkr _l ?? throw "null pointer dereference")._line;
    }
    @:keep
    @:tdfield
    static public function _emitItem( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _i:stdgo._internal.text.template.parse.Parse_t_item.T_item):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        (@:checkr _l ?? throw "null pointer dereference")._item = _i?.__copy__();
        return null;
    }
    @:keep
    @:tdfield
    static public function _emit( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _t:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        return @:check2r _l._emitItem(@:check2r _l._thisItem(_t)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _thisItem( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _t:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _i = (new stdgo._internal.text.template.parse.Parse_t_item.T_item(_t, (@:checkr _l ?? throw "null pointer dereference")._start, ((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._startLine) : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        (@:checkr _l ?? throw "null pointer dereference")._start = (@:checkr _l ?? throw "null pointer dereference")._pos;
        (@:checkr _l ?? throw "null pointer dereference")._startLine = (@:checkr _l ?? throw "null pointer dereference")._line;
        return _i?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _backup( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        if ((!(@:checkr _l ?? throw "null pointer dereference")._atEOF && ((@:checkr _l ?? throw "null pointer dereference")._pos > (0 : stdgo._internal.text.template.parse.Parse_pos.Pos) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(0, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos - ((_w : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
            if (_r == ((10 : stdgo.GoInt32))) {
                (@:checkr _l ?? throw "null pointer dereference")._line--;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo.GoInt32 {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _r = (@:check2r _l._next() : stdgo.GoInt32);
        @:check2r _l._backup();
        return _r;
    }
    @:keep
    @:tdfield
    static public function _next( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo.GoInt32 {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        if ((((@:checkr _l ?? throw "null pointer dereference")._pos : stdgo.GoInt) >= ((@:checkr _l ?? throw "null pointer dereference")._input.length) : Bool)) {
            (@:checkr _l ?? throw "null pointer dereference")._atEOF = true;
            return (-1 : stdgo.GoInt32);
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((_w : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
        if (_r == ((10 : stdgo.GoInt32))) {
            (@:checkr _l ?? throw "null pointer dereference")._line++;
        };
        return _r;
    }
}
