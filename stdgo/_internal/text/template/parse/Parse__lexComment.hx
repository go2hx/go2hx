package stdgo._internal.text.template.parse;
function _lexComment(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((("/*" : stdgo.GoString).length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var _x = (stdgo._internal.strings.Strings_index.index(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), ("*/" : stdgo.GoString)) : stdgo.GoInt);
        if ((_x < (0 : stdgo.GoInt) : Bool)) {
            return @:check2r _l._errorf(("unclosed comment" : stdgo.GoString));
        };
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (((_x + (("*/" : stdgo.GoString).length) : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var __tmp__ = @:check2r _l._atRightDelim(), _delim:Bool = __tmp__._0, _trimSpace:Bool = __tmp__._1;
        if (!_delim) {
            return @:check2r _l._errorf(("comment ends before closing delimiter" : stdgo.GoString));
        };
        var _i = (@:check2r _l._thisItem((4 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        if (_trimSpace) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((2 : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        };
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (((@:checkr _l ?? throw "null pointer dereference")._rightDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        if (_trimSpace) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (stdgo._internal.text.template.parse.Parse__leftTrimLength._leftTrimLength(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__())) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        };
        @:check2r _l._ignore();
        if ((@:checkr _l ?? throw "null pointer dereference")._options._emitComment) {
            return @:check2r _l._emitItem(_i?.__copy__());
        };
        return stdgo._internal.text.template.parse.Parse__lexText._lexText;
    }
