package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_bytesEncoder_asInterface) class T_bytesEncoder_static_extension {
    @:keep
    static public function encode( _b:stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder = _b;
        if (stdgo.Go.copySlice(_dst, _b) != ((_b.length))) {
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
    }
    @:keep
    static public function len( _b:stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder):stdgo.GoInt {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder = _b;
        return (_b.length);
    }
}