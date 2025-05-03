package stdgo._internal.text.template.parse;
function _lexFieldOrVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _typ:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L526"
        if (_l._atTerminator()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L527"
            if (_typ == ((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L528"
                return _l._emit((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L530"
            return _l._emit((26 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
        };
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L533"
        while (true) {
            _r = _l._next();
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L535"
            if (!stdgo._internal.text.template.parse.Parse__isalphanumeric._isAlphaNumeric(_r)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L536"
                _l._backup();
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L537"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L540"
        if (!_l._atTerminator()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L541"
            return _l._errorf(("bad character %#U" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L543"
        return _l._emit(_typ);
    }
