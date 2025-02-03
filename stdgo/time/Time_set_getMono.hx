package stdgo.time;
private function set_getMono(v:stdgo.Ref<stdgo._internal.time.Time_Time.Time> -> stdgo.GoInt64):stdgo.Ref<stdgo._internal.time.Time_Time.Time> -> stdgo.GoInt64 {
        stdgo._internal.time.Time_getMono.getMono = v;
        return v;
    }
