package stdgo.internal.buildcfg;
private function set_toolTags(v:Array<String>):Array<String> {
        stdgo._internal.internal.buildcfg.Buildcfg_toolTags.toolTags = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
