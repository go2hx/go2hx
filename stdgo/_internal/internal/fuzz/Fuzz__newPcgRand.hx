package stdgo._internal.internal.fuzz;
function _newPcgRand():stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        var _now = (stdgo._internal.time.Time_now.now().unixNano() : stdgo.GoUInt64);
        {
            var _seed = stdgo._internal.internal.fuzz.Fuzz__godebugSeed._godebugSeed();
            if (_seed != null) {
                _now = (_seed.value : stdgo.GoUInt64);
            };
        };
        var _inc = (stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(stdgo.Go.pointer(stdgo._internal.internal.fuzz.Fuzz__globalInc._globalInc), (1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _r ?? throw "null pointer dereference")._state = _now;
        (@:checkr _r ?? throw "null pointer dereference")._inc = (((_inc << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        @:check2r _r._step();
        (@:checkr _r ?? throw "null pointer dereference")._state = ((@:checkr _r ?? throw "null pointer dereference")._state + (_now) : stdgo.GoUInt64);
        @:check2r _r._step();
        return _r;
    }
