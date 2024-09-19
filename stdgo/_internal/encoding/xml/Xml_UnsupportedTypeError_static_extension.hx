package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.UnsupportedTypeError_asInterface) class UnsupportedTypeError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError> = _e;
        return (("xml: unsupported type: " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
