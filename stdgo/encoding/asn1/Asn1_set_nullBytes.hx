package stdgo.encoding.asn1;
private function set_nullBytes(v:Array<std.UInt>):Array<std.UInt> {
        stdgo._internal.encoding.asn1.Asn1_nullBytes.nullBytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
