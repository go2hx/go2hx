package stdgo.internal.godebugs;
private function set_all(v:Array<Info>):Array<Info> {
        stdgo._internal.internal.godebugs.Godebugs_all.all = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs_Info.Info>);
        return v;
    }
