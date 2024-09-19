package stdgo._internal.text.template.parse;
function _lexRightDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var __tmp__ = _l._atRightDelim(), __0:Bool = __tmp__._0, _trimSpace:Bool = __tmp__._1;
        if (_trimSpace) {
            _l._pos = (_l._pos + ((2 : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
            _l._ignore();
        };
        _l._pos = (_l._pos + ((_l._rightDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var _i = (_l._thisItem((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        if (_trimSpace) {
            _l._pos = (_l._pos + (stdgo._internal.text.template.parse.Parse__leftTrimLength._leftTrimLength((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__())) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
            _l._ignore();
        };
        _l._insideAction = false;
        return _l._emitItem(_i?.__copy__());
    }
