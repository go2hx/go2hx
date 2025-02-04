package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_metafileheader_static_extension.MetaFileHeader_static_extension) class MetaFileHeader {
    public var magic : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var version : stdgo.GoUInt32 = 0;
    public var totalLength : stdgo.GoUInt64 = 0;
    public var entries : stdgo.GoUInt64 = 0;
    public var metaFileHash : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var strTabOffset : stdgo.GoUInt32 = 0;
    public var strTabLength : stdgo.GoUInt32 = 0;
    public var cMode : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
    public var cGranularity : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity);
    @:optional
    public var __1 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(6, 6).__setNumber32__();
    public function new(?magic:stdgo.GoArray<stdgo.GoUInt8>, ?version:stdgo.GoUInt32, ?totalLength:stdgo.GoUInt64, ?entries:stdgo.GoUInt64, ?metaFileHash:stdgo.GoArray<stdgo.GoUInt8>, ?strTabOffset:stdgo.GoUInt32, ?strTabLength:stdgo.GoUInt32, ?cMode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode, ?cGranularity:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity, ?__1:stdgo.GoArray<stdgo.GoUInt8>) {
        if (magic != null) this.magic = magic;
        if (version != null) this.version = version;
        if (totalLength != null) this.totalLength = totalLength;
        if (entries != null) this.entries = entries;
        if (metaFileHash != null) this.metaFileHash = metaFileHash;
        if (strTabOffset != null) this.strTabOffset = strTabOffset;
        if (strTabLength != null) this.strTabLength = strTabLength;
        if (cMode != null) this.cMode = cMode;
        if (cGranularity != null) this.cGranularity = cGranularity;
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MetaFileHeader(magic, version, totalLength, entries, metaFileHash, strTabOffset, strTabLength, cMode, cGranularity, __1);
    }
}
