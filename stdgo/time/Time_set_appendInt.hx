package stdgo.time;
private function set_appendInt(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time_appendInt.appendInt = v;
        return v;
    }
