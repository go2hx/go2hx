package stdgo.internal.platform;
private function set_list(v:Array<OSArch>):Array<OSArch> {
        stdgo._internal.internal.platform.Platform_list.list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.platform.Platform_OSArch.OSArch>);
        return v;
    }
