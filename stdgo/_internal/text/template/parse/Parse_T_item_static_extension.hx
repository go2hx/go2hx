package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_item_asInterface) class T_item_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.text.template.parse.Parse_T_item.T_item):stdgo.GoString {
        @:recv var _i:stdgo._internal.text.template.parse.Parse_T_item.T_item = _i?.__copy__();
        if (_i._typ == ((8 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            return ("EOF" : stdgo.GoString);
        } else if (_i._typ == ((0 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType))) {
            return _i._val?.__copy__();
        } else if ((_i._typ > (22 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType) : Bool)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<%s>" : stdgo.GoString), stdgo.Go.toInterface(_i._val))?.__copy__();
        } else if (((_i._val.length) > (10 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%.10q..." : stdgo.GoString), stdgo.Go.toInterface(_i._val))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_i._val))?.__copy__();
    }
}
