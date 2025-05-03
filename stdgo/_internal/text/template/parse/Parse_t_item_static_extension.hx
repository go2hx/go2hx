package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_item_asInterface) class T_item_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.text.template.parse.Parse_t_item.T_item):stdgo.GoString {
        @:recv var _i:stdgo._internal.text.template.parse.Parse_t_item.T_item = _i?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L23"
        if (_i._typ == ((8 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L25"
            return ("EOF" : stdgo.GoString);
        } else if (_i._typ == ((0 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L27"
            return _i._val?.__copy__();
        } else if ((_i._typ > (22 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L29"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<%s>" : stdgo.GoString), stdgo.Go.toInterface(_i._val))?.__copy__();
        } else if (((_i._val.length) > (10 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L31"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%.10q..." : stdgo.GoString), stdgo.Go.toInterface(_i._val))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L33"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_i._val))?.__copy__();
    }
}
