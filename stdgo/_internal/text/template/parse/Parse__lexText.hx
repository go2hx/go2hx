package stdgo._internal.text.template.parse;
function _lexText(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        {
            var _x = (stdgo._internal.strings.Strings_index.index((_l._input.__slice__(_l._pos) : stdgo.GoString)?.__copy__(), _l._leftDelim?.__copy__()) : stdgo.GoInt);
            if ((_x >= (0 : stdgo.GoInt) : Bool)) {
                if ((_x > (0 : stdgo.GoInt) : Bool)) {
                    _l._pos = (_l._pos + ((_x : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    var _trimLength = ((0 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    var _delimEnd = (_l._pos + (_l._leftDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    if (stdgo._internal.text.template.parse.Parse__hasLeftTrimMarker._hasLeftTrimMarker((_l._input.__slice__(_delimEnd) : stdgo.GoString)?.__copy__())) {
                        _trimLength = stdgo._internal.text.template.parse.Parse__rightTrimLength._rightTrimLength((_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)?.__copy__());
                    };
                    _l._pos = (_l._pos - (_trimLength) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    _l._line = (_l._line + (stdgo._internal.strings.Strings_count.count((_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) : stdgo.GoInt);
                    var _i = (_l._thisItem((20 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                    _l._pos = (_l._pos + (_trimLength) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    _l._ignore();
                    if (((_i._val.length) > (0 : stdgo.GoInt) : Bool)) {
                        return _l._emitItem(_i?.__copy__());
                    };
                };
                return stdgo._internal.text.template.parse.Parse__lexLeftDelim._lexLeftDelim;
            };
        };
        _l._pos = (_l._input.length : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        if ((_l._pos > _l._start : Bool)) {
            _l._line = (_l._line + (stdgo._internal.strings.Strings_count.count((_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) : stdgo.GoInt);
            return _l._emit((20 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
        };
        return _l._emit((8 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
    }
