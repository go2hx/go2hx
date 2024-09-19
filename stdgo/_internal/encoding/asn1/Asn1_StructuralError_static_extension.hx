package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError = _e?.__copy__();
        return (("asn1: structure error: " : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
