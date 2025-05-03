package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_delim_asInterface) class T_delim_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.html.template.Template_t_delim.T_delim):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_t_delim.T_delim = _i;
        //"file:///home/runner/.go/go1.21.3/src/html/template/delim_string.go#L22"
        if ((_i >= ((4 : stdgo.GoInt) : stdgo._internal.html.template.Template_t_delim.T_delim) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/delim_string.go#L23"
            return ((("delim(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/delim_string.go#L25"
        return (("delimNonedelimDoubleQuotedelimSingleQuotedelimSpaceOrTagEnd" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___delim_index.__delim_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___delim_index.__delim_index[((_i + (1 : stdgo._internal.html.template.Template_t_delim.T_delim) : stdgo._internal.html.template.Template_t_delim.T_delim) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
