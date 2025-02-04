package stdgo._internal.text.template.parse;
function _lexLeftDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (((@:checkr _l ?? throw "null pointer dereference")._leftDelim.length : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
        var _trimSpace = (stdgo._internal.text.template.parse.Parse__haslefttrimmarker._hasLeftTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()) : Bool);
        var _afterMarker = ((0 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos);
        if (_trimSpace) {
            _afterMarker = (2 : stdgo._internal.text.template.parse.Parse_pos.Pos);
        };
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(((@:checkr _l ?? throw "null pointer dereference")._pos + _afterMarker : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo.GoString)?.__copy__(), ("/*" : stdgo.GoString))) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (_afterMarker) : stdgo._internal.text.template.parse.Parse_pos.Pos);
            @:check2r _l._ignore();
            return stdgo._internal.text.template.parse.Parse__lexcomment._lexComment;
        };
        var _i = (@:check2r _l._thisItem((11 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        (@:checkr _l ?? throw "null pointer dereference")._insideAction = true;
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (_afterMarker) : stdgo._internal.text.template.parse.Parse_pos.Pos);
        @:check2r _l._ignore();
        (@:checkr _l ?? throw "null pointer dereference")._parenDepth = (0 : stdgo.GoInt);
        return @:check2r _l._emitItem(_i?.__copy__());
    }
