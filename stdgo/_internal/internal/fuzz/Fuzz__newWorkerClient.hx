package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _newWorkerClient(_comm:stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm, _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>):stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient> {
        return (stdgo.Go.setRef(({ _workerComm : _comm?.__copy__(), _m : _m } : stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
    }