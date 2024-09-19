package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_stringEncoder_asInterface) class T_stringEncoder_static_extension {
    @:keep
    static public function encode( _s:stdgo._internal.encoding.asn1.Asn1_T_stringEncoder.T_stringEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_T_stringEncoder.T_stringEncoder = _s;
        if (stdgo.Go.copySlice(_dst, _s) != ((_s.length))) {
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
    }
    @:keep
    static public function len( _s:stdgo._internal.encoding.asn1.Asn1_T_stringEncoder.T_stringEncoder):stdgo.GoInt {
        @:recv var _s:stdgo._internal.encoding.asn1.Asn1_T_stringEncoder.T_stringEncoder = _s;
        return (_s.length);
    }
}