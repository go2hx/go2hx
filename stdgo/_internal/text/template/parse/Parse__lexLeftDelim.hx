package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _lexLeftDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (((@:checkr _l ?? throw "null pointer dereference")._leftDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var _trimSpace = (stdgo._internal.text.template.parse.Parse__hasLeftTrimMarker._hasLeftTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__()) : Bool);
        var _afterMarker = ((0 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        if (_trimSpace) {
            _afterMarker = (2 : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(((@:checkr _l ?? throw "null pointer dereference")._pos + _afterMarker : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo.GoString)?.__copy__(), ("/*" : stdgo.GoString))) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (_afterMarker) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
            @:check2r _l._ignore();
            return stdgo._internal.text.template.parse.Parse__lexComment._lexComment;
        };
        var _i = (@:check2r _l._thisItem((11 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        (@:checkr _l ?? throw "null pointer dereference")._insideAction = true;
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (_afterMarker) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        @:check2r _l._ignore();
        (@:checkr _l ?? throw "null pointer dereference")._parenDepth = (0 : stdgo.GoInt);
        return @:check2r _l._emitItem(_i?.__copy__());
    }
