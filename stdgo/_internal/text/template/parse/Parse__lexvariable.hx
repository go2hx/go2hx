package stdgo._internal.text.template.parse;
function _lexVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L517"
        if (_l._atTerminator()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L518"
            return _l._emit((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L520"
        return stdgo._internal.text.template.parse.Parse__lexfieldorvariable._lexFieldOrVariable(_l, (21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
    }
