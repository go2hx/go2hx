package stdgo._internal.text.template.parse;
function _lexLeftDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        _l._pos = (_l._pos + ((_l._leftDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var _trimSpace = (stdgo._internal.text.template.parse.Parse__hasLeftTrimMarker._hasLeftTrimMarker((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__()) : Bool);
        var _afterMarker = ((0 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        if (_trimSpace) {
            _afterMarker = (2 : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_l._input.__slice__((_l._pos + _afterMarker : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo.GoString)?.__copy__(), ("/*" : stdgo.GoString))) {
            _l._pos = (_l._pos + (_afterMarker) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
            _l._ignore();
            return stdgo._internal.text.template.parse.Parse__lexComment._lexComment;
        };
        var _i = (_l._thisItem((11 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        _l._insideAction = true;
        _l._pos = (_l._pos + (_afterMarker) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        _l._ignore();
        _l._parenDepth = (0 : stdgo.GoInt);
        return _l._emitItem(_i?.__copy__());
    }
