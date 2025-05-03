package stdgo._internal.internal.fuzz;
function _writeToMem(_vals:stdgo.Slice<stdgo.AnyInterface>, _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):Void {
        var _b = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_vals : Array<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L926"
        _mem._setValue(_b);
    }
