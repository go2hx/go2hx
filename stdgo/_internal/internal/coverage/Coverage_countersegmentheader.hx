package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_countersegmentheader_static_extension.CounterSegmentHeader_static_extension) class CounterSegmentHeader {
    public var fcnEntries : stdgo.GoUInt64 = 0;
    public var strTabLen : stdgo.GoUInt32 = 0;
    public var argsLen : stdgo.GoUInt32 = 0;
    public function new(?fcnEntries:stdgo.GoUInt64, ?strTabLen:stdgo.GoUInt32, ?argsLen:stdgo.GoUInt32) {
        if (fcnEntries != null) this.fcnEntries = fcnEntries;
        if (strTabLen != null) this.strTabLen = strTabLen;
        if (argsLen != null) this.argsLen = argsLen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CounterSegmentHeader(fcnEntries, strTabLen, argsLen);
    }
}
