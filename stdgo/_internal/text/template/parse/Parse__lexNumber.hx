package stdgo._internal.text.template.parse;
function _lexNumber(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        if (!_l._scanNumber()) {
            return _l._errorf(("bad number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface((_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)));
        };
        {
            var _sign = (_l._peek() : stdgo.GoInt32);
            if (((_sign == (43 : stdgo.GoInt32)) || (_sign == (45 : stdgo.GoInt32)) : Bool)) {
                if ((!_l._scanNumber() || (_l._input[((_l._pos - (1 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo.GoInt)] != (105 : stdgo.GoUInt8)) : Bool)) {
                    return _l._errorf(("bad number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface((_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)));
                };
                return _l._emit((5 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
            };
        };
        return _l._emit((13 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
    }
