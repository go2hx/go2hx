package stdgo._internal.text.template.parse;
function _lexComment(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        _l._pos = (_l._pos + ((("/*" : stdgo.GoString).length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var _x = (stdgo._internal.strings.Strings_index.index((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__(), ("*/" : stdgo.GoString)) : stdgo.GoInt);
        if ((_x < (0 : stdgo.GoInt) : Bool)) {
            return _l._errorf(("unclosed comment" : stdgo.GoString));
        };
        _l._pos = (_l._pos + (((_x + (("*/" : stdgo.GoString).length) : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var __tmp__ = _l._atRightDelim(), _delim:Bool = __tmp__._0, _trimSpace:Bool = __tmp__._1;
        if (!_delim) {
            return _l._errorf(("comment ends before closing delimiter" : stdgo.GoString));
        };
        var _i = (_l._thisItem((4 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        if (_trimSpace) {
            _l._pos = (_l._pos + ((2 : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        };
        _l._pos = (_l._pos + ((_l._rightDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        if (_trimSpace) {
            _l._pos = (_l._pos + (stdgo._internal.text.template.parse.Parse__leftTrimLength._leftTrimLength((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__())) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        };
        _l._ignore();
        if (_l._options._emitComment) {
            return _l._emitItem(_i?.__copy__());
        };
        return stdgo._internal.text.template.parse.Parse__lexText._lexText;
    }
