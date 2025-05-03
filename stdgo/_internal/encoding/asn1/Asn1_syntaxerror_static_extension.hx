package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError = _e?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L48"
        return (("asn1: syntax error: " : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
