package stdgo._internal.text.template.parse;
function _lexSpace(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _numSpaces:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L459"
        while (true) {
            _r = _l._peek();
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L461"
            if (!stdgo._internal.text.template.parse.Parse__isspace._isSpace(_r)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L462"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L464"
            _l._next();
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L465"
            _numSpaces++;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L469"
        if ((stdgo._internal.text.template.parse.Parse__hasrighttrimmarker._hasRightTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo.GoString)?.__copy__()) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos) + (2 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L470"
            _l._backup();
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L471"
            if (_numSpaces == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L472"
                return stdgo._internal.text.template.parse.Parse__lexrightdelim._lexRightDelim;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L475"
        return _l._emit((18 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
    }
