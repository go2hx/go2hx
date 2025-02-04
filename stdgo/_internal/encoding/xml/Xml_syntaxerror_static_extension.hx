package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_syntaxerror.SyntaxError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_syntaxerror.SyntaxError> = _e;
        return (((("XML syntax error on line " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _e ?? throw "null pointer dereference").line)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
