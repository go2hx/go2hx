package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError = _e?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L41"
        return (("asn1: structure error: " : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
