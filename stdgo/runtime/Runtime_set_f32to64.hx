package stdgo.runtime;
private function set_f32to64(v:stdgo.GoUInt32 -> stdgo.GoUInt64):stdgo.GoUInt32 -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_f32to64.f32to64 = v;
        return v;
    }
