package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_attr_asInterface) class T_attr_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.html.template.Template_t_attr.T_attr):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_t_attr.T_attr = _i;
        //"file:///home/runner/.go/go1.21.3/src/html/template/attr_string.go#L24"
        if ((_i >= ((6 : stdgo.GoInt) : stdgo._internal.html.template.Template_t_attr.T_attr) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/attr_string.go#L25"
            return ((("attr(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/attr_string.go#L27"
        return (("attrNoneattrScriptattrScriptTypeattrStyleattrURLattrSrcset" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___attr_index.__attr_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___attr_index.__attr_index[((_i + (1 : stdgo._internal.html.template.Template_t_attr.T_attr) : stdgo._internal.html.template.Template_t_attr.T_attr) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
