package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs_static_extension.T_minimizeArgs_static_extension) class T_minimizeArgs {
    public var timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var limit : stdgo.GoInt64 = 0;
    public var keepCoverage : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var index : stdgo.GoInt = 0;
    public function new(?timeout:stdgo._internal.time.Time_duration.Duration, ?limit:stdgo.GoInt64, ?keepCoverage:stdgo.Slice<stdgo.GoUInt8>, ?index:stdgo.GoInt) {
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
