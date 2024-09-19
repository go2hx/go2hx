package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.Error_asInterface) class Error_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.html.template.Template_Error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_Error.Error> = _e;
        if (_e.node != null) {
            var __tmp__ = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>).errorContext(_e.node), _loc:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1;
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface(_e.description))?.__copy__();
        } else if (_e.line != ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s:%d: %s" : stdgo.GoString), stdgo.Go.toInterface(_e.name), stdgo.Go.toInterface(_e.line), stdgo.Go.toInterface(_e.description))?.__copy__();
        } else if (_e.name != (stdgo.Go.str())) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("html/template:%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_e.name), stdgo.Go.toInterface(_e.description))?.__copy__();
        };
        return (("html/template: " : stdgo.GoString) + _e.description?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
