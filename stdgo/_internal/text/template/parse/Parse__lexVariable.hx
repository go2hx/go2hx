package stdgo._internal.text.template.parse;
function _lexVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        if (_l._atTerminator()) {
            return _l._emit((21 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
        };
        return stdgo._internal.text.template.parse.Parse__lexFieldOrVariable._lexFieldOrVariable(_l, (21 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
    }
