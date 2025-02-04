package stdgo._internal.encoding.asn1;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_bitstring_static_extension.BitString_static_extension) class BitString {
    public var bytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var bitLength : stdgo.GoInt = 0;
    public function new(?bytes:stdgo.Slice<stdgo.GoUInt8>, ?bitLength:stdgo.GoInt) {
        if (bytes != null) this.bytes = bytes;
        if (bitLength != null) this.bitLength = bitLength;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BitString(bytes, bitLength);
    }
}
