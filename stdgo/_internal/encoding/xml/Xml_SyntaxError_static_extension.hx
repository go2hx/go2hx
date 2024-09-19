package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError> = _e;
        return (((("XML syntax error on line " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_e.line)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
