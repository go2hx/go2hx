package stdgo.internal.coverage;
private function set_covCounterMagic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        stdgo._internal.internal.coverage.Coverage_covCounterMagic.covCounterMagic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
