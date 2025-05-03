package stdgo._internal.text.template.parse;
function _lexNumber(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L587"
        if (!_l._scanNumber()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L588"
            return _l._errorf(("bad number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L590"
        {
            var _sign = (_l._peek() : stdgo.GoInt32);
            if (((_sign == (43 : stdgo.GoInt32)) || (_sign == (45 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L592"
                if ((!_l._scanNumber() || ((@:checkr _l ?? throw "null pointer dereference")._input[(((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo.GoInt)] != (105 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L593"
                    return _l._errorf(("bad number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)));
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L595"
                return _l._emit((5 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L597"
        return _l._emit((13 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
    }
