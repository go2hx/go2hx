package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.html.template.Template_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_error.Error> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/error.go#L228"
        if ((@:checkr _e ?? throw "null pointer dereference").node != null) {
            var __tmp__ = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>).errorContext((@:checkr _e ?? throw "null pointer dereference").node), _loc:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/html/template/error.go#L231"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        } else if ((@:checkr _e ?? throw "null pointer dereference").line != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/error.go#L233"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s:%d: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        } else if ((@:checkr _e ?? throw "null pointer dereference").name != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/error.go#L235"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").description))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/error.go#L237"
        return (("html/template: " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
