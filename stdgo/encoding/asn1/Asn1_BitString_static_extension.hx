package stdgo.encoding.asn1;
class BitString_static_extension {
    static public function rightAlign(_b:BitString):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.asn1.Asn1_BitString_static_extension.BitString_static_extension.rightAlign(_b)) i];
    }
    static public function at(_b:BitString, _i:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.encoding.asn1.Asn1_BitString_static_extension.BitString_static_extension.at(_b, _i);
    }
}
