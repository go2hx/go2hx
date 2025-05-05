package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_lexer_asInterface) class T_lexer_static_extension {
    @:keep
    @:tdfield
    static public function _scanNumber( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L602"
        _l._accept(("+-" : stdgo.GoString));
        var _digits = (("0123456789_" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L605"
        if (_l._accept(("0" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L607"
            if (_l._accept(("xX" : stdgo.GoString))) {
                _digits = ("0123456789abcdefABCDEF_" : stdgo.GoString);
            } else if (_l._accept(("oO" : stdgo.GoString))) {
                _digits = ("01234567_" : stdgo.GoString);
            } else if (_l._accept(("bB" : stdgo.GoString))) {
                _digits = ("01_" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L615"
        _l._acceptRun(_digits?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L616"
        if (_l._accept(("." : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L617"
            _l._acceptRun(_digits?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L619"
        if (((_digits.length == (11 : stdgo.GoInt)) && _l._accept(("eE" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L620"
            _l._accept(("+-" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L621"
            _l._acceptRun(("0123456789_" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L623"
        if (((_digits.length == (23 : stdgo.GoInt)) && _l._accept(("pP" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L624"
            _l._accept(("+-" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L625"
            _l._acceptRun(("0123456789_" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L628"
        _l._accept(("i" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L630"
        if (stdgo._internal.text.template.parse.Parse__isalphanumeric._isAlphaNumeric(_l._peek())) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L631"
            _l._next();
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L632"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L634"
        return true;
    }
    @:keep
    @:tdfield
    static public function _atTerminator( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _r = (_l._peek() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L552"
        if (stdgo._internal.text.template.parse.Parse__isspace._isSpace(_r)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L553"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L555"
        {
            final __value__ = _r;
            if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((46 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((124 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((40 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L557"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L559"
        return stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _atRightDelim( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _delim = false, _trimSpaces = false;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L307"
        if ((stdgo._internal.text.template.parse.Parse__hasrighttrimmarker._hasRightTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(((@:checkr _l ?? throw "null pointer dereference")._pos + (2 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L308"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : true };
                _delim = __tmp__._0;
                _trimSpaces = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L310"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L311"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : false };
                _delim = __tmp__._0;
                _trimSpaces = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L313"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : false };
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
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L229"
        if ((@:checkr _l ?? throw "null pointer dereference")._insideAction) {
            _state = stdgo._internal.text.template.parse.Parse__lexinsideaction._lexInsideAction;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L232"
        while (true) {
            _state = _state(_l);
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L234"
            if (_state == null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L235"
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
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L221"
        return null;
    }
    @:keep
    @:tdfield
    static public function _acceptRun( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _valid:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L209"
        while (stdgo._internal.strings.Strings_containsrune.containsRune(_valid?.__copy__(), _l._next())) {};
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L211"
        _l._backup();
    }
    @:keep
    @:tdfield
    static public function _accept( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _valid:stdgo.GoString):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L200"
        if (stdgo._internal.strings.Strings_containsrune.containsRune(_valid?.__copy__(), _l._next())) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L201"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L203"
        _l._backup();
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L204"
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
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L186"
        return null;
    }
    @:keep
    @:tdfield
    static public function _emit( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _t:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L180"
        return _l._emitItem(_l._thisItem(_t)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _thisItem( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _t:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_item.T_item {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _i = (new stdgo._internal.text.template.parse.Parse_t_item.T_item(_t, (@:checkr _l ?? throw "null pointer dereference")._start, ((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._startLine) : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        (@:checkr _l ?? throw "null pointer dereference")._start = (@:checkr _l ?? throw "null pointer dereference")._pos;
        (@:checkr _l ?? throw "null pointer dereference")._startLine = (@:checkr _l ?? throw "null pointer dereference")._line;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L175"
        return _i?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _backup( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L159"
        if ((!(@:checkr _l ?? throw "null pointer dereference")._atEOF && ((@:checkr _l ?? throw "null pointer dereference")._pos > (0 : stdgo._internal.text.template.parse.Parse_pos.Pos) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(0, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos - ((_w : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L163"
            if (_r == ((10 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L164"
                (@:checkr _l ?? throw "null pointer dereference")._line--;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo.GoInt32 {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        var _r = (_l._next() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L153"
        _l._backup();
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L154"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _next( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo.GoInt32 {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L138"
        if ((((@:checkr _l ?? throw "null pointer dereference")._pos : stdgo.GoInt) >= ((@:checkr _l ?? throw "null pointer dereference")._input.length) : Bool)) {
            (@:checkr _l ?? throw "null pointer dereference")._atEOF = true;
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L140"
            return (-1 : stdgo.GoInt32);
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((_w : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L144"
        if (_r == ((10 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L145"
            (@:checkr _l ?? throw "null pointer dereference")._line++;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L147"
        return _r;
    }
}
