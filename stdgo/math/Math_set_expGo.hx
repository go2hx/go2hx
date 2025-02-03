package stdgo.math;
private function set_expGo(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
        stdgo._internal.math.Math_expGo.expGo = v;
        return v;
    }
