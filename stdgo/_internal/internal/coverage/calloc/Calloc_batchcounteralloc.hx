package stdgo._internal.internal.coverage.calloc;
@:structInit @:using(stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc_static_extension.BatchCounterAlloc_static_extension) class BatchCounterAlloc {
    public var _pool : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?_pool:stdgo.Slice<stdgo.GoUInt32>) {
        if (_pool != null) this._pool = _pool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BatchCounterAlloc(_pool);
    }
}
