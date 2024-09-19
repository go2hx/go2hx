package stdgo._internal.testing;
@:structInit class Cover {
    public var mode : stdgo.GoString = "";
    public var counters : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>);
    public var blocks : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>>);
    public var coveredPackages : stdgo.GoString = "";
    public function new(?mode:stdgo.GoString, ?counters:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>, ?blocks:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>>, ?coveredPackages:stdgo.GoString) {
        if (mode != null) this.mode = mode;
        if (counters != null) this.counters = counters;
        if (blocks != null) this.blocks = blocks;
        if (coveredPackages != null) this.coveredPackages = coveredPackages;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cover(mode, counters, blocks, coveredPackages);
    }
}
