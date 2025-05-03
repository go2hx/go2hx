package stdgo._internal.text.template.parse;
function _lexText(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L271"
        {
            var _x = (stdgo._internal.strings.Strings_index.index(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._leftDelim?.__copy__()) : stdgo.GoInt);
            if ((_x >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L272"
                if ((_x > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((_x : stdgo._internal.text.template.parse.Parse_pos.Pos)) : stdgo._internal.text.template.parse.Parse_pos.Pos);
                    var _trimLength = ((0 : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos);
                    var _delimEnd = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((@:checkr _l ?? throw "null pointer dereference")._leftDelim.length : stdgo._internal.text.template.parse.Parse_pos.Pos) : stdgo._internal.text.template.parse.Parse_pos.Pos);
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L277"
                    if (stdgo._internal.text.template.parse.Parse__haslefttrimmarker._hasLeftTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(_delimEnd) : stdgo.GoString)?.__copy__())) {
                        _trimLength = stdgo._internal.text.template.parse.Parse__righttrimlength._rightTrimLength(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__());
                    };
                    (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos - (_trimLength) : stdgo._internal.text.template.parse.Parse_pos.Pos);
                    (@:checkr _l ?? throw "null pointer dereference")._line = ((@:checkr _l ?? throw "null pointer dereference")._line + (stdgo._internal.strings.Strings_count.count(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (("\n" : stdgo.GoString) : stdgo.GoString))) : stdgo.GoInt);
                    var _i = (_l._thisItem((20 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_t_item.T_item);
                    (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (_trimLength) : stdgo._internal.text.template.parse.Parse_pos.Pos);
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L284"
                    _l._ignore();
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L285"
                    if (((_i._val.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L286"
                        return _l._emitItem(_i?.__copy__());
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L289"
                return stdgo._internal.text.template.parse.Parse__lexleftdelim._lexLeftDelim;
            };
        };
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._input.length : stdgo._internal.text.template.parse.Parse_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L293"
        if (((@:checkr _l ?? throw "null pointer dereference")._pos > (@:checkr _l ?? throw "null pointer dereference")._start : Bool)) {
            (@:checkr _l ?? throw "null pointer dereference")._line = ((@:checkr _l ?? throw "null pointer dereference")._line + (stdgo._internal.strings.Strings_count.count(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__(), (("\n" : stdgo.GoString) : stdgo.GoString))) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L295"
            return _l._emit((20 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L297"
        return _l._emit((8 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
    }
