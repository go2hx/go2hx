package stdgo.time;
private function set_daysIn(v:(stdgo._internal.time.Time_Month.Month, stdgo.GoInt) -> stdgo.GoInt):(stdgo._internal.time.Time_Month.Month, stdgo.GoInt) -> stdgo.GoInt {
        stdgo._internal.time.Time_daysIn.daysIn = v;
        return v;
    }
