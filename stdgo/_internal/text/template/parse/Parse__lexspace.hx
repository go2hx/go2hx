package stdgo._internal.text.template.parse;
function _lexSpace(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _numSpaces:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            _r = @:check2r _l._peek();
            if (!stdgo._internal.text.template.parse.Parse__isspace._isSpace(_r)) {
                break;
            };
            @:check2r _l._next();
            _numSpaces++;
        };
        if ((stdgo._internal.text.template.parse.Parse__hasrighttrimmarker._hasRightTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo.GoString)?.__copy__()) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos) + (2 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__()) : Bool)) {
            @:check2r _l._backup();
            if (_numSpaces == ((1 : stdgo.GoInt))) {
                return stdgo._internal.text.template.parse.Parse__lexrightdelim._lexRightDelim;
            };
        };
        return @:check2r _l._emit((18 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
    }
