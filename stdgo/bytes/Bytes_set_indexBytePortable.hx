package stdgo.bytes;
private function set_indexBytePortable(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt {
        stdgo._internal.bytes.Bytes_indexBytePortable.indexBytePortable = v;
        return v;
    }
