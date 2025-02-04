package stdgo._internal.text.template.parse;
function _lexFieldOrVariable(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _typ:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        if (@:check2r _l._atTerminator()) {
            if (_typ == ((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
                return @:check2r _l._emit((21 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
            };
            return @:check2r _l._emit((26 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
        };
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        while (true) {
            _r = @:check2r _l._next();
            if (!stdgo._internal.text.template.parse.Parse__isalphanumeric._isAlphaNumeric(_r)) {
                @:check2r _l._backup();
                break;
            };
        };
        if (!@:check2r _l._atTerminator()) {
            return @:check2r _l._errorf(("bad character %#U" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
        return @:check2r _l._emit(_typ);
    }
