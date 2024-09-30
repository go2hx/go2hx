package stdgo._internal.internal.fuzz;
@:structInit class T_minimizeArgs {
    public var timeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var limit : stdgo.GoInt64 = 0;
    public var keepCoverage : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var index : stdgo.GoInt = 0;
    public function new(?timeout:stdgo._internal.time.Time_Duration.Duration, ?limit:stdgo.GoInt64, ?keepCoverage:stdgo.Slice<stdgo.GoUInt8>, ?index:stdgo.GoInt) {
        if (timeout != null) this.timeout = timeout;
        if (limit != null) this.limit = limit;
        if (keepCoverage != null) this.keepCoverage = keepCoverage;
        if (index != null) this.index = index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_minimizeArgs(timeout, limit, keepCoverage, index);
    }
}
