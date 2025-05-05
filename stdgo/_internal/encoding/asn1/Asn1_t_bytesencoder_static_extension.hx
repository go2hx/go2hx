package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_bytesEncoder_asInterface) class T_bytesEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _b:stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder = _b;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L48"
        if (_dst.__copyTo__(_b) != ((_b.length))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L49"
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder):stdgo.GoInt {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder = _b;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L44"
        return (_b.length);
    }
}
