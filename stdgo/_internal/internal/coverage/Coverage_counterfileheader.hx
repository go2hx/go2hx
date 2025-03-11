package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_counterfileheader_static_extension.CounterFileHeader_static_extension) class CounterFileHeader {
    public var magic : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var version : stdgo.GoUInt32 = 0;
    public var metaHash : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var cFlavor : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor);
    public var bigEndian : Bool = false;
    @:optional
    public var __7 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(6, 6).__setNumber32__();
    public function new(?magic:stdgo.GoArray<stdgo.GoUInt8>, ?version:stdgo.GoUInt32, ?metaHash:stdgo.GoArray<stdgo.GoUInt8>, ?cFlavor:stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor, ?bigEndian:Bool, ?__7:stdgo.GoArray<stdgo.GoUInt8>) {
        if (magic != null) this.magic = magic;
        if (version != null) this.version = version;
        if (metaHash != null) this.metaHash = metaHash;
        if (cFlavor != null) this.cFlavor = cFlavor;
        if (bigEndian != null) this.bigEndian = bigEndian;
        if (__7 != null) this.__7 = __7;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CounterFileHeader(magic, version, metaHash, cFlavor, bigEndian, __7);
    }
}
