package stdgo._internal.internal.fuzz;
function _writeToMem(_vals:stdgo.Slice<stdgo.AnyInterface>, _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>):Void {
        var _b = stdgo._internal.internal.fuzz.Fuzz__marshalCorpusFile._marshalCorpusFile(...(_vals : Array<stdgo.AnyInterface>));
        _mem._setValue(_b);
    }
