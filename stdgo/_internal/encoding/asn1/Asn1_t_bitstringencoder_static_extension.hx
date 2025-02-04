package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_bitStringEncoder_asInterface) class T_bitStringEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _b:stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder.T_bitStringEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder.T_bitStringEncoder = _b?.__copy__();
        _dst[(0 : stdgo.GoInt)] = (((((8 : stdgo.GoInt) - (_b.bitLength % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        if ((_dst.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b.bytes) != ((_b.bytes.length))) {
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder.T_bitStringEncoder):stdgo.GoInt {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder.T_bitStringEncoder = _b?.__copy__();
        return ((_b.bytes.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
}
