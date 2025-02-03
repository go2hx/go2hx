package stdgo.runtime;
private function set_f64to32(v:stdgo.GoUInt64 -> stdgo.GoUInt32):stdgo.GoUInt64 -> stdgo.GoUInt32 {
        stdgo._internal.runtime.Runtime_f64to32.f64to32 = v;
        return v;
    }
