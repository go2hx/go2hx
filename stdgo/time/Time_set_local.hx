package stdgo.time;
private function set_local(v:Location):Location {
        stdgo._internal.time.Time_local.local = (v : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return v;
    }
