package stdgo._internal.internal.fuzz;
function _newWorker(_c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _dir:stdgo.GoString, _binPath:stdgo.GoString, _args:stdgo.Slice<stdgo.GoString>, _env:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__sharedmemtempfile._sharedMemTempFile((104857600 : stdgo.GoInt)), _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _memMu = (new stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>);
        _memMu.__send__(_mem);
        return { _0 : (stdgo.Go.setRef(({ _dir : _dir?.__copy__(), _binPath : _binPath?.__copy__(), _args : _args, _env : (_env.__slice__(0, (_env.length), (_env.length)) : stdgo.Slice<stdgo.GoString>), _coordinator : _c, _memMu : _memMu } : stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>), _1 : (null : stdgo.Error) };
    }
