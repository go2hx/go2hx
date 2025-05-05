package stdgo._internal.internal.fuzz;
function _newWorkerClient(_comm:stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm, _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>):stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L951"
        return (stdgo.Go.setRef(({ _workerComm : _comm?.__copy__(), _m : _m } : stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
    }
