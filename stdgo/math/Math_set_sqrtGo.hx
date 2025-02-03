package stdgo.math;
private function set_sqrtGo(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
        stdgo._internal.math.Math_sqrtGo.sqrtGo = v;
        return v;
    }
