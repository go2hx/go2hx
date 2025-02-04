package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_counterfilefooter_static_extension.CounterFileFooter_static_extension) class CounterFileFooter {
    public var magic : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    @:optional
    public var __10 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var numSegments : stdgo.GoUInt32 = 0;
    @:optional
    public var __11 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public function new(?magic:stdgo.GoArray<stdgo.GoUInt8>, ?__10:stdgo.GoArray<stdgo.GoUInt8>, ?numSegments:stdgo.GoUInt32, ?__11:stdgo.GoArray<stdgo.GoUInt8>) {
        if (magic != null) this.magic = magic;
        if (__10 != null) this.__10 = __10;
        if (numSegments != null) this.numSegments = numSegments;
        if (__11 != null) this.__11 = __11;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CounterFileFooter(magic, __10, numSegments, __11);
    }
}
