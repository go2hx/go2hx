package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.html.template.Template_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_error.Error> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference").node != null) {
            var __tmp__ = @:check2r (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>).errorContext((@:checkr _e ?? throw "null pointer dereference").node), _loc:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1;
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        } else if ((@:checkr _e ?? throw "null pointer dereference").line != ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s:%d: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        } else if ((@:checkr _e ?? throw "null pointer dereference").name != ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        };
        return (("html/template: " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
