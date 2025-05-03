package stdgo._internal.text.template.parse;
function _lexRightDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var __tmp__ = _l._atRightDelim(), __0:Bool = __tmp__._0, _trimSpace:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L373"
        if (_trimSpace) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((2 : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L375"
            _l._ignore();
        };
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (((@:checkr _l ?? throw "null pointer dereference")._rightDelim.length : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
        var _i = (_l._thisItem((16 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L379"
        if (_trimSpace) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (stdgo._internal.text.template.parse.Parse__lefttrimlength._leftTrimLength(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__())) : stdgo._internal.text.template.parse.Parse_pos.Pos);
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L381"
            _l._ignore();
        };
        (@:checkr _l ?? throw "null pointer dereference")._insideAction = false;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L384"
        return _l._emitItem(_i?.__copy__());
    }
