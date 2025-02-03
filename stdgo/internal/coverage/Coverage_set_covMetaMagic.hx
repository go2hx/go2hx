package stdgo.internal.coverage;
private function set_covMetaMagic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        stdgo._internal.internal.coverage.Coverage_covMetaMagic.covMetaMagic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
