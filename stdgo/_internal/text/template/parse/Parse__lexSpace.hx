package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _lexSpace(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _numSpaces:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            _r = @:check2r _l._peek();
            if (!stdgo._internal.text.template.parse.Parse__isSpace._isSpace(_r)) {
                break;
            };
            @:check2r _l._next();
            _numSpaces++;
        };
        if ((stdgo._internal.text.template.parse.Parse__hasRightTrimMarker._hasRightTrimMarker(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__(((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo.GoString)?.__copy__()) && stdgo._internal.strings.Strings_hasPrefix.hasPrefix(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos) + (2 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos)) : stdgo.GoString)?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._rightDelim?.__copy__()) : Bool)) {
            @:check2r _l._backup();
            if (_numSpaces == ((1 : stdgo.GoInt))) {
                return stdgo._internal.text.template.parse.Parse__lexRightDelim._lexRightDelim;
            };
        };
        return @:check2r _l._emit((18 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
    }
