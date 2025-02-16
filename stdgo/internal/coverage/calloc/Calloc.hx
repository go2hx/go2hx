package stdgo.internal.coverage.calloc;
@:structInit @:using(stdgo.internal.coverage.calloc.Calloc.BatchCounterAlloc_static_extension) abstract BatchCounterAlloc(stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc) from stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc to stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc {
    public var _pool(get, set) : Array<std.UInt>;
    function get__pool():Array<std.UInt> return [for (i in this._pool) i];
    function set__pool(v:Array<std.UInt>):Array<std.UInt> {
        this._pool = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_pool:Array<std.UInt>) this = new stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc(([for (i in _pool) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef BatchCounterAllocPointer = stdgo._internal.internal.coverage.calloc.Calloc_batchcounterallocpointer.BatchCounterAllocPointer;
class BatchCounterAlloc_static_extension {
    static public function allocateCounters(_ca:BatchCounterAlloc, _n:StdTypes.Int):Array<std.UInt> {
        final _ca = (_ca : stdgo.Ref<stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc_static_extension.BatchCounterAlloc_static_extension.allocateCounters(_ca, _n)) i];
    }
}
class Calloc {

}
