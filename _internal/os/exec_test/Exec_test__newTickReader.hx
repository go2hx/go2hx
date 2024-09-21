package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _newTickReader(_interval:stdgo._internal.time.Time_Duration.Duration):stdgo.Ref<_internal.os.exec_test.Exec_test_T_tickReader.T_tickReader> {
        return (stdgo.Go.setRef(({ _interval : _interval } : _internal.os.exec_test.Exec_test_T_tickReader.T_tickReader)) : stdgo.Ref<_internal.os.exec_test.Exec_test_T_tickReader.T_tickReader>);
    }
