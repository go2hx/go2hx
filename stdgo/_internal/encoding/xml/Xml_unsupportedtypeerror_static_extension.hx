package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.UnsupportedTypeError_asInterface) class UnsupportedTypeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1116"
        return (("xml: unsupported type: " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
