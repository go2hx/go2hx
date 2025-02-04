package stdgo._internal.text.template.parse;
function _lexVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        if (@:check2r _l._atTerminator()) {
            return @:check2r _l._emit((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
        };
        return stdgo._internal.text.template.parse.Parse__lexfieldorvariable._lexFieldOrVariable(_l, (21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
    }
