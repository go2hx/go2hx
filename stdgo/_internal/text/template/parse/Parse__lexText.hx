package stdgo._internal.text.template.parse;
function _lexText(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        {
            var _x = (stdgo._internal.strings.Strings_index.index(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._leftDelim?.__copy__()) : stdgo.GoInt);
            if ((_x >= (0 : stdgo.GoInt) : Bool)) {
                if ((_x > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((_x : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    var _trimLength = ((0 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    var _delimEnd = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((@:checkr _l ?? throw "null pointer dereference")._leftDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    if (stdgo._internal.text.template.parse.Parse__hasLeftTrimMarker._hasLeftTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(_delimEnd) : stdgo.GoString)?.__copy__())) {
                        _trimLength = stdgo._internal.text.template.parse.Parse__rightTrimLength._rightTrimLength(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__());
                    };
                    (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos - (_trimLength) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    (@:checkr _l ?? throw "null pointer dereference")._line = ((@:checkr _l ?? throw "null pointer dereference")._line + (stdgo._internal.strings.Strings_count.count(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) : stdgo.GoInt);
                    var _i = (@:check2r _l._thisItem((20 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
                    (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (_trimLength) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
                    @:check2r _l._ignore();
                    if (((_i._val.length) > (0 : stdgo.GoInt) : Bool)) {
                        return @:check2r _l._emitItem(_i?.__copy__());
                    };
                };
                return stdgo._internal.text.template.parse.Parse__lexLeftDelim._lexLeftDelim;
            };
        };
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._input.length : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        if (((@:checkr _l ?? throw "null pointer dereference")._pos > (@:checkr _l ?? throw "null pointer dereference")._start : Bool)) {
            (@:checkr _l ?? throw "null pointer dereference")._line = ((@:checkr _l ?? throw "null pointer dereference")._line + (stdgo._internal.strings.Strings_count.count(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) : stdgo.GoInt);
            return @:check2r _l._emit((20 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
        };
        return @:check2r _l._emit((8 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
    }
