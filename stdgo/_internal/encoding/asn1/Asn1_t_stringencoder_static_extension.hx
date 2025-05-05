package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_stringEncoder_asInterface) class T_stringEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder = _s;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L60"
        if (_dst.__copyTo__(_s) != ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L61"
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder):stdgo.GoInt {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder = _s;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L56"
        return (_s.length);
    }
}
