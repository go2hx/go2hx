package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_element_asInterface) class T_element_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.html.template.Template_t_element.T_element):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_t_element.T_element = _i;
        if ((_i >= ((5 : stdgo.GoInt) : stdgo._internal.html.template.Template_t_element.T_element) : Bool)) {
            return ((("element(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("elementNoneelementScriptelementStyleelementTextareaelementTitle" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___element_index.__element_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___element_index.__element_index[((_i + (1 : stdgo._internal.html.template.Template_t_element.T_element) : stdgo._internal.html.template.Template_t_element.T_element) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
