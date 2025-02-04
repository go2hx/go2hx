package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.UnmarshalError_asInterface) class UnmarshalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
