package stdgo._internal.text.template.parse;
function _lexSpace(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _numSpaces:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            _r = _l._peek();
            if (!stdgo._internal.text.template.parse.Parse__isSpace._isSpace(_r)) {
                break;
            };
            _l._next();
            _numSpaces++;
        };
        if ((stdgo._internal.text.template.parse.Parse__hasRightTrimMarker._hasRightTrimMarker((_l._input.__slice__((_l._pos - (1 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo.GoString)?.__copy__()) && stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_l._input.__slice__(((_l._pos - (1 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos) + (2 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo.GoString)?.__copy__(), _l._rightDelim?.__copy__()) : Bool)) {
            _l._backup();
            if (_numSpaces == ((1 : stdgo.GoInt))) {
                return stdgo._internal.text.template.parse.Parse__lexRightDelim._lexRightDelim;
            };
        };
        return _l._emit((18 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
    }
