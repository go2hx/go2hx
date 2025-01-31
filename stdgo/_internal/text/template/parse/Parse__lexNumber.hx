package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _lexNumber(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        if (!@:check2r _l._scanNumber()) {
            return @:check2r _l._errorf(("bad number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)));
        };
        {
            var _sign = (@:check2r _l._peek() : stdgo.GoInt32);
            if (((_sign == (43 : stdgo.GoInt32)) || (_sign == (45 : stdgo.GoInt32)) : Bool)) {
                if ((!@:check2r _l._scanNumber() || ((@:checkr _l ?? throw "null pointer dereference")._input[(((@:checkr _l ?? throw "null pointer dereference")._pos - (1 : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo._internal.text.template.parse.Parse_Pos.Pos) : stdgo.GoInt)] != (105 : stdgo.GoUInt8)) : Bool)) {
                    return @:check2r _l._errorf(("bad number syntax: %q" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)));
                };
                return @:check2r _l._emit((5 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
            };
        };
        return @:check2r _l._emit((13 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
    }
