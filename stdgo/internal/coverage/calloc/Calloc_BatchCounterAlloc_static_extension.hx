package stdgo.internal.coverage.calloc;
class BatchCounterAlloc_static_extension {
    static public function allocateCounters(_ca:BatchCounterAlloc, _n:StdTypes.Int):Array<std.UInt> {
        final _ca = (_ca : stdgo.Ref<stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc.BatchCounterAlloc>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.internal.coverage.calloc.Calloc_BatchCounterAlloc_static_extension.BatchCounterAlloc_static_extension.allocateCounters(_ca, _n)) i];
    }
}
