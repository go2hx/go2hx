package stdgo.log.internal;
private function set_defaultOutput(v:(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error):(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error {
        stdgo._internal.log.internal.Internal_defaultOutput.defaultOutput = v;
        return v;
    }
