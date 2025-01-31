package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _lexRightDelim(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var __tmp__ = @:check2r _l._atRightDelim(), __0:Bool = __tmp__._0, _trimSpace:Bool = __tmp__._1;
        if (_trimSpace) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + ((2 : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
            @:check2r _l._ignore();
        };
        (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (((@:checkr _l ?? throw "null pointer dereference")._rightDelim.length : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
        var _i = (@:check2r _l._thisItem((16 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))?.__copy__() : stdgo._internal.text.template.parse.Parse_T_item.T_item);
        if (_trimSpace) {
            (@:checkr _l ?? throw "null pointer dereference")._pos = ((@:checkr _l ?? throw "null pointer dereference")._pos + (stdgo._internal.text.template.parse.Parse__leftTrimLength._leftTrimLength(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__())) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
            @:check2r _l._ignore();
        };
        (@:checkr _l ?? throw "null pointer dereference")._insideAction = false;
        return @:check2r _l._emitItem(_i?.__copy__());
    }
