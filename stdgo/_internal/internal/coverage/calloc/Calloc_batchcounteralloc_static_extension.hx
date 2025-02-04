package stdgo._internal.internal.coverage.calloc;
@:keep @:allow(stdgo._internal.internal.coverage.calloc.Calloc.BatchCounterAlloc_asInterface) class BatchCounterAlloc_static_extension {
    @:keep
    @:tdfield
    static public function allocateCounters( _ca:stdgo.Ref<stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt32> {
        @:recv var _ca:stdgo.Ref<stdgo._internal.internal.coverage.calloc.Calloc_batchcounteralloc.BatchCounterAlloc> = _ca;
        {};
        if ((_n > (@:checkr _ca ?? throw "null pointer dereference")._pool.capacity : Bool)) {
            var _siz = (8192 : stdgo.GoInt);
            if ((_n > (8192 : stdgo.GoInt) : Bool)) {
                _siz = _n;
            };
            (@:checkr _ca ?? throw "null pointer dereference")._pool = (new stdgo.Slice<stdgo.GoUInt32>((_siz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        };
        var _rv = ((@:checkr _ca ?? throw "null pointer dereference")._pool.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt32>);
        (@:checkr _ca ?? throw "null pointer dereference")._pool = ((@:checkr _ca ?? throw "null pointer dereference")._pool.__slice__(_n) : stdgo.Slice<stdgo.GoUInt32>);
        return _rv;
    }
}
