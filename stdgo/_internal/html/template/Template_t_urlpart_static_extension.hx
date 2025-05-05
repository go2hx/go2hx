package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_urlPart_asInterface) class T_urlPart_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.html.template.Template_t_urlpart.T_urlPart):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_t_urlpart.T_urlPart = _i;
        //"file:///home/runner/.go/go1.21.3/src/html/template/urlpart_string.go#L22"
        if ((_i >= ((4 : stdgo.GoInt) : stdgo._internal.html.template.Template_t_urlpart.T_urlPart) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/urlpart_string.go#L23"
            return ((("urlPart(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/urlpart_string.go#L25"
        return (("urlPartNoneurlPartPreQueryurlPartQueryOrFragurlPartUnknown" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___urlpart_index.__urlPart_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___urlpart_index.__urlPart_index[((_i + (1 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart) : stdgo._internal.html.template.Template_t_urlpart.T_urlPart) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
