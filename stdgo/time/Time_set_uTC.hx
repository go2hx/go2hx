package stdgo.time;
private function set_uTC(v:Location):Location {
        stdgo._internal.time.Time_uTC.uTC = (v : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return v;
    }
